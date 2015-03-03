unit dmsVidaContact;

interface

uses
  SysUtils, Classes, Dialogs, Controls, Forms,
  VidaType, SqlTimSt, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, DB;

type
  TdmsContact = class(TDataModule)
    dsrcShippers: TDataSource;
    dsrcOwners: TDataSource;
    dsrcProducers: TDataSource;
    dsrcCities: TDataSource;
    dsrcAddressAndReference: TDataSource;
    dsCity: TDataSource;
    ds_LocalShipper: TDataSource;
    ds_Verk: TDataSource;
    ds_ProductionUnit: TDataSource;
    ds_RegPoints: TDataSource;
    ds_PkgNoSerie: TDataSource;
    ds_Users: TDataSource;
    ds_SalesGrp: TDataSource;
    ds_SR: TDataSource;
    ds_Market: TDataSource;
    dsCurrency: TDataSource;
    dsDelTerms: TDataSource;
    ds_volunit: TDataSource;
    sp_ClientCode: TFDStoredProc;
    sq_GetLanguageID: TFDQuery;
    sq_GetLanguageIDLanguageCode: TIntegerField;
    cds_PkgNoSerie: TFDQuery;
    cds_PkgNoSerieClientNo: TIntegerField;
    cds_PkgNoSerieCurrentPkgNo: TIntegerField;
    cds_PkgNoSerieHighestPkgNo: TIntegerField;
    sq_GetUserName: TFDQuery;
    sq_GetUserNameFullName: TStringField;
    sq_IsLego: TFDQuery;
    sq_IsLegoRoleType: TIntegerField;
    cds_Users: TFDQuery;
    cds_UsersUserID: TIntegerField;
    cds_UsersNamn: TStringField;
    cds_ClientToLL: TFDQuery;
    cds_ClientToLLClientName: TStringField;
    cds_ClientToLLClientNo: TIntegerField;
    cds_SalesGrp: TFDQuery;
    cds_SalesGrpSalesGroupNo: TIntegerField;
    cds_SalesGrpSalesGroupName: TStringField;
    cds_SR: TFDQuery;
    cds_SRClientName: TStringField;
    cds_SRClientNo: TIntegerField;
    cds_Market: TFDQuery;
    cds_MarketMarketRegionNo: TIntegerField;
    cds_MarketMarketRegionName: TStringField;
    cds_MarketSequenceNo: TIntegerField;
    cds_MarketDateCreated: TSQLTimeStampField;
    cds_MarketCreatedUser: TSmallintField;
    cds_MarketModifiedUser: TSmallintField;
    cds_volunit: TFDQuery;
    cds_volunitVolumeUnit_No: TIntegerField;
    cds_volunitVolumeUnitName: TStringField;
    cds_volunitDateCreated: TSQLTimeStampField;
    cds_volunitCreatedUser: TSmallintField;
    cds_volunitModifiedUser: TSmallintField;
    cds_volunitSequenceNo: TIntegerField;
    cdsPriceUnit: TFDQuery;
    cdsPriceUnitTemplateUnitNo: TIntegerField;
    cdsPriceUnitTemplateUnitName: TStringField;
    cds_Shippers: TFDStoredProc;
    cds_ShippersClientNo: TIntegerField;
    cds_ShippersClientName: TStringField;
    cds_LocalShipper: TFDStoredProc;
    cds_LocalShipperClientNo: TIntegerField;
    cds_LocalShipperClientName: TStringField;
    cdsOwners: TFDStoredProc;
    cdsProducers: TFDStoredProc;
    cdsProducersClientNo: TIntegerField;
    cdsProducersClientName: TStringField;
    cds_RegPoints: TFDQuery;
    cds_ProductionUnit: TFDQuery;
    cds_ProductionUnitProductionUnitNo: TIntegerField;
    cds_ProductionUnitProductionUnitName: TStringField;
    cds_ProductionUnitClientNo: TIntegerField;
    cds_ProductionUnitSequenceNo: TIntegerField;
    cds_ProductionUnitCreatedUser: TSmallintField;
    cds_ProductionUnitModifiedUser: TSmallintField;
    cds_ProductionUnitDateCreated: TSQLTimeStampField;
    cds_ProductionUnitLogicalInventoryPointNo: TIntegerField;
    cds_ProductionUnitRegistrationPointNo: TIntegerField;
    cds_ProductionUnitOnSticks: TIntegerField;
    cds_ProductionUnitSurfacingNo: TIntegerField;
    cds_ProductionUnitDIM_DIV: TIntegerField;
    cds_ProductionUnitTerminalNo: TIntegerField;
    cds_ProductionUnitPhysicalInventoryPointNo: TIntegerField;
    cds_ProductionUnitLIPGroupNo: TIntegerField;
    cds_ProductionUnitCost: TFloatField;
    cds_ProductionUnitCapitalCost: TFloatField;
    cds_ProductionUnitOverheadCost: TFloatField;
    cds_ProductionUnitSalaryCost: TFloatField;
    cds_ProductionUnitLegoCostPerAM3: TBCDField;
    cds_ProductionUnitProductionUnitCode: TStringField;
    cds_ProductionUnitPkgPrefix: TStringField;
    cds_ProductionUnitStoppOrsakFil: TStringField;
    cds_ProductionUnitStoppTidFil: TStringField;
    cds_ProductionUnitRegPoint: TStringField;
    sq_IsIntVerk: TFDQuery;
    sq_IsIntVerkIntVerk: TIntegerField;
    cds_Verk: TFDQuery;
    cds_VerkClientNo: TIntegerField;
    cds_VerkClientName: TStringField;
    cdsCity: TFDQuery;
    cdsCities: TFDStoredProc;
    cdsCitiesCityNo: TIntegerField;
    cdsCitiesCityName: TStringField;
    cdsAddressAndReference: TFDStoredProc;
    cdsAddressAndReferenceAddress: TStringField;
    cdsAddressAndReferenceDestination: TStringField;
    cdsAddressAndReferenceReference: TStringField;
    sq_GetPIPByClientNo: TFDQuery;
    sq_GetPIPByClientNoPIPNO: TIntegerField;
    sq_IsClientRoleType: TFDQuery;
    sq_IsClientRoleTypeClientNo: TIntegerField;
    sq_UserIssueReport: TFDQuery;
    sq_GetSR: TFDQuery;
    sq_GetSRSalesRegionNo: TIntegerField;
    sq_GetSuppCodeByPktLevKod: TFDQuery;
    sq_GetSuppCodeByPktLevKodPkgPrefix: TStringField;
    sq_GetSpeditorEmail: TFDQuery;
    sq_GetSpeditorEmailEmailAddress: TStringField;
    sq_GetPkgPrefix: TFDQuery;
    sq_GetPkgPrefixPkgPrefix: TStringField;
    sq_IsVerk: TFDQuery;
    sq_IsVerkRoleType: TIntegerField;
    sq_IsRoleType: TFDQuery;
    sq_IsRoleTypeClientNo: TIntegerField;
    sq_GetPIPNo: TFDQuery;
    sq_GetPIPNoPIPNO: TIntegerField;
    sqClientPrefDocs: TFDQuery;
    sqClientPrefDocsClientNo: TIntegerField;
    sqClientPrefDocsRoleType: TIntegerField;
    sqClientPrefDocsDocType: TIntegerField;
    sqClientPrefDocsNoOfCopy: TIntegerField;
    sqClientPrefDocspromptUser: TIntegerField;
    sqClientPrefDocscollated: TIntegerField;
    sqClientPrefDocsPrinterSetup: TIntegerField;
    sqClientPrefDocsReportNo: TIntegerField;
    sqClientPrefDocsReportNo_1: TIntegerField;
    sqClientPrefDocsDocType_1: TIntegerField;
    sqClientPrefDocsReportName: TStringField;
    sqClientPrefDocsBeskrivning: TStringField;
    sqGetEmailAdr: TFDQuery;
    sqGetEmailAdrEmailAddress: TStringField;
    sqGetFirstAndLastName: TFDQuery;
    sqGetFirstAndLastNameFullName: TStringField;
    cdsCurrency: TFDQuery;
    cdsCurrencyCurrencyNo: TIntegerField;
    cdsCurrencyCurrencyName: TStringField;
    cdsDelTerms: TFDQuery;
    cdsDelTermsDeliveryTerm_No: TIntegerField;
    cdsDelTermsDeliveryTerm: TStringField;
    cdsDelTermsDescription: TStringField;
    sq_GetPrefixByClientNo: TFDQuery;
    sq_GetPrefixByClientNoClientCode: TStringField;
    sp_ClientCodeClientCode: TStringField;
    cds_RegPointsRegPointNo: TIntegerField;
    cds_RegPointsRegPointName: TStringField;
    cds_RegPointsCreatedUser: TSmallintField;
    cds_RegPointsModifiedUser: TSmallintField;
    cds_RegPointsDateCreated: TSQLTimeStampField;
    cds_RegPointsSequenceNo: TIntegerField;
    sp_Customers: TFDStoredProc;
    sp_CustomersClientNo: TIntegerField;
    sp_CustomersClientName: TStringField;
    sp_Agent: TFDStoredProc;
    sp_AgentClientNo: TIntegerField;
    sp_AgentClientName: TStringField;
    sp_AgentSearchName: TStringField;
    cds_Country: TFDQuery;
    cds_CountryCountryNo: TIntegerField;
    cds_CountryCountryName: TStringField;
    dsPriceUnit: TDataSource;
    sq_GetMaxLIPNoOfPIPNo: TFDQuery;
    sq_GetMaxLIPNoOfPIPNoLIPNO: TIntegerField;
    ds_Customers: TDataSource;
    sp_actAgents: TFDStoredProc;
    sp_actAgentsClientNo: TIntegerField;
    sp_actAgentsClientName: TStringField;
    sp_actAgentsSearchName: TStringField;
    cds_ActShippers: TFDStoredProc;
    cds_ActShippersClientNo: TIntegerField;
    cds_ActShippersClientName: TStringField;
    cds_ActShippersSearchName: TStringField;
    ds_Country: TDataSource;
    cds_AdrSearch: TFDQuery;
    cds_AdrSearchAddressNo: TIntegerField;
    cds_AdrSearchAddressName: TStringField;
    cds_AdrSearchAddressLine1: TStringField;
    cds_AdrSearchAddressLine2: TStringField;
    cds_AdrSearchAddressLine3: TStringField;
    cds_AdrSearchAddressLine4: TStringField;
    cds_AdrSearchCityNo: TIntegerField;
    cds_AdrSearchStateOrProvince: TStringField;
    cds_AdrSearchCountryNo: TIntegerField;
    cds_AdrSearchAddressType: TIntegerField;
    cds_AdrSearchPhone1: TStringField;
    cds_AdrSearchPhone2: TStringField;
    cds_AdrSearchPhone3: TStringField;
    cds_AdrSearchFax: TStringField;
    cds_AdrSearchCreatedUser: TIntegerField;
    cds_AdrSearchModifiedUser: TIntegerField;
    cds_AdrSearchDateCreated: TSQLTimeStampField;
    cds_AdrSearchEmail: TStringField;
    cds_AdrSearchPostalCode: TStringField;
    cds_AdrSearchSequenceNo: TIntegerField;
    cds_AdrSearchCountry: TStringField;
    cds_AdrSearchCity: TStringField;
    ds_AdrSearch: TDataSource;
    FD_City: TFDQuery;
    FD_CityCityNo: TIntegerField;
    FD_CityCityName: TStringField;
    FD_CitySequenceNo: TIntegerField;
    FD_CityDateCreated: TSQLTimeStampField;
    FD_CityModifiedUser: TSmallintField;
    FD_CityCreatedUser: TSmallintField;
    FD_CityImpVerk: TIntegerField;
    ds_City: TDataSource;
    ds_CompDelAdr: TDataSource;
    cds_Comp_DelAdr: TFDQuery;
    cds_Comp_DelAdrClientNo: TIntegerField;
    cds_Comp_DelAdrAddressNo: TIntegerField;
    cds_Comp_DelAdrAddressType: TIntegerField;
    cds_Comp_DelAdrCreatedUser: TSmallintField;
    cds_Comp_DelAdrModifiedUser: TSmallintField;
    cds_Comp_DelAdrDateCreated: TSQLTimeStampField;
    cds_Comp_DelAdrAddressNo_1: TIntegerField;
    cds_Comp_DelAdrAddressName: TStringField;
    cds_Comp_DelAdrAddressLine1: TStringField;
    cds_Comp_DelAdrAddressLine2: TStringField;
    cds_Comp_DelAdrAddressLine3: TStringField;
    cds_Comp_DelAdrAddressLine4: TStringField;
    cds_Comp_DelAdrCityNo: TIntegerField;
    cds_Comp_DelAdrStateOrProvince: TStringField;
    cds_Comp_DelAdrCountryNo: TIntegerField;
    cds_Comp_DelAdrAddressType_1: TIntegerField;
    cds_Comp_DelAdrPhone1: TStringField;
    cds_Comp_DelAdrPhone2: TStringField;
    cds_Comp_DelAdrPhone3: TStringField;
    cds_Comp_DelAdrFax: TStringField;
    cds_Comp_DelAdrCreatedUser_1: TIntegerField;
    cds_Comp_DelAdrModifiedUser_1: TIntegerField;
    cds_Comp_DelAdrDateCreated_1: TSQLTimeStampField;
    cds_Comp_DelAdrEmail: TStringField;
    cds_Comp_DelAdrPostalCode: TStringField;
    cds_Comp_DelAdrSequenceNo: TIntegerField;
    cds_Comp_DelAdrCityName: TStringField;
    cds_Comp_DelAdrCountryName: TStringField;
    sq_AdrName: TFDQuery;
    sq_AdrNameAddressNo: TIntegerField;
    sq_AdrNameAddressName: TStringField;
    sq_AdrNameAddressLine1: TStringField;
    sq_AdrNameAddressLine2: TStringField;
    sq_AdrNameAddressLine3: TStringField;
    sq_AdrNameAddressLine4: TStringField;
    sq_AdrNameCityNo: TIntegerField;
    sq_AdrNameStateOrProvince: TStringField;
    sq_AdrNameCountryNo: TIntegerField;
    sq_AdrNameAddressType: TIntegerField;
    sq_AdrNamePhone1: TStringField;
    sq_AdrNamePhone2: TStringField;
    sq_AdrNamePhone3: TStringField;
    sq_AdrNameFax: TStringField;
    sq_AdrNameCreatedUser: TIntegerField;
    sq_AdrNameModifiedUser: TIntegerField;
    sq_AdrNameDateCreated: TSQLTimeStampField;
    sq_AdrNameEmail: TStringField;
    sq_AdrNamePostalCode: TStringField;
    sq_AdrNameSequenceNo: TIntegerField;
    sqAdrDepend: TFDQuery;
    sqAdrDependaddressNo: TIntegerField;
    sqDelCompAdr: TFDQuery;
    cds_CompAdr: TFDQuery;
    cds_CompAdrClientNo: TIntegerField;
    cds_CompAdrAddressNo: TIntegerField;
    cds_CompAdrAddressType: TIntegerField;
    cds_CompAdrCreatedUser: TSmallintField;
    cds_CompAdrModifiedUser: TSmallintField;
    cds_CompAdrDateCreated: TSQLTimeStampField;
    cds_CompAdrAddressNo_1: TIntegerField;
    cds_CompAdrAddressName: TStringField;
    cds_CompAdrAddressLine1: TStringField;
    cds_CompAdrAddressLine2: TStringField;
    cds_CompAdrAddressLine3: TStringField;
    cds_CompAdrAddressLine4: TStringField;
    cds_CompAdrCityNo: TIntegerField;
    cds_CompAdrStateOrProvince: TStringField;
    cds_CompAdrCountryNo: TIntegerField;
    cds_CompAdrAddressType_1: TIntegerField;
    cds_CompAdrPhone1: TStringField;
    cds_CompAdrPhone2: TStringField;
    cds_CompAdrPhone3: TStringField;
    cds_CompAdrFax: TStringField;
    cds_CompAdrCreatedUser_1: TIntegerField;
    cds_CompAdrModifiedUser_1: TIntegerField;
    cds_CompAdrDateCreated_1: TSQLTimeStampField;
    cds_CompAdrEmail: TStringField;
    cds_CompAdrPostalCode: TStringField;
    cds_CompAdrSequenceNo: TIntegerField;
    cds_CompAdrCityName: TStringField;
    cds_CompAdrCountryName: TStringField;
    ds_CompAdr: TDataSource;
    sp_AttLev: TFDStoredProc;
    sp_AttLevClientNo: TIntegerField;
    sp_AttLevClientName: TStringField;
    sp_AttLevSearchName: TStringField;
    cds_ReportStaticsII: TFDQuery;
    cds_ReportStaticsIISalesRegionNo: TIntegerField;
    cds_ReportStaticsIIDocType: TIntegerField;
    cds_ReportStaticsIICompanyName: TMemoField;
    cds_ReportStaticsIIAddress: TMemoField;
    cds_ReportStaticsIITelefon: TMemoField;
    cds_ReportStaticsIIEmail: TMemoField;
    cds_ReportStaticsIIHQ: TMemoField;
    cds_ReportStaticsIIVat_BankInfo: TMemoField;
    cds_ReportStaticsIIAccountNo: TMemoField;
    cds_ReportStaticsIIGiro: TMemoField;
    ds_ReportStaticsII: TDataSource;
    sq_GetEmailAdr_Utlastad: TFDQuery;
    sq_GetEmailAdr_UtlastadEmailAddress: TStringField;
    sp_GetLegoOfLL: TFDStoredProc;
    sq_GetSRNo: TFDQuery;
    sq_GetSRNoSalesRegionNo: TIntegerField;
    sp_GetCountryOfSR: TFDStoredProc;
    procedure provSawMillLoadOrders1111GetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_PkgNoSerie1PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);

    procedure cds_RegPointsAfterInsert(DataSet: TDataSet);
    procedure cds_ProductionUnitAfterInsert(DataSet: TDataSet);
    procedure cds_AdrSearchAfterInsert(DataSet: TDataSet);
    procedure cds_AdrSearchBeforePost(DataSet: TDataSet);
    procedure cds_Comp_DelAdrAfterInsert(DataSet: TDataSet);
    procedure cds_CompAdrAfterInsert(DataSet: TDataSet);

  private
    fClientNo: Integer;
    function FinnsAddressName(const AddressNo: Integer;
      const AddressName: String): Boolean;
    Function IsClientRoleType(const ClientNo, RoleType: Integer): Boolean;

    // function  WhoBelongsToLoadingLocation(const LoadingLocationNo : Integer) : Integer ;

  public
    function GetCountryOfSalesRegion(const SalesRegionNo  : Integer) : Integer ;
    function ThisUserIsRoleType(const ClientNo, RoleType: Integer): Boolean;
    function  GetSalesRegionNo (const CompanyNo : Integer) : Integer ;
    function  GetLocalSupplierNo(const LoadingLocationNo: Integer): Integer;
    procedure Refresh_sp_AttLev(const RoleType: Integer);
    Function GetMaxLIPNoOfPIPNo(const PIPNo: Integer): Integer;
    Function ClientInterVerk(const CompanyNo: Integer): Boolean;
    function GetSRByCompanyNo(const ClientNo: Integer): Integer;

    function GetEmailAddress_Utlastad(const ClientNo: Integer): String;
    function GetEmailAddressForSpeditorByLO(const LONo: Integer): String;
    function GetEmailAddress(const ClientNo: Integer): String;
    function GetPIPNo(const LIPNo: Integer): Integer;
    function GetSuppliercodeByPktLevKod(const PktNrLevKod: String): String;
    function GetPrefixByClientNo(const ClientNo: Integer): String;
    function GetSupplierCode(const LoadingLocationNo: Integer): String3;

    function GetFullUserName(const UserID: Integer): String;
    function GetFirstAndLastName(const UserID: Integer): String;

    function GetClientCode(const ClientNo: Integer): String3;

    function Client_Language(const ClientNo: Integer): Integer;
    function IsClientLego(const ClientNo: Integer): Integer;
    function IsClientVerk(const ClientNo: Integer): Integer;
    procedure InsertUserIssueReport(const UserID, InternalInvoiceNo: Integer);

    Procedure GetClientDocPrefs(const ClientNo, DocType: Integer;
      Var ReportName: String; Var NoOfCopy, promptUser, collated: OleVariant;
      Var PrinterSetup: Integer);

    function GetRoleType(const VerkNo: Integer): Integer;
    function GetPIPByClientNoPIPNO(const OwnerNo: Integer): Integer;
  end;

