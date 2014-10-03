unit dmcLoadEntrySSPTemp;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable, SqlTimSt, Dialogs,
  VidaType , Controls, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Variants ;

type
 TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    Var ProductLengthNo : Integer;
    Var NoOfLengths : Integer
    ) of object;

  TdmLoadEntrySSPTemp = class(TDataModule)
    ds_LoadHead: TDataSource;
    dsrcPkgsByInvOwner: TDataSource;
    ds_LO_LookUp: TDataSource;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupplierCode: TStringField;
    mtPkgNosproductno: TIntegerField;
    mtPkgNosproductlengthno: TIntegerField;
    ds_LoadPackages2: TDataSource;
    dsLORows: TDataSource;
    ds_LSP: TDataSource;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLONo: TIntegerField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesChanged: TBooleanField;
    mtLoadPackagesSupplierShipPlanObjectNo: TIntegerField;
    mtLoadPackagesCustcdsNo: TIntegerField;
    cds_LoadHead: TFDQuery;
    cds_LSP: TFDQuery;
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
    cds_LSPShipping: TIntegerField;
    cds_LSPLoadNo: TIntegerField;
    cds_LSPLoadingLocationNo: TIntegerField;
    cds_LSPShipToInvPointNo: TIntegerField;
    cds_LSPSupplierNo: TIntegerField;
    cds_LSPShippingPlanNo: TIntegerField;
    cds_LSPCUSTOMER: TStringField;
    cds_LSPSHIPPER: TStringField;
    cds_LSPREADYDATE: TStringField;
    cds_LSPVESSEL: TStringField;
    cds_LSPETD: TSQLTimeStampField;
    cds_LSPETA: TSQLTimeStampField;
    cds_LSPSHIPPER_REF: TStringField;
    cds_LSPSHIPPERID: TStringField;
    cds_LSPSHIPPERS_SHIPDATE: TSQLTimeStampField;
    cds_LSPSHIPPERS_SHIPTIME: TSQLTimeStampField;
    cds_LSPORDERNO: TStringField;
    cds_LSPORDERTYPE: TStringField;
    cds_LSPCreatedUser: TIntegerField;
    cds_LSPModifiedUser: TIntegerField;
    cds_LSPDateCreated: TSQLTimeStampField;
    cds_LSPCustomerNo: TIntegerField;
    cds_LSPSUPPLIER: TStringField;
    cds_LSPLOC_CUST: TStringField;
    cds_LSPObjectType: TIntegerField;
    cds_LSPAvrop_CustomerNo: TIntegerField;
    cds_LSPLOADING_LOCATION: TStringField;
    cds_LSPSHIP_TO: TStringField;
    cds_LSPFunction: TIntegerField;
    cds_LSPLIPNo: TIntegerField;
    cds_LSPPIPNo: TIntegerField;
    cdsLORows: TFDQuery;
    cdsLORowsLoadNo: TIntegerField;
    cdsLORowsShippingPlanNo: TIntegerField;
    cdsLORowsLoadingLocationNo: TIntegerField;
    cdsLORowsShipToInvPointNo: TIntegerField;
    cdsLORowsCustomerNo: TIntegerField;
    cdsLORowsCustShipPlanDetailObjectNo: TIntegerField;
    cdsLORowsPKGCODE: TStringField;
    cdsLORowsProductNo: TIntegerField;
    cdsLORowsINTERNPRODDESC: TStringField;
    cdsLORowsLENGTHDESC: TStringField;
    cdsLORowsNOOFUNITS: TFloatField;
    cdsLORowsVOLUNIT: TStringField;
    cdsLORowsPRICE: TFloatField;
    cdsLORowsPRICEUNIT: TStringField;
    cdsLORowsMIN_LENGTH: TFloatField;
    cdsLORowsMAX_LENGTH: TFloatField;
    cdsLORowsACT_THICK: TFloatField;
    cdsLORowsACT_WIDTH: TFloatField;
    cdsLORowsACT_LENGTH: TFloatField;
    cdsLORowsREFERENCE: TStringField;
    cdsLORowsProductLengthNo: TIntegerField;
    cdsLORowsLEV_PERIOD_START: TIntegerField;
    cdsLORowsLEV_PERIOD_END: TIntegerField;
    cdsLORowsORDERNO: TStringField;
    cdsLORowsKR_Ref: TStringField;
    cdsLORowsPCSPERPKG: TIntegerField;
    cdsLORowsPRODUCTGROUPNO: TIntegerField;
    cdsLORowsPRODUCTDESCRIPTION: TStringField;
    cdsLORowsNOM_THICK: TFloatField;
    cdsLORowsNOM_WIDTH: TFloatField;
    cdsLORowsSupplierShipPlanObjectNo: TIntegerField;
    cdsLORowsProductLengthGroupNo: TIntegerField;
    cdsLORowsINCH_THICK: TStringField;
    cdsLORowsINVCH_WIDTH: TStringField;
    cdsLORowsSurfacingNo: TIntegerField;
    cdsLORowsSpeciesNo: TIntegerField;
    cdsLORowsGradeNo: TIntegerField;
    cdsLORowsPackageTypeNo: TIntegerField;
    cdsLORowsMATCH: TIntegerField;
    cdsLORowsPriceListName: TStringField;
    cdsLORowsProductCategoryNo: TIntegerField;
    cdsLORowsOverrideRL: TIntegerField;
    sq_GetLO_Records: TFDQuery;
    sq_GetLO_RecordsCustomerNo: TIntegerField;
    sq_GetLO_RecordsCustShipPlanDetailObjectNo: TIntegerField;
    sq_GetLO_RecordsLO_NUMBER: TIntegerField;
    sq_GetLO_RecordsPKGCODE: TStringField;
    sq_GetLO_RecordsProductNo: TIntegerField;
    sq_GetLO_RecordsINTERNPRODDESC: TStringField;
    sq_GetLO_RecordsLENGTHDESC: TStringField;
    sq_GetLO_RecordsNOOFUNITS: TFloatField;
    sq_GetLO_RecordsVOLUNIT: TStringField;
    sq_GetLO_RecordsPRICE: TFloatField;
    sq_GetLO_RecordsPRICEUNIT: TStringField;
    sq_GetLO_RecordsMIN_LENGTH: TFloatField;
    sq_GetLO_RecordsMAX_LENGTH: TFloatField;
    sq_GetLO_RecordsACT_THICK: TFloatField;
    sq_GetLO_RecordsACT_WIDTH: TFloatField;
    sq_GetLO_RecordsACT_LENGTH: TFloatField;
    sq_GetLO_RecordsREFERENCE: TStringField;
    sq_GetLO_RecordsProductLengthNo: TIntegerField;
    sq_GetLO_RecordsLEV_PERIOD_START: TIntegerField;
    sq_GetLO_RecordsLEV_PERIOD_END: TIntegerField;
    sq_GetLO_RecordsORDERNO: TStringField;
    sq_GetLO_RecordsKR_Ref: TStringField;
    sq_GetLO_RecordsPCSPERPKG: TIntegerField;
    sq_GetLO_RecordsPRODUCTGROUPNO: TIntegerField;
    sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField;
    sq_GetLO_RecordsNOM_THICK: TFloatField;
    sq_GetLO_RecordsNOM_WIDTH: TFloatField;
    sq_GetLO_RecordsSupplierShipPlanObjectNo: TIntegerField;
    sq_GetLO_RecordsProductLengthGroupNo: TIntegerField;
    sq_GetLO_RecordsINCH_THICK: TStringField;
    sq_GetLO_RecordsINVCH_WIDTH: TStringField;
    sq_GetLO_RecordsSurfacingNo: TIntegerField;
    sq_GetLO_RecordsSpeciesNo: TIntegerField;
    sq_GetLO_RecordsMainGradeNo: TIntegerField;
    sq_GetLO_RecordsPackageTypeNo: TIntegerField;
    sq_GetLO_RecordsLoadingLocationNo: TIntegerField;
    sq_GetLO_RecordsShipToInvPointNo: TIntegerField;
    sq_GetLO_RecordsOverrideRL: TIntegerField;
    sq_GetLO_RecordsProductCategoryNo: TIntegerField;
    cds_LoadPackages: TFDQuery;
    cds_LoadPackagesLoadNo: TIntegerField;
    cds_LoadPackagesShippingPlanNo: TIntegerField;
    cds_LoadPackagesPRODUCT: TStringField;
    cds_LoadPackagesLoadDetailNo: TIntegerField;
    cds_LoadPackagesPACKAGENO: TIntegerField;
    cds_LoadPackagesNoOfPackages: TIntegerField;
    cds_LoadPackagesPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesSupplierCode: TStringField;
    cds_LoadPackagesPackageOK: TIntegerField;
    cds_LoadPackagesProblemPackageLog: TStringField;
    cds_LoadPackagesCreatedUser: TIntegerField;
    cds_LoadPackagesModifiedUser: TIntegerField;
    cds_LoadPackagesDateCreated: TSQLTimeStampField;
    cds_LoadPackagesPCS: TIntegerField;
    cds_LoadPackagesM3_NOM: TFloatField;
    cds_LoadPackagesProductNo: TIntegerField;
    cds_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesNoOfLengths: TIntegerField;
    cds_LoadPackagesProductLengthNo: TIntegerField;
    cds_LoadPackagesALMM: TFloatField;
    cds_LoadPackagesActualThicknessMM: TFloatField;
    cds_LoadPackagesActualWidthMM: TFloatField;
    cds_LoadPackagesSurfacingNo: TIntegerField;
    cds_LoadPackagesSpeciesNo: TIntegerField;
    cds_LoadPackagesMainGradeNo: TIntegerField;
    cds_LoadPackagesOverrideMatch: TIntegerField;
    cds_LoadPackagesLIPNo: TIntegerField;
    cds_LoadPackagesPkg_State: TIntegerField;
    cds_LoadPackagesPkg_Function: TIntegerField;
    cds_LoadPackagesChanged: TIntegerField;
    cds_LoadPackagesDefsspno: TIntegerField;
    cds_LoadPackagesProductCategoryNo: TIntegerField;
    cds_LoadPackagesOverrideRL: TIntegerField;
    cds_LoadPackagesOldPackageTypeNo: TIntegerField;
    cds_LoadPackagesInvNr: TIntegerField;
    cds_LO_LookUp: TFDQuery;
    cds_LO_LookUpSHIPPING: TIntegerField;
    cds_LO_LookUpShippingPlanNo: TIntegerField;
    cds_LO_LookUpCustomerNo: TIntegerField;
    cds_LO_LookUpCUSTOMER: TStringField;
    cds_LO_LookUpORDERNO: TStringField;
    cds_LO_LookUpORDERTYPE: TStringField;
    cds_LO_LookUpSupplierNo: TIntegerField;
    cds_LO_LookUpSUPPLIER: TStringField;
    cds_LO_LookUpLOCAL_CUST: TStringField;
    cds_LO_LookUpLoadingLocation: TStringField;
    cds_LO_LookUpSHIP_TO: TStringField;
    cds_LO_LookUpOBJECTTYPE: TIntegerField;
    cds_LO_LookUpAVROP_CUSTOMERNO: TIntegerField;
    cds_LO_LookUpLoadingLocationNo: TIntegerField;
    cds_LO_LookUpShipToInvPointNo: TIntegerField;
    cds_LO_LookUpLIPNo: TIntegerField;
    cds_LO_LookUpPIPNo: TIntegerField;
    cdsPkgsByInvOwner: TFDQuery;
    cdsPkgsByInvOwnerPackageNo: TIntegerField;
    cdsPkgsByInvOwnerSupplierCode: TStringField;
    cdsPkgsByInvOwnerSupplierNo: TIntegerField;
    cdsPkgsByInvOwnerLengthDescription: TStringField;
    cdsPkgsByInvOwnerProductDisplayName: TStringField;
    cdsPkgsByInvOwnerProductNo: TIntegerField;
    cdsPkgsByInvOwnerNoOfLengths: TIntegerField;
    cdsPkgsByInvOwnerProductLengthNo: TIntegerField;
    sq_CheckLoadNo: TFDQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sq_Booking_Data: TFDQuery;
    sq_Booking_DataSHIPPER: TStringField;
    sq_Booking_DataREADYDATE: TStringField;
    sq_Booking_DataVESSEL: TStringField;
    sq_Booking_DataETD: TSQLTimeStampField;
    sq_Booking_DataETA: TSQLTimeStampField;
    sq_Booking_DataSHIPPER_REF: TStringField;
    sq_Booking_DataSHIPPERID: TStringField;
    sq_Booking_DataSHIPPERS_SHIPDATE: TSQLTimeStampField;
    sq_Booking_DataSHIPPERS_SHIPTIME: TSQLTimeStampField;
    sq_PkgInLoad: TFDQuery;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
    sq_GetPkgNos: TFDQuery;
    sq_GetPkgNospackageno: TIntegerField;
    sq_GetPkgNossuppliercode: TStringField;
    sq_GetPkgNosLogicalInventoryPointNo: TIntegerField;
    sq_GetPkgNosdatecreated: TSQLTimeStampField;
    sq_GetPkgNospackagetypeno: TIntegerField;
    sq_GetPkgNosproductno: TIntegerField;
    sq_GetPkgNosproductlengthno: TIntegerField;
    sq_OnePkgDetailData: TFDQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataOnSticks: TIntegerField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataMFBM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_OnePkgDetailDataNoOfLengths: TIntegerField;
    sq_OnePkgDetailDataProductLengthNo: TIntegerField;
    sq_OnePkgDetailDataALMM: TFloatField;
    sq_OnePkgDetailDataProductNo: TIntegerField;
    sq_OnePkgDetailDataActualThicknessMM: TFloatField;
    sq_OnePkgDetailDataActualWidthMM: TFloatField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    sq_OnePkgDetailDataSpeciesNo: TIntegerField;
    sq_OnePkgDetailDataMainGradeNo: TIntegerField;
    sq_OnePkgDetailDataLIPNo: TIntegerField;
    sq_OnePkgDetailDataProductCategoryNo: TIntegerField;
    sq_UpdateLSP: TFDQuery;
    sq_UpdateLoad: TFDQuery;
    sq_OkToDeleteLSP: TFDQuery;
    sq_OkToDeleteLSPLoadDetailNo: TIntegerField;
    sp_DeleteOneLoad: TFDStoredProc;
    sp_RemPkgFromLoad: TFDStoredProc;
    sp_ProcessPkgAND_Log: TFDStoredProc;
    sp_DeletePackage: TFDStoredProc;
    sp_creIntLO: TFDStoredProc;
    sp_UpdIntLO: TFDStoredProc;
    sp_RemPkgFromLoad_II: TFDStoredProc;
    sp_chgManLoadPkgs: TFDStoredProc;
    mtLoadProp: TkbmMemTable;
    mtLoadPropPIPNo: TIntegerField;
    mtLoadPropLIPNo: TIntegerField;
    mtLoadPropPIP: TStringField;
    mtLoadPropLIP: TStringField;
    cds_LoadHeadPIPNo: TIntegerField;
    cds_LoadHeadLIPNo: TIntegerField;
    cds_LoadHeadPIP: TStringField;
    cds_LoadHeadLIP: TStringField;
    FD_GetMaxLoadDetailNo: TFDQuery;
    FD_GetMaxLoadDetailNoMaxLoadDetailNo: TIntegerField;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_PIP2: TFDQuery;
    cds_PIP2PIPNO: TIntegerField;
    cds_PIP2PIPNAME: TStringField;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    cds_LoadPackagesM3_NET: TFloatField;
    cds_LoadPackagesMFBM: TFloatField;
    cds_LoadPackagesKVM: TFloatField;
    cds_LoadPackagesLOPM: TFloatField;
    cds_LoadPackagesCustomPcs: TIntegerField;
    cds_DelAdress: TFDQuery;
    cds_DelAdressAddressName: TStringField;
    cds_DelAdressADDR: TStringField;
    cds_DelAdressAddressLine1: TStringField;
    cds_DelAdressAddressLine2: TStringField;
    cds_DelAdressAddressLine3: TStringField;
    cds_DelAdressAddressLine4: TStringField;
    cds_DelAdressSTATE: TStringField;
    cds_DelAdressPOSTAL_CODE: TStringField;
    cds_DelAdressCITY: TStringField;
    cds_DelAdressCOUNTRY: TStringField;
    cds_DelAdressAddressNo: TIntegerField;
    cds_LoadDelAdress: TFDQuery;
    cds_LoadDelAdressLoadNo: TIntegerField;
    cds_LoadDelAdressAddressNo: TIntegerField;
    cds_LoadDelAdressNoteLine1: TStringField;
    cds_LoadDelAdressNoteLine2: TStringField;
    cds_LoadDelAdressNoteLine3: TStringField;
    cds_LoadDelAdressCaseHandler: TStringField;
    cds_LoadDelAdressLeveransAdress: TStringField;
    cds_LoadDelAdressDepartAddressNo: TIntegerField;
    cds_LoadDelAdressDepartAdress: TStringField;
    ds_LoadDelAdress: TDataSource;
    cds_DepartAdress: TFDQuery;
    cds_DepartAdressAddressNo: TIntegerField;
    cds_DepartAdressAddressName: TStringField;
    cds_DepartAdressADDR: TStringField;
    cds_DepartAdressAddressLine1: TStringField;
    cds_DepartAdressAddressLine2: TStringField;
    cds_DepartAdressAddressLine3: TStringField;
    cds_DepartAdressAddressLine4: TStringField;
    cds_DepartAdressSTATE: TStringField;
    cds_DepartAdressPOSTAL_CODE: TStringField;
    cds_DepartAdressCITY: TStringField;
    cds_DepartAdressCOUNTRY: TStringField;
    sp_TransferFiles: TFDStoredProc;
    ds_TransferFiles: TDataSource;
    cds_LoadDelAdressNoteLine4: TStringField;
    cds_LoadDelAdressNoteLine5: TStringField;
    cds_LoadDelAdressNoteLine6: TStringField;
    cds_LoadDelAdressEndUserRequisition: TStringField;
    cds_LoadDelAdressTransportHandler: TStringField;
    cdsLORowsVaruSlag: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_LoadHead1SenderLoadStatusChange(Sender: TField);
    procedure ds_LoadPackages2DataChange(Sender: TObject; Field: TField);
    procedure dspLORowsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_LoadPackagesGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure cds_LoadPackages1PostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ds_LSPDataChange(Sender: TObject; Field: TField);
    procedure cds_LoadHeadAfterInsert(DataSet: TDataSet);
    procedure cds_LoadHeadBeforePost(DataSet: TDataSet);
    procedure cds_LSPAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesBeforePost(DataSet: TDataSet);
    procedure cds_LoadHeadPIPNoChange(Sender: TField);
    procedure cds_LoadHeadSupplierNoChange(Sender: TField);
    procedure cds_LoadPackagesPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure cds_LoadDelAdressAfterInsert(DataSet: TDataSet);
    procedure cds_LoadHeadAfterScroll(DataSet: TDataSet);
    procedure cds_LoadHeadCustomerNoChange(Sender: TField);
  private
    { Private declarations }
   FOnAmbiguousPkgNo: TAmbiguityEvent;

   procedure SetPkgNotActiveIfLoadIsActivated ;
   procedure RemovePkgFromLoad_II(const Status, Operation : Integer) ;
   function  PkgExistInLoad : Boolean ;
   function  IS_Load_OK : Word ;
   procedure SaveLoadPkgs(const WhenPosted : TDateTime;const LoadNo:Integer);
   function  SaveLoadHeader(const WhenPosted : TDateTime;const LoadNo:Integer) : Boolean ;
   procedure ModifyLoadHeader(const WhenPosted : TDateTime;const LoadNo:Integer);
   procedure getPkgsByInvOwner(const PkgNo, InventoryOwner, PIPNo : Integer);
   function  DeletePackage(const LoadNo : Integer)   : Boolean ;
   procedure CleanUpLoadPkgsGrid(Sender: TObject);
   function  CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
   procedure ProcessPkgAND_Log(const Status, Operation : Integer) ;
   function  Is_Load_Confirmed(const LoadNo : Integer) : Boolean ;
   procedure RemovePkgFromLoad(const Status, Operation : Integer) ;

  public
    { Public declarations }
   LoadStatus,
   LIPNo, InventoryNo : Integer ; //, GlobalLoadDetailNo : Integer ;
   FSupplierNo, FCustomerNo   : integer;
   procedure csdUnit_OpenLagerLookup ;
   Function  GetMaxLoadDetailNoMaxLoadDetailNo(const LoadNo : Integer) : Integer ;
   //Procedure Refresh_PkgList (const LoadNo : Integer) ;
   procedure chgManLoadPkgs(const LoadNo : Integer) ;
   function  OkToDeleteLSP(const LoadNo, ShippingPlanNo : Integer) : Integer ;
   procedure UpdateLoad(const LoadNo : Integer) ;
   procedure UpdateLSP(const ShippingPlanNo : Integer) ;
   procedure UpdateLO(const LoadNo : Integer) ;
   function  CreateLO(const LoadNo, CustomerNo, SalesRegionNo, SupplierNo  : Integer) : Integer ;
   Function  DoesLOHavePackages (const LONo : Integer) : Boolean ;
   function  GetPkgsNos(const packagecodeno : String;const noofpkgs, LogicalInventoryPointNo : Integer) : Integer ;
   procedure DeleteONELoad(const LoadNo : Integer);
   function  IS_Packages_OK : Boolean ;
   Procedure Get_LO_LinesMatched (const PackageNo : Integer;const Supp_Code : String3) ;
   procedure SaveLOData(LoadNo: Integer);
   function  PkgNoToSuppCode(
              const PkgNo,
              InventoryOwner,
              PIPNo           : Integer;
              var SupplierNo  : Integer;
              var ProductNo   : Integer;
              Var ProductLengthNo, NoOfLengths : Integer): string3;
   property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmLoadEntrySSPTemp: TdmLoadEntrySSPTemp;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact, dmsVidaSystem ,
  dmc_ArrivingLoads, dmc_UserProps;

