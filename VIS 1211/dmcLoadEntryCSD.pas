unit dmcLoadEntryCSD;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, kbmMemTable, SqlTimSt,
  Dialogs,
  VidaType, Controls, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TAmbiguityEvent = procedure(Sender: TObject; DataSource: TDataSource;
    var Choice: String3; var SupplierNo: Integer; var ProductNo: Integer;
    Var ProductLengthNo: Integer; Var NoOfLengths: Integer) of object;

  TdmLoadEntryCSD = class(TDataModule)
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
    mtLoadShippingPlan: TkbmMemTable;
    mtLoadShippingPlanLoadNo: TIntegerField;
    mtLoadShippingPlanCustomerNo: TIntegerField;
    mtLoadShippingPlanShippingPlanNo: TIntegerField;
    mtLoadShippingPlanCUSTOMER: TStringField;
    mtLoadShippingPlanSHIPPER: TStringField;
    mtLoadShippingPlanREADYDATE: TStringField;
    mtLoadShippingPlanVESSEL: TStringField;
    mtLoadShippingPlanETD: TSQLTimeStampField;
    mtLoadShippingPlanETA: TSQLTimeStampField;
    mtLoadShippingPlanSHIPPER_REF: TStringField;
    mtLoadShippingPlanSHIPPERID: TStringField;
    mtLoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField;
    mtLoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField;
    mtLoadShippingPlanORDERNO: TStringField;
    mtLoadShippingPlanORDERTYPE: TStringField;
    mtLoadShippingPlanCreatedUser: TIntegerField;
    mtLoadShippingPlanModifiedUser: TIntegerField;
    mtLoadShippingPlanDateCreated: TSQLTimeStampField;
    mtLoadShippingPlanSalesRegionNo: TIntegerField;
    mtLoadShippingPlanFunction: TIntegerField;
    sq_GetLO_Records: TFDQuery;
    cdsLORows: TFDQuery;
    cds_LSP: TFDQuery;
    sq_PkgInLoad: TFDQuery;
    sq_Booking_Data: TFDQuery;
    sq_CheckLoadNo: TFDQuery;
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
    cds_LoadHeadPIPNo: TIntegerField;
    cds_LoadHeadLIPNo: TIntegerField;
    cds_LSPShipping: TIntegerField;
    cds_LSPLoadNo: TIntegerField;
    cds_LSPLoadingLocationNo: TIntegerField;
    cds_LSPShipToInvPointNo: TIntegerField;
    cds_LSPSalesRegionNo: TIntegerField;
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
    cds_LSPSalesRegion: TStringField;
    cds_LSPFunction: TIntegerField;
    cds_LSPLoadingPIPNo: TIntegerField;
    cds_LSPLoadingLIPNo: TIntegerField;
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
    cdsLORowsProductLengthGroupNo: TIntegerField;
    cdsLORowsINCH_THICK: TStringField;
    cdsLORowsINVCH_WIDTH: TStringField;
    cdsLORowsSurfacingNo: TIntegerField;
    cdsLORowsSpeciesNo: TIntegerField;
    cdsLORowsGradeNo: TIntegerField;
    cdsLORowsPackageTypeNo: TIntegerField;
    cdsLORowsMATCH: TIntegerField;
    cdsLORowsOverrideRL: TIntegerField;
    cdsLORowsProductCategoryNo: TIntegerField;
    cdsLORowsSupplierShipPlanObjectNo: TIntegerField;
    cdsLORowsVaruSlag: TIntegerField;
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
    sq_GetLO_RecordsFOHC: TFloatField;
    sq_GetLO_RecordsMINIBUNDLEHEIGHT: TIntegerField;
    sq_GetLO_RecordsMINIBUNDLEWIDTH: TIntegerField;
    sq_GetLO_RecordsNOOFSTICKS: TIntegerField;
    sq_GetLO_RecordsNOOFSTRAPS: TIntegerField;
    sq_GetLO_RecordsCORNERPROT: TStringField;
    sq_GetLO_RecordsPKGWIDTH: TIntegerField;
    sq_GetLO_RecordsPKGHEIGHT: TIntegerField;
    sq_GetLO_RecordsPET: TIntegerField;
    sq_GetLO_RecordsMINIBUNDLE: TIntegerField;
    sq_GetLO_RecordsSTRESSGRADE: TIntegerField;
    sq_GetLO_RecordsFJ: TIntegerField;
    sq_GetLO_RecordsPKGCUT: TIntegerField;
    sq_GetLO_RecordsPET_TOL: TStringField;
    sq_GetLO_RecordsPKGTYPE: TIntegerField;
    sq_GetLO_RecordsNOTE: TMemoField;
    sq_GetLO_RecordsSHRINKWRAP: TIntegerField;
    sq_GetLO_RecordsPCSPERMINIBUNDLE: TIntegerField;
    sq_GetLO_RecordsKR_Ref: TStringField;
    sq_GetLO_RecordsGRADESTAMP: TStringField;
    sq_GetLO_RecordsBARCODE: TStringField;
    sq_GetLO_RecordsWRAPTYPE: TStringField;
    sq_GetLO_RecordsPRESSURE_TREAT: TStringField;
    sq_GetLO_RecordsPKG_TAG: TStringField;
    sq_GetLO_RecordsPCSPERPKG: TIntegerField;
    sq_GetLO_RecordsPRODUCTGROUPNO: TIntegerField;
    sq_GetLO_RecordsGradeStampNo: TIntegerField;
    sq_GetLO_RecordsBarcodeID: TIntegerField;
    sq_GetLO_RecordsWrapTypeNo: TIntegerField;
    sq_GetLO_RecordsShrinkWrapNo: TIntegerField;
    sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField;
    sq_GetLO_RecordsNOM_THICK: TFloatField;
    sq_GetLO_RecordsNOM_WIDTH: TFloatField;
    sq_GetLO_RecordsProductLengthGroupNo: TIntegerField;
    sq_GetLO_RecordsINCH_THICK: TStringField;
    sq_GetLO_RecordsINVCH_WIDTH: TStringField;
    sq_GetLO_RecordsSurfacingNo: TIntegerField;
    sq_GetLO_RecordsSpeciesNo: TIntegerField;
    sq_GetLO_RecordsMainGradeNo: TIntegerField;
    sq_GetLO_RecordsPackageTypeNo: TIntegerField;
    sq_GetLO_RecordsOverrideRL: TIntegerField;
    sq_GetLO_RecordsProductCategoryNo: TIntegerField;
    sq_GetLO_Recordsdefsspno: TIntegerField;
    sq_GetLO_RecordsVaruSlag: TIntegerField;
    cdsPkgsByInvOwner: TFDQuery;
    cds_LO_LookUp: TFDQuery;
    cds_LoadPackages: TFDQuery;
    sq_GetPkgNos: TFDQuery;
    sq_OnePkgDetailData: TFDQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sq_Booking_DataSHIPPER: TStringField;
    sq_Booking_DataREADYDATE: TStringField;
    sq_Booking_DataVESSEL: TStringField;
    sq_Booking_DataETD: TSQLTimeStampField;
    sq_Booking_DataETA: TSQLTimeStampField;
    sq_Booking_DataSHIPPER_REF: TStringField;
    sq_Booking_DataSHIPPERID: TStringField;
    sq_Booking_DataSHIPPERS_SHIPDATE: TSQLTimeStampField;
    sq_Booking_DataSHIPPERS_SHIPTIME: TSQLTimeStampField;
    sq_PkgInLoadLastNr: TIntegerField;
    sq_PkgInLoadLO: TIntegerField;
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
    sq_OnePkgDetailDataVaruslag: TIntegerField;
    sq_GetPkgNospackageno: TIntegerField;
    sq_GetPkgNossuppliercode: TStringField;
    sq_GetPkgNosLogicalInventoryPointNo: TIntegerField;
    sq_GetPkgNosdatecreated: TSQLTimeStampField;
    sq_GetPkgNospackagetypeno: TIntegerField;
    sq_GetPkgNosproductno: TIntegerField;
    sq_GetPkgNosproductlengthno: TIntegerField;
    cds_LO_LookUpShipping: TIntegerField;
    cds_LO_LookUpSalesRegionNo: TIntegerField;
    cds_LO_LookUpShippingPlanNo: TIntegerField;
    cds_LO_LookUpCUSTOMER: TStringField;
    cds_LO_LookUpSHIPPER: TStringField;
    cds_LO_LookUpREADYDATE: TStringField;
    cds_LO_LookUpVESSEL: TStringField;
    cds_LO_LookUpETD: TSQLTimeStampField;
    cds_LO_LookUpETA: TSQLTimeStampField;
    cds_LO_LookUpSHIPPER_REF: TStringField;
    cds_LO_LookUpSHIPPERID: TStringField;
    cds_LO_LookUpSHIPPERS_SHIPDATE: TSQLTimeStampField;
    cds_LO_LookUpSHIPPERS_SHIPTIME: TSQLTimeStampField;
    cds_LO_LookUpORDERNO: TStringField;
    cds_LO_LookUpORDERTYPE: TStringField;
    cds_LO_LookUpCustomerNo: TIntegerField;
    cds_LO_LookUpSalesRegion: TStringField;
    cds_LO_LookUpFunction: TIntegerField;
    cds_LO_LookUpLoadingPIPNo: TIntegerField;
    cds_LO_LookUpLoadingLIPNo: TIntegerField;
    sq_IsLoadMadeInAvrop: TFDQuery;
    sq_IsLoadMadeInAvropConfirmed_LoadNo: TIntegerField;
    sq_IsLoadMadeInAvropNewLoadNo: TIntegerField;
    sp_DeleteOneLoad: TFDStoredProc;
    sp_RemPkgFromLoad: TFDStoredProc;
    sp_ProcessPkgAND_Log: TFDStoredProc;
    sp_DeletePackage: TFDStoredProc;
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
    cds_LoadPackagesM3_NET: TFloatField;
    cds_LoadPackagesPCS: TIntegerField;
    cds_LoadPackagesM3_NOM: TFloatField;
    cds_LoadPackagesMFBM: TFloatField;
    cds_LoadPackagesKVM: TFloatField;
    cds_LoadPackagesLOPM: TFloatField;
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
    cds_LoadPackagesOverrideRL: TIntegerField;
    cds_LoadPackagesProductCategoryNo: TIntegerField;
    cds_LoadPackagesVaruslag: TIntegerField;
    cds_LoadPackagesInvNr: TIntegerField;
    ds_LIP2: TDataSource;
    ds_PIP2: TDataSource;
    cds_PIP2: TFDQuery;
    cds_PIP2PIPNO: TIntegerField;
    cds_PIP2PIPNAME: TStringField;
    cds_LIP2: TFDQuery;
    cds_LIP2LIPNo: TIntegerField;
    cds_LIP2LIPName: TStringField;
    cds_LoadHeadPIP: TStringField;
    cds_LoadHeadLIP: TStringField;
    FD_GetMaxLoadDetailNo: TFDQuery;
    FD_GetMaxLoadDetailNoMaxLoadDetailNo: TIntegerField;
    sq_SortingOrderMarkedPkgs: TFDQuery;
    sq_Delete_SortingOrderMarkedPkgs: TFDQuery;
    sp_Vis_newCreditLoad: TFDStoredProc;
    sp_Vis_newCreditInvoice: TFDStoredProc;
    sq_VerkLoadExists: TFDQuery;
    sp_vis_CopyLOToInternalLO: TFDStoredProc;
    sp_Vis_CopyToInternalLO_Load: TFDStoredProc;
    sp_SetPkgStatusInLoad: TFDStoredProc;
    mtVerkforLO: TkbmMemTable;
    mtVerkforLOVerkNo: TIntegerField;
    mtVerkforLOShipToInvPointNo: TIntegerField;
    mtVerkforLOVERK: TStringField;
    mtVerkforLOLEVTILL: TStringField;
    mtVerkforLOLIPNo: TIntegerField;
    mtVerkforLOLIPName: TStringField;
    ds_mtVerkForLO: TDataSource;
    cds_Pref: TFDQuery;
    cds_PrefVATNo: TStringField;
    cds_PrefClientNo: TIntegerField;
    cds_PrefRoleType: TIntegerField;
    cds_PrefDefaultShippingAddressNo: TIntegerField;
    cds_PrefDefaultDeliveryTermsNo: TIntegerField;
    cds_PrefDefaultPaymentTermsNo: TIntegerField;
    cds_PrefDefaultCurrencyNo: TIntegerField;
    cds_PrefDefaultPriceUnitNo: TIntegerField;
    cds_PrefDefaultVolumeUnitNo: TIntegerField;
    cds_PrefInvoiceText: TStringField;
    cds_PrefDefaultAgentNo: TIntegerField;
    cds_PrefLoadingLocationNo: TIntegerField;
    cds_PrefLanguageCode: TIntegerField;
    cds_PrefProdDisplayFormat: TIntegerField;
    cds_PrefLengthFormat: TIntegerField;
    cds_PrefDefaultBillingAddressNo: TIntegerField;
    cds_PrefSequenceNo: TIntegerField;
    cds_PrefDateCreated: TSQLTimeStampField;
    cds_PrefCreatedUser: TSmallintField;
    cds_PrefModifiedUser: TSmallintField;
    cds_PrefPhone1: TStringField;
    cds_PrefPhone2: TStringField;
    cds_PrefPhone3: TStringField;
    cds_PrefFax: TStringField;
    cds_PrefEmail: TStringField;
    cds_PrefDefaultDestinationNo: TIntegerField;
    cds_PrefSendInvoiceToAgent: TSmallintField;
    cds_PrefVAT_OnInvoice: TSmallintField;
    cds_PrefCommisionInDiscount: TIntegerField;
    cds_PrefFreightInDiscount: TIntegerField;
    cds_PrefStatistikLandNr: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure ds_LoadPackages2DataChange(Sender: TObject; Field: TField);
    procedure dspLORowsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_LoadPackagesGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure ds_LSPDataChange(Sender: TObject; Field: TField);
    procedure cds_LoadPackages1PostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure dsp_LSPGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_LoadHeadAfterInsert(DataSet: TDataSet);
    procedure cds_LSPAfterInsert(DataSet: TDataSet);
    procedure cds_LoadHeadSenderLoadStatusChange(Sender: TField);
    procedure cds_LoadPackagesAfterInsert(DataSet: TDataSet);
    procedure cds_LoadPackagesBeforePost(DataSet: TDataSet);
    procedure cds_LoadHeadPIPNoChange(Sender: TField);
    procedure cds_LoadHeadSupplierNoChange(Sender: TField);
    procedure cds_LoadPackagesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure mtVerkforLOVerkNoChange(Sender: TField);
    procedure mtVerkforLOShipToInvPointNoChange(Sender: TField);
  private
    { Private declarations }
    FOnAmbiguousPkgNo: TAmbiguityEvent;
    NewInternalInvoiceNo, NewLoadNo: Integer;
    Function  GetLIPNoForCityNo(const CityNo, OwnerNo : Integer) : Integer ;
    procedure SetAllPkgsInLoadToNotActiveInInventory(const LoadNo: Integer);
    procedure AddPkgsToTempTable;
    function DuplicatePackageNo(const PackageNo: Integer;
      const Prefix: String): Boolean;
    function PkgExistInLoad: Boolean;
    function IS_Load_OK: Word;
    procedure SaveLoadPkgs(const WhenPosted: TDateTime; const LoadNo: Integer);
    function SaveLoadHeader(const WhenPosted: TDateTime;
      const LoadNo: Integer): Boolean;
    procedure ModifyLoadHeader(const WhenPosted: TDateTime;
      const LoadNo: Integer);
    procedure getPkgsByInvOwner(const PkgNo, InventoryOwner, PIPNo: Integer);
    function DeletePackage(LoadNo: Integer): Boolean;
    function CheckIfLoadNoIsOK(const LoadNo: Integer): Boolean;
    procedure ProcessPkgAND_Log(const Status, Operation: Integer);
    function Is_Load_Confirmed(const LoadNo: Integer): Boolean;
    procedure RemovePkgFromLoad(const Status, Operation: Integer);

  public
    { Public declarations }
    LoadStatus, InventoryNo,
    // GlobalLoadDetailNo : Integer ;
    FSalesRegionNo, LogicalTransferInventoryNo, FCustomerNo: Integer;
    pIsLoadInvoiced: Boolean;
    procedure GetPref_ForVerk ;
    function  CreateVerkLoad(const NewLO, OldLO: Integer): Integer;
    function  CreateInternalLO(const CustomerNo, ShipToCityNo, ShipToLIPNo, OldLoadNo, OldLONo: Integer): Integer;
    function  VerkLoadExists(const LoadNo: Integer): Integer;
    procedure CreateCreditInvoice;
    procedure CreateCreditLoad;
    procedure Delete_SortingOrderMarkedPkgs;
    procedure csdUnit_OpenLagerLookup;
    Function  GetMaxLoadDetailNoMaxLoadDetailNo(const LoadNo: Integer): Integer;
    Function  IsLoadMadeInAvrop(const LoadNo: Integer): Boolean;
    Function  DoesLOHavePackages(const LONo: Integer): Boolean;
    function  GetPkgsNos(const packagecodeno: String;
      const noofpkgs, LogicalInventoryPointNo: Integer): Integer;
    procedure DeleteONELoad(const LoadNo: Integer);
    function  IS_Packages_OK: Boolean;
    Procedure Get_LO_LinesMatched(const PackageNo: Integer;
      const Supp_Code: String3);
    procedure SaveLOData(LoadNo: Integer);
    function  PkgNoToSuppCode(const PkgNo, InventoryOwner, PIPNo: Integer;
      var SupplierNo: Integer; var ProductNo: Integer;
      Var ProductLengthNo, NoOfLengths: Integer): String3;
    property OnAmbiguousPkgNo: TAmbiguityEvent read FOnAmbiguousPkgNo
      write FOnAmbiguousPkgNo;
  end;

