unit UnitdmModule1;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable,
  dxmdaset, SqlTimSt, Dialogs, Controls, uADStanIntf, uADStanOption,
  uADStanParam, uADStanError, uADDatSManager, uADPhysIntf, uADDAptIntf,
  uADStanAsync, uADDAptManager, uADCompDataSet, uADCompClient ;

type
  TdmModule1 = class(TDataModule)
    dsClient: TDataSource;
    dsDestination: TDataSource;
    dsClientAddress: TDataSource;
    dsLoadFreightCost: TDataSource;
    ds_PkgInfo: TDataSource;
    ds_LoadPkgInfo: TDataSource;
    tblLoadFreight: TkbmMemTable;
    tblLoadFreightLOADNO: TIntegerField;
    tblLoadFreightLOADID: TStringField;
    tblLoadFreightLOADEDDATE: TDateTimeField;
    tblLoadFreightFROM_PLACE: TStringField;
    tblLoadFreightDESTINATION: TStringField;
    tblLoadFreightSHIPPER: TStringField;
    tblLoadFreightFS: TStringField;
    tblLoadFreightM3_NET: TFloatField;
    tblLoadFreightPRICE: TFloatField;
    tblLoadFreightINVOICEAMOUNT: TFloatField;
    ds_LoadFreightCostHeader: TDataSource;
    ds_LoadFreightCostHeader2: TDataSource;
    ds_LoadFreightCostDetails: TDataSource;
    tblLoadFreightSUPPLIERNO: TIntegerField;
    tblLoadFreightTOTAL_AMOUNT: TFloatField;
    tblLoadFreightChecked: TBooleanField;
    ds_tblLoadFreight3: TDataSource;
    ds_genfreight: TDataSource;
    mtShippers: TkbmMemTable;
    mtShippersShipper: TStringField;
    mtShippersShippersInvoiceNo: TStringField;
    dsShippers: TDataSource;
    mtShippersShipperNo: TIntegerField;
    tblLoadFreightLocalShippingCompanyNo: TIntegerField;
    mtShippersAvrakningsNr: TIntegerField;
    tblLoadFreightLO: TIntegerField;
    tblLoadFreightPaket: TIntegerField;
    ds_LoadFC: TDataSource;
    ds_LF: TDataSource;
    cds_PkgInfo: TADQuery;
    cds_PkgInfoPKG_CREATED_BY: TStringField;
    cds_PkgInfoPKG_NO: TIntegerField;
    cds_PkgInfoPKG_CREATED: TSQLTimeStampField;
    cds_PkgInfoSUPP_CODE: TStringField;
    cds_PkgInfoPRODUCT: TStringField;
    cds_PkgInfoINVENTORY_OWNER: TStringField;
    cds_PkgInfoPRODUCER: TStringField;
    cds_PkgInfoINVENTORY: TStringField;
    cds_PkgInfoINVENTORY_GROUP: TStringField;
    cds_PkgInfoPKG_STATUS: TStringField;
    cds_PkgInfoBARCODE: TStringField;
    cds_PkgInfoGRADESTAMP: TStringField;
    cds_PkgInfoPKG_HEIGHT: TIntegerField;
    cds_PkgInfoPKG_WIDTH: TIntegerField;
    cds_PkgInfoMINI_BUNDLED: TStringField;
    cds_PkgInfoSTICKS: TStringField;
    cds_PkgInfoWRAP: TStringField;
    cds_PkgInfoSHRINK_WRAP: TStringField;
    cds_PkgInfoM3_ACT: TFloatField;
    cds_PkgInfoM3_NOM: TFloatField;
    cds_PkgInfoPIECES: TIntegerField;
    cds_PkgInfoMFBM: TFloatField;
    cds_PkgInfoACT_LINEAL_METER: TFloatField;
    cds_PkgInfoNOM_LINEAL_METER: TFloatField;
    cds_PkgInfoM2: TFloatField;
    cds_PkgInfoPACKAGETYPENO: TIntegerField;
    cds_PkgInfoKORTAKODEN: TStringField;
    cds_PkgInfoLANGAKODEN: TStringField;
    sqGetSupplierNo: TADQuery;
    cds_LoadPkgInfo: TADQuery;
    cds_LoadPkgInfoLOAD_CUSTOMER: TStringField;
    cds_LoadPkgInfoLOAD_SUPPLIER: TStringField;
    cds_LoadPkgInfoLOAD_DATE: TSQLTimeStampField;
    cds_LoadPkgInfoLOAD_NO: TIntegerField;
    cds_LoadPkgInfoLO_NUMBER: TIntegerField;
    cds_LoadPkgInfoFS: TStringField;
    cds_LoadPkgInfoLOAD_CREATED_BY: TStringField;
    cds_LoadPkgInfoLOAD_STATUS: TStringField;
    cds_LoadPkgInfoINVOICE_NO: TIntegerField;
    cds_LoadPkgInfoINV_CREATED_BY: TStringField;
    cds_LoadPkgInfoINVOICE_DATE: TSQLTimeStampField;
    cds_LoadPkgInfoINT_INVOICE_NO: TIntegerField;
    cds_LoadPkgInfoINVOICETYPE: TStringField;
    cds_LoadPkgInfoDEBIT_CREDIT: TStringField;
    cds_LoadPkgInfoORDER_NO: TStringField;
    cds_LoadPkgInfoORDER_CUSTOMER: TStringField;
    cds_LoadFreightCostHeader: TADQuery;
    cds_LoadFreightCostHeaderAvrakningsNo: TIntegerField;
    cds_LoadFreightCostHeaderStatus: TIntegerField;
    cds_LoadFreightCostHeaderLocalShipperNo: TIntegerField;
    cds_LoadFreightCostHeaderAvrakningsDate: TSQLTimeStampField;
    cds_LoadFreightCostHeaderCreatedUser: TSmallintField;
    cds_LoadFreightCostHeaderModifiedUser: TSmallintField;
    cds_LoadFreightCostHeaderDateCreated: TSQLTimeStampField;
    cds_LoadFreightCostHeaderDateModified: TSQLTimeStampField;
    cds_LoadFreightCostHeaderNote: TMemoField;
    cds_LoadFreightCostHeaderShippersInvoiceNo: TStringField;
    cds_LoadFreightCostHeaderVerkNo: TIntegerField;
    cds_LoadFreightCostDetails: TADQuery;
    cdsClient: TADStoredProc;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    sq_ClientData: TADQuery;
    sq_ClientDataDefaultBillingAddressNo: TIntegerField;
    sq_ClientDataClientName: TStringField;
    sq_ClientDataClientNo: TIntegerField;
    sq_ClientDataInvoiceText: TStringField;
    sq_ClientDataLanguageCode: TIntegerField;
    sq_ClientDataDeliveryTerm: TStringField;
    sq_ClientDataDeliveryTerm_No: TIntegerField;
    sq_ClientDataPaymentTermsNo: TIntegerField;
    sq_ClientDataPayDesc: TStringField;
    sq_ClientDataFreightInDiscount: TSmallintField;
    sq_ClientDataFreightInCommission: TSmallintField;
    sq_ClientDataCommissionPaidByCustomer: TSmallintField;
    sq_ClientDataDiscount1: TFloatField;
    sq_ClientDataCurrencyNo: TIntegerField;
    sq_ClientDataCURRENCYNAME: TStringField;
    sq_ClientDataBILL_ADDRESS_NAME: TStringField;
    sq_ClientDataBILL_ADDRESSLINE1: TStringField;
    sq_ClientDataBILL_ADDRESSLINE2: TStringField;
    sq_ClientDataBILL_ADDRESSLINE3: TStringField;
    sq_ClientDataBILL_ADDRESSLINE4: TStringField;
    sq_ClientDataBILL_STATEORPROVINCE: TStringField;
    sq_ClientDataBILL_POSTALCODE: TStringField;
    sq_ClientDataBILL_ADDRESSCITY: TStringField;
    sq_ClientDataBILL_ADDRESSCOUNTRY: TStringField;
    sq_ClientDataSHIPTO_ADDRESS_NAME: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE1: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE2: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE3: TStringField;
    sq_ClientDataSHIPTO_ADDRESSLINE4: TStringField;
    sq_ClientDataSHIPTO_PROVINCE: TStringField;
    sq_ClientDataSHIPTO_POSTALCODE: TStringField;
    sq_ClientDataSHIPTO_CITY: TStringField;
    sq_ClientDataSHIPTO_COUNTRY: TStringField;
    sq_LoadFreightCost: TADQuery;
    sq_LoadFreightCostFreightCost: TFloatField;
    sq_LoadFreightCostFreightCostVolUnit: TIntegerField;
    sq_LoadFreightCostFreightCostCurrency: TIntegerField;
    sq_LoadFreightCostFakturanr: TIntegerField;
    sq_LoadFreightCostPrisPerAM3SEK: TFloatField;
    sq_LoadFreightCostLocalShippingCompanyNo: TIntegerField;
    sq_LoadFreightCostLastnr: TIntegerField;
    sq_LoadFreightCostFS: TStringField;
    sq_LoadFreightCostLastID: TStringField;
    sq_LoadFreightCostUtlastad: TSQLTimeStampField;
    sq_LoadFreightCostSpeditr: TStringField;
    sq_LoadFreightCostUtlastningsort: TStringField;
    sq_LoadFreightCostUtlastningslager: TStringField;
    sq_LoadFreightCostDestination: TStringField;
    sq_LoadFreightCostAM3: TFloatField;
    sq_LoadFreightCostBelopp: TFloatField;
    sq_LoadFreightCostSupplierNo: TIntegerField;
    sq_LoadFreightCostLO: TIntegerField;
    cdsDestination: TADStoredProc;
    cdsDestinationCityNo: TIntegerField;
    cdsDestinationCityName: TStringField;
    sq_UpdateLoad: TADQuery;
    sq_UpdLoadII: TADQuery;
    sq_InsFakturaLoads: TADQuery;
    sq_InsAvrHdr: TADQuery;
    cdsClientAddress: TADQuery;
    cdsClientAddressADDRESS_NO: TIntegerField;
    cdsClientAddressADDRESS_NAME: TStringField;
    cdsClientAddressADDRESSLINE1: TStringField;
    cdsClientAddressADDRESSLINE2: TStringField;
    cdsClientAddressADDRESSLINE3: TStringField;
    cdsClientAddressADDRESSLINE4: TStringField;
    cdsClientAddressPROVINCE: TStringField;
    cdsClientAddressPOSTALCODE: TStringField;
    cdsClientAddressCITY: TStringField;
    cdsClientAddressCOUNTRY: TStringField;
    cds_LoadFreightCostHeader2: TADQuery;
    cds_LoadFreightCostHeader2AvrakningsNo: TIntegerField;
    cds_LoadFreightCostHeader2Status: TIntegerField;
    cds_LoadFreightCostHeader2LocalShipperNo: TIntegerField;
    cds_LoadFreightCostHeader2AvrakningsDate: TSQLTimeStampField;
    cds_LoadFreightCostHeader2CreatedUser: TSmallintField;
    cds_LoadFreightCostHeader2ModifiedUser: TSmallintField;
    cds_LoadFreightCostHeader2DateCreated: TSQLTimeStampField;
    cds_LoadFreightCostHeader2DateModified: TSQLTimeStampField;
    cds_LoadFreightCostHeader2Note: TMemoField;
    cds_LoadFreightCostHeader2ShippersInvoiceNo: TStringField;
    cds_LoadFreightCostHeader2VerkNo: TIntegerField;
    cds_LoadFreightCostHeader2SHIPPER: TStringField;
    cds_LoadFreightCostHeader2VERK: TStringField;
    cds_LoadFreightCostHeader2ANVANDARE: TStringField;
    cds_LoadFC: TADQuery;
    cds_LoadFCLastnr: TIntegerField;
    cds_LoadFCFS: TStringField;
    cds_LoadFCLastID: TStringField;
    cds_LoadFCUtlastad: TSQLTimeStampField;
    cds_LoadFCSpeditr: TStringField;
    cds_LoadFCUtlastningsort: TStringField;
    cds_LoadFCDestination: TStringField;
    cds_LoadFCAM3: TFloatField;
    cds_LoadFCPaket: TIntegerField;
    cds_LoadFCSupplierNo: TIntegerField;
    cds_LoadFCLO: TIntegerField;
    cds_LoadFCMarkerad: TIntegerField;
    cds_LoadFCBelopp: TBCDField;
    cds_LoadFCNoOfFS: TIntegerField;
    cds_LoadFCShippingCompanyNo: TIntegerField;
    cds_LoadFCLoadingLocationNo: TIntegerField;
    cds_LoadFCCustomerNo: TIntegerField;
    cds_LoadFCssp_CustomerNo: TIntegerField;
    cds_LoadFCNote: TStringField;
    cds_genfreight: TADQuery;
    cds_genfreightSalesRegionNo: TIntegerField;
    cds_genfreightscrow: TIntegerField;
    cds_genfreighttype: TStringField;
    cds_genfreightValidFrom: TSQLTimeStampField;
    cds_genfreightCost: TBCDField;
    cds_genfreightCurrencyNo: TIntegerField;
    cds_genfreightVolunitNo: TIntegerField;
    cds_genfreightDateCreated: TSQLTimeStampField;
    cds_genfreightModifiedUser: TSmallintField;
    cdsLoadFreightCost: TADQuery;
    cdsLoadFreightCostAvrakningsNo: TIntegerField;
    cdsLoadFreightCostLoadNo: TIntegerField;
    cdsLoadFreightCostM3_NET: TFloatField;
    cdsLoadFreightCostPricePerM3_NET: TFloatField;
    cdsLoadFreightCostTotalSUM: TFloatField;
    cdsLoadFreightCostCreatedUser: TIntegerField;
    cdsLoadFreightCostModifiedUser: TIntegerField;
    cdsLoadFreightCostDateCreated: TSQLTimeStampField;
    cdsLoadFreightCostDateModified: TSQLTimeStampField;
    cdsLoadFreightCostNote: TStringField;
    cds_LF: TADQuery;
    cds_LFAM3: TFloatField;
    cds_LFInternalInvoiceNo: TIntegerField;
    sq_GetLoadNo: TADQuery;
    sq_GetLoadNoLoadNo: TIntegerField;
    sq_FindAvr: TADQuery;
    sq_FindAvrAvrakningsNo: TIntegerField;
    sq_FindAvrVERK: TStringField;
    sq_FindAvrVerkNo: TIntegerField;
    sq_GetAddressNo: TADQuery;
    sq_GetAddressNoAddressNo: TIntegerField;
    sp_PcsPerLength: TADStoredProc;
    sqGetSupplierNoSupplierNo: TIntegerField;
    cds_LoadFreightCostDetailsTotalSUM: TFloatField;
    cds_LoadFreightCostDetailsM3_NET: TFloatField;
    cds_LoadFreightCostDetailsPricePerM3_NET: TFloatField;
    cds_LoadFreightCostDetailsAvrakningsNo: TIntegerField;
    cds_LoadFreightCostDetailsLoadNo: TIntegerField;
    cds_LoadFreightCostDetailsFS: TStringField;
    cds_LoadFreightCostDetailsLOAD_ID: TStringField;
    cds_LoadFreightCostDetailsLOADEDDATE: TSQLTimeStampField;
    cds_LoadFreightCostDetailsSHIPPER: TStringField;
    cds_LoadFreightCostDetailsFROM_PLACE: TStringField;
    cds_LoadFreightCostDetailsDESTINATION: TStringField;
    cds_LoadFreightCostDetailsDateModified: TSQLTimeStampField;
    cds_LoadFreightCostDetailsModifiedUser: TIntegerField;
    cds_LoadFreightCostDetailsNote: TStringField;
    sp_vis_GenOSRunAll: TADStoredProc;
    sp_vis_GenOSRunAllUserID: TIntegerField;
    sp_vis_GenOSRunAllORDER_STATUS: TIntegerField;
    sp_vis_GenOSRunAllORDER_NO: TStringField;
    sp_vis_GenOSRunAllSALES_REGION: TStringField;
    sp_vis_GenOSRunAllMARKET_REGION: TStringField;
    sp_vis_GenOSRunAllCUSTOMER: TStringField;
    sp_vis_GenOSRunAllDELIVERY_COUNTRY: TStringField;
    sp_vis_GenOSRunAllAGENT: TStringField;
    sp_vis_GenOSRunAllNOM_THICK: TBCDField;
    sp_vis_GenOSRunAllNOM_WIDTH: TBCDField;
    sp_vis_GenOSRunAllNOM_LENGTH: TBCDField;
    sp_vis_GenOSRunAllSPECIES: TStringField;
    sp_vis_GenOSRunAllSURFACING: TStringField;
    sp_vis_GenOSRunAllGRADE: TStringField;
    sp_vis_GenOSRunAllCURRENCY: TStringField;
    sp_vis_GenOSRunAllTotalOrderNM3int: TFloatField;
    sp_vis_GenOSRunAllLevNM3int: TFloatField;
    sp_vis_GenOSRunAllOrderStockNM3int: TFloatField;
    sp_vis_GenOSRunAllTotalOrderNM3ext: TFloatField;
    sp_vis_GenOSRunAllLevNM3ext: TFloatField;
    sp_vis_GenOSRunAllOrderStockNM3ext: TFloatField;
    sp_vis_GenOSRunAllOrderStockCurrency: TFloatField;
    sp_vis_GenOSRunAllOrderStockSEK: TFloatField;
    sp_vis_GenOSRunAllDataGenerated: TSQLTimeStampField;
    ds_vis_GenOSRunAll: TDataSource;
    sp_vis_GenOSRunAllProductNo: TIntegerField;
    sp_vis_GenOSRunAllSalesRegionNo: TIntegerField;
    sp_vis_GenOSRunAllCountryNo: TIntegerField;
    sp_vis_GenOSRunAllCurrencyNo: TIntegerField;
    sq_Orderstock: TADQuery;
    sq_OrderstockLev_Land: TStringField;
    sq_OrderstockValuta: TStringField;
    sq_OrderstockOrderNM3int: TFloatField;
    sq_OrderstockLevNM3int: TFloatField;
    sq_OrderstockOrderstockNM3int: TFloatField;
    sq_OrderstockOrderNM3ext: TFloatField;
    sq_OrderstockLevNM3ext: TFloatField;
    sq_OrderstockOrderstockNM3ext: TFloatField;
    sq_OrderstockOrderstockValuta: TFloatField;
    sq_OrderstockOrderstockSEK: TFloatField;
    ds_Orderstock: TDataSource;
    sq_OrderstockFrsljningsregion: TStringField;
    sp_Vis_Intra_Stat_Exp: TADStoredProc;
    sp_Vis_Intra_Stat_ExpLandKod: TStringField;
    sp_Vis_Intra_Stat_ExpTransaktionstyp: TIntegerField;
    sp_Vis_Intra_Stat_ExpVarukod: TStringField;
    sp_Vis_Intra_Stat_Expkvantitet: TFloatField;
    sp_Vis_Intra_Stat_ExpNettovikt: TFloatField;
    sp_Vis_Intra_Stat_ExpFakturavarde_sek: TFloatField;
    ds_Vis_Intra_Stat_Exp: TDataSource;
    sq_OrderstockSalesRegionNo: TIntegerField;
    sq_OrderstockCountryNo: TIntegerField;
    sq_OrderstockCurrencyNo: TIntegerField;
    sp_Vis_GenTradingAnalyze: TADStoredProc;
    sp_Vis_GenTradingAnalyzeLev: TStringField;
    sp_Vis_GenTradingAnalyzePO_Kontraktnr: TStringField;
    sp_Vis_GenTradingAnalyzePO_Fakturanr: TIntegerField;
    sp_Vis_GenTradingAnalyzePO_Fakturadatum: TSQLTimeStampField;
    sp_Vis_GenTradingAnalyzePO_Valuta: TStringField;
    sp_Vis_GenTradingAnalyzePO_Belopp_Valuta: TFloatField;
    sp_Vis_GenTradingAnalyzePO_Belopp_SEK: TFloatField;
    sp_Vis_GenTradingAnalyzePO_ProduktVrde_Valuta: TFloatField;
    sp_Vis_GenTradingAnalyzePO_AM3: TFloatField;
    sp_Vis_GenTradingAnalyzeSales_Valuta: TStringField;
    sp_Vis_GenTradingAnalyzeSales_ProduktVrde_Valuta: TFloatField;
    sp_Vis_GenTradingAnalyzeSales_AM3: TFloatField;
    sp_Vis_GenTradingAnalyzeSales_Belopp_Valuta: TFloatField;
    sp_Vis_GenTradingAnalyzeSales_Belopp_SEK: TFloatField;
    sp_Vis_GenTradingAnalyzeKund: TStringField;
    sp_Vis_GenTradingAnalyzeSales_Fakturanr: TIntegerField;
    sp_Vis_GenTradingAnalyzeSales_Fakturadatum: TSQLTimeStampField;
    ds_Vis_GenTradingAnalyze: TDataSource;
    cds_LFKommission_Percent: TFloatField;
    cds_LFKommission_Sum: TFloatField;
    cds_LFKommission_villkor: TIntegerField;
    cds_LFValutaFaktura: TStringField;
    cds_LFAgent: TStringField;
    cds_LFKund: TStringField;
    cds_LFShippingPlanNo: TIntegerField;
    cds_LFFakturanr: TIntegerField;
    cds_LFFraktValuta: TStringField;
    cds_LFFraktEnhet: TStringField;
    cds_LFFraktkostnad: TFloatField;
    cds_LFConfirmFrakt: TIntegerField;
    cds_LFFraktkostnad_sum: TFloatField;
    cds_LFUtlastad: TSQLTimeStampField;
    cds_LFSpeditr: TStringField;
    cds_LFShippingCompanyNo: TIntegerField;
    cds_LFVaruvrde: TFloatField;
    cds_LFFakturavrde: TFloatField;
    cds_LFConfirmKomm: TIntegerField;
    cds_InvoicePayStatus: TADQuery;
    ds_InvoicePayStatus: TDataSource;
    cds_InvoicePayStatusFAKTURANR: TIntegerField;
    cds_InvoicePayStatusQuickInvoice: TIntegerField;
    cds_InvoicePayStatusFAKTURA_DATUM: TSQLTimeStampField;
    cds_InvoicePayStatusKUND: TStringField;
    cds_InvoicePayStatusAGENT: TStringField;
    cds_InvoicePayStatusBETALVILLKOR: TStringField;
    cds_InvoicePayStatusBELOPP: TBCDField;
    cds_InvoicePayStatusKASSARABATT: TBCDField;
    cds_InvoicePayStatusBELOP_EXKL_KASSA: TBCDField;
    cds_InvoicePayStatusVALUTA: TStringField;
    cds_InvoicePayStatusPOST_IT: TStringField;
    cds_InvoicePayStatusVARUVARDE_NO_FREIGHT: TFloatField;
    cds_InvoicePayStatusPROVISION: TFloatField;
    cds_InvoicePayStatusTrading: TIntegerField;
    cds_InvoicePayStatusFRAKT: TFloatField;
    ad_InsAttHead: TADQuery;
    admSelectedRows: TADMemTable;
    admSelectedRowsInternalInvoiceNo: TIntegerField;
    admSelectedRowsLONo: TIntegerField;
    admSelectedRowsSupplier_InvoiceNo: TStringField;
    admSelectedRowsSupplier_InvoiceDate: TDateTimeField;
    ad_InsAttestRow: TADQuery;
    cds_Att_Ext_ServicesII: TADQuery;
    cds_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField;
    cds_Att_Ext_ServicesIIShippingPlanNo: TIntegerField;
    cds_Att_Ext_ServicesIISequensNo: TIntegerField;
    cds_Att_Ext_ServicesIIDescription: TStringField;
    cds_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField;
    cds_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIIAmount: TFloatField;
    cds_Att_Ext_ServicesIICurrencyNo: TIntegerField;
    cds_Att_Ext_ServicesIISupplierNo: TIntegerField;
    cds_Att_Ext_ServicesIINote: TMemoField;
    cds_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIICreatedUser: TIntegerField;
    cds_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIIModifiedUser: TIntegerField;
    cds_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField;
    ds_Att_Ext_ServicesII: TDataSource;
    ad_GetFreightCost: TADQuery;
    ad_GetFreightCostFrakt: TFloatField;
    cds_LFFrakt: TFloatField;
    cds_LFKomm: TFloatField;
    admSelectedRowsTotalAmount: TFloatField;
    admSelectedRowsAmount: TFloatField;
    ad_InsAttLO: TADQuery;
    admSelectedRowsSHIPPINGCOMPANYNO: TIntegerField;
    ad_InsAttestRowKomm: TADQuery;
    admSelectedRowsCURRENCYNO: TIntegerField;
    cds_LFFraktCurrencyNo: TIntegerField;
    cds_LFKommCurrencyNo: TIntegerField;
    cds_Att_Ext_ServicesIIAmountAttested: TFloatField;
    cds_Att_Ext_ServicesIIActive: TIntegerField;
    admSelectedRowsFakturanr: TIntegerField;
    cds_LFAgentNo: TIntegerField;
    adDeleteAttest: TADQuery;
    cds_LFInvoiceType: TIntegerField;
    cds_LFValutaNr: TIntegerField;
    cds_LFEgenValuta: TStringField;
    cds_Att_Ext_ServicesIIValuta: TStringField;
    sp_AttestFreightList: TADStoredProc;
    sp_AttestKommList: TADStoredProc;
    sp_AttestFreightListInvoiceType: TIntegerField;
    sp_AttestFreightListShippingPlanNo: TIntegerField;
    sp_AttestFreightListFakturanr: TIntegerField;
    sp_AttestFreightListInternalInvoiceNo: TIntegerField;
    sp_AttestFreightListFraktValuta: TStringField;
    sp_AttestFreightListFraktEnhet: TStringField;
    sp_AttestFreightListFraktkostnad: TFloatField;
    sp_AttestFreightListConfirmFrakt: TIntegerField;
    sp_AttestFreightListShippingCompanyNo: TIntegerField;
    sp_AttestFreightListSpeditr: TStringField;
    sp_AttestFreightListFraktCurrencyNo: TIntegerField;
    sp_AttestFreightListFrakt: TFloatField;
    sp_AttestFreightListFraktkostnad_sum: TFloatField;
    sp_AttestFreightListUtlastad: TSQLTimeStampField;
    sp_AttestFreightListAM3: TFloatField;
    sp_AttestFreightListVaruvrde: TFloatField;
    sp_AttestFreightListFakturavrde: TFloatField;
    sp_AttestFreightListKommission_Percent: TFloatField;
    sp_AttestFreightListKommission_Sum: TFloatField;
    sp_AttestFreightListKommission_villkor: TIntegerField;
    sp_AttestFreightListValutaFaktura: TStringField;
    sp_AttestFreightListAgent: TStringField;
    sp_AttestFreightListAgentNo: TIntegerField;
    sp_AttestFreightListKund: TStringField;
    sp_AttestFreightListConfirmKomm: TIntegerField;
    sp_AttestFreightListKomm: TFloatField;
    sp_AttestFreightListKommCurrencyNo: TIntegerField;
    sp_AttestFreightListValutaNr: TIntegerField;
    sp_AttestFreightListEgenValuta: TStringField;
    ds_LFALL: TDataSource;
    sp_LF: TADStoredProc;
    sp_LFInvoiceType: TIntegerField;
    sp_LFShippingPlanNo: TIntegerField;
    sp_LFFakturanr: TIntegerField;
    sp_LFInternalInvoiceNo: TIntegerField;
    sp_LFFraktValuta: TStringField;
    sp_LFFraktEnhet: TStringField;
    sp_LFFraktkostnad: TFloatField;
    sp_LFConfirmFrakt: TIntegerField;
    sp_LFShippingCompanyNo: TIntegerField;
    sp_LFSpeditr: TStringField;
    sp_LFFraktCurrencyNo: TIntegerField;
    sp_LFFrakt: TFloatField;
    sp_LFFraktkostnad_sum: TFloatField;
    sp_LFUtlastad: TSQLTimeStampField;
    sp_LFAM3: TFloatField;
    sp_LFVaruvrde: TFloatField;
    sp_LFFakturavrde: TFloatField;
    sp_LFKommission_Percent: TFloatField;
    sp_LFKommission_Sum: TFloatField;
    sp_LFKommission_villkor: TIntegerField;
    sp_LFValutaFaktura: TStringField;
    sp_LFAgent: TStringField;
    sp_LFAgentNo: TIntegerField;
    sp_LFKund: TStringField;
    sp_LFConfirmKomm: TIntegerField;
    sp_LFKomm: TFloatField;
    sp_LFKommCurrencyNo: TIntegerField;
    sp_LFValutaNr: TIntegerField;
    sp_AttestKommListInvoiceType: TIntegerField;
    sp_AttestKommListShippingPlanNo: TIntegerField;
    sp_AttestKommListFakturanr: TIntegerField;
    sp_AttestKommListInternalInvoiceNo: TIntegerField;
    sp_AttestKommListFraktValuta: TStringField;
    sp_AttestKommListFraktEnhet: TStringField;
    sp_AttestKommListFraktkostnad: TFloatField;
    sp_AttestKommListConfirmFrakt: TIntegerField;
    sp_AttestKommListShippingCompanyNo: TIntegerField;
    sp_AttestKommListSpeditr: TStringField;
    sp_AttestKommListFraktCurrencyNo: TIntegerField;
    sp_AttestKommListFrakt: TFloatField;
    sp_AttestKommListFraktkostnad_sum: TFloatField;
    sp_AttestKommListUtlastad: TSQLTimeStampField;
    sp_AttestKommListAM3: TFloatField;
    sp_AttestKommListVaruvrde: TFloatField;
    sp_AttestKommListFakturavrde: TFloatField;
    sp_AttestKommListKommission_Percent: TFloatField;
    sp_AttestKommListKommission_Sum: TFloatField;
    sp_AttestKommListKommission_villkor: TIntegerField;
    sp_AttestKommListValutaFaktura: TStringField;
    sp_AttestKommListAgent: TStringField;
    sp_AttestKommListAgentNo: TIntegerField;
    sp_AttestKommListKund: TStringField;
    sp_AttestKommListConfirmKomm: TIntegerField;
    sp_AttestKommListKomm: TFloatField;
    sp_AttestKommListKommCurrencyNo: TIntegerField;
    sp_AttestKommListValutaNr: TIntegerField;
    sp_AttestKommListSingle: TADStoredProc;
    sp_AttestKommListSingleInvoiceType: TIntegerField;
    sp_AttestKommListSingleShippingPlanNo: TIntegerField;
    sp_AttestKommListSingleFakturanr: TIntegerField;
    sp_AttestKommListSingleInternalInvoiceNo: TIntegerField;
    sp_AttestKommListSingleFraktValuta: TStringField;
    sp_AttestKommListSingleFraktEnhet: TStringField;
    sp_AttestKommListSingleFraktkostnad: TFloatField;
    sp_AttestKommListSingleConfirmFrakt: TIntegerField;
    sp_AttestKommListSingleShippingCompanyNo: TIntegerField;
    sp_AttestKommListSingleSpeditr: TStringField;
    sp_AttestKommListSingleFraktCurrencyNo: TIntegerField;
    sp_AttestKommListSingleFrakt: TFloatField;
    sp_AttestKommListSingleFraktkostnad_sum: TFloatField;
    sp_AttestKommListSingleUtlastad: TSQLTimeStampField;
    sp_AttestKommListSingleAM3: TFloatField;
    sp_AttestKommListSingleVaruvrde: TFloatField;
    sp_AttestKommListSingleFakturavrde: TFloatField;
    sp_AttestKommListSingleKommission_Percent: TFloatField;
    sp_AttestKommListSingleKommission_Sum: TFloatField;
    sp_AttestKommListSingleKommission_villkor: TIntegerField;
    sp_AttestKommListSingleValutaFaktura: TStringField;
    sp_AttestKommListSingleAgent: TStringField;
    sp_AttestKommListSingleAgentNo: TIntegerField;
    sp_AttestKommListSingleKund: TStringField;
    sp_AttestKommListSingleConfirmKomm: TIntegerField;
    sp_AttestKommListSingleKomm: TFloatField;
    sp_AttestKommListSingleKommCurrencyNo: TIntegerField;
    sp_AttestKommListSingleValutaNr: TIntegerField;
    sp_LFEgenValuta: TStringField;
    sp_AttestKommListEgenValuta: TStringField;
    sp_AttestKommListSingleEgenValuta: TStringField;
    cds_Att_Ext_ServicesIIKlient: TStringField;
    cds_CreLim: TADQuery;
    cds_CreLimgrpno: TIntegerField;
    cds_CreLimName: TStringField;
    cds_CreLimCreditLimit: TBCDField;
    cds_CreLimCurrencyNo: TIntegerField;
    cds_CreLimDateCreated: TSQLTimeStampField;
    cds_CreLimDateModified: TSQLTimeStampField;
    cds_CreLimUserModified: TIntegerField;
    cds_CreLimNote: TStringField;
    ds_CreLim: TDataSource;
    cds_CreClients: TADQuery;
    cds_CreClientsgrpNo: TIntegerField;
    cds_CreClientsClientNo: TIntegerField;
    cds_CreGrpCli: TADQuery;
    cds_CreGrpCligrpNo: TIntegerField;
    cds_CreGrpCliClientNo: TIntegerField;
    sq_GetCreditGroupNamn: TADQuery;
    sq_GetCreditGroupNamnGruppnamn: TStringField;
    cds_CreditAnalys: TADQuery;
    ds_CreditAnalys: TDataSource;
    cds_CreLimValuta: TStringField;
    cds_CreditAnalysKUND: TStringField;
    cds_CreditAnalysNote: TStringField;
    cds_CreditAnalysClientNo: TIntegerField;
    cds_CreditAnalysCreditLimit: TFloatField;
    cds_CreditAnalysXOR: TBCDField;
    cds_CreditAnalysVIS: TBCDField;
    cds_CreditAnalysTOTALT: TBCDField;
    cds_CreditAnalysDIFFERENS: TBCDField;
    cds_CreGrpCliKund: TStringField;
    ds_CreGrpCli: TDataSource;
    cds_InvoicePayStatusIH_InternalInvoiceNo: TIntegerField;
    cds_InvoicePayStatusPaid: TWordField;
    cds_InvoicePayStatusDatePaid: TSQLTimeStampField;
    cds_InvoicePayStatusAmountPaid: TBCDField;
    cds_InvoicePayStatusNote: TStringField;
    cds_InvoicePayStatusInternalInvoiceNo: TIntegerField;
    ADUpdateSQL1: TADUpdateSQL;
    cds_InvoicePayStatusAttBetala: TFloatField;
    sq_InsPayStatus: TADQuery;
    admSelectedRowsNote: TStringField;
    sq_OrderstockMPNH: TFloatField;
    sq_OrderstockPriceOK: TIntegerField;
    sp_OrderstockDtl: TADStoredProc;
    ds_OrderstockDtl: TDataSource;
    sp_OrderstockDtlORDER_NO: TStringField;
    sp_OrderstockDtlStatistikland: TStringField;
    sp_OrderstockDtlProdukt: TStringField;
    sp_OrderstockDtlValuta: TStringField;
    sp_OrderstockDtlFrsljningsregion: TStringField;
    sp_OrderstockDtlKund: TStringField;
    sp_OrderstockDtlOrderNM3int: TFloatField;
    sp_OrderstockDtlLevNM3int: TFloatField;
    sp_OrderstockDtlOrderstockNM3int: TFloatField;
    sp_OrderstockDtlOrderNM3ext: TFloatField;
    sp_OrderstockDtlLevNM3ext: TFloatField;
    sp_OrderstockDtlOrderstockNM3ext: TFloatField;
    sp_OrderstockDtlOrderstockValuta: TFloatField;
    sp_OrderstockDtlOrderstockSEK: TFloatField;
    sp_OrderstockDtlSalesRegionNo: TIntegerField;
    sp_OrderstockDtlCountryNo: TIntegerField;
    sp_OrderstockDtlCurrencyNo: TIntegerField;
    sp_OrderstockDtlMPNH: TFloatField;
    sp_OrderstockDtlOrderradnr: TIntegerField;
    sp_Vis_GenTradingAnalyzePOPrefix: TStringField;
    sp_Vis_GenTradingAnalyzeDiff_SEK: TFloatField;
    sp_Vis_GenTradingAnalyzePOIntInvNo: TIntegerField;
    sp_Vis_GenTradingAnalyzeSalesIntInvNo: TIntegerField;
    sp_Vis_GenTradingAnalyzeFR: TStringField;
    sp_Vis_GenTradingAnalyzeDiffOfSales: TFloatField;
    sq_OrderstockInternalValue: TFloatField;
    sq_ModInsPayStatus: TADQuery;
    sq_ClientDataStatistikLandNr: TIntegerField;
    cds_LoadFCPrisPerAM3SEK: TBCDField;
    sp_Orderstock: TADStoredProc;
    sp_OrderstockPriceOK: TIntegerField;
    sp_OrderstockLev_Land: TStringField;
    sp_OrderstockValuta: TStringField;
    sp_OrderstockFörsäljningsregion: TStringField;
    sp_OrderstockOrderNM3int: TFloatField;
    sp_OrderstockLevNM3int: TFloatField;
    sp_OrderstockOrderstockNM3int: TFloatField;
    sp_OrderstockOrderNM3ext: TFloatField;
    sp_OrderstockLevNM3ext: TFloatField;
    sp_OrderstockOrderstockNM3ext: TFloatField;
    sp_OrderstockOrderstockValuta: TFloatField;
    sp_OrderstockOrderstockSEK: TFloatField;
    sp_OrderstockInternalValue: TFloatField;
    sp_OrderstockSalesRegionNo: TIntegerField;
    sp_OrderstockCountryNo: TIntegerField;
    sp_OrderstockCurrencyNo: TIntegerField;
    sp_OrderstockMPNH: TFloatField;
    procedure tblLoadFreight2CalcFields(DataSet: TDataSet);
    procedure tblLoadFreight2M3_NETChange(Sender: TField);
    procedure tblLoadFreight2PRICEChange(Sender: TField);
    procedure tblLoadFreight2AfterInsert(DataSet: TDataSet);
    procedure tblLoadFreight2INVOICEAMOUNTChange(Sender: TField);
    procedure tblLoadFreight2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tblLoadFreightAfterInsert(DataSet: TDataSet);
    procedure tblLoadFreightCalcFields(DataSet: TDataSet);
    procedure tblLoadFreightM3_NETChange(Sender: TField);
    procedure tblLoadFreightPRICEChange(Sender: TField);
    procedure tblLoadFreightINVOICEAMOUNTChange(Sender: TField);
    procedure cds_LoadFreightCostDetails1PricePerM3_NETChange(
      Sender: TField);
    procedure cds_LoadFreightCostDetailsBeforePost(DataSet: TDataSet);
    procedure cds_LoadFreightCostDetailsBeforeRefresh(DataSet: TDataSet);
    procedure cds_genfreightAfterInsert(DataSet: TDataSet);
    procedure cds_LFBeforePost(DataSet: TDataSet);
    procedure cds_LFBeloppChange(Sender: TField);
    procedure cds_LFMarkeradChange(Sender: TField);
    procedure cds_LoadFCBeforePost(DataSet: TDataSet);
    procedure cds_LoadFCBeloppChange(Sender: TField);
    procedure cds_LFFraktChange(Sender: TField);
    procedure cds_LFConfirmFraktChange(Sender: TField);
    procedure cds_LFConfirmKommChange(Sender: TField);
    procedure cds_LFKommChange(Sender: TField);
    procedure sp_AttestFreightListConfirmFraktChange(Sender: TField);
    procedure sp_AttestFreightListFraktChange(Sender: TField);
    procedure sp_LFConfirmFraktChange(Sender: TField);
    procedure sp_LFFraktChange(Sender: TField);
    procedure sp_AttestKommListConfirmKommChange(Sender: TField);
    procedure sp_AttestKommListSingleConfirmKommChange(Sender: TField);
    procedure sp_AttestKommListKommChange(Sender: TField);
    procedure sp_AttestKommListSingleKommChange(Sender: TField);
    procedure cds_CreLimAfterInsert(DataSet: TDataSet);
    procedure cds_CreLimBeforePost(DataSet: TDataSet);
    procedure cds_InvoicePayStatusBeforePost(DataSet: TDataSet);
    procedure cds_InvoicePayStatusUpdateRecord(ASender: TDataSet;
      ARequest: TADUpdateRequest; var AAction: TADErrorAction;
      AOptions: TADUpdateRowOptions);
    procedure cds_InvoicePayStatusCalcFields(DataSet: TDataSet);
    procedure cds_CreGrpCliAfterInsert(DataSet: TDataSet);
    procedure sp_Vis_GenTradingAnalyzeCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