{$R *.dfm}
//Set checkbox on LO Lines when package rows change
Procedure TdmLoadEntrySSPTemp.Get_LO_LinesMatched (const PackageNo : Integer;const Supp_Code : String3) ;
 Begin
  if (cdsLORows.RecordCount > 0) and (cds_LoadPackages.RecordCount > 0) then
  Begin
  Try
   cdsLORows.DisableControls ;
   With dmLoadEntrySSPTemp do
   Begin
//Sätt current match till 0, vi vill bara se en LO rad kryssad i match kolumnen
    if cdsLORows.State in [dsEdit, dsInsert] then cdsLORows.Post ;
    cdsLORows.Filter    := 'Match = 1' ;
    cdsLORows.Filtered  := True ;
    Try
    cdsLORows.First ;
    While not cdsLORows.Eof do
    Begin
     cdsLORows.Edit ;
     cdsLORowsMATCH.AsInteger:= 0 ;
     cdsLORows.Post ;
    End ;
    Finally
     cdsLORows.Filtered:= False ;
    End ;
      if cdsLORows.FindKey([cds_LoadPackagesDefsspno.AsInteger]) then
      Begin
       cdsLORows.Edit ;
       cdsLORowsMATCH.AsInteger:= 1 ;
       cdsLORows.Post ;
      End
      else
      Begin
       cdsLORows.Edit ;
       cdsLORowsMATCH.AsInteger:= 0 ;
       cdsLORows.Post ;
      End ;
   End ; //with
  Finally
   cdsLORows.EnableControls ;
  End ;
 End ;//if...