var
  dmLoadEntryCSD: TdmLoadEntryCSD;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}

// Set checkbox on LO Lines when package rows change
Procedure TdmLoadEntryCSD.Get_LO_LinesMatched(const PackageNo: Integer;
  const Supp_Code: String3);
Begin
  if (cdsLORows.RecordCount > 0) and (cds_LoadPackages.RecordCount > 0) then
  Begin
    Try

      cdsLORows.DisableControls;
      With dmLoadEntryCSD do
      Begin
        // Sätt current match till 0, vi vill bara se en LO rad kryssad i match kolumnen
        if cdsLORows.State in [dsEdit, dsInsert] then
          cdsLORows.Post;
        cdsLORows.Filter := 'Match = 1';
        cdsLORows.Filtered := True;
        Try
          cdsLORows.First;
          While not cdsLORows.Eof do
          Begin
            cdsLORows.Edit;
            cdsLORowsMATCH.AsInteger := 0;
            cdsLORows.Post;
            // cdsLORows.Next ;
          End;
        Finally
          cdsLORows.Filtered := False;
        End;

        if cdsLORows.FindKey([cds_LoadPackagesDefaultCustShipObjectNo.AsInteger])
        then
        Begin
          cdsLORows.Edit;
          cdsLORowsMATCH.AsInteger := 1;
          cdsLORows.Post;
        End
        else
        Begin
          cdsLORows.Edit;
          cdsLORowsMATCH.AsInteger := 0;
          cdsLORows.Post;
        End;
      End; // with
    Finally
      cdsLORows.EnableControls;
    End;
  End; // if...
