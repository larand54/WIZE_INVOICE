unit PackageExportU;

interface

uses
  DB, SysUtils, Variants, XMLIntf;
type
  TImportExportFunctionGetDeliveryMessageNumber = function : String ;

  TImportExportFunction = function (ds: TDataSet): boolean;
  TExportFunctionInnerUse1 = function (ds: TDataSet; s: string): boolean;
  TExportFunctionInnerUse2 = function (ds: TDataSet; pNode: IXMLNode): boolean;
  
  { Other Public Functions }
//  procedure DeleteEmptyNode(InNode: IXMLNode);
  function doClearEmptyNode: Boolean;
  function GetOutPutPackageFileName: string;

  { Export XML Functions }

  function ExportDeliveryWoordHeader(dsInfo: TDataSet): Boolean;
  function ExportDeliveryMessageReference(dsInfo: TDataSet): Boolean;
  function ExportNameAddress(dsInfo: TDataSet): Boolean;
  function ExportPartyIdentifier(dsInfo: TDataSet): Boolean;

  procedure CleareDoc; // 2006.11.26 20:39:52 By Zheng Jie (Gear1023@163.com)



  { Following functions should not be called outside of the unit}

  function ExportDeliveryMessageShipment(dsInfo: TDataSet; DONOTCALL: string = 'INTERNAL USE! DO NOT CALL THIS FUNCTION!'): Boolean;

//  function ExportProductIdentifier(dsInfo: TDataSet): Boolean;
  function ExportProductIdentifier(dsInfo: TDataSet; pNode: IXMLNode): Boolean;

//  function ExportDeliveryShipmentDeliveryMessageReference(dsInfo: TDataSet): Boolean;
  function ExportDeliveryShipmentDeliveryMessageReference(dsInfo: TDataSet; pNode: IXMLNode): Boolean;

  function ExportTransportPackageInformation(dsInfo: TDataSet): Boolean;

//  function ExportLengthSpecification(dsInfo: TDataSet): Boolean;
  function ExportLengthSpecification(dsInfo: TDataSet; pNode: IXMLNode): Boolean;

//  function ExportInformationalQuantity(dsInfo: TDataSet): Boolean;
  function ExportInformationalQuantity(dsInfo: TDataSet; pNode: IXMLNode): Boolean;


var
  OutPutPackageFileName : string;
  InternalInvoiceNo     : Integer ;
implementation

uses
  DeliveryMessageWoodV2R31, Dialogs, ADODB, Classes, VidaUtils ;

var
  Fmw: IXMLDeliveryMessageWood;

  

function GetOutPutPackageFileName: string;
begin
  if OutPutPackageFileName = '' then
    OutPutPackageFileName := 'PackageSpecOut' + FormatDateTime('yyyymmddhhnnss', now) + '.XML';
  Result := OutPutPackageFileName;
end;

function DoCreateEmptyPackageFile: Boolean;
begin
  Result := False;
  
  with TStringList.Create do
  try
//    Text := '<?xml version="1.0" encoding="UTF-8"?><DeliveryMessageWood />';
    Text := '<?xml version="1.0" encoding="ISO-8859-1"?><DeliveryMessageWood />';
//    Text := '<?xml version="1.0" encoding="ISO-8859-1"?>'
//    +'<?xml-stylesheet href="VWPackXSL2.xsl" type="text/xsl"?><DeliveryMessageWood />';
    SaveToFile(GetOutPutPackageFileName);
  finally
    Free;
  end;

  Result := True;
end;

procedure CleareDoc;
begin
  Fmw := nil;
end;

function mw: IXMLDeliveryMessageWood;
var
  sFileName: string;
begin
  if Fmw = nil then
  begin
    DoCreateEmptyPackageFile;
    Fmw := LoadDeliveryMessageWood(GetOutPutPackageFileName);
    
    fmw.OwnerDocument.Options := Fmw.OwnerDocument.Options - [doAttrNull] + [doAutoSave];
  end;

  Result := fMW;

end;

procedure DeleteEmptyNode(InNode: IXMLNode);
var
  I, J: Integer;
  bEmpty: Boolean;
begin
  if InNode = nil then Exit;
  if InNode.ParentNode = nil then Exit;

  for i := InNode.ChildNodes.Count - 1 Downto 0  do
    DeleteEmptyNode(InNode.ChildNodes[i]);

  if InNode.ChildNodes.Count <= 0 then
  begin
    if InNode.Text = '' then
    begin
      bEmpty := True;
      for i := 0 to InNode.AttributeNodes.Count - 1 do
      begin
        if InNode.AttributeNodes.Nodes[i].Text <> '' then
          bEmpty := False
      end;
      if bEmpty then
        InNode.ParentNode.ChildNodes.Delete(InNode.ParentNode.ChildNodes.IndexOf(InNode));
    end;
  end
  else