var
  dmsContact: TdmsContact;

implementation

uses dmsDataConn, VidaConst, VidaUser, dmsVidaSystem;

{$R *.dfm}
{ TdmsContact }

function TdmsContact.GetCountryOfSalesRegion(const SalesRegionNo  : Integer) : Integer ;
Begin
 if sp_GetCountryOfSR.Active then
  sp_GetCountryOfSR.Active := False ;
 sp_GetCountryOfSR.ParamByName('@SalesRegionNo').AsInteger  :=  SalesRegionNo ;
 sp_GetCountryOfSR.Active := True ;
 if not sp_GetCountryOfSR.Eof then
  Result :=   sp_GetCountryOfSR.FieldByName('StatistikLandNr').AsInteger
   else
    Result  := -1 ;
 sp_GetCountryOfSR.Active := False ;
end;

function TdmsContact.GetSalesRegionNo (const CompanyNo : Integer) : Integer ;
Begin
 sq_GetSRNo.ParamByName('ClientNo').AsInteger:= CompanyNo ;
 Try
 sq_GetSRNo.Open ;
 if not sq_GetSRNo.Eof then
  Result:= sq_GetSRNoSalesRegionNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetSRNo.Close ;
 End ;
End ;

procedure TdmsContact.provSawMillLoadOrders1111GetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'SupplierShippingPlan';
end;