End;

function TdmLoadEntryCSD.CheckIfLoadNoIsOK(const LoadNo: Integer): Boolean;
Begin
  sq_CheckLoadNo.Close;
  sq_CheckLoadNo.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_CheckLoadNo.Open;
  if sq_CheckLoadNoLoadNo.AsInteger = LoadNo then
    Result := False
  else
    Result := True;
  sq_CheckLoadNo.Close;
End;

procedure TdmLoadEntryCSD.SetAllPkgsInLoadToNotActiveInInventory
  (const LoadNo: Integer);
Begin
  Try
    sp_SetPkgStatusInLoad.ParamByName('@LoadNo').AsInteger := LoadNo;
    sp_SetPkgStatusInLoad.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_SetPkgStatusInLoad.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmLoadEntryCSD.SaveLOData(LoadNo: Integer);
// We have been passed data to be saved in the database. The data passed includes the original
// data(if any) and the modified/new data, so we can handle any concurrency issues that arise.
var
  WhenPosted: TDateTime;
  NewLoad: Boolean;
  Save_Cursor: TCursor;
begin
  NewLoad := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try

    WhenPosted := Now; // Make sure all records get same time of posting.
    // dmsConnector.StartTransaction;
    // try
    if NewLoad = True then
    Begin
      if SaveLoadHeader(WhenPosted, cds_LoadHeadLoadNo.AsInteger) = False then
      Begin
        ShowMessage
          ('A Load No conflict occured, please try save again or close the load form and try again.');
        // dmsConnector.Rollback;
        cds_LoadHead.Edit;
        cds_LoadHeadLoadNo.AsInteger := 0;
        cds_LoadHead.Post;
        Exit;
      End;
    end
    else
    begin
      // Modify Existing load
      ModifyLoadHeader(WhenPosted, LoadNo);
    end; // Else

    // try
    // Now write the data to the database
    if cds_LSP.ChangeCount > 0 then
    Begin
      cds_LSP.ApplyUpdates(0);
      cds_LSP.CommitUpdates;
    End;

    SaveLoadPkgs(WhenPosted, LoadNo);

    if cds_LoadPackages.ChangeCount > 0 then
    Begin
      cds_LoadPackages.ApplyUpdates(0);
      cds_LoadPackages.CommitUpdates;
    End;

    SetAllPkgsInLoadToNotActiveInInventory(LoadNo);

    { dmsConnector.Commit ;
      except
      on Exception do begin
      if NewLoad then
      LoadNo := NEW_ENTRY;
      raise;
      end;
      end;

      except
      dmsConnector.Rollback ;
      raise;
      end; }

  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