end;

function doSaveXML(ClearEmpty: Boolean = False): Boolean;
begin
  Result := False;
  if ClearEmpty then
    DeleteEmptyNode(mw);
  mw.OwnerDocument.SaveToFile(mw.OwnerDocument.FileName);
  Result := True;
end;

function doClearEmptyNode: Boolean;
begin
  Result := doSaveXML(True);
end;

{-------------------------------------------------------------------------------
  XML Export to XML
-------------------------------------------------------------------------------}
function DeliveryMessageNumber: string;
begin
//  Result := 'LBG32572';
  Result := mw.DeliveryMessageWoodHeader.DeliveryMessageNumber;
end;

  function NewDataSet(sSQL: string; dsInfo: TDataSet): TADODataSet;
  begin
    Result := TADODataSet.Create(nil);
    Result.Connection := TADODataSet(dsInfo).Connection;
    Result.Close;
    Result.CommandText := sSQL;
    Result.Open;
  end;

  function DoImportExport(sSQL: string; ImpExpFunction: TImportExportFunction; dsInfo: TDataSet): Boolean; overload;
  var
     dsADO: TADODataSet;
  begin
      dsADO := NewDataSet(sSQL, dsInfo);
      try
        if Assigned(ImpExpFunction) then
          Result := ImpExpFunction(dsADO);
      finally
        dsADO.Free;
      end;
  end;
  
  function DoImportExport(sSQL: string; ImpExpFunction: TExportFunctionInnerUse1; dsInfo: TDataSet): Boolean;  overload;
  var
     dsADO: TADODataSet;
  begin
      dsADO := NewDataSet(sSQL, dsInfo);
      try
        if Assigned(ImpExpFunction) then
          Result := ImpExpFunction(dsADO, '');
      finally
        dsADO.Free;
      end;
  end;

  function DoImportExport(sSQL: string; ImpExpFunction: TExportFunctionInnerUse2; dsInfo: TDataSet; pNode: IXMLNode): Boolean;  overload;
  var
     dsADO: TADODataSet;
  begin
      dsADO := NewDataSet(sSQL, dsInfo);
      try
        if Assigned(ImpExpFunction) then
          Result := ImpExpFunction(dsADO, pNode);
      finally
        dsADO.Free;
      end;
  end;

function ExportDeliveryWoordHeader(dsInfo: TDataSet): Boolean;
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


  procedure SetMessageDate(MsgDate: TDateTime);
  var
    wY, wM, wD: word;

  begin
    DecodeDate(MsgDate, wY, wM, wD);
    with mw.DeliveryMessageWoodHeader.DeliveryMessageDate.Date do
    begin
      Year := IntToStr(wY);
      Month := wM;
      Day := wD;
    end;
  end;

begin
  Result := False;

  mw.DeliveryMessageType       := dsInfo.FieldByName('DeliveryMessageType').AsString;
  mw.DeliveryMessageStatusType := dsInfo.FieldByName('DeliveryMessageStatusType').AsString;