function TdmsContact.GetClientCode(const ClientNo: Integer): String3;
Begin
  sp_ClientCode.ParamByName('@ClientNo').AsInteger := ClientNo;
  sp_ClientCode.Open;
  if not sp_ClientCode.Eof then
    Result := sp_ClientCodeClientCode.AsString
  else
    Result := '';
  sp_ClientCode.Close;
End;

Function TdmsContact.IsClientRoleType(const ClientNo,
  RoleType: Integer): Boolean;
Begin
  sq_IsRoleType.Close;
  sq_IsRoleType.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_IsRoleType.ParamByName('RoleType').AsInteger := RoleType;
  sq_IsRoleType.Open;
  if not sq_IsRoleType.Eof then
    Result := True
  else
    Result := False;
  sq_IsRoleType.Close;
End;

function TdmsContact.GetFullUserName(const UserID: Integer): String;
Begin
  sq_GetUserName.ParamByName('UserID').AsInteger := UserID;
  sq_GetUserName.Open;
  Result := sq_GetUserNameFullName.AsString;
  sq_GetUserName.Close;
End;

function TdmsContact.GetFirstAndLastName(const UserID: Integer): String;
Begin
  sqGetFirstAndLastName.ParamByName('UserID').AsInteger := UserID;
  sqGetFirstAndLastName.Open;
  Result := sqGetFirstAndLastNameFullName.AsString;
  sqGetFirstAndLastName.Close;