End ;

function TdmLoadEntrySSPTemp.CheckIfLoadNoIsOK(const LoadNo : Integer) : Boolean ;
Begin
 sq_CheckLoadNo.Close ;
 sq_CheckLoadNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_CheckLoadNo.Open ;
 if sq_CheckLoadNoLoadNo.AsInteger = LoadNo then
 Result := False
 else
 Result := True ;
 sq_CheckLoadNo.Close ;
End ;

procedure TdmLoadEntrySSPTemp.SaveLOData(LoadNo: Integer);
// We have been passed data to be saved in the database. The data passed includes the original
// data(if any) and the modified/new data, so we can handle any concurrency issues that arise.
var
  WhenPosted    : TDateTime;
  NewLoad       : Boolean;
  Save_Cursor   : TCursor;
begin
 NewLoad := False;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  WhenPosted := Now; // Make sure all records get same time of posting.

  if ThisUser.UserID <> 8 then
  if Is_Load_Confirmed(cds_LoadHeadLoadNo.AsInteger) then
  Begin
   ShowMessage('Kan inte spara för att lasten är ankomstregistrerad') ;
   Exit ;
  End ;

//LL  dmsConnector.StartTransaction;
//LL  try
    if NewLoad = TRUE then
    Begin
      if SaveLoadHeader(WhenPosted, cds_LoadHeadLoadNo.AsInteger) = False then
       Begin
        ShowMessage('A Load No conflict occured, please try save again or close the load form and try again.') ;