//Lars
  if Length(dsInfo.FieldByName('Reissued').AsString) > 0 then
  mw.Reissued                  := dsInfo.FieldByName('Reissued').AsString;
  if Length(dsInfo.FieldByName('Language').AsString) > 0 then
  mw.Language                  := dsInfo.FieldByName('Language').AsString;

  mw.DeliveryMessageWoodHeader.DeliveryMessageNumber := dsInfo.FieldByName('DeliveryMessageNumber').AsString;
  SetMessageDate(dsInfo.FieldByName('DeliveryMessageDate').AsDateTime);

  DoImportExport('select * from DeliveryMessageReference WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportDeliveryMessageReference, dsInfo);

  sIncoTermsLocation := dsInfo.FieldByName('IncoTermsLocation').AsString;
  sIncoTerms         := dsInfo.FieldByName('IncoTerms').AsString;
  sAdditionalText    := dsInfo.FieldByName('AdditionalText').AsString;

  mw.DeliveryMessageWoodHeader.ShipToInformation.Clear;
  STI := mw.DeliveryMessageWoodHeader.ShipToInformation.Add;

  STI.ShipToCharacteristics.TermsOfDelivery.IncotermsLocation.NodeValue := sIncoTermsLocation;
  STI.ShipToCharacteristics.TermsOfDelivery.IncotermsLocation.Incoterms :=  sIncoTerms;

  STI.ShipToCharacteristics.TermsOfDelivery.AdditionalText.Clear;
  STI.ShipToCharacteristics.TermsOfDelivery.AdditionalText.Add(sAdditionalText);

  DoImportExport('select * from DeliveryMessageShipment WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportDeliveryMessageShipment, dsInfo);

  mw.DeliveryMessageWoodSummary.TotalNumberOfShipments := dsInfo.FieldByName('TotalNumberOfShipments').AsInteger;

  sTotalQuantityQuantityType := dsInfo.FieldByName('TotalQuantityQuantityType').AsString;
  sTotalQuantityValue        := ReplaceCommas(dsInfo.FieldByName('TotalQuantityValue').AsString)       ;
  sTotalQuantityUOM          := dsInfo.FieldByName('TotalQuantityUOM').AsString         ;

  mw.DeliveryMessageWoodSummary.TotalQuantity.Clear;
  TQI := mw.DeliveryMessageWoodSummary.TotalQuantity.Add;
  TQI.QuantityType    := sTotalQuantityQuantityType;
  TQI.Value.NodeValue := sTotalQuantityValue;
  TQI.Value.UOM       := sTotalQuantityUOM;

  doSaveXML;
  Result := True;
end;

function ExportDeliveryMessageReference(dsInfo: TDataSet): Boolean;
var
  DMR: IXMLDeliveryMessageReference;

  I, J: Integer;

  sDeliveryMessageReference: string;
  sDeliveryMessageReferenceType: string;

begin
  Result := False;

  mw.DeliveryMessageWoodHeader.DeliveryMessageReference.Clear;
  dsInfo.First;
  while not dsInfo.Eof do
  begin
    if SameText(dsInfo.FieldByName('DeliveryMessageNumber').AsString, DeliveryMessageNumber) then
    begin
      sDeliveryMessageReference     := dsInfo.FieldByName('DeliveryMessageReference').AsString;
      sDeliveryMessageReferenceType := dsInfo.FieldByName('DeliveryMessageReferenceType').AsString;

      DMR := mw.DeliveryMessageWoodHeader.DeliveryMessageReference.Add;
      DMR.DeliveryMessageReferenceType := sDeliveryMessageReferenceType;
      DMR.Text                         := sDeliveryMessageReference;
    end;
    dsInfo.Next;
  end;
  doSaveXML;
  Result := True;
end;

function FExportPartyIdentifier(dsInfo: TDataSet; var Party:IXMLParty): Boolean;
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

  BP.PartyIdentifier.Clear;
  dsInfo.First;
  while not dsInfo.Eof do
  begin
    if SameText(dsInfo.FieldByName('DeliveryMessageNumber').AsString, DeliveryMessageNumber) then
    begin
      sPartyType            := dsInfo.FieldByName('PartyType').AsString            ;
      sPartyIdentifier     := dsInfo.FieldByName('PartyIdentifier').AsString      ;
      sPartyIdentifierType := dsInfo.FieldByName('PartyIdentifierType').AsString  ;

      I := Pos(UpperCase('Party'), UpperCase(BP.NodeName)) - 1;
      if I <= 0 then
        I := Length(BP.NodeName);
        
      if SameText(sPartyType, Copy(BP.NodeName, 1, I)) then
      begin

        if Supports(Party, IXMLTypedParty) then
          (BP as IXMLTypedParty).PartyType := sPartyType;
        PI := BP.PartyIdentifier.Add;

        PI.PartyIdentifierType := sPartyIdentifierType;
        PI.NodeValue           := sPartyIdentifier;
        
      end;
    end;
    dsInfo.Next;
  end;

  doSaveXML;
  Result := True;
end;

function FExportNameAddress(dsInfo: TDataSet; var Party:IXMLParty): Boolean;
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

  I := Pos(UpperCase('Party'), UpperCase(BP.NodeName)) - 1;
  if I <= 0 then
    I := Length(BP.NodeName);
  sPartyType := Copy(BP.NodeName, 1, I);

  if dsInfo.Locate('DeliveryMessageNumber;PartyType', VarArrayOf([DeliveryMessageNumber, sPartyType]), [loCaseInsensitive]) then
  begin

//    sPartyType := dsInfo.FieldByName('PartyType')            .AsString;
    sName1     := dsInfo.FieldByName('Name1')                .AsString;
    sName2     := dsInfo.FieldByName('Name2')                .AsString;
    sName3     := dsInfo.FieldByName('Name3')                .AsString;
    sAddress1  := dsInfo.FieldByName('Address1')             .AsString;
    sAddress2  := dsInfo.FieldByName('Address2')             .AsString;
    sAddress3  := dsInfo.FieldByName('Address3')             .AsString;
    sAddress4  := dsInfo.FieldByName('Address4')             .AsString;
    sCity      := dsInfo.FieldByName('City')                 .AsString;
    sCounty    := dsInfo.FieldByName('County')               .AsString;
    sStateOrProvince := dsInfo.FieldByName('StateOrProvince').AsString;
    sPostalCode      := dsInfo.FieldByName('PostalCode')     .AsString;
    sCountry         := dsInfo.FieldByName('Country')        .AsString;
    sISOCountryCode  := dsInfo.FieldByName('ISOCountryCode') .AsString;

    BP.NameAddress.Name1 :=    sName1     ;
    BP.NameAddress.Name2 :=    sName2     ;
    BP.NameAddress.Name3 :=    sName3     ;
    BP.NameAddress.Address1 := sAddress1  ;
    BP.NameAddress.Address2 := sAddress2  ;
    BP.NameAddress.Address3 := sAddress3  ;
    BP.NameAddress.Address4 := sAddress4  ;
    BP.NameAddress.City :=     sCity      ;
    BP.NameAddress.County :=   sCounty    ;
    BP.NameAddress.StateOrProvince        :=        sStateOrProvince ;
    BP.NameAddress.PostalCode.Text        :=        sPostalCode      ;
    BP.NameAddress.Country.ISOCountryCode := sISOCountryCode  ;
    BP.NameAddress.Country.Text           := sCountry         ;


  end;

  doSaveXML;
  Result := True;
end;

function ExportPartyIdentifier(dsInfo: TDataSet): Boolean;
var
  BP: IXMLParty;
  SPI: IXMLShipToInformation;
  I: Integer;
begin
  Result := False;

  BP := mw.DeliveryMessageWoodHeader.BuyerParty;
  FExportPartyIdentifier(dsInfo, BP);

  BP := mw.DeliveryMessageWoodHeader.SupplierParty;
  FExportPartyIdentifier(dsInfo, BP);

  mw.DeliveryMessageWoodHeader.ShipToInformation.Clear;
  SPI := mw.DeliveryMessageWoodHeader.ShipToInformation.Add;
  BP := SPI.ShipToCharacteristics.ShipToParty;
  FExportPartyIdentifier(dsInfo, BP);
//  SPI.ShipToCharacteristics.ShipToParty.PartyType := 'ShipTo';
end;

function ExportNameAddress(dsInfo: TDataSet): Boolean;
var
  BP: IXMLParty;
  SPI: IXMLShipToInformation;
  I: Integer;
begin
  Result := False;

  BP := mw.DeliveryMessageWoodHeader.BuyerParty;
  FExportNameAddress(dsInfo, BP);

  BP := mw.DeliveryMessageWoodHeader.SupplierParty;
  FExportNameAddress(dsInfo, BP);

//  mw.DeliveryMessageWoodHeader.ShipToInformation.Clear;
  if mw.DeliveryMessageWoodHeader.ShipToInformation.Count > 0 then
    SPI := mw.DeliveryMessageWoodHeader.ShipToInformation.Items[0]
  else
    SPI := mw.DeliveryMessageWoodHeader.ShipToInformation.Add;
  BP := SPI.ShipToCharacteristics.ShipToParty;
  FExportNameAddress(dsInfo, BP);
end;

function ExportDeliveryMessageShipment(dsInfo: TDataSet; DONOTCALL: string = 'INTERNAL USE! DO NOT CALL THIS FUNCTION!'): Boolean;
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


  function GetDeliveryMessageShipment(sShipmentID, sShipmentIDType: string): IXMLDeliveryMessageShipment;
  var
    i: Integer;
    bFound: Boolean;
  begin
    bFound := False;
    for i := 0 to mw.DeliveryMessageShipment.Count - 1 do
    begin
      Result := mw.DeliveryMessageShipment.Items[i];
      if SameText(sShipmentID, Result.ShipmentID.Text) and SameText(sShipmentIDType, Result.ShipmentID.ShipmentIDType) then
      begin
        bFound := True;
        Break;
      end;
    end;

    if not bFound then
    begin
      Result := mw.DeliveryMessageShipment.Add;
      Result.ShipmentID.Text           := sShipmentID;
      Result.ShipmentID.ShipmentIDType := sShipmentIDType;
    end;

  end;

  function GetDeliveryMessageProductGroup(sProductGroupID, sProductGroupIDType: string): IXMLDeliveryMessageProductGroup;
  var
    i: Integer;
    bFound: Boolean;
  begin
    bFound := False;
    for i := 0 to DSM.DeliveryMessageProductGroup.Count - 1 do
    begin
      Result := DSM.DeliveryMessageProductGroup.Items[i];
      if SameText(sProductGroupID, Result.ProductGroupID.Text) and SameText(sProductGroupIDType, Result.ProductGroupID.ProductGroupIDType) then
      begin
        bFound := True;
        Break;
      end;
    end;

    if not bFound then
    begin
      Result := DSM.DeliveryMessageProductGroup.Add;
      Result.ProductGroupID.Text               := sProductGroupID;
      if sProductGroupIDType <> '' then  // 2006.11.26 20:18:46 By Zheng Jie (Gear1023@163.com)
      Result.ProductGroupID.ProductGroupIDType := sProductGroupIDType;
    end;

  end;

  function GetDeliveryShipmentLineItem(sDeliveryShipmentLineItemNumber: string): IXMLDeliveryShipmentLineItem;
  var
    i: Integer;
    bFound: Boolean;
  begin
    bFound := False;
    for i := 0 to DMPG.DeliveryShipmentLineItem.Count - 1 do
    begin
      Result := DMPG.DeliveryShipmentLineItem.Items[i];
      if StrToInt(sDeliveryShipmentLineItemNumber) = Result.DeliveryShipmentLineItemNumber then
      begin
        bFound := True;
        Break;
      end;
    end;

    if not bFound then
    begin
      Result := DMPG.DeliveryShipmentLineItem.Add;
      Result.DeliveryShipmentLineItemNumber := StrToInt(sDeliveryShipmentLineItemNumber);
    end;

  end;

begin
  Result := False;
  mw.DeliveryMessageShipment.Clear;
  dsInfo.First;
  while not dsInfo.Eof do
  begin
//      dsInfo.FieldByName('DeliveryMessageNumber').AsString := DeliveryMessageNumber;
    sShipmentID           := dsInfo.FieldByName('ShipmentID').AsString;
    sShipmentIDType       := dsInfo.FieldByName('ShipmentIDType').AsString;
    sProductGroupID       := dsInfo.FieldByName('ProductGroupID').AsString;
    sProductGroupIDType   := dsInfo.FieldByName('ProductGroupIDType').AsString;
    sDeliveryShipmentLineItemNumber := dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString;
    sProductIdentifier             := dsInfo.FieldByName('ProductIdentifier').AsString;
    sProductIdentifierType         := dsInfo.FieldByName('ProductIdentifierType').AsString;
    sAgency                        := dsInfo.FieldByName('Agency').AsString;
    sProductDescription            := dsInfo.FieldByName('ProductDescription').AsString;
    sSpeciesType                   := dsInfo.FieldByName('SpeciesType').AsString;
    sGradingRule                   := dsInfo.FieldByName('GradingRule').AsString;
    sGradeCode                     := dsInfo.FieldByName('GradeCode').AsString;
    sGradeName                     := dsInfo.FieldByName('GradeName').AsString;
    sWidthValue                    := dsInfo.FieldByName('WidthValue').AsString;
    sWidthUOM                      := dsInfo.FieldByName('WidthUOM').AsString;
    sThicknessValue                := dsInfo.FieldByName('ThicknessValue').AsString;
    sThicknessUOM                  := dsInfo.FieldByName('ThicknessUOM').AsString;
    sManufacturingProcessType      := dsInfo.FieldByName('ManufacturingProcessType').AsString;
    sExlogValue                    := dsInfo.FieldByName('ExlogValue').AsString;
    sExlogUOM                      := dsInfo.FieldByName('ExlogUOM').AsString;

    if SameText(dsInfo.FieldByName('DeliveryMessageNumber').AsString, DeliveryMessageNumber) then
    begin

      sShipmentID     := TRIM(sShipmentID) ;
      sShipmentIDType := TRIM(sShipmentIDType) ;

      sProductGroupID     := TRIM(sProductGroupID) ;
      sProductGroupIDType := TRIM(sProductGroupIDType) ;

      DSM   := GetDeliveryMessageShipment(sShipmentID, sShipmentIDType);
      DMPG  := GetDeliveryMessageProductGroup(sProductGroupID, sProductGroupIDType);


      DSLI := GetDeliveryShipmentLineItem(sDeliveryShipmentLineItemNumber);

      DoImportExport('select * from DeliveryShipmentDeliveryMessageReference WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportDeliveryShipmentDeliveryMessageReference, dsInfo, DSLI);  //

      DoImportExport('select * from ProductIdentifier WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportProductIdentifier, dsInfo, DSLI);  //

      DSLI.Product.ProductDescription.Clear;
      DSLI.Product.ProductDescription.Add.Text := sProductDescription;

      SWLC := DSLI.Product.WoodProducts.WoodTimbersDimensionalLumberBoards.SoftwoodLumber.SoftwoodLumberCharacteristics;
      SWLC.LumberSpecies.Clear;
      SWLC.LumberSpecies.Add.SpeciesType := sSpeciesType;

      if sGradingRule <> '' then // 2006.11.26 20:19:06 By Zheng Jie (Gear1023@163.com)
      SWLC.LumberGrade.GradingRule := sGradingRule;
      SWLC.LumberGrade.GradeName   := sGradeName;
      SWLC.LumberGrade.GradeCode   := sGradeCode;

      SWLC.Width.Clear;
      with SWLC.Width.Add.Value do
      begin
          Text := sWidthValue;
          UOM := sWidthUOM;
      end;
      SWLC.Thickness.Clear;
      with SWLC.Thickness.Add.Value do
      begin
        Text := sThicknessValue;
        UOM  := sThicknessUOM;
      end;

      SWLC.ManufacturingProcess.Clear;
      SWLC.ManufacturingProcess.Add.ManufacturingProcessType := sManufacturingProcessType;

      SWLC.ExLog.Value.Text := sExlogValue;
      SWLC.ExLog.Value.UOM := sExlogUOM;

    end;
    dsInfo.Next;
  end;

  doSaveXML;
  Result := True;
end;

function ExportProductIdentifier(dsInfo: TDataSet; pNode: IXMLNode): Boolean;
var
  DSLI: IXMLDeliveryShipmentLineItem;
  PI: IXMLProductIdentifier;
  
  sDeliveryShipmentLineItemNumber: string;
  sProductIdentifier: string;
  sProductIdentifierType: string;
  sAgency: string;

begin
  Result := False;

  DSLI := pNode as IXMLDeliveryShipmentLineItem;
  sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

  DSLI.Product.ProductIdentifier.Clear;
  dsInfo.First;
  while not dsInfo.Eof do
  begin
//             sDeliveryShipmentLineItemNumber := dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString;
       sProductIdentifier              := dsInfo.FieldByName('ProductIdentifier').AsString;
       sProductIdentifierType          := dsInfo.FieldByName('ProductIdentifierType').AsString;
       sAgency                         := dsInfo.FieldByName('Agency').AsString;

       if sDeliveryShipmentLineItemNumber = dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString then
       begin
         PI := DSLI.Product.ProductIdentifier.Add;

         PI.Text := sProductIdentifier;
         PI.ProductIdentifierType := sProductIdentifierType;
         PI.Agency := sAgency;
       end;

       dsInfo.Next;
  end;

//  doSaveXML;
  Result := True;
end;


{------------------------------------------------------------------------------}
{
function UselessExportProductIdentifier(dsInfo: TDataSet): Boolean;
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

        DSLI.Product.ProductIdentifier.Clear;
        dsInfo.First;
        while not dsInfo.Eof do
        begin
//             sDeliveryShipmentLineItemNumber := dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString;
             sProductIdentifier              := dsInfo.FieldByName('ProductIdentifier').AsString;
             sProductIdentifierType          := dsInfo.FieldByName('ProductIdentifierType').AsString;
             sAgency                         := dsInfo.FieldByName('Agency').AsString;

             if sDeliveryShipmentLineItemNumber = dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString then
             begin
               PI := DSLI.Product.ProductIdentifier.Add;

               PI.Text := sProductIdentifier;
               PI.ProductIdentifierType := sProductIdentifierType;
               PI.Agency := sAgency;
             end;

             dsInfo.Next;
        end;

      end;
    end;
  end;
  
//  doSaveXML;
  Result := True;
end;
}


function ExportDeliveryShipmentDeliveryMessageReference(dsInfo: TDataSet; pNode: IXMLNode): Boolean;
var
  DSLI: IXMLDeliveryShipmentLineItem;
  DMR:  IXMLDeliveryMessageReference;
  
  sDeliveryShipmentLineItemNumber: string;
begin
  Result := False;

  DSLI := pNode as IXMLDeliveryShipmentLineItem;
  sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

  DSLI.DeliveryMessageReference.Clear;
  dsInfo.First;
  while not dsInfo.Eof do
  begin
       if sDeliveryShipmentLineItemNumber = dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString then
       begin
         DMR := DSLI.DeliveryMessageReference.Add;

          DMR.Text := dsInfo.FieldByName('DeliveryMessageReference').AsString;
          DMR.DeliveryMessageReferenceType := dsInfo.FieldByName('DeliveryMessageReferenceType').AsString;
       end;

       dsInfo.Next;
  end;
  doSaveXML;
  Result := True;
end;
{
function ExportDeliveryShipmentDeliveryMessageReference(dsInfo: TDataSet): Boolean;
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

        DSLI.DeliveryMessageReference.Clear;
        dsInfo.First;
        while not dsInfo.Eof do
        begin
             if sDeliveryShipmentLineItemNumber = dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString then
             begin
               DMR := DSLI.DeliveryMessageReference.Add;

                DMR.Text := dsInfo.FieldByName('DeliveryMessageReference').AsString;
                DMR.DeliveryMessageReferenceType := dsInfo.FieldByName('DeliveryMessageReferenceType').AsString;
             end;

             dsInfo.Next;
        end;

      end;

    end;

  end;

  doSaveXML;
  Result := True;
end;
}

function ExportTransportPackageInformation(dsInfo: TDataSet): Boolean;
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


        DSLI.TransportPackageInformation.Clear;
        dsInfo.First;
        while not dsInfo.Eof do
        begin
            sPackageType       := dsInfo.FieldByName('PackageType').AsString;
            sIdentifier        := dsInfo.FieldByName('Identifier').AsString;
            sIdentifierCodeType:= dsInfo.FieldByName('IdentifierCodeType').AsString;
            sIdentifierType    := dsInfo.FieldByName('IdentifierType').AsString;
            sItemCountValue    := dsInfo.FieldByName('ItemCountValue').AsString;
            sItemCountUOM      := dsInfo.FieldByName('ItemCountUOM').AsString;
            sQuantityType      := dsInfo.FieldByName('QuantityType').AsString;
            sQuantityValue     := ReplaceCommas(dsInfo.FieldByName('QuantityValue').AsString) ;
            sQuantityUOM       := dsInfo.FieldByName('QuantityUOM').AsString;
             if sDeliveryShipmentLineItemNumber = dsInfo.FieldByName('DeliveryShipmentLineItemNumber').AsString then
             begin
               TPI := DSLI.TransportPackageInformation.Add;
               TPI.PackageType := sPackageType;

                TPI.Identifier.Clear;
                IS60 := TPI.Identifier.Add;

                IS60.Text := sIdentifier;
                IS60.IdentifierCodeType := sIdentifierCodeType;
                IS60.IdentifierType := sIdentifierType;

                TPI.ItemCount.Value.Text := sItemCountValue;
                TPI.ItemCount.Value.UOM  := sItemCountUOM;

                TPI.Quantity.QuantityType:= sQuantityType;
                TPI.Quantity.Value.Text  := sQuantityValue;
                TPI.Quantity.Value.UOM   := sQuantityUOM;

                DoImportExport('select * from InformationalQuantity WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportInformationalQuantity, dsInfo, TPI);

                DoImportExport('select * from LengthSpecification WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(InternalInvoiceNo), ExportLengthSpecification, dsInfo, TPI);

             end;

             dsInfo.Next;
        end;

      end;

    end;

  end;

  doSaveXML;
  Result := True;
end;


function ExportLengthSpecification(dsInfo: TDataSet; pNode: IXMLNode): Boolean;
var
  TPI: IXMLTransportPackageInformation; 
  IS60: IXMLIdentifierS60;
  WI: IXMLWoodItem;

  M: Integer;

  sIdentifier: string;

  sLengthCategory: string;
  sTotalNumberOfUnitsValue: string;
  sTotalNumberOfUnitsUOM: string;
begin
  Result := False;

  TPI := pNode as IXMLTransportPackageInformation;
  
          for M := 0 to TPI.Identifier.Count - 1 do
          begin

            IS60 := TPI.Identifier.Items[M];
            sIdentifier := IS60.Text;
          end;

          TPI.WoodItem.Clear;
          WI := TPI.WoodItem.Add;
          WI.LengthSpecification.Clear;
          dsInfo.First;
          while not dsInfo.Eof do
          begin
                sLengthCategory          := dsInfo.FieldByName('LengthCategory').AsString;
                sTotalNumberOfUnitsValue := dsInfo.FieldByName('TotalNumberOfUnitsValue').AsString;
                sTotalNumberOfUnitsUOM   :=dsInfo.FieldByName('TotalNumberOfUnitsUOM').AsString;

               if sIdentifier = dsInfo.FieldByName('Identifier').AsString then
               begin
                  with WI.LengthSpecification.Add do
                  begin
                    LengthCategory := sLengthCategory;
                    TotalNumberOfUnits.Value.Text := sTotalNumberOfUnitsValue;
                    TotalNumberOfUnits.Value.UOM  := sTotalNumberOfUnitsUOM;
                  end;
               end;

               dsInfo.Next;
          end;

//  doSaveXML;
  Result := True;
end;


function ExportInformationalQuantity(dsInfo: TDataSet; pNode: IXMLNode): Boolean;
var
  TPI: IXMLTransportPackageInformation; 
  IS60: IXMLIdentifierS60;
  IQ: IXMLInformationalQuantity;

  M: Integer;

  sIdentifier: string;
  sInformationalQuantityType: string;
  sInformationalQuantityValue: string;
  sInformationalQuantityUOM: string;
begin
  Result := False;

  TPI := pNode as IXMLTransportPackageInformation;
  
          for M := 0 to TPI.Identifier.Count - 1 do
          begin

            IS60 := TPI.Identifier.Items[M];
            sIdentifier := IS60.Text;
          end;

          TPI.InformationalQuantity.Clear;
          dsInfo.First;
          while not dsInfo.Eof do
          begin
                sInformationalQuantityType  := dsInfo.FieldByName('InformationalQuantityType').AsString;
                sInformationalQuantityValue := ReplaceCommas(dsInfo.FieldByName('InformationalQuantityValue').AsString) ;
                sInformationalQuantityUOM   := dsInfo.FieldByName('InformationalQuantityUOM').AsString;


               if sIdentifier = dsInfo.FieldByName('Identifier').AsString then
               begin
                 IQ := TPI.InformationalQuantity.Add;

                 IQ.QuantityType := sInformationalQuantityType;
                 IQ.Value.Text   := sInformationalQuantityValue;
                 IQ.Value.UOM    := sInformationalQuantityUOM;

               end;

               dsInfo.Next;
          end;



//  doSaveXML;
  Result := True;
end;
{
function ExportLengthSpecification(dsInfo: TDataSet): Boolean;
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

//        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];

          for M := 0 to TPI.Identifier.Count - 1 do
          begin

            IS60 := TPI.Identifier.Items[M];
            sIdentifier := IS60.Text;
          end;

          TPI.WoodItem.Clear;
          WI := TPI.WoodItem.Add;
          WI.LengthSpecification.Clear;
          dsInfo.First;
          while not dsInfo.Eof do
          begin
                sLengthCategory          := dsInfo.FieldByName('LengthCategory').AsString;
                sTotalNumberOfUnitsValue := dsInfo.FieldByName('TotalNumberOfUnitsValue').AsString;
                sTotalNumberOfUnitsUOM   :=dsInfo.FieldByName('TotalNumberOfUnitsUOM').AsString;

               if sIdentifier = dsInfo.FieldByName('Identifier').AsString then
               begin
                  with WI.LengthSpecification.Add do
                  begin
                    LengthCategory := sLengthCategory;
                    TotalNumberOfUnits.Value.Text := sTotalNumberOfUnitsValue;
                    TotalNumberOfUnits.Value.UOM  := sTotalNumberOfUnitsUOM;
                  end;
               end;

               dsInfo.Next;
          end;

        end;

      end;

    end;

  end;

  doSaveXML;
  Result := True;
end;


function ExportInformationalQuantity(dsInfo: TDataSet): Boolean;
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

//        sDeliveryShipmentLineItemNumber := IntToStr(DSLI.DeliveryShipmentLineItemNumber);

        for L := 0 to DSLI.TransportPackageInformation.Count - 1 do
        begin
          TPI := DSLI.TransportPackageInformation.Items[L];

          for M := 0 to TPI.Identifier.Count - 1 do
          begin

            IS60 := TPI.Identifier.Items[M];
            sIdentifier := IS60.Text;
          end;

          TPI.InformationalQuantity.Clear;
          dsInfo.First;
          while not dsInfo.Eof do
          begin
                sInformationalQuantityType  := dsInfo.FieldByName('InformationalQuantityType').AsString;
                sInformationalQuantityValue := dsInfo.FieldByName('InformationalQuantityValue').AsString;
                sInformationalQuantityUOM   := dsInfo.FieldByName('InformationalQuantityUOM').AsString;


               if sIdentifier = dsInfo.FieldByName('Identifier').AsString then
               begin
                 IQ := TPI.InformationalQuantity.Add;

                 IQ.QuantityType := sInformationalQuantityType;
                 IQ.Value.Text   := sInformationalQuantityValue;
                 IQ.Value.UOM    := sInformationalQuantityUOM;

               end;

               dsInfo.Next;
          end;

        end;
        
      end;

    end;

  end;

  doSaveXML;
  Result := True;
end;
}

end.