End;

function TdmsContact.Client_Language(const ClientNo: Integer): Integer;
Begin
  Result := -1;
  sq_GetLanguageID.Close;
  sq_GetLanguageID.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_GetLanguageID.Open;
  if not sq_GetLanguageID.Eof then
    Result := sq_GetLanguageIDLanguageCode.AsInteger;
  sq_GetLanguageID.Close;
End;

function TdmsContact.ThisUserIsRoleType(const ClientNo,
  RoleType: Integer): Boolean;
Begin
  Result := False;
  Try
    sq_IsClientRoleType.ParamByName('ClientNo').AsInteger := ClientNo;
    sq_IsClientRoleType.ParamByName('RoleType').AsInteger := RoleType;
    sq_IsClientRoleType.Open;
    if sq_IsClientRoleTypeClientNo.AsInteger = ClientNo then
      Result := True
    else
      Result := False;
  Finally
    sq_IsClientRoleType.Close;
  End;
End;

{
  function TdmsContact.WhoBelongsToLoadingLocation(const LoadingLocationNo : Integer) : Integer ;
  var frmChooseSupplier: TfrmChooseSupplier;
  Begin
  cds_ClientToLL.ParamByName('LoadingLocationNo').AsInteger:= LoadingLocationNo ;
  cds_ClientToLL.Active:= True ;

  if cds_ClientToLL.RecordCount > 1 then
  Begin
  frmChooseSupplier:= TfrmChooseSupplier.Create(Nil);
  Try
  frmChooseSupplier.ShowModal ;
  Result:= cds_ClientToLLClientNo.AsInteger ;
  Finally
  FreeAndNil(frmChooseSupplier) ;
  End ;
  End
  else
  Begin
  if not cds_ClientToLL.Eof then
  Result:= cds_ClientToLLClientNo.AsInteger
  else
  Result:= -1 ;
  End ;
  cds_ClientToLL.Active:= False ;
  End ;
}
function TdmsContact.GetSupplierCode(const LoadingLocationNo: Integer): String3;
Var
  ClientNo: Integer;
