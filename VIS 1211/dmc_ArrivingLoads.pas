unit dmc_ArrivingLoads;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable,
  Messages, Controls, Forms, Dialogs, SqlTimSt, Variants, vidatype,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type

  TAmbiguityEvent = procedure(Sender: TObject; DataSource: TDataSource;
    var Choice: String3) of object;

  TdmArrivingLoads = class(TDataModule)
    dsrcArrivingLoads: TDataSource;
    dsrcArrivingPackages: TDataSource;
    dsConfirmed_Load: TDataSource;
    mtLoadPackages: TkbmMemTable;
    mtLoadPackagesLONo: TIntegerField;
    mtLoadPackagesPRODUCT: TStringField;
    mtLoadPackagesLoadDetailNo: TIntegerField;
    mtLoadPackagesPACKAGENO: TIntegerField;
    mtLoadPackagesNOOFPKG: TIntegerField;
    mtLoadPackagesPACKAGETYPENO: TIntegerField;
    mtLoadPackagesSUPP_CODE: TStringField;
    mtLoadPackagesPKG_OK: TWordField;
    mtLoadPackagesPKGLOG: TStringField;
    mtLoadPackagesM3_NET: TFloatField;
    mtLoadPackagesPCS: TIntegerField;
    mtLoadPackagesM3_NOM: TFloatField;
    mtLoadPackagesKVM: TFloatField;
    mtLoadPackagesLOPM: TFloatField;
    mtLoadPackagesProductNo: TIntegerField;
    mtLoadPackagesDefaultCustShipObjectNo: TIntegerField;
    mtLoadPackagesPcsPerLength: TStringField;
    ds_LoadPackages: TDataSource;
    mtLoadShippingPlan: TkbmMemTable;
    mtLoadShippingPlanLoadNo: TIntegerField;
    mtLoadShippingPlanShippingPlanNo: TIntegerField;
    mtLoadShippingPlanAvrop_CustomerNo: TIntegerField;
    mtLoadShippingPlanLO_CustomerNo: TIntegerField;
    mtLoadPackagesLoadNo: TIntegerField;
    mtLoadRemovedPackages: TkbmMemTable;
    mtLoadRemovedPackagesLoadNo: TIntegerField;
    mtLoadRemovedPackagesLoadDetailNo: TIntegerField;
    mtLoadRemovedPackagesLONo: TIntegerField;
    mtLoadRemovedPackagesPACKAGENO: TIntegerField;
    mtLoadRemovedPackagesSUPP_CODE: TStringField;
    mtLoadRemovedPackagesPKG_OK: TWordField;
    mtLoadRemovedPackagesPKGLOG: TStringField;
    mtLoadRemovedPackagesPACKAGETYPENO: TIntegerField;
    mtLoadRemovedPackagesNOOFPKG: TIntegerField;
    mtLoadRemovedPackagesPRODUCT: TStringField;
    mtLoadRemovedPackagesPCS: TIntegerField;
    mtLoadRemovedPackagesM3_NET: TFloatField;
    mtLoadRemovedPackagesPcsPerLength: TStringField;
    mtLoadRemovedPackagesPkgsRemoved: TBooleanField;
    mtLoadRemovedPackagesM3_NOM: TFloatField;
    mtLoadRemovedPackagesKVM: TFloatField;
    mtLoadRemovedPackagesLOPM: TFloatField;
    mtLoadRemovedPackagesProductNo: TIntegerField;
    mtLoadRemovedPackagesDefaultCustShipObjectNo: TIntegerField;
    mtNewPackages: TkbmMemTable;
    mtNewPackagesPACKAGETYPENO: TIntegerField;
    mtNewPackagesLogicalInventoryPointNo: TIntegerField;
    mtNewPackagesNoOfPackages: TIntegerField;
    mtLoadPackagesRemoved: TBooleanField;
    mtLoadShippingPlanObjectType: TIntegerField;
    mtLoadShippingPlanOrderType: TIntegerField;
    mtLoadPackagesLogicalInventoryPointNo: TIntegerField;
    mtLoadShippingPlanNewLoadNo: TIntegerField;
    mtLoadRemovedPackagesLogicalInventoryPointNo: TIntegerField;
    ds_verkLaster: TDataSource;
    ds_VerkLastPkgs: TDataSource;
    mtLoadPackagesOverrideMatch: TIntegerField;
    mtLoadRemovedPackagesOverrideMatch: TIntegerField;
    mtLoadShippingPlanLIPNo: TIntegerField;
    mtLoadPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesGRADESTAMPNO: TIntegerField;
    mtLoadRemovedPackagesGRADESTAMPNO: TIntegerField;
    mtLoadRemovedPackagesBARCODE_ID: TIntegerField;
    mtLoadPackagesNEWPRODUCTNO: TIntegerField;
    mtLoadPackagesDefsspNo: TIntegerField;
    ds_LoadRow: TDataSource;
    mtLoadPackagesNEWPackageTypeNo: TIntegerField;
    dsrcPortArrivingLoads: TDataSource;
    dsrcPortArrivingPackages: TDataSource;
    mtLoadPackagesOverrideRL: TIntegerField;
    ds_PksByInventoryPlace: TDataSource;
    cdsArrivingLoads: TFDQuery;
    cdsArrivingLoadsLoadAR: TIntegerField;
    cdsArrivingLoadsCountryCode: TStringField;
    cdsArrivingLoadsLO: TIntegerField;
    cdsArrivingLoadsLOADNO: TIntegerField;
    cdsArrivingLoadsFS: TStringField;
    cdsArrivingLoadsLOADEDDATE: TSQLTimeStampField;
    cdsArrivingLoadsLOAD_STATUS: TIntegerField;
    cdsArrivingLoadsLOAD_ID: TStringField;
    cdsArrivingLoadsSUPPLIER: TStringField;
    cdsArrivingLoadsSUPPCODE: TStringField;
    cdsArrivingLoadsDESTINATION: TStringField;
    cdsArrivingLoadsORDER_NO: TStringField;
    cdsArrivingLoadsOBJECTTYPE: TIntegerField;
    cdsArrivingLoadsINVPOINTNO: TIntegerField;
    cdsArrivingLoadsINVPOINTNAME: TStringField;
    cdsArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsArrivingLoadsCUSTOMER: TStringField;
    cdsArrivingLoadsSUPPLIERNO: TIntegerField;
    cdsArrivingLoadsAVROP_CUSTOMERNO: TIntegerField;
    cdsArrivingLoadsAVROP_CUSTOMER: TStringField;
    cdsArrivingLoadsOBJECTTYPE_1: TIntegerField;
    cdsArrivingLoadsINITIALS: TStringField;
    cdsArrivingLoadsORDERTYPE: TIntegerField;
    cdsArrivingLoadsTYP: TStringField;
    cdsArrivingLoadsLOTYP: TStringField;
    cdsArrivingLoadsLOINI: TStringField;
    cdsArrivingLoadsLASTSTLLE: TStringField;
    cdsArrivingLoadsLipNo: TIntegerField;
    cdsArrivingLoadsTrading: TIntegerField;
    cdsArrivingLoadsARtillLager: TStringField;
    cdsArrivingPackages: TFDQuery;
    cdsArrivingPackagesProductLengthNo: TIntegerField;
    cdsArrivingPackagesLoadNo: TIntegerField;
    cdsArrivingPackagesLO: TIntegerField;
    cdsArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsArrivingPackagesSUPPLIERCODE: TStringField;
    cdsArrivingPackagesM3_NET: TFloatField;
    cdsArrivingPackagesM3_NOM: TFloatField;
    cdsArrivingPackagesPCS: TIntegerField;
    cdsArrivingPackagesMFBM: TFloatField;
    cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsArrivingPackagesPACKAGEOK: TIntegerField;
    cdsArrivingPackagesPACKAGE_LOG: TStringField;
    cdsArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsArrivingPackagesBC: TStringField;
    cdsArrivingPackagesGS: TStringField;
    cdsArrivingPackagesPRICE: TFloatField;
    cdsArrivingPackagesSubSum: TFloatField;
    cdsArrivingPackagesNLMM: TFloatField;
    cdsArrivingPackagesALMM: TFloatField;
    cdsArrivingPackagesPackageTypeNo: TIntegerField;
    sq_GetDefaultCSObjectNo: TFDQuery;
    cdsConfirmed_Load: TFDQuery;
    cdsConfirmed_LoadConfirmed_LoadNo: TIntegerField;
    cdsConfirmed_LoadConfirmed_ShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadNewLoadNo: TIntegerField;
    cdsConfirmed_LoadNewShippingPlanNo: TIntegerField;
    cdsConfirmed_LoadDateCreated: TSQLTimeStampField;
    cdsConfirmed_LoadCreatedUser: TIntegerField;
    cdsConfirmed_LoadModifiedUser: TIntegerField;
    cds_verkLaster: TFDQuery;
    cds_verkLasterLASTNR: TIntegerField;
    cds_verkLasterFS: TStringField;
    cds_verkLasterDATUM: TSQLTimeStampField;
    cds_verkLasterSTATUS: TIntegerField;
    cds_verkLasterLOAD_ID: TStringField;
    cds_verkLasterINT_DEST: TStringField;
    cds_verkLasterLASTSTALLE: TStringField;
    cds_verkLasterVERK: TStringField;
    cds_verkLasterINT_KUND: TStringField;
    cds_VerkLastPkgs: TFDQuery;
    cds_VerkLastPkgsLoadNo: TIntegerField;
    cds_VerkLastPkgsLO: TIntegerField;
    cds_VerkLastPkgsPACKAGE_NO: TIntegerField;
    cds_VerkLastPkgsSUPPLIERCODE: TStringField;
    cds_VerkLastPkgsM3_NET: TFloatField;
    cds_VerkLastPkgsM3_NOM: TFloatField;
    cds_VerkLastPkgsMFBM: TFloatField;
    cds_VerkLastPkgsPRODUCT_DESCRIPTION: TStringField;
    cds_VerkLastPkgsPCS: TIntegerField;
    cds_VerkLastPkgsPACKAGEOK: TIntegerField;
    cds_VerkLastPkgsPACKAGE_LOG: TStringField;
    cds_VerkLastPkgsLOAD_DETAILNO: TIntegerField;
    cds_VerkLastPkgsPSCPERLENGTH: TStringField;
    cdsOneLoad_TaBort: TFDQuery;
    sq_SetLoadAR: TFDQuery;
    sp_PackageTypes_tabort: TFDStoredProc;
    sp_NewPackageType_tabort: TFDStoredProc;
    sp_NewPackageDetail_tabort: TFDStoredProc;
    sp_ChangePkg_tabort: TFDStoredProc;
    sp_insPkgLog_tabort: TFDStoredProc;
    sp_PackageTypeDetail_tabort: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths_tabort: TFDStoredProc;
    sp_PackageTotals_tabort: TFDStoredProc;
    cds_Confirmed_Pkg_Log: TFDQuery;
    cds_Confirmed_Pkg_LogPackageNo: TIntegerField;
    cds_Confirmed_Pkg_LogSupplierCode: TStringField;
    cds_Confirmed_Pkg_LogConfirmed_LoadNo: TIntegerField;
    cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo: TIntegerField;
    cds_Confirmed_Pkg_LogNewLoadNo: TIntegerField;
    cds_Confirmed_Pkg_LogNewShippingPlanNo: TIntegerField;
    cds_Confirmed_Pkg_LogLogicalInventoryPointNo: TIntegerField;
    cds_Confirmed_Pkg_LogPackageTypeNo: TIntegerField;
    cds_Confirmed_Pkg_LogPackageStatus: TIntegerField;
    cds_Confirmed_Pkg_LogOperation: TIntegerField;
    cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo: TIntegerField;
    sq_RevertPkgs: TFDQuery;
    sq_CheckIfConfirmedPkgsValidInLoad: TFDQuery;
    sq_CheckIfConfirmedPkgsValidInLoadPACKAGENO: TIntegerField;
    sq_CheckPkgLog: TFDQuery;
    sq_CheckPkgLogPackageNo: TIntegerField;
    sq_CheckPkgLogSupplierCode: TStringField;
    sq_CheckPkgLogConfirmed_LoadNo: TIntegerField;
    sq_CheckPkgLogConfirmed_ShippingPlanNo: TIntegerField;
    sq_CheckPkgLogNewLoadNo: TIntegerField;
    sq_CheckPkgLogNewShippingPlanNo: TIntegerField;
    sq_CheckPkgLogLogicalInventoryPointNo: TIntegerField;
    sq_CheckPkgLogPackageTypeNo: TIntegerField;
    sq_CheckPkgLogPackageStatus: TIntegerField;
    sq_CheckPkgLogOperation: TIntegerField;
    sq_CheckPkgLogOld_LogicalInventoryPointNo: TIntegerField;
    sq_Get_LoadShippingPlan: TFDQuery;
    sq_Get_LoadShippingPlanLoadNo: TIntegerField;
    sq_Get_LoadShippingPlanShippingPlanNo: TIntegerField;
    sq_Get_LoadShippingPlanAVROP_CustomerNo: TIntegerField;
    sq_Get_LoadShippingPlanLO_CustomerNo: TIntegerField;
    sq_Get_LoadShippingPlanObjectType: TIntegerField;
    sq_Get_LoadShippingPlanOrderType: TIntegerField;
    sq_Get_LoadShippingPlanLIPNo: TIntegerField;
    sq_CheckIfConfirmedPkgsValidInInventory: TFDQuery;
    sq_ChkPkgs: TFDQuery;
    sq_ChkPkgsLoadNo: TIntegerField;
    sq_ChkPkgsLoggLoadNo: TIntegerField;
    sq_PkgInvoiced: TFDQuery;
    sq_InsertPkgNoLogg: TFDQuery;
    sq_GetVWCost: TFDQuery;
    sq_GetVWCostUnnamed1: TFloatField;
    sq_Get_VWLIPNo: TFDQuery;
    sq_Get_VWLIPNoVW_LIPNo: TIntegerField;
    sp_ArrivingLoads_Tabort: TFDStoredProc;
    sp_VerkLaster: TFDStoredProc;
    sp_CopyLOLoadToSales: TFDStoredProc;
    sp_CopyARIntAddLOLoad: TFDStoredProc;
    sp_ProcessPkgAND_Log: TFDStoredProc;
    sp_ChangeToIMPProduct: TFDStoredProc;
    sq_GetDefaultCSObjectNoCustShipPlanDetailObjectNo: TIntegerField;
    sq_GetPriceOfPriceList: TFDQuery;
    sq_GetPriceOfPriceListUnnamed1: TFloatField;
    sq_GetOLPrice: TFDQuery;
    sq_GetOLPriceInternalPrice: TFloatField;
    sq_GetOLPricePriceListNo: TIntegerField;
    cds_LoadRow: TFDQuery;
    cds_LoadRowLoadNo: TIntegerField;
    cds_LoadRowLoadDetailNo: TIntegerField;
    cds_LoadRowShippingPlanNo: TIntegerField;
    cds_LoadRowPackageNo: TIntegerField;
    cds_LoadRowSUPPLIERCODE: TStringField;
    cds_LoadRowm3Actual: TFloatField;
    cds_LoadRowm3Nominal: TFloatField;
    cds_LoadRowMFBMNominal: TFloatField;
    cds_LoadRowNoOfPieces: TIntegerField;
    cds_LoadRowProductLengthNo: TIntegerField;
    cds_LoadRowProductNo: TIntegerField;
    cds_LoadRowLoadedDate: TSQLTimeStampField;
    cds_LoadRowdefsspno: TIntegerField;
    cds_LoadRowObjectType: TIntegerField;
    cds_LoadRowPrice: TFloatField;
    cds_LoadRowPriceListNo: TIntegerField;
    cds_LoadRowPackageTypeNo: TIntegerField;
    cds_LoadRowSupplierNo: TIntegerField;
    cds_LoadRowSSP_SupplierNo: TIntegerField;
    cds_LoadRowSSP_CustomerNo: TIntegerField;
    cds_LoadRowFS: TStringField;
    cds_LoadRowInternKundFrakt: TFloatField;
    cds_LoadDtlVal: TFDQuery;
    cds_LoadDtlValLoadNo: TIntegerField;
    cds_LoadDtlValLoadDetailNo: TIntegerField;
    cds_LoadDtlValProductLengthNo: TIntegerField;
    cds_LoadDtlValPrice: TFloatField;
    cds_LoadDtlValSubsum: TFloatField;
    cds_LoadDtlValNM3: TFloatField;
    cds_LoadDtlValPaymentNo: TIntegerField;
    cds_LoadDtlValPaymentType: TIntegerField;
    cds_LoadDtlValPackageTypeNo: TIntegerField;
    cds_LoadDtlValSupplierNo: TIntegerField;
    cds_LoadDtlValLoadedDate: TSQLTimeStampField;
    cds_LoadDtlValOldPrice: TFloatField;
    cds_LoadDtlValVerk_FS: TStringField;
    cds_LoadDtlValCredited: TIntegerField;
    cdsLoadDetails: TFDQuery;
    cdsLoadDetailsLoadNo: TIntegerField;
    cdsLoadDetailsLoadDetailNo: TIntegerField;
    cdsLoadDetailsShippingPlanNo: TIntegerField;
    cdsLoadDetailsPackageNo: TIntegerField;
    cdsLoadDetailsSupplierCode: TStringField;
    cdsLoadDetailsPackageOK: TIntegerField;
    cdsLoadDetailsProblemPackageLog: TStringField;
    cdsLoadDetailsProductDisplayName: TStringField;
    cdsLoadDetailsTotalNoOfPieces: TIntegerField;
    cdsLoadDetailsTotalm3Actual: TFloatField;
    cdsLoadDetailsPackageTypeNo: TIntegerField;
    cdsLoadDetailsNoOfPackages: TIntegerField;
    cdsLoadDetailsCreatedUser: TIntegerField;
    cdsLoadDetailsModifiedUser: TIntegerField;
    cdsLoadDetailsDateCreated: TSQLTimeStampField;
    cdsLoadDetailsDefaultCustShipObjectNo: TIntegerField;
    cdsLoadDetailsOverrideMatch: TIntegerField;
    cdsLoadDetailsLIPNo: TIntegerField;
    cdsLoadDetailsDefsspno: TIntegerField;
    cdsLoadDetailsOverrideRL: TIntegerField;
    cdsLoadShippingPlan: TFDQuery;
    cdsLoadShippingPlanLoadNo: TIntegerField;
    cdsLoadShippingPlanShippingPlanNo: TIntegerField;
    cdsLoadShippingPlanConfirmedByReciever: TIntegerField;
    cdsLoadShippingPlanConfirmedBySupplier: TIntegerField;
    cdsLoadShippingPlanInvoiced: TIntegerField;
    cdsLoadShippingPlanCreatedUser: TIntegerField;
    cdsLoadShippingPlanModifiedUser: TIntegerField;
    cdsLoadShippingPlanDateCreated: TSQLTimeStampField;
    cdsPkgNumber: TFDQuery;
    cdsPkgNumberLoadDetailNo: TIntegerField;
    cdsPkgNumberLoadNo: TIntegerField;
    cdsPkgNumberShippingPlanNo: TIntegerField;
    cdsPkgNumberPackageNo: TIntegerField;
    cdsPkgNumberNoOfPackages: TIntegerField;
    cdsPkgNumberPackageTypeNo: TIntegerField;
    cdsPkgNumberSupplierCode: TStringField;
    cdsPkgNumberPackageOK: TIntegerField;
    cdsPkgNumberProblemPackageLog: TStringField;
    cdsPkgNumberCreatedUser: TIntegerField;
    cdsPkgNumberModifiedUser: TIntegerField;
    cdsPkgNumberDateCreated: TSQLTimeStampField;
    cdsPkgNumberDefaultCustShipObjectNo: TIntegerField;
    cdsPkgNumberOverrideMatch: TIntegerField;
    cdsPkgNumberLIPNo: TIntegerField;
    cdsPkgNumberDefsspno: TIntegerField;
    cdsPkgNumberOverrideRL: TIntegerField;
    cdsPkgNumberOldPackageTypeNo: TIntegerField;
    cdsPkgNumberPackageNo_1: TIntegerField;
    cdsPkgNumberPackageTypeNo_1: TIntegerField;
    cdsPkgNumberSupplierCode_1: TStringField;
    cdsPkgNumberLogicalInventoryPointNo: TIntegerField;
    cdsPkgNumberSupplierNo: TIntegerField;
    cdsPkgNumberStatus: TIntegerField;
    cdsPkgNumberSequenceNo: TIntegerField;
    cdsPkgNumberCreatedUser_1: TSmallintField;
    cdsPkgNumberModifiedUser_1: TSmallintField;
    cdsPkgNumberDateCreated_1: TSQLTimeStampField;
    cdsPkgNumberOriginal_Price: TFloatField;
    cdsPkgNumberOriginal_In_Date: TSQLTimeStampField;
    cdsPkgNumberUpdate_Price: TFloatField;
    cdsPkgNumberUpdate_Price_Date: TSQLTimeStampField;
    cdsPkgNumberCreatedOfPkgStr: TIntegerField;
    cdsPkgNumberAvgLengthType: TIntegerField;
    sq_GetxRateIntLoad: TFDQuery;
    sq_GetxRateExtLoad: TFDQuery;
    sq_DeleteNewLoadByOldLoadNo: TFDQuery;
    sq_IsLoadInvoiced: TFDQuery;
    sq_GetOLPriceForADDLO: TFDQuery;
    sq_LoadPackages: TFDQuery;
    sq_LoadPackagesLoadNo: TIntegerField;
    sq_LoadPackagesLONo: TIntegerField;
    sq_LoadPackagesPRODUCT: TStringField;
    sq_LoadPackagesLoadDetailNo: TIntegerField;
    sq_LoadPackagesPACKAGENO: TIntegerField;
    sq_LoadPackagesNOOFPKG: TIntegerField;
    sq_LoadPackagesPACKAGETYPENO: TIntegerField;
    sq_LoadPackagesSUPP_CODE: TStringField;
    sq_LoadPackagesPKG_OK: TIntegerField;
    sq_LoadPackagesPKGLOG: TStringField;
    sq_LoadPackagesCreatedUser: TIntegerField;
    sq_LoadPackagesModifiedUser: TIntegerField;
    sq_LoadPackagesDateCreated: TSQLTimeStampField;
    sq_LoadPackagesOnSticks: TIntegerField;
    sq_LoadPackagesM3_NET: TFloatField;
    sq_LoadPackagesPCS: TIntegerField;
    sq_LoadPackagesM3_NOM: TFloatField;
    sq_LoadPackagesKVM: TFloatField;
    sq_LoadPackagesLOPM: TFloatField;
    sq_LoadPackagesProductNo: TIntegerField;
    sq_LoadPackagesDefaultCustShipObjectNo: TIntegerField;
    sq_LoadPackagesLogicalInventoryPointNo: TIntegerField;
    sq_LoadPackagesPCS_PER_LENGTH: TStringField;
    sq_LoadPackagesOverrideMatch: TIntegerField;
    sq_LoadPackagesBarCodeID: TIntegerField;
    sq_LoadPackagesGradeStamp: TIntegerField;
    sq_LoadPackagesNEWPRODUCTNO: TIntegerField;
    sq_LoadPackagesDefsspNo: TIntegerField;
    sq_LoadPackagesNEWPackageTypeNo: TIntegerField;
    sq_LoadPackagesOverrideRL: TIntegerField;
    sq_GetOLPriceForADDLOInternalPrice: TFloatField;
    sq_GetOLPriceForADDLOPriceListNo: TIntegerField;
    sq_IsLoadInvoicedLoadNo: TIntegerField;
    sq_IsLoadInvoicedShippingPlanNo: TIntegerField;
    sq_IsLoadInvoicedInternalInvoiceNo: TIntegerField;
    sq_GetxRateExtLoadLoadNo: TIntegerField;
    sq_GetxRateExtLoadLoadedDate: TSQLTimeStampField;
    sq_GetxRateExtLoadvaluta: TStringField;
    sq_GetxRateExtLoadXRate: TFloatField;
    sq_GetxRateIntLoadLoadNo: TIntegerField;
    sq_GetxRateIntLoadLoadedDate: TSQLTimeStampField;
    sq_GetxRateIntLoadvaluta: TStringField;
    sq_GetxRateIntLoadXRate: TFloatField;
    sq_getMTSLLLipNo: TFDQuery;
    sq_CompareDetails: TFDQuery;
    sq_SearchPkgNo: TFDQuery;
    sq_GetCurrentxRateIntLoad: TFDQuery;
    sq_GetCurrentxRateExtLoad: TFDQuery;
    sq_DeleteConfirmed_Load_Entry: TFDQuery;
    sq_IsLoadAvraknad: TFDQuery;
    sq_deleteSamLaster: TFDQuery;
    sq_samLast: TFDQuery;
    sq_IsLoadAvraknadPaymentNo: TIntegerField;
    sq_IsLoadAvraknadLoadNo: TIntegerField;
    sq_GetCurrentxRateExtLoadXRate: TFloatField;
    sq_GetCurrentxRateIntLoadXRate: TFloatField;
    sq_CompareDetailsMatching_LD: TIntegerField;
    sq_SearchLoadNoByPkgNo: TFDQuery;
    cds_PksByInventoryPlace: TFDQuery;
    sq_Check_CDS_Link: TFDQuery;
    sq_IsLoadConfirmed: TFDQuery;
    sq_CheckObject2Link: TFDQuery;
    sq_DelNewLoads: TFDQuery;
    sq_CheckObject2LinkSupplierShipPlanObjectNo: TIntegerField;
    sq_CheckObject2LinkCustShipPlanDetailObjectNo: TIntegerField;
    sq_IsLoadConfirmedConfirmed_LoadNo: TIntegerField;
    sq_IsLoadConfirmedConfirmed_ShippingPlanNo: TIntegerField;
    sq_IsLoadConfirmedNewLoadNo: TIntegerField;
    sq_IsLoadConfirmedNewShippingPlanNo: TIntegerField;
    sq_IsLoadConfirmedDateCreated: TSQLTimeStampField;
    sq_IsLoadConfirmedUserName: TStringField;
    sq_Check_CDS_LinkSupplierShipPlanObjectNo: TIntegerField;
    sq_Check_CDS_LinkCustShipPlanDetailObjectNo: TIntegerField;
    sq_PkgsInLoad: TFDQuery;
    sq_getMTSLLLipNoLIPNo: TIntegerField;
    sq_PkgsInLoadNoOfPkgs: TIntegerField;
    cdsPortArrivingPackages: TFDQuery;
    cdsPortArrivingPackagesLoadNo: TIntegerField;
    cdsPortArrivingPackagesLO: TIntegerField;
    cdsPortArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsPortArrivingPackagesSUPPLIERCODE: TStringField;
    cdsPortArrivingPackagesM3_NET: TFloatField;
    cdsPortArrivingPackagesM3_NOM: TFloatField;
    cdsPortArrivingPackagesMFBM: TFloatField;
    cdsPortArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsPortArrivingPackagesPCS: TIntegerField;
    cdsPortArrivingPackagesPACKAGEOK: TIntegerField;
    cdsPortArrivingPackagesPACKAGE_LOG: TStringField;
    cdsPortArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsPortArrivingPackagesPSCPERLENGTH: TStringField;
    cdsPortArrivingPackagesBC: TStringField;
    cdsPortArrivingPackagesGS: TStringField;
    cdsPortArrivingPackagesMRKNING: TStringField;
    cdsPortArrivingLoads: TFDQuery;
    cdsPortArrivingLoadsCountryCode: TStringField;
    cdsPortArrivingLoadsLO: TIntegerField;
    cdsPortArrivingLoadsLOADNO: TIntegerField;
    cdsPortArrivingLoadsVerk_LoadNo: TIntegerField;
    cdsPortArrivingLoadsFS: TStringField;
    cdsPortArrivingLoadsLOADEDDATE: TSQLTimeStampField;
    cdsPortArrivingLoadsLOAD_STATUS: TIntegerField;
    cdsPortArrivingLoadsLOAD_ID: TStringField;
    cdsPortArrivingLoadsSUPPLIER: TStringField;
    cdsPortArrivingLoadsSUPPCODE: TStringField;
    cdsPortArrivingLoadsDESTINATION: TStringField;
    cdsPortArrivingLoadsORDER_NO: TStringField;
    cdsPortArrivingLoadsOBJECTTYPE: TIntegerField;
    cdsPortArrivingLoadsINVPOINTNO: TIntegerField;
    cdsPortArrivingLoadsINVPOINTNAME: TStringField;
    cdsPortArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsPortArrivingLoadsCUSTOMER: TStringField;
    cdsPortArrivingLoadsSUPPLIERNO: TIntegerField;
    cdsPortArrivingLoadsAVROP_CUSTOMERNO: TIntegerField;
    cdsPortArrivingLoadsAVROP_CUSTOMER: TStringField;
    cdsPortArrivingLoadsOBJECTTYPE_1: TIntegerField;
    cdsPortArrivingLoadsINITIALS: TStringField;
    cdsPortArrivingLoadsORDERTYPE: TIntegerField;
    cdsPortArrivingLoadsTYP: TStringField;
    cdsPortArrivingLoadsLOTYP: TStringField;
    cdsPortArrivingLoadsLOINI: TStringField;
    cdsPortArrivingLoadsLASTSTLLE: TStringField;
    cdsPortArrivingLoadsLipNo: TIntegerField;
    cdsPortArrivingLoadsMRKNING: TStringField;
    sq_SearchLoadNoByPkgNoLO: TIntegerField;
    sq_SearchLoadNoByPkgNoLOADNO: TIntegerField;
    sq_SearchLoadNoByPkgNoVERK_LOADNO: TIntegerField;
    sq_SearchLoadNoByPkgNoMRKNING: TStringField;
    cds_Props22: TFDQuery;
    cds_Props22UserID: TIntegerField;
    cds_Props22Form: TStringField;
    cds_Props22Name: TStringField;
    cds_Props22VerkNo: TIntegerField;
    cds_Props22OwnerNo: TIntegerField;
    cds_Props22PIPNo: TIntegerField;
    cds_Props22LIPNo: TIntegerField;
    cds_Props22InputOption: TIntegerField;
    cds_Props22RegPointNo: TIntegerField;
    cds_Props22RegDate: TSQLTimeStampField;
    cds_Props22CopyPcs: TIntegerField;
    cds_Props22RunNo: TIntegerField;
    cds_Props22ProducerNo: TIntegerField;
    cds_Props22AutoColWidth: TIntegerField;
    cds_Props22SupplierCode: TStringField;
    cds_Props22LengthOption: TIntegerField;
    cds_Props22LengthGroupNo: TIntegerField;
    cds_Props22NewItemRow: TIntegerField;
    cds_Props22SalesRegionNo: TIntegerField;
    cds_Props22MarketRegionNo: TIntegerField;
    cds_Props22OrderTypeNo: TIntegerField;
    cds_Props22Status: TIntegerField;
    cds_Props22FilterOrderDate: TIntegerField;
    cds_Props22StartPeriod: TSQLTimeStampField;
    cds_Props22EndPeriod: TSQLTimeStampField;
    cds_Props22ClientNo: TIntegerField;
    cds_Props22SalesPersonNo: TIntegerField;
    cds_Props22VerkSupplierNo: TIntegerField;
    cds_Props22VerkKundNo: TIntegerField;
    cds_Props22LOObjectType: TIntegerField;
    cds_Props22BarCodeNo: TIntegerField;
    cds_Props22GradeStampNo: TIntegerField;
    cds_Props22VolumeUnitNo: TIntegerField;
    cds_Props22LengthFormatNo: TIntegerField;
    cds_Props22LengthVolUnitNo: TIntegerField;
    cds_Props22GroupByBox: TIntegerField;
    cds_Props22GroupSummary: TIntegerField;
    cds_Props22AgentNo: TIntegerField;
    cds_Props22LoadingLocationNo: TIntegerField;
    cds_Props22ShipperNo: TIntegerField;
    cds_Props22BookingTypeNo: TIntegerField;
    cds_Props22CustomerNo: TIntegerField;
    cds_Props22ShowProduct: TIntegerField;
    cds_Props22Marknad: TStringField;
    cds_Props22Kund: TStringField;
    cds_Props22SR: TStringField;
    cds_Props22Saljgrupp: TStringField;
    cds_Props22Verk: TStringField;
    ds_Props: TDataSource;
    cdsArrivingLoadsImpVerk: TIntegerField;
    sq_UpdatePkgStatus: TFDQuery;
    cds_verkLasterAM3: TFloatField;
    cds_verkLasterNM3: TFloatField;
    cds_verkLasterStyck: TIntegerField;
    cds_verkLasterPaket: TIntegerField;
    sp_ChangeToIMPProductForIntLoad: TFDStoredProc;
    cdsArrivingLoadsEGEN: TIntegerField;
    sp_AR_Load_Ext: TFDStoredProc;
    sq_IsEXTLoadConfirmed: TFDQuery;
    sq_IsEXTLoadConfirmedConfirmed_LoadNo: TIntegerField;
    sq_IsEXTLoadConfirmedConfirmed_ShippingPlanNo: TIntegerField;
    sq_IsEXTLoadConfirmedNewLoadNo: TIntegerField;
    sq_IsEXTLoadConfirmedNewShippingPlanNo: TIntegerField;
    sq_IsEXTLoadConfirmedDateCreated: TSQLTimeStampField;
    sq_IsEXTLoadConfirmedUserName: TStringField;
    cdsArrivingPackagesUsed: TIntegerField;
    cdsPortArrivingLoadsPaket: TIntegerField;
    sq_samLast_II: TFDQuery;
    sq_deleteSamLaster_II: TFDQuery;
    cdsArrivingLoadsintNM3: TFloatField;
    cdsArrivingLoadsAM3: TFloatField;
    cdsArrivingLoadsPcs: TIntegerField;
    cdsArrivingLoadsPkgs: TIntegerField;
    cdsArrivingLoadsClientName: TStringField;
    cdsArrivingLoadsBookingType: TStringField;
    sp_IsLoadAvr: TFDStoredProc;
    cdsArrivingLoadsNoOfPackages: TIntegerField;
    cdsArrivingLoadsPackagesConfirmed: TIntegerField;
    cdsArrivingPackagesPackage_Size: TIntegerField;
    cdsArrivingPackagesPackageSizeName: TStringField;
    sp_CngArtNoByPkgSize: TFDStoredProc;
    sq_CheckObjectRegionToRegionLink: TFDQuery;
    sq_CheckObjectRegionToRegionLinkSupplierShipPlanObjectNo: TIntegerField;
    sq_CheckObjectRegionToRegionLinkCustShipPlanDetailObjectNo: TIntegerField;
    cdsArrivingLoadsOriginalLO: TIntegerField;
    cdsArrivingLoadsOriginalLoadNo: TIntegerField;
    sp_CopyRtR: TFDStoredProc;
    sp_GetRtRPOLoNo: TFDStoredProc;
    sp_CopySalesLoadToPO: TFDStoredProc;
    sp_delAR_RtRLoad: TFDStoredProc;
    sp_isRtRLoadAR: TFDStoredProc;
    sp_RtR_Load_is_AR: TFDStoredProc;
    procedure dsrcArrivingLoadsDataChange(Sender: TObject; Field: TField);
    procedure ds_verkLasterDataChange(Sender: TObject; Field: TField);
    procedure dsrcPortArrivingLoadsDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_Props22VerkNoChange(Sender: TField);
  private
    { Private declarations }
    FOnAmbiguousPkgNo: TAmbiguityEvent;
    function IsLoadAvr(const LoadNo : Integer) : Boolean ;
    Function GetCurrentXrate(const LoadNo: Integer): Double;
    Function GetXrateAtDateOfDelivery(const LoadNo: Integer): Double;
    procedure InsertLoadDtlVal(const Inkop: Boolean;
      const SupplierNo, PaymentType, PaymentNo, LoadNo: Integer;
      const Update_OldPrice: Boolean);
    Function Inkop(const LoadNo, P_SupplierNo: Integer): Boolean;
    function GetPriceOfOrderRow(const Inkop: Boolean;
      const LoadedDate: TSQLTimeStamp; const SupplierNo, defsspno, ProductNo,
      ProductLengthNo: Integer): Double;
    function GetPriceOfOrderRowForAddLO(const Inkop: Boolean;
      const LoadedDate: TSQLTimeStamp; const SupplierNo, defsspno, ProductNo,
      ProductLengthNo: Integer): Double;
    function GetPriceOfPriceList(const LoadedDate: TSQLTimeStamp;
      const SupplierNo, PriceListNo, ProductNo, ProductLengthNo
      : Integer): Double;

  Protected
    procedure ResolvePkgNoAmbiguity(Sender: TObject; ADataSource: TDataSource;
      var Choice: String3);

  public
    { Public declarations }
    LoadConfirmedOK: Boolean;
    function  RtR_Load_is_AR(Const Confirmed_LoadNo : Integer;Var RtR_LoadNo : String) : Boolean ;

    procedure delAR_RtRLoad(const Confirmed_LoadNo  : Integer) ;
    Function  CopySalesLoadToPOLoadAndSetPackagesAsNotAvailable
  (const OldLoadNo, NewLONo, Insert_Confirmed_Load
  : Integer): Integer;
    function  GetPOLoNoInRegionToRegion(const SalesLONo : Integer) : Integer ;//Return PO_LO
    procedure CopyRtR(const OldLONo : Integer) ;
    procedure CngArtNoByPkgSize (const PackageNo, Package_Size : Integer; Prefix : string) ;
    function  GetNewPackage_Size(var PackageSizeName : String) : Integer ;
    function  AR_ExternLoad(const LoadNo, Status, LIPNo,
      CreatedUser: Integer): Boolean;
    procedure RefreshArrivingPackages;
    // procedure LoadUserProps (const Form : String) ;
    procedure SaveUserProps22(const Form: String);
    Function  IsLoadAvraknad(const LoadNo: Integer): Boolean;
    Function  AR_TRADING_PO_Loads(const OldLoadNo, LIPNo: Integer): Boolean;
    Function  ARPOLoadToLager(const OldLoadNo, LIPNo: Integer): Boolean;
    Function  ARINTADDLOLoadToLager(const OldLoadNo, LIPNo: Integer;
      const ChangeToIMPProduct: Integer): Boolean;
    Function  ex_AR_SALES_Loads(const OldLoadNo, LIPNo: Integer): Integer;
    function  GetNoOfPkgs: Integer;
    // procedure ProcessPackage_Log(const LogInvPointNo : Integer) ;
    Function SearchLoadNoByPkgNo(const PackageNo, ShippingCompanyNo: Integer;
      const SupplierCode: String): Integer;
    function UndoConfirmLoad(const Trading : Integer) : Boolean;
    // function  ChangePackagesToIMPProduct : Boolean ;
    procedure SetLoadAR(const LoadNo, LoadAR: Integer);
    function GetDefaultCSObjectNo(const defsspno: Integer): Integer;
    procedure GetIntPrice(const ForceUpdatePrice : Boolean;const P_SupplierNo, PaymentType, PaymentNo,
      LoadNo: Integer; const Update_OldPrice: Boolean);
    Function GetMotsvarandeVWLIPNo(const LIPNo: Integer): Integer;
    Function GetMotsvarandeVWLIPNoForLoadingLocation
      (const LONo: Integer): Integer;
    Function SearchPkgNoInLoad(const PackageNo: Integer): Integer;
    function PkgNoToSuppCode(const PkgNo: Integer): String3;
    property OnAmbiguousPkgNo: TAmbiguityEvent read FOnAmbiguousPkgNo
      write FOnAmbiguousPkgNo;
  end;