function TdmLoadEntryCSD.IS_Load_OK: Word;
Begin
  Result := 2;
  cds_LoadPackages.First;
  While not cds_LoadPackages.Eof do
  Begin
    if ((cds_LoadPackagesPackageOK.AsInteger > 0) and
      (cds_LoadPackagesPackageOK.AsInteger <> VP_LengthNotInLengthGroup) AND
      (dmLoadEntryCSD.cds_LoadPackagesPkg_Function.AsInteger <>
      REMOVE_PKG_FROM_LOAD))

      OR (cds_LoadPackagesDefaultCustShipObjectNo.AsInteger = -1)

      or ((cds_LoadPackagesShippingPlanNo.AsInteger < 1) AND
      (dmLoadEntryCSD.cds_LoadPackagesPkg_Function.AsInteger <>
      REMOVE_PKG_FROM_LOAD)) then
      Result := 1;
    cds_LoadPackages.Next;
  End;
End;

function TdmLoadEntryCSD.SaveLoadHeader(const WhenPosted: TDateTime;
  const LoadNo: Integer): Boolean;
const
  ALWAYS_ZERO = 0;
begin
  if cds_LoadHead.State = dsBrowse then
    cds_LoadHead.Edit;
  // cds_LoadHeadLoadNo.AsInteger              := LoadNo ;
  cds_LoadHeadSupplierNo.AsInteger := FSalesRegionNo;
  cds_LoadHeadPackageEntryOption.AsInteger := 0;
  cds_LoadHeadCreatedUser.AsInteger := ThisUser.UserID;
  cds_LoadHeadModifiedUser.AsInteger := ThisUser.UserID;
  cds_LoadHeadDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
  cds_LoadHeadOriginalSupplierNo.AsInteger := FSalesRegionNo;
  cds_LoadHeadCustomerNo.AsInteger := FCustomerNo;

  cds_LoadHead.Post;

  if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
  Begin
    cds_LoadHead.Edit;
    cds_LoadHeadSenderLoadStatus.AsInteger := IS_Load_OK;
    cds_LoadHead.Post;
  End;

  cds_LoadHead.Edit;
  cds_LoadHeadLoadOK.AsInteger := IS_Load_OK;
  cds_LoadHead.Post;

  if cds_LoadHead.ChangeCount > 0 then
  Begin
    if cds_LoadHead.ApplyUpdates(0) > 0 then
    Begin
      Result := False;
    End
    else
      Result := True;
  End
  else
    Result := True;
end;

procedure TdmLoadEntryCSD.ModifyLoadHeader(const WhenPosted: TDateTime;
  const LoadNo: Integer);
const
  ALWAYS_ZERO = 0;
begin
  if cds_LoadHead.State in [dsEdit, dsInsert] then
    cds_LoadHead.Post;
  cds_LoadHead.Edit;
  if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
    cds_LoadHeadSenderLoadStatus.AsInteger := IS_Load_OK;

  cds_LoadHeadLoadOK.AsInteger := IS_Load_OK;
  cds_LoadHeadModifiedUser.AsInteger := ThisUser.UserID;

  cds_LoadHeadSupplierNo.AsInteger := FSalesRegionNo;

  cds_LoadHeadOriginalSupplierNo.AsInteger := FSalesRegionNo;
  cds_LoadHeadCustomerNo.AsInteger := FCustomerNo;

  cds_LoadHead.Post;

  if cds_LoadHead.ChangeCount > 0 then
    if cds_LoadHead.ApplyUpdates(0) > 0 then
    Begin

    End
    else
      cds_LoadHead.CommitUpdates;
end;

Function TdmLoadEntryCSD.GetLIPNoForCityNo(const CityNo, OwnerNo : Integer) : Integer ;
Begin
 With dmsContact do
 Begin
  cds_GrpInv.Filter   := 'CityNo = ' + inttostr(CityNo) + ' AND OwnerNo = ' + inttostr(OwnerNo) ;
  cds_GrpInv.Filtered := True ;
  Try
  if cds_GrpInv.RecordCount >= 1 then
   Result:= cds_GrpInvLIPNo.AsInteger
    else
     Result:= -1 ;
  Finally
   cds_GrpInv.Filtered := False ;
  End ;
 End ;
End ;

procedure TdmLoadEntryCSD.mtVerkforLOShipToInvPointNoChange(Sender: TField);
Var LIPNo : Integer ;
begin
 mtVerkforLOLIPNo.Clear ;// .AsInteger   := -1 ;
 mtVerkforLOLIPName.AsString  := '' ;

 With dmsContact do
 Begin
   cds_GrpInv.Filter    := 'CityNo = ' + mtVerkforLOShipToInvPointNo.AsString + ' AND OwnerNo = ' + inttostr(mtVerkforLOVerkNo.AsInteger) ;
   cds_GrpInv.Filtered  :=  True ;
 End;

end;

procedure TdmLoadEntryCSD.mtVerkforLOVerkNoChange(Sender: TField);
begin
 //if cds_OrderHdrOrderType.AsInteger <> c_Sales then
//  mtVerkforLOShipToInvPointNo.AsInteger := -1;
// GetPref_ForVerk ;

 With dmsContact do
 Begin
  cds_PhysInvByCityNo.Filtered:= True ;
  Try
  if mtVerkforLOVerkNo.AsInteger > 0 then
   cds_PhysInvByCityNo.Filter:= 'OwnerNo = '  + mtVerkforLOVerkNo.AsString ;
  Except
   cds_PhysInvByCityNo.Filtered:= False ;
  End ;
 End ;
end;