Begin
  ClientNo := -1;
  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
  Begin
    // ClientNo:= WhoBelongsToLoadingLocation(LoadingLocationNo) ;
    // if ClientNo <> -1 then
    // Result:= dmsContact.GetClientCode(ClientNo)
    // else
    Result := 'VWS';
  End
  else if ThisUserIsRoleType(ThisUser.CompanyNo, cInternal_Mill) then
    Result := dmsContact.GetClientCode(ThisUser.CompanyNo)
  else if ThisUserIsRoleType(ThisUser.CompanyNo, cLego) then
    Result := dmsContact.GetClientCode(ThisUser.CompanyNo);
End;

function TdmsContact.IsClientVerk(const ClientNo: Integer): Integer;
Begin
  Result := -1;
  sq_IsVerk.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_IsVerk.Open;
  if not sq_IsVerk.Eof then
    Result := sq_IsVerkRoleType.AsInteger
  else
    Result := -1;
  sq_IsVerk.Close;
End;

function TdmsContact.IsClientLego(const ClientNo: Integer): Integer;
Begin
  Result := -1;
  sq_IsLego.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_IsLego.Open;
  if not sq_IsLego.Eof then
    Result := sq_IsLegoRoleType.AsInteger
  else
    Result := -1;
  sq_IsLego.Close;