//    Function  GetFreightCostOfSelectedRows : Double ;
    procedure InsPayStatus (const InternalInvoiceNo : Integer) ;
  public
    { Public declarations }
//    grpNo : Integer ;
    procedure ApplyUpdatesToInvoicePayStatus ;
    procedure Close_OrderstockDtl ;
    procedure Refresh_OrderstockDtl ;
    function  GetCreditGroupName (const ClientNo : Integer) : String ;
    procedure DeleteAttest(const SequensNo  : Integer) ;
    procedure InsertAttestHeader (const Beskrivning : String) ;
    Function  GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
    function  GetSupplierNo(const LoadNo : Integer) : Integer ;
    procedure UpdateLoad(const LocalShippingCompanyNo, LoadNo : Integer) ;
    procedure UpdateLoadII(const LocalLoadingLocation, LocalDestinationNo, LoadNo : Integer) ;
  end;

var
  dmModule1: TdmModule1;

implementation

uses dmsDataConn, recerror, VidaUser, dmsVidaContact , dmsVidaSystem;

{$R *.dfm}

procedure TdmModule1.tblLoadFreight2CalcFields(DataSet: TDataSet);
begin
// tblLoadFreight2TOTAL_AMOUNT.AsFloat :=
// tblLoadFreight2PRICE.AsFloat * tblLoadFreight2M3_NET.AsFloat ;
end;

