unit dmcAvrakning;

interface

uses
  SysUtils, Classes, FMTBcd, DB,
  kbmMemTable, SqlTimSt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client ;


type
  Tdm_Avrakning = class(TDataModule)
    dsrcArrivingLoads: TDataSource;
    dsrcArrivingPackages: TDataSource;
    dsPaymentHead: TDataSource;
    dsPaymentLoadList: TDataSource;
    dsKP_List: TDataSource;
    dsPayHead: TDataSource;
    dsPaymentLoadListII: TDataSource;
    mtLoadNos: TkbmMemTable;
    mtLoadNosLoadNo: TIntegerField;
    mtLoadNosPaymentNo: TIntegerField;
    mtLoadNosPaymentType: TIntegerField;
    mtLoadNosSupplierNo: TIntegerField;
    cdsPaymentLoadList: TFDQuery;
    cdsArrivingLoads: TFDQuery;
    cdsArrivingLoadsINVPOINTNO: TIntegerField;
    cdsArrivingLoadsINVPOINTNAME: TStringField;
    cdsArrivingLoadsINITIALS: TStringField;
    cdsArrivingLoadsVIS_FS: TIntegerField;
    cdsArrivingLoadsMILL_FS: TStringField;
    cdsArrivingLoadsLOAD_DATE: TSQLTimeStampField;
    cdsArrivingLoadsSUPPCODE: TStringField;
    cdsArrivingLoadsINT_CUSTOMER: TStringField;
    cdsArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsArrivingLoadsSUPPLIER_NO: TIntegerField;
    cdsArrivingLoadsSKATTE_UPPLAG: TIntegerField;
    cdsArrivingLoadsPRISOK: TIntegerField;
    cdsArrivingLoadsKrediterad: TIntegerField;
    cdsArrivingPackages: TFDQuery;
    cdsArrivingPackagesSSP_SupplierNo: TIntegerField;
    cdsArrivingPackagesLO: TIntegerField;
    cdsArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsArrivingPackagesSUPPLIERCODE: TStringField;
    cdsArrivingPackagesM3_NET: TFloatField;
    cdsArrivingPackagesM3_NOM: TFloatField;
    cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsArrivingPackagesPCS: TIntegerField;
    cdsArrivingPackagesPACKAGEOK: TIntegerField;
    cdsArrivingPackagesPACKAGE_LOG: TStringField;
    cdsArrivingPackagesLSPLOADNO: TIntegerField;
    cdsArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsArrivingPackagesSubSum: TFloatField;
    cdsArrivingPackagesPRICE: TFloatField;
    cdsArrivingPackagesOldPrice: TFloatField;
    cdsArrivingPackagesNOM_LINEAL_METER: TFloatField;
    cdsArrivingPackagesEND_CUSTOMER: TStringField;
    cdsArrivingPackagesPTDProductLengthNo: TIntegerField;
    cdsArrivingPackagesNLMM: TFloatField;
    cdsArrivingPackagesALMM: TFloatField;
    cdsArrivingPackagesLoadNo: TIntegerField;
    cdsArrivingPackagesLoadDetailNo: TIntegerField;
    cdsArrivingPackagesProductLengthNo: TIntegerField;
    cdsArrivingPackagesPaymentNo: TIntegerField;
    cdsArrivingPackagesPaymentType: TIntegerField;
    cdsArrivingPackagesSupplierNo: TIntegerField;
    cdsPaymentLoads: TFDQuery;
    cdsPaymentLoadsPaymentNo: TIntegerField;
    cdsPaymentLoadsLoadNo: TIntegerField;
    cdsPaymentLoadsTypeOf: TIntegerField;
    cdsPaymentLoadsCreditToPaymentNo: TIntegerField;
    cdsPaymentLoadsPaymentType: TIntegerField;
    cdsPayHead: TFDQuery;
    cdsPayHeadPaymentNo: TIntegerField;
    cdsPayHeadSenderStatus: TIntegerField;
    cdsPayHeadReceiverStatus: TIntegerField;
    cdsPayHeadCreatedUser: TIntegerField;
    cdsPayHeadModifiedUser: TIntegerField;
    cdsPayHeadDateCreated: TSQLTimeStampField;
    cdsPayHeadTypeOf: TIntegerField;
    cdsPayHeadSupplierNo: TIntegerField;
    cdsPayHeadCustomerNo: TIntegerField;
    cdsPayHeadMILL_InvoiceNo: TStringField;
    cdsPayHeadNotering: TStringField;
    cdsPayHeadPaymentType: TIntegerField;
    cds_ConfLoad: TFDQuery;
    sq_priceOK: TFDQuery;
    sq_priceOKPrice: TFloatField;
    cdsPaymentHead: TFDQuery;
    cdsPaymentHeadPaymentNo: TIntegerField;
    cdsPaymentHeadMILL_InvoiceNo: TStringField;
    cdsPaymentHeadDateCreated: TSQLTimeStampField;
    cdsPaymentHeadSenderStatus: TIntegerField;
    cdsPaymentHeadReceiverStatus: TIntegerField;
    cdsPaymentHeadModifiedUser: TIntegerField;
    cdsPaymentHeadTypeOf: TIntegerField;
    cdsPaymentHeadSupplierNo: TIntegerField;
    cdsPaymentHeadCreatedUser: TIntegerField;
    cdsPaymentHeadCustomerNo: TIntegerField;
    cdsPaymentHeadNotering: TStringField;
    cdsPaymentHeadPaymentType: TIntegerField;
    cdsPaymentHeadLeverantr: TStringField;
    sq_GetNewLIPno: TFDQuery;
    sq_GetNewLIPnoNew_LogicalInventoryPointNo: TIntegerField;
    cdsPaymentLoadListII: TFDQuery;
    cdsPaymentLoadListIILO: TIntegerField;
    cdsPaymentLoadListIIAttesterad: TIntegerField;
    cdsPaymentLoadListIIObjecttype: TIntegerField;
    cdsPaymentLoadListIIAVRAKNING_NO: TIntegerField;
    cdsPaymentLoadListIIVIS_FS: TIntegerField;
    cdsPaymentLoadListIILOAD_DATE: TSQLTimeStampField;
    cdsPaymentLoadListIIACT_M3: TFloatField;
    cdsPaymentLoadListIINOM_M3: TFloatField;
    cdsPaymentLoadListIIVALUE: TFloatField;
    cdsPaymentLoadListIINOM_LPM: TFloatField;
    cdsPaymentLoadListIIPRICE: TFloatField;
    cdsPaymentLoadListIIPris1: TFloatField;
    cdsPaymentLoadListIIAKT_THICK: TFloatField;
    cdsPaymentLoadListIIAKT_WIDTH: TFloatField;
    cdsPaymentLoadListIINOM_THICK: TFloatField;
    cdsPaymentLoadListIINOM_WIDTH: TFloatField;
    cdsPaymentLoadListIINLMM: TFloatField;
    cdsPaymentLoadListIIALMM: TFloatField;
    cdsPaymentLoadListIIMOMS_VALUE: TFloatField;
    cdsPaymentLoadListIIGRADENAME: TStringField;
    cdsPaymentLoadListIISuppCode: TStringField;
    cdsPaymentLoadListIIProductNo: TIntegerField;
    cdsPaymentLoadListIIPaymentType: TIntegerField;
    cdsPaymentLoadListIICreditToPaymentNo: TIntegerField;
    sq_Upd_CreditToPaymentNo: TFDQuery;
    sq_UpdCredInLoadDtlVal: TFDQuery;
    sq_SSP_Exist: TFDQuery;
    sq_SSP_ExistSupplierShipPlanObjectNo: TIntegerField;
    cds_Update_SSP: TFDQuery;
    cds_Update_SSPCustomerNo: TIntegerField;
    cds_Update_SSPLoadNo: TIntegerField;
    cds_Update_SSPSupplierShipPlanObjectNo: TIntegerField;
    cds_Update_SSPSupplierNo: TIntegerField;
    cds_Update_SSPShippingPlanNo: TIntegerField;
    cds_Update_SSPObjectType: TIntegerField;
    cds_Update_SSPLoadingLocationNo: TIntegerField;
    cds_Update_SSPShipToInvPointNo: TIntegerField;
    cds_Update_SSPProductNo: TIntegerField;
    cds_Update_SSPProductLengthNo: TIntegerField;
    cds_Update_SSPModifiedUser: TIntegerField;
    cds_SSP: TFDQuery;
    cds_SSPSupplierShipPlanObjectNo: TIntegerField;
    cds_SSPCustShipPlanDetailObjectNo: TIntegerField;
    cds_SSPShipType: TIntegerField;
    cds_SSPObjectType: TIntegerField;
    cds_SSPOrderNo: TIntegerField;
    cds_SSPOrderLineNo: TIntegerField;
    cds_SSPShippingPlanNo: TIntegerField;
    cds_SSPSupplierNo: TIntegerField;
    cds_SSPLoadingLocationNo: TIntegerField;
    cds_SSPDeliveryTermsNo: TIntegerField;
    cds_SSPPaymentTermsNo: TIntegerField;
    cds_SSPPrice: TFloatField;
    cds_SSPCurrencyNo: TIntegerField;
    cds_SSPNoOfUnits: TFloatField;
    cds_SSPPriceUnitNo: TIntegerField;
    cds_SSPVolumeUnitNo: TIntegerField;
    cds_SSPDestinationNo: TIntegerField;
    cds_SSPShippingPlanStatus: TIntegerField;
    cds_SSPStartETDYearWeek: TIntegerField;
    cds_SSPEndETDYearWeek: TIntegerField;
    cds_SSPInternalNote: TStringField;
    cds_SSPProductDescription: TStringField;
    cds_SSPLengthDescription: TStringField;
    cds_SSPAcceptedBySupplier: TIntegerField;
    cds_SSPProductLengthNo: TIntegerField;
    cds_SSPProductGroupNo: TIntegerField;
    cds_SSPActualM3Net: TFloatField;
    cds_SSPShipToInvPointNo: TIntegerField;
    cds_SSPProductNo: TIntegerField;
    cds_SSPLOText: TMemoField;
    cds_SSPMinActualLengthMM: TFloatField;
    cds_SSPMaxActualLengthMM: TFloatField;
    cds_SSPPackageCode: TStringField;
    cds_SSPFreightOrderByClientNo: TIntegerField;
    cds_SSPSequenceNo: TIntegerField;
    cds_SSPCreatedUser: TIntegerField;
    cds_SSPModifiedUser: TIntegerField;
    cds_SSPDateCreated: TSQLTimeStampField;
    cds_SSPPartnerNo: TIntegerField;
    cds_SSPProdInstructNo: TIntegerField;
    cds_SSPShowInGrid: TIntegerField;
    cds_SSPPcsPerPkg: TIntegerField;
    cds_SSPCustomerNo: TIntegerField;
    cds_SSPCustomerPrice: TFloatField;
    cds_SSPCustomerShowInGrid: TIntegerField;
    cds_SSPLO_No: TIntegerField;
    cds_SSPDelivery_WeekNo: TIntegerField;
    cds_SSPDateModified: TSQLTimeStampField;
    cds_SSPLengthTyp: TStringField;
    cds_SSPReference: TStringField;
    cds_SSPLIPNo: TIntegerField;
    cds_SSPPkgCodePPNo: TIntegerField;
    cds_SSPPriceListNo: TIntegerField;
    cds_SSPInternKundFrakt: TFloatField;
    cds_SSPPackageWidth: TIntegerField;
    cds_SSPPackageHeight: TIntegerField;
    cds_SSPLengthSpec: TStringField;
    cds_LS: TFDQuery;
    cds_LSLoadNo: TIntegerField;
    cds_LSShippingPlanNo: TIntegerField;
    cds_LoadDetail: TFDQuery;
    cds_LoadDetailLoadDetailNo: TIntegerField;
    cds_LoadDetailLoadNo: TIntegerField;
    cds_LoadDetailShippingPlanNo: TIntegerField;
    cds_LoadDetailPackageNo: TIntegerField;
    cds_LoadDetailNoOfPackages: TIntegerField;
    cds_LoadDetailPackageTypeNo: TIntegerField;
    cds_LoadDetailSupplierCode: TStringField;
    cds_LoadDetailPackageOK: TIntegerField;
    cds_LoadDetailProblemPackageLog: TStringField;
    cds_LoadDetailCreatedUser: TIntegerField;
    cds_LoadDetailModifiedUser: TIntegerField;
    cds_LoadDetailDateCreated: TSQLTimeStampField;
    cds_LoadDetailDefaultCustShipObjectNo: TIntegerField;
    cds_LoadDetailOverrideMatch: TIntegerField;
    cds_LoadDetailLIPNo: TIntegerField;
    cds_LoadDetailDefsspno: TIntegerField;
    cds_LoadDetailOverrideRL: TIntegerField;
    cds_LoadDetailOldPackageTypeNo: TIntegerField;
    cdsLastAvr: TFDQuery;
    cdsLastAvrPaymentNo: TIntegerField;
    cdsLastAvrLoadNo: TIntegerField;
    cds_IntOrderHead: TFDQuery;
    cds_IntOrderHeadOrderNo: TIntegerField;
    cds_IntOrderHeadShippingPlanNo: TIntegerField;
    cds_IntOrderHeadCustomerNo: TIntegerField;
    cds_IntOrderHeadDestinationNo: TIntegerField;
    cds_IntOrderHeadDefaultShipToInvPointNo: TIntegerField;
    cds_IntOrderHeadStatus: TIntegerField;
    cds_IntOrderHeadOrderNoText: TStringField;
    cds_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField;
    cds_IntOrderHeadDefaultPaymentTermsNo: TIntegerField;
    cds_IntOrderHeadDefaultCurrencyNo: TIntegerField;
    cds_IntOrderHeadOrderNote: TMemoField;
    cds_IntOrderHeadOrderType: TIntegerField;
    cds_IntOrderHeadProductDisplayFormat: TIntegerField;
    cds_IntOrderHeadDefaultVolumeUnitNo: TIntegerField;
    cds_IntOrderHeadVoyageNo: TIntegerField;
    cds_IntOrderHeadDefaultPriceUnitNo: TIntegerField;
    cds_IntOrderHeadDef_StartETDYearWeek: TIntegerField;
    cds_IntOrderHeadDef_StartETAYearWeek: TIntegerField;
    cds_IntOrderHeadSalesRegionNo: TIntegerField;
    cds_IntOrderHeadLengthFormat: TIntegerField;
    cds_IntOrderHeadLanguageCode: TIntegerField;
    cds_IntOrderHeadSequenceNo: TIntegerField;
    cds_IntOrderHeadCreatedUser: TIntegerField;
    cds_IntOrderHeadModifiedUser: TIntegerField;
    cds_IntOrderHeadDateCreated: TSQLTimeStampField;
    cds_IntOrderHeadLO_No: TIntegerField;
    cds_IntOrderHeadDefaultLIPNo: TIntegerField;
    cds_IntOrderHeadMarketRegionNo: TIntegerField;
    cds_IntOrderHeadPriceListNo: TIntegerField;
    cds_IntOrderHeadVatExempt: TIntegerField;
    cds_IntOrderHeadInternKundFrakt: TFloatField;
    cds_IntOrderHeadSupplierNo: TIntegerField;
    cds_IntOrderHeadDef_LoadingLocationNo: TIntegerField;
    cds_IntOrderHeadAutoPkgCode: TIntegerField;
    cds_IntOrderHeadMiniText: TStringField;
    cds_IntOrderHeadMiniTextFS: TIntegerField;
    cds_IntOrderHeadMiniTextLO: TIntegerField;
    sq_DelConPkgLog: TFDQuery;
    sq_ChangeLOnrInPaymentLoad: TFDQuery;
    cds_Pkgs: TFDQuery;
    cds_PkgsLogicalInventoryPointNo: TIntegerField;
    cds_PkgsPackageNo: TIntegerField;
    cds_PkgsSupplierCode: TStringField;
    sq_LO_Type: TFDQuery;
    sq_LO_TypeObjectType: TIntegerField;
    sq_LO_TypeOrderType: TIntegerField;
    sq_LoadPackages: TFDQuery;
    sq_LoadPackagesLogicalInventoryPointNo: TIntegerField;
    sq_LoadPackagesPackageNo: TIntegerField;
    sq_LoadPackagesSupplierCode: TStringField;
    sq_NoOfLoads_LO: TFDQuery;
    sq_NoOfLoads_LONoOfLoads: TIntegerField;
    cds_LoadRemAvr: TFDQuery;
    cds_LoadRemAvrLoadNo: TIntegerField;
    cds_LoadRemAvrDateCreated: TSQLTimeStampField;
    cds_LoadRemAvrCreatedUser: TSmallintField;
    cds_LoadHead: TFDQuery;
    cds_LoadHeadLoadNo: TIntegerField;
    cds_LoadHeadSupplierNo: TIntegerField;
    cds_LoadHeadLoadedDate: TSQLTimeStampField;
    cds_LoadHeadSenderLoadStatus: TIntegerField;
    cds_LoadHeadLoadID: TStringField;
    cds_LoadHeadMsgToShipper: TMemoField;
    cds_LoadHeadInternalNote: TMemoField;
    cds_LoadHeadPackageEntryOption: TIntegerField;
    cds_LoadHeadLocalShippingCompanyNo: TIntegerField;
    cds_LoadHeadLocalLoadingLocation: TIntegerField;
    cds_LoadHeadLocalDestinationNo: TIntegerField;
    cds_LoadHeadCreatedUser: TIntegerField;
    cds_LoadHeadModifiedUser: TIntegerField;
    cds_LoadHeadDateCreated: TSQLTimeStampField;
    cds_LoadHeadFS: TStringField;
    cds_LoadHeadOriginalSupplierNo: TIntegerField;
    cds_LoadHeadCustomerNo: TIntegerField;
    cds_LoadHeadNotering: TMemoField;
    cds_LoadHeadLoadOK: TIntegerField;
    cds_LoadHeadLoadAR: TIntegerField;
    cds_LoadHeadShippingPlanNo: TIntegerField;
    sq_UpdateLoadDtlVal: TFDQuery;
    sq_InsLoadDtlVal: TFDQuery;
    sq_UpdLoadDtlValSingleLoad: TFDQuery;
    sq_DelLastAvr: TFDQuery;
    sq_IsLoadCredited: TFDQuery;
    sq_IsLoadCreditedPaymentNo: TIntegerField;
    sq_SummaryLoadDetails: TFDQuery;
    sq_SummaryLoadDetailsAKT_THICK: TFloatField;
    sq_SummaryLoadDetailsAKT_WIDTH: TFloatField;
    sq_SummaryLoadDetailsACT_M3: TFMTBCDField;
    sq_SummaryLoadDetailsNOM_LPM: TFMTBCDField;
    sq_SummaryLoadDetailsNOM_THICK: TFloatField;
    sq_SummaryLoadDetailsNOM_WIDTH: TFloatField;
    sq_SummaryLoadDetailsNOM_M3: TFMTBCDField;
    sq_SummaryLoadDetailsLOADNO: TIntegerField;
    sq_SummaryLoadDetailsPRICE: TFloatField;
    sq_SummaryLoadDetailsLO: TIntegerField;
    sq_SummaryLoadDetailsGRADENAME: TStringField;
    sq_INS_PaymentLoad_ST: TFDQuery;
    sq_FindAvr: TFDQuery;
    sq_FindAvrAVRAKNING_NO: TIntegerField;
    sq_FindAvrVerk: TStringField;
    sq_FindAvrVerkNo: TIntegerField;
    cdsConfirmed_Load: TFDQuery;
    cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField;
    cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadNewLoadNo: TIntegerField;
    cdsConfirmed_LoadNewShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadDateCreated: TSQLTimeStampField;
    cdsConfirmed_LoadCreatedUser: TIntegerField;
    cdsConfirmed_LoadModifiedUser: TIntegerField;
    cdsPaymentLoadListAVRAKNING_NO: TIntegerField;
    cdsPaymentLoadListINITIALS: TStringField;
    cdsPaymentLoadListVIS_FS: TIntegerField;
    cdsPaymentLoadListMILL_FS: TStringField;
    cdsPaymentLoadListLOAD_DATE: TSQLTimeStampField;
    cdsPaymentLoadListCUSTOMER: TStringField;
    cdsPaymentLoadListACT_M3: TFloatField;
    cdsPaymentLoadListNOM_M3: TFloatField;
    cdsPaymentLoadListVALUE: TFloatField;
    cdsPaymentLoadListNOM_LPM: TFloatField;
    cdsPaymentLoadListPRICE: TFloatField;
    cdsPaymentLoadListAKT_THICK: TFloatField;
    cdsPaymentLoadListAKT_WIDTH: TFloatField;
    cdsPaymentLoadListNOM_THICK: TFloatField;
    cdsPaymentLoadListNOM_WIDTH: TFloatField;
    cdsPaymentLoadListNLMM: TFloatField;
    cdsPaymentLoadListMOMS_VALUE: TFloatField;
    cdsPaymentLoadListSUPPCODE: TStringField;
    cdsPaymentLoadListCUSTOMER_1: TStringField;
    cdsPaymentLoadListCUSTOMERNO: TIntegerField;
    cdsPaymentLoadListCountryNo: TIntegerField;
    cdsPaymentLoadListGRADENAME: TStringField;
    cdsPaymentLoadListMILL_INVOICE_NO: TStringField;
    cdsKP_List: TFDStoredProc;
    cdsPaymentHeadCustName: TStringField;
    cdsPaymentLoadListIIAR_AV: TStringField;
    procedure dsrcArrivingLoadsDataChange(Sender: TObject; Field: TField);
    procedure dsPaymentHeadDataChange(Sender: TObject; Field: TField);
    procedure dsp_SSPGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_PkgsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dspArrivingPackagesGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsArrivingPackages1PRICEChange(Sender: TField);
    procedure dspPaymentHeadGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cdsPaymentHeadBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista : Integer ;
    AngraAvrakning : Boolean ;
    procedure Refresh_ArrivingLoads ;
    procedure ChangeLOno_In_PaymentLoad(const fLoadNo, Old_LO_No, New_LO_No : Integer) ;
    Function  GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
    Function  priceOk(const LoadNo, SupplierNo : Integer) : Boolean ;
    procedure Upd_CreditToPaymentNo(const PaymentNo, LoadNo : Integer) ;
  end;