End;

procedure TdmsContact.cds_PkgNoSerie1PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  if (E is EDatabaseError) then
  // if (E as EDatabaseError). .Errors[0].Errorcode = eKeyViol then
  begin
    if DataSet.FieldByName('CurrentPkgNo').AsInteger < 1 then
      E.Create('CurrentPkgNo måste ha ett värde');
    if DataSet.FieldByName('HighestPkgNo').AsInteger < 1 then
      E.Create('HighestPkgNo måste ha ett värde');
    if DataSet.FieldByName('ClientNo').AsInteger < 1 then
      E.Create('Du måste välja ett verk');
    Action := daFail;
  end;
end;

procedure TdmsContact.InsertUserIssueReport(const UserID, InternalInvoiceNo
  : Integer);
Begin
  Try
    sq_UserIssueReport.ParamByName('userId').AsInteger := UserID;
    sq_UserIssueReport.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sq_UserIssueReport.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmsContact.GetPrefixByClientNo(const ClientNo: Integer): String;
Begin
  sq_GetPrefixByClientNo.Close;
  sq_GetPrefixByClientNo.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_GetPrefixByClientNo.Open;
  if not sq_GetPrefixByClientNo.Eof then
    Result := sq_GetPrefixByClientNoClientCode.AsString
  else
    Result := '';
  sq_GetPrefixByClientNo.Close;
End;

function TdmsContact.GetSuppliercodeByPktLevKod(const PktNrLevKod
  : String): String;
Begin
  Try
    sq_GetPkgPrefix.ParamByName('ProductionUnitCode').AsString := PktNrLevKod;
    sq_GetPkgPrefix.Open;
    if not sq_GetPkgPrefix.Eof then
      Result := sq_GetPkgPrefixPkgPrefix.AsString
    else
      Result := '';
  Finally
    sq_GetPkgPrefix.Close;
  End;

  { sq_GetSuppCodeByPktLevKod.Close ;
    sq_GetSuppCodeByPktLevKod.ParamByName('PktNrLevKod').AsString:= PktNrLevKod ;
    sq_GetSuppCodeByPktLevKod.Open ;
    if not sq_GetSuppCodeByPktLevKod.Eof then
    Result:= sq_GetSuppCodeByPktLevKodClientCode.AsString
    else
    Result:= '' ;
    sq_GetSuppCodeByPktLevKod.Close ; }
End;

Procedure TdmsContact.GetClientDocPrefs(const ClientNo, DocType: Integer;
  Var ReportName: String; Var NoOfCopy, promptUser, collated: OleVariant;
  Var PrinterSetup: Integer);