procedure TdmModule1.tblLoadFreight2M3_NETChange(Sender: TField);
begin
// tblLoadFreight2INVOICEAMOUNT.AsFloat:=
// tblLoadFreight2PRICE.AsFloat * tblLoadFreight2M3_NET.AsFloat ;
// tblLoadFreight2Checked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreight2PRICEChange(Sender: TField);
begin
// tblLoadFreight2INVOICEAMOUNT.AsFloat:=
// tblLoadFreight2PRICE.AsFloat * tblLoadFreight2M3_NET.AsFloat ;
// tblLoadFreight2Checked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreight2AfterInsert(DataSet: TDataSet);
begin
// tblLoadFreight2Checked.AsBoolean:= False ;
end;

procedure TdmModule1.tblLoadFreight2INVOICEAMOUNTChange(Sender: TField);
begin
// tblLoadFreight2Checked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreight2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
// if tblLoadFreight2Checked.AsBoolean = True then
//  Accept := True
//  else
//  Accept := False ;
end;


procedure TdmModule1.tblLoadFreightAfterInsert(DataSet: TDataSet);
begin
 tblLoadFreightChecked.AsBoolean:= False ;
end;

procedure TdmModule1.tblLoadFreightCalcFields(DataSet: TDataSet);
begin
 tblLoadFreightTOTAL_AMOUNT.AsFloat := tblLoadFreightPRICE.AsFloat * tblLoadFreightM3_NET.AsFloat ;