var
  dm_Avrakning: Tdm_Avrakning;

implementation

Uses recerror, dmsDataConn, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}

procedure Tdm_Avrakning.dsrcArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
 Refresh_ArrivingLoads ;
end;

procedure Tdm_Avrakning.Refresh_ArrivingLoads ;
begin
 if (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) then
 Begin
  cdsArrivingPackages.Active:= False ;
  cdsArrivingPackages.ParamByName('LoadNo').AsInteger  := cdsArrivingLoadsVIS_FS.AsInteger ;
  cdsArrivingPackages.Active:= True ;
 End ;
end;


procedure Tdm_Avrakning.dsPaymentHeadDataChange(Sender: TObject;
  Field: TField);
begin
{ cdsPaymentLoadList.Active:= False ;
 sq_PaymentLoadList.ParamByName('PaymentNo').AsInteger:= cdsPaymentHeadPaymentNo.AsInteger ;
 cdsPaymentLoadList.Active:= True ; }
end;

procedure Tdm_Avrakning.dsp_SSPGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SupplierShippingPlan' ;
end;

procedure Tdm_Avrakning.dsp_PkgsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'PackageNumber' ;
end;

procedure Tdm_Avrakning.ChangeLOno_In_PaymentLoad(const fLoadNo, Old_LO_No, New_LO_No : Integer) ;
Begin
 Try
 sq_ChangeLOnrInPaymentLoad.ParamByName('LoadNo').AsInteger:= fLoadNo ;
 sq_ChangeLOnrInPaymentLoad.ParamByName('OldLo').AsInteger:= Old_LO_No ;
 sq_ChangeLOnrInPaymentLoad.ParamByName('NewLo').AsInteger:= New_LO_No ;
 sq_ChangeLOnrInPaymentLoad.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