var
  dmArrivingLoads: TdmArrivingLoads;

implementation

uses recerror, dmsDataConn, dmsVidaSystem, VidaConst, VidaUser, dlgPickPkg_II,
  uPackageSize;

{$R *.dfm}

Function TdmArrivingLoads.CopySalesLoadToPOLoadAndSetPackagesAsNotAvailable
  (const OldLoadNo, NewLONo, Insert_Confirmed_Load
  : Integer): Integer;
Begin
  Try
    sp_CopySalesLoadToPO.ParamByName('@SrcLoadNo').AsInteger  := OldLoadNo;
    sp_CopySalesLoadToPO.ParamByName('@NewLONo').AsInteger    := NewLONo;
    sp_CopySalesLoadToPO.ParamByName('@CreateUser').AsInteger := ThisUser.UserID;

    sp_CopySalesLoadToPO.ParamByName('@Insert_Confirmed_Load').AsInteger :=
      Insert_Confirmed_Load;
    Result := sp_CopySalesLoadToPO.ParamByName('@NewLoadNo').AsInteger;
    sp_CopySalesLoadToPO.ExecProc;
    Result := sp_CopySalesLoadToPO.ParamByName('@NewLoadNo').AsInteger;
  Try

  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
  Finally
    sp_CopySalesLoadToPO.Close;
  End;