end;

procedure TdmModule1.tblLoadFreightM3_NETChange(Sender: TField);
begin
 tblLoadFreightINVOICEAMOUNT.AsFloat:=
 tblLoadFreightPRICE.AsFloat * tblLoadFreightM3_NET.AsFloat ;
 tblLoadFreightChecked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreightPRICEChange(Sender: TField);
begin
 tblLoadFreightINVOICEAMOUNT.AsFloat:=
 tblLoadFreightPRICE.AsFloat * tblLoadFreightM3_NET.AsFloat ;
 tblLoadFreightChecked.AsBoolean:= True ;
end;

procedure TdmModule1.tblLoadFreightINVOICEAMOUNTChange(Sender: TField);
begin
 tblLoadFreightChecked.AsBoolean:= True ;
end;

procedure TdmModule1.cds_LoadFreightCostDetails1PricePerM3_NETChange(
  Sender: TField);
begin
 cds_LoadFreightCostDetailsTotalSUM.AsFloat:=
  cds_LoadFreightCostDetailsPricePerM3_NET.AsFloat * cds_LoadFreightCostDetailsM3_NET.AsFloat ;
end;

Function TdmModule1.GetFraktAvrakningsNoForLoadNo (const LoadNo : Integer;Var verk : String;Var VerkNo : Integer) : Integer ;
Begin
 sq_FindAvr.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindAvr.Open ;
  Result:= sq_FindAvrAvrakningsNo.AsInteger ;
  Verk := sq_FindAvrVERK.AsString ;
  VerkNo := sq_FindAvrVerkNo.asInteger ;
 Finally
  sq_FindAvr.Close ;
 End ;
