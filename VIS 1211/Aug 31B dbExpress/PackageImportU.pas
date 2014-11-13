unit PackageImportU;

interface

uses
  DB, SysUtils;


  function GetDeliveryMessageNumber: String;
  function ImportDeliveryWoordHeader(dsInfo: TDataSet): Boolean;
  function ImportDeliveryMessageReference(dsInfo: TDataSet): Boolean;
  function ImportNameAddress(dsInfo: TDataSet): Boolean;
  function ImportPartyIdentifier(dsInfo: TDataSet): Boolean;

  function ImportDeliveryMessageShipment(dsInfo: TDataSet): Boolean;
  function ImportProductIdentifier(dsInfo: TDataSet): Boolean;

  function ImportDeliveryShipmentDeliveryMessageReference(dsInfo: TDataSet): Boolean;
  function ImportTransportPackageInformation(dsInfo: TDataSet): Boolean;
  function ImportLengthSpecification(dsInfo: TDataSet): Boolean;
  function ImportInformationalQuantity(dsInfo: TDataSet): Boolean;

  function RelaxedImportLengthSpecification(dsInfo: TDataSet): Boolean;
  function RelaxedImportTransportPackageInformation(dsInfo: TDataSet): Boolean;

var
  InPutPackageFileName: string;

implementation

uses
  DeliveryMessageWoodV2R31, Dialogs, XMLIntf, VidaUtils , dmsVidaSystem;

var
  Fmw: IXMLDeliveryMessageWood;

Function RemoveNameSpace(const s : string) : String ;
Var tS : String ;
Begin
 TS := S ;
 if Pos('ns0:', s) > 0 then
  Delete(TS, 1, 4);
 Result := TS ;
End ;

Function RemoveAlpha(Identifier : String) : String ;//By Lars
Var x : Integer ;
Begin
 Result:= '' ;
 For x := 1 to Length(Identifier) do
 Begin
  if StrToIntDef(Copy(Identifier,x,1),-1) in [0..9] then
   Result:= Result + Copy(Identifier,x,1) ;
 End ;
End ;


function GetInPutPackageFileName: string;
begin
  Result := InPutPackageFileName;
//  if PackageOutPutFileName = '' then
//    PackageOutPutFileName := 'PackageSpecOut' + FormatDateTime('yyyymmddhhnnss', now) + '.XML';
//  Result := PackageOutPutFileName;
end;

function mw: IXMLDeliveryMessageWood;
begin
  if Fmw = nil then
  begin
    if not FileExists(GetInPutPackageFileName) then
      Exit;
    Fmw := LoadDeliveryMessageWood(GetInPutPackageFileName);
//    fmw.OwnerDocument.Options := mw.OwnerDocument.Options - [doAttrNull] + [doAutoSave];
  end;

  Result := fMW;
//  FreeAndNil(Fmw) ;
  Fmw:= nil ;
end;

{-------------------------------------------------------------------------------
  XML Import to DB
-------------------------------------------------------------------------------}
function DeliveryMessageNumber: string;
begin
 Result := mw.DeliveryMessageWoodHeader.DeliveryMessageNumber;
 if Length(Result) = 0 then
  Result := IntToStr( dmsSystem.ShippingPlanNo) ;
end;

function ImportDeliveryWoordHeader(dsInfo: TDataSet): Boolean;
var
  STI: IXMLShipToInformation;
  TQI: IXMLTotalQuantity;
  I, J: Integer;

  sIncoTermsLocation: string;
  sIncoTerms        : string;
  sAdditionalText   : string;

//  sTotalNumberOfShipments    : string;
  sTotalQuantityQuantityType : string;
  sTotalQuantityValue        : string;
  sTotalQuantityUOM          : string;



  function GetMessageDate: TDateTime;
  var
    wY, wM, wD: word;

  begin
    with mw.DeliveryMessageWoodHeader.DeliveryMessageDate.Date do
    begin
      wY := StrToInt(Year);
      wM := Month;
      wD := Day;
    end;
    TryEncodeDate(wY, wM, wD, Result);
  end;