//        dmsConnector.Rollback ;
        cds_LoadHead.Edit ;
        cds_LoadHeadLoadNo.AsInteger:= 0 ;
        cds_LoadHead.Post ;
        Exit ;
       End ;
    end
    else
     begin
    //Modify Existing load
      ModifyLoadHeader(WhenPosted, LoadNo);
     end; //Else

//LL    try
      // Now write the data to the database
      if cds_LSP.ChangeCount > 0 then
      Begin
       cds_LSP.ApplyUpdates(0) ;
       cds_LSP.CommitUpdates ;
      End ;

      if cds_LoadDelAdress.State in [dsEdit, dsInsert] then
       cds_LoadDelAdress.Post ;
      if cds_LoadDelAdress.ChangeCount > 0 then
      Begin
       cds_LoadDelAdress.ApplyUpdates(0) ;
       cds_LoadDelAdress.CommitUpdates ;
      End ;      

      SaveLoadPkgs  (WhenPosted, LoadNo);

      if cds_LoadPackages.ChangeCount > 0 then
      Begin
       cds_LoadPackages.ApplyUpdates(0) ;
       cds_LoadPackages.CommitUpdates ;
      End ;

      //Om status = 2 then check and change manuell overriden packages
      if cds_LoadHeadSenderLoadStatus.AsInteger = 2 then
      chgManLoadPkgs(LoadNo);

//      CleanUpLoadpkgsGrid(Sender) ;
{LL      dmsConnector.Commit ;
    except
      on Exception do begin
        if NewLoad then
          LoadNo := NEW_ENTRY;
        raise;
        end;
      end;

  except
    dmsConnector.Rollback;
    raise;
  end;
  LL}

  if (not Assigned(dmArrivingLoads)) then
  Begin
   dmArrivingLoads  := TdmArrivingLoads.Create(nil);
  End ;
  dmsSystem.AssignDMToThisWork('TdmLoadEntrySSP', 'dmArrivingLoads') ;
 Try

  if cds_LoadHeadSenderLoadStatus.AsInteger = 2 then
   dmArrivingLoads.GetIntPrice(-1, 0, -1, cds_LoadHeadLoadNo.AsInteger, True) ;

 Finally
  if dmsSystem.DeleteAssigned('TdmLoadEntrySSP', 'dmArrivingLoads') = True then
  Begin
   dmArrivingLoads.Free ;
   dmArrivingLoads := Nil ;
  End ;
 End ;


  Finally
   Screen.Cursor := Save_Cursor ;
  End ;
end;

