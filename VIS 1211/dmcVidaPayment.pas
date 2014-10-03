unit dmcVidaPayment;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, DBXpress ;


type
  TdmcPayment = class(TDataModule)
    sq_ArrivingLoads: TSQLQuery;
    dspArrivingLoads: TDataSetProvider;
    cdsArrivingLoads: TClientDataSet;
    dsrcArrivingLoads: TDataSource;
    sq_ArrivingPackages: TSQLQuery;
    dspArrivingPackages: TDataSetProvider;
    cdsArrivingPackages: TClientDataSet;
    dsrcArrivingPackages: TDataSource;
    sq_PaymentHead: TSQLQuery;
    sq_PaymentHeadPaymentNo: TIntegerField;
    sq_PaymentHeadSenderStatus: TIntegerField;
    sq_PaymentHeadReceiverStatus: TIntegerField;
    sq_PaymentHeadCreatedUser: TIntegerField;
    sq_PaymentHeadModifiedUser: TIntegerField;
    sq_PaymentHeadDateCreated: TSQLTimeStampField;
    sq_PaymentLoads: TSQLQuery;
    sq_PaymentLoadsPaymentNo: TIntegerField;
    sq_PaymentLoadsLoadNo: TIntegerField;
    sq_PaymentLoadsCreatedUser: TIntegerField;
    sq_PaymentLoadsModifiedUser: TIntegerField;
    sq_PaymentLoadsDateCreated: TSQLTimeStampField;
    dspPaymentHead: TDataSetProvider;
    dspPaymentLoads: TDataSetProvider;
    cdsPaymentHead: TClientDataSet;
    cdsPaymentHeadPaymentNo: TIntegerField;
    cdsPaymentHeadSenderStatus: TIntegerField;
    cdsPaymentHeadReceiverStatus: TIntegerField;
    cdsPaymentHeadCreatedUser: TIntegerField;
    cdsPaymentHeadModifiedUser: TIntegerField;
    cdsPaymentHeadDateCreated: TSQLTimeStampField;
    cdsPaymentLoads: TClientDataSet;
    cdsPaymentLoadsPaymentNo: TIntegerField;
    cdsPaymentLoadsLoadNo: TIntegerField;
    cdsPaymentLoadsCreatedUser: TIntegerField;
    cdsPaymentLoadsModifiedUser: TIntegerField;
    cdsPaymentLoadsDateCreated: TSQLTimeStampField;
    dsPaymentHead: TDataSource;
    sq_PaymentLoadList: TSQLQuery;
    dsPaymentLoadList: TDataSource;
    dspPaymentLoadList: TDataSetProvider;
    cdsPaymentLoadList: TClientDataSet;
    cdsArrivingPackagesLO: TIntegerField;
    cdsArrivingPackagesPACKAGE_NO: TIntegerField;
    cdsArrivingPackagesSUPPLIERCODE: TStringField;
    cdsArrivingPackagesM3_NET: TFloatField;
    cdsArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    cdsArrivingPackagesPCS: TIntegerField;
    cdsArrivingPackagesPACKAGEOK: TSmallintField;
    cdsArrivingPackagesPACKAGE_LOG: TStringField;
    sq_ArrivingPackagesLO: TIntegerField;
    sq_ArrivingPackagesPACKAGE_NO: TIntegerField;
    sq_ArrivingPackagesSUPPLIERCODE: TStringField;
    sq_ArrivingPackagesM3_NET: TFloatField;
    sq_ArrivingPackagesPRODUCT_DESCRIPTION: TStringField;
    sq_ArrivingPackagesPCS: TIntegerField;
    sq_ArrivingPackagesPACKAGEOK: TWordField;
    sq_ArrivingPackagesPACKAGE_LOG: TStringField;
    sq_ArrivingPackagesLOADNO: TIntegerField;
    cdsArrivingPackagesLOADNO: TIntegerField;
    sq_PaymentHeadTypeOf: TIntegerField;
    cdsPaymentHeadTypeOf: TIntegerField;
    sq_PaymentLoadsTypeOf: TIntegerField;
    cdsPaymentLoadsTypeOf: TIntegerField;
    sp_ShippingInstruction: TSQLStoredProc;
    dspShippingInstruction: TDataSetProvider;
    cdsShippingInstruction: TClientDataSet;
    dsShippingInstruction: TDataSource;
    cdsShippingInstructionETD: TSQLTimeStampField;
    cdsShippingInstructionCarrierName: TStringField;
    cdsShippingInstructionINVOICENO: TIntegerField;
    cdsShippingInstructionBOOKING: TStringField;
    cdsShippingInstructionCONTAINERNO: TStringField;
    cdsShippingInstructionWEIGHT: TIntegerField;
    cdsShippingInstructionPKGS: TIntegerField;
    cdsShippingInstructionSEK_VALUE: TFloatField;
    cdsShippingInstructionM3_ACT: TFloatField;
    cdsShippingInstructionLOADNO: TIntegerField;
    sq_ArrivingPackagesM3_NOM: TFloatField;
    sq_ArrivingPackagesLOAD_DETAILNO: TIntegerField;
    cdsArrivingPackagesM3_NOM: TFloatField;
    cdsArrivingPackagesLOAD_DETAILNO: TIntegerField;
    sp_KP_List: TSQLStoredProc;
    dspKP_List: TDataSetProvider;
    cdsKP_List: TClientDataSet;
    dsKP_List: TDataSource;
    cdsKP_ListORDERNUMBER: TStringField;
    cdsKP_ListPRODUCT: TStringField;
    cdsKP_ListLENGTH: TStringField;
    cdsKP_ListDESTINATION: TStringField;
    cdsKP_ListSUPPLIER: TStringField;
    cdsKP_ListLO: TIntegerField;
    cdsKP_ListVOLUME: TFloatField;
    cdsKP_ListVOLUNIT: TStringField;
    cdsKP_ListDELIVERED: TFloatField;
    cdsKP_ListBALANCE: TFloatField;
    cdsKP_ListM3NOM_DELIVERED: TFloatField;
    cdsKP_ListSHIPMENT: TStringField;
    cdsKP_ListREADYDATE: TStringField;
    cdsKP_ListETD: TSQLTimeStampField;
    cdsKP_ListVESSEL: TStringField;
    cdsKP_ListETA: TSQLTimeStampField;
    cdsKP_ListINVOICENO: TIntegerField;
    cdsKP_ListCLIENT: TStringField;
    cdsKP_ListSTATUS: TIntegerField;
    cdsKP_ListORDERNO: TIntegerField;
    cdsKP_ListCLIENTNO: TIntegerField;
    cdsKP_ListDESTINATIONNO: TIntegerField;
    cdsKP_ListUNIQUERECORDNO: TIntegerField;
    cdsKP_ListSALESREGIONNO: TIntegerField;
    cdsKP_ListORDERTYPE: TIntegerField;
    sq_PaymentHeadSupplierNo: TIntegerField;
    sq_PaymentHeadCustomerNo: TIntegerField;
    cdsPaymentHeadSupplierNo: TIntegerField;
    cdsPaymentHeadCustomerNo: TIntegerField;
    sq_PayHead: TSQLQuery;
    dspPayHead: TDataSetProvider;
    cdsPayHead: TClientDataSet;
    dsPayHead: TDataSource;
    sq_ArrivingPackagesVALUE: TFloatField;
    cdsArrivingPackagesVALUE: TFloatField;
    sq_ArrivingLoadsINITIALS: TStringField;
    sq_ArrivingLoadsVIS_FS: TIntegerField;
    sq_ArrivingLoadsMILL_FS: TStringField;
    sq_ArrivingLoadsLOAD_DATE: TSQLTimeStampField;
    sq_ArrivingLoadsSUPPCODE: TStringField;
    sq_ArrivingLoadsINT_CUSTOMER: TStringField;
    sq_ArrivingLoadsCUSTOMERNO: TIntegerField;
    cdsArrivingLoadsINITIALS: TStringField;
    cdsArrivingLoadsVIS_FS: TIntegerField;
    cdsArrivingLoadsMILL_FS: TStringField;
    cdsArrivingLoadsLOAD_DATE: TSQLTimeStampField;
    cdsArrivingLoadsSUPPCODE: TStringField;
    cdsArrivingLoadsINT_CUSTOMER: TStringField;
    cdsArrivingLoadsCUSTOMERNO: TIntegerField;
    sq_ArrivingPackagesPRICE: TFloatField;
    cdsArrivingPackagesPRICE: TFloatField;
    sq_ArrivingPackagesNOM_LINEAL_METER: TFloatField;
    cdsArrivingPackagesNOM_LINEAL_METER: TFloatField;
    sq_PaymentLoadsPrice: TFloatField;
    sq_PaymentLoadsTotalm3Nominal: TFloatField;
    sq_PaymentLoadsTotalm3Actual: TFloatField;
    sq_PaymentLoadsTotalLinealMeterNominalLength: TFloatField;
    cdsPaymentLoadsPrice: TFloatField;
    cdsPaymentLoadsTotalm3Nominal: TFloatField;
    cdsPaymentLoadsTotalm3Actual: TFloatField;
    cdsPaymentLoadsTotalLinealMeterNominalLength: TFloatField;
    sq_SummaryLoadDetails: TSQLQuery;
    sq_SummaryLoadDetailsAKT_THICK: TFloatField;
    sq_SummaryLoadDetailsAKT_WIDTH: TFloatField;
    sq_SummaryLoadDetailsACT_M3: TFloatField;
    sq_SummaryLoadDetailsNOM_LPM: TFloatField;
    sq_SummaryLoadDetailsNOM_THICK: TFloatField;
    sq_SummaryLoadDetailsNOM_WIDTH: TFloatField;
    sq_SummaryLoadDetailsNOM_M3: TFloatField;
    sq_SummaryLoadDetailsLOADNO: TIntegerField;
    sq_SummaryLoadDetailsPRICE: TFloatField;
    sq_PaymentLoadsACT_Thick: TFloatField;
    sq_PaymentLoadsACT_Width: TFloatField;
    sq_PaymentLoadsNOM_Thick: TFloatField;
    sq_PaymentLoadsNOM_Width: TFloatField;
    cdsPaymentLoadsACT_Thick: TFloatField;
    cdsPaymentLoadsACT_Width: TFloatField;
    cdsPaymentLoadsNOM_Thick: TFloatField;
    cdsPaymentLoadsNOM_Width: TFloatField;
    sq_SummaryLoadDetailsLO: TIntegerField;
    sq_PaymentLoadsShippingPlanNo: TIntegerField;
    cdsPaymentLoadsShippingPlanNo: TIntegerField;
    sq_ArrivingPackagesEND_CUSTOMER: TStringField;
    cdsArrivingPackagesEND_CUSTOMER: TStringField;
    sq_PaymentHeadMILL_InvoiceNo: TStringField;
    sq_PaymentLoadsGradeName: TStringField;
    cdsPaymentLoadsGradeName: TStringField;
    cdsPaymentHeadMILL_InvoiceNo: TStringField;
    sq_SummaryLoadDetailsGRADENAME: TStringField;
    sq_PaymentLoadListAVRAKNING_NO: TIntegerField;
    sq_PaymentLoadListINITIALS: TStringField;
    sq_PaymentLoadListVIS_FS: TIntegerField;
    sq_PaymentLoadListMILL_FS: TStringField;
    sq_PaymentLoadListLOAD_DATE: TSQLTimeStampField;
    sq_PaymentLoadListCUSTOMER: TStringField;
    sq_PaymentLoadListAKT_THICK: TFloatField;
    sq_PaymentLoadListAKT_WIDTH: TFloatField;
    sq_PaymentLoadListACT_M3: TFloatField;
    sq_PaymentLoadListNOM_LPM: TFloatField;
    sq_PaymentLoadListNOM_THICK: TFloatField;
    sq_PaymentLoadListNOM_WIDTH: TFloatField;
    sq_PaymentLoadListNOM_M3: TFloatField;
    sq_PaymentLoadListPRICE: TFloatField;
    sq_PaymentLoadListVALUE: TFloatField;
    sq_PaymentLoadListMOMS_VALUE: TFloatField;
    sq_PaymentLoadListSUPPCODE: TStringField;
    sq_PaymentLoadListCUSTOMER_1: TStringField;
    sq_PaymentLoadListCUSTOMERNO: TIntegerField;
    sq_PaymentLoadListCountryNo: TIntegerField;
    sq_PaymentLoadListGRADENAME: TStringField;
    sq_PaymentLoadListMILL_INVOICE_NO: TStringField;
    cdsPaymentLoadListAVRAKNING_NO: TIntegerField;
    cdsPaymentLoadListINITIALS: TStringField;
    cdsPaymentLoadListVIS_FS: TIntegerField;
    cdsPaymentLoadListMILL_FS: TStringField;
    cdsPaymentLoadListLOAD_DATE: TSQLTimeStampField;
    cdsPaymentLoadListCUSTOMER: TStringField;
    cdsPaymentLoadListAKT_THICK: TFloatField;
    cdsPaymentLoadListAKT_WIDTH: TFloatField;
    cdsPaymentLoadListACT_M3: TFloatField;
    cdsPaymentLoadListNOM_LPM: TFloatField;
    cdsPaymentLoadListNOM_THICK: TFloatField;
    cdsPaymentLoadListNOM_WIDTH: TFloatField;
    cdsPaymentLoadListNOM_M3: TFloatField;
    cdsPaymentLoadListPRICE: TFloatField;
    cdsPaymentLoadListVALUE: TFloatField;
    cdsPaymentLoadListMOMS_VALUE: TFloatField;
    cdsPaymentLoadListSUPPCODE: TStringField;
    cdsPaymentLoadListCUSTOMER_1: TStringField;
    cdsPaymentLoadListCUSTOMERNO: TIntegerField;
    cdsPaymentLoadListCountryNo: TIntegerField;
    cdsPaymentLoadListGRADENAME: TStringField;
    cdsPaymentLoadListMILL_INVOICE_NO: TStringField;
    sq_ArrivingLoadsSKATTE_UPPLAG: TIntegerField;
    cdsArrivingLoadsSKATTE_UPPLAG: TIntegerField;
    sq_SSP: TSQLQuery;
    dsp_SSP: TDataSetProvider;
    cds_SSP: TClientDataSet;
    sq_SSP_Exist: TSQLQuery;
    sq_SSP_ExistSupplierShipPlanObjectNo: TIntegerField;
    sq_LoadHead: TSQLQuery;
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
    dsp_LoadHead: TDataSetProvider;
    cds_LoadHead: TClientDataSet;
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
    sq_LoadPackages: TSQLQuery;
    sq_LoadPackagesLogicalInventoryPointNo: TIntegerField;
    sq_LoadPackagesPackageNo: TIntegerField;
    sq_LoadPackagesSupplierCode: TStringField;
    sq_Pkgs: TSQLQuery;
    sq_PkgsLogicalInventoryPointNo: TIntegerField;
    sq_PkgsPackageNo: TIntegerField;
    sq_PkgsSupplierCode: TStringField;
    dsp_Pkgs: TDataSetProvider;
    cds_Pkgs: TClientDataSet;
    cds_PkgsLogicalInventoryPointNo: TIntegerField;
    cds_PkgsPackageNo: TIntegerField;
    cds_PkgsSupplierCode: TStringField;
    sq_GetNewLIPno: TSQLQuery;
    sq_GetNewLIPnoNew_LogicalInventoryPointNo: TIntegerField;
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
    sq_ArrivingLoadsSUPPLIER_NO: TIntegerField;
    cdsArrivingLoadsSUPPLIER_NO: TIntegerField;
    sq_SSPSupplierShipPlanObjectNo: TIntegerField;
    sq_SSPCustShipPlanDetailObjectNo: TIntegerField;
    sq_SSPShipType: TIntegerField;
    sq_SSPObjectType: TIntegerField;
    sq_SSPOrderNo: TIntegerField;
    sq_SSPOrderLineNo: TIntegerField;
    sq_SSPShippingPlanNo: TIntegerField;
    sq_SSPSupplierNo: TIntegerField;
    sq_SSPLoadingLocationNo: TIntegerField;
    sq_SSPDeliveryTermsNo: TIntegerField;
    sq_SSPPaymentTermsNo: TIntegerField;
    sq_SSPPrice: TFloatField;
    sq_SSPCurrencyNo: TIntegerField;
    sq_SSPNoOfUnits: TFloatField;
    sq_SSPPriceUnitNo: TIntegerField;
    sq_SSPVolumeUnitNo: TIntegerField;
    sq_SSPDestinationNo: TIntegerField;
    sq_SSPShippingPlanStatus: TIntegerField;
    sq_SSPStartETDYearWeek: TIntegerField;
    sq_SSPEndETDYearWeek: TIntegerField;
    sq_SSPInternalNote: TStringField;
    sq_SSPProductDescription: TStringField;
    sq_SSPLengthDescription: TStringField;
    sq_SSPAcceptedBySupplier: TIntegerField;
    sq_SSPProductLengthNo: TIntegerField;
    sq_SSPProductGroupNo: TIntegerField;
    sq_SSPActualM3Net: TFloatField;
    sq_SSPShipToInvPointNo: TIntegerField;
    sq_SSPProductNo: TIntegerField;
    sq_SSPLOText: TMemoField;
    sq_SSPMinActualLengthMM: TFloatField;
    sq_SSPMaxActualLengthMM: TFloatField;
    sq_SSPPackageCode: TStringField;
    sq_SSPFreightOrderByClientNo: TIntegerField;
    sq_SSPSequenceNo: TIntegerField;
    sq_SSPCreatedUser: TIntegerField;
    sq_SSPModifiedUser: TIntegerField;
    sq_SSPDateCreated: TSQLTimeStampField;
    sq_SSPPartnerNo: TIntegerField;
    sq_SSPProdInstructNo: TIntegerField;
    sq_SSPShowInGrid: TIntegerField;
    sq_SSPPcsPerPkg: TIntegerField;
    sq_SSPCustomerNo: TIntegerField;
    sq_SSPCustomerPrice: TFloatField;
    sq_SSPCustomerShowInGrid: TIntegerField;
    sq_SSPLO_No: TIntegerField;
    sq_SSPDelivery_WeekNo: TIntegerField;
    sq_NoOfLoads_LO: TSQLQuery;
    sq_NoOfLoads_LONoOfLoads: TIntegerField;
    sq_Update_SSP: TSQLQuery;
    dsp_Update_SSP: TDataSetProvider;
    cds_Update_SSP: TClientDataSet;
    sq_ArrivingLoadsINVPOINTNO: TIntegerField;
    sq_ArrivingLoadsINVPOINTNAME: TStringField;
    cdsArrivingLoadsINVPOINTNAME: TStringField;
    sq_Update_SSPCustomerNo: TIntegerField;
    sq_Update_SSPLoadNo: TIntegerField;
    sq_Update_SSPSupplierShipPlanObjectNo: TIntegerField;
    sq_Update_SSPSupplierNo: TIntegerField;
    sq_Update_SSPShippingPlanNo: TIntegerField;
    sq_Update_SSPObjectType: TIntegerField;
    sq_Update_SSPLoadingLocationNo: TIntegerField;
    sq_Update_SSPShipToInvPointNo: TIntegerField;
    sq_Update_SSPProductNo: TIntegerField;
    sq_Update_SSPProductLengthNo: TIntegerField;
    sq_Update_SSPModifiedUser: TIntegerField;
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
    sq_LoadDetail: TSQLQuery;
    dsp_LoadDetail: TDataSetProvider;
    cds_LoadDetail: TClientDataSet;
    sq_LoadDetailLoadDetailNo: TIntegerField;
    sq_LoadDetailLoadNo: TIntegerField;
    sq_LoadDetailShippingPlanNo: TIntegerField;
    cds_LoadDetailLoadDetailNo: TIntegerField;
    cds_LoadDetailLoadNo: TIntegerField;
    cds_LoadDetailShippingPlanNo: TIntegerField;
    sq_LS: TSQLQuery;
    sq_LSLoadNo: TIntegerField;
    sq_LSShippingPlanNo: TIntegerField;
    dsp_LS: TDataSetProvider;
    cds_LS: TClientDataSet;
    cds_LSLoadNo: TIntegerField;
    cds_LSShippingPlanNo: TIntegerField;
    sq_ConfLoad: TSQLQuery;
    dsp_ConfLoad: TDataSetProvider;
    cds_ConfLoad: TClientDataSet;
    sq_DelConPkgLog: TSQLQuery;
    cds_ConfLoadConfirmed_LoadNo: TIntegerField;
    cds_ConfLoadConfirmed_ShippingPlanNo: TIntegerField;
    sq_INS_PaymentLoad_ST: TSQLQuery;
    sq_LO_Type: TSQLQuery;
    sq_LO_TypeObjectType: TIntegerField;
    sq_LO_TypeOrderType: TIntegerField;
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
    sq_LoadRemAvr: TSQLQuery;
    dsp_LoadRemAvr: TDataSetProvider;
    cds_LoadRemAvr: TClientDataSet;
    cds_LoadRemAvrLoadNo: TIntegerField;
    cds_LoadRemAvrDateCreated: TSQLTimeStampField;
    cds_LoadRemAvrCreatedUser: TIntegerField;
    cdsPaymentHeadCustName: TStringField;
    sq_IntOrderHead: TSQLQuery;
    dsp_IntOrderHead: TDataSetProvider;
    sq_IntOrderHeadOrderNo: TIntegerField;
    sq_IntOrderHeadShippingPlanNo: TIntegerField;
    sq_IntOrderHeadCustomerNo: TIntegerField;
    sq_IntOrderHeadDestinationNo: TIntegerField;
    sq_IntOrderHeadDefaultShipToInvPointNo: TIntegerField;
    sq_IntOrderHeadStatus: TIntegerField;
    sq_IntOrderHeadOrderNoText: TStringField;
    sq_IntOrderHeadDefaultDeliveryTermsNo: TIntegerField;
    sq_IntOrderHeadDefaultPaymentTermsNo: TIntegerField;
    sq_IntOrderHeadDefaultCurrencyNo: TIntegerField;
    sq_IntOrderHeadOrderNote: TMemoField;
    sq_IntOrderHeadOrderType: TIntegerField;
    sq_IntOrderHeadProductDisplayFormat: TIntegerField;
    sq_IntOrderHeadDefaultVolumeUnitNo: TIntegerField;
    sq_IntOrderHeadVoyageNo: TIntegerField;
    sq_IntOrderHeadDefaultPriceUnitNo: TIntegerField;
    sq_IntOrderHeadDef_StartETDYearWeek: TIntegerField;
    sq_IntOrderHeadDef_StartETAYearWeek: TIntegerField;
    sq_IntOrderHeadSalesRegionNo: TIntegerField;
    sq_IntOrderHeadLengthFormat: TIntegerField;
    sq_IntOrderHeadLanguageCode: TIntegerField;
    sq_IntOrderHeadSequenceNo: TIntegerField;
    sq_IntOrderHeadCreatedUser: TIntegerField;
    sq_IntOrderHeadModifiedUser: TIntegerField;
    sq_IntOrderHeadDateCreated: TSQLTimeStampField;
    sq_IntOrderHeadLO_No: TIntegerField;
    cds_IntOrderHead: TClientDataSet;
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
    sq_ChangeLOnrInPaymentLoad: TSQLQuery;
    sq_FindAvr: TSQLQuery;
    sq_FindAvrVerk: TStringField;
    sq_FindAvrVerkNo: TIntegerField;
    sq_FindAvrAVRAKNING_NO: TIntegerField;
    sq_PaymentLoadListII: TSQLQuery;
    sq_PaymentLoadListIIAVRAKNING_NO: TIntegerField;
    sq_PaymentLoadListIIINITIALS: TStringField;
    sq_PaymentLoadListIIVIS_FS: TIntegerField;
    sq_PaymentLoadListIIMILL_FS: TStringField;
    sq_PaymentLoadListIILOAD_DATE: TSQLTimeStampField;
    sq_PaymentLoadListIICUSTOMER: TStringField;
    sq_PaymentLoadListIIAKT_THICK: TFloatField;
    sq_PaymentLoadListIIAKT_WIDTH: TFloatField;
    sq_PaymentLoadListIIACT_M3: TFloatField;
    sq_PaymentLoadListIINOM_LPM: TFloatField;
    sq_PaymentLoadListIINOM_THICK: TFloatField;
    sq_PaymentLoadListIINOM_WIDTH: TFloatField;
    sq_PaymentLoadListIINOM_M3: TFloatField;
    sq_PaymentLoadListIIPRICE: TFloatField;
    sq_PaymentLoadListIIVALUE: TFloatField;
    sq_PaymentLoadListIIMOMS_VALUE: TFloatField;
    sq_PaymentLoadListIISUPPCODE: TStringField;
    sq_PaymentLoadListIICUSTOMER_1: TStringField;
    sq_PaymentLoadListIICUSTOMERNO: TIntegerField;
    sq_PaymentLoadListIICountryNo: TIntegerField;
    sq_PaymentLoadListIIGRADENAME: TStringField;
    sq_PaymentLoadListIIMILL_INVOICE_NO: TStringField;
    dspPaymentLoadListII: TDataSetProvider;
    cdsPaymentLoadListII: TClientDataSet;
    cdsPaymentLoadListIIAVRAKNING_NO: TIntegerField;
    cdsPaymentLoadListIIINITIALS: TStringField;
    cdsPaymentLoadListIIVIS_FS: TIntegerField;
    cdsPaymentLoadListIIMILL_FS: TStringField;
    cdsPaymentLoadListIILOAD_DATE: TSQLTimeStampField;
    cdsPaymentLoadListIICUSTOMER: TStringField;
    cdsPaymentLoadListIIAKT_THICK: TFloatField;
    cdsPaymentLoadListIIAKT_WIDTH: TFloatField;
    cdsPaymentLoadListIIACT_M3: TFloatField;
    cdsPaymentLoadListIINOM_LPM: TFloatField;
    cdsPaymentLoadListIINOM_THICK: TFloatField;
    cdsPaymentLoadListIINOM_WIDTH: TFloatField;
    cdsPaymentLoadListIINOM_M3: TFloatField;
    cdsPaymentLoadListIIPRICE: TFloatField;
    cdsPaymentLoadListIIVALUE: TFloatField;
    cdsPaymentLoadListIIMOMS_VALUE: TFloatField;
    cdsPaymentLoadListIISUPPCODE: TStringField;
    cdsPaymentLoadListIICUSTOMER_1: TStringField;
    cdsPaymentLoadListIICUSTOMERNO: TIntegerField;
    cdsPaymentLoadListIICountryNo: TIntegerField;
    cdsPaymentLoadListIIGRADENAME: TStringField;
    cdsPaymentLoadListIIMILL_INVOICE_NO: TStringField;
    dsPaymentLoadListII: TDataSource;
    sq_PaymentHeadNM3: TFloatField;
    sq_PaymentHeadVRDE: TFloatField;
    cdsPaymentHeadNM3: TFloatField;
    cdsPaymentHeadVRDE: TFloatField;
    sq_PayHeadPaymentNo: TIntegerField;
    sq_PayHeadSenderStatus: TSmallintField;
    sq_PayHeadReceiverStatus: TSmallintField;
    sq_PayHeadCreatedUser: TSmallintField;
    sq_PayHeadModifiedUser: TSmallintField;
    sq_PayHeadDateCreated: TSQLTimeStampField;
    sq_PayHeadTypeOf: TSmallintField;
    sq_PayHeadSupplierNo: TIntegerField;
    sq_PayHeadCustomerNo: TIntegerField;
    sq_PayHeadMILL_InvoiceNo: TStringField;
    cdsPayHeadPaymentNo: TIntegerField;
    cdsPayHeadSenderStatus: TSmallintField;
    cdsPayHeadReceiverStatus: TSmallintField;
    cdsPayHeadCreatedUser: TSmallintField;
    cdsPayHeadModifiedUser: TSmallintField;
    cdsPayHeadDateCreated: TSQLTimeStampField;
    cdsPayHeadTypeOf: TSmallintField;
    cdsPayHeadSupplierNo: TIntegerField;
    cdsPayHeadCustomerNo: TIntegerField;
    cdsPayHeadMILL_InvoiceNo: TStringField;
    procedure dsrcArrivingLoadsDataChange(Sender: TObject; Field: TField);
    procedure cdsPaymentHeadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsPaymentLoadsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dspKP_ListGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsKP_ListReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsPaymentHeadDataChange(Sender: TObject; Field: TField);
    procedure cds_PkgsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_SSPReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsp_SSPGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_PkgsGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cds_LSReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_LoadDetailReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_ConfLoadReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cds_LoadRemAvrReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista : Integer ;
    AngraAvrakning : Boolean ;
    procedure ChangeLOno_In_PaymentLoad(const fLoadNo, Old_LO_No, New_LO_No : Integer) ;
    Function  GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
  end;