begin
  Result := False;
  
  dsInfo.Append;

  dsInfo.FieldByName('DeliveryMessageType').AsString       := mw.DeliveryMessageType;
  dsInfo.FieldByName('DeliveryMessageStatusType').AsString := mw.DeliveryMessageStatusType;
  dsInfo.FieldByName('Reissued').AsString                  := mw.Reissued;
  dsInfo.FieldByName('Language').AsString                  := mw.Language;

  dsInfo.FieldByName('DeliveryMessageNumber').AsString     := DeliveryMessageNumber;
  dsInfo.FieldByName('DeliveryMessageDate').AsDateTime     := GetMessageDate;


  for i := 0 to mw.DeliveryMessageWoodHeader.ShipToInformation.Count - 1 do
  begin
    if i > 0 then break; // This line may be changed later

    STI := mw.DeliveryMessageWoodHeader.ShipToInformation.Items[i];

    if STI.ShipToCharacteristics.TermsOfDelivery.IncotermsLocation.NodeValue > '0' then //Lars Nov 27 2006
    sIncoTermsLocation := STI.ShipToCharacteristics.TermsOfDelivery.IncotermsLocation.NodeValue;
    sIncoTerms         := STI.ShipToCharacteristics.TermsOfDelivery.IncotermsLocation.Incoterms;
    sAdditionalText    := '';
    for J := 0 to STI.ShipToCharacteristics.TermsOfDelivery.AdditionalText.Count - 1 do
      sAdditionalText  := sAdditionalText + STI.ShipToCharacteristics.TermsOfDelivery.AdditionalText.Items[J]

  end;

  dsInfo.FieldByName('IncoTermsLocation').AsString         := sIncoTermsLocation;
  dsInfo.FieldByName('IncoTerms').AsString                 := sIncoTerms;
  dsInfo.FieldByName('AdditionalText').AsString            := sAdditionalText;



  dsInfo.FieldByName('TotalNumberOfShipments').AsInteger   := mw.DeliveryMessageWoodSummary.TotalNumberOfShipments;
  for i := 0 to mw.DeliveryMessageWoodSummary.TotalQuantity.Count - 1 do
  begin
    if i > 0 then break; // This line may be changed later

    TQI := mw.DeliveryMessageWoodSummary.TotalQuantity.Items[i];

    sTotalQuantityQuantityType := TQI.QuantityType;
    sTotalQuantityValue        := TQI.Value.NodeValue;
    sTotalQuantityUOM          := TQI.Value.UOM
  end;

  dsInfo.FieldByName('TotalQuantityQuantityType').AsString := sTotalQuantityQuantityType;
  dsInfo.FieldByName('TotalQuantityValue').AsString        := ReplaceDecimalPoint(sTotalQuantityValue);
  dsInfo.FieldByName('TotalQuantityUOM').AsString          := sTotalQuantityUOM;


  dsInfo.Post;

  Result := True;
end;

function ImportDeliveryMessageReference(dsInfo: TDataSet): Boolean;
var
  DMR: IXMLDeliveryMessageReference;

  I, J: Integer;

  sDeliveryMessageReference     : string;
  sDeliveryMessageReferenceType : string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageWoodHeader.DeliveryMessageReference.Count - 1 do
  begin
    DMR := mw.DeliveryMessageWoodHeader.DeliveryMessageReference.Items[i];

    sDeliveryMessageReferenceType := DMR.DeliveryMessageReferenceType;
    sDeliveryMessageReference     := DMR.Text;

    dsInfo.Append;
      dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
      dsInfo.FieldByName('DeliveryMessageReference').AsString       := sDeliveryMessageReference;
      dsInfo.FieldByName('DeliveryMessageReferenceType').AsString   := sDeliveryMessageReferenceType;
    dsInfo.Post;
  end;

  Result := True;
end;

function FImportPartyIdentifier(dsInfo: TDataSet; Party:IXMLParty): Boolean;
var
  BP: IXMLParty;
  PI: IXMLPartyIdentifier;

  I, J: Integer;

  sPartyType: string; //NEED TO CHANGE
//  sPartyType: string;
  sPartyIdentifier: string;
  sPartyIdentifierType: string;