function TdmLoadEntrySSPTemp.IS_Load_OK : Word ;
Begin
 Result := 2 ;
 cds_LoadPackages.First ;
 While not cds_LoadPackages.Eof do
 Begin
  if ((cds_LoadPackagesPackageOK.AsInteger > 0)
  and (cds_LoadPackagesPackageOK.AsInteger <> VP_LengthNotInLengthGroup)
  and (cds_LoadPackagesOverrideRL.AsInteger = 0)
  and (dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))

  or ((dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger = 2)
  and (cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
  and (cds_LoadPackagesOverrideRL.AsInteger = 0)
  and (dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))

  or ((cds_LoadPackagesShippingPlanNo.AsInteger < 1)
  and (dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger <> REMOVE_PKG_FROM_LOAD))

  or (cds_LoadPackagesDefsspno.AsInteger = -1)
  then
   Result := 1 ;
  cds_LoadPackages.Next ;
 End ;
End ;

function TdmLoadEntrySSPTemp.SaveLoadHeader(const WhenPosted : TDateTime;const LoadNo: Integer) : Boolean ;
const
  ALWAYS_ZERO = 0;
begin
 if cds_LoadHead.State = dsBrowse then
  cds_LoadHead.Edit ;
//  cds_LoadHeadLoadNo.AsInteger              := LoadNo ;

  cds_LoadHeadSupplierNo.AsInteger          := FSupplierNo;
  cds_LoadHeadPackageEntryOption.AsInteger  := 0 ;
  cds_LoadHeadCreatedUser.AsInteger         := ThisUser.UserID ;
  cds_LoadHeadModifiedUser.AsInteger        := ThisUser.UserID ;
  cds_LoadHeadDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
  cds_LoadHeadOriginalSupplierNo.AsInteger  := FSupplierNo ;
  cds_LoadHeadCustomerNo.AsInteger          := FCustomerNo ;

  cds_LoadHead.Post ;

  if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
  Begin
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger:= IS_Load_OK ;
   cds_LoadHead.Post ;
  End ;

  cds_LoadHead.Edit ;
  cds_LoadHeadLoadOK.AsInteger:= IS_Load_OK ;
  cds_LoadHead.Post ;

 if cds_LoadHead.ChangeCount > 0 then
 Begin
  if cds_LoadHead.ApplyUpdates(0) > 0 then
  Begin
   Result:= False ;
  End
  else
  Result:= True ;
 End
 else
  Result:= True ;
end;


procedure TdmLoadEntrySSPTemp.ModifyLoadHeader(const WhenPosted : TDateTime;const LoadNo:Integer);
const
  ALWAYS_ZERO = 0;
begin
 if cds_LoadHead.State in [dsEdit, dsInsert] then
 cds_LoadHead.Post ;
 cds_LoadHead.Edit ;
 if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
  cds_LoadHeadSenderLoadStatus.AsInteger:= IS_Load_OK ;

  cds_LoadHeadLoadOK.AsInteger            := IS_Load_OK ;
  cds_LoadHeadModifiedUser.AsInteger      := ThisUser.UserID ;

  cds_LoadHeadSupplierNo.AsInteger        := FSupplierNo;

  cds_LoadHeadOriginalSupplierNo.AsInteger:= FSupplierNo ;
  cds_LoadHeadCustomerNo.AsInteger        := FCustomerNo ;


  cds_LoadHead.Post ;


 if cds_LoadHead.ChangeCount > 0 then
 if cds_LoadHead.ApplyUpdates(0) > 0 then
 Begin
 End
 else
 cds_LoadHead.CommitUpdates ;
end;

procedure TdmLoadEntrySSPTemp.SaveLoadPkgs(const WhenPosted : TDateTime;const LoadNo:Integer);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  cds_LoadPackages.Filter   := 'Changed = 1' ;
  cds_LoadPackages.Filtered := True ;
  cds_LoadPackages.First ;
  While cds_LoadPackages.RecordCount > 0 do
  Begin
   if cds_LoadPackagesChanged.AsInteger = 1 then
   Begin
   if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
   Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 //No log operations as nothing happened with the package
                                 // UpdateLoadDtl sätter status och loggen
//                                 UpdateLoadDtl(Sender, WhenPosted, LoadNo) ;
//                                 SaveLoadDetailMatch(Sender, WhenPosted, LoadNo) ;
//                                 SaveLoadDetailPkgLength(Sender, LoadNo) ;
                                 if ((cds_LoadHeadPackageEntryOption.IsNull) or (cds_LoadHeadPackageEntryOption.AsInteger = 0)) then
                                 ProcessPkgAND_Log(status_Pkg_NOT_IN_Inventory, oper_Add_Pkg_To_Load) ;
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger  := EXISTING_PACKAGE ;
                                 cds_LoadPackagesChanged.AsInteger    := 0 ;
                                 cds_LoadPackages.Post ;
                                End ;
        DELETE_PKG            : Begin
                                //DeletePackage proc also makes an entry to PackageNumberLog
                                 DeletePackage(LoadNo) ;
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                //Make an entry to PackageNumberLog and set pkgStatus = 1
                                 if cds_LoadPackagesOldPackageTypeNo.AsInteger > 0 then
                                 RemovePkgFromLoad_II(status_Pkg_IN_Inventory, oper_Remove_From_Load)
                                 else
                                 RemovePkgFromLoad(status_Pkg_IN_Inventory, oper_Remove_From_Load) ;

                                 cds_LoadPackages.Delete ;
                                End ;
    End ; //case
   End
   else //NEW_PACKAGE
   Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                //Remove pkg from inventory pkgStatus = 0 and make entry in PackageNumberLog
                                //SaveLoadDetail makes entry to sp_UpdatePackages and LoadDetailMatch
//                                 SaveLoadDetail(Sender, WhenPosted, LoadNo) ;
//                                 SaveLoadDetailPkgLength(Sender, LoadNo) ;
                                 //Change packageNumber.status and make entry to PackageNumberLog
                                 if ((cds_LoadHeadPackageEntryOption.IsNull) or (cds_LoadHeadPackageEntryOption.AsInteger = 0)) then
                                 ProcessPkgAND_Log(status_Pkg_NOT_IN_Inventory, oper_Add_Pkg_To_Load) ;

                                 //Package is now an existing package.
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger  := EXISTING_PACKAGE ;
                                 cds_LoadPackagesChanged.AsInteger    := 0 ;
                                 cds_LoadPackages.Post ;
                                End ;
        DELETE_PKG            : Begin
                                //DeletePackage proc also makes an entry to PackageNumberLog
                                 DeletePackage(LoadNo) ;
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 //Do nothing as package is still in inventory
                                 //no set pkg status is needed as it set to 1 already
                                 cds_LoadPackages.Delete ;
                                End ;
    End ; //case
   End ;

   End ;//if..

//   cds_LoadPackages.Next ;
  end; //While
 Finally
  cds_LoadPackages.Filtered := False ;
  Screen.Cursor             := Save_Cursor ;
 End ;
// SetPkgNotActiveIfLoadIsActivated ;
end;

procedure TdmLoadEntrySSPTemp.SetPkgNotActiveIfLoadIsActivated ;
var
  Save_Cursor : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 Try
  cds_LoadPackages.Filtered := False ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   if ((cds_LoadHeadPackageEntryOption.IsNull) or (cds_LoadHeadPackageEntryOption.AsInteger = 0)) then
    ProcessPkgAND_Log(status_Pkg_NOT_IN_Inventory, oper_Add_Pkg_To_Load) ;
   cds_LoadPackages.Next ;
  end; //While
 Finally
  cds_LoadPackages.Filtered := False ;
  Screen.Cursor             := Save_Cursor ;
 End ;
end;

procedure TdmLoadEntrySSPTemp.CleanUpLoadPkgsGrid(Sender: TObject);
begin
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
    Case cds_LoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 cds_LoadPackages.Edit ;
                                 cds_LoadPackagesPkg_State.AsInteger:= EXISTING_PACKAGE ;
                                 cds_LoadPackages.Post ;
                                 cds_LoadPackages.Next ;
                                End ;
        DELETE_PKG            : Begin
                                 cds_LoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 cds_LoadPackages.Delete ;
                                End ;
    End ; //case
   cds_LoadPackages.Next ;
  End; //While
end;

function TdmLoadEntrySSPTemp.PkgNoToSuppCode(
  const PkgNo,  InventoryOwner, PIPNo : Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer;
  Var ProductLengthNo, NoOfLengths : Integer): string3;
var
  SuppCode : string3;
begin
  cdsPkgsByInvOwner.Active:= False ;
  getPkgsByInvOwner(PkgNo, InventoryOwner, PIPNo);
//  cdsPkgsByInvOwner.SetProvider(provPkgsByInvOwner);
  cdsPkgsByInvOwner.Active:= True ;
  case cdsPkgsByInvOwner.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode           := cdsPkgsByInvOwner.FieldByName('SupplierCode').AsString ;
           SupplierNo         := cdsPkgsByInvOwner.FieldByName('SupplierNo'  ).AsInteger ;
           ProductNo          := cdsPkgsByInvOwner.FieldByName('ProductNo'  ).AsInteger ;
           ProductLengthNo    := cdsPkgsByInvOwner.FieldByName('ProductLengthNo'  ).AsInteger ;
           NoOfLengths        := cdsPkgsByInvOwner.FieldByName('NoOfLengths'  ).AsInteger ;
           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.dsrcPkgsByInvOwner,SuppCode,SupplierNo, ProductNo,
             ProductLengthNo, NoOfLengths);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmLoadEntrySSPTemp.getPkgsByInvOwner(const PkgNo, InventoryOwner, PIPNo : Integer);