var
  dmcPayment: TdmcPayment;

implementation

Uses recerror, dmsDataConn, dmsVidaContact, dmsVidaSystem;

{$R *.dfm}

procedure TdmcPayment.dsrcArrivingLoadsDataChange(Sender: TObject;
  Field: TField);
begin
 cdsArrivingPackages.Active:= False ;
 sq_ArrivingPackages.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsVIS_FS.AsInteger ;
 sq_ArrivingPackages.ParamByName('Lista').AsInteger:= Lista ;
 cdsArrivingPackages.Active:= True ;
end;

procedure TdmcPayment.cdsPaymentHeadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.cdsPaymentLoadsReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.dspKP_ListGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'Booking' ;
end;

procedure TdmcPayment.cdsKP_ListReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.dsPaymentHeadDataChange(Sender: TObject;
  Field: TField);
begin
{ cdsPaymentLoadList.Active:= False ;
 sq_PaymentLoadList.ParamByName('PaymentNo').AsInteger:= cdsPaymentHeadPaymentNo.AsInteger ;
 cdsPaymentLoadList.Active:= True ; }
end;

procedure TdmcPayment.cds_PkgsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.cds_SSPReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.dsp_SSPGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'SupplierShippingPlan' ;
end;

procedure TdmcPayment.dsp_PkgsGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'PackageNumber' ;
end;

procedure TdmcPayment.cds_LSReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.cds_LoadDetailReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.cds_ConfLoadReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.cds_LoadRemAvrReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E)
end;

procedure TdmcPayment.ChangeLOno_In_PaymentLoad(const fLoadNo, Old_LO_No, New_LO_No : Integer) ;
Begin
 Try
 sq_ChangeLOnrInPaymentLoad.ParamByName('LoadNo').AsInteger:= fLoadNo ;
 sq_ChangeLOnrInPaymentLoad.ParamByName('OldLo').AsInteger:= Old_LO_No ;
 sq_ChangeLOnrInPaymentLoad.ParamByName('NewLo').AsInteger:= New_LO_No ;
 sq_ChangeLOnrInPaymentLoad.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

Function TdmcPayment.GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
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





end.