begin
  Result := False;

  BP        := Party;

  I := Pos(UpperCase('Party'), UpperCase(BP.NodeName)) - 1;
  if I <= 0 then
    I := Length(BP.NodeName);
{
  if Supports(Party, IXMLTypedParty) then
    sPartyType := (BP as IXMLTypedParty).PartyType
  else
    sPartyType := Copy(BP.NodeName, 1, I);
}
  sPartyType := Copy(BP.NodeName, 1, I);

  for i := 0 to BP.PartyIdentifier.Count - 1 do
  begin
    PI := BP.PartyIdentifier.Items[i];

    sPartyIdentifier     := PI.NodeValue;
    sPartyIdentifierType := PI.PartyIdentifierType;

    dsInfo.Append;
      dsInfo.FieldByName('DeliveryMessageNumber').AsString := DeliveryMessageNumber;

      dsInfo.FieldByName('PartyType').AsString             := RemoveNameSpace(sPartyType) ;
      dsInfo.FieldByName('PartyIdentifier').AsString       := sPartyIdentifier;
      dsInfo.FieldByName('PartyIdentifierType').AsString   := sPartyIdentifierType;
    dsInfo.Post;
  end;

  Result := True;
end;

function FImportNameAddress(dsInfo: TDataSet; Party:IXMLParty): Boolean;
var
  BP: IXMLParty;

  I, J: Integer;

  sPartyType: string;
  sName1: string;
  sName2: string;
  sName3: string;
  sAddress1: string;
  sAddress2: string;
  sAddress3: string;
  sAddress4: string;
  sCity: string;
  sCounty: string;
  sStateOrProvince: string;
  sPostalCode: string;
  sCountry: string;
  sISOCountryCode: string;

begin
  Result := False;

  BP := Party;
  I := Pos(UpperCase('Party'), UpperCase(RemoveNameSpace(BP.NodeName))) - 1;
  if I <= 0 then
    I := Length(BP.NodeName);
{
  if Supports(Party, IXMLTypedParty) then
    sPartyType := (BP as IXMLTypedParty).PartyType
  else
    sPartyType := Copy(BP.NodeName, 1, I);
}
  sPartyType := Copy(RemoveNameSpace(BP.NodeName), 1, I);

  sName1     := BP.NameAddress.Name1;
  sName2     := BP.NameAddress.Name2;
  sName3     := BP.NameAddress.Name3;
  sAddress1  := BP.NameAddress.Address1;
  sAddress2  := BP.NameAddress.Address2;
  sAddress3  := BP.NameAddress.Address3;
  sAddress4  := BP.NameAddress.Address4;
  sCity      := BP.NameAddress.City;
  sCounty    := BP.NameAddress.County;
  sStateOrProvince := BP.NameAddress.StateOrProvince;
  sPostalCode      := BP.NameAddress.PostalCode.Text;
  sISOCountryCode  := BP.NameAddress.Country.ISOCountryCode;
  sCountry         := BP.NameAddress.Country.Text;



  dsInfo.Append;
    dsInfo.FieldByName('DeliveryMessageNumber').AsString := DeliveryMessageNumber;

    dsInfo.FieldByName('PartyType')            .AsString := sPartyType;
    dsInfo.FieldByName('Name1')                .AsString := sName1;
    dsInfo.FieldByName('Name2')                .AsString := sName2;
    dsInfo.FieldByName('Name3')                .AsString := sName3;
    dsInfo.FieldByName('Address1')             .AsString := sAddress1;
    dsInfo.FieldByName('Address2')             .AsString := sAddress2;
    dsInfo.FieldByName('Address3')             .AsString := sAddress3;
    dsInfo.FieldByName('Address4')             .AsString := sAddress4;
    dsInfo.FieldByName('City')                 .AsString := sCity;
    dsInfo.FieldByName('County')               .AsString := sCounty;
    dsInfo.FieldByName('StateOrProvince')      .AsString := sStateOrProvince;
    dsInfo.FieldByName('PostalCode')           .AsString := sPostalCode;
    dsInfo.FieldByName('Country')              .AsString := sCountry;
    dsInfo.FieldByName('ISOCountryCode')       .AsString := sISOCountryCode;
  dsInfo.Post;

  Result := True;
end;

function ImportPartyIdentifier(dsInfo: TDataSet): Boolean;
var
  BP: IXMLParty;
  SPI: IXMLShipToInformation;
  I: Integer;