begin
//  sp_PksByInvOwner.Close;
  cdsPkgsByInvOwner.ParamByName('PkgNo').AsInteger     := PkgNo ;
  cdsPkgsByInvOwner.ParamByName('InvOwner').AsInteger  := InventoryOwner ;
  cdsPkgsByInvOwner.ParamByName('PIPNo').AsInteger     := PIPNo ;
//  sp_PksByInvOwner.Open;
end;

procedure TdmLoadEntrySSPTemp.DataModuleCreate(Sender: TObject);
begin
 //GlobalLoadDetailNo := 1 ;
end;

function TdmLoadEntrySSPTemp.DeletePackage(const LoadNo : Integer)   : Boolean ;
begin
 Result := False ;
 //Delete Package
 Try
 //Operation is set to 4 in the SP.
 //Kan inte ta bort paket från systemet om paketet finns upptaget på en annan last
 if PkgExistInLoad = False then
 Begin
  Try
  sp_DeletePackage.ParamByName('@PackageNo').AsInteger               := cds_LoadPackagesPackageNo.AsInteger ;
  sp_DeletePackage.ParamByName('@SupplierCode').AsString             := cds_LoadPackagesSupplierCode.AsString ;
  sp_DeletePackage.ParamByName('@RegistrationPointNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen mätpunkt
  sp_DeletePackage.ParamByName('@PackageTypeNo').AsInteger           := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
  sp_DeletePackage.ParamByName('@LogicalInventoryPointNo').AsInteger := -1 ;
  sp_DeletePackage.ParamByName('@UserID').AsInteger                  := ThisUser.UserID ;
  sp_DeletePackage.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 End ;

 Except
  Result := False ;
 End ;
end;

procedure TdmLoadEntrySSPTemp.RemovePkgFromLoad(const Status, Operation : Integer) ;
Begin
      Try
      sp_RemPkgFromLoad.Close ;
      sp_RemPkgFromLoad.ParamByName('@PackageNo').AsInteger                := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('@SupplierCode').AsString              := cds_LoadPackagesSupplierCode.AsString ;
      sp_RemPkgFromLoad.ParamByName('@RegistrationPointNo').AsInteger      := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen mätpunkt
      sp_RemPkgFromLoad.ParamByName('@PackageTypeNo').AsInteger            := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('@LogicalInventoryPointNo').AsInteger  := cds_LoadPackagesLIPNo.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemPkgFromLoad.ParamByName('@Status').AsInteger                   := Status ;
      sp_RemPkgFromLoad.ParamByName('@Operation').AsInteger                := Operation ;
      sp_RemPkgFromLoad.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSPTemp.RemovePkgFromLoad_II(const Status, Operation : Integer) ;
Begin
      Try
      sp_RemPkgFromLoad_II.Close ;
      sp_RemPkgFromLoad_II.ParamByName('@PackageNo').AsInteger                := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad_II.ParamByName('@SupplierCode').AsString              := cds_LoadPackagesSupplierCode.AsString ;
      sp_RemPkgFromLoad_II.ParamByName('@RegistrationPointNo').AsInteger      := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen mätpunkt
      sp_RemPkgFromLoad_II.ParamByName('@PackageTypeNo').AsInteger            := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad_II.ParamByName('@LogicalInventoryPointNo').AsInteger  := cds_LoadPackagesLIPNo.AsInteger ;
      sp_RemPkgFromLoad_II.ParamByName('@UserID').AsInteger                   := ThisUser.UserID ;
      sp_RemPkgFromLoad_II.ParamByName('@Status').AsInteger                   := Status ;
      sp_RemPkgFromLoad_II.ParamByName('@Operation').AsInteger                := Operation ;
      sp_RemPkgFromLoad_II.ParamByName('@OldPackageTypeNo').AsInteger         := cds_LoadPackagesOLDPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad_II.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSPTemp.ProcessPkgAND_Log(const Status, Operation : Integer) ;
Begin
//Set PackageNumber.Status
//Make entry to PackageNumberLog
      Try
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('@PackageNo').AsInteger               := cds_LoadPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('@SupplierCode').AsString             := cds_LoadPackagesSupplierCode.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('@RegistrationPointNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger ; // -1 ingen mätpunkt
      sp_ProcessPkgAND_Log.ParamByName('@PackageTypeNo').AsInteger           := cds_LoadPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('@LogicalInventoryPointNo').AsInteger := cds_LoadPackagesLIPNo.AsInteger ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('@UserID').AsInteger                  := ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('@Status').AsInteger                  := Status ;
      sp_ProcessPkgAND_Log.ParamByName('@Operation').AsInteger               := Operation ;
      sp_ProcessPkgAND_Log.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSPTemp.DeleteONELoad(const LoadNo : Integer);
var
  Save_Cursor   : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  dmsConnector.StartTransaction;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    Try
    sp_DeleteONELoad.ParamByName('@LoadNo').AsInteger := LoadNo;
    sp_DeleteONEload.ExecProc;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }    
    dmsConnector.Commit ;
  except
    dmsConnector.Rollback ;
    raise;
  end;
  Finally
   Screen.Cursor := Save_Cursor ;
  End ;
end;


function TdmLoadEntrySSPTemp.Is_Load_Confirmed (const LoadNo : Integer) : Boolean ;
Begin
 Result :=  dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;
{  Result:= False ;
  dmsSystem.sp_OneLoad.Close ;
  dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  dmsSystem.sp_OneLoad.Open ;
  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
   Result:= True ;
  dmsSystem.sp_OneLoad.Close ; }
End ;

function TdmLoadEntrySSPTemp.IS_Packages_OK : Boolean ;
begin
 cds_LoadPackages.DisableControls ;
 Try
  Result:= True ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   if cds_LoadPackagesPackageNo.AsInteger < 1 then
    Begin
     Result:= False ;
     ShowMessage('Paketnr saknas på rad '+cds_LoadPackagesLoadDetailNo.AsString) ;
     Exit ;
    End ;
   if cds_LoadPackagesSupplierCode.AsString < '0' then
    Begin
     Result:= False ;
     ShowMessage('Leverantörskod saknas på rad '+cds_LoadPackagesLoadDetailNo.AsString) ;
     Exit ;
    End ;
   cds_LoadPackages.Next ;
  End; //While
 Finally
  cds_LoadPackages.EnableControls ;
 End ;
end;

function TdmLoadEntrySSPTemp.PkgExistInLoad : Boolean ;
Begin
 sq_PkgInLoad.ParamByName('PackageNo').AsInteger    := cds_LoadPackagesPACKAGENO.AsInteger ;
 sq_PkgInLoad.ParamByName('SupplierCode').AsString  := cds_LoadPackagesSupplierCode.AsString ;
 sq_PkgInLoad.ParamByName('LoadNo').AsInteger       := cds_LoadHeadLoadNo.AsInteger ;
 sq_PkgInLoad.Open ;
 if not sq_PkgInLoad.Eof then
 Begin
  cds_LoadPackages.Edit ;
  cds_LoadPackagesProblemPackageLog.AsString:= 'Pkt finns upptaget i lastnr '
  +sq_PkgInLoadLastNr.AsString+' LO: '+sq_PkgInLoadLO.AsString ;
  cds_LoadPackages.Post ;
  Result:= True ;
 End
  else
   Result:= False ;
 sq_PkgInLoad.Close ;
End ;

function TdmLoadEntrySSPTemp.GetPkgsNos(const packagecodeno : String;const noofpkgs, LogicalInventoryPointNo : Integer) : Integer ;
Var x : Integer ;
Begin
 x := 0 ;
 sq_GetPkgNos.ParamByName('packagecodeno').AsString             := Trim(packagecodeno) ;
 sq_GetPkgNos.ParamByName('LogicalInventoryPointNo').AsInteger  := LogicalInventoryPointNo ;
 sq_GetPkgNos.ParamByName('UserID').AsInteger                   := ThisUser.UserID ;
 sq_GetPkgNos.Open ;
 if not sq_GetPkgNos.Eof then
 While (not sq_GetPkgNos.Eof) and (noofpkgs > x) do
 begin
  if cds_LoadPackages.FindKey([sq_GetPkgNospackageno.AsInteger, Trim(sq_GetPkgNossuppliercode.AsString)]) then
  Begin
  End
  else
  begin
   mtPkgNos.Insert ;
   mtPkgNosPackageNo.AsInteger        := sq_GetPkgNospackageno.AsInteger ;
   mtPkgNosSuppliercode.AsString      := sq_GetPkgNossuppliercode.AsString ;
   mtPkgNosproductlengthno.AsInteger  := sq_GetPkgNosproductlengthno.AsInteger ;
   mtPkgNosproductno.AsInteger        := sq_GetPkgNosproductno.AsInteger ;
   mtPkgNos.Post ;
   x:= succ(x) ;
  End ;
  sq_GetPkgNos.Next ;
 end ;
 sq_GetPkgNos.Close ;
 Result:= x ;
End ;

Function TdmLoadEntrySSPTemp.DoesLOHavePackages (const LONo : Integer) : Boolean ;
Begin
 cds_LoadPackages.Filter:= 'ShippingPlanNo = '+IntToStr(LONo) ;
 cds_LoadPackages.Filtered:= True ;
 Try
  Result:= cds_LoadPackages.RecordCount > 0 ;
 Finally
  cds_LoadPackages.Filtered:= False ;
 End ;
End ;

//Håller på med packagetypeno osv, se till att inga dubletter skapas!!!
procedure TdmLoadEntrySSPTemp.cds_LoadHead1SenderLoadStatusChange(
  Sender: TField);
begin
{ if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (LoadStatus <> 2) then
 Begin
  cds_LoadHeadLoadedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 End ; }
 LoadStatus:= cds_LoadHeadSenderLoadStatus.AsInteger ;
end;

procedure TdmLoadEntrySSPTemp.ds_LoadPackages2DataChange(Sender: TObject;
  Field: TField);
begin
 dmLoadEntrySSPTemp.Get_LO_LinesMatched (cds_LoadpackagesPackageNo.AsInteger, Trim(cds_LoadPackagesSupplierCode.AsString)) ;
end;

procedure TdmLoadEntrySSPTemp.dspLORowsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadShippingPlan' ;
end;

procedure TdmLoadEntrySSPTemp.dsp_LoadPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'LoadDetail' ; 
end;

procedure TdmLoadEntrySSPTemp.cds_LoadPackages1PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('System Error. Paketnr '+DataSet.FieldByName('PACKAGENO').AsString
  +'/'+DataSet.FieldByName('SupplierCode').AsString
  +' är redan inmatat'+' Original Message: ' + E.Message) ;
  Action:= daAbort ;
end;

procedure TdmLoadEntrySSPTemp.ds_LSPDataChange(Sender: TObject; Field: TField);
begin
 With dmsContact do
 Begin
  cdsAddressAndReference.Active:= False ;
  cdsAddressAndReference.ParamByName('@LO1').AsInteger:= cds_LSPShippingPlanNo.AsInteger ;
  cdsAddressAndReference.Active:= True ;
 End ; //with
end;

function TdmLoadEntrySSPTemp.CreateLO(const LoadNo, CustomerNo, SalesRegionNo, SupplierNo  : Integer) : Integer ;
Begin
 Try
 sp_creIntLO.ParamByName('@LoadNo').AsInteger                  := LoadNo ;
 sp_creIntLO.ParamByName('@CustomerNo').AsInteger              := CustomerNo ;
 sp_creIntLO.ParamByName('@CreatedUser').AsInteger             := ThisUser.UserID ;
// sp_creIntLO.ParamByName('DefaultShipToInvPointNo').AsInteger := DefaultShipToInvPointNo ;
 sp_creIntLO.ParamByName('@SalesRegionNo').AsInteger           := SalesRegionNo ;
// sp_creIntLO.ParamByName('DefaultLIPNo').AsInteger            := DefaultLIPNo ;
 sp_creIntLO.ParamByName('@SupplierNo').AsInteger              := SupplierNo ;
// sp_creIntLO.ParamByName('Def_LoadingLocationNo').AsInteger   := Def_LoadingLocationNo ;
 sp_creIntLO.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Result:= sp_creIntLO.ParamByName('ShippingPlanNo').AsInteger ;
 sp_creIntLO.Close ;
End ;

procedure TdmLoadEntrySSPTemp.UpdateLO(const LoadNo : Integer) ;
Begin
 Try
 sp_UpdIntLO.ParamByName('@LoadNo').AsInteger  := LoadNo ;
 sp_UpdIntLO.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSPTemp.UpdateLSP(const ShippingPlanNo : Integer) ;
Begin
 Try
 sq_UpdateLSP.ParamByName('ShippingPlanNo').AsInteger  := ShippingPlanNo ;
 sq_UpdateLSP.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmLoadEntrySSPTemp.UpdateLoad(const LoadNo : Integer) ;
Begin
 Try
 sq_UpdateLoad.ParamByName('LoadNo').AsInteger  := LoadNo ;
 sq_UpdateLoad.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

function TdmLoadEntrySSPTemp.OkToDeleteLSP(const LoadNo, ShippingPlanNo : Integer) : Integer ;
Begin
 sq_OkToDeleteLSP.ParamByName('LoadNo').AsInteger         := LoadNo ;
 sq_OkToDeleteLSP.ParamByName('ShippingPlanNo').AsInteger := ShippingPlanNo ;
 sq_OkToDeleteLSP.Open ;
 Try
 if not sq_OkToDeleteLSP.Eof then
  Result:= sq_OkToDeleteLSPLoadDetailNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_OkToDeleteLSP.Close ;
 End ;
End ;

procedure TdmLoadEntrySSPTemp.chgManLoadPkgs(const LoadNo : Integer) ;
Begin
    Try
    sp_chgManLoadPkgs.ParamByName('@LoadNo').AsInteger := LoadNo ;
    sp_chgManLoadPkgs.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
    sp_chgManLoadPkgs.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

{ Procedure TdmLoadEntrySSPTemp.Refresh_PkgList(const LoadNo : Integer) ;
 Begin
   With dmLoadEntrySSPTemp do
   Begin
    cds_LoadPackages.DisableControls ;
    cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex2' ;//LoadDetailNo
    Try
     cds_LoadPackages.Active:= False ;
     cds_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
     cds_LoadPackages.Active:= True ;
     cds_LoadPackages.Last ;
     GlobalLoadDetailNo := cds_LoadPackagesLoadDetailNo.AsInteger + 1 ;
    Finally
     cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex1' ;//PkgNo och SuppCode
     cds_LoadPackages.EnableControls ;
    End ;
   End ;//with
 End ;   }

procedure TdmLoadEntrySSPTemp.cds_LoadHeadAfterInsert(DataSet: TDataSet);
begin
 cds_LoadHeadLoadNo.AsInteger             := dmsConnector.NextMaxNo('Loads') ;
 cds_LoadHeadLoadAR.AsInteger             := 0 ;//
 cds_LoadHeadDateCreated.AsSQLTimeStamp   := DateTimeToSqlTimeStamp(Now) ;
 cds_LoadHeadPackageEntryOption.AsInteger := 0 ;
 if CheckIfLoadNoIsOK(cds_LoadHeadLoadNo.AsInteger) = False then
 Begin
  cds_LoadHeadLoadNo.AsInteger:= dmsConnector.NextMaxNo('Loads') ;
 End ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadHeadBeforePost(DataSet: TDataSet);
begin
 if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp)  > Now then
 Begin
  ShowMessage('Utlastat datum är inom stängd period, var vänlig justera.') ;
  Abort ;
 End ;
