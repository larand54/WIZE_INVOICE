unit dmcLoadEntry;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, SqlTimSt, Dialogs,
  VidaType, Variants, kbmMemTable, Forms, Controls ;

type
 TAmbiguityEvent = procedure(
    Sender : TObject;
    DataSource : TDataSource;
    var Choice : String3;
    var SupplierNo : Integer;
    var ProductNo : Integer;
    Var ProductLengthNo : Integer;
    Var NoOfLengths : Integer) of object;

  TdmLoadEntry = class(TDataModule)
    sq_LoadHead: TSQLQuery;
    dsp_LoadHead: TDataSetProvider;
    cds_LoadHead: TClientDataSet;
    ds_LoadHead: TDataSource;
    sq_Show_LoadShippingPlan: TSQLQuery;
    dsp_Show_LoadShippingPlan: TDataSetProvider;
    cds_Show_LoadShippingPlan: TClientDataSet;
    ds_mtLoadShippingPlan: TDataSource;
    cds_Show_LoadShippingPlanLO: TIntegerField;
    cds_Show_LoadShippingPlanSHIPPER: TStringField;
    cds_Show_LoadShippingPlanREADYDATE: TStringField;
    cds_Show_LoadShippingPlanVESSEL: TStringField;
    cds_Show_LoadShippingPlanETD: TSQLTimeStampField;
    cds_Show_LoadShippingPlanETA: TSQLTimeStampField;
    cds_Show_LoadShippingPlanSHIPPER_REF: TStringField;
    cds_Show_LoadShippingPlanSHIPPERID: TStringField;
    cds_Show_LoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField;
    cds_Show_LoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField;
    cds_Show_LoadShippingPlanORDERNO: TStringField;
    cds_Show_LoadShippingPlanORDERTYPE: TStringField;
    sq_GetLO_Records: TSQLQuery;
    mtLO_Records: TkbmMemTable;
    sq_GetLO_RecordsLO_NUMBER: TIntegerField;
    sq_GetLO_RecordsPKGCODE: TStringField;
    sq_GetLO_RecordsProductNo: TIntegerField;
    sq_GetLO_RecordsPRODUCTDESCRIPTION: TStringField;
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
    sq_GetLO_RecordsGRADESTAMP: TStringField;
    sq_GetLO_RecordsBARCODE: TStringField;
    sq_GetLO_RecordsWRAPTYPE: TStringField;
    sq_GetLO_RecordsPRESSURE_TREAT: TStringField;
    sq_GetLO_RecordsPKG_TAG: TStringField;
    sq_GetLO_RecordsPCSPERPKG: TIntegerField;
    mtLO_RecordsLO_NUMBER: TIntegerField;
    mtLO_RecordsPKGCODE: TStringField;
    mtLO_RecordsProductNo: TIntegerField;
    mtLO_RecordsPRODUCTDESCRIPTION: TStringField;
    mtLO_RecordsLENGTHDESC: TStringField;
    mtLO_RecordsNOOFUNITS: TFloatField;
    mtLO_RecordsVOLUNIT: TStringField;
    mtLO_RecordsPRICE: TFloatField;
    mtLO_RecordsPRICEUNIT: TStringField;
    mtLO_RecordsMIN_LENGTH: TFloatField;
    mtLO_RecordsMAX_LENGTH: TFloatField;
    mtLO_RecordsACT_THICK: TFloatField;
    mtLO_RecordsACT_WIDTH: TFloatField;
    mtLO_RecordsACT_LENGTH: TFloatField;
    mtLO_RecordsREFERENCE: TStringField;
    mtLO_RecordsProductLengthNo: TIntegerField;
    mtLO_RecordsLEV_PERIOD_START: TIntegerField;
    mtLO_RecordsLEV_PERIOD_END: TIntegerField;
    mtLO_RecordsORDERNO: TStringField;
    mtLO_RecordsFOHC: TFloatField;
    mtLO_RecordsMINIBUNDLEHEIGHT: TIntegerField;
    mtLO_RecordsMINIBUNDLEWIDTH: TIntegerField;
    mtLO_RecordsNOOFSTICKS: TIntegerField;
    mtLO_RecordsNOOFSTRAPS: TIntegerField;
    mtLO_RecordsCORNERPROT: TStringField;
    mtLO_RecordsPKGWIDTH: TIntegerField;
    mtLO_RecordsPKGHEIGHT: TIntegerField;
    mtLO_RecordsPET: TIntegerField;
    mtLO_RecordsMINIBUNDLE: TIntegerField;
    mtLO_RecordsSTRESSGRADE: TIntegerField;
    mtLO_RecordsFJ: TIntegerField;
    mtLO_RecordsPKGCUT: TIntegerField;
    mtLO_RecordsPET_TOL: TStringField;
    mtLO_RecordsPKGTYPE: TIntegerField;
    mtLO_RecordsNOTE: TMemoField;
    mtLO_RecordsSHRINKWRAP: TIntegerField;
    mtLO_RecordsPCSPERMINIBUNDLE: TIntegerField;
    mtLO_RecordsExtraID: TStringField;
    mtLO_RecordsGRADESTAMP: TStringField;
    mtLO_RecordsBARCODE: TStringField;
    mtLO_RecordsWRAPTYPE: TStringField;
    mtLO_RecordsPRESSURE_TREAT: TStringField;
    mtLO_RecordsPKG_TAG: TStringField;
    mtLO_RecordsPCSPERPKG: TIntegerField;
    ds_mtLO_Records: TDataSource;
    sq_GetLO_RecordsCustomerNo: TIntegerField;
    sq_GetLO_RecordsCustShipPlanDetailObjectNo: TIntegerField;
    mtLO_RecordsCustomerNo: TIntegerField;
    mtLO_RecordsCustShipPlanDetailObjectNo: TIntegerField;
    sq_LoadPackages: TSQLQuery;
    sq_LoadPackagesLoadDetailNo: TIntegerField;
    sq_LoadPackagesPACKAGENO: TIntegerField;
    sq_LoadPackagesNOOFPKG: TIntegerField;
    sq_LoadPackagesPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesSUPP_CODE: TStringField;
    sq_LoadPackagesPKGLOG: TStringField;
    sq_LoadPackagesM3_NET: TFloatField;
    sq_LoadPackagesPCS: TIntegerField;
    sq_LoadPackagesM3_NOM: TFloatField;
    sq_LoadPackagesKVM: TFloatField;
    sq_LoadPackagesLOPM: TFloatField;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesNOOFPKG: TIntegerField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesPKGLOG: TStringField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    mtLoadPackagesPcsPerLength: TStringField;
    ds_LoadPackages: TDataSource;
    sq_LoadPackagesPRODUCT: TStringField;
    mtLoadPackagesPRODUCT: TStringField;
    mtLO_RecordsMATCH: TBooleanField;
    ds_mtLoadDetailMatch: TDataSource;
    mtLoadDetailMatch: TkbmMemTable;
    mtLoadDetailMatchLoadNo: TIntegerField;
    mtLoadDetailMatchLoadDetailNo: TIntegerField;
    mtLoadDetailMatchSupplierShipPlanObjectNo: TIntegerField;
    mtLoadDetailMatchPackageNo: TIntegerField;
    mtLoadDetailMatchSupplierCode: TStringField;
    mtLoadDetailMatchCustShipPlanDetailObjectNo: TIntegerField;
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
    mtLoadShippingPlan: TkbmMemTable;
    mtLoadShippingPlanLoadNo: TIntegerField;
    sq_Show_LoadShippingPlanLoadNo: TIntegerField;
    sq_Show_LoadShippingPlanCustomerNo: TIntegerField;
    sq_Show_LoadShippingPlanShippingPlanNo: TIntegerField;
    sq_Show_LoadShippingPlanCUSTOMER: TStringField;
    sq_Show_LoadShippingPlanSHIPPER: TStringField;
    sq_Show_LoadShippingPlanREADYDATE: TStringField;
    sq_Show_LoadShippingPlanVESSEL: TStringField;
    sq_Show_LoadShippingPlanETD: TSQLTimeStampField;
    sq_Show_LoadShippingPlanETA: TSQLTimeStampField;
    sq_Show_LoadShippingPlanSHIPPER_REF: TStringField;
    sq_Show_LoadShippingPlanSHIPPERID: TStringField;
    sq_Show_LoadShippingPlanSHIPPERS_SHIPDATE: TSQLTimeStampField;
    sq_Show_LoadShippingPlanSHIPPERS_SHIPTIME: TSQLTimeStampField;
    sq_Show_LoadShippingPlanORDERNO: TStringField;
    sq_Show_LoadShippingPlanORDERTYPE: TStringField;
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
    sq_Show_LoadShippingPlanCreatedUser: TIntegerField;
    sq_Show_LoadShippingPlanModifiedUser: TIntegerField;
    sq_Show_LoadShippingPlanDateCreated: TSQLTimeStampField;
    mtLoadShippingPlanCreatedUser: TIntegerField;
    mtLoadShippingPlanModifiedUser: TIntegerField;
    mtLoadShippingPlanDateCreated: TSQLTimeStampField;
    sp_UpdatePackages: TSQLStoredProc;
    sq_LoadPackagesLONo: TIntegerField;
    mtLoadPackagesLONo: TIntegerField;
    mtLoadPackagesDefaultCustShipObjectNo: TIntegerField;
    cdsPkgsByInvOwner: TClientDataSet;
    cdsPkgsByInvOwnerPackageNo: TIntegerField;
    cdsPkgsByInvOwnerSupplierCode: TStringField;
    cdsPkgsByInvOwnerProductDisplayName: TStringField;
    cdsPkgsByInvOwnerSupplierNo: TIntegerField;
    cdsPkgsByInvOwnerLengthDescription: TStringField;
    dsrcPkgsByInvOwner: TDataSource;
    provPkgsByInvOwner: TDataSetProvider;
    sp_PksByInvOwner_O: TSQLStoredProc;
    sp_LoadWithPkg: TSQLStoredProc;
    sq_OnePkgDetailData: TSQLQuery;
    sq_OnePkgDetailDataPRODUCT: TStringField;
    sq_OnePkgDetailDataPACKAGENO: TIntegerField;
    sq_OnePkgDetailDataPACKAGETYPENO: TIntegerField;
    sq_OnePkgDetailDataSUPP_CODE: TStringField;
    sq_OnePkgDetailDataOnSticks: TIntegerField;
    sq_OnePkgDetailDataM3_NET: TFloatField;
    sq_OnePkgDetailDataPCS: TIntegerField;
    sq_OnePkgDetailDataM3_NOM: TFloatField;
    sq_OnePkgDetailDataKVM: TFloatField;
    sq_OnePkgDetailDataLOPM: TFloatField;
    sq_LO_LookUp: TSQLQuery;
    ds_LO_LookUp: TDataSource;
    cds_LO_LookUp: TClientDataSet;
    dsp_LO_LookUp: TDataSetProvider;
    cds_LO_LookUpShippingPlanNo: TIntegerField;
    cds_LO_LookUpCustomerNo: TIntegerField;
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
    sq_LoadHeadLoadNo: TIntegerField;
    sq_LoadHeadSupplierNo: TIntegerField;
    sq_LoadHeadLoadedDate: TSQLTimeStampField;
    sq_LoadHeadSenderLoadStatus: TIntegerField;
    sq_LoadHeadLoadID: TStringField;
    sq_LoadHeadMsgToShipper: TMemoField;
    sq_LoadHeadInternalNote: TMemoField;
    sq_LoadHeadPackageEntryOption: TIntegerField;
    sq_LoadHeadLocalShippingCompanyNo: TIntegerField;
    sq_LoadHeadLocalLoadingLocation: TIntegerField;
    sq_LoadHeadLocalDestinationNo: TIntegerField;
    sq_LoadHeadCreatedUser: TIntegerField;
    sq_LoadHeadModifiedUser: TIntegerField;
    sq_LoadHeadDateCreated: TSQLTimeStampField;
    sq_LoadHeadFS: TStringField;
    sq_LoadHeadOriginalSupplierNo: TIntegerField;
    sq_LoadHeadCustomerNo: TIntegerField;
    sq_LoadHeadNotering: TMemoField;
    sq_SaveLoadDetailMatch: TSQLQuery;
    qry_UpdateLOTSA: TSQLQuery;
    cdsPkgsByInvOwnerProductNo: TIntegerField;
    sq_LoadPackagesProductNo: TIntegerField;
    mtLoadPackagesProductNo: TIntegerField;
    sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    sq_GetLO_RecordsPRODUCTGROUPNO: TIntegerField;
    mtLO_RecordsPRODUCTGROUPNO: TIntegerField;
    sq_GetLO_RecordsGradeStampNo: TIntegerField;
    sq_GetLO_RecordsBarcodeID: TIntegerField;
    sq_GetLO_RecordsWrapTypeNo: TIntegerField;
    sq_GetLO_RecordsShrinkWrapNo: TIntegerField;
    mtLO_RecordsGradeStampNo: TIntegerField;
    mtLO_RecordsBarcodeID: TIntegerField;
    mtLO_RecordsWrapTypeNo: TIntegerField;
    mtLO_RecordsShrinkWrapNo: TIntegerField;
    sq_GetLO_RecordsINTERNPRODDESC: TStringField;
    sq_GetLO_RecordsNOM_THICK: TFloatField;
    sq_GetLO_RecordsNOM_WIDTH: TFloatField;
    mtLO_RecordsNOM_THICK: TFloatField;
    mtLO_RecordsNOM_WIDTH: TFloatField;
    mtLoadPackagesOriginalPkg: TBooleanField;
    sq_Booking_Data: TSQLQuery;
    sq_Booking_DataSHIPPER: TStringField;
    sq_Booking_DataREADYDATE: TStringField;
    sq_Booking_DataVESSEL: TStringField;
    sq_Booking_DataETD: TSQLTimeStampField;
    sq_Booking_DataETA: TSQLTimeStampField;
    sq_Booking_DataSHIPPER_REF: TStringField;
    sq_Booking_DataSHIPPERID: TStringField;
    sq_Booking_DataSHIPPERS_SHIPDATE: TSQLTimeStampField;
    sq_Booking_DataSHIPPERS_SHIPTIME: TSQLTimeStampField;
    sp_DeleteOneLoad: TSQLStoredProc;
    mtPkgLog: TkbmMemTable;
    mtPkgLogPACKAGETYPENO: TIntegerField;
    mtPkgLogRegistrationPointNo: TIntegerField;
    mtPkgLogOperation: TIntegerField;
    mtPkgLogLogicalInventoryPointNo: TIntegerField;
    mtPkgLogInventoryOperation: TIntegerField;
    mtPkgLogNoOfPackages: TIntegerField;
    sp_GetPkgInventory: TSQLStoredProc;
    sp_GetPkgInventoryLogicalInventoryPointNo: TIntegerField;
    mtLoadPackagesPkg_Function: TIntegerField;
    mtLoadPackagesPkg_State: TIntegerField;
    sp_DeletePackage: TSQLStoredProc;
    sp_PkgsByLogicalInv: TSQLStoredProc;
    dsp_PkgsByLogicalInv: TDataSetProvider;
    cds_PkgsByLogicalInv: TClientDataSet;
    ds_PkgsByLogicalInv: TDataSource;
    mtLoadShippingPlanSalesRegionNo: TIntegerField;
    cds_LO_LookUpSALESREGIONNO: TIntegerField;
    cds_LO_LookUpSALES_REGION: TStringField;
    sq_Show_LoadShippingPlanSalesRegionNo: TIntegerField;
    sq_Confirmed_Load: TSQLQuery;
    sq_Confirmed_LoadConfirmed_LoadNo: TIntegerField;
    sq_Confirmed_LoadConfirmed_ShippingPlanNo: TIntegerField;
    sq_Confirmed_LoadNewLoadNo: TIntegerField;
    sq_Confirmed_LoadNewShippingPlanNo: TIntegerField;
    sq_Confirmed_LoadDateCreated: TSQLTimeStampField;
    sq_Confirmed_LoadCreatedUser: TIntegerField;
    sq_Confirmed_LoadModifiedUser: TIntegerField;
    dspConfirmed_Load: TDataSetProvider;
    cdsConfirmed_Load: TClientDataSet;
    cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField;
    cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadNewLoadNo: TIntegerField;
    cdsConfirmed_LoadNewShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadDateCreated: TSQLTimeStampField;
    cdsConfirmed_LoadCreatedUser: TIntegerField;
    cdsConfirmed_LoadModifiedUser: TIntegerField;
    dsConfirmed_Load: TDataSource;
    sq_CheckLoadNo: TSQLQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sq_OnePkgDetailDataPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesPCS_PER_LENGTH: TStringField;
    sq_IsLoadDetails: TSQLQuery;
    sq_GetCurrLogInv: TSQLQuery;
    sq_GetCurrLogInvLogicalInventoryPointNo: TIntegerField;
    sp_ProcessPkgAND_Log: TSQLStoredProc;
    sq_OnePkgDetailDataNoOfLengths: TIntegerField;
    sq_OnePkgDetailDataProductLengthNo: TIntegerField;
    mtLoadPackagesNoOfLengths: TIntegerField;
    mtLoadPackagesProductLengthNo: TIntegerField;
    sq_LoadPackagesNoOfLengths: TIntegerField;
    sq_LoadPackagesProductLengthNo: TIntegerField;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupplierCode: TStringField;
    sq_GetPkgNos: TSQLQuery;
    sq_GetPkgNospackageno: TIntegerField;
    sq_GetPkgNossuppliercode: TStringField;
    sq_GetPkgNosproductno: TIntegerField;
    sq_GetPkgNosproductlengthno: TIntegerField;
    mtPkgNosproductno: TIntegerField;
    mtPkgNosproductlengthno: TIntegerField;
    mtLoadPackagesMFBM: TFloatField;
    sq_LoadPackagesMFBM: TFloatField;
    sq_OnePkgDetailDataMFBM: TFloatField;
    sq_OnePkgDetailDatapackagecodeno: TStringField;
    sq_LoadShippingPlan: TSQLQuery;
    sq_LoadShippingPlanLoadNo: TIntegerField;
    sq_LoadShippingPlanShippingPlanNo: TIntegerField;
    sq_LoadShippingPlanConfirmedByReciever: TWordField;
    sq_LoadShippingPlanConfirmedBySupplier: TWordField;
    sq_LoadShippingPlanCreatedUser: TIntegerField;
    sq_LoadShippingPlanModifiedUser: TIntegerField;
    sq_LoadShippingPlanDateCreated: TSQLTimeStampField;
    sq_LoadShippingPlanInvoiced: TIntegerField;
    sq_LoadShippingPlanLoadingLocationNo: TIntegerField;
    sq_LoadShippingPlanShipToInvPointNo: TIntegerField;
    dsp_LoadShippingPlan: TDataSetProvider;
    cds_LoadShippingPlan: TClientDataSet;
    cds_LoadShippingPlanLoadNo: TIntegerField;
    cds_LoadShippingPlanShippingPlanNo: TIntegerField;
    cds_LoadShippingPlanConfirmedByReciever: TSmallintField;
    cds_LoadShippingPlanConfirmedBySupplier: TSmallintField;
    cds_LoadShippingPlanCreatedUser: TIntegerField;
    cds_LoadShippingPlanModifiedUser: TIntegerField;
    cds_LoadShippingPlanDateCreated: TSQLTimeStampField;
    cds_LoadShippingPlanInvoiced: TIntegerField;
    cds_LoadShippingPlanLoadingLocationNo: TIntegerField;
    cds_LoadShippingPlanShipToInvPointNo: TIntegerField;
    mtLoadShippingPlanFunction: TIntegerField;
    sp_RemPkgFromLoad: TSQLStoredProc;
    sq_DeleteLoadDetailMatch: TSQLQuery;
    sq_LoadDetailMatch: TSQLQuery;
    sq_LoadDetailMatchLoadNo: TIntegerField;
    sq_LoadDetailMatchLoadDetailNo: TIntegerField;
    sq_LoadDetailMatchSupplierShipPlanObjectNo: TIntegerField;
    sq_LoadDetailMatchPackageNo: TIntegerField;
    sq_LoadDetailMatchSupplierCode: TStringField;
    sq_LoadDetailMatchCustShipPlanDetailObjectNo: TIntegerField;
    sq_SetLoadConfirmed: TSQLQuery;
    mtLoadPackagesMainGradeNo: TIntegerField;
    mtLoadPackagesSurfacingNo: TIntegerField;
    mtLoadPackagesSpeciesNo: TIntegerField;
    mtLoadPackagesACT_THICK: TFloatField;
    mtLoadPackagesACT_WIDTH: TFloatField;
    sq_LoadPackagesActualThicknessMM: TFloatField;
    sq_LoadPackagesActualWidthMM: TFloatField;
    sq_LoadPackagesSurfacingNo: TIntegerField;
    sq_LoadPackagesSpeciesNo: TIntegerField;
    sq_LoadPackagesMainGradeNo: TIntegerField;
    sq_LoadPackagesOverrideMatch: TIntegerField;
    mtLoadPackagesOverrideMatch: TIntegerField;
    sq_OnePkgDetailDataProductNo: TIntegerField;
    sq_OnePkgDetailDataActualThicknessMM: TFloatField;
    sq_OnePkgDetailDataActualWidthMM: TFloatField;
    sq_OnePkgDetailDataSurfacingNo: TIntegerField;
    sq_OnePkgDetailDataSpeciesNo: TIntegerField;
    sq_OnePkgDetailDataMainGradeNo: TIntegerField;
    mtLO_RecordsProductLengthGroupNo: TIntegerField;
    mtLO_RecordsMainGradeNo: TIntegerField;
    mtLO_RecordsSurfacingNo: TIntegerField;
    mtLO_RecordsSpeciesNo: TIntegerField;
    sq_GetLO_RecordsProductLengthGroupNo: TIntegerField;
    sq_GetLO_RecordsINCH_THICK: TStringField;
    sq_GetLO_RecordsINVCH_WIDTH: TStringField;
    sq_GetLO_RecordsSurfacingNo: TIntegerField;
    sq_GetLO_RecordsSpeciesNo: TIntegerField;
    sq_GetLO_RecordsMainGradeNo: TIntegerField;
    mtLO_RecordsINCH_THICK: TFloatField;
    mtLO_RecordsINCH_WIDTH: TFloatField;
    sp_UpdateLoadDtl: TSQLStoredProc;
    sp_vida_UpdateLoadDetailPkgLength: TSQLStoredProc;
    sq_LoadPackagesALMM: TFloatField;
    sq_OnePkgDetailDataALMM: TFloatField;
    mtLoadPackagesALMM: TFloatField;
    mtLoadPackagesPKG_OK: TIntegerField;
    sq_LoadPackagesPKG_OK: TIntegerField;
    mtLO_RecordsPackageTypeNo: TIntegerField;
    sq_GetLO_RecordsPackageTypeNo: TIntegerField;
    mtLoadPackagesLIPNo: TIntegerField;
    sq_LoadPackagesLIPNo: TIntegerField;
    sq_OnePkgDetailDataLIPNo: TIntegerField;
    mtLoadPackagesChanged: TBooleanField;
    sq_LoadHeadLoadOK: TIntegerField;
    cds_LoadHeadLoadOK: TIntegerField;
    sq_GetLO_RecordsKR_Ref: TStringField;
    sp_PksByInvOwner: TSQLQuery;
    SQLQuery2: TSQLQuery;
    procedure mtLO_RecordsBeforeDelete(DataSet: TDataSet);
    procedure cds_LoadShippingPlanReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure cds_LoadHeadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ds_LoadPackagesDataChange(Sender: TObject; Field: TField);
    procedure ds_mtLoadShippingPlanDataChange(Sender: TObject;
      Field: TField);
    procedure mtLoadPackagesBeforeDelete(DataSet: TDataSet);
    procedure mtLoadPackagesBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtLoadPackagesAfterInsert(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cds_LoadHeadSenderLoadStatusChange(Sender: TField);
  private
    { Private declarations }
   FOnAmbiguousPkgNo: TAmbiguityEvent;
   function  IS_Load_OK : Word ;
   procedure SaveLoadPkgs(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
   procedure SaveLoadLOTSA(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
   procedure RemoveDeletedLoadShippingPlans(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
   function  SaveLoadHeader(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer) : Boolean ;
   procedure ModifyLoadHeader(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
   procedure getPkgsByLogicalInventoryPointNo(PkgNo, LogicalInventoryPointNo : Integer);
   function  SP_CompletedLoadContaining(PkgNo: Integer; PkgSupplierCode : string3): Integer;

    procedure RemoveLoadDetailMatch(PkgNo: Integer;PkgSupplierCode : String3);
    procedure SaveLoadDetail(Sender: TObject; const WhenPosted : TDateTime;const LoadNo : Integer) ;
    procedure CleanUpLoadPkgsGrid(Sender: TObject);
    function  DeletePackage(Sender : TObject;LoadNo : Integer)  : Boolean ;
    procedure SetConfirmed_Load_Table(Sender: TObject;LoadNo : Integer) ;
    function  CheckIfLoadNoIsOK(LoadNo : Integer) : Boolean ;
    function  GetCurrencyLogicalInventoryPointNo : Integer ;
    procedure AddNewPackageToLoad(Sender : TObject;const Status, Operation, LogInvPointNo : Integer) ;
    procedure SaveLoadDetailMatch(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer) ;
    procedure RemovePkgFromLoad(Sender : TObject;const Status, Operation, LogInvPointNo, LoadNo : Integer) ;
    procedure UpdateLoadDtl(Sender: TObject; const WhenPosted : TDateTime;const LoadNo : Integer) ;
    procedure SaveLoadDetailPkgLength(Sender: TObject; const LoadNo:Integer) ;
  public
    { Public declarations }
   LoadStatus,
   GlobalLoadDetailNo : Integer ;
   LogicalTransferInventoryNo : Integer ;
   FSupplierNo, FCustomerNo, FSalesRegionNo   : integer;
   Function  DoesLOHavePackages (const LONo : Integer) : Boolean ;
   function  GetPkgsNos(const packagecodeno : String;const noofpkgs, LogicalInventoryPointNo : Integer) : Integer ;
   procedure DeleteONELoad(LoadNo : Integer);

   Procedure Get_LO_LinesMatched (PackageNo : Integer;Supp_Code : String3) ;
   procedure SaveLOData(LoadNo: Integer;Sender: TObject);
   function  PkgNoToSuppCode(
          PkgNo,
          LogicalInventoryPointNo: Integer;
          var SupplierNo : Integer;
          var ProductNo : Integer;
          Var ProductLengthNo, NoOfLengths : Integer): string3;
   function CompletedLoadContaining(PkgNo: Integer; PkgSupplierCode : string3): Integer;
   property OnAmbiguousPkgNo : TAmbiguityEvent read  FOnAmbiguousPkgNo write FOnAmbiguousPkgNo;
  end;

var
  dmLoadEntry: TdmLoadEntry;

implementation

uses dmsDataConn, VidaConst, VidaUser, recerror, dmsVidaContact ;

{$R *.dfm}

 Procedure TdmLoadEntry.Get_LO_LinesMatched (PackageNo : Integer;Supp_Code : String3) ;
 Begin
  Try
   mtLO_Records.DisableControls ;

   With dmLoadEntry do
   Begin
    mtLO_Records.First ;
    While not mtLO_Records.Eof do
    Begin
     mtLO_Records.Edit ;
     mtLO_RecordsMATCH.AsBoolean:= False ;
     mtLO_Records.Post ;
     mtLO_Records.Next ;
    End ;
    Try
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+IntToStr(PackageNo)+' AND SupplierCode = '''+Supp_Code+'''' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;

      While not mtLoadDetailMatch.Eof do
      Begin
      if mtLO_Records.FindKey([mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger]) then
      Begin
       mtLO_Records.Edit ;
       mtLO_RecordsMATCH.AsBoolean:= True ;
       mtLO_Records.Post ;
      End ;
      mtLoadDetailMatch.Next ;
      End ;
      Finally
      mtLoadDetailMatch.Filtered:= False ;
      End ;

   End ; //with
  Finally
   mtLO_Records.EnableControls ;
  End ;
 End ;

function TdmLoadEntry.CheckIfLoadNoIsOK(LoadNo : Integer) : Boolean ;
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


procedure TdmLoadEntry.SaveLOData(LoadNo: Integer;Sender: TObject);
// We have been passed data to be saved in the database. The data passed includes the original
// data(if any) and the modified/new data, so we can handle any concurrency issues that arise.
var
  TransactionNo : LongWord;
  WhenPosted : TDateTime;
  NewLoad : Boolean;
begin
  Try
  NewLoad := False;
  ds_LoadPackages.Enabled:= False ;
  WhenPosted := Now; // Make sure all records get same time of posting.

  if LoadNo < 1 { NEW_ENTRY } then
    Begin
     NewLoad := TRUE;
      LoadNo := dmsConnector.NextMaxNo('Loads');
     if CheckIfLoadNoIsOK(LoadNo) = False then
       Begin
        ShowMessage('Ett lastnummer saknas för tillfället, försök igen.') ;
        Exit ;
       End ;
    end ;


  TransactionNo := dmsConnector.StartTransaction;

  try
    if NewLoad = TRUE then
    Begin
      if SaveLoadHeader(Sender,WhenPosted, LoadNo) = False then
       Begin
        ShowMessage('A Load No conflict occured, please try save again or close the load form and try again.') ;
        dmsConnector.Rollback(TransactionNo);
        cds_LoadHead.Edit ;
        cds_LoadHeadLoadNo.AsInteger:= 0 ;
        cds_LoadHead.Post ;
        Exit ;
       End ;
    end
    else
     begin
    //Modify Existing load
      ModifyLoadHeader(Sender,WhenPosted, LoadNo);
     end; //Else

    try
      // Now write the data to the database
      SaveLoadLOTSA (Sender,WhenPosted, LoadNo); //LoadShippingPlan
      SaveLoadPkgs  (Sender,WhenPosted, LoadNo);
      RemoveDeletedLoadShippingPlans (Sender,WhenPosted, LoadNo);
      CleanUpLoadpkgsGrid(Sender) ;
      SetConfirmed_Load_Table(Sender, LoadNo) ;
      dmsConnector.Commit(TransactionNo);
    except
      on Exception do begin
        raise;
        end;
      end;

  except
    dmsConnector.Rollback(TransactionNo);
    raise;
    end;
  Finally
   ds_LoadPackages.Enabled:= True ;
  End ;

end;

//make an entry for the load that is confirmed
procedure TdmLoadEntry.SetConfirmed_Load_Table(Sender: TObject;LoadNo : Integer) ;
Begin
 sq_SetLoadConfirmed.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_SetLoadConfirmed.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
 sq_SetLoadConfirmed.ExecSQL(False) ;
End ;

function TdmLoadEntry.SaveLoadHeader(Sender: TObject; WhenPosted : TDateTime;LoadNo: Integer) : Boolean ;
const
  ALWAYS_ZERO = 0;
begin
 if cds_LoadHead.State = dsBrowse then
  cds_LoadHead.Edit ;
 cds_LoadHeadLoadNo.AsInteger:= LoadNo ;

 cds_LoadHeadSupplierNo.AsInteger:= FSupplierNo;

  cds_LoadHeadPackageEntryOption.AsInteger:= 0 ;
  cds_LoadHeadCreatedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadHeadModifiedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadHeadDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(Now) ;
  cds_LoadHeadOriginalSupplierNo.AsInteger:= FSupplierNo ;
  cds_LoadHeadCustomerNo.AsInteger:= FCustomerNo ;
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
  if cds_LoadHead.ApplyUpdates(0) > 0 then Result:= False
  else
  Result:= True ;
  End
  else
  Result:= True ;
end;

procedure TdmLoadEntry.ModifyLoadHeader(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
const
  ALWAYS_ZERO = 0;
begin
 if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;

  cds_LoadHead.Edit ;
  if cds_LoadHeadSenderLoadStatus.AsInteger <> 0 then
   cds_LoadHeadSenderLoadStatus.AsInteger:= IS_Load_OK ;

  cds_LoadHeadLoadOK.AsInteger:= IS_Load_OK ;   

  cds_LoadHeadModifiedUser.AsInteger:= ThisUser.UserID ;
  cds_LoadHead.Post ;

 if cds_LoadHead.ChangeCount > 0 then
  cds_LoadHead.ApplyUpdates(0) ;
end;

procedure TdmLoadEntry.SaveLoadLOTSA(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

 sq_LoadShippingPlan.ParamByName('LoadNo').AsInteger:= LoadNo ;
 cds_LoadShippingPlan.Active:= True ;
 mtLoadShippingPlan.First ;
 While not mtLoadShippingPlan.Eof do
 Begin
  if not cds_LoadShippingPlan.FindKey([mtLoadShippingPlanShippingPlanNo.AsInteger, LoadNo]) then
  Begin
   cds_LoadShippingPlan.Insert ;
   cds_LoadShippingPlanLoadNo.AsInteger:= LoadNo ;
   cds_LoadShippingPlanShippingPlanNo.AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cds_LoadShippingPlanConfirmedByReciever.AsInteger:= 0 ;
   cds_LoadShippingPlanConfirmedBySupplier.AsInteger:= 0 ;
   cds_LoadShippingPlanCreatedUser.AsInteger:= ThisUser.UserID ;
   cds_LoadShippingPlanModifiedUser.AsInteger:= ThisUser.UserID ;
   cds_LoadShippingPlanDateCreated.AsSQLTimeStamp:= DateTimeToSqlTimeStamp(WhenPosted) ;
   cds_LoadShippingPlanInvoiced.AsInteger:= 0 ;
   cds_LoadShippingPlan.Post ;
  End ;

  mtLoadShippingPlan.Next ;
 End ; //While
 if cds_LoadShippingPlan.ChangeCount > 0 then
  cds_LoadShippingPlan.ApplyUpdates(0) ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TdmLoadEntry.RemoveDeletedLoadShippingPlans(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
begin
 sq_LoadShippingPlan.ParamByName('LoadNo').AsInteger:= LoadNo ;
 cds_LoadShippingPlan.Active:= True ;
 mtLoadShippingPlan.First ;
 While not mtLoadShippingPlan.Eof do
 Begin
  if mtLoadShippingPlanFunction.AsInteger = 2 then
  Begin
   if cds_LoadShippingPlan.FindKey([mtLoadShippingPlanShippingPlanNo.AsInteger, LoadNo]) then
   cds_LoadShippingPlan.Delete ;
  End ;
  mtLoadShippingPlan.Next ;
 End ; //While
 if cds_LoadShippingPlan.ChangeCount > 0 then
  cds_LoadShippingPlan.ApplyUpdates(0) ;


 mtLoadShippingPlan.First ;
 While not mtLoadShippingPlan.Eof do
 Begin
  if mtLoadShippingPlanFunction.AsInteger = 2 then
   mtLoadShippingPlan.Delete
   else
    mtLoadShippingPlan.Next ;
 End ; //While
end;


procedure TdmLoadEntry.CleanUpLoadPkgsGrid(Sender: TObject);
begin
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
    Case mtLoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 mtLoadPackages.Edit ;
                                 mtLoadPackagesPkg_State.AsInteger:= EXISTING_PACKAGE ;
                                 mtLoadPackages.Post ;
                                 mtLoadPackages.Next ;
                                End ;
        DELETE_PKG            : Begin
                                 mtLoadPackages.Delete ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 mtLoadPackages.Delete ;
                                End ;
    End ; //case
  End; //While
end;

procedure TdmLoadEntry.SaveLoadDetail(Sender: TObject; const WhenPosted : TDateTime;const LoadNo : Integer) ;
begin
    sp_UpdatePackages.ParamByName('LoadNo'                 ).AsInteger  := LoadNo ;
    sp_UpdatePackages.ParamByName('LONo'                   ).AsInteger  := mtLoadPackagesLONo.AsInteger ;
    sp_UpdatePackages.ParamByName('LoadDetailNo'           ).AsInteger  := mtLoadPackagesLoadDetailNo.AsInteger ; //iDtl ; //mtLoadPackagesLoadDetailNo.AsInteger ;
    sp_UpdatePackages.ParamByName('PackageNo'              ).AsInteger  := mtLoadPackagesPackageNo.AsInteger ;
    sp_UpdatePackages.ParamByName('NoOfPackages'           ).AsInteger  := mtLoadPackagesNOOFPKG.AsInteger ;
    sp_UpdatePackages.ParamByName('PackageTypeNo'          ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger ;
    sp_UpdatePackages.ParamByName('SupplierCode'           ).AsString   := Trim(mtLoadPackagesSUPP_CODE.AsString);
    sp_UpdatePackages.ParamByName('PackageOK'              ).AsInteger  := mtLoadPackagesPKG_OK.AsInteger ;
    sp_UpdatePackages.ParamByName('Log'                    ).AsString   := mtLoadPackagesPKGLOG.AsString ;
    sp_UpdatePackages.ParamByName('DefaultLOLineNo'        ).AsInteger  := mtLoadPackagesDefaultCustShipObjectNo.AsInteger ;
    sp_UpdatePackages.ParamByName('CreatedUser'            ).AsInteger  := ThisUser.UserID;
    sp_UpdatePackages.ParamByName('ModifiedUser'           ).AsInteger  := ThisUser.UserID;
    sp_UpdatePackages.ParamByName('OverrideMatch'          ).AsInteger  := mtLoadPackagesOverrideMatch.AsInteger ;
    sp_UpdatePackages.ParamByName('LIPNo'                  ).AsInteger  := mtLoadPackagesLIPNo.AsInteger ;



       try
        sp_UpdatePackages.ExecProc;

      except
        on E : Exception do begin
         ShowMessage('ERROR SAVING PACKAGE DATA:');
          raise;
          end;
        end;


    Try
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+mtLoadPackagesPackageNo.AsString+' AND SupplierCode = '''+Trim(mtLoadPackagesSUPP_CODE.AsString)+'''' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;

    While not mtLoadDetailMatch.Eof do
    Begin
     sq_SaveLoadDetailMatch.ParamByName('LoadNo').AsInteger:= LoadNo ;
     sq_SaveLoadDetailMatch.ParamByName('LoadDetailNo').AsInteger:= mtLoadPackagesLoadDetailNo.AsInteger ; //iDtl ;
     sq_SaveLoadDetailMatch.ParamByName('SupplierShipPlanObjectNo').AsInteger:= mtLoadDetailMatchSupplierShipPlanObjectNo.AsInteger ;
     sq_SaveLoadDetailMatch.ParamByName('PackageNo').AsInteger:= mtLoadDetailMatchPackageNo.AsInteger ;
     sq_SaveLoadDetailMatch.ParamByName('SupplierCode').AsString:= mtLoadDetailMatchSupplierCode.AsString ;
     sq_SaveLoadDetailMatch.ParamByName('CustShipPlanDetailObjectNo').AsInteger:= mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger ;
     sq_SaveLoadDetailMatch.ExecSQL(False) ;
     mtLoadDetailMatch.Next ;
    End ; //while

    Finally
     mtLoadDetailMatch.Filtered:= False ;
    End ;
end;

procedure TdmLoadEntry.SaveLoadPkgs(Sender: TObject; WhenPosted : TDateTime;LoadNo:Integer);
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if mtLoadPackagesChanged.AsBoolean then
   Begin
   if mtLoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
   Begin
    Case mtLoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                 //No log operations as nothing happened with the package
                                 // UpdateLoadDtl sätter status och loggen
                                 UpdateLoadDtl(Sender, WhenPosted, LoadNo) ;
                                 SaveLoadDetailMatch(Sender, WhenPosted, LoadNo) ;
                                 SaveLoadDetailPkgLength(Sender, LoadNo) ;
                                End ;
        DELETE_PKG            : Begin
                                //DeletePackage proc also makes an entry to PackageNumberLog
                                 DeletePackage(Sender, LoadNo) ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                //Make an entry to PackageNumberLog and set pkgStatus = 1
                                 RemovePkgFromLoad(Sender, status_Pkg_IN_Inventory, oper_Remove_From_Load, LogicalTransferInventoryNo, LoadNo) ;
                                End ;
    End ; //case
   End //if mtLoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
   else //NEW_PACKAGE
   Begin
    Case mtLoadPackagesPkg_Function.AsInteger of
        ADD_PKG_TO_LOAD       : Begin
                                //Remove pkg from inventory pkgStatus = 0 and make entry in PackageNumberLog
                                //SaveLoadDetail makes entry to sp_UpdatePackages and LoadDetailMatch
                                 SaveLoadDetail(Sender, WhenPosted, LoadNo) ;
                                 SaveLoadDetailPkgLength(Sender, LoadNo) ;
                                 //Change packageNumber.status and make entry to PackageNumberLog
                                 AddNewPackageToLoad(Sender, status_Pkg_NOT_IN_Inventory, oper_Add_Pkg_To_Load, GetCurrencyLogicalInventoryPointNo) ;
//                                 iDtl:= Succ(iDtl) ;
                                End ;
        DELETE_PKG            : Begin
                                //DeletePackage proc also makes an entry to PackageNumberLog
                                 DeletePackage(Sender, LoadNo) ;
                                End ;
        REMOVE_PKG_FROM_LOAD  : Begin
                                 //Do nothing as package is still in inventory
                                 //no set pkg status is needed as it set to 1 already
                                End ;
    End ; //case
   End ;//   else //NEW_PACKAGE
  End ;//if...
  mtLoadPackages.Next ;
 end; //While
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TdmLoadEntry.RemovePkgFromLoad(Sender : TObject;const Status, Operation, LogInvPointNo, LoadNo : Integer) ;
Begin
      sp_RemPkgFromLoad.Close ;
      sp_RemPkgFromLoad.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
      sp_RemPkgFromLoad.ParamByName('RegistrationPointNo').AsInteger:= -1 ; // -1 ingen mätpunkt
      sp_RemPkgFromLoad.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('LogicalInventoryPointNo').AsInteger:= LogInvPointNo ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_RemPkgFromLoad.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
      sp_RemPkgFromLoad.ParamByName('Status').AsInteger:= Status ;
      sp_RemPkgFromLoad.ParamByName('Operation').AsInteger:= Operation ;
      sp_RemPkgFromLoad.ParamByName('LoadNo').AsInteger:= LoadNo ;

      sp_RemPkgFromLoad.ExecProc ;
End ;

procedure TdmLoadEntry.AddNewPackageToLoad(Sender : TObject;const Status, Operation, LogInvPointNo : Integer) ;
Begin
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('RegistrationPointNo').AsInteger:= -1 ; // -1 ingen mätpunkt
      sp_ProcessPkgAND_Log.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('LogicalInventoryPointNo').AsInteger:= LogInvPointNo ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('Status').AsInteger:= Status ;
      sp_ProcessPkgAND_Log.ParamByName('Operation').AsInteger:= Operation ;

      sp_ProcessPkgAND_Log.ExecProc ;
End ;

procedure TdmLoadEntry.SaveLoadDetailMatch(Sender: TObject; const WhenPosted : TDateTime;const LoadNo:Integer) ;
begin
 Try
 sq_DeleteLoadDetailMatch.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_DeleteLoadDetailMatch.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPackageNo.AsInteger ;
 sq_DeleteLoadDetailMatch.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
 sq_DeleteLoadDetailMatch.ExecSQL(False) ;

    mtLoadDetailMatch.Filter
     := 'PackageNo = '+mtLoadPackagesPackageNo.AsString+' AND SupplierCode = '''+Trim(mtLoadPackagesSUPP_CODE.AsString)+'''' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;

    While not mtLoadDetailMatch.Eof do
    Begin
     sq_SaveLoadDetailMatch.ParamByName('LoadNo').AsInteger:= LoadNo ;
     sq_SaveLoadDetailMatch.ParamByName('LoadDetailNo').AsInteger:= mtLoadPackagesLoadDetailNo.AsInteger ;
     sq_SaveLoadDetailMatch.ParamByName('SupplierShipPlanObjectNo').AsInteger:= mtLoadDetailMatchSupplierShipPlanObjectNo.AsInteger ;
     sq_SaveLoadDetailMatch.ParamByName('PackageNo').AsInteger:= mtLoadDetailMatchPackageNo.AsInteger ;
     sq_SaveLoadDetailMatch.ParamByName('SupplierCode').AsString:= mtLoadDetailMatchSupplierCode.AsString ;
     sq_SaveLoadDetailMatch.ParamByName('CustShipPlanDetailObjectNo').AsInteger:= mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger ;
     sq_SaveLoadDetailMatch.ExecSQL(False) ;
     mtLoadDetailMatch.Next ;
    End ; //while

 Finally
  mtLoadDetailMatch.Filtered:= False ;
 End ;

end;

function TdmLoadEntry.DeletePackage(Sender : TObject;LoadNo : Integer)  : Boolean ;
begin
 Result := False ;
   //Delete Package
 Try
 //Operation is set to 4 in the SP.
 sp_DeletePackage.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPackageNo.AsInteger ;
 sp_DeletePackage.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;

 sp_DeletePackage.ParamByName('RegistrationPointNo').AsInteger:= -1 ; // -1 ingen mätpunkt
 sp_DeletePackage.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
 sp_DeletePackage.ParamByName('LogicalInventoryPointNo').AsInteger:= GetCurrencyLogicalInventoryPointNo ;
 sp_DeletePackage.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
 sp_DeletePackage.ParamByName('LoadNo').AsInteger:= LoadNo ;

 sp_DeletePackage.ExecProc ;


 Except
  Result := False ;
 End ;
end;

function TdmLoadEntry.GetCurrencyLogicalInventoryPointNo : Integer ;
Begin
 sq_GetCurrLogInv.Close ;
 sq_GetCurrLogInv.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPackageNo.AsInteger ;
 sq_GetCurrLogInv.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
 sq_GetCurrLogInv.Open ;
 if not sq_GetCurrLogInv.Eof then
 Result:= sq_GetCurrLogInvLogicalInventoryPointNo.AsInteger
 else
 Result:= -1 ;
 sq_GetCurrLogInv.Close ;
End ;


function TdmLoadEntry.PkgNoToSuppCode(
  PkgNo,
  LogicalInventoryPointNo: Integer;
  var SupplierNo : Integer;
  Var ProductNo : Integer;
  Var ProductLengthNo, NoOfLengths : Integer): string3;
var
  SuppCode : string3;
begin
//LARS FIX Fortsatt har med att bara ga mot det lager som har valts
//Finns inte paktet dar kan vi visa var det finns
//samt ny sp vida_PkgsByLogicalInventoryPoint



  cds_PkgsByLogicalInv.Close ;
  getPkgsByLogicalInventoryPointNo(PkgNo, LogicalInventoryPointNo);
  cds_PkgsByLogicalInv.Open ;
  Case cds_PkgsByLogicalInv.RecordCount of

    0 :  begin
           // There are no packages in inventories owned by the specified owner that
           // have the specified package number.
           SuppCode := '';
           end;

    1 :  begin
           // There is only one package number with the specified package number in
           // inventories owned by the specified owner, so this must be the one
           // the user wants.
           SuppCode   := cds_PkgsByLogicalInv.FieldByName('SupplierCode').AsString;
           SupplierNo := cds_PkgsByLogicalInv.FieldByName('SupplierNo'  ).AsInteger;
           ProductNo  := cds_PkgsByLogicalInv.FieldByName('ProductNo'  ).AsInteger;
           ProductLengthNo:= cds_PkgsByLogicalInv.FieldByName('ProductLengthNo'  ).AsInteger ;
           NoOfLengths:= cds_PkgsByLogicalInv.FieldByName('NoOfLengths'  ).AsInteger ;

           end;
    else begin
           // More than one package in inventories owned by the specified owner has
           // the specified package number. (They must have different suppliers).
           // Allow the user to specify which one they want.
//LARS FIX Visa ocksa vilket lager det finns på, behövs det? för bara ett lager (det som valts kan accessas ju)
           if assigned(FOnAmbiguousPkgNo) then
             FOnAmbiguousPkgNo(Self,Self.ds_PkgsByLogicalInv,SuppCode,SupplierNo, ProductNo,
             ProductLengthNo, NoOfLengths);
           end;
    end;

  Result := SuppCode;
end;

procedure TdmLoadEntry.getPkgsByLogicalInventoryPointNo(PkgNo, LogicalInventoryPointNo : Integer);
begin
 sp_PkgsByLogicalInv.Close ;
 sp_PkgsByLogicalInv.ParamByName('PkgNo').AsInteger                     := PkgNo ;
 sp_PkgsByLogicalInv.ParamByName('LogicalInventoryPointNo').AsInteger   := LogicalInventoryPointNo ;
 sp_PkgsByLogicalInv.Open ;
end;

function TdmLoadEntry.CompletedLoadContaining(PkgNo: Integer; PkgSupplierCode : string3): Integer;
begin
  Result := SP_CompletedLoadContaining(PkgNo,PkgSupplierCode)
end;

function TdmLoadEntry.SP_CompletedLoadContaining(PkgNo: Integer; PkgSupplierCode : string3): Integer;
begin
  sp_LoadWithPkg.Close;
  sp_LoadWithPkg.ParamByName('PkgNo').AsInteger := PkgNo;
  sp_LoadWithPkg.ParamByName('SupplierCode').AsString := PkgSupplierCode;
  sp_LoadWithPkg.ExecProc;
  Result := sp_LoadWithPkg.ParamByName('LoadNo').AsInteger;
  sp_LoadWithPkg.Close;
end;


procedure TdmLoadEntry.mtLO_RecordsBeforeDelete(DataSet: TDataSet);
begin
   Try
    mtLoadDetailMatch.Filter
     := 'CustShipPlanDetailObjectNo = '+mtLO_RecordsCustShipPlanDetailObjectNo.AsString ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;
    While not mtLoadDetailMatch.Eof do
    Begin
      mtLoadDetailMatch.Delete ;
    End ; //while
   Finally
    mtLoadDetailMatch.Filtered:= False ;
   End ;
end;

procedure TdmLoadEntry.cds_LoadShippingPlanReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmLoadEntry.cds_LoadHeadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E) ;
end;

procedure TdmLoadEntry.ds_LoadPackagesDataChange(Sender: TObject;
  Field: TField);
begin
 dmLoadEntry.Get_LO_LinesMatched (mtLoadpackagesPackageNo.AsInteger,
 Trim(mtLoadPackagesSUPP_CODE.AsString)) ;
end;

procedure TdmLoadEntry.ds_mtLoadShippingPlanDataChange(Sender: TObject;
  Field: TField);
begin
 With dmsContact do
 Begin
  cdsAddressAndReference.Active:= False ;
  sp_AddressAndReference.Close ;
  sp_AddressAndReference.ParamByName('LO1').AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
  sp_AddressAndReference.Open ;
  cdsAddressAndReference.Active:= True ;
 End ; //with
end;

procedure TdmLoadEntry.RemoveLoadDetailMatch(PkgNo: Integer;PkgSupplierCode : String3);
begin
 With dmLoadEntry do
 Begin
   Try
     mtLoadDetailMatch.Filter
     := 'PackageNo = '+IntToStr(PkgNo)+' AND SupplierCode = '''+
     Trim(PkgSupplierCode)+'''' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;
    While not mtLoadDetailMatch.Eof do
    Begin
      mtLoadDetailMatch.Delete ;
    End ; //while
   Finally
    mtLoadDetailMatch.Filtered:= False ;
   End ;
 End ; //with
end;

procedure TdmLoadEntry.mtLoadPackagesBeforeDelete(DataSet: TDataSet);
begin
 RemoveLoadDetailMatch(dmLoadEntry.mtLoadPackagesPACKAGENO.AsInteger,
  Trim(dmLoadEntry.mtLoadPackagesSUPP_CODE.AsString)) ;
end;

procedure TdmLoadEntry.mtLoadPackagesBeforePost(DataSet: TDataSet);
begin
 if DataSet.FieldByName('PACKAGENO').AsInteger < 1 then
 Begin
  DataSet.Cancel ;
  Exit ;
 End ;

 if DataSet.FieldByName('LoadDetailNo').AsInteger < 1 then
 Begin
  DataSet.FieldByName('LoadDetailNo').AsInteger:= GlobalLoadDetailNo ;
  GlobalLoadDetailNo := Succ(GlobalLoadDetailNo) ;
 End ;

end;

procedure TdmLoadEntry.DataModuleCreate(Sender: TObject);
begin
 GlobalLoadDetailNo := 1 ;
 mtPkgLog.Active:= True ;
end;

procedure TdmLoadEntry.mtLoadPackagesAfterInsert(DataSet: TDataSet);
begin
 if cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  mtLoadPackages.Cancel ;
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;
 mtLoadPackagesOriginalPkg.AsBoolean    := False ;
 mtLoadPackagesPkg_State.AsInteger      := NEW_PACKAGE ;
 mtLoadPackagesPkg_Function.AsInteger   := ADD_PKG_TO_LOAD ;
 mtLoadPackagesOverrideMatch.AsInteger  := 0 ;
 mtLoadPackagesChanged.AsBoolean        := True ;
end;

function TdmLoadEntry.IS_Load_OK : Word ;
Begin
 Result := 2 ;
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
  if (mtLoadPackagesPKG_OK.AsInteger > 0) and (mtLoadPackagesPKG_OK.AsInteger <> VP_LengthNotInLengthGroup) then
   Result := 1 ;
  mtLoadPackages.Next ;
 End ;
End ;


procedure TdmLoadEntry.DeleteONELoad(LoadNo : Integer);
var
  TransactionNo : LongWord;
  Save_Cursor   : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  TransactionNo := dmsConnector.StartTransaction;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    sp_DeleteONELoad.ParamByName('LoadNo').AsInteger := LoadNo;
    sp_DeleteONEload.ExecProc;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    dmsConnector.Commit(TransactionNo);

  except
    dmsConnector.Rollback(TransactionNo);
    raise;
  end;
  Finally
   ds_LoadPackages.Enabled:= True ;
   Screen.Cursor := Save_Cursor ;
  End ;  
end;

procedure TdmLoadEntry.DataModuleDestroy(Sender: TObject);
begin
 mtPkgLog.Active:= False ;
end;

function TdmLoadEntry.GetPkgsNos(const packagecodeno : String;const noofpkgs, LogicalInventoryPointNo : Integer) : Integer ;
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
  if mtLoadPackages.FindKey([sq_GetPkgNospackageno.AsInteger, Trim(sq_GetPkgNossuppliercode.AsString)]) then
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

procedure TdmLoadEntry.UpdateLoadDtl(Sender: TObject; const WhenPosted : TDateTime;const LoadNo : Integer) ;
begin
    sp_UpdateLoadDtl.ParamByName('LoadDetailNo'           ).AsInteger  := mtLoadPackagesLoadDetailNo.AsInteger ;
    sp_UpdateLoadDtl.ParamByName('LoadNo'                 ).AsInteger  := LoadNo ;
    sp_UpdateLoadDtl.ParamByName('PackageOK'              ).AsInteger  := mtLoadPackagesPKG_OK.AsInteger ;
    sp_UpdateLoadDtl.ParamByName('Log'                    ).AsString   := mtLoadPackagesPKGLOG.AsString ;
    sp_UpdateLoadDtl.ParamByName('ModifiedUser'           ).AsInteger  := ThisUser.UserID;
    sp_UpdateLoadDtl.ParamByName('OverrideMatch'          ).AsInteger  := mtLoadPackagesOverrideMatch.AsInteger ;
    sp_UpdateLoadDtl.ParamByName('ShippingPlanNo'         ).AsInteger  := mtLoadPackagesLONo.AsInteger ;
    sp_UpdateLoadDtl.ParamByName('LIPNo'                  ).AsInteger  := mtLoadPackagesLIPNo.AsInteger ;
    try
     sp_UpdateLoadDtl.ExecProc;

    except
        on E : Exception do begin
         ShowMessage('ERROR UPDATING LOAD DETAILS:');
          raise;
          end;
    end;
end;

procedure TdmLoadEntry.SaveLoadDetailPkgLength(Sender: TObject; const LoadNo:Integer) ;
begin
 Try
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+mtLoadPackagesPackageNo.AsString+' AND SupplierCode = '''+Trim(mtLoadPackagesSUPP_CODE.AsString)+'''' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;

    While not mtLoadDetailMatch.Eof do
    Begin
     sp_vida_UpdateLoadDetailPkgLength.ParamByName('SupplierShipPlanObjectNo').AsInteger:= mtLoadDetailMatchSupplierShipPlanObjectNo.AsInteger ;
     sp_vida_UpdateLoadDetailPkgLength.ParamByName('CustShipPlanDetailObjectNo').AsInteger:= mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger ;
     sp_vida_UpdateLoadDetailPkgLength.ParamByName('LoadDetailNo').AsInteger:= mtLoadPackagesLoadDetailNo.AsInteger ;
     sp_vida_UpdateLoadDetailPkgLength.ParamByName('LoadNo').AsInteger:= LoadNo ;
     sp_vida_UpdateLoadDetailPkgLength.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
     sp_vida_UpdateLoadDetailPkgLength.ParamByName('Log').AsString:= mtLoadPackagesPKGLOG.AsString ;
     Try
     sp_vida_UpdateLoadDetailPkgLength.ExecProc ;
      except
        on E : Exception do begin
         ShowMessage('ERROR SAVING PACKAGE DATA:');
          raise;
          end;
        end;
     
     mtLoadDetailMatch.Next ;
    End ; //while

 Finally
  mtLoadDetailMatch.Filtered:= False ;
 End ;
end;

Function TdmLoadEntry.DoesLOHavePackages (const LONo : Integer) : Boolean ;
Begin
 mtLoadPackages.Filter:= 'LONo = '+IntToStr(LONo) ;
 mtLoadPackages.Filtered:= True ;
 Try
  Result:= mtLoadPackages.RecordCount > 0 ;
 Finally
  mtLoadPackages.Filtered:= False ;
 End ;
End ;


procedure TdmLoadEntry.cds_LoadHeadSenderLoadStatusChange(Sender: TField);
begin
 if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (LoadStatus <> 2) then
 Begin
  cds_LoadHeadLoadedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
 End ;
 LoadStatus:= cds_LoadHeadSenderLoadStatus.AsInteger ;
end;

end.