Function Tdm_Avrakning.GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
Begin
 sq_FindAvr.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindAvr.Open ;
  Result:= sq_FindAvrAVRAKNING_NO.AsInteger ;
  Verk := sq_FindAvrVERK.AsString ;
  VerkNo := sq_FindAvrVerkNo.asInteger ;
 Finally
  sq_FindAvr.Close ;
 End ;
End ;

procedure Tdm_Avrakning.dspArrivingPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadDtlVal' ;
end;

procedure Tdm_Avrakning.cdsArrivingPackages1PRICEChange(Sender: TField);
begin
 cdsArrivingPackagesSubSum.AsFloat:= cdsArrivingPackagesPRICE.AsFloat * cdsArrivingPackagesM3_NOM.AsFloat ;
end;

Function Tdm_Avrakning.priceOk(const LoadNo, SupplierNo : Integer) : Boolean ;
Begin
 sq_priceOk.ParamByName('LoadNo').AsInteger     := LoadNo ;
 sq_priceOk.ParamByName('SupplierNo').AsInteger := SupplierNo ;
 sq_priceOk.Open ;
 if not sq_priceOk.Eof then
  Result:= False
   else
    Result:= True ;
 sq_priceOk.Close ;
End ;

procedure Tdm_Avrakning.Upd_CreditToPaymentNo(const PaymentNo, LoadNo : Integer) ;
Begin
 Try
 sq_Upd_CreditToPaymentNo.ParamByName('PaymentNo').AsInteger  := PaymentNo ;
 sq_Upd_CreditToPaymentNo.ParamByName('LoadNo').AsInteger     := LoadNo ;
 sq_Upd_CreditToPaymentNo.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure Tdm_Avrakning.dspPaymentHeadGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'LastAvrHdr' ;
end;

procedure Tdm_Avrakning.cdsPaymentHeadBeforePost(DataSet: TDataSet);
begin
 if (Length(Trim(cdsPaymentHeadMILL_InvoiceNo.AsString)) > 0) and
 (cdsPaymentHeadSenderStatus.AsInteger < 3) then
  cdsPaymentHeadSenderStatus.AsInteger:= 2 ;

 if (cdsPaymentHeadSenderStatus.OldValue <> 2) and (cdsPaymentHeadSenderStatus.NewValue = 2) then
 cdsPaymentHeadDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(now) ;
end;

end.