end;

procedure TdmLoadEntrySSPTemp.cds_LSPAfterInsert(DataSet: TDataSet);
begin
   cds_LSPLoadNo.AsInteger              := cds_LoadHeadLoadNo.AsInteger ;
//   cds_LSPConfirmedByReciever.AsInteger := 0 ;
//   cds_LSPConfirmedBySupplier.AsInteger := 0 ;
   cds_LSPCreatedUser.AsInteger         := ThisUser.UserID ;
   cds_LSPModifiedUser.AsInteger        := ThisUser.UserID ;
   cds_LSPDateCreated.AsSQLTimeStamp    := DateTimeToSqlTimeStamp(Now) ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadPackagesAfterInsert(DataSet: TDataSet);
begin
 if cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  Abort ;
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;
 cds_LoadPackagesPkg_State.AsInteger        := NEW_PACKAGE ;
 cds_LoadPackagesPkg_Function.AsInteger     := ADD_PKG_TO_LOAD ;
 cds_LoadPackagesOverrideMatch.AsInteger    := 0 ;
 cds_LoadPackagesChanged.AsInteger          := 1 ;
 cds_LoadPackagesLoadNo.AsInteger           := cds_LoadHeadLoadNo.AsInteger ;
 cds_LoadPackagesCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_LoadPackagesModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_LoadPackagesDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now) ;
 cds_LoadPackagesLoadDetailNo.AsInteger     := dmsConnector.NextSecondMaxNo('Loads',
 cds_LoadHeadLoadNo.AsInteger) ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadPackagesBeforePost(DataSet: TDataSet);