End ;

function TdmModule1.GetSupplierNo(const LoadNo : Integer) : Integer ;
Begin
 sqGetSupplierNo.Close ;
 sqGetSupplierNo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sqGetSupplierNo.Open ;
 if not sqGetSupplierNo.Eof then
  Result:= sqGetSupplierNoSupplierNo.AsInteger
   else
    Result:= -1 ;
 sqGetSupplierNo.Close ;
End ;

procedure TdmModule1.UpdateLoad(const LocalShippingCompanyNo, LoadNo : Integer) ;
Begin
 Try
 sq_UpdateLoad.ParamByName('LocalShippingCompanyNo').AsInteger:= LocalShippingCompanyNo ;
 sq_UpdateLoad.ParamByName('LoadNo').AsInteger:= LoadNo ;
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

procedure TdmModule1.UpdateLoadII(const LocalLoadingLocation, LocalDestinationNo, LoadNo : Integer) ;
Begin
 Try
 sq_UpdLoadII.ParamByName('LocalLoadingLocation').AsInteger := LocalLoadingLocation ;
 sq_UpdLoadII.ParamByName('LocalDestinationNo').AsInteger   := LocalDestinationNo ;
 sq_UpdLoadII.ParamByName('LoadNo').AsInteger               := LoadNo ;
 sq_UpdLoadII.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmModule1.cds_LoadFreightCostDetailsBeforePost(
  DataSet: TDataSet);