Var
  Save_Cursor: TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    sqClientPrefDocs.Close;
    sqClientPrefDocs.ParamByName('ClientNo').AsInteger := ClientNo;
    sqClientPrefDocs.ParamByName('DocType').AsInteger := DocType;
    sqClientPrefDocs.Open;
    if not sqClientPrefDocs.Eof then
    Begin
      ReportName := sqClientPrefDocsReportName.AsString;
      NoOfCopy := sqClientPrefDocsNoOfCopy.AsInteger;
      promptUser := sqClientPrefDocspromptUser.AsInteger;
      collated := sqClientPrefDocscollated.AsInteger;
      PrinterSetup := sqClientPrefDocsPrinterSetup.AsInteger;
    End
    else
    Begin
      sqClientPrefDocs.Close;
      sqClientPrefDocs.ParamByName('ClientNo').AsInteger := 1;
      sqClientPrefDocs.ParamByName('DocType').AsInteger := DocType;
      sqClientPrefDocs.Open;
      if not sqClientPrefDocs.Eof then
      Begin
        ReportName := sqClientPrefDocsReportName.AsString;
        NoOfCopy := sqClientPrefDocsNoOfCopy.AsInteger;
        promptUser := sqClientPrefDocspromptUser.AsInteger;
        collated := sqClientPrefDocscollated.AsInteger;
        PrinterSetup := sqClientPrefDocsPrinterSetup.AsInteger;
      End;
    End;
    sqClientPrefDocs.Close;
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
End;

function TdmsContact.GetPIPNo(const LIPNo: Integer): Integer;
Begin
  sq_GetPIPNo.Close;
  sq_GetPIPNo.ParamByName('LIPNo').AsInteger := LIPNo;
  sq_GetPIPNo.Open;
  if not sq_GetPIPNo.Eof then
    Result := sq_GetPIPNoPIPNO.AsInteger
  else
    Result := -1;
  sq_GetPIPNo.Close;
End;

function TdmsContact.GetEmailAddress_Utlastad(const ClientNo: Integer): String;
Begin
  Result := '';
  sq_GetEmailAdr_Utlastad.Close;
  sq_GetEmailAdr_Utlastad.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_GetEmailAdr_Utlastad.Open;
  sq_GetEmailAdr_Utlastad.First;
  While not sq_GetEmailAdr_Utlastad.Eof do
  Begin
    Result := Trim(sq_GetEmailAdr_UtlastadEmailAddress.AsString) + ';' + Result;
    sq_GetEmailAdr_Utlastad.Next;
  End;
  sq_GetEmailAdr_Utlastad.Close;
End;

function TdmsContact.GetEmailAddress(const ClientNo: Integer): String;
Begin
  Result := '';
  sqGetEmailAdr.Close;
  sqGetEmailAdr.ParamByName('ClientNo').AsInteger := ClientNo;
  sqGetEmailAdr.Open;
  sqGetEmailAdr.First;
  While not sqGetEmailAdr.Eof do
  Begin
    Result := Trim(sqGetEmailAdrEmailAddress.AsString) + ';' + Result;
    sqGetEmailAdr.Next;
  End;
  sqGetEmailAdr.Close;
End;

function TdmsContact.GetEmailAddressForSpeditorByLO
  (const LONo: Integer): String;
Begin
  Result := '';
  sq_GetSpeditorEmail.Close;
  sq_GetSpeditorEmail.ParamByName('LONumber').AsInteger := LONo;
  sq_GetSpeditorEmail.Open;
  sq_GetSpeditorEmail.First;
  While not sq_GetSpeditorEmail.Eof do
  Begin
    Result := Trim(sq_GetSpeditorEmailEmailAddress.AsString) + ';' + Result;
    sq_GetSpeditorEmail.Next;
  End;
  sq_GetSpeditorEmail.Close;
End;

function TdmsContact.GetRoleType(const VerkNo: Integer): Integer;
begin
  if IsClientRoleType(VerkNo, 9) then
    Result := 9
  else if IsClientRoleType(VerkNo, 7) then
    Result := 7
  else
    Result := 6;
End;

function TdmsContact.GetPIPByClientNoPIPNO(const OwnerNo: Integer): Integer;
Begin
  sq_GetPIPByClientNo.ParamByName('OwnerNo').AsInteger := OwnerNo;
  sq_GetPIPByClientNo.Open;
  if not sq_GetPIPByClientNo.Eof then
    Result := sq_GetPIPByClientNoPIPNO.AsInteger
  else
    Result := -1;
  sq_GetPIPByClientNo.Close;
End;

function TdmsContact.GetSRByCompanyNo(const ClientNo: Integer): Integer;
Begin
  sq_GetSR.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_GetSR.Open;
  Try
    if not sq_GetSR.Eof then
      Result := sq_GetSRSalesRegionNo.AsInteger
    else
      Result := -1;
  Finally
    sq_GetSR.Close;
  End;
End;

Function TdmsContact.ClientInterVerk(const CompanyNo: Integer): Boolean;
Begin
  Try
    sq_IsIntVerk.ParamByName('ClientNo').AsInteger := CompanyNo;
    sq_IsIntVerk.Open;
    if not sq_IsIntVerk.Eof then
    Begin
      if sq_IsIntVerkIntVerk.AsInteger = 1 then
        Result := True
      else
        Result := False;
    End
    else
      Result := False;
  Finally
    sq_IsIntVerk.Close;
  End;
End;

procedure TdmsContact.cds_RegPointsAfterInsert(DataSet: TDataSet);
begin
  cds_RegPointsRegPointNo.AsInteger := dmsConnector.NextMaxNo
    ('RegistrationPoint');
  cds_RegPointsCreatedUser.AsInteger := ThisUser.UserID;
  cds_RegPointsModifiedUser.AsInteger := ThisUser.UserID;
  cds_RegPointsDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date);