begin
 if cds_LoadPackagesPACKAGENO.IsNull then
 Abort ;
{ if DataSet.FieldByName('LoadDetailNo').AsInteger < 1 then
 Begin
  DataSet.FieldByName('LoadDetailNo').AsInteger := GlobalLoadDetailNo ;
  GlobalLoadDetailNo                            := Succ(GlobalLoadDetailNo) ;
 End ;     }
 if cds_LoadPackagesCustomPcs.Isnull then
  cds_LoadPackagesCustomPcs.AsInteger       := cds_LoadPackagesPcs.AsInteger ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadHeadPIPNoChange(Sender: TField);
begin
   cds_LIP2.Active  := False ;
   if not cds_LoadHeadPIP.IsNull then
   cds_LIP2.ParamByName('PIPNo').AsInteger      := cds_LoadHeadPIPNo.AsInteger
   else
   cds_LIP2.ParamByName('PIPNo').AsInteger      := -1 ;
   cds_LIP2.Active  := True ;
end;

Function TdmLoadEntrySSPTemp.GetMaxLoadDetailNoMaxLoadDetailNo(const LoadNo : Integer) : Integer ;
Begin
 Try
 FD_GetMaxLoadDetailNo.ParamByName('LoadNo').AsInteger  := LoadNo ;
 FD_GetMaxLoadDetailNo.Open ;
 if not  FD_GetMaxLoadDetailNo.Eof then
   Result := FD_GetMaxLoadDetailNoMaxLoadDetailNo.AsInteger
    else
     Result := 0 ;
 Finally
  FD_GetMaxLoadDetailNo.Close ;
 End ;
End ;

procedure TdmLoadEntrySSPTemp.csdUnit_OpenLagerLookup ;
Begin
  With dmLoadEntrySSPTemp do
  Begin

   cds_PIP2.Active  := False ;
   cds_PIP2.ParamByName('OwnerNo').AsInteger      := cds_LoadHeadSupplierNo.AsInteger ;
   cds_PIP2.ParamByName('LegoOwnerNo').AsInteger  := ThisUser.CompanyNo ;
   cds_PIP2.Active  := True ;


   cds_LIP2.Active  := False ;
   if not cds_LoadHeadPIPNo.IsNull then
   cds_LIP2.ParamByName('PIPNo').AsInteger      := cds_LoadHeadPIPNo.AsInteger
   else
   cds_LIP2.ParamByName('PIPNo').AsInteger      := -1 ;
   cds_LIP2.Active  := True ;
  End ;
End ;


procedure TdmLoadEntrySSPTemp.cds_LoadHeadSupplierNoChange(Sender: TField);
begin
 csdUnit_OpenLagerLookup ;
 cds_DepartAdress.Active := False ;
 cds_DepartAdress.ParamByName('ClientNo').AsInteger  := cds_LoadHeadSupplierNo.AsInteger ;
 cds_DepartAdress.Active := True ; 
end;

procedure TdmLoadEntrySSPTemp.cds_LoadPackagesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  dmsSystem.FDoLog(E.Message + '  unit: ' + dmLoadEntrySSPTemp.Name) ;

  ShowMessage('Paketnumret ' + DataSet.FieldByName('PACKAGENO').AsString + ' är inte unikt i lasten.') ;

  Action  := daAbort ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadDelAdressAfterInsert(
  DataSet: TDataSet);
begin
 cds_LoadDelAdressLoadNo.AsInteger  := cds_LoadHeadLoadNo.AsInteger ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadHeadAfterScroll(DataSet: TDataSet);
begin
 cds_DepartAdress.Active := False ;
 cds_DepartAdress.ParamByName('ClientNo').AsInteger  := cds_LoadHeadSupplierNo.AsInteger ;
 cds_DepartAdress.Active := True ;

 cds_DelAdress.Active := False ;
 cds_DelAdress.ParamByName('ClientNo').AsInteger  := cds_LoadHeadCustomerNo.AsInteger ;
 cds_DelAdress.Active := True ;

 cds_LoadDelAdress.Active := False ;
 cds_LoadDelAdress.ParamByName('LoadNo').AsInteger  := cds_LoadHeadLoadNo.AsInteger ;
 cds_LoadDelAdress.Active := True ;
end;

procedure TdmLoadEntrySSPTemp.cds_LoadHeadCustomerNoChange(Sender: TField);
begin
 cds_DelAdress.Active := False ;
 cds_DelAdress.ParamByName('ClientNo').AsInteger  := cds_LoadHeadCustomerNo.AsInteger ;
 cds_DelAdress.Active := True ;
end;

end.