procedure TdmLoadEntryCSD.SaveLoadPkgs(const WhenPosted: TDateTime;
  const LoadNo: Integer);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    Delete_SortingOrderMarkedPkgs;

    cds_LoadPackages.Filter := 'Changed = 1';
    cds_LoadPackages.Filtered := True;
    cds_LoadPackages.First;
    While cds_LoadPackages.RecordCount > 0 do
    Begin
      if cds_LoadPackagesChanged.AsInteger = 1 then
      Begin
        if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
        Begin
          Case cds_LoadPackagesPkg_Function.AsInteger of
            ADD_PKG_TO_LOAD:
              Begin
                // No log operations as nothing happened with the package
                // UpdateLoadDtl sätter status och loggen
                // UpdateLoadDtl(Sender, WhenPosted, LoadNo) ;
                // SaveLoadDetailMatch(Sender, WhenPosted, LoadNo) ;
                // SaveLoadDetailPkgLength(Sender, LoadNo) ;
                cds_LoadPackages.Edit;
                cds_LoadPackagesPkg_State.AsInteger := EXISTING_PACKAGE;
                cds_LoadPackagesChanged.AsInteger := 0;
                cds_LoadPackages.Post;
              End;
            DELETE_PKG:
              Begin
                // DeletePackage proc also makes an entry to PackageNumberLog
                DeletePackage(LoadNo);
                cds_LoadPackages.Delete;
              End;
            REMOVE_PKG_FROM_LOAD:
              Begin
                // Make an entry to PackageNumberLog and set pkgStatus = 1
                RemovePkgFromLoad(status_Pkg_IN_Inventory,
                  oper_Remove_From_Load);
                cds_LoadPackages.Delete;
              End;

            CREDIT_PKG_FROM_LOAD:
              Begin
                // Leave the package in the old load
                // Make an entry to PackageNumberLog and set pkgStatus = 1
                // RemovePkgFromLoad(status_Pkg_IN_Inventory, oper_Remove_From_Load) ;
                AddPkgsToTempTable;
                cds_LoadPackages.Edit;
                cds_LoadPackagesChanged.AsInteger := 0;
                cds_LoadPackages.Post;
                // cds_LoadPackages.Delete ;
              End;
          End; // case
        End
        else // NEW_PACKAGE
        Begin
          Case cds_LoadPackagesPkg_Function.AsInteger of
            ADD_PKG_TO_LOAD:
              Begin
                // Remove pkg from inventory pkgStatus = 0 and make entry in PackageNumberLog
                // SaveLoadDetail makes entry to sp_UpdatePackages and LoadDetailMatch
                // SaveLoadDetail(Sender, WhenPosted, LoadNo) ;
                // SaveLoadDetailPkgLength(Sender, LoadNo) ;
                // Change packageNumber.status and make entry to PackageNumberLog
                ProcessPkgAND_Log(status_Pkg_NOT_IN_Inventory,
                  oper_Add_Pkg_To_Load);

                // Package is now an existing package.
                cds_LoadPackages.Edit;
                cds_LoadPackagesPkg_State.AsInteger := EXISTING_PACKAGE;
                cds_LoadPackagesChanged.AsInteger := 0;
                cds_LoadPackages.Post;
              End;
            DELETE_PKG:
              Begin
                // DeletePackage proc also makes an entry to PackageNumberLog
                DeletePackage(LoadNo);
                cds_LoadPackages.Delete;
              End;
            REMOVE_PKG_FROM_LOAD:
              Begin
                // Do nothing as package is still in inventory
                // no set pkg status is needed as it set to 1 already
                cds_LoadPackages.Delete;
              End;
          End; // case
        End;

      End; // if..

      // cds_LoadPackages.Next ;
    end; // While
  Finally
    cds_LoadPackages.Filtered := False;
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TdmLoadEntryCSD.Delete_SortingOrderMarkedPkgs;
Begin
  sq_Delete_SortingOrderMarkedPkgs.ParamByName('UserID').AsInteger :=
    ThisUser.UserID;
  Try
    sq_Delete_SortingOrderMarkedPkgs.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmLoadEntryCSD.AddPkgsToTempTable;
Begin
  sq_SortingOrderMarkedPkgs.Active := False;
  sq_SortingOrderMarkedPkgs.ParamByName('UserID').AsInteger := ThisUser.UserID;
  sq_SortingOrderMarkedPkgs.Active := True;
  Try
    sq_SortingOrderMarkedPkgs.Insert;
    sq_SortingOrderMarkedPkgs.FieldByName('UserID').AsInteger :=
      ThisUser.UserID;
    sq_SortingOrderMarkedPkgs.FieldByName('PackageNo').AsInteger :=
      cds_LoadPackagesPACKAGENO.AsInteger;
    sq_SortingOrderMarkedPkgs.FieldByName('SupplierCode').AsString :=
      cds_LoadPackagesSupplierCode.AsString;
    sq_SortingOrderMarkedPkgs.Post;

  Finally
    sq_SortingOrderMarkedPkgs.Active := False;
  End;
End;

function TdmLoadEntryCSD.PkgNoToSuppCode(const PkgNo, InventoryOwner,
  PIPNo: Integer; var SupplierNo: Integer; Var ProductNo: Integer;
  Var ProductLengthNo, NoOfLengths: Integer): String3;
var
  SuppCode: String3;
begin
  cdsPkgsByInvOwner.Active := False;
  getPkgsByInvOwner(PkgNo, InventoryOwner, PIPNo);
  // cdsPkgsByInvOwner.SetProvider(provPkgsByInvOwner);
  cdsPkgsByInvOwner.Active := True;
  case cdsPkgsByInvOwner.RecordCount of

    0:
      begin
        // There are no packages in inventories owned by the specified owner that
        // have the specified package number.
        SuppCode := '';
      end;

    1:
      begin
        // There is only one package number with the specified package number in
        // inventories owned by the specified owner, so this must be the one
        // the user wants.
        SuppCode := cdsPkgsByInvOwner.FieldByName('SupplierCode').AsString;
        SupplierNo := cdsPkgsByInvOwner.FieldByName('SupplierNo').AsInteger;
        ProductNo := cdsPkgsByInvOwner.FieldByName('ProductNo').AsInteger;
        ProductLengthNo := cdsPkgsByInvOwner.FieldByName('ProductLengthNo')
          .AsInteger;
        NoOfLengths := cdsPkgsByInvOwner.FieldByName('NoOfLengths').AsInteger;
      end;
  else
    begin
      // More than one package in inventories owned by the specified owner has
      // the specified package number. (They must have different suppliers).
      // Allow the user to specify which one they want.
      if assigned(FOnAmbiguousPkgNo) then
        FOnAmbiguousPkgNo(Self, Self.dsrcPkgsByInvOwner, SuppCode, SupplierNo,
          ProductNo, ProductLengthNo, NoOfLengths);
    end;
  end;

  Result := SuppCode;
end;

procedure TdmLoadEntryCSD.getPkgsByInvOwner(const PkgNo, InventoryOwner,
  PIPNo: Integer);
begin
  // cdsPkgsByInvOwner.Close;
  cdsPkgsByInvOwner.ParamByName('PkgNo').AsInteger := PkgNo;
  cdsPkgsByInvOwner.ParamByName('InvOwner').AsInteger := InventoryOwner;
  cdsPkgsByInvOwner.ParamByName('PIPNo').AsInteger := PIPNo;
  // cdsPkgsByInvOwner.Open;
end;

procedure TdmLoadEntryCSD.DataModuleCreate(Sender: TObject);
begin
  // GlobalLoadDetailNo := 1 ;
end;