begin
  Result := False;

  BP := mw.DeliveryMessageWoodHeader.BuyerParty;
  FImportPartyIdentifier(dsInfo, BP);

  BP := mw.DeliveryMessageWoodHeader.SupplierParty;
  FImportPartyIdentifier(dsInfo, BP);

  for I := 0 to mw.DeliveryMessageWoodHeader.ShipToInformation.Count - 1 do
  begin
    SPI := mw.DeliveryMessageWoodHeader.ShipToInformation.Items[i];
    FImportPartyIdentifier(dsInfo, SPI.ShipToCharacteristics.ShipToParty);
  end;
end;

function ImportNameAddress(dsInfo: TDataSet): Boolean;
var
  BP: IXMLParty;
  SPI: IXMLShipToInformation;
  I: Integer;
begin
  Result := False;

  BP := mw.DeliveryMessageWoodHeader.BuyerParty;
  FImportNameAddress(dsInfo, BP);

  BP := mw.DeliveryMessageWoodHeader.SupplierParty;
  FImportNameAddress(dsInfo, BP);

  for I := 0 to mw.DeliveryMessageWoodHeader.ShipToInformation.Count - 1 do
  begin
    SPI := mw.DeliveryMessageWoodHeader.ShipToInformation.Items[i];
    FImportNameAddress(dsInfo, SPI.ShipToCharacteristics.ShipToParty);
  end;
end;