End;

function TdmArrivingLoads.GetPOLoNoInRegionToRegion(const SalesLONo : Integer) : Integer ;//Return PO_LO
Begin
  sp_GetRtRPOLoNo.ParamByName('@SalesLONo').AsInteger :=  SalesLONo ;
  sp_GetRtRPOLoNo.Active  := True ;
  Try
  if not sp_GetRtRPOLoNo.Eof then
   Result := sp_GetRtRPOLoNo.FieldByName('POShippingPlanNo').AsInteger
    else
     Result := -1 ;
  Finally
   sp_GetRtRPOLoNo.Active := False ;
  End;
End;

function TdmArrivingLoads.GetDefaultCSObjectNo(const defsspno: Integer)
  : Integer;
Begin
  With dmArrivingLoads do
  Begin
    sq_GetDefaultCSObjectNo.Close;
    sq_GetDefaultCSObjectNo.ParamByName('SupplierShipPlanObjectNo').AsInteger
      := defsspno;
    sq_GetDefaultCSObjectNo.Open;
    Result := sq_GetDefaultCSObjectNoCustShipPlanDetailObjectNo.AsInteger;
    sq_GetDefaultCSObjectNo.Close;
  End; // with
End;

procedure TdmArrivingLoads.SetLoadAR(const LoadNo, LoadAR: Integer);
Begin
  Try
    sq_SetLoadAR.ParamByName('LoadNo').AsInteger := LoadNo;
    sq_SetLoadAR.ParamByName('LoadAR').AsInteger := LoadAR;
    sq_SetLoadAR.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmArrivingLoads.dsrcArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
  RefreshArrivingPackages;
end;