function TdmLoadEntryCSD.DeletePackage(LoadNo: Integer): Boolean;
begin
  Result := False;
  // Delete Package
  Try
    // Operation is set to 4 in the SP.
    // Kan inte ta bort paket från systemet om paketet finns upptaget på en annan last
    if PkgExistInLoad = False then
    Begin
      Try
        sp_DeletePackage.ParamByName('@PackageNo').AsInteger :=
          cds_LoadPackagesPACKAGENO.AsInteger;
        sp_DeletePackage.ParamByName('@SupplierCode').AsString :=
          cds_LoadPackagesSupplierCode.AsString;
        sp_DeletePackage.ParamByName('@RegistrationPointNo').AsInteger :=
          cds_LoadHeadLoadNo.AsInteger; // -1 ingen mätpunkt
        sp_DeletePackage.ParamByName('@PackageTypeNo').AsInteger :=
          cds_LoadPackagesPACKAGETYPENO.AsInteger;
        sp_DeletePackage.ParamByName('@LogicalInventoryPointNo')
          .AsInteger := -1;
        sp_DeletePackage.ParamByName('@UserID').AsInteger := ThisUser.UserID;
        sp_DeletePackage.ExecProc;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    End;

  Except
    Result := False;
  End;
end;

procedure TdmLoadEntryCSD.RemovePkgFromLoad(const Status, Operation: Integer);
Begin
  Try
    sp_RemPkgFromLoad.Close;
    sp_RemPkgFromLoad.ParamByName('@PackageNo').AsInteger :=
      cds_LoadPackagesPACKAGENO.AsInteger;
    sp_RemPkgFromLoad.ParamByName('@SupplierCode').AsString :=
      cds_LoadPackagesSupplierCode.AsString;
    sp_RemPkgFromLoad.ParamByName('@RegistrationPointNo').AsInteger :=
      cds_LoadHeadLoadNo.AsInteger; // -1 ingen mätpunkt
    sp_RemPkgFromLoad.ParamByName('@PackageTypeNo').AsInteger :=
      cds_LoadPackagesPACKAGETYPENO.AsInteger;
    sp_RemPkgFromLoad.ParamByName('@LogicalInventoryPointNo').AsInteger :=
      cds_LoadPackagesLIPNo.AsInteger;
    sp_RemPkgFromLoad.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_RemPkgFromLoad.ParamByName('@Status').AsInteger := Status;
    sp_RemPkgFromLoad.ParamByName('@Operation').AsInteger := Operation;
    sp_RemPkgFromLoad.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmLoadEntryCSD.ProcessPkgAND_Log(const Status, Operation: Integer);
Begin
  // Set PackageNumber.Status
  // Make entry to PackageNumberLog
  Try
    sp_ProcessPkgAND_Log.Close;
    sp_ProcessPkgAND_Log.ParamByName('@PackageNo').AsInteger :=
      cds_LoadPackagesPACKAGENO.AsInteger;
    sp_ProcessPkgAND_Log.ParamByName('@SupplierCode').AsString :=
      cds_LoadPackagesSupplierCode.AsString;
    sp_ProcessPkgAND_Log.ParamByName('@RegistrationPointNo').AsInteger :=
      cds_LoadHeadLoadNo.AsInteger; // -1 ingen mätpunkt
    sp_ProcessPkgAND_Log.ParamByName('@PackageTypeNo').AsInteger :=
      cds_LoadPackagesPACKAGETYPENO.AsInteger;
    sp_ProcessPkgAND_Log.ParamByName('@LogicalInventoryPointNo').AsInteger :=
      cds_LoadPackagesLIPNo.AsInteger;
    // mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
    sp_ProcessPkgAND_Log.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_ProcessPkgAND_Log.ParamByName('@Status').AsInteger := Status;
    sp_ProcessPkgAND_Log.ParamByName('@Operation').AsInteger := Operation;
    sp_ProcessPkgAND_Log.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmLoadEntryCSD.DeleteONELoad(const LoadNo: Integer);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    dmsConnector.StartTransaction;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    try
      Try
        sp_DeleteOneLoad.ParamByName('@LoadNo').AsInteger := LoadNo;
        sp_DeleteOneLoad.ExecProc;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      dmsConnector.Commit;
    except
      dmsConnector.Rollback;
      raise;
    end;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