end;

procedure TdmsContact.cds_ProductionUnitAfterInsert(DataSet: TDataSet);
begin
  cds_ProductionUnitProductionUnitNo.AsInteger :=
    dmsConnector.NextMaxNo('ProductionUnit');
  cds_ProductionUnitCreatedUser.AsInteger := ThisUser.UserID;
  cds_ProductionUnitModifiedUser.AsInteger := ThisUser.UserID;
  cds_ProductionUnitDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date);
  cds_ProductionUnitClientNo.AsInteger := fClientNo;
  cds_ProductionUnitOnSticks.AsInteger := 0;
end;

Function TdmsContact.GetMaxLIPNoOfPIPNo(const PIPNo: Integer): Integer;
Begin
  Try
    sq_GetMaxLIPNoOfPIPNo.ParamByName('PIPNo').AsInteger := PIPNo;
    sq_GetMaxLIPNoOfPIPNo.Active := True;
    if not sq_GetMaxLIPNoOfPIPNo.Eof then
      Result := sq_GetMaxLIPNoOfPIPNoLIPNO.AsInteger
    else
      Result := -1;
  Finally
    sq_GetMaxLIPNoOfPIPNo.Active := False;
  End;
End;

procedure TdmsContact.cds_AdrSearchAfterInsert(DataSet: TDataSet);
begin
  cds_AdrSearchAddressNo.AsInteger := dmsConnector.NextMaxNo('Address');
  cds_AdrSearchModifiedUser.AsInteger := ThisUser.UserID;
  cds_AdrSearchCreatedUser.AsInteger := ThisUser.UserID;
  cds_AdrSearchDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date);
  cds_AdrSearchAddressType.AsInteger := 1;
  // AddressType är bara intressant i companyAddress ;
end;

procedure TdmsContact.cds_AdrSearchBeforePost(DataSet: TDataSet);
begin
  if cds_AdrSearchAddressName.IsNull then
  Begin
    ShowMessage('Adressnamn saknas');
    Abort;
  End;

  if cds_AdrSearchCityNo.IsNull then
  Begin
    ShowMessage('Ort saknas');
    Abort;
  End;

  if cds_AdrSearchCountryNo.IsNull then
  Begin
    ShowMessage('Land saknas');
    Abort;
  End;

  if FinnsAddressName(cds_AdrSearchAddressNo.AsInteger,
    cds_AdrSearchAddressName.AsString) = True then
  Begin
    ShowMessage('Varning, adressnamnet är taget');
    // Abort ;
  End;
end;

procedure TdmsContact.cds_Comp_DelAdrAfterInsert(DataSet: TDataSet);
begin
  cds_Comp_DelAdrAddressNo.AsInteger := -1;
  cds_Comp_DelAdrAddressType.AsInteger := 2; // AddressType ;
  cds_Comp_DelAdrClientNo.AsInteger := 1; // cdsClientClientNo.AsInteger ;
  cds_Comp_DelAdrModifiedUser.AsInteger := ThisUser.UserID;
  cds_Comp_DelAdrCreatedUser.AsInteger := ThisUser.UserID;
  cds_Comp_DelAdrDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date);
end;

function TdmsContact.FinnsAddressName(const AddressNo: Integer;
  const AddressName: String): Boolean;
Begin
  sq_AdrName.ParamByName('AddressName').AsString := AddressName;
  sq_AdrName.ParamByName('AddressNo').AsInteger := AddressNo;
  sq_AdrName.Open;
  if not sq_AdrName.Eof then
    Result := True
  else
    Result := False;
  sq_AdrName.Close;
End;

procedure TdmsContact.cds_CompAdrAfterInsert(DataSet: TDataSet);
begin
  cds_CompAdrAddressNo.AsInteger        := -1;
  cds_CompAdrAddressType.AsInteger      := 1; // AddressType ;
  cds_CompAdrClientNo.AsInteger         := 1; // cdsClientClientNo.AsInteger ;
  cds_CompAdrModifiedUser.AsInteger     := ThisUser.UserID;
  cds_CompAdrCreatedUser.AsInteger      := ThisUser.UserID;
  cds_CompAdrDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Date);
end;

procedure TdmsContact.Refresh_sp_AttLev(const RoleType: Integer);
Begin
  sp_AttLev.Active := False;
  sp_AttLev.ParamByName('@RoleType').AsInteger := RoleType;
  sp_AttLev.Active := True;
End;

function TdmsContact.GetLocalSupplierNo(const LoadingLocationNo
  : Integer): Integer;
Begin
  sp_GetLegoOfLL.ParamByName('@LLNo').AsInteger := LoadingLocationNo;
  sp_GetLegoOfLL.Active := True;
  Try
    if not sp_GetLegoOfLL.Eof then
      Result := sp_GetLegoOfLL.FieldByName('ClientNo').AsInteger
    else
      Result := ThisUser.CompanyNo ;
  Finally
    sp_GetLegoOfLL.Active := False;
  End;
End;

end.