procedure TdmArrivingLoads.RefreshArrivingPackages;
begin
  cdsArrivingPackages.Active := False;
  cdsArrivingPackages.Close;
  cdsArrivingPackages.ParamByName('LoadNo').AsInteger         :=  cdsArrivingLoadsLOADNO.AsInteger;
  cdsArrivingPackages.ParamByName('ShippingPlanNo').AsInteger :=  cdsArrivingLoadsLO.AsInteger;
  cdsArrivingPackages.ParamByName('LanguageID').AsInteger     :=  ThisUser.LanguageID ;
  cdsArrivingPackages.Open;
  cdsArrivingPackages.Active := True;
end;

function TdmArrivingLoads.RtR_Load_is_AR(Const Confirmed_LoadNo : Integer;Var RtR_LoadNo : String) : Boolean ;
Begin
  sp_RtR_Load_is_AR.ParamByName('@Confirmed_LoadNo').AsInteger :=  Confirmed_LoadNo ;
  sp_RtR_Load_is_AR.Active  :=  True ;
  if not sp_RtR_Load_is_AR.Eof then
  Begin
    RtR_LoadNo  :=  sp_RtR_Load_is_AR.FieldByName('NewLoadNo').AsString ;
    Result      :=  True ;
  End
    else
     Begin
      RtR_LoadNo  :=  '-1' ;
      Result      :=  False ;
     End;
End;

function TdmArrivingLoads.UndoConfirmLoad(const Trading : Integer)  : Boolean;
const
  LF = #10;
Var
  CommitChanges : Boolean;
  Save_Cursor   : TCursor;
  RtR_LoadNo    : String ;
begin
  CommitChanges := True;

  // if MessageDlg('Vill du ångra ankomstregistration av lasten?',
  // mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // Begin

  with dmArrivingLoads do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }

    // Är lasten AR av Extern Kund, i så fall måste den externa kunden ångra AR först!
    sq_IsEXTLoadConfirmed.Close;
    sq_IsEXTLoadConfirmed.ParamByName('LoadNo').AsInteger :=
      dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger;
    sq_IsEXTLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger :=
      dmArrivingLoads.cdsArrivingLoadsLO.AsInteger;
    sq_IsEXTLoadConfirmed.Open;
    Try
      if not sq_IsEXTLoadConfirmed.Eof then
      Begin
        ShowMessage('Cancel confirmation of customer/call off Load first: ' + LF +
          ' LoadNo: ' + sq_IsEXTLoadConfirmedConfirmed_LoadNo.AsString + LF +
          ' LO: ' + sq_IsEXTLoadConfirmedConfirmed_ShippingPlanNo.AsString + LF
          + ' Confirmed by: ' +
          sq_IsEXTLoadConfirmedUserName.AsString);
        CommitChanges := False;
        Exit;
      End;
    Finally
      sq_IsEXTLoadConfirmed.Close;
    End;

    if Trading = 2 then
    begin
      //Check that the RtR load is not been AR
      if RtR_Load_is_AR(dmArrivingLoads.cdsArrivingLoadsLOADNO.AsInteger, RtR_LoadNo) then
      Begin
        ShowMessage('Cannot undo because end customer has confirmed their load, End customer loadNo ' + RtR_LoadNo) ;
      End;
    end;

    Try
      // Undo Confirmation of load arrivals
      // first check if there are customer loads made, if so then
      // BEGIN
      // check if Customer loads are invoiced, if so then
      // stop the process and ask user to delete invoices first

      // otherwhise check that no packages have been added or removed to/from customer load,
      // To do that compare Mill load to customer load
      // if customer have been changed then
      // Give message to user that Undo is not possible unless the customer is
      // put back to original spec

      // If customer have not been changed or invoiced then
      // Delete the customer load
      // Delete Entry in Confirmed_Load for Mill Load

      // END
      // otherwise simply remove the verk load from confirmed_load table

      dmsConnector.StartTransaction;
      Try

        // Är lasten fakturerad?
        sq_IsLoadInvoiced.Close;
        sq_IsLoadInvoiced.ParamByName('LoadNo').AsInteger :=
          cdsArrivingLoadsLOADNO.AsInteger;
        sq_IsLoadInvoiced.Open;
        if not sq_IsLoadInvoiced.Eof then
        Begin
          ShowMessage('Cannot undo because end user load: ' + LF +
            sq_IsLoadInvoicedLoadNo.AsString + LF + '  LO: ' +
            sq_IsLoadInvoicedShippingPlanNo.AsString + LF +
            ' is invoiced, see internal invoice number: ' +
            sq_IsLoadInvoicedInternalInvoiceNo.AsString + LF +
            ', Remove the invoice and try again.');
          sq_IsLoadInvoiced.Close;
          CommitChanges := False;
          Exit;
        End;
        sq_IsLoadInvoiced.Close;

        // Är lasten avräknad ?
        sq_IsLoadAvraknad.Close;
        sq_IsLoadAvraknad.ParamByName('LoadNo').AsInteger :=
          cdsArrivingLoadsLOADNO.AsInteger;
        // sq_IsLoadAvraknad.ParamByName('ShippingPlanNo').AsInteger:= cdsArrivingLoadsLO.AsInteger ;
        sq_IsLoadAvraknad.Open;
        if Not sq_IsLoadAvraknad.Eof then
        Begin
          ShowMessage('Cannot undo because, the load is settled. Settlement number: ' +
            sq_IsLoadAvraknadPaymentNo.AsString);
          sq_IsLoadAvraknad.Close;
          CommitChanges := False;
          Exit;
        End;
        sq_IsLoadAvraknad.Close;

        // Kolla att det finns en confirmed package log fil
        cds_Confirmed_Pkg_Log.Active := False;
        cds_Confirmed_Pkg_Log.ParamByName('LoadNo').AsInteger :=
          cdsArrivingLoadsLOADNO.AsInteger;
        cds_Confirmed_Pkg_Log.Active := True;
        if cds_Confirmed_Pkg_Log.Eof then
        Begin
          ShowMessage('Cannot undo because load number ' +
            cdsArrivingLoadsLOADNO.AsString + ' because there is no package log file.');
          CommitChanges := False;
          Exit;
        End;

        // For x:= 0 to 1 do
        // Begin
        cds_Confirmed_Pkg_Log.Filter := 'Operation = 0 OR Operation = 1';
        // +IntToStr(x) ;
        cds_Confirmed_Pkg_Log.Filtered := True;
        While not cds_Confirmed_Pkg_Log.Eof do
        Begin
          sq_ChkPkgs.Close;
          sq_ChkPkgs.ParamByName('PackageNo').AsInteger :=
            cds_Confirmed_Pkg_LogPackageNo.AsInteger;
          sq_ChkPkgs.ParamByName('SupplierCode').AsString :=
            cds_Confirmed_Pkg_LogSupplierCode.AsString;
          sq_ChkPkgs.Open;
          if not sq_ChkPkgs.Eof then
          Begin
            if (sq_ChkPkgsLoggLoadNo.AsInteger < sq_ChkPkgsLoadNo.AsInteger) and
              (sq_ChkPkgsLoggLoadNo.AsInteger <> -1) then
            Begin
              ShowMessage('Cannot undo because package number: ' +
                cds_Confirmed_Pkg_LogPackageNo.AsString + '/' +
                cds_Confirmed_Pkg_LogSupplierCode.AsString +
                ' is loaded on Load number ' + sq_ChkPkgsLoadNo.AsString);
              CommitChanges := False;
              Exit;
            End;
          End; // if not sq_ChkPkgs.Eof then

          (* sq_PkgInvoiced.Close ;
            sq_PkgInvoiced.ParamByName('PackageNo').AsInteger               := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
            sq_PkgInvoiced.ParamByName('SupplierCode').AsString             := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
            sq_PkgInvoiced.Open ;
            if not sq_PkgInvoiced.Eof then
            Begin
            ShowMessage('Kan inte ångra, Paketnr: '
            +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
            +' är utlastat på lastnr ' + sq_ChkPkgsLoadNo.AsString) ;
            CommitChanges:= False ;
            Exit ;
            End ; //if not sq_PkgInvoiced.Eof then
          *)

          cds_Confirmed_Pkg_Log.Next;
        End; // While
        // End ; //For
        cds_Confirmed_Pkg_Log.Active := False;

        if CommitChanges = True then
        Begin
         //RemoveRtRLoad ;
          // Insert packagenumberlogg
          Try
            sq_InsertPkgNoLogg.ParamByName('LoadNo').AsInteger :=
              cdsArrivingLoadsLOADNO.AsInteger;
            sq_InsertPkgNoLogg.ParamByName('UserID').AsInteger :=
              ThisUser.UserID;
            sq_InsertPkgNoLogg.ExecSQL;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              CommitChanges := False;
              // ShowMessage(E.Message);
              Raise;
            End;
          end;

          // Set package status = 0 on packages that were moved to inventory
          Try
            sq_UpdatePkgStatus.ParamByName('LoadNo').AsInteger :=
              cdsArrivingLoadsLOADNO.AsInteger;
            // if sq_UpdatePkgStatus.ExecSQL(False) = -1 then CommitChanges:= False ;
            sq_UpdatePkgStatus.ExecSQL;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              CommitChanges := False;
              // ShowMessage(E.Message);
              Raise;
            End;
          end;

          // Delete NewLoad, this also removes Confirmed_Load and Confirmed_Load_Packages
          // Bara för LO av OBJECTTYPE = 2 (normala), add och int LO skapar aldrig en ny last
          // if cdsArrivingLoadsOBJECTTYPE.AsInteger = 2 then
          // Begin
          // sq_DeleteNewLoadByOldLoadNo.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
          // if sq_DeleteNewLoadByOldLoadNo.ExecSQL(False) = -1 then CommitChanges:= False ;
          // End ;

          // Byt ut ovan mot den här som använder länken i Confirmed_Package_Log för att ta bort nya laster
          if cdsArrivingLoadsOBJECTTYPE.AsInteger = 2 then
          Begin
            Try
              sq_DelNewLoads.ParamByName('LoadNo').AsInteger :=
                cdsArrivingLoadsLOADNO.AsInteger;
              // if sq_DelNewLoads.ExecSQL(False) = -1 then CommitChanges:= False ;
              sq_DelNewLoads.ExecSQL;
            except
              On E: Exception do
              Begin
                dmsSystem.FDoLog(E.Message);
                CommitChanges := False;
                // ShowMessage(E.Message);
                Raise;
              End;
            end;
          End;

          // Delete Confirmed_Load record for Old Load
          Try
            sq_DeleteConfirmed_Load_Entry.ParamByName('LoadNo').AsInteger :=
              cdsArrivingLoadsLOADNO.AsInteger;
            // if sq_DeleteConfirmed_Load_Entry.ExecSQL(False) = -1 then CommitChanges:= False ;
            sq_DeleteConfirmed_Load_Entry.ExecSQL;

            delAR_RtRLoad(cdsArrivingLoadsLOADNO.AsInteger) ;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              CommitChanges := False;
              // ShowMessage(E.Message);
              Raise;
            End;
          end;

          // Set LoadAR till 0
          SetLoadAR(cdsArrivingLoadsLOADNO.AsInteger,
            0 { set LoadAR till ankomstregistrerad = 1 } );
        End; // if CommitChanges = True then

        { try
          // Now write the data to the database
          if CommitChanges = True then
          Begin
          dmsConnector.Commit(TransactionNo) ;
          //    ShowMessage('Ångra ankomstregistrering OK');
          Application.ProcessMessages ;
          End
          else
          Begin
          dmsConnector.Rollback(TransactionNo);
          ShowMessage('Ångra ankomstregistrering misslyckades, data återställd.');
          End ;

          except
          on Exception do begin
          raise;
          end;
          end; }

        if CommitChanges = True then
        Begin
          dmsConnector.Commit;
          // ShowMessage('Ångra ankomstregistrering OK');
          Application.ProcessMessages;
        End
        else
        Begin
          dmsConnector.Rollback;
          ShowMessage
            ('Cancel failed.');
        End;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          dmsConnector.Rollback;
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

      { except
        dmsConnector.Rollback(TransactionNo);
        raise;
        end; }

    Finally
      cds_Confirmed_Pkg_Log.Filtered := False;
      if CommitChanges = False then
      Begin
        dmsConnector.Rollback;
      End;

      // cdsCurrentLoadDetails.Active:= False ;
      sq_CompareDetails.Close;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
      Result := CommitChanges;
    End;
  End; // with
  // End  //if
  // else
  // Result:= True ;
end;