function TdmLoadEntryCSD.Is_Load_Confirmed(const LoadNo: Integer): Boolean;
Begin
  Result := False;
  dmsSystem.sp_OneLoad.Close;
  dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  dmsSystem.sp_OneLoad.Open;
  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or
    (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
    Result := True;
  dmsSystem.sp_OneLoad.Close;
End;

function TdmLoadEntryCSD.IS_Packages_OK: Boolean;
begin
  cds_LoadPackages.DisableControls;
  Try
    Result := True;
    cds_LoadPackages.First;
    While not cds_LoadPackages.Eof do
    Begin
      if cds_LoadPackagesPACKAGENO.AsInteger < 1 then
      Begin
        Result := False;
        ShowMessage('Package number is missing in row ' +
          cds_LoadPackagesLoadDetailNo.AsString);
        Exit;
      End;
      if cds_LoadPackagesSupplierCode.AsString < '0' then
      Begin
        Result := False;
        ShowMessage('Package prefix is missing in row ' +
          cds_LoadPackagesLoadDetailNo.AsString);
        Exit;
      End;
      cds_LoadPackages.Next;
    End; // While
  Finally
    cds_LoadPackages.EnableControls;
  End;
end;

function TdmLoadEntryCSD.PkgExistInLoad: Boolean;
Begin
  sq_PkgInLoad.ParamByName('PackageNo').AsInteger :=
    cds_LoadPackagesPACKAGENO.AsInteger;
  sq_PkgInLoad.ParamByName('SupplierCode').AsString :=
    cds_LoadPackagesSupplierCode.AsString;
  sq_PkgInLoad.ParamByName('LoadNo').AsInteger := cds_LoadHeadLoadNo.AsInteger;
  sq_PkgInLoad.Open;
  if not sq_PkgInLoad.Eof then
  Begin
    cds_LoadPackages.Edit;
    cds_LoadPackagesProblemPackageLog.AsString := 'Pkt finns upptaget i lastnr '
      + sq_PkgInLoadLastNr.AsString + ' LO: ' + sq_PkgInLoadLO.AsString;
    cds_LoadPackages.Post;
    Result := True;
  End
  else
    Result := False;
  sq_PkgInLoad.Close;
End;

function TdmLoadEntryCSD.GetPkgsNos(const packagecodeno: String;
  const noofpkgs, LogicalInventoryPointNo: Integer): Integer;
Var
  x: Integer;
Begin
  x := 0;
  sq_GetPkgNos.ParamByName('packagecodeno').AsString := Trim(packagecodeno);
  sq_GetPkgNos.ParamByName('LogicalInventoryPointNo').AsInteger :=
    LogicalInventoryPointNo;
  sq_GetPkgNos.ParamByName('UserID').AsInteger := ThisUser.UserID;
  sq_GetPkgNos.Open;
  if not sq_GetPkgNos.Eof then
    While (not sq_GetPkgNos.Eof) and (noofpkgs > x) do
    begin
      if cds_LoadPackages.FindKey([sq_GetPkgNospackageno.AsInteger,
        Trim(sq_GetPkgNossuppliercode.AsString)]) then
      Begin
      End
      else
      begin
        mtPkgNos.Insert;
        mtPkgNosPackageNo.AsInteger := sq_GetPkgNospackageno.AsInteger;
        mtPkgNosSupplierCode.AsString := sq_GetPkgNossuppliercode.AsString;
        mtPkgNosproductlengthno.AsInteger :=
          sq_GetPkgNosproductlengthno.AsInteger;
        mtPkgNosproductno.AsInteger := sq_GetPkgNosproductno.AsInteger;
        mtPkgNos.Post;
        x := succ(x);
      End;
      sq_GetPkgNos.Next;
    end;
  sq_GetPkgNos.Close;
  Result := x;
End;

Function TdmLoadEntryCSD.DoesLOHavePackages(const LONo: Integer): Boolean;
Begin
  cds_LoadPackages.Filter := 'ShippingPlanNo = ' + IntToStr(LONo);
  cds_LoadPackages.Filtered := True;
  Try
    Result := cds_LoadPackages.RecordCount > 0;
  Finally
    cds_LoadPackages.Filtered := False;
  End;
End;

// Håller på med packagetypeno osv, se till att inga dubletter skapas!!!
procedure TdmLoadEntryCSD.ds_LoadPackages2DataChange(Sender: TObject;
  Field: TField);
begin
  dmLoadEntryCSD.Get_LO_LinesMatched(cds_LoadPackagesPACKAGENO.AsInteger,
    Trim(cds_LoadPackagesSupplierCode.AsString));
end;

procedure TdmLoadEntryCSD.dspLORowsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'LoadShippingPlan';
end;

procedure TdmLoadEntryCSD.dsp_LoadPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'LoadDetail';
end;

procedure TdmLoadEntryCSD.ds_LSPDataChange(Sender: TObject; Field: TField);
begin
  With dmsContact do
  Begin
    cdsAddressAndReference.Active := False;
    cdsAddressAndReference.Close;
    cdsAddressAndReference.ParamByName('@LO1').AsInteger :=
      cds_LSPShippingPlanNo.AsInteger;
    cdsAddressAndReference.Open;
    cdsAddressAndReference.Active := True;
  End; // with
end;

procedure TdmLoadEntryCSD.cds_LoadPackages1PostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ShowMessage('System Error. Package number ' + DataSet.FieldByName('PACKAGENO')
    .AsString + '/' + DataSet.FieldByName('SupplierCode').AsString +
    ' is already assigned to the load. ' + ' Original Message: ' + E.Message);
  Action := daAbort;
end;

procedure TdmLoadEntryCSD.dsp_LSPGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'LoadShippingPlan';
end;

Function TdmLoadEntryCSD.IsLoadMadeInAvrop(const LoadNo: Integer): Boolean;
Begin
  sq_IsLoadMadeInAvrop.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_IsLoadMadeInAvrop.Open;
  Try
    if not sq_IsLoadMadeInAvrop.Eof then
    Begin
      if sq_IsLoadMadeInAvropConfirmed_LoadNo.AsInteger <>
        sq_IsLoadMadeInAvropNewLoadNo.AsInteger then
        Result := False
      else
        Result := True;
    End
    else
      Result := True;
  Finally
    sq_IsLoadMadeInAvrop.Close;
  End;
End;

procedure TdmLoadEntryCSD.cds_LoadHeadAfterInsert(DataSet: TDataSet);
begin
  cds_LoadHeadLoadNo.AsInteger := dmsConnector.NextMaxNo('Loads');
  cds_LoadHeadDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
  cds_LoadHeadLoadAR.AsInteger := 1;
  cds_LoadHeadPackageEntryOption.AsInteger := 0;
  if CheckIfLoadNoIsOK(cds_LoadHeadLoadNo.AsInteger) = False then
  Begin
    cds_LoadHeadLoadNo.AsInteger := dmsConnector.NextMaxNo('Loads');
  End;
end;

procedure TdmLoadEntryCSD.cds_LSPAfterInsert(DataSet: TDataSet);
begin
  cds_LSPLoadNo.AsInteger := cds_LoadHeadLoadNo.AsInteger;
  // cds_LSPConfirmedByReciever.AsInteger:= 0 ;
  // cds_LSPConfirmedBySupplier.AsInteger:= 0 ;
  cds_LSPCreatedUser.AsInteger := ThisUser.UserID;
  cds_LSPModifiedUser.AsInteger := ThisUser.UserID;
  cds_LSPDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
end;

procedure TdmLoadEntryCSD.cds_LoadHeadSenderLoadStatusChange(Sender: TField);
begin
  { if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (LoadStatus <> 2) then
    Begin
    cds_LoadHeadLoadedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
    End ; }
  LoadStatus := cds_LoadHeadSenderLoadStatus.AsInteger;
end;

procedure TdmLoadEntryCSD.cds_LoadPackagesAfterInsert(DataSet: TDataSet);
begin
  if cds_LoadHeadLoadNo.AsInteger < 1 then
  Begin
    Abort;
    ShowMessage('Please save the load first.');
    Exit;
  End;
  cds_LoadPackagesPkg_State.AsInteger := NEW_PACKAGE;
  cds_LoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD;
  cds_LoadPackagesOverrideMatch.AsInteger := 0;
  cds_LoadPackagesChanged.AsInteger := 1;
  cds_LoadPackagesLoadNo.AsInteger := cds_LoadHeadLoadNo.AsInteger;
  cds_LoadPackagesCreatedUser.AsInteger := ThisUser.UserID;
  cds_LoadPackagesModifiedUser.AsInteger := ThisUser.UserID;
  cds_LoadPackagesDateCreated.AsSQLTimeStamp := DateTimeToSqlTimeStamp(Now);
  cds_LoadPackagesLoadDetailNo.AsInteger := dmsConnector.NextSecondMaxNo
    ('Loads', cds_LoadHeadLoadNo.AsInteger);
end;

procedure TdmLoadEntryCSD.cds_LoadPackagesBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('PACKAGENO').IsNull then
    Abort;
  { if DataSet.FieldByName('LoadDetailNo').AsInteger < 1 then
    Begin
    DataSet.FieldByName('LoadDetailNo').AsInteger:= GlobalLoadDetailNo ;
    GlobalLoadDetailNo := Succ(GlobalLoadDetailNo) ;
    End ; }
end;

procedure TdmLoadEntryCSD.cds_LoadHeadPIPNoChange(Sender: TField);
begin
  cds_LIP2.Active := False;
  if not cds_LoadHeadPIP.IsNull then
    cds_LIP2.ParamByName('PIPNo').AsInteger := cds_LoadHeadPIPNo.AsInteger
  else
    cds_LIP2.ParamByName('PIPNo').AsInteger := -1;
  cds_LIP2.Active := True;
end;

Function TdmLoadEntryCSD.GetMaxLoadDetailNoMaxLoadDetailNo
  (const LoadNo: Integer): Integer;
Begin
  Try
    FD_GetMaxLoadDetailNo.ParamByName('LoadNo').AsInteger := LoadNo;
    FD_GetMaxLoadDetailNo.Open;
    if not FD_GetMaxLoadDetailNo.Eof then
      Result := FD_GetMaxLoadDetailNoMaxLoadDetailNo.AsInteger
    else
      Result := 0;
  Finally
    FD_GetMaxLoadDetailNo.Close;
  End;
End;

procedure TdmLoadEntryCSD.csdUnit_OpenLagerLookup;
Begin
  With dmLoadEntryCSD do
  Begin
    cds_PIP2.Active := False;
    // if cds_LSPORDERTYPE.AsString = 'SALES' THEN
    cds_PIP2.ParamByName('OwnerNo').AsInteger :=
      cds_LoadHeadSupplierNo.AsInteger;
    // else
    // cds_PIP2.ParamByName('OwnerNo').AsInteger      := cds_LoadHeadCustomerNo.AsInteger ;
    cds_PIP2.Active := True;

    cds_LIP2.Active := False;
    if not cds_LoadHeadPIPNo.IsNull then
      cds_LIP2.ParamByName('PIPNo').AsInteger := cds_LoadHeadPIPNo.AsInteger
    else
      cds_LIP2.ParamByName('PIPNo').AsInteger := -1;
    cds_LIP2.Active := True;

    // cds_LoadHeadLIP.RefreshLookupList ;
  End;
End;

procedure TdmLoadEntryCSD.cds_LoadHeadSupplierNoChange(Sender: TField);
begin
  csdUnit_OpenLagerLookup;
end;

procedure TdmLoadEntryCSD.cds_LoadPackagesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  dmsSystem.FDoLog(E.Message + '  unit: ' + dmLoadEntryCSD.Name);

  ShowMessage('Package number ' + DataSet.FieldByName('PACKAGENO').AsString +
    ' is not unique in the load.');

  Action := daAbort;
end;

function TdmLoadEntryCSD.DuplicatePackageNo(const PackageNo: Integer;
  const Prefix: String): Boolean;
Var
  TempDataSet: TFDMemTable;
Begin
  TempDataSet := TFDMemTable.Create(nil);
  try
    { clone the real dataset with Reset set to True }
    { so that the current range is not cloned }
    // TempDataSet.CloneCursor(cdsLoads, True);
    TempDataSet.CloneCursor(cds_LoadPackages, False, False);

    TempDataSet.Filter := 'PackageNo = ' + IntToStr(PackageNo) +
      ' and SupplierCode = ' + QuotedStr(Prefix);
    TempDataSet.Filtered := True;
    if TempDataSet.RecordCount > 1 then
      Result := True
    else
      Result := False;

    { if TempDataSet.Locate('PackageNo;SupplierCode', VarArrayOf([PackageNo, Prefix]), []) then
      Result  := True
      else
      Result  := False ; }

  finally
    TempDataSet.Filtered := False;
    TempDataSet.Free; { free the temporary data set }
  end;
End;

procedure TdmLoadEntryCSD.CreateCreditLoad;
Begin
  Try
    sp_Vis_newCreditLoad.ParamByName('@OldLoadNo').AsInteger :=
      cds_LoadHeadLoadNo.AsInteger;
    sp_Vis_newCreditLoad.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_Vis_newCreditLoad.ExecProc;
    NewLoadNo := sp_Vis_newCreditLoad.ParamByName('@LoadNo').AsInteger
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmLoadEntryCSD.CreateCreditInvoice;
Begin
  Try
    sp_Vis_newCreditInvoice.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_Vis_newCreditInvoice.ParamByName('@OldLoadNo').AsInteger :=
      cds_LoadHeadLoadNo.AsInteger;
    sp_Vis_newCreditInvoice.ParamByName('@LoadNo').AsInteger := NewLoadNo;
    sp_Vis_newCreditInvoice.ExecProc;
    NewInternalInvoiceNo := sp_Vis_newCreditInvoice.ParamByName
      ('@InternalInvoiceNo').AsInteger
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmLoadEntryCSD.VerkLoadExists(const LoadNo: Integer): Integer;
Begin
  sq_VerkLoadExists.ParamByName('NewLoadNo').AsInteger := LoadNo;
  // Lasten vi öppnade
  sq_VerkLoadExists.Active := True;
  Try
    if (not sq_VerkLoadExists.Eof) and
      (sq_VerkLoadExists.FieldByName('Confirmed_LoadNo').AsInteger <> LoadNo)
    then
      Result := sq_VerkLoadExists.FieldByName('Confirmed_LoadNo').AsInteger
    else
      Result := -1;
  Finally
    sq_VerkLoadExists.Active := False;
  End;
End;

function TdmLoadEntryCSD.CreateInternalLO(const CustomerNo, ShipToCityNo, ShipToLIPNo, OldLoadNo, OldLONo: Integer): Integer;
Begin
  Try
    sp_vis_CopyLOToInternalLO.ParamByName('@CustomerNo').AsInteger   := CustomerNo ;
    sp_vis_CopyLOToInternalLO.ParamByName('@ShipToCityNo').AsInteger := ShipToCityNo ;
    sp_vis_CopyLOToInternalLO.ParamByName('@ShipToLIPNo').AsInteger  := ShipToLIPNo ;
    sp_vis_CopyLOToInternalLO.ParamByName('@OldLoadNo').AsInteger    := OldLoadNo ;
    sp_vis_CopyLOToInternalLO.ParamByName('@OldLO').AsInteger        := OldLONo;
    sp_vis_CopyLOToInternalLO.ParamByName('@UserID').AsInteger       := ThisUser.UserID;
    sp_vis_CopyLOToInternalLO.ExecProc;
    Result := sp_vis_CopyLOToInternalLO.ParamByName('@NewLO').AsInteger
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmLoadEntryCSD.CreateVerkLoad(const NewLO, OldLO: Integer): Integer;
Begin
  Try
    sp_Vis_CopyToInternalLO_Load.ParamByName('@LO').AsInteger := NewLO;
    sp_Vis_CopyToInternalLO_Load.ParamByName('@OldLoadNo').AsInteger :=
      NewLoadNo; // "OldLoad" this is the credit load that we copy some parts of
    sp_Vis_CopyToInternalLO_Load.ParamByName('@UserID').AsInteger :=
      ThisUser.UserID;
    sp_Vis_CopyToInternalLO_Load.ExecProc;
    Result := sp_Vis_CopyToInternalLO_Load.ParamByName('@LoadNo').AsInteger
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmLoadEntryCSD.GetPref_ForVerk ;
Begin
 cds_Pref.Active:= False ;
 Try
   cds_Pref.ParamByName('ClientNo').AsInteger:= mtVerkforLOVerkNo.AsInteger ;
   cds_Pref.ParamByName('RoleType').AsInteger:= cInternal_Mill ;
   cds_Pref.Active:= True ;
   if cds_Pref.RecordCount > 0 then
   Begin
//    dmsContact.cds_LL_Verk.Filter:= 'OwnerNo = '+mtVerkforLOVerkNo.AsString ;
    //mtVerkforLOLoadingLocationNo.AsInteger  := cds_PrefLoadingLocationNo.AsInteger ;
   End ;
 Finally
  cds_Pref.Active:= False ;
 End ;
End ;

end.