begin
 cds_LoadFreightCostDetailsModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_LoadFreightCostDetailsDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmModule1.cds_LoadFreightCostDetailsBeforeRefresh(
  DataSet: TDataSet);
begin
 if cds_LoadFreightCostDetails.State in [dsEdit, dsInsert] then
  cds_LoadFreightCostDetails.Post ;
 if cds_LoadFreightCostDetails.ChangeCount > 0 then
  if MessageDlg('Vill du spara ändringar i lastrader?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     cds_LoadFreightCostDetails.ApplyUpdates(0) ;
     cds_LoadFreightCostDetails.CommitUpdates ;
    End ;
end;

procedure TdmModule1.cds_genfreightAfterInsert(DataSet: TDataSet);
begin
 cds_genfreightDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
 cds_genfreightModifiedUser.AsInteger     := ThisUser.UserID ;
 cds_genfreightscrow.AsInteger            := dmsConnector.NextMaxNo('ShippingCosts') ;
end;

procedure TdmModule1.cds_LFBeforePost(DataSet: TDataSet);
begin
// if cds_LFFakturanr.AsInteger < 1 then
// cds_LFBelopp.AsFloat := cds_LFPrisPerAM3SEK.AsFloat * cds_LFAM3.AsFloat ;
end;

procedure TdmModule1.cds_LFBeloppChange(Sender: TField);
begin
{ cds_LFMarkerad.OnChange  := nil ;
 Try
  if cds_LFBelopp.AsFloat > 0 then
  cds_LFMarkerad.AsInteger := 1 ;
  if cds_LFAM3.AsFloat > 0 then
  cds_LFPrisPerAM3SEK.AsFloat  := cds_LFBelopp.AsFloat / cds_LFAM3.AsFloat ;
 Finally
  cds_LFMarkerad.OnChange  := cds_LFMarkeradChange ;
 End ;
 }
end;

procedure TdmModule1.cds_LFMarkeradChange(Sender: TField);
begin
{ cds_LFBelopp.OnChange  := nil ;
 cds_LF.BeforePost      := nil ;
 Try
 if cds_LFFakturanr.AsInteger > 0 then
 Begin
  cds_LFBelopp.AsFloat         := cds_LFFreightCost.AsFloat ;
  if cds_LFAM3.AsFloat > 0 then
  cds_LFPrisPerAM3SEK.AsFloat  := cds_LFBelopp.AsFloat / cds_LFAM3.AsFloat ;
 End ;
 Finally
  cds_LF.BeforePost      := cds_LFBeforePost ;
  cds_LFBelopp.OnChange  := cds_LFBeloppChange ;
 End ; }
end;

procedure TdmModule1.cds_LoadFCBeforePost(DataSet: TDataSet);
begin
 if cds_LoadFCPrisPerAM3SEK.AsFloat > 0 then
 cds_LoadFCBelopp.AsFloat := cds_LoadFCPrisPerAM3SEK.AsFloat * cds_LoadFCAM3.AsFloat ;
end;

procedure TdmModule1.cds_LoadFCBeloppChange(Sender: TField);
begin
  if cds_LoadFCBelopp.AsFloat > 0 then
  cds_LoadFCMarkerad.AsInteger := 1 ;
//  if cds_LoadFCAM3.AsFloat > 0 then cds_LoadFCPrisPerAM3SEK.AsFloat  := cds_LoadFCBelopp.AsFloat / cds_LoadFCAM3.AsFloat ;
end;

(*
Function TdmModule1.GetFreightCostOfSelectedRows : Double ;
Var RadNr : Integer ;
Begin
 Result := 0 ;
 RadNr  := 1 ;
 admSelectedRows.First ;
 ad_GetFreightCost.SQL.Clear ;
 ad_GetFreightCost.SQL.Add('Select SUM(invd.ProductValue) AS Frakt from dbo.InvoiceDetail invd') ;
 ad_GetFreightCost.SQL.Add('WHERE invd.InternalInvoiceNo = ' + admSelectedRowsInternalInvoiceNo.AsString) ;
 ad_GetFreightCost.SQL.Add('AND invd.TypeOfRow = 3') ;
 While not admSelectedRows.Eof do
 Begin
  with ad_GetFreightCost do
  Begin
   if RadNr = 1 then
   SQL.Add('AND (invd.ShippingPlanNo = ' + admSelectedRowsLONo.AsString)
   else
   SQL.Add('or invd.ShippingPlanNo = ' + admSelectedRowsLONo.AsString) ;
  End ;
  RadNr := RadNr + 1 ;
  admSelectedRows.Next ;
 End ;
 ad_GetFreightCost.SQL.Add(')') ;

 if RadNr > 1 then
 Begin
  Try
  ad_GetFreightCost.Active  := True ;
  if not ad_GetFreightCost.Eof then
   Result := ad_GetFreightCostFrakt.AsFloat
  Finally
   ad_GetFreightCost.Active := False ;
  End ;
 End ;

//ad_GetFreightCostFrakt

End ; *)

procedure TdmModule1.InsertAttestHeader(const Beskrivning : String) ;
Var SequensNo         : Integer ;
    TotalFreightCost  : Double ;
Begin
 //TotalFreightCost := GetFreightCostOfSelectedRows ;

 admSelectedRows.First ;

//START A TRANSACTION
  dmsConnector.StartTransaction ;
  Try
  SequensNo := dmsConnector.NextMaxNo('Att_Ext_Services') ;


 While not admSelectedRows.Eof do
 Begin
  Try
  ad_InsAttHead.ParamByName('InternalInvoiceNo').AsInteger          := admSelectedRowsInternalInvoiceNo.AsInteger ;
  ad_InsAttHead.ParamByName('ShippingPlanNo').AsInteger             := admSelectedRowsLONo.AsInteger ;
  ad_InsAttHead.ParamByName('SHIPPINGCOMPANYNO').AsInteger          := admSelectedRowsSHIPPINGCOMPANYNO.AsInteger ;
  ad_InsAttHead.ParamByName('CURRENCYNO').AsInteger                 := admSelectedRowsCURRENCYNO.AsInteger ;

  ad_InsAttHead.ParamByName('SequensNo').AsInteger                  := SequensNo ;
  ad_InsAttHead.ParamByName('Supplier_InvoiceNo').AsString          := admSelectedRowsSupplier_InvoiceNo.AsString ;
  ad_InsAttHead.ParamByName('Supplier_InvoiceDate').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(admSelectedRowsSupplier_InvoiceDate.AsDateTime) ;
  ad_InsAttHead.ParamByName('UserID').AsInteger                     := ThisUser.UserID ;
  ad_InsAttHead.ParamByName('DESC').AsString                        := Beskrivning ;//'Frakt' ;//admSelectedRowsSupplier_InvoiceNo.AsString ;
  ad_InsAttHead.ParamByName('Amount').AsFloat                       := admSelectedRowsAmount.AsFloat ;
  ad_InsAttHead.ParamByName('Quick_InvoiceNo').AsInteger            := admSelectedRowsFakturanr.AsInteger ;
  ad_InsAttHead.ParamByName('Note').AsString                        := admSelectedRowsNote.AsString ;
  ad_InsAttHead.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
//       Raise ;
      End ;
     end;
  admSelectedRows.Next ;
 End ;//While     

 admSelectedRows.First ;
 While not admSelectedRows.Eof do
 Begin

 if Beskrivning = 'Komm' then
 Begin
  Try
  ad_InsAttestRowKomm.ParamByName('InternalInvoiceNo').AsInteger         := admSelectedRowsInternalInvoiceNo.AsInteger ;
//  ad_InsAttestRowKomm.ParamByName('ShippingPlanNo').AsInteger            := admSelectedRowsLONo.AsInteger ;
  ad_InsAttestRowKomm.ParamByName('SequensNo').AsInteger                 := SequensNo ;
  ad_InsAttestRowKomm.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
      End ;
     end;
  End
  else
  Begin
  Try
  ad_InsAttestRow.ParamByName('InternalInvoiceNo').AsInteger         := admSelectedRowsInternalInvoiceNo.AsInteger ;
  ad_InsAttestRow.ParamByName('ShippingPlanNo').AsInteger            := admSelectedRowsLONo.AsInteger ;
  ad_InsAttestRow.ParamByName('SequensNo').AsInteger                 := SequensNo ;
  ad_InsAttestRow.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
      End ;
     end;
  End ;

  Try
   ad_InsAttLO.ParamByName('InternalInvoiceNo').AsInteger         := admSelectedRowsInternalInvoiceNo.AsInteger ;
   ad_InsAttLO.ParamByName('ShippingPlanNo').AsInteger            := admSelectedRowsLONo.AsInteger ;
   ad_InsAttLO.ParamByName('SequensNo').AsInteger                 := SequensNo ;
   ad_InsAttLO.ParamByName('AmountAttested').AsFloat              := admSelectedRowsTotalAmount.AsFloat ;
   ad_InsAttLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
//       Raise ;
      End ;
     end;

  admSelectedRows.Next ;
 End ;//While

 dmsConnector.Commit ;
 Except
  dmsConnector.Rollback ;
  Raise ;
 End ;
End ;

procedure TdmModule1.cds_LFFraktChange(Sender: TField);
begin
 cds_LFConfirmFrakt.OnChange  := nil ;
 Try
 if cds_LFFrakt.AsFloat <> 0 then
 cds_LFConfirmFrakt.AsInteger := 1
 else
 cds_LFConfirmFrakt.AsInteger := 0 ;
 Finally
  cds_LFConfirmFrakt.OnChange  := cds_LFConfirmFraktChange ;
 End ;
end;

procedure TdmModule1.cds_LFConfirmFraktChange(Sender: TField);
begin
 cds_LFFrakt.OnChange  := nil ;
 Try
 if cds_LFConfirmFrakt.AsInteger = 1 then
 cds_LFFrakt.AsFloat := cds_LFFraktkostnad_sum.AsFloat
 else
 cds_LFFrakt.AsFloat := 0 ;
 Finally
  cds_LFFrakt.OnChange := cds_LFFraktChange ;
 End ;
end;

procedure TdmModule1.cds_LFConfirmKommChange(Sender: TField);
begin
 cds_LFKomm.OnChange  := nil ;
 Try
 if cds_LFConfirmKomm.AsInteger = 1 then
 cds_LFKomm.AsFloat := cds_LFKommission_Sum.AsFloat
 else
 cds_LFKomm.AsFloat := 0 ;
// if cds_LF.State in [dsEdit, dsInsert] then
//  cds_LF.Post ;
 Finally
  cds_LFKomm.OnChange := cds_LFKommChange ;
 End ;
end;

procedure TdmModule1.cds_LFKommChange(Sender: TField);
begin
 cds_LFConfirmKomm.OnChange  := nil ;
 Try
 if cds_LFKomm.AsFloat <> 0 then
 cds_LFConfirmKomm.AsInteger := 1
 else
 cds_LFConfirmKomm.AsInteger := 0 ;
 Finally
  cds_LFConfirmKomm.OnChange  := cds_LFConfirmKommChange ;
 End ;
end;

procedure TdmModule1.DeleteAttest(const SequensNo  : Integer) ;
Begin
 Try
 adDeleteAttest.ParamByName('SequensNo').AsInteger := SequensNo ;
 adDeleteAttest.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmModule1.sp_AttestFreightListConfirmFraktChange(
  Sender: TField);
begin
 sp_AttestFreightListFrakt.OnChange  := nil ;
 Try
 if sp_AttestFreightListConfirmFrakt.AsInteger = 1 then
 sp_AttestFreightListFrakt.AsFloat := sp_AttestFreightListFraktkostnad_sum.AsFloat
 else
 sp_AttestFreightListFrakt.AsFloat := 0 ;
 Finally
  sp_AttestFreightListFrakt.OnChange := sp_AttestFreightListFraktChange ;
 End ;
end;

procedure TdmModule1.sp_AttestFreightListFraktChange(Sender: TField);
begin
 sp_AttestFreightListConfirmFrakt.OnChange  := nil ;
 Try
 if sp_AttestFreightListFrakt.AsFloat <> 0 then
 sp_AttestFreightListConfirmFrakt.AsInteger := 1
 else
 sp_AttestFreightListConfirmFrakt.AsInteger := 0 ;
 Finally
  sp_AttestFreightListConfirmFrakt.OnChange  := sp_AttestFreightListConfirmFraktChange ;
 End ;
end;

procedure TdmModule1.sp_LFConfirmFraktChange(Sender: TField);
begin
 sp_LFFrakt.OnChange  := nil ;
 Try
 if sp_LFConfirmFrakt.AsInteger = 1 then
 sp_LFFrakt.AsFloat := sp_LFFraktkostnad_sum.AsFloat
 else
 sp_LFFrakt.AsFloat := 0 ;
 Finally
  sp_LFFrakt.OnChange := sp_LFFraktChange ;
 End ;
end;

procedure TdmModule1.sp_LFFraktChange(Sender: TField);
begin
 sp_LFConfirmFrakt.OnChange  := nil ;
 Try
 if sp_LFFrakt.AsFloat <> 0 then
 sp_LFConfirmFrakt.AsInteger := 1
 else
 sp_LFConfirmFrakt.AsInteger := 0 ;
 Finally
  sp_LFConfirmFrakt.OnChange  := sp_LFConfirmFraktChange ;
 End ;
end;

procedure TdmModule1.sp_AttestKommListConfirmKommChange(Sender: TField);
begin
 sp_AttestKommListKomm.OnChange  := nil ;
 Try
 if sp_AttestKommListConfirmKomm.AsInteger = 1 then
 sp_AttestKommListKomm.AsFloat := sp_AttestKommListKommission_Sum.AsFloat
 else
 sp_AttestKommListKomm.AsFloat := 0 ;
// if sp_AttestKommList.State in [dsEdit, dsInsert] then
//  sp_AttestKommList.Post ;
 Finally
  sp_AttestKommListKomm.OnChange := sp_AttestKommListKommChange ;
 End ;
end;

procedure TdmModule1.sp_AttestKommListSingleConfirmKommChange(
  Sender: TField);
begin
 sp_AttestKommListSingleKomm.OnChange  := nil ;
 Try
 if cds_LFConfirmKomm.AsInteger = 1 then
 sp_AttestKommListSingleKomm.AsFloat := sp_AttestKommListSingleKommission_Sum.AsFloat
 else
 sp_AttestKommListSingleKomm.AsFloat := 0 ;
// if cds_LF.State in [dsEdit, dsInsert] then
//  cds_LF.Post ;
 Finally
  sp_AttestKommListSingleKomm.OnChange := sp_AttestKommListSingleKommChange ;
 End ;
end;

procedure TdmModule1.sp_AttestKommListKommChange(Sender: TField);
begin
 sp_AttestKommListConfirmKomm.OnChange  := nil ;
 Try
 if sp_AttestKommListKomm.AsFloat <> 0 then
 sp_AttestKommListConfirmKomm.AsInteger := 1
 else
 sp_AttestKommListConfirmKomm.AsInteger := 0 ;
 Finally
  sp_AttestKommListConfirmKomm.OnChange  := sp_AttestKommListConfirmKommChange ;
 End ;
end;

procedure TdmModule1.sp_AttestKommListSingleKommChange(Sender: TField);
begin
 sp_AttestKommListSingleConfirmKomm.OnChange  := nil ;
 Try
 if sp_AttestKommListSingleKomm.AsFloat <> 0 then
 sp_AttestKommListSingleConfirmKomm.AsInteger := 1
 else
 sp_AttestKommListSingleConfirmKomm.AsInteger := 0 ;
 Finally
  sp_AttestKommListSingleConfirmKomm.OnChange  := sp_AttestKommListSingleConfirmKommChange ;
 End ;
end;

function TdmModule1.GetCreditGroupName (const ClientNo : Integer) : String ;
Begin
 sq_GetCreditGroupNamn.ParamByName('ClientNo').AsInteger  := ClientNo ;
 sq_GetCreditGroupNamn.Open ;
 Try
 if not sq_GetCreditGroupNamn.Eof then
  Result  := sq_GetCreditGroupNamnGruppnamn.AsString
   else
    Result  := '' ;
 Finally
  sq_GetCreditGroupNamn.Close ;
 End ;
End ;

procedure TdmModule1.cds_CreLimAfterInsert(DataSet: TDataSet);
begin
 cds_CreLimDateCreated.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 cds_CreLimDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_CreLimUserModified.AsInteger       := ThisUser.UserID ; 
end;

procedure TdmModule1.cds_CreLimBeforePost(DataSet: TDataSet);
begin
  cds_CreLimDateModified.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  cds_CreLimUserModified.AsInteger       := ThisUser.UserID ;
end;

procedure TdmModule1.cds_InvoicePayStatusBeforePost(DataSet: TDataSet);
begin
// cds_InvoicePayStatusInternalInvoiceNo.AsInteger  := cds_InvoicePayStatusIH_InternalInvoiceNo.AsInteger ;
 if cds_InvoicePayStatusDatePaid.IsNull then
  cds_InvoicePayStatusDatePaid.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
// if cds_InvoicePayStatusInternalInvoiceNo.IsNull then
// InsPayStatus (cds_InvoicePayStatusIH_InternalInvoiceNo.AsInteger) ;
end;

procedure TdmModule1.cds_InvoicePayStatusUpdateRecord(ASender: TDataSet;
  ARequest: TADUpdateRequest; var AAction: TADErrorAction;
  AOptions: TADUpdateRowOptions);
begin
  ADUpdateSQL1.ConnectionName := cds_InvoicePayStatus.ConnectionName;
  ADUpdateSQL1.DataSet := cds_InvoicePayStatus ;
 ADUpdateSQL1.Apply(ARequest, AAction, AOptions);
end;

procedure TdmModule1.cds_InvoicePayStatusCalcFields(DataSet: TDataSet);
begin
 if (cds_InvoicePayStatusBELOP_EXKL_KASSA.AsFloat -
 cds_InvoicePayStatusAmountPaid.AsFloat < 0)
 and (cds_InvoicePayStatusBELOP_EXKL_KASSA.AsFloat > 0) then
 cds_InvoicePayStatusAttBetala.AsFloat  := 0
 else
  cds_InvoicePayStatusAttBetala.AsFloat  :=
 cds_InvoicePayStatusBELOP_EXKL_KASSA.AsFloat -
 cds_InvoicePayStatusAmountPaid.AsFloat ;
end;

procedure TdmModule1.InsPayStatus (const InternalInvoiceNo : Integer) ;
Begin
 Try
 cds_InvoicePayStatus.OnUpdateRecord  := nil ;
 Try
 sq_InsPayStatus.ParamByName('InternalInvoiceNo').AsInteger   := InternalInvoiceNo ;
 sq_InsPayStatus.ParamByName('DatePaid').AsSQLTimeStamp       := cds_InvoicePayStatusDatePaid.AsSQLTimeStamp ;
 sq_InsPayStatus.ParamByName('Paid').AsInteger                := cds_InvoicePayStatusPaid.AsInteger ;
 sq_InsPayStatus.ParamByName('AmountPaid').AsFloat            := cds_InvoicePayStatusAmountPaid.AsFloat ;
 sq_InsPayStatus.ParamByName('Note').AsString                 := cds_InvoicePayStatusNote.AsString ;
 sq_InsPayStatus.ParamByName('UserID').AsInteger              := ThisUser.UserID ;
 sq_InsPayStatus.ExecSQL ;

 sq_ModInsPayStatus.ParamByName('InternalInvoiceNo').AsInteger   := InternalInvoiceNo ;
 sq_ModInsPayStatus.ParamByName('DatePaid').AsSQLTimeStamp       := cds_InvoicePayStatusDatePaid.AsSQLTimeStamp ;
 sq_ModInsPayStatus.ParamByName('Paid').AsInteger                := cds_InvoicePayStatusPaid.AsInteger ;
 sq_ModInsPayStatus.ParamByName('AmountPaid').AsFloat            := cds_InvoicePayStatusAmountPaid.AsFloat ;
 sq_ModInsPayStatus.ParamByName('Note').AsString                 := cds_InvoicePayStatusNote.AsString ;
 sq_ModInsPayStatus.ParamByName('UserID').AsInteger              := ThisUser.UserID ;
 sq_ModInsPayStatus.ExecSQL ;

 except
  On E: Exception do
   Begin
    dmsSystem.FDoLog('InsPayStatus ' + E.Message) ;
//      ShowMessage(E.Message);
    Raise ;
   End ;
  end;
 Finally
  cds_InvoicePayStatus.OnUpdateRecord := cds_InvoicePayStatusUpdateRecord ;
 End ;
End ;

procedure TdmModule1.cds_CreGrpCliAfterInsert(DataSet: TDataSet);
begin
 cds_CreGrpCligrpNo.AsInteger  := cds_CreLimgrpno.AsInteger ;
end;

procedure TdmModule1.Refresh_OrderstockDtl ;
Begin
 sp_OrderstockDtl.Active  := False ;
 sp_OrderstockDtl.ParamByName('@UserID').AsInteger              := 8 ;//ThisUser.UserID ;
 sp_OrderstockDtl.ParamByName('@DELIVERY_COUNTRY').AsString     := sp_OrderstockLev_Land.AsString ;
 sp_OrderstockDtl.ParamByName('@CURRENCY').AsString             := sp_OrderstockValuta.AsString ;
 sp_OrderstockDtl.ParamByName('@SALES_REGION').AsString         := sp_OrderstockFörsäljningsregion.AsString ;
 sp_OrderstockDtl.Active  := True ;
End ;

procedure TdmModule1.Close_OrderstockDtl ;
Begin
 sp_OrderstockDtl.Active  := False ;
End ;

procedure TdmModule1.sp_Vis_GenTradingAnalyzeCalcFields(DataSet: TDataSet);
begin
 if sp_Vis_GenTradingAnalyzeSales_Belopp_SEK.AsFloat > 0 then
 sp_Vis_GenTradingAnalyzeDiffOfSales.AsFloat  := sp_Vis_GenTradingAnalyzeDiff_SEK.AsFloat / sp_Vis_GenTradingAnalyzeSales_Belopp_SEK.AsFloat * 100
 else
 sp_Vis_GenTradingAnalyzeDiffOfSales.AsFloat  := 0 ;
end;

procedure TdmModule1.ApplyUpdatesToInvoicePayStatus ;
begin
 cds_InvoicePayStatus.FilterChanges := [rtModified] ;
 Try
 cds_InvoicePayStatus.First ;
 While not cds_InvoicePayStatus.Eof do
 Begin
  InsPayStatus (cds_InvoicePayStatusIH_InternalInvoiceNo.AsInteger) ;
// if cds_InvoicePayStatusDatePaid.IsNull then
//  cds_InvoicePayStatusDatePaid.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
// if cds_InvoicePayStatusInternalInvoiceNo.IsNull then
// InsPayStatus (cds_InvoicePayStatusIH_InternalInvoiceNo.AsInteger) ;
  cds_InvoicePayStatus.Next ;
 End ;
 Finally
  cds_InvoicePayStatus.FilterChanges := [rtModified, rtInserted, rtDeleted, rtUnmodified] ;
 End ;


end;

end.