(* function TdmArrivingLoads.UndoConfirmLoad : Boolean ;
  const
  LF = #10;
  Var CommitChanges : Boolean ;
  Save_Cursor    : TCursor;
  TransactionNo  : LongWord;
  x              : Integer;
  begin
  CommitChanges:= True ;

  // if MessageDlg('Vill du ångra ankomstregistration av lasten?',
  // mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // Begin

  with dmArrivingLoads do
  Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  Try
  //Undo Confirmation of load arrivals
  //first check if there are customer loads made, if so then
  //BEGIN
  //check if Customer loads are invoiced, if so then
  //stop the process and ask user to delete invoices first

  //otherwhise check that no packages have been added or removed to/from customer load,
  //To do that compare Mill load to customer load
  //if customer have been changed then
  //Give message to user that Undo is not possible unless the customer is
  //put back to original spec

  // If customer have not been changed or invoiced then
  //Delete the customer load
  //Delete Entry in Confirmed_Load for Mill Load

  //END
  //otherwise simply remove the verk load from confirmed_load table

  TransactionNo := dmsConnector.StartTransaction;
  Try

  sq_IsLoadInvoiced.Close ;
  sq_IsLoadInvoiced.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  sq_IsLoadInvoiced.Open ;
  if not sq_IsLoadInvoiced.Eof then
  Begin
  ShowMessage('Kan inte ångra, kundlasten: '
  +LF+sq_IsLoadInvoicedLoadNo.AsString
  +LF+'  LO: '+sq_IsLoadInvoicedShippingPlanNo.AsString
  +LF+' är fakturerad på internfakturanr: '+sq_IsLoadInvoicedInternalInvoiceNo.AsString
  +LF+', ta bort fakturan och försök igen.') ;
  sq_IsLoadInvoiced.Close ;
  CommitChanges:= False ;
  Exit ;
  End ;
  sq_IsLoadInvoiced.Close ;

  sq_IsLoadAvraknad.Close ;
  sq_IsLoadAvraknad.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  //  sq_IsLoadAvraknad.ParamByName('ShippingPlanNo').AsInteger:= cdsArrivingLoadsLO.AsInteger ;
  sq_IsLoadAvraknad.Open ;
  if Not sq_IsLoadAvraknad.Eof then
  Begin
  ShowMessage('Kan inte ångra, lasten är avräknad. Avräkningsnr: '+sq_IsLoadAvraknadPaymentNo.AsString) ;
  sq_IsLoadAvraknad.Close ;
  CommitChanges:= False ;
  Exit ;
  End ;
  sq_IsLoadAvraknad.Close ;

  cds_Confirmed_Pkg_Log.Active:= False ;
  sq_Confirmed_Pkg_Log.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  cds_Confirmed_Pkg_Log.Active:= True ;
  if cds_Confirmed_Pkg_Log.Eof then
  Begin
  ShowMessage('Det finns ingen loggfil för lastnr '+cdsArrivingLoadsLOADNO.AsString+' kan inte återställa.') ;
  CommitChanges:= False ;
  Exit ;
  End ;

  sq_CheckIfConfirmedPkgsValidInInventory.Close ;
  sq_CheckIfConfirmedPkgsValidInLoad.Close ;

  For x:= 0 to 1 do
  Begin
  cds_Confirmed_Pkg_Log.Filter:= 'Operation = '+IntToStr(x) ;
  cds_Confirmed_Pkg_Log.Filtered:= True ;
  While not cds_Confirmed_Pkg_Log.Eof do
  Begin
  if x = 0 then
  Begin
  sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('PackageNo').AsInteger               := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('SupplierCode').AsString             := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
  sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('LoadNo').AsInteger                  := cds_Confirmed_Pkg_LogNewLoadNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('ShippingPlanNo').AsInteger          := cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger ;
  //    sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('LogicalInventoryPointNo').AsInteger := cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('PackageTypeNo').AsInteger           := cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInLoad.ParamByName('Status').AsInteger                  := cds_Confirmed_Pkg_LogPackageStatus.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInLoad.Open ;
  if sq_CheckIfConfirmedPkgsValidInLoad.Eof then
  Begin
  ShowMessage('Kan inte ångra, Paketnr: '
  +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
  +' är ändrat eller borttaget från lasten.') ;
  CommitChanges:= False ;
  Exit ;
  sq_CheckIfConfirmedPkgsValidInLoad.Close ;
  End ;
  sq_CheckIfConfirmedPkgsValidInLoad.Close ;
  End
  else
  Begin
  sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('PackageNo').AsInteger              := cds_Confirmed_Pkg_LogPackageNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('SupplierCode').AsString            := cds_Confirmed_Pkg_LogSupplierCode.AsString ;
  sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('LogicalInventoryPointNo').AsInteger:= cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('PackageTypeNo').AsInteger          := cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInInventory.ParamByName('Status').AsInteger                 := cds_Confirmed_Pkg_LogPackageStatus.AsInteger ;
  sq_CheckIfConfirmedPkgsValidInInventory.Open ;
  if sq_CheckIfConfirmedPkgsValidInInventory.Eof then
  Begin
  ShowMessage('Kan inte ångra, paketnr: '
  +cds_Confirmed_Pkg_LogPackageNo.AsString+'/'+cds_Confirmed_Pkg_LogSupplierCode.AsString
  +LF+' har blivit ändrat eller borttaget från lagret.') ;
  CommitChanges:= False ;
  Exit ;
  sq_CheckIfConfirmedPkgsValidInInventory.Close ;
  End ;
  sq_CheckIfConfirmedPkgsValidInInventory.Close ;
  End ;

  cds_Confirmed_Pkg_Log.Next ;
  End ; //While
  End ; //For
  cds_Confirmed_Pkg_Log.Active:= False ;

  if CommitChanges = True then
  Begin
  //Set package status = 0 on packages that were moved to inventory
  sq_UpdatePkgStatus.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  if sq_UpdatePkgStatus.ExecSQL(False) = -1 then CommitChanges:= False ;

  //Delete NewLoad, this also removes Confirmed_Load and Confirmed_Load_Packages
  //Bara för LO av OBJECTTYPE = 2 (normala), add och int LO skapar aldrig en ny last
  if cdsArrivingLoadsOBJECTTYPE.AsInteger = 2 then
  Begin
  sq_DeleteNewLoadByOldLoadNo.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  if sq_DeleteNewLoadByOldLoadNo.ExecSQL(False) = -1 then CommitChanges:= False ;
  End ;

  //Delete Confirmed_Load record for Old Load
  sq_DeleteConfirmed_Load_Entry.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsLOADNO.AsInteger ;
  if sq_DeleteConfirmed_Load_Entry.ExecSQL(False) = -1 then CommitChanges:= False ;

  //Set LoadAR till 0
  SetLoadAR(cdsArrivingLoadsLOADNO.AsInteger,  0{set LoadAR till ankomstregistrerad = 1}) ;
  End ;

  try
  // Now write the data to the database
  if CommitChanges = True then
  Begin
  dmsConnector.Commit(TransactionNo) ;
  //    ShowMessage('Ångra ankomstregistrering OK');
  Application.ProcessMessages ;
  End
  else
  Begin
  dmsConnector.Rollback(TransactionNo);
  ShowMessage('Ångra ankomstregistrering misslyckades, data återställd.');
  End ;


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
  cds_Confirmed_Pkg_Log.Filtered:= False ;
  if CommitChanges = False then
  Begin
  dmsConnector.Rollback(TransactionNo);
  End ;

  //   cdsCurrentLoadDetails.Active:= False ;
  sq_CompareDetails.Close ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  Result:= CommitChanges ;
  End ;
  End ; //with
  // End  //if
  //  else
  //    Result:= True ;
  end; *)

procedure TdmArrivingLoads.ds_verkLasterDataChange(Sender: TObject;
  Field: TField);
begin
  cds_VerkLastPkgs.Active := False;
  cds_VerkLastPkgs.Close;
  cds_VerkLastPkgs.ParamByName('LoadNo').AsInteger :=
    cds_verkLasterLASTNR.AsInteger;
  cds_VerkLastPkgs.Open;
  cds_VerkLastPkgs.Active := True;
end;