function ImportDeliveryMessageShipment(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  PI: IXMLProductIdentifier;
  SWLC: IXMLSoftwoodLumberCharacteristicsClass;
  I, J, K, L, M, N: Integer;

  sShipmentID: string;
  sShipmentIDType: string;
  sProductGroupID: string;
  sProductGroupIDType: string;
  sDeliveryShipmentLineItemNumber: string;
  sProductIdentifier: string;
  sProductIdentifierType: string;
  sAgency: string;
  sProductDescription: string;
  sSpeciesType: string;
  sGradingRule: string;
  sGradeCode: string;
  sGradeName: string;
  sWidthValue: string;
  sWidthUOM: string;
  sThicknessValue: string;
  sThicknessUOM: string;
  sManufacturingProcessType: string;
  sExlogValue: string;
  sExlogUOM: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

//    sShipmentID     := DSM.ShipmentID.Text;
  //  sShipmentIDType := DSM.ShipmentID.ShipmentIDType;

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

//      sProductGroupID     := DMPG.ProductGroupID.Text;
//      sProductGroupIDType := DMPG.ProductGroupID.ProductGroupIDType;

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        sProductDescription := '';
        for L := 0 to DSLI.Product.ProductDescription.Count - 1 do
        begin
          sProductDescription := sProductDescription + DSLI.Product.ProductDescription.Items[L].Text
        end;
        { TODO -oZheng Jie -cNEED TO REPROCESS : Product Identifier Info }
        for L := 0 to DSLI.Product.ProductIdentifier.Count - 1 do
        begin
          if L > 0 then break;
          PI := DSLI.Product.ProductIdentifier.Items[L];

          sProductIdentifier     := PI.Text;
          sProductIdentifierType := PI.ProductIdentifierType;
          sAgency                := PI.Agency;
        end;

        SWLC := DSLI.Product.WoodProducts.WoodTimbersDimensionalLumberBoards.SoftwoodLumber.SoftwoodLumberCharacteristics;

        for L := 0 to SWLC.LumberSpecies.Count - 1 do
        begin
          if L > 0 then Break;
          sSpeciesType := SWLC.LumberSpecies.Items[L].SpeciesType;
        end;

        sGradingRule := SWLC.LumberGrade.GradingRule;
        sGradeCode   := SWLC.LumberGrade.GradeCode;
        sGradeName   := SWLC.LumberGrade.GradeName;

        for L := 0 to SWLC.Width.Count - 1 do
        begin
          if L > 0 then Break;
          sWidthValue               := SWLC.Width.Items[L].Value.Text;
          sWidthUOM                 := SWLC.Width.Items[L].Value.UOM;
        end;
        for L := 0 to SWLC.Thickness.Count - 1 do
        begin
          if L > 0 then Break;
          sThicknessValue           := SWLC.Thickness.Items[L].Value.Text;
          
// 2006.11.26 20:29:47 By Zheng Jie (Gear1023@163.com)
//          sThicknessUOM             := SWLC.Thickness.Items[L].Value.Text;
          sThicknessUOM             := SWLC.Thickness.Items[L].Value.UOM;
        end;
        for L := 0 to SWLC.ManufacturingProcess.Count - 1 do
        begin
          if L > 0 then Break;
          sManufacturingProcessType := SWLC.ManufacturingProcess.Items[L].ManufacturingProcessType;
        end;
        sExlogValue               := SWLC.ExLog.Value.Text;
        sExlogUOM                 := SWLC.ExLog.Value.UOM;

        dsInfo.Append;

          dsInfo.FieldByName('DeliveryMessageNumber').AsString := DeliveryMessageNumber;
          dsInfo.FieldByName('ShipmentID').AsString            := sShipmentID;
          dsInfo.FieldByName('ShipmentIDType').AsString        := sShipmentIDType;
          dsInfo.FieldByName('ProductGroupID').AsString        := sProductGroupID;
          dsInfo.FieldByName('ProductGroupIDType').AsString    := sProductGroupIDType;
          dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
          dsInfo.FieldByName('ProductIdentifier').AsString     := sProductIdentifier;
          dsInfo.FieldByName('ProductIdentifierType').AsString := sProductIdentifierType;
          dsInfo.FieldByName('Agency').AsString                := sAgency;
          dsInfo.FieldByName('ProductDescription').AsString    := sProductDescription;
          dsInfo.FieldByName('SpeciesType').AsString           := sSpeciesType;
          dsInfo.FieldByName('GradingRule').AsString           := sGradingRule;
          dsInfo.FieldByName('GradeCode').AsString             := sGradeCode;
          dsInfo.FieldByName('GradeName').AsString             := sGradeName;
          dsInfo.FieldByName('WidthValue').AsString            := ReplaceDecimalPoint(sWidthValue);
          dsInfo.FieldByName('WidthUOM').AsString              := sWidthUOM;
          dsInfo.FieldByName('ThicknessValue').AsString        := ReplaceDecimalPoint(sThicknessValue);
          dsInfo.FieldByName('ThicknessUOM').AsString          := sThicknessUOM;
          dsInfo.FieldByName('ManufacturingProcessType').AsString := sManufacturingProcessType;
          dsInfo.FieldByName('ExlogValue').AsString            := sExlogValue;
          dsInfo.FieldByName('ExlogUOM').AsString              := sExlogUOM;

        dsInfo.Post;
      end;

    end;

  end;

  Result := True;
end;


function ImportProductIdentifier(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  PI: IXMLProductIdentifier;
  I, J, K, L, M, N: Integer;

  sDeliveryShipmentLineItemNumber: string;
  sProductIdentifier: string;
  sProductIdentifierType: string;
  sAgency: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.Product.ProductIdentifier.Count - 1 do
        begin
          PI := DSLI.Product.ProductIdentifier.Items[L];

          sProductIdentifier     := PI.Text;
          sProductIdentifierType := PI.ProductIdentifierType;
          sAgency                := PI.Agency;

          dsInfo.Append;
            dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
            dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
            dsInfo.FieldByName('ProductIdentifier').AsString              := sProductIdentifier;
            dsInfo.FieldByName('ProductIdentifierType').AsString          := sProductIdentifierType;
            dsInfo.FieldByName('Agency').AsString                         := sAgency;
          dsInfo.Post;
        end;
      end;
    end;
  end;
  
  Result := True;
end;

function ImportDeliveryShipmentDeliveryMessageReference(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  PI: IXMLProductIdentifier;
  I, J, K, L, M, N: Integer;

  sDeliveryShipmentLineItemNumber: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.DeliveryMessageReference.Count - 1 do
        begin
          DMR := DSLI.DeliveryMessageReference.Items[L];
          dsInfo.Append;
          dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
          dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
          dsInfo.FieldByName('DeliveryMessageReference').AsString       := DMR.Text;
          dsInfo.FieldByName('DeliveryMessageReferenceType').AsString   := DMR.DeliveryMessageReferenceType;
          dsInfo.Post;
        end;

      end;

    end;

  end;

  Result := True;
end;

function ImportTransportPackageInformation(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  TPI: IXMLTransportPackageInformation;
  PI: IXMLProductIdentifier;
  IS60: IXMLIdentifierS60;
  I, J, K, L, M, N: Integer;

  sDeliveryShipmentLineItemNumber: string;
  sPackageType: string;
  sIdentifier: string;
  sIdentifierCodeType: string;
  sIdentifierType: string;
  sItemCountValue: string;
  sItemCountUOM: string;
  sQuantityType: string;
  sQuantityValue: string;
  sQuantityUOM: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);



        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];
          sPackageType := TPI.PackageType;

          for M := 0 to TPI.Identifier.Count - 1 do
          begin

            IS60 := TPI.Identifier.Items[M];
//LARS added "filter" to only get identifier of type Primary!
            if IS60.IdentifierType = 'Primary' then
            Begin
             sIdentifier         := IS60.Text;
             sIdentifierCodeType := IS60.IdentifierCodeType;
             sIdentifierType     := IS60.IdentifierType;
            End ;
          end;

          sIdentifier:= RemoveAlpha(sIdentifier) ;

          sItemCountValue := TPI.ItemCount.Value.Text;
          sItemCountUOM   := TPI.ItemCount.Value.UOM;
          sQuantityType   := TPI.Quantity.QuantityType;
          sQuantityValue  := TPI.Quantity.Value.Text;
          sQuantityUOM    := TPI.Quantity.Value.UOM;

          dsInfo.Append;
          dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
          dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
          dsInfo.FieldByName('PackageType').AsString                    := sPackageType;
          dsInfo.FieldByName('Identifier').AsString                     := sIdentifier;
          dsInfo.FieldByName('IdentifierCodeType').AsString             := sIdentifierCodeType;
          dsInfo.FieldByName('IdentifierType').AsString                 := sIdentifierType;
          dsInfo.FieldByName('ItemCountValue').AsString                 := sItemCountValue;
          dsInfo.FieldByName('ItemCountUOM').AsString                   := sItemCountUOM;
          dsInfo.FieldByName('QuantityType').AsString                   := sQuantityType;
          dsInfo.FieldByName('QuantityValue').AsString                  := ReplaceDecimalPoint(sQuantityValue);
          dsInfo.FieldByName('QuantityUOM').AsString                    := sQuantityUOM;
          dsInfo.Post;
        end;

      end;

    end;

  end;

  Result := True;
end;


function ImportLengthSpecification(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  TPI: IXMLTransportPackageInformation;
  PI: IXMLProductIdentifier;
  IS60: IXMLIdentifierS60;
  IQ: IXMLInformationalQuantity;
  WI: IXMLWoodItem;
  I, J, K, L, M, N: Integer;

  sIdentifier: string;

  sLengthCategory: string;
  sTotalNumberOfUnitsValue: string;
  sTotalNumberOfUnitsUOM: string;
  sDeliveryShipmentLineItemNumber: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

//Lars the following line is probably needed anyway
        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];

          for M := 0 to TPI.Identifier.Count - 1 do
          begin
            IS60 := TPI.Identifier.Items[M];
//LARS added "filter" to only get identifier of type Primary!
            if IS60.IdentifierType = 'Primary' then
            sIdentifier := IS60.Text;
          end;

        sIdentifier:= RemoveAlpha(sIdentifier) ;

          for M := 0 to TPI.WoodItem.Count - 1 do
          begin
            WI := TPI.WoodItem.Items[M];
            for N := 0 to WI.LengthSpecification.Count - 1 do
            begin
              sLengthCategory := WI.LengthSpecification.Items[N].LengthCategory;
              sTotalNumberOfUnitsValue := WI.LengthSpecification.Items[N].TotalNumberOfUnits.Value.Text;
              sTotalNumberOfUnitsUOM   := WI.LengthSpecification.Items[N].TotalNumberOfUnits.Value.UOM;

              dsInfo.Append;
                dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
                dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
                dsInfo.FieldByName('Identifier').AsString                     := sIdentifier;
                dsInfo.FieldByName('LengthCategory').AsString                 := sLengthCategory;
                dsInfo.FieldByName('TotalNumberOfUnitsValue').AsString        := sTotalNumberOfUnitsValue;
                dsInfo.FieldByName('TotalNumberOfUnitsUOM').AsString          := sTotalNumberOfUnitsUOM;
              dsInfo.Post;
            end;
          end;

        end;

      end;

    end;

  end;

  Result := True;
end;


function ImportInformationalQuantity(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  TPI: IXMLTransportPackageInformation;
  PI: IXMLProductIdentifier;
  IS60: IXMLIdentifierS60;
  IQ: IXMLInformationalQuantity;
  I, J, K, L, M, N: Integer;

  sIdentifier: string;
  sInformationalQuantityType: string;
  sInformationalQuantityValue: string;
  sInformationalQuantityUOM: string;
  sDeliveryShipmentLineItemNumber: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

//LARS  This seems to be needed anyway
        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);
//        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];

          for M := 0 to TPI.Identifier.Count - 1 do
          begin
            IS60 := TPI.Identifier.Items[M];
//LARS added "filter" to only get identifier of type Primary!
            if IS60.IdentifierType = 'Primary' then
            sIdentifier := IS60.Text;
          end;

          sIdentifier:= RemoveAlpha(sIdentifier) ;

          for M := 0 to TPI.InformationalQuantity.Count - 1 do
          begin
            IQ := TPI.InformationalQuantity.Items[M];

            sInformationalQuantityType := IQ.QuantityType;
            sInformationalQuantityValue:= IQ.Value.Text;
            sInformationalQuantityUOM  := IQ.Value.UOM;

            dsInfo.Append;

              dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
              dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
              dsInfo.FieldByName('Identifier').AsString                     := sIdentifier;
              dsInfo.FieldByName('InformationalQuantityType').AsString      := sInformationalQuantityType;
              dsInfo.FieldByName('InformationalQuantityValue').AsString     := ReplaceDecimalPoint(sInformationalQuantityValue);
              dsInfo.FieldByName('InformationalQuantityUOM').AsString       := sInformationalQuantityUOM;
            dsInfo.Post;
          end;

        end;
        
      end;

    end;

  end;

  Result := True;
end;

//Lars added this function to get the
function GetDeliveryMessageNumber : String ;
begin
  Result := DeliveryMessageNumber ;
end;

//Lars Nov 28 2006
function RelaxedImportTransportPackageInformation(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  TPI: IXMLTransportPackageInformation;
  PI: IXMLProductIdentifier;
  IS60: IXMLIdentifierS60;
  I, J, K, L, M, N, P: Integer;

  sDeliveryShipmentLineItemNumber : string;
  sPackageType                    : string;
  sIdentifier                     : string;
  sIdentifierCodeType             : string;
  sIdentifierType                 : string;
  sItemCountValue                 : string;
  sItemCountUOM                   : string;
  sQuantityType                   : string;
  sQuantityValue                  : string;
  sQuantityUOM                    : string;

  sProductIdentifier              : String ;

  sProductDescription             : String ;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        sProductDescription := '';
        for P := 0 to DSLI.Product.ProductDescription.Count - 1 do
        begin
          sProductDescription := sProductDescription + DSLI.Product.ProductDescription.Items[P].Text
        end;


        for P := 0 to DSLI.Product.ProductIdentifier.Count - 1 do
        begin
          if P > 1 then break;
          PI := DSLI.Product.ProductIdentifier.Items[P];
          if PI.ProductIdentifierType = 'PartNumber' then
          Begin
           sProductIdentifier     := PI.Text;
//           sProductIdentifierType := PI.ProductIdentifierType;
//           sAgency                := PI.Agency;
          End ;
        end;





        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];
          sPackageType := TPI.PackageType;

          for M := 0 to TPI.Identifier.Count - 1 do
          begin

            IS60 := TPI.Identifier.Items[M];
//LARS added "filter" to only get identifier of type Primary!
            if IS60.IdentifierType = 'Primary' then
            Begin
             sIdentifier         := IS60.Text;
             sIdentifierCodeType := IS60.IdentifierCodeType;
             sIdentifierType     := IS60.IdentifierType;
            End ;
          end;

          sIdentifier:= RemoveAlpha(sIdentifier) ;

          sItemCountValue := TPI.ItemCount.Value.Text;
          sItemCountUOM   := TPI.ItemCount.Value.UOM;
          sQuantityType   := TPI.Quantity.QuantityType;
          sQuantityValue  := TPI.Quantity.Value.Text;
          sQuantityUOM    := TPI.Quantity.Value.UOM;

          dsInfo.Append;
          dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
          dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
          dsInfo.FieldByName('PackageType').AsString                    := sPackageType;
          dsInfo.FieldByName('Identifier').AsString                     := sIdentifier;
          dsInfo.FieldByName('IdentifierCodeType').AsString             := sIdentifierCodeType;
          dsInfo.FieldByName('IdentifierType').AsString                 := sIdentifierType;
          dsInfo.FieldByName('ItemCountValue').AsString                 := sItemCountValue;
          dsInfo.FieldByName('ItemCountUOM').AsString                   := sItemCountUOM;
          dsInfo.FieldByName('QuantityType').AsString                   := sQuantityType;
          dsInfo.FieldByName('QuantityValue').AsString                  := ReplaceDecimalPoint(sQuantityValue) ;
          dsInfo.FieldByName('QuantityUOM').AsString                    := sQuantityUOM;
          dsInfo.FieldByName('ProductIdentifier').AsString              := sProductIdentifier;
          dsInfo.FieldByName('ProductDescription').AsString             := sProductDescription ;
          dsInfo.Post;
        end;

      end;

    end;

  end;

  Result := True;
end;

//Lars Nov 28 2006
function RelaxedImportLengthSpecification(dsInfo: TDataSet): Boolean;
var
  DSM: IXMLDeliveryMessageShipment;
  DMPG: IXMLDeliveryMessageProductGroup;
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  TPI: IXMLTransportPackageInformation;
  PI: IXMLProductIdentifier;
  IS60: IXMLIdentifierS60;
  IQ: IXMLInformationalQuantity;
  WI: IXMLWoodItem;
  I, J, K, L, M, N: Integer;

  sIdentifier: string;

  sLengthCategory: string;
  sTotalNumberOfUnitsValue: string;
  sTotalNumberOfUnitsUOM: string;
  sDeliveryShipmentLineItemNumber: string;

begin
  Result := False;

  for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
  begin
    DSM := mw.DeliveryMessageShipment.Items[i];

    for J := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      DMPG := DSM.DeliveryMessageProductGroup.Items[J];

      for K := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
      begin
        DSLI := DMPG.DeliveryShipmentLineItem.Items[K];

//Lars the following line is probably needed anyway
        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];

          for M := 0 to TPI.Identifier.Count - 1 do
          begin
            IS60 := TPI.Identifier.Items[M];
//LARS added "filter" to only get identifier of type Primary!
            if IS60.IdentifierType = 'Primary' then
            sIdentifier := IS60.Text;
          end;

        sIdentifier:= RemoveAlpha(sIdentifier) ;

          for M := 0 to TPI.WoodItem.Count - 1 do
          begin
            WI := TPI.WoodItem.Items[M];
            for N := 0 to WI.LengthSpecification.Count - 1 do
            begin
              sLengthCategory := WI.LengthSpecification.Items[N].LengthCategory;
              sTotalNumberOfUnitsValue := WI.LengthSpecification.Items[N].TotalNumberOfUnits.Value.Text;
              sTotalNumberOfUnitsUOM   := WI.LengthSpecification.Items[N].TotalNumberOfUnits.Value.UOM;

              dsInfo.Append;
                dsInfo.FieldByName('DeliveryMessageNumber').AsString          := DeliveryMessageNumber;
                dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString := sDeliveryShipmentLineItemNumber;
                dsInfo.FieldByName('Identifier').AsString                     := sIdentifier;
                dsInfo.FieldByName('LengthCategory').AsString                 := sLengthCategory;
                dsInfo.FieldByName('TotalNumberOfUnitsValue').AsString        := sTotalNumberOfUnitsValue;
                dsInfo.FieldByName('TotalNumberOfUnitsUOM').AsString          := sTotalNumberOfUnitsUOM;
              dsInfo.Post;
            end;
          end;

        end;

      end;

    end;

  end;

  Result := True;
end;

end.