(*
  function TdmArrivingLoads.ChangePackagesToIMPProduct : Boolean ;
  Var
  Save_Cursor     : TCursor;
  AllPkgChangedOK : Boolean ;
  Type
  PMyList = ^AList;
  AList = record
  ProductLengthNo: Integer;
  NoOfPieces: Integer;
  end;
  var
  TransactionNo   : LongWord;
  PkgTypeNumbers  : TList;
  PackagetypeNo   : Integer ;
  MyList          : TList;
  ARecord         : PMyList;

  procedure SavePkgType ;
  Var
  iDtls : Integer ;

  procedure SelectMatchingPkgTypeHdrs;
  begin
  // First get all package type (header) records that match
  sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtLoadPackagesNEWPRODUCTNO.AsInteger ;

  if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
  sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0
  else
  sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

  if mtLoadPackagesGRADESTAMPNo.AsInteger = 0 then
  sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
  else
  sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
  sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtLoadPackagesPCS.AsInteger ;
  sp_PackageTypes.Open;
  try
  sp_PackageTypes.First;
  while not sp_PackageTypes.Eof do begin
  PkgTypeNumbers.Add(Pointer(sp_PackageTypes.FieldByName('PackageTypeNo').AsInteger));
  sp_PackageTypes.Next;
  end;
  finally
  sp_PackageTypes.Close;
  end;
  end;

  Function GetNoOfOriginalLengthsInPkg : Integer ;
  Begin
  Result:= 0 ;
  sp_PackageTypeDetail.Close;
  sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := mtLoadPackagesPACKAGETYPENO.AsInteger ;// Integer(PkgTypeNumbers[0]);
  sp_PackageTypeDetail.Open;
  sp_PackageTypeDetail.First;
  // NB We know that both the data retrieved from sp_PackageTypeDetail and the
  // grid column info are in length order, smallest to largest.

  while not sp_PackageTypeDetail.Eof  do
  begin
  New(ARecord);
  ARecord^.ProductLengthNo := sp_PackageTypeDetail.FieldValues['ProductLengthNo'] ;
  ARecord^.NoOfPieces      := sp_PackageTypeDetail.FieldValues['NoOfPieces'] ;
  MyList.Add(ARecord);
  sp_PackageTypeDetail.Next;
  end;
  sp_PackageTypeDetail.Close;
  End ;

  procedure MatchingPackageType;
  var
  LengthMatched : Boolean;
  NoOfLengths, iDtl : Integer;
  begin
  // Check which if a selected package type hdr matches in terms of length details
  //      if (mtpackages.Active) AND (mtpackages.Fields[1].AsInteger > 0) then
  //      NoOfLengths := GetNoOfLengthsInPkg
  //      else
  NoOfLengths :=  GetNoOfOriginalLengthsInPkg ;

  PackagetypeNo := NO_MATCH;
  while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
  begin
  try
  sp_PackageTypeDetail.Close;
  sp_PackageTypeDetail.ParamByName('PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
  sp_PackageTypeDetail.Open;

  LengthMatched := TRUE;
  iDtl := 0;
  sp_PackageTypeDetail.First;
  // NB We know that both the data retrieved from sp_PackageTypeDetail and the
  // grid column info are in length order, smallest to largest.

  while LengthMatched and not sp_PackageTypeDetail.Eof and (iDtl < MyList.Count) do
  begin
  ARecord := MyList.Items[iDtl];

  if (sp_PackageTypeDetail.FieldValues['ProductLengthNo'] <>
  ARecord^.ProductLengthNo)
  OR (sp_PackageTypeDetail.FieldValues['NoOfPieces'] <>
  ARecord^.NoOfPieces) then
  LengthMatched := FALSE
  else
  begin
  inc(iDtl);
  sp_PackageTypeDetail.Next;
  end;
  end;

  if LengthMatched and sp_PackageTypeDetail.Eof and (iDtl = MyList.Count) then
  PackageTypeNo := Integer(PkgTypeNumbers[0]);

  finally
  PkgTypeNumbers.Delete(0);
  end;
  end; //with
  end;

  procedure NewPackageType ;
  // Create a new package type header record, and associated package type details records.
  // Return the PackageTypeNo for new header record.
  var
  iDtl : Integer;
  begin
  PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
  Try
  sp_NewPackageType.Close ;
  sp_NewPackageType.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
  sp_NewPackageType.ParamByName('@ProductNo'       ).AsInteger := mtLoadPackagesNEWPRODUCTNO.AsInteger ;

  if mtLoadPackagesBARCODE_ID.AsInteger = 0 then
  sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := 0
  else
  sp_NewPackageType.ParamByName('@BarCodeID'       ).AsInteger := mtLoadPackagesBARCODE_ID.AsInteger ;

  if mtLoadPackagesGRADESTAMPNO.AsInteger = 0 then
  sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := 0
  else
  sp_NewPackageType.ParamByName('@GradeStamp'      ).AsInteger := mtLoadPackagesGRADESTAMPNO.AsInteger ;
  sp_NewPackageType.ParamByName('@TotalNoOfPieces' ).AsInteger := mtLoadPackagesPCS.AsInteger ;
  sp_NewPackageType.ParamByName('@UserID').AsInteger := ThisUser.UserID;
  sp_NewPackageType.ExecProc;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;

  //************** Now add the PackageTypeDetail records. ********************
  for iDtl := 0 to MyList.Count - 1 do
  begin
  ARecord := MyList.Items[iDtl];
  Try
  sp_NewPackageDetail.ParamByName('@PackageTypeNo'  ).AsInteger  := PackageTypeNo;
  sp_NewPackageDetail.ParamByName('@ProductLengthNo').AsInteger  := ARecord^.ProductLengthNo ;
  sp_NewPackageDetail.ParamByName('@NoOfPieces'     ).AsInteger  := ARecord^.NoOfPieces ;
  sp_NewPackageDetail.ParamByName('@UserID'         ).AsInteger  := ThisUser.UserID;
  sp_NewPackageDetail.ExecProc;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  end;
  end;

  procedure  SavePackageTypeLengths ;
  Begin
  Try
  sp_Populate_One_PkgTypeLengths.Close ;
  sp_Populate_One_PkgTypeLengths.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
  sp_Populate_One_PkgTypeLengths.ExecProc ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  sp_Populate_One_PkgTypeLengths.Close ;
  End ;

  procedure SavePkgTotals( PackageTypeNo : Integer );
  begin
  Try
  sp_PackageTotals.ParamByName('@PkgNo').AsInteger := PackageTypeNo;
  sp_PackageTotals.ExecProc;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  sp_PackageTotals.Close;
  end;

  begin
  PkgTypeNumbers := TList.Create;
  MyList := TList.Create;

  try
  SelectMatchingPkgTypeHdrs;
  MatchingPackageType ;
  if PackagetypeNo = NO_MATCH then
  Begin
  NewPackageType ;
  SavePkgTotals(PackageTypeNo);
  SavePackageTypeLengths ;
  //Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
  dmsSystem.AddPkgTypeColumns(PackageTypeNo);
  End ;
  //Dispose
  for iDtls:= 0 to (MyList.Count - 1) do
  begin
  ARecord := MyList.Items[iDtls];
  Dispose(ARecord);
  end;

  finally
  PkgTypeNumbers.Free;
  MyList.Free ;
  end;
  end;

  function UpdatePackage : Integer ;
  begin
  Try
  sp_ChangePkg.ParamByName('@PackageNo'              ).AsInteger  := mtLoadPackagesPACKAGENO.AsInteger ;
  sp_ChangePkg.ParamByName('@PackageTypeNo'          ).AsInteger  := PackageTypeNo;
  sp_ChangePkg.ParamByName('@SupplierCode'           ).AsString   := mtLoadPackagesSUPP_CODE.AsString;
  sp_ChangePkg.ParamByName('@LogicalInventoryPointNo').AsInteger  := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
  sp_ChangePkg.ParamByName('@RegistrationPointNo'    ).AsInteger  := 6 ;//RegistrationPointNo ;
  sp_ChangePkg.ParamByName('@UserID'                 ).AsInteger  := ThisUser.UserID;
  sp_ChangePkg.ParamByName('@OLD_PackageTypeNo'      ).AsInteger  := mtLoadPackagesPACKAGETYPENO.AsInteger; //this is the old pkgtype
  sp_ChangePkg.ParamByName('@SupplierNo'             ).AsInteger  := cdsOneLoadSupplierNo.AsInteger ;
  sp_ChangePkg.ParamByName('@DateCreated'            ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
  sp_ChangePkg.ParamByName('@MatPunktAgareNo'        ).AsInteger  := cdsOneLoadSupplierNo.AsInteger ;
  Result:= sp_ChangePkg.ExecProc;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  end;


  //Proc ChangePackagesToIMPProduct : Boolean ;
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  // Update packages with the selections the user has done
  // PrepareLocalPkgTable ;

  Try
  Result:= False ;
  AllPkgChangedOK:= True ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
  if (mtLoadPackagesNEWPRODUCTNO.AsInteger > 0) //or (mtLoadPackagesNEWPackageTypeNo.AsInteger > 0) then
  AND (mtLoadPackagesProductNo.AsInteger <> mtLoadPackagesNEWPRODUCTNO.AsInteger) then
  Begin
  TransactionNo := dmsConnector.StartTransaction;
  try
  if mtLoadPackagesNEWPackageTypeNo.AsInteger = -1 then
  SavePkgType
  else
  PackageTypeNo:= mtLoadPackagesNEWPackageTypeNo.AsInteger ;
  Try

  UpdatePackage ;
  except
  ShowMessage ('Error spara paket ändringar ');
  Result:= False ;
  Raise ;
  End ;

  mtLoadPackages.Edit ;
  mtLoadPackagesPackageTypeNo.AsInteger:= PackageTypeNo ;
  mtLoadPackages.Post ;

  dmsConnector.Commit(TransactionNo);
  Result:= True ;
  except
  dmsConnector.Rollback(TransactionNo);
  Result:= False ;
  end;
  End //if mtLoadPackagesNEWPRODUCTNO.AsInteger > 0 then
  else
  AllPkgChangedOK:= False ;

  mtLoadPackages.Next ;
  PackageTypeNo:= -1 ;
  end;//While not mtLoadPackages.Eof do

  if AllPkgChangedOK = False then
  ShowMessage('Alla paket i lasten kunde inte ändras till en impregnerad kvalitet') ;
  Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  end;

*)

function TdmArrivingLoads.GetPriceOfPriceList(const LoadedDate: TSQLTimeStamp;
  const SupplierNo, PriceListNo, ProductNo, ProductLengthNo: Integer): Double;
{ Var PriceAdjustment,
  RandomLengthPrice,
  FixedLengthPrice    : Double ;
  UseRandomLengthPrice   : Integer ; }
Begin
  { FixedLengthPrice := 0 ;
    RandomLengthPrice:= 0 ;
    PriceAdjustment  := 0 ;

    if PriceListNo > 0 then
    Begin }
  sq_GetPriceOfPriceList.ParamByName('PriceListNo').AsInteger := PriceListNo;
  sq_GetPriceOfPriceList.ParamByName('LoadedDate').AsSQLTimeStamp := LoadedDate;
  sq_GetPriceOfPriceList.ParamByName('ProductNo').AsInteger := ProductNo;
  sq_GetPriceOfPriceList.ParamByName('ProductLengthNo').AsInteger :=
    ProductLengthNo;
  sq_GetPriceOfPriceList.ParamByName('SupplierNo').AsInteger := SupplierNo;
  sq_GetPriceOfPriceList.Open;
  // sq_GetPriceOfPriceList.First ;
  // While not sq_GetPriceOfPriceList.Eof do
  // Begin
  if not sq_GetPriceOfPriceList.Eof then
    Result := sq_GetPriceOfPriceListUnnamed1.AsFloat;
  // UseRandomLengthPrice:= sq_GetPriceOfPriceListRandomLengthPrice.AsInteger ;
  { PriceAdjustment  := sq_GetPriceOfPriceListPriceAdjustment.AsFloat ;
    if sq_GetPriceOfPriceListProductLengthNo.AsInteger = 453 then
    RandomLengthPrice:= sq_GetPriceOfPriceListPrice.AsFloat
    else
    FixedLengthPrice:= sq_GetPriceOfPriceListPrice.AsFloat ;
    sq_GetPriceOfPriceList.Next ; }
  // End ;
  sq_GetPriceOfPriceList.Close;
  { if UseRandomLengthPrice = 1 then
    Result:= RandomLengthPrice + PriceAdjustment
    else
    Result:= FixedLengthPrice + PriceAdjustment ; }

  { if FixedLengthPrice > 0 then
    Result:= FixedLengthPrice + PriceAdjustment
    else
    Result:= RandomLengthPrice + PriceAdjustment ; }

  { if RandomLengthPrice > 0 then
    Result:= RandomLengthPrice + PriceAdjustment
    else
    Result:= FixedLengthPrice + PriceAdjustment ;
    End
    else
    Result:= 0 ; }
End;

function TdmArrivingLoads.GetPriceOfOrderRow(const Inkop: Boolean;
  const LoadedDate: TSQLTimeStamp; const SupplierNo, defsspno, ProductNo,
  ProductLengthNo: Integer): Double;
Var
  vwCost, Price, RandomLengthPrice, FixedLengthPrice: Double;
  // PriceListNo         : Integer ;
Begin
  FixedLengthPrice := 0;
  RandomLengthPrice := 0;
  Price := 0;
  // Hämta OL pris och PriceListNo från relationen LO-row -> orderline
  // om direktpriset är 0 hämtas prislist priset därav hamtas pricelistno in
  // defsspNo är LO-radens unika key

  // I direkt priset skall vwcostnaden dras ifrån om det är en försäljning.
  sq_GetOLPrice.ParamByName('defsspNo').AsInteger := defsspno;
  sq_GetOLPrice.Open;
  Try
    if not sq_GetOLPrice.Eof then
    Begin
      if Inkop then
        Price := sq_GetOLPriceInternalPrice.AsFloat
      else
      Begin
        vwCost := 0;
        sq_GetVWCost.ParamByName('LoadedDate').AsSQLTimeStamp := LoadedDate;
        sq_GetVWCost.Open;
        if not sq_GetVWCost.Eof then
          vwCost := sq_GetVWCostUnnamed1.AsFloat;
        sq_GetVWCost.Close;
        Price := sq_GetOLPriceInternalPrice.AsFloat + vwCost;
      End;
      // PriceListNo:= sq_GetOLPricePriceListNo.AsInteger ;
    End
    else
    Begin
      Result := 0;
      Exit;
    End;
  Finally
    sq_GetOLPrice.Close;
  End;

  // om direktpriset är 0 hämtas prislist priset därav hamtas pricelistno in
  if Price > 0 then
  Begin
    Result := Price;
    Exit;
  End
  // else
  // if PriceListNo > 0 then
  // Result:= GetPriceOfPriceList(LoadedDate, SupplierNo, PriceListNo, ProductNo, ProductLengthNo)
  else
    Result := 0;
End;

function TdmArrivingLoads.GetPriceOfOrderRowForAddLO(const Inkop: Boolean;
  const LoadedDate: TSQLTimeStamp; const SupplierNo, defsspno, ProductNo,
  ProductLengthNo: Integer): Double;
Var
  vwCost, Price, RandomLengthPrice, FixedLengthPrice: Double;
  // PriceListNo         : Integer ;
Begin
  FixedLengthPrice := 0;
  RandomLengthPrice := 0;
  Price := 0;
  // Hämta OL pris och PriceListNo från relationen LO-row -> orderline
  // om direktpriset är 0 hämtas prislist priset därav hamtas pricelistno in
  // defsspNo är LO-radens unika key

  // I direkt priset skall vwcostnaden dras ifrån om det är en försäljning.
  sq_GetOLPriceForADDLO.ParamByName('defsspNo').AsInteger := defsspno;
  sq_GetOLPriceForADDLO.Open;
  Try
    if not sq_GetOLPriceForADDLO.Eof then
    Begin
      if Inkop then
        Price := sq_GetOLPriceForADDLOInternalPrice.AsFloat
      else
      Begin
        vwCost := 0;
        sq_GetVWCost.ParamByName('LoadedDate').AsSQLTimeStamp := LoadedDate;
        sq_GetVWCost.Open;
        if not sq_GetVWCost.Eof then
          vwCost := sq_GetVWCostUnnamed1.AsFloat;
        sq_GetVWCost.Close;
        Price := sq_GetOLPriceForADDLOInternalPrice.AsFloat + vwCost;
      End;
      // PriceListNo:= sq_GetOLPriceForADDLOPriceListNo.AsInteger ;
    End
    else
    Begin
      Result := 0;
      Exit;
    End;
  Finally
    sq_GetOLPriceForADDLO.Close;
  End;

  // om direktpriset är 0 hämtas prislist priset därav hamtas pricelistno in
  if Price > 0 then
  Begin
    Result := Price;
    Exit;
  End
  // else
  // if PriceListNo > 0 then
  // Result:= GetPriceOfPriceList(LoadedDate, SupplierNo, PriceListNo, ProductNo, ProductLengthNo)
  else
    Result := 0;
End;

Function TdmArrivingLoads.Inkop(const LoadNo, P_SupplierNo: Integer): Boolean;
Begin
  cds_LoadRow.Active := False;
  cds_LoadRow.ParamByName('LoadNo').AsInteger := LoadNo;
  cds_LoadRow.Active := True;
  if not cds_LoadRow.Eof then
    if cds_LoadRowSSP_SupplierNo.AsInteger = P_SupplierNo then
      Result := False // Inköp = false
    else
      Result := True; // Inköp = true
  cds_LoadRow.Active := False;
End;

function TdmArrivingLoads.IsLoadAvr(const LoadNo : Integer) : Boolean ;
Begin
  Try
  sp_IsLoadAvr.ParamByName('@LoadNo').AsInteger := LoadNo ;
  sp_IsLoadAvr.Active := True ;
  if not sp_IsLoadAvr.Eof then     // inte tom then True
   Result := True
    else
     Result := False ;
  Finally
   sp_IsLoadAvr.Active := False ;
  End ;
End;


// P_SupplierNo (kan vara både kund eller leverantör) används bara när det anropas från avräkningen, då det är en specifik LoadDtlVal som uppdateras
// För att veta om lasten är ett inköp eller försäljning
procedure TdmArrivingLoads.GetIntPrice(const ForceUpdatePrice : Boolean;const P_SupplierNo, PaymentType,
  PaymentNo, LoadNo: Integer; const Update_OldPrice: Boolean);
Var
  Price: Double;
  CustomerNo, SupplierNo: Integer;
  MakeForCustAndSupp, MakeForInkop, MakeForVerk: Boolean;
  P_Inkop: Boolean;
Begin
 if (not IsLoadAvr(LoadNo){om inte sant är den tom}) or (ForceUpdatePrice) then
 Begin
  if P_SupplierNo > 0 then
  Begin
    // OM LO är ett "inköp" körs denna rutin
    P_Inkop := Inkop(LoadNo, P_SupplierNo);
    InsertLoadDtlVal(P_Inkop, P_SupplierNo, PaymentType, PaymentNo, LoadNo,
      Update_OldPrice);
    Exit;
  End;
  // cds_LoadRow innehåller alla lastrader i lasten.
  cds_LoadRow.Active := False;
  cds_LoadRow.ParamByName('LoadNo').AsInteger := LoadNo;
  cds_LoadRow.Active := True;
  if not cds_LoadRow.Eof then
  Begin
    CustomerNo := cds_LoadRowSSP_CustomerNo.AsInteger;
    SupplierNo := cds_LoadRowSSP_SupplierNo.AsInteger;
    MakeForCustAndSupp := False;
    MakeForInkop := False;
    MakeForVerk := False;

    // OM leverantör och kund är samma görs ingenting
    if cds_LoadRowSSP_CustomerNo.AsInteger = cds_LoadRowSSP_SupplierNo.AsInteger
    then
      Exit;

    // Bestäm vilken typ av affär det är
    if (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and
      (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_DANMARK) and
      (cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and
      (cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_DANMARK) then
      MakeForCustAndSupp := True // verk säljer till verk
    else if (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and
      (cds_LoadRowSSP_CustomerNo.AsInteger <> VIDA_DANMARK) and
      ((cds_LoadRowSSP_SupplierNo.AsInteger = VIDA_WOOD_COMPANY_NO) or
      (cds_LoadRowSSP_SupplierNo.AsInteger = VIDA_DANMARK)) then
      MakeForInkop := True // vidawood säljer till verk INKÖP
    else if ((cds_LoadRowSSP_CustomerNo.AsInteger = VIDA_WOOD_COMPANY_NO) or
      (cds_LoadRowSSP_CustomerNo.AsInteger = VIDA_DANMARK)) and
      ((cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_WOOD_COMPANY_NO) and
      (cds_LoadRowSSP_SupplierNo.AsInteger <> VIDA_DANMARK)) then
      MakeForVerk := True; // verk säljer till vidawood

    cds_LoadRow.Active := False;
  End // if not cds_LoadRow.Eof then
  else
  Begin
    // Om inga lastrader hittades görs ingenting
    cds_LoadRow.Active := False;
    Exit;
  End;

  // Anropa InsertLoadDtlVal beroende på vilken typ av affär
  if MakeForCustAndSupp then
  Begin
    InsertLoadDtlVal(False, SupplierNo, PaymentType, PaymentNo, LoadNo,
      Update_OldPrice);
    InsertLoadDtlVal(True, CustomerNo, PaymentType, PaymentNo, LoadNo,
      Update_OldPrice);
  End
  else if MakeForVerk then
    InsertLoadDtlVal(False, SupplierNo, PaymentType, PaymentNo, LoadNo,
      Update_OldPrice)
  else if MakeForInkop then
    InsertLoadDtlVal(True, CustomerNo, PaymentType, PaymentNo, LoadNo,
      Update_OldPrice);
 End;
End;

// PaymentType, vilken typ av avräkning som tex priskorrigering (kredit) eller vanlig debit.
procedure TdmArrivingLoads.InsertLoadDtlVal(const Inkop: Boolean;
  const SupplierNo, PaymentType, PaymentNo, LoadNo: Integer;
  const Update_OldPrice: Boolean);
Var
  Price: Double;
  XrateAtDateOfDelivery: Double;
  CurrentXrate: Double;
  ReCalcPriceByXRATE: Boolean;
Begin

  { ******************************************************************************
    get vwcost för period samt priskorrigering verk för period!

    Försäljning verk
    internpris
    - vwcost
    - priskorrigering verk

    Inköp verk
    internpris
    -fraktkostnad
    + vwcost
    - priskorrigering verk }

  // if inkop then showmessage('Inköp')  else    showmessage('Försäljning') ;

  // LM Får bara köra om lasten redan är avräknad

  cds_LoadDtlVal.ParamByName('LoadNo').AsInteger := LoadNo;
  cds_LoadDtlVal.Active := True;
  Try
    (* * Finns priset angivet på LO används alltid det i första hand på alla LO typer * *)
    (* * om det inte finns angivet                                                    * *)
    (* * 1) På normala LO kollar man om pris finns angivet på orderline och i andra hand prislista * *)
    // *********************** Gå igenom alla lastrader ***************************
    cds_LoadRow.ParamByName('LoadNo').AsInteger := LoadNo;
    cds_LoadRow.Active := True;
    Try
      cds_LoadRow.First;
      While not cds_LoadRow.Eof do
      Begin
        if cds_LoadRowPrice.AsFloat < 1 then
        // om priset finns angivet på LO tar vi det annars körs nedan rutin
        Begin
          ReCalcPriceByXRATE := True;
          // Priset fanns inte angivet direkt på LO kör detta block

          // OM LO prislista är angiven tas det priset
          // if cds_LoadRowPriceListNo.AsInteger > 0 then
          // Price:= GetPriceOfPriceList(cds_LoadRowLoadedDate.AsSQLTimeStamp, SupplierNo, cds_LoadRowPriceListNo.AsInteger, cds_LoadRowProductNo.AsInteger, cds_LoadRowProductLengthNo.AsInteger)
          // else

          // annat fall om lastorder är av normal typ tas priset från orderrad
          if (cds_LoadRowObjectType.AsInteger = 2) or
            (cds_LoadRowObjectType.AsInteger = 3) or
            (cds_LoadRowObjectType.AsInteger = 5) then
            Price := GetPriceOfOrderRow(Inkop,
              cds_LoadRowLoadedDate.AsSQLTimeStamp, SupplierNo,
              cds_LoadRowdefsspno.AsInteger, cds_LoadRowProductNo.AsInteger,
              cds_LoadRowProductLengthNo.AsInteger)
          else if cds_LoadRowObjectType.AsInteger = 1 then
            Price := GetPriceOfOrderRowForAddLO(Inkop,
              cds_LoadRowLoadedDate.AsSQLTimeStamp, SupplierNo,
              cds_LoadRowdefsspno.AsInteger, cds_LoadRowProductNo.AsInteger,
              cds_LoadRowProductLengthNo.AsInteger)
          else
            Price := 0;
        End
        else
        Begin
          ReCalcPriceByXRATE := False;
          if Inkop then
            Price := cds_LoadRowPrice.AsFloat +
              cds_LoadRowInternKundFrakt.AsFloat
          else
            Price := cds_LoadRowPrice.AsFloat;
        End;

        // if cds_LoadDtlVal.FindKey([cds_LoadRowLoadNo.AsInteger, cds_LoadRowLoadDetailNo.AsInteger, cds_LoadRowProductLengthNo.AsInteger,
        // PaymentNo, PaymentType, SupplierNo]) then
        if cds_LoadDtlVal.Locate
          ('LoadNo;LoadDetailNo;ProductLengthNo;SupplierNo',
          VarArrayOf([cds_LoadRowLoadNo.AsInteger,
          cds_LoadRowLoadDetailNo.AsInteger,
          cds_LoadRowProductLengthNo.AsInteger, SupplierNo]), []) then
          cds_LoadDtlVal.Edit
        else
          (* *  Insert record to LoadDtlVal table * *)
          cds_LoadDtlVal.Insert;

        XrateAtDateOfDelivery := 0;
        CurrentXrate := 0;

        if ReCalcPriceByXRATE then
        Begin
          XrateAtDateOfDelivery := GetXrateAtDateOfDelivery
            (cds_LoadRowLoadNo.AsInteger);
          CurrentXrate := GetCurrentXrate(cds_LoadRowLoadNo.AsInteger);

          if CurrentXrate > 0 then
            Price := (XrateAtDateOfDelivery / CurrentXrate) * Price
          else
            Price := -1;
        End;

        cds_LoadDtlValLoadNo.AsInteger := cds_LoadRowLoadNo.AsInteger;
        cds_LoadDtlValLoadDetailNo.AsInteger :=
          cds_LoadRowLoadDetailNo.AsInteger;
        cds_LoadDtlValProductLengthNo.AsInteger :=
          cds_LoadRowProductLengthNo.AsInteger;
        cds_LoadDtlValNM3.AsFloat := cds_LoadRowm3Nominal.AsFloat;
        cds_LoadDtlValPrice.AsFloat := Price;
        if Update_OldPrice then
          cds_LoadDtlValOldPrice.AsFloat      := Price;
        cds_LoadDtlValSubsum.AsFloat          := Price * cds_LoadRowm3Nominal.AsFloat;
        cds_LoadDtlValPaymentNo.AsInteger     := PaymentNo; // -1 som default
        cds_LoadDtlValPaymentType.AsInteger   := PaymentType; // 0 som default
        cds_LoadDtlValPackageTypeNo.AsInteger :=
          cds_LoadRowPackageTypeNo.AsInteger;
  

        cds_LoadDtlValSupplierNo.AsInteger      := SupplierNo;
        cds_LoadDtlValLoadedDate.AsSQLTimeStamp :=
          cds_LoadRowLoadedDate.AsSQLTimeStamp;
        cds_LoadDtlValVerk_FS.AsString          := cds_LoadRowFS.AsString;
        cds_LoadDtlVal.Post;

        cds_LoadRow.Next;
      End; // While
    Finally
      cds_LoadRow.Active := False;
    End;
    if cds_LoadDtlVal.ChangeCount > 0 then
    Begin
      cds_LoadDtlVal.ApplyUpdates(0);
      cds_LoadDtlVal.CommitUpdates;
    End;
  Finally
    cds_LoadDtlVal.Active := False;
  End;
End;

Function TdmArrivingLoads.GetCurrentXrate(const LoadNo: Integer): Double;
Begin
  Result := 0;
  sq_GetCurrentxRateExtLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_GetCurrentxRateExtLoad.Open;
  Try
    if not sq_GetCurrentxRateExtLoad.Eof then
    Begin
      if sq_GetCurrentxRateExtLoadXRate.AsFloat > 0 then
      Begin
        Result := sq_GetCurrentxRateExtLoadXRate.AsFloat;
        Exit;
      End
      else
      Begin
      End;
    End;
  Finally
    sq_GetCurrentxRateExtLoad.Close;
  End;

  if Result = 0 then
  Begin
    sq_GetCurrentxRateIntLoad.ParamByName('LoadNo').AsInteger := LoadNo;
    sq_GetCurrentxRateIntLoad.Open;
    Try
      if not sq_GetCurrentxRateIntLoad.Eof then
      Begin
        if sq_GetCurrentxRateIntLoadXRate.AsFloat > 0 then
        Begin
          Result := sq_GetCurrentxRateIntLoadXRate.AsFloat;
        End
        else
        Begin
        End;
      End;
    Finally
      sq_GetCurrentxRateIntLoad.Close;
    End;
  End; // if Result = 0 then
End;

Function TdmArrivingLoads.GetXrateAtDateOfDelivery(const LoadNo
  : Integer): Double;
Begin
  Result := 0;
  sq_GetxRateExtLoad.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_GetxRateExtLoad.Open;
  Try
    if not sq_GetxRateExtLoad.Eof then
    Begin
      if sq_GetxRateExtLoadXRate.AsFloat > 0 then
      Begin
        Result := sq_GetxRateExtLoadXRate.AsFloat;
        Exit;
      End
      else
      Begin
      End;
    End;
  Finally
    sq_GetxRateExtLoad.Close;
  End;

  if Result = 0 then
  Begin
    sq_GetxRateIntLoad.ParamByName('LoadNo').AsInteger := LoadNo;
    sq_GetxRateIntLoad.Open;
    Try
      if not sq_GetxRateIntLoad.Eof then
      Begin
        if sq_GetxRateIntLoadXRate.AsFloat > 0 then
        Begin
          Result := sq_GetxRateIntLoadXRate.AsFloat;
        End
        else
        Begin
        End;
      End;
    Finally
      sq_GetxRateIntLoad.Close;
    End;
  End; // if Result = 0 then

End;

procedure TdmArrivingLoads.dsrcPortArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
  cdsPortArrivingPackages.Active := False;
  cdsPortArrivingPackages.Close;
  cdsPortArrivingPackages.ParamByName('LoadNo').AsInteger :=
    cdsPortArrivingLoadsVerk_LoadNo.AsInteger;
  cdsPortArrivingPackages.ParamByName('ShippingPlanNo').AsInteger :=
    cdsPortArrivingLoadsLO.AsInteger;
  cdsPortArrivingPackages.ParamByName('Reference').AsString :=
    cdsPortArrivingLoadsMRKNING.AsString;
  cdsPortArrivingPackages.Open;
  cdsPortArrivingPackages.Active := True;
end;

Function TdmArrivingLoads.GetMotsvarandeVWLIPNo(const LIPNo: Integer): Integer;
Begin
  Result := -1;
  sq_Get_VWLIPNo.ParamByName('LIPNo').AsInteger := LIPNo;
  sq_Get_VWLIPNo.Open;
  Try
    if not sq_Get_VWLIPNo.Eof then
      Result := sq_Get_VWLIPNoVW_LIPNo.AsInteger
    else
      Result := -1;
  Finally
    sq_Get_VWLIPNo.Close;
  End;
End;

Function TdmArrivingLoads.SearchPkgNoInLoad(const PackageNo: Integer): Integer;
Begin
  { sq_SearchPkgNo.ParamByName('PackageNo').AsInteger:= PackageNo ;

    Case cds_SearchPkgNo.Recordcount of
    0 :
    1 : Result:= cds_SearchPkgNoLoadNo.AsInteger ;
    else }
End;

function TdmArrivingLoads.PkgNoToSuppCode(const PkgNo: Integer): String3;
var
  SuppCode: String3;

  procedure getPkgsByInventoryPlace;
  begin
    // sp_PksByInventoryPlace.Close;
    cds_PksByInventoryPlace.ParamByName('PkgNo').AsInteger := PkgNo;
    // sp_PksByInventoryPlace.ParamByName('InvOwner').AsInteger          := InventoryOwner;
    // sp_PksByInventoryPlace.ParamByName('InventoryPlaceNo').AsInteger  := InventoryPlaceNo ;
    // sp_PksByInventoryPlace.Open;
  end;

begin
  if not assigned(FOnAmbiguousPkgNo) then
    dmArrivingLoads.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  cds_PksByInventoryPlace.Active := False;
  getPkgsByInventoryPlace;
  // cds_PksByInventoryPlace.SetProvider(dsp_PksByInventoryPlace);
  cds_PksByInventoryPlace.Active := True;
  case cds_PksByInventoryPlace.RecordCount of

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
        SuppCode := cds_PksByInventoryPlace.FieldByName('SupplierCode')
          .AsString;
      end;
  else
    begin
      // More than one package in inventories owned by the specified owner has
      // the specified package number. (They must have different suppliers).
      // Allow the user to specify which one they want.
      if assigned(FOnAmbiguousPkgNo) then
        FOnAmbiguousPkgNo(Self, Self.ds_PksByInventoryPlace, SuppCode);
    end;
  end;

  Result := SuppCode;
end;

procedure TdmArrivingLoads.DataModuleCreate(Sender: TObject);
begin
  // dmArrivingLoads.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
end;

procedure TdmArrivingLoads.ResolvePkgNoAmbiguity(Sender: TObject;
  ADataSource: TDataSource; var Choice: String3);
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to pick. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_II.Create(Nil) do
    try
      DataSource := ADataSource;
      ShowModal;
      if ModalResult = mrOK then
      begin
        Choice := SupplierCodeForSelectedPkg;
        // SupplierNo := SupplierNoForSelectedpkg;
        // ProductNo  := ProductNoForSelectedpkg ;
      end
      else
        Choice := '';
    finally
      free;
    end;
end;

Function TdmArrivingLoads.SearchLoadNoByPkgNo(const PackageNo, ShippingCompanyNo
  : Integer; const SupplierCode: String): Integer;
Begin
  Try
    sq_SearchLoadNoByPkgNo.ParamByName('PackageNo').AsInteger := PackageNo;
    sq_SearchLoadNoByPkgNo.ParamByName('ShippingCompanyNo').AsInteger :=
      ShippingCompanyNo;
    sq_SearchLoadNoByPkgNo.ParamByName('SupplierCode').AsString := SupplierCode;
    sq_SearchLoadNoByPkgNo.Open;
    if not sq_SearchLoadNoByPkgNo.Eof then
      Result := sq_SearchLoadNoByPkgNoVERK_LOADNO.AsInteger
    else
      Result := -1;
  Finally
    sq_SearchLoadNoByPkgNo.Close;
  End;
End;

Function TdmArrivingLoads.GetMotsvarandeVWLIPNoForLoadingLocation
  (const LONo: Integer): Integer;
Begin
  Result := -1;
  sq_getMTSLLLipNo.ParamByName('LONo').AsInteger := LONo;
  sq_getMTSLLLipNo.Open;
  Try
    if not sq_getMTSLLLipNo.Eof then
      Result := sq_getMTSLLLipNoLIPNo.AsInteger
    else
      Result := -1;
  Finally
    sq_getMTSLLLipNo.Close;
  End;
End;

// make a log entry for packages AR
{ procedure TdmArrivingLoads.ProcessPackage_Log(const LogInvPointNo : Integer) ;
  Begin
  With dmArrivingLoads do
  Begin
  cdsPkgNumber.First ;
  While not cdsPkgNumber.Eof do
  Begin
  Try
  sp_insPkgLog.Close ;
  sp_insPkgLog.ParamByName('PackageNo').AsInteger               := cdsPkgNumberPackageNo.AsInteger ;
  sp_insPkgLog.ParamByName('SupplierCode').AsString             := cdsPkgNumberSUPPLIERCODE.AsString ;
  sp_insPkgLog.ParamByName('RegistrationPointNo').AsInteger     := cdsArrivingLoadsLOADNO.AsInteger ; //Ingen mätpunkt
  sp_insPkgLog.ParamByName('PackageTypeNo').AsInteger           := cdsPkgNumberPACKAGETYPENO.AsInteger ;
  sp_insPkgLog.ParamByName('LogicalInventoryPointNo').AsInteger := LogInvPointNo ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
  sp_insPkgLog.ParamByName('UserID').AsInteger                  := ThisUser.UserID ;
  sp_insPkgLog.ParamByName('Operation').AsInteger               := oper_AnkomstRegistrerad ;
  sp_insPkgLog.ExecProc ;
  Except
  On E: Exception do
  Begin
  ShowMessage(E.Message+' :sp_insPkgLog.ExecProc') ;
  Raise ;
  End ;
  End ; //Except
  cdsPkgNumber.Next ;
  End ;//While
  End ; //With dmArrivingLoads do
  End ; }

function TdmArrivingLoads.GetNoOfPkgs: Integer;
begin
  Try
    sq_PkgsInLoad.Close;
    sq_PkgsInLoad.ParamByName('LoadNo').AsInteger :=
      cdsArrivingLoadsLOADNO.AsInteger;
    sq_PkgsInLoad.ParamByName('ShippingPlanNo').AsInteger :=
      cdsArrivingLoadsLO.AsInteger;
    sq_PkgsInLoad.Open;
    if not sq_PkgsInLoad.Eof then
      Result := sq_PkgsInLoadNoOfPkgs.AsInteger
    else
      Result := 0;
  Finally
    sq_PkgsInLoad.Close;
  End;
end;

Function TdmArrivingLoads.ex_AR_SALES_Loads(const OldLoadNo,
  LIPNo: Integer): Integer;
Begin
  // START A TRANSACTION
  dmsConnector.StartTransaction;

  Try
    Result := -1;
    sp_CopyLOLoadToSales.ParamByName('@SrcLoadNo').AsInteger := OldLoadNo;
    sp_CopyLOLoadToSales.ParamByName('@CreateUser').AsInteger :=
      ThisUser.UserID;
    sp_CopyLOLoadToSales.ParamByName('@LIPNo').AsInteger := LIPNo;
    Try
      sp_CopyLOLoadToSales.ExecProc;
      Result := sp_CopyLOLoadToSales.ParamByName('@NewLoadNo').AsInteger;

      dmsConnector.Commit;
    except
      On E: Exception do
      Begin
        dmsConnector.Rollback;
        Result := -1;
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;

  Finally
    sp_CopyLOLoadToSales.Close;
  End;
End;

Function TdmArrivingLoads.ARINTADDLOLoadToLager(const OldLoadNo, LIPNo: Integer;
  const ChangeToIMPProduct: Integer): Boolean;
Begin
  // START A TRANSACTION
  dmsConnector.StartTransaction;

  Try
    Result := False;

    sp_CopyARIntAddLOLoad.ParamByName('@SrcLoadNo').AsInteger := OldLoadNo;
    sp_CopyARIntAddLOLoad.ParamByName('@CreateUser').AsInteger :=
      ThisUser.UserID;
    sp_CopyARIntAddLOLoad.ParamByName('@LIPNo').AsInteger := LIPNo;
    Try
      sp_CopyARIntAddLOLoad.ExecProc;
      Result := sp_CopyARIntAddLOLoad.ParamByName('@NewLoadNo').AsInteger = 1;

      if Result then
      Begin
        if ChangeToIMPProduct = 1 then
        Begin
          sp_ChangeToIMPProduct.ParamByName('@LoadNo').AsInteger := OldLoadNo;
          sp_ChangeToIMPProduct.ParamByName('@UserID').AsInteger :=
            ThisUser.UserID;
          sp_ChangeToIMPProduct.ExecProc;
        End
        else if ChangeToIMPProduct = 2 then
        Begin
          sp_ChangeToIMPProductForIntLoad.ParamByName('@LoadNo').AsInteger :=
            OldLoadNo ;
          sp_ChangeToIMPProductForIntLoad.ParamByName('@UserID').AsInteger :=
            ThisUser.UserID ;
          sp_ChangeToIMPProductForIntLoad.ExecProc;
        End;

      End;
      // Result:= True ;
      dmsConnector.Commit;
    except
      On E: Exception do
      Begin
        dmsConnector.Rollback;
        Result := False;
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;

  Finally
    sp_CopyARIntAddLOLoad.Close;
  End;
End;

Function TdmArrivingLoads.ARPOLoadToLager(const OldLoadNo,
  LIPNo: Integer): Boolean;
Begin
  // START A TRANSACTION
  dmsConnector.StartTransaction;

  Try
    Result := False;
    sp_CopyARIntAddLOLoad.ParamByName('@SrcLoadNo').AsInteger := OldLoadNo;
    sp_CopyARIntAddLOLoad.ParamByName('@CreateUser').AsInteger :=
      ThisUser.UserID;
    sp_CopyARIntAddLOLoad.ParamByName('@LIPNo').AsInteger := LIPNo;
    Try
      sp_CopyARIntAddLOLoad.ExecProc;
      Result := sp_CopyARIntAddLOLoad.ParamByName('@NewLoadNo').AsInteger = 1;
      // Result:= True ;
      dmsConnector.Commit;
    except
      On E: Exception do
      Begin
        dmsConnector.Rollback;
        Result := False;
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;

  Finally
    sp_CopyARIntAddLOLoad.Close;
  End;
End;

Function TdmArrivingLoads.AR_TRADING_PO_Loads(const OldLoadNo,
  LIPNo: Integer): Boolean;
Begin
  // START A TRANSACTION
  dmsConnector.StartTransaction;

  Try
    Result := False;
    sp_CopyARIntAddLOLoad.ParamByName('@SrcLoadNo').AsInteger := OldLoadNo;
    sp_CopyARIntAddLOLoad.ParamByName('@CreateUser').AsInteger :=
      ThisUser.UserID;
    sp_CopyARIntAddLOLoad.ParamByName('@LIPNo').AsInteger := LIPNo;
    Try
      sp_CopyARIntAddLOLoad.ExecProc;
      Result := sp_CopyARIntAddLOLoad.ParamByName('@NewLoadNo').AsInteger = 1;
      // Result:= True ;
      dmsConnector.Commit;
    except
      On E: Exception do
      Begin
        dmsConnector.Rollback;
        Result := False;
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;

  Finally
    sp_CopyARIntAddLOLoad.Close;
  End;
End;

Function TdmArrivingLoads.IsLoadAvraknad(const LoadNo: Integer): Boolean;
Begin
  // Är lasten avräknad ?
  Result := False;
  sq_IsLoadAvraknad.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_IsLoadAvraknad.Open;
  Try
    if Not sq_IsLoadAvraknad.Eof then
    Begin
      ShowMessage
        ('Cannot update prices here, please go to settlement and update prices there. Settlement number: '
        + sq_IsLoadAvraknadPaymentNo.AsString);
      Result := True;
    End;
  Finally
    sq_IsLoadAvraknad.Close;
  End;
End;

procedure TdmArrivingLoads.SaveUserProps22(const Form: String);
Var
  x: Integer;
Begin
  // if mtProps.State in [dsEdit, dsInsert] then
  // mtProps.Post ;
  if cds_Props22.State in [dsEdit, dsInsert] then
    cds_Props22.Post;
  if cds_Props22.ChangeCount > 0 then
  Begin
    cds_Props22.ApplyUpdates(0);
    cds_Props22.CommitUpdates;
  End;
  {
    cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
    cds_Props.ParamByName('Form').AsString    := Form ;
    cds_Props.Active:= True ;
    if cds_Props.Eof then
    Begin
    cds_Props.Insert ;
    cds_PropsForm.AsString    := Form ;
    cds_PropsUserID.AsInteger := ThisUser.UserID ;
    End
    else
    cds_Props.Edit ;

    //  For x := 0 to 14 do
    //   cds_Props.Fields.Fields[x].AsVariant:= mtProps.Fields.Fields[x].AsVariant ;
    cds_Props.Post ;
    if cds_Props.ChangeCount > 0 then
    Begin
    cds_Props.ApplyUpdates(0) ;
    cds_Props.CommitUpdates ;
    End ;

    cds_Props.Active:= False ;
  }
End;

(*
  procedure TdmArrivingLoads.LoadUserProps (const Form : String) ;
  Var x : Integer ;
  Begin
  // mtProps.Active:= True ;
  cds_Props.Active := False ;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  cds_Props.ParamByName('Form').AsString    := Form ;
  cds_Props.Active:= True ;
  if not cds_Props.Eof then
  Begin
  //  mtProps.Insert ;
  //  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  //  For x := 0 to 14 do
  //   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
  //  mtProps.Post ;

  //  mtPropsOwnerNo.OnChange     := nil ;
  //  mtPropsPIPNo.OnChange       := nil ;
  //  mtPropsProducerNo.OnChange  := nil ;
  //  Try
  //  mtProps.Edit ;
  //  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  //  For x := 0 to 14 do
  //   mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
  //  mtPropsRegDate.AsDateTime := Now ;
  //  mtPropsRunNo.AsInteger    := -1 ;
  //  mtProps.Post ;
  //  Finally
  //   mtPropsProducerNo.OnChange   := mtPropsProducerNoChange ;
  //   mtPropsPIPNo.OnChange        := mtPropsPIPNoChange ;
  //   mtPropsOwnerNo.OnChange      := mtPropsOwnerNoChange ;
  //  End ;
  End
  else
  Begin
  cds_Props.Insert ;
  //  mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
  cds_PropsVerkNo.AsInteger       :=  ThisUser.CompanyNo ;
  cds_PropsForm.AsString          := Form ;

  {  if mtPropsRoleType.AsInteger = cLego then
  Begin
  mtPropsOwnerNo.AsInteger     :=  VIDA_WOOD_COMPANY_NO ;
  mtPropsPIPNo.AsInteger       :=  dmsContact.GetPIPByClientNoPIPNO(ThisUser.CompanyNo) ;
  End
  else
  mtPropsOwnerNo.AsInteger      :=  ThisUser.CompanyNo ; }

  cds_PropsInputOption.AsInteger  :=  0 ;
  cds_PropsRegDate.AsDateTime     :=  Now ;
  cds_PropsCopyPcs.AsInteger      :=  1 ;
  cds_PropsRunNo.AsInteger        :=  -1 ;
  cds_PropsProducerNo.AsInteger   :=  ThisUser.CompanyNo ;
  cds_PropsAutoColWidth.AsInteger :=  1 ;
  //  cds_PropsSupplierCode.AsString  := dmsContact.GetClientCode(ThisUser.CompanyNo) ;
  cds_PropsLengthGroupNo.AsInteger:= -1 ;
  cds_Props.Post ;
  End ;
  // cds_Props.Active:= False ;
  End ;
*)

procedure TdmArrivingLoads.cds_Props22VerkNoChange(Sender: TField);
begin
  cdsArrivingLoads.Active := False;
end;

function TdmArrivingLoads.AR_ExternLoad(const LoadNo, Status, LIPNo,
  CreatedUser: Integer): Boolean;
Begin
  Result := True;
  Try
    sp_AR_Load_Ext.ParamByName('@LoadNo').AsInteger      := LoadNo;
    sp_AR_Load_Ext.ParamByName('@Status').AsInteger      := Status;
    sp_AR_Load_Ext.ParamByName('@LIPNo').AsInteger       := LIPNo;
    sp_AR_Load_Ext.ParamByName('@CreatedUser').AsInteger := CreatedUser;
    sp_AR_Load_Ext.ExecProc;

    { cdsInvoiceList.Edit ;
      cdsInvoiceListArDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
      cdsInvoiceListIAR_IntInvNo.AsInteger := Status ;
      cdsInvoiceList.Post ; }

  except
    On E: Exception do
    Begin
      Result := False;
      // dmsSystem.FDoLog(E.Message) ;
      ShowMessage(E.Message +' sp_AR_Load_Ext');
      Raise;
    End;
  end;
End;

function TdmArrivingLoads.GetNewPackage_Size(var PackageSizeName : String) : Integer ;
var fPackageSize: TfPackageSize;
Begin
 fPackageSize := TfPackageSize.Create(nil);
 dmsSystem.cds_PackageSize.Active := True ;
 Try
  if fPackageSize.ShowModal = mrOK then
  Begin
   Result           := dmsSystem.cds_PackageSizePackageSizeNo.AsInteger ;
   PackageSizeName  := dmsSystem.cds_PackageSizePackageSizeName.AsString ;
  End
    else
     Begin
      Result            := -1 ;
      PackageSizeName   := '' ;
     End;
 Finally
  dmsSystem.cds_PackageSize.Active := False ;
  FreeAndNil(fPackageSize) ;
 End;
End;

procedure TdmArrivingLoads.CngArtNoByPkgSize (const PackageNo, Package_Size : Integer; Prefix : string) ;
Begin
 sp_CngArtNoByPkgSize.ParamByName('@PackageNo').AsInteger     := PackageNo ;
 sp_CngArtNoByPkgSize.ParamByName('@SupplierCode').AsString   := Prefix ;
 sp_CngArtNoByPkgSize.ParamByName('@UserID').AsInteger        := ThisUser.UserID ;
 sp_CngArtNoByPkgSize.ParamByName('@Package_Size').AsInteger  := Package_Size ;
 Try
  sp_CngArtNoByPkgSize.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_CngArtNoByPkgSize.ExecProc') ;
    Raise ;
   End ;
 End ;
End ;

procedure TdmArrivingLoads.CopyRtR(const OldLONo : Integer) ;
Begin
 sp_CopyRtR.ParamByName('@CreateUser').AsInteger  := ThisUser.UserID ;
 sp_CopyRtR.ParamByName('@OldLONo').AsInteger     := OldLONo ;
 Try
 sp_CopyRtR.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_CopyRtR.ExecProc') ;
    Raise ;
   End ;
 End ;
End ;

//Remove RtR load when regret AR
procedure TdmArrivingLoads.delAR_RtRLoad(const Confirmed_LoadNo  : Integer) ;
begin
 sp_delAR_RtRLoad.ParamByName('@Confirmed_LoadNo').AsInteger :=  Confirmed_LoadNo ;
 Try
 sp_delAR_RtRLoad.ExecProc ;
 Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_delAR_RtRLoad.ExecProc') ;
    Raise ;
   End ;
 End ;
end;

end.
