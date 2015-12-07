unit dmcVidaInvoice;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Controls, Dialogs,
  SqlTimSt, kbmMemTable, ComCtrls, Variants,
  Forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  StdCtrls, Math, DBCtrls, DateUtils, QImport3XLS, QImport3, QImport3ASCII,
  QExport4ASCII, QExport4, QExport4XLS;

type
  TdmVidaInvoice = class(TDataModule)
    dsrcInvoiceHead: TDataSource;
    dsrcInvoiceLO: TDataSource;
    dsrcInvoiceDetail: TDataSource;
    dsInvoiceShipTo: TDataSource;
    dsInvoiceShipToAddress: TDataSource;
    dsrcInvoiceNumber: TDataSource;
    dsProformaInvNo: TDataSource;
    ds_BookingData: TDataSource;
    ds_Att_Ext_ServicesII: TDataSource;
    ds_PurchaseInvNo: TDataSource;
    dsInvoiceList: TDataSource;
    ds_InvDtl_Att: TDataSource;
    mt_InvDtl_Att: TkbmMemTable;
    mt_InvDtl_AttInternalInvoiceNo: TIntegerField;
    mt_InvDtl_AttShippingPlanNo: TIntegerField;
    mt_InvDtl_AttInvoiceDetailNo: TIntegerField;
    mt_InvDtl_AttTypeOfRow: TIntegerField;
    mt_InvDtl_AttReference: TStringField;
    mt_InvDtl_AttProductDescription: TStringField;
    mt_InvDtl_AttLengthDescription: TStringField;
    mt_InvDtl_AttPrice: TFloatField;
    mt_InvDtl_AttVolumeUnit: TStringField;
    mt_InvDtl_AttPriceUnit: TStringField;
    mt_InvDtl_AttProductValue: TFloatField;
    mt_InvDtl_AttVolume_OrderUnit: TFloatField;
    mt_InvDtl_AttActualNetM3: TFloatField;
    mt_InvDtl_AttNominalM3: TFloatField;
    mt_InvDtl_AttLinealMeter: TFloatField;
    mt_InvDtl_AttNoOfPieces: TIntegerField;
    mt_AttestRow: TkbmMemTable;
    mt_AttestRowInternalInvoiceNo: TIntegerField;
    mt_AttestRowShippingPlanNo: TIntegerField;
    mt_AttestRowSequensNo: TIntegerField;
    mt_AttestRowInvoiceDetailNo: TIntegerField;
    mt_InvDtl_AttSequensNo: TIntegerField;
    mt_InvDtl_AttChecked: TIntegerField;
    ds_mt_AttestRow: TDataSource;
    dsrcInvoiceHead_II: TDataSource;
    ds_InvoiceGroup: TDataSource;
    mtInvoiceType: TkbmMemTable;
    mtInvoiceTypeInvoiceTypeNo: TIntegerField;
    mtInvoiceTypeInvoiceTypeName: TStringField;
    dsInvoiceType: TDataSource;
    ds_NoOfInvoices: TDataSource;
    ds_LoadPackages2: TDataSource;
    ds_IH_SpecLoad: TDataSource;
    ds_PIP: TDataSource;
    ds_LIP: TDataSource;
    ds_LoadPackagesII: TDataSource;
    ds_LoadPackagesIII: TDataSource;
    QExport3XLS1: TQExport4XLS;
    QExport3ASCII1: TQExport4ASCII;
    QExport3ASCII2: TQExport4ASCII;
    cdsInvoiceHead: TFDQuery;
    cdsInvoiceHeadInternalInvoiceNo: TIntegerField;
    cdsInvoiceHeadInvoiceType: TIntegerField;
    cdsInvoiceHeadInvoiceDate: TSQLTimeStampField;
    cdsInvoiceHeadSupplierNo: TIntegerField;
    cdsInvoiceHeadCustomerNo: TIntegerField;
    cdsInvoiceHeadAgentNo: TIntegerField;
    cdsInvoiceHeadAgentCommission: TFloatField;
    cdsInvoiceHeadSendInvoiceToAgent: TIntegerField;
    cdsInvoiceHeadPaymentTermsNo: TIntegerField;
    cdsInvoiceHeadCommissionPaidByCustomer: TIntegerField;
    cdsInvoiceHeadDeliveryTermsNo: TIntegerField;
    cdsInvoiceHeadDestinationNo: TIntegerField;
    cdsInvoiceHeadStatus: TIntegerField;
    cdsInvoiceHeadNote: TMemoField;
    cdsInvoiceHeadInvoiceText: TMemoField;
    cdsInvoiceHeadPaymentText: TMemoField;
    cdsInvoiceHeadCurrencyNo: TIntegerField;
    cdsInvoiceHeadIncome_Account: TStringField;
    cdsInvoiceHeadCustomerRecivablesAccount: TStringField;
    cdsInvoiceHeadVAT_OnInvoice: TSmallintField;
    cdsInvoiceHeadClientBillingAddressNo: TIntegerField;
    cdsInvoiceHeadAddressName: TStringField;
    cdsInvoiceHeadAddressLine1: TStringField;
    cdsInvoiceHeadAddressLine2: TStringField;
    cdsInvoiceHeadAddressLine3: TStringField;
    cdsInvoiceHeadAddressLine4: TStringField;
    cdsInvoiceHeadStateOrProvince: TStringField;
    cdsInvoiceHeadPostalCode: TStringField;
    cdsInvoiceHeadCityName: TStringField;
    cdsInvoiceHeadCountryName: TStringField;
    cdsInvoiceHeadCreatedUser: TIntegerField;
    cdsInvoiceHeadModifiedUser: TIntegerField;
    cdsInvoiceHeadDateCreated: TSQLTimeStampField;
    cdsInvoiceHeadAgentName: TStringField;
    cdsInvoiceHeadCustomerName: TStringField;
    cdsInvoiceHeadDeliveryTerm: TStringField;
    cdsInvoiceHeadPaymentDescription: TStringField;
    cdsInvoiceHeadLanguageCode: TIntegerField;
    cdsInvoiceHeadDestination: TStringField;
    cdsInvoiceHeadFreightInDiscount: TIntegerField;
    cdsInvoiceHeadFreightInCommission: TIntegerField;
    cdsInvoiceHeadDiscount1: TFloatField;
    cdsInvoiceHeadCurrencyName: TStringField;
    cdsInvoiceHeadST_AddressName: TStringField;
    cdsInvoiceHeadST_AddressLine1: TStringField;
    cdsInvoiceHeadST_AddressLine2: TStringField;
    cdsInvoiceHeadST_AddressLine3: TStringField;
    cdsInvoiceHeadST_AddressLine4: TStringField;
    cdsInvoiceHeadST_StateOrProvince: TStringField;
    cdsInvoiceHeadST_PostalCode: TStringField;
    cdsInvoiceHeadST_CityName: TStringField;
    cdsInvoiceHeadST_CountryName: TStringField;
    cdsInvoiceHeadAGENT_ADDRESS_NAME: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_PROVINCE: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_CITY: TStringField;
    cdsInvoiceHeadAGENT_SHIPTO_COUNTRY: TStringField;
    cdsInvoiceHeadSearchName: TStringField;
    cdsInvoiceHeadTot_Inv_Inc_Freight_Extras: TFloatField;
    cdsInvoiceHeadSUM_FreigthCost: TFloatField;
    cdsInvoiceHeadTotal_Product_Value_No_Freight: TFloatField;
    cdsInvoiceHeadDiscount: TFloatField;
    cdsInvoiceHeadCommission: TFloatField;
    cdsInvoiceHeadCommission_and_Discount: TFloatField;
    cdsInvoiceHeadInv_Value_Deduct_Com_Dis: TFloatField;
    cdsInvoiceHeadVAT_Value: TFloatField;
    cdsInvoiceHeadInv_Value_To_Be_Paid: TFloatField;
    cdsInvoiceHeadDebit_Credit: TIntegerField;
    cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM: TFloatField;
    cdsInvoiceHeadVAT: TStringField;
    cdsInvoiceHeadInv_Value_To_Be_Paid_2: TFloatField;
    cdsInvoiceHeadQuickInvoice: TIntegerField;
    cdsInvoiceHeadStickyNote: TStringField;
    cdsInvoiceHeadSalesOrgNo: TStringField;
    cdsInvoiceHeadOCEANFREIGHTSEKAM3: TBCDField;
    cdsInvoiceHeadTotalAM3: TBCDField;
    cdsInvoiceHeadTotalVolumeUnit: TBCDField;
    cdsInvoiceHeadTrading: TIntegerField;
    cdsInvoiceHeadResponsibleSeller: TIntegerField;
    cdsInvoiceHeadDestinationText: TStringField;
    cdsInvoiceHeadIncludeFreightCostInPrice: TIntegerField;
    cdsInvoiceHeadSpecialMoms: TIntegerField;
    cdsInvoiceHeadAccountType: TIntegerField;
    cdsInvoiceHeadInvoiced: TIntegerField;
    cds_LoadPackagesIII: TFDQuery;
    cdsInvoiceLO: TFDQuery;
    cdsInvoiceLOInternalInvoiceNo: TIntegerField;
    cdsInvoiceLOShippingPlanNo: TIntegerField;
    cdsInvoiceLOOrderNoText: TStringField;
    cdsInvoiceLOReference: TStringField;
    cdsInvoiceLOOurReference: TStringField;
    cdsInvoiceLOSalesMan: TStringField;
    cdsInvoiceLOBookingNo: TIntegerField;
    cdsInvoiceLOTotalFreightCost: TFloatField;
    cdsInvoiceLOFreightCostPerUnit: TFloatField;
    cdsInvoiceLOInvoiceAdditionAmount: TFloatField;
    cdsInvoiceLOInvoiceAdditionUnitNo: TIntegerField;
    cdsInvoiceLOInvoiceAdditionDescription: TStringField;
    cdsInvoiceLOCreatedUser: TIntegerField;
    cdsInvoiceLOModifiedUser: TIntegerField;
    cdsInvoiceLODateCreated: TSQLTimeStampField;
    cdsInvoiceLOShipper: TStringField;
    cdsInvoiceLOCarrierName: TStringField;
    cdsInvoiceLOETD: TSQLTimeStampField;
    cdsInvoiceLOETA: TSQLTimeStampField;
    cdsInvoiceLOTrpID: TStringField;
    cdsInvoiceDetail: TFDQuery;
    cdsInvoiceDetailInternalInvoiceNo: TIntegerField;
    cdsInvoiceDetailShippingPlanNo: TIntegerField;
    cdsInvoiceDetailInvoiceDetailNo: TIntegerField;
    cdsInvoiceDetailTypeOfRow: TIntegerField;
    cdsInvoiceDetailLoadNo: TIntegerField;
    cdsInvoiceDetailLoadID: TStringField;
    cdsInvoiceDetailOrderLineNo: TIntegerField;
    cdsInvoiceDetailReference: TStringField;
    cdsInvoiceDetailProductDescription: TStringField;
    cdsInvoiceDetailProductNo: TIntegerField;
    cdsInvoiceDetailLengthDescription: TStringField;
    cdsInvoiceDetailProductLengthNo: TIntegerField;
    cdsInvoiceDetailPrice: TFloatField;
    cdsInvoiceDetailVolumeUnit: TStringField;
    cdsInvoiceDetailPriceUnit: TStringField;
    cdsInvoiceDetailProductValue: TFloatField;
    cdsInvoiceDetailVolume_OrderUnit: TFloatField;
    cdsInvoiceDetailActualThicknessMM: TFloatField;
    cdsInvoiceDetailActualWidthMM: TFloatField;
    cdsInvoiceDetailNominalThicknessMM: TFloatField;
    cdsInvoiceDetailNominalWidthMM: TFloatField;
    cdsInvoiceDetailNominalLengthMM: TFloatField;
    cdsInvoiceDetailNominalThicknessINCH: TFloatField;
    cdsInvoiceDetailNominalWidthINCH: TFloatField;
    cdsInvoiceDetailActualNetM3: TFloatField;
    cdsInvoiceDetailNominalM3: TFloatField;
    cdsInvoiceDetailLinealMeter: TFloatField;
    cdsInvoiceDetailNoOfPieces: TIntegerField;
    cdsInvoiceDetailCreatedUser: TIntegerField;
    cdsInvoiceDetailModifiedUser: TIntegerField;
    cdsInvoiceDetailDateCreated: TSQLTimeStampField;
    cdsInvoiceDetailCustShipPlanDetailObjectNo: TIntegerField;
    cdsInvoiceDetailNoOfPkgs: TIntegerField;
    cdsInvoiceDetailOL_Reference: TStringField;
    cdsInvoiceDetailFreightCostCurr: TBCDField;
    cdsInvoiceDetailProductValueWOFreight: TFloatField;
    cdsInvoiceDetailVatValue: TFloatField;
    cdsInvoiceDetailintNM3: TFloatField;
    cdsInvoiceDetailArticleNo: TIntegerField;
    cdsInvoiceShipTo: TFDQuery;
    cdsInvoiceShipToInternalInvoiceNo: TIntegerField;
    cdsInvoiceShipToShippingPlanNo: TIntegerField;
    cdsInvoiceShipToReference: TStringField;
    cdsInvoiceShipToAddressNo: TIntegerField;
    cdsInvoiceShipToAddress: TFDQuery;
    cdsInvoiceShipToAddressInternalInvoiceNo: TIntegerField;
    cdsInvoiceShipToAddressShippingPlanNo: TIntegerField;
    cdsInvoiceShipToAddressReference: TStringField;
    cdsInvoiceShipToAddressAddressNo: TIntegerField;
    cdsInvoiceShipToAddressAddressName: TStringField;
    cdsInvoiceShipToAddressADDR: TStringField;
    cdsInvoiceShipToAddressAddressLine1: TStringField;
    cdsInvoiceShipToAddressAddressLine2: TStringField;
    cdsInvoiceShipToAddressAddressLine3: TStringField;
    cdsInvoiceShipToAddressAddressLine4: TStringField;
    cdsInvoiceShipToAddressSTATE: TStringField;
    cdsInvoiceShipToAddressPOSTAL_CODE: TStringField;
    cdsInvoiceShipToAddressCITY: TStringField;
    cdsInvoiceShipToAddressCOUNTRY: TStringField;
    cdsInvoiceNumber: TFDQuery;
    cdsInvoiceNumberInvoiceNo: TIntegerField;
    cdsInvoiceNumberInternalInvoiceNo: TIntegerField;
    cdsInvoiceNumberUserCreated: TSmallintField;
    cdsInvoiceNumberUserModified: TSmallintField;
    cdsInvoiceNumberDateCreated: TSQLTimeStampField;
    cdsProformaInvNo: TFDQuery;
    cdsProformaInvNoProformaInvoiceNo: TIntegerField;
    cdsProformaInvNoInternalInvoiceNo: TIntegerField;
    cdsProformaInvNoUserCreated: TSmallintField;
    cdsProformaInvNoUserModified: TSmallintField;
    cdsProformaInvNoDateCreated: TSQLTimeStampField;
    cdsFWInvNo: TFDQuery;
    cdsFWInvNoInvoiceNo: TIntegerField;
    cdsFWInvNoInternalInvoiceNo: TIntegerField;
    cdsFWInvNoUserCreated: TSmallintField;
    cdsFWInvNoUserModified: TSmallintField;
    cdsFWInvNoDateCreated: TSQLTimeStampField;
    cdsUSAInvNo: TFDQuery;
    cdsUSAInvNoInvoiceNo: TIntegerField;
    cdsUSAInvNoInternalInvoiceNo: TIntegerField;
    cdsUSAInvNoUserCreated: TSmallintField;
    cdsUSAInvNoUserModified: TSmallintField;
    cdsUSAInvNoDateCreated: TSQLTimeStampField;
    cdsInvoiceList: TFDQuery;
    cds_IH_SpecLoad: TFDQuery;
    cds_IH_SpecLoadInternalInvoiceNo: TIntegerField;
    cds_IH_SpecLoadPIPNo: TIntegerField;
    cds_IH_SpecLoadLIPNo: TIntegerField;
    cds_IH_SpecLoadSpecLoadNo: TIntegerField;
    cds_ExportTyp1: TFDQuery;
    cds_ExportTyp1PackageNo: TStringField;
    cds_ExportTyp1NomThick: TFloatField;
    cds_ExportTyp1NomWidth: TFloatField;
    cds_ExportTyp1MAXLENGTH: TFloatField;
    cds_ExportTyp1MINLENGTH: TFloatField;
    cds_ExportTyp1Pcs: TIntegerField;
    cds_ExportTyp1Mark: TStringField;
    cds_ExportTyp1PEFC: TStringField;
    sq_GetInvoiceHeadData: TFDQuery;
    sq_GetInvoiceHeadDataShippingPlanNo: TIntegerField;
    sq_GetInvoiceHeadDataCustomerNo: TIntegerField;
    sq_GetInvoiceHeadDataCustomerNoOH: TIntegerField;
    sq_GetInvoiceHeadDataAgentNo: TIntegerField;
    sq_GetInvoiceHeadDataVAT: TStringField;
    sq_GetInvoiceHeadDataAgentCommission: TFloatField;
    sq_GetInvoiceHeadDataSendInvoiceToAgent: TIntegerField;
    sq_GetInvoiceHeadDataPaymentTermsNo: TIntegerField;
    sq_GetInvoiceHeadDataDeliveryTermsNo: TIntegerField;
    sq_GetInvoiceHeadDataDestinationNo: TIntegerField;
    sq_GetInvoiceHeadDataDestination: TStringField;
    sq_GetInvoiceHeadDataInvoiceText: TMemoField;
    sq_GetInvoiceHeadDataOrderNoText: TStringField;
    sq_GetInvoiceHeadDataPaymentText: TMemoField;
    sq_GetInvoiceHeadDataCurrencyNo: TIntegerField;
    sq_GetInvoiceHeadDataClientBillingAddressNo: TIntegerField;
    sq_GetInvoiceHeadDataBILL_ADDRESS_NAME: TStringField;
    sq_GetInvoiceHeadDataAddressLine1: TStringField;
    sq_GetInvoiceHeadDataAddressLine2: TStringField;
    sq_GetInvoiceHeadDataAddressLine3: TStringField;
    sq_GetInvoiceHeadDataAddressLine4: TStringField;
    sq_GetInvoiceHeadDataStateOrProvince: TStringField;
    sq_GetInvoiceHeadDataPostalCode: TStringField;
    sq_GetInvoiceHeadDataAddressCity: TStringField;
    sq_GetInvoiceHeadDataAddressCountry: TStringField;
    sq_GetInvoiceHeadDataCustomerName: TStringField;
    sq_GetInvoiceHeadDataSearchName: TStringField;
    sq_GetInvoiceHeadDataAgentName: TStringField;
    sq_GetInvoiceHeadDataLanguageCode: TIntegerField;
    sq_GetInvoiceHeadDataDeliveryTerm: TStringField;
    sq_GetInvoiceHeadDataPayDesc: TStringField;
    sq_GetInvoiceHeadDataDeliveryTermOH: TStringField;
    sq_GetInvoiceHeadDataPayDescOH: TStringField;
    sq_GetInvoiceHeadDataFreightInDiscount: TSmallintField;
    sq_GetInvoiceHeadDataFreightInCommission: TSmallintField;
    sq_GetInvoiceHeadDataCommissionPaidByCustomer: TSmallintField;
    sq_GetInvoiceHeadDataDiscount1: TFloatField;
    sq_GetInvoiceHeadDataCURRENCYNAME: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY: TStringField;
    sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY: TStringField;
    sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY: TStringField;
    sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY: TStringField;
    sq_GetInvoiceHeadDataVAT_ONINVOICE: TIntegerField;
    sq_GetInvoiceHeadDataSalesOrgNo: TStringField;
    sq_GetInvoiceHeadDataOrderNo: TIntegerField;
    sq_GetInvoiceHeadDataTrading: TIntegerField;
    sq_GetInvoiceHeadDataResponsibleSeller: TIntegerField;
    sq_GetInvoiceHeadDataDestinationText: TStringField;
    sq_GetInvoiceHeadDataSpecialMoms: TIntegerField;
    sq_GetLOData: TFDQuery;
    sq_GetLODataSTATUS: TIntegerField;
    sq_GetLODataLO: TIntegerField;
    sq_GetLODataORDERNUMBER: TStringField;
    sq_GetLODataREFERENCE: TStringField;
    sq_GetLODataOURREFERENCE: TStringField;
    sq_GetLODataSALESMAN: TStringField;
    sq_GetLODataBOOKINGNO: TIntegerField;
    sq_GetLODataADDITION_AMOUNT: TFloatField;
    sq_GetLODataADDITION_UNITNO: TIntegerField;
    sq_GetLODataADDITION_DESC: TStringField;
    sq_GetLODataSHIPPER: TStringField;
    sq_GetLODataCARRIERNAME: TStringField;
    sq_GetLODataETD: TSQLTimeStampField;
    sq_GetLODataETA: TSQLTimeStampField;
    sq_GetLODataTrpID: TStringField;
    sq_GetLODataADDITION_PRICEUNIT: TStringField;
    sq_GetInvoiceDetailData: TFDQuery;
    sq_GetInvoiceDetailDataCustShipPlanDetailObjectNo: TIntegerField;
    sq_GetInvoiceDetailDataORDERLINENO: TIntegerField;
    sq_GetInvoiceDetailDataREFERENCE: TStringField;
    sq_GetInvoiceDetailDataPRODUCTDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataPRODUCTNO: TIntegerField;
    sq_GetInvoiceDetailDataLENGTHDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataPRODUCTLENGTHNO: TIntegerField;
    sq_GetInvoiceDetailDataPRICE: TFloatField;
    sq_GetInvoiceDetailDataVOLUMEUNIT: TStringField;
    sq_GetInvoiceDetailDataPRICEUNIT: TStringField;
    sq_GetInvoiceDetailDataActualThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataActualWidthMM: TFloatField;
    sq_GetInvoiceDetailDataNominalThicknessMM_PG: TFloatField;
    sq_GetInvoiceDetailDataNominalWidthMM_PG: TFloatField;
    sq_GetInvoiceDetailDataNominalLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataActualLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataNominalThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataNominalWidthMM: TFloatField;
    sq_GetInvoiceDetailDataNominalLengthMM: TFloatField;
    sq_GetInvoiceDetailDataNominalThicknessINCH: TStringField;
    sq_GetInvoiceDetailDataNominalWidthINCH: TStringField;
    sq_GetInvoiceDetailDataLO: TIntegerField;
    sq_GetInvoiceDetailDataVOLUME_ORDERUNIT: TFMTBCDField;
    sq_GetInvoiceDetailDataM3ACTUAL: TFMTBCDField;
    sq_GetInvoiceDetailDataM3NOMINAL: TFMTBCDField;
    sq_GetInvoiceDetailDataACTUAL_LINEALMETER: TFMTBCDField;
    sq_GetInvoiceDetailDataNOOFPIECES: TIntegerField;
    sq_GetInvoiceDetailDataNOOFPKGS: TIntegerField;
    sq_GetInvoiceDetailDataOL_Reference: TStringField;
    sq_GetInvoiceDetailDataintNM3: TFloatField;
    sq_GetShipToAddress: TFDQuery;
    sq_GetShipToAddressShippingPlanNo: TIntegerField;
    sq_GetShipToAddressAddressNo: TIntegerField;
    sq_GetShipToAddressReference: TStringField;
    sq_GetNextInvoiceNo: TFDQuery;
    sq_GetNextInvoiceNoNEXT_INVNO: TIntegerField;
    sq_GetProFormInvNo: TFDQuery;
    sq_GetProFormInvNoProformaInvoiceNo: TIntegerField;
    cds_PurchaseInvNo: TFDQuery;
    cds_PurchaseInvNoPO_InvoiceNo: TIntegerField;
    cds_PurchaseInvNoInternalInvoiceNo: TIntegerField;
    cds_PurchaseInvNoUserCreated: TSmallintField;
    cds_PurchaseInvNoUserModified: TSmallintField;
    cds_PurchaseInvNoDateCreated: TSQLTimeStampField;
    cds_InvoiceGroup: TFDQuery;
    cds_InvoiceGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceGroupOriginalInvNos: TStringField;
    cds_InvoiceGroupOrdernos: TStringField;
    cds_InvoiceGroupCreatedUser: TIntegerField;
    cds_InvoiceGroupModifiedUser: TIntegerField;
    cds_InvoiceGroupCreatedDate: TSQLTimeStampField;
    cds_InvoiceGroupModifiedDate: TSQLTimeStampField;
    cds_InvoiceGroupInvoiceText: TMemoField;
    cds_InvoiceGroupAddressName: TStringField;
    cds_InvoiceGroupAddressLine1: TStringField;
    cds_InvoiceGroupAddressLine2: TStringField;
    cds_InvoiceGroupAddressLine3: TStringField;
    cds_InvoiceGroupAddressLine4: TStringField;
    cds_InvoiceGroupStateOrProvince: TStringField;
    cds_InvoiceGroupPostalCode: TStringField;
    cds_InvoiceGroupCityName: TStringField;
    cds_InvoiceGroupCountryName: TStringField;
    cds_InvoiceGroupCustomerName: TStringField;
    cds_InvoiceGroupAgentname: TStringField;
    cds_InvoiceGroupST_AddressName: TStringField;
    cds_InvoiceGroupST_CityName: TStringField;
    cds_InvoiceGroupCarrierName: TStringField;
    cds_InvoiceGroupETD: TSQLTimeStampField;
    cds_InvoiceGroupETA: TSQLTimeStampField;
    cds_InvoiceGroupPaymentText: TMemoField;
    cds_InvoiceGroupDeliveryTerm: TStringField;
    cds_InvoiceGroupPaymentDescription: TStringField;
    cds_InvoiceGroupCurrencyName: TStringField;
    cds_InvoiceGroupSearchName: TStringField;
    cds_InvoiceGroupSUM_FreigthCost: TFloatField;
    cds_InvoiceGroupTotal_Product_Value_No_Freight: TFloatField;
    cds_InvoiceGroupInv_Value_To_Be_Paid_2: TFloatField;
    cds_InvoiceInGroup: TFDQuery;
    cds_InvoiceInGroupInvoiceGroupNo: TIntegerField;
    cds_InvoiceInGroupInternalInvoiceNo: TIntegerField;
    cdsBookingData: TFDQuery;
    cdsBookingDataBOOKING_ID: TStringField;
    cdsBookingDataSUPP_REFERENCE: TStringField;
    cdsBookingDataSHIPPER: TStringField;
    cdsBookingDataREADYDATE: TStringField;
    cdsBookingDataVESSEL: TStringField;
    cdsBookingDataETD: TSQLTimeStampField;
    cdsBookingDataETA: TSQLTimeStampField;
    cdsBookingDataFREIGHTCOST: TFloatField;
    cdsBookingDataFREIGHT_UNIT: TStringField;
    cdsBookingDataFREIGHT_CURRENCY: TStringField;
    cds_InvDtl_Att: TFDQuery;
    cds_InvDtl_AttInternalInvoiceNo: TIntegerField;
    cds_InvDtl_AttShippingPlanNo: TIntegerField;
    cds_InvDtl_AttInvoiceDetailNo: TIntegerField;
    cds_InvDtl_AttTypeOfRow: TIntegerField;
    cds_InvDtl_AttLoadNo: TIntegerField;
    cds_InvDtl_AttLoadID: TStringField;
    cds_InvDtl_AttOrderLineNo: TIntegerField;
    cds_InvDtl_AttReference: TStringField;
    cds_InvDtl_AttProductDescription: TStringField;
    cds_InvDtl_AttProductNo: TIntegerField;
    cds_InvDtl_AttLengthDescription: TStringField;
    cds_InvDtl_AttProductLengthNo: TIntegerField;
    cds_InvDtl_AttPrice: TFloatField;
    cds_InvDtl_AttVolumeUnit: TStringField;
    cds_InvDtl_AttPriceUnit: TStringField;
    cds_InvDtl_AttProductValue: TFloatField;
    cds_InvDtl_AttVolume_OrderUnit: TFloatField;
    cds_InvDtl_AttActualThicknessMM: TFloatField;
    cds_InvDtl_AttActualWidthMM: TFloatField;
    cds_InvDtl_AttNominalThicknessMM: TFloatField;
    cds_InvDtl_AttNominalWidthMM: TFloatField;
    cds_InvDtl_AttNominalLengthMM: TFloatField;
    cds_InvDtl_AttNominalThicknessINCH: TFloatField;
    cds_InvDtl_AttNominalWidthINCH: TFloatField;
    cds_InvDtl_AttActualNetM3: TFloatField;
    cds_InvDtl_AttNominalM3: TFloatField;
    cds_InvDtl_AttLinealMeter: TFloatField;
    cds_InvDtl_AttNoOfPieces: TIntegerField;
    cds_InvDtl_AttCreatedUser: TIntegerField;
    cds_InvDtl_AttModifiedUser: TIntegerField;
    cds_InvDtl_AttDateCreated: TSQLTimeStampField;
    cds_InvDtl_AttCustShipPlanDetailObjectNo: TIntegerField;
    cds_InvDtl_AttNoOfPkgs: TIntegerField;
    cds_InvDtl_AttOL_Reference: TStringField;
    cds_InvDtl_AttFreightCostCurr: TBCDField;
    cds_InvDtl_AttProductValueWOFreight: TFloatField;
    cds_InvDtl_AttVatValue: TFloatField;
    cds_InvDtl_AttintNM3: TFloatField;
    cds_InvDtl_AttArticleNo: TIntegerField;
    cds_Att_Ext_ServicesII: TFDQuery;
    cds_Att_Ext_ServicesIIInternalInvoiceNo: TIntegerField;
    cds_Att_Ext_ServicesIIShippingPlanNo: TIntegerField;
    cds_Att_Ext_ServicesIISequensNo: TIntegerField;
    cds_Att_Ext_ServicesIIDescription: TStringField;
    cds_Att_Ext_ServicesIISupplier_InvoiceNo: TStringField;
    cds_Att_Ext_ServicesIISupplier_InvoiceDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIICurrencyNo: TIntegerField;
    cds_Att_Ext_ServicesIISupplierNo: TIntegerField;
    cds_Att_Ext_ServicesIINote: TMemoField;
    cds_Att_Ext_ServicesIICreatedDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIICreatedUser: TIntegerField;
    cds_Att_Ext_ServicesIIModifiedDate: TSQLTimeStampField;
    cds_Att_Ext_ServicesIIModifiedUser: TIntegerField;
    cds_Att_Ext_ServicesIIQuick_InvoiceNo: TIntegerField;
    cdsInvoiceHead_II: TFDQuery;
    cdsInvoiceHead_IIInternalInvoiceNo: TIntegerField;
    cdsInvoiceHead_IIInvoiceType: TIntegerField;
    cdsInvoiceHead_IIInvoiceDate: TSQLTimeStampField;
    cdsInvoiceHead_IISupplierNo: TIntegerField;
    cdsInvoiceHead_IICustomerNo: TIntegerField;
    cdsInvoiceHead_IIAgentNo: TIntegerField;
    cdsInvoiceHead_IIAgentCommission: TFloatField;
    cdsInvoiceHead_IISendInvoiceToAgent: TIntegerField;
    cdsInvoiceHead_IIPaymentTermsNo: TIntegerField;
    cdsInvoiceHead_IICommissionPaidByCustomer: TIntegerField;
    cdsInvoiceHead_IIDeliveryTermsNo: TIntegerField;
    cdsInvoiceHead_IIDestinationNo: TIntegerField;
    cdsInvoiceHead_IIStatus: TIntegerField;
    cdsInvoiceHead_IINote: TMemoField;
    cdsInvoiceHead_IIInvoiceText: TMemoField;
    cdsInvoiceHead_IIPaymentText: TMemoField;
    cdsInvoiceHead_IICurrencyNo: TIntegerField;
    cdsInvoiceHead_IIIncome_Account: TStringField;
    cdsInvoiceHead_IICustomerRecivablesAccount: TStringField;
    cdsInvoiceHead_IIVAT_OnInvoice: TSmallintField;
    cdsInvoiceHead_IIClientBillingAddressNo: TIntegerField;
    cdsInvoiceHead_IIAddressName: TStringField;
    cdsInvoiceHead_IIAddressLine1: TStringField;
    cdsInvoiceHead_IIAddressLine2: TStringField;
    cdsInvoiceHead_IIAddressLine3: TStringField;
    cdsInvoiceHead_IIAddressLine4: TStringField;
    cdsInvoiceHead_IIStateOrProvince: TStringField;
    cdsInvoiceHead_IIPostalCode: TStringField;
    cdsInvoiceHead_IICityName: TStringField;
    cdsInvoiceHead_IICountryName: TStringField;
    cdsInvoiceHead_IICreatedUser: TIntegerField;
    cdsInvoiceHead_IIModifiedUser: TIntegerField;
    cdsInvoiceHead_IIDateCreated: TSQLTimeStampField;
    cdsInvoiceHead_IIAgentName: TStringField;
    cdsInvoiceHead_IICustomerName: TStringField;
    cdsInvoiceHead_IIDeliveryTerm: TStringField;
    cdsInvoiceHead_IIPaymentDescription: TStringField;
    cdsInvoiceHead_IILanguageCode: TIntegerField;
    cdsInvoiceHead_IIDestination: TStringField;
    cdsInvoiceHead_IIFreightInDiscount: TIntegerField;
    cdsInvoiceHead_IIFreightInCommission: TIntegerField;
    cdsInvoiceHead_IIDiscount1: TFloatField;
    cdsInvoiceHead_IICurrencyName: TStringField;
    cdsInvoiceHead_IIST_AddressName: TStringField;
    cdsInvoiceHead_IIST_AddressLine1: TStringField;
    cdsInvoiceHead_IIST_AddressLine2: TStringField;
    cdsInvoiceHead_IIST_AddressLine3: TStringField;
    cdsInvoiceHead_IIST_AddressLine4: TStringField;
    cdsInvoiceHead_IIST_StateOrProvince: TStringField;
    cdsInvoiceHead_IIST_PostalCode: TStringField;
    cdsInvoiceHead_IIST_CityName: TStringField;
    cdsInvoiceHead_IIST_CountryName: TStringField;
    cdsInvoiceHead_IIAGENT_ADDRESS_NAME: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_PROVINCE: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_POSTALCODE: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_CITY: TStringField;
    cdsInvoiceHead_IIAGENT_SHIPTO_COUNTRY: TStringField;
    cdsInvoiceHead_IISearchName: TStringField;
    cdsInvoiceHead_IITot_Inv_Inc_Freight_Extras: TFloatField;
    cdsInvoiceHead_IISUM_FreigthCost: TFloatField;
    cdsInvoiceHead_IITotal_Product_Value_No_Freight: TFloatField;
    cdsInvoiceHead_IIDiscount: TFloatField;
    cdsInvoiceHead_IICommission: TFloatField;
    cdsInvoiceHead_IICommission_and_Discount: TFloatField;
    cdsInvoiceHead_IIInv_Value_Deduct_Com_Dis: TFloatField;
    cdsInvoiceHead_IIVAT_Value: TFloatField;
    cdsInvoiceHead_IIInv_Value_To_Be_Paid: TFloatField;
    cdsInvoiceHead_IIDebit_Credit: TIntegerField;
    cdsInvoiceHead_IIInv_Value_After_Deduct_DIS_COMM: TFloatField;
    cdsInvoiceHead_IIVAT: TStringField;
    cdsInvoiceHead_IIInv_Value_To_Be_Paid_2: TFloatField;
    cdsInvoiceHead_IIQuickInvoice: TIntegerField;
    cdsInvoiceHead_IIStickyNote: TStringField;
    cdsInvoiceHead_IISalesOrgNo: TStringField;
    cdsInvoiceHead_IIOCEANFREIGHTSEKAM3: TBCDField;
    cdsInvoiceHead_IITotalAM3: TBCDField;
    cdsInvoiceHead_IITotalVolumeUnit: TBCDField;
    cdsInvoiceHead_IITrading: TIntegerField;
    cdsInvoiceHead_IIResponsibleSeller: TIntegerField;
    cdsInvoiceHead_IIDestinationText: TStringField;
    cdsInvoiceHead_IIIncludeFreightCostInPrice: TIntegerField;
    cdsInvoiceHead_IISpecialMoms: TIntegerField;
    cdsInvoiceHead_IIAccountType: TIntegerField;
    cdsInvoiceHead_IIInvoiced: TIntegerField;
    cds_PIP: TFDQuery;
    cds_PIPPIPNO: TIntegerField;
    cds_PIPPIPNAME: TStringField;
    cds_LoadPackagesII: TFDQuery;
    cds_LoadPackagesIILoadNo: TIntegerField;
    cds_LoadPackagesIIShippingPlanNo: TIntegerField;
    cds_LoadPackagesIIPRODUCT: TStringField;
    cds_LoadPackagesIILoadDetailNo: TIntegerField;
    cds_LoadPackagesIIPACKAGENO: TIntegerField;
    cds_LoadPackagesIINoOfPackages: TIntegerField;
    cds_LoadPackagesIIPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesIISupplierCode: TStringField;
    cds_LoadPackagesIIPackageOK: TIntegerField;
    cds_LoadPackagesIIProblemPackageLog: TStringField;
    cds_LoadPackagesIICreatedUser: TIntegerField;
    cds_LoadPackagesIIModifiedUser: TIntegerField;
    cds_LoadPackagesIIDateCreated: TSQLTimeStampField;
    cds_LoadPackagesIIM3_NET: TFloatField;
    cds_LoadPackagesIIPCS: TIntegerField;
    cds_LoadPackagesIIM3_NOM: TFloatField;
    cds_LoadPackagesIIMFBM: TFloatField;
    cds_LoadPackagesIIKVM: TFloatField;
    cds_LoadPackagesIILOPM: TFloatField;
    cds_LoadPackagesIIProductNo: TIntegerField;
    cds_LoadPackagesIIDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesIIPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesIINoOfLengths: TIntegerField;
    cds_LoadPackagesIIProductLengthNo: TIntegerField;
    cds_LoadPackagesIIALMM: TFloatField;
    cds_LoadPackagesIIActualThicknessMM: TFloatField;
    cds_LoadPackagesIIActualWidthMM: TFloatField;
    cds_LoadPackagesIISurfacingNo: TIntegerField;
    cds_LoadPackagesIISpeciesNo: TIntegerField;
    cds_LoadPackagesIIMainGradeNo: TIntegerField;
    cds_LoadPackagesIIOverrideMatch: TIntegerField;
    cds_LoadPackagesIILIPNo: TIntegerField;
    cds_LoadPackagesIIPkg_State: TIntegerField;
    cds_LoadPackagesIIPkg_Function: TIntegerField;
    cds_LoadPackagesIIChanged: TIntegerField;
    cds_LoadPackagesIIDefsspno: TIntegerField;
    cds_LoadPackagesIIOverrideRL: TIntegerField;
    sq_GetPkgType_Invoice: TFDQuery;
    sq_GetPkgType_InvoicePcs: TIntegerField;
    sq_GetPkgType_InvoiceAM3: TFMTBCDField;
    sq_GetPkgType_InvoiceNM3: TFMTBCDField;
    sq_GetPkgType_InvoiceMFBM: TFMTBCDField;
    sq_GetPkgType_InvoiceAM2AW: TFMTBCDField;
    sq_GetPkgType_InvoiceAM2CW: TFMTBCDField;
    sq_GetPkgType_InvoiceAM1: TFMTBCDField;
    sq_GetPkgType_InvoiceAdNl: TFMTBCDField;
    sq_GetPkgType_InvoiceNdAl: TFMTBCDField;
    sq_GetPkgType_InvoiceNM1: TFMTBCDField;
    sq_GetPkgType_InvoiceOrderVol: TFMTBCDField;
    sq_GetPkgType_InvoicePriceVol: TFMTBCDField;
    sq_PkgType_Invoice: TFDQuery;
    cds_LoadPackagesIIILoadNo: TIntegerField;
    cds_LoadPackagesIIIShippingPlanNo: TIntegerField;
    cds_LoadPackagesIIIPRODUCT: TStringField;
    cds_LoadPackagesIIILoadDetailNo: TIntegerField;
    cds_LoadPackagesIIIPACKAGENO: TIntegerField;
    cds_LoadPackagesIIINoOfPackages: TIntegerField;
    cds_LoadPackagesIIIPACKAGETYPENO: TIntegerField;
    cds_LoadPackagesIIISupplierCode: TStringField;
    cds_LoadPackagesIIIPackageOK: TIntegerField;
    cds_LoadPackagesIIIProblemPackageLog: TStringField;
    cds_LoadPackagesIIICreatedUser: TSmallintField;
    cds_LoadPackagesIIIModifiedUser: TSmallintField;
    cds_LoadPackagesIIIDateCreated: TSQLTimeStampField;
    cds_LoadPackagesIIIM3_NET: TFloatField;
    cds_LoadPackagesIIIPCS: TIntegerField;
    cds_LoadPackagesIIIM3_NOM: TFloatField;
    cds_LoadPackagesIIIMFBM: TFloatField;
    cds_LoadPackagesIIIKVM: TFloatField;
    cds_LoadPackagesIIILOPM: TFloatField;
    cds_LoadPackagesIIIProductNo: TIntegerField;
    cds_LoadPackagesIIIDefaultCustShipObjectNo: TIntegerField;
    cds_LoadPackagesIIIPCS_PER_LENGTH: TStringField;
    cds_LoadPackagesIIINoOfLengths: TIntegerField;
    cds_LoadPackagesIIIProductLengthNo: TIntegerField;
    cds_LoadPackagesIIIALMM: TFloatField;
    cds_LoadPackagesIIIActualThicknessMM: TFloatField;
    cds_LoadPackagesIIIActualWidthMM: TFloatField;
    cds_LoadPackagesIIISurfacingNo: TIntegerField;
    cds_LoadPackagesIIISpeciesNo: TIntegerField;
    cds_LoadPackagesIIIMainGradeNo: TIntegerField;
    cds_LoadPackagesIIIOverrideMatch: TIntegerField;
    cds_LoadPackagesIIILIPNo: TIntegerField;
    cds_LoadPackagesIIIPkg_State: TIntegerField;
    cds_LoadPackagesIIIPkg_Function: TIntegerField;
    cds_LoadPackagesIIIChanged: TIntegerField;
    cds_LoadPackagesIIIDefsspno: TIntegerField;
    cds_LoadPackagesIIIOverrideRL: TIntegerField;
    cds_LoadPackagesIIIPIPNo: TIntegerField;
    cds_LoadPackagesIIIInternalInvoiceNo: TIntegerField;
    cdsInvoice_Load: TFDQuery;
    cdsInvoice_LoadInternalInvoiceNo: TIntegerField;
    cdsInvoice_LoadLoadNo: TIntegerField;
    cdsInvoice_LoadShippingPlanNo: TIntegerField;
    cdsInvoice_LoadDateCreated: TSQLTimeStampField;
    cdsInvoice_LoadCreatedUser: TSmallintField;
    cdsInvoice_LoadModifiedUser: TSmallintField;
    sq_LONoInInvoice: TFDQuery;
    sq_LONoInInvoiceShippingPlanNo: TIntegerField;
    cdsInvoice_Credited: TFDQuery;
    cdsInvoice_CreditedInternalInvoiceNo: TIntegerField;
    cdsInvoice_CreditedNewInternalInvoiceNo: TIntegerField;
    cdsInvoice_CreditedDateCreated: TSQLTimeStampField;
    cdsInvoice_CreditedCreatedUser: TSmallintField;
    cdsInvoice_CreditedModifiedUser: TSmallintField;
    cds_LIP: TFDQuery;
    cds_LIPLIPNo: TIntegerField;
    cds_LIPLIPName: TStringField;
    cds_LIPPIPNo: TIntegerField;
    cds_CopyLSP: TFDQuery;
    cds_CopyLSPLoadNo: TIntegerField;
    cds_CopyLSPShippingPlanNo: TIntegerField;
    cds_CopyLSPConfirmedByReciever: TIntegerField;
    cds_CopyLSPConfirmedBySupplier: TIntegerField;
    cds_CopyLSPCreatedUser: TIntegerField;
    cds_CopyLSPModifiedUser: TIntegerField;
    cds_CopyLSPDateCreated: TSQLTimeStampField;
    cds_CopyLSPInvoiced: TIntegerField;
    cds_CopyLSPLoadingLocationNo: TIntegerField;
    cds_CopyLSPShipToInvPointNo: TIntegerField;
    cds_CopyLD: TFDQuery;
    cds_CopyLDLoadDetailNo: TIntegerField;
    cds_CopyLDLoadNo: TIntegerField;
    cds_CopyLDShippingPlanNo: TIntegerField;
    cds_CopyLDPackageNo: TIntegerField;
    cds_CopyLDNoOfPackages: TIntegerField;
    cds_CopyLDPackageTypeNo: TIntegerField;
    cds_CopyLDSupplierCode: TStringField;
    cds_CopyLDPackageOK: TIntegerField;
    cds_CopyLDProblemPackageLog: TStringField;
    cds_CopyLDCreatedUser: TIntegerField;
    cds_CopyLDModifiedUser: TIntegerField;
    cds_CopyLDDateCreated: TSQLTimeStampField;
    cds_CopyLDDefaultCustShipObjectNo: TIntegerField;
    cds_CopyLDOverrideMatch: TIntegerField;
    cds_CopyLDLIPNo: TIntegerField;
    cds_CopyLDDefsspno: TIntegerField;
    cds_CopyLDOverrideRL: TIntegerField;
    cds_CopyLDOldPackageTypeNo: TIntegerField;
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
    cds_NoOfInvoices: TFDQuery;
    cds_NoOfInvoicesFakturnr: TIntegerField;
    cds_NoOfInvoicesLO: TIntegerField;
    cds_NoOfInvoicesFakturadatum: TSQLTimeStampField;
    cds_NoOfInvoicesInternalInvoiceNo: TIntegerField;
    sq_PkgType_Inv: TFDQuery;
    sq_LoadToInvoice: TFDQuery;
    sq_LoadToInvoiceLoadNo: TIntegerField;
    cds_ExpSoftSet: TFDQuery;
    cds_ExpSoftSetFieldValue: TStringField;
    sq_GetInvNo: TFDQuery;
    sq_GetInvNoInvoiceNo: TIntegerField;
    sq_GetLODataII: TFDQuery;
    sq_GetLODataIISTATUS: TIntegerField;
    sq_GetLODataIILO: TIntegerField;
    sq_GetLODataIIORDERNUMBER: TStringField;
    sq_GetLODataIIREFERENCE: TStringField;
    sq_GetLODataIIOURREFERENCE: TStringField;
    sq_GetLODataIISALESMAN: TStringField;
    sq_GetLODataIIBOOKINGNO: TIntegerField;
    sq_GetLODataIIADDITION_AMOUNT: TFloatField;
    sq_GetLODataIIADDITION_UNITNO: TIntegerField;
    sq_GetLODataIIADDITION_DESC: TStringField;
    sq_GetLODataIISHIPPER: TStringField;
    sq_GetLODataIICARRIERNAME: TStringField;
    sq_GetLODataIIETD: TSQLTimeStampField;
    sq_GetLODataIIETA: TSQLTimeStampField;
    sq_GetLODataIITrpID: TStringField;
    sq_GetLODataIIADDITION_PRICEUNIT: TStringField;
    sq_GetInvoiceDetailDataII: TFDQuery;
    sq_GetInvoiceDetailDataIICustShipPlanDetailObjectNo: TIntegerField;
    sq_GetInvoiceDetailDataIIORDERLINENO: TIntegerField;
    sq_GetInvoiceDetailDataIIREFERENCE: TStringField;
    sq_GetInvoiceDetailDataIIPRODUCTDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataIIPRODUCTNO: TIntegerField;
    sq_GetInvoiceDetailDataIILENGTHDESCRIPTION: TStringField;
    sq_GetInvoiceDetailDataIIPRODUCTLENGTHNO: TIntegerField;
    sq_GetInvoiceDetailDataIIPRICE: TFloatField;
    sq_GetInvoiceDetailDataIIVOLUMEUNIT: TStringField;
    sq_GetInvoiceDetailDataIIPRICEUNIT: TStringField;
    sq_GetInvoiceDetailDataIIActualThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataIIActualWidthMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalThicknessMM_PG: TFloatField;
    sq_GetInvoiceDetailDataIINominalWidthMM_PG: TFloatField;
    sq_GetInvoiceDetailDataIINominalLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataIIActualLengthMM_PL: TFloatField;
    sq_GetInvoiceDetailDataIINominalThicknessMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalWidthMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalLengthMM: TFloatField;
    sq_GetInvoiceDetailDataIINominalThicknessINCH: TStringField;
    sq_GetInvoiceDetailDataIINominalWidthINCH: TStringField;
    sq_GetInvoiceDetailDataIILO: TIntegerField;
    sq_GetInvoiceDetailDataIIVOLUME_ORDERUNIT: TFMTBCDField;
    sq_GetInvoiceDetailDataIIM3ACTUAL: TFMTBCDField;
    sq_GetInvoiceDetailDataIIM3NOMINAL: TFMTBCDField;
    sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER: TFMTBCDField;
    sq_GetInvoiceDetailDataIINOOFPIECES: TIntegerField;
    sq_GetInvoiceDetailDataIINOOFPKGS: TIntegerField;
    sq_GetInvoiceDetailDataIIOL_Reference: TStringField;
    cds_AttestRow: TFDQuery;
    cds_AttestRowInternalInvoiceNo: TIntegerField;
    cds_AttestRowShippingPlanNo: TIntegerField;
    cds_AttestRowSequensNo: TIntegerField;
    cds_AttestRowinvoicedetailno: TIntegerField;
    sq_GetPaymentText: TFDQuery;
    sq_GetPaymentTextPaymentText: TMemoField;
    sq_Del_AttestRow: TFDQuery;
    sq_updInvPkgDtl: TFDQuery;
    sq_GetLoadIDII: TFDQuery;
    sq_GetLoadIDIILoadNo: TIntegerField;
    sq_GetLoadIDIILoadID: TStringField;
    sq_VolUnit: TFDQuery;
    sq_VolUnitVolumeUnit_No: TIntegerField;
    sq_VolUnitVolumeUnitName: TStringField;
    sq_PriceUnit: TFDQuery;
    sq_PriceUnitTemplateUnitNo: TIntegerField;
    sq_PriceUnitTemplateUnitName: TStringField;
    sq_DelIH: TFDQuery;
    sq_DelIHEmptyLoads: TFDQuery;
    sq_SearchLoadNo: TFDQuery;
    sq_SearchLoadNoInvoiceType: TIntegerField;
    sq_SearchLoadNoInternalInvoiceNo: TIntegerField;
    sq_GetAttestRow: TFDQuery;
    sq_GetAttestRowInternalInvoiceNo: TIntegerField;
    sq_GetAttestRowShippingPlanNo: TIntegerField;
    sq_GetAttestRowSequensNo: TIntegerField;
    sq_GetAttestRowinvoicedetailno: TIntegerField;
    sq_DeleteInvoice: TFDQuery;
    sq_InvAttested: TFDQuery;
    sq_InvAttestedSequensNo: TIntegerField;
    sq_GetInvoiceType: TFDQuery;
    sq_GetInvoiceTypeInvoiceType: TIntegerField;
    sq_Invoiced_Load: TFDQuery;
    sq_GetIntInvNo: TFDQuery;
    sq_GetIntInvNoInternalInvoiceNo: TIntegerField;
    sq_GetIntInvNoInvoiceType: TIntegerField;
    sq_CghInv_PkgNos: TFDQuery;
    sq_Delete_Confirmed_Load: TFDQuery;
    sq_CopyLSPByLoNo: TFDQuery;
    sq_CopyLSPByLoNoLoadNo: TIntegerField;
    sq_CopyLSPByLoNoShippingPlanNo: TIntegerField;
    sq_CopyLSPByLoNoConfirmedByReciever: TIntegerField;
    sq_CopyLSPByLoNoConfirmedBySupplier: TIntegerField;
    sq_CopyLSPByLoNoCreatedUser: TIntegerField;
    sq_CopyLSPByLoNoModifiedUser: TIntegerField;
    sq_CopyLSPByLoNoDateCreated: TSQLTimeStampField;
    sq_CopyLSPByLoNoInvoiced: TIntegerField;
    sq_CopyLSPByLoNoLoadingLocationNo: TIntegerField;
    sq_CopyLSPByLoNoShipToInvPointNo: TIntegerField;
    sq_GetNextLDNo: TFDQuery;
    sq_GetNextLDNoNextLDNo: TIntegerField;
    sq_SearchLONo: TFDQuery;
    sq_SearchLONoInternalInvoiceNo: TIntegerField;
    sq_GetInvoicedLods: TFDQuery;
    sq_GetInvoicedLodsLoadNo: TIntegerField;
    sq_GetInvoicedLodsShippingPlanNo: TIntegerField;
    sq_GetLoadID: TFDQuery;
    sq_GetLoadIDLoadNo: TIntegerField;
    sq_GetLoadIDLoadID: TStringField;
    sq_Ins_AttestRow: TFDQuery;
    sq_CheckLoadNo: TFDQuery;
    sq_CheckLoadNoLoadNo: TIntegerField;
    sq_CreditInv: TFDQuery;
    sq_CreditInvInternalInvoiceNo: TIntegerField;
    sq_CreditInvCustomerNo: TIntegerField;
    sq_GetInvTexts: TFDQuery;
    sq_GetInvTextsDocText: TMemoField;
    sq_GetClientInvTexts: TFDQuery;
    sq_GetClientInvTextsDocText: TMemoField;
    sq_DeletePkgTypeLoad: TFDQuery;
    sq_RemoveFrom_InvLoad: TFDQuery;
    sq_DelPkgTypeByIntInv: TFDQuery;
    sq_KortSkeppFS: TFDQuery;
    sq_AnyLoadsToInvoice: TFDQuery;
    sq_GetFreightCost: TFDQuery;
    sq_GetFreightCostShippingPlanNo: TIntegerField;
    sq_GetFreightCostBookingNo: TIntegerField;
    sq_GetFreightCostFreightCost: TFloatField;
    sq_GetFreightCostFreightCostVolUnit: TIntegerField;
    sq_GetFreightCostFreightCostCurrency: TIntegerField;
    sq_GetFreightCostTemplateUnitName: TStringField;
    sp_RemPkgFromLoad: TFDStoredProc;
    sp_vida_Populate_SamFaktura: TFDStoredProc;
    sp_GenSoftSet700790: TFDStoredProc;
    sp_GenSoftSet449: TFDStoredProc;
    sp_GetNextProformaInvNo: TFDStoredProc;
    cdsInvoiceHeadSR: TStringField;
    cdsInvoiceListQuickInvoice: TIntegerField;
    cdsInvoiceListINV_DATE: TSQLTimeStampField;
    cdsInvoiceListCUSTOMER: TStringField;
    cdsInvoiceListINVOICE_NO: TIntegerField;
    cdsInvoiceListINVOICE_TYPE: TStringField;
    cdsInvoiceListINVOICE_KONTO: TStringField;
    cdsInvoiceListKURS: TFloatField;
    cdsInvoiceListCURRENCY: TStringField;
    cdsInvoiceListAGENT: TStringField;
    cdsInvoiceListTRADING: TIntegerField;
    cdsInvoiceListFrsljOrgNr: TStringField;
    cdsInvoiceListVECKA: TStringField;
    cdsInvoiceListLAND: TStringField;
    cdsInvoiceListFrsljReg: TStringField;
    cdsInvoiceListSljGrupp: TStringField;
    cdsInvoiceListCustomerNo: TIntegerField;
    ds_Props: TDataSource;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PropsMarknad: TStringField;
    cds_PropsKund: TStringField;
    cds_PropsSR: TStringField;
    cds_PropsSaljgrupp: TStringField;
    cdsInvoiceListInvoiceType: TIntegerField;
    cdsInvoiceListLO: TIntegerField;
    cds_IH_SpecLoadPIPName: TStringField;
    cds_IH_SpecLoadLIPName: TStringField;
    cdsInvoiceDetailTotalInvoice: TAggregateField;
    cdsInvoiceDetailArticleName: TStringField;
    cdsInvoiceHeadMoms: TIntegerField;
    cds_KontoLogik: TFDQuery;
    cds_KontoLogikSalesmangroupNo: TIntegerField;
    cds_KontoLogikSalesregionNo: TIntegerField;
    cds_KontoLogikCustomerCountryNo: TIntegerField;
    cds_KontoLogikTrading: TIntegerField;
    cds_KontoLogikPO_CountryNo: TIntegerField;
    cds_KontoLogikVarugruppNo: TIntegerField;
    cds_KontoLogikForsaljningsKonto: TStringField;
    cds_KontoLogikFraktKonto: TStringField;
    cds_KontoLogikVatCode: TStringField;
    cds_KontoLogikMomsKonto: TStringField;
    ds_KontoLogik: TDataSource;
    cdsInvoiceDetailKonto: TStringField;
    cdsInvoiceDetailVatCode: TIntegerField;
    cdsInvoiceDetailmoms_konto: TStringField;
    FD_GetSalesManGroupNo: TFDQuery;
    cdsInvoiceHeadResKontraSerie: TStringField;
    cdsInvoiceHeadKundResKontra: TStringField;
    cdsInvoiceHeadSalesGroupNo: TIntegerField;
    cdsInvoiceHeadCountryNo: TIntegerField;
    amt_Credit: TFDMemTable;
    amt_CreditLONo: TIntegerField;
    amt_CreditIntInvNo: TIntegerField;
    sq_RemInvLoadII: TFDQuery;
    mtImport: TkbmMemTable;
    QImport2ASCII2: TQImport3ASCII;
    mtImportPaketnr: TIntegerField;
    mtImportStyck: TIntegerField;
    mtImportMottaget: TStringField;
    mtImportKlarTillProduktion: TStringField;
    mtImportProduktionsDatum: TStringField;
    mtImportKlarForLeverans: TStringField;
    mtImportUtlevererat: TStringField;
    mtImportUtlevereringsJournal: TStringField;
    cdsInvoiceListKvantitet: TFloatField;
    cdsInvoiceListAM3: TFloatField;
    cdsInvoiceListNM3_Int: TFloatField;
    cdsInvoiceListNM3_Ext: TFloatField;
    cdsInvoiceListPaket: TIntegerField;
    cdsInvoiceListmomsvarde: TFloatField;
    cdsInvoiceListProduktvarde: TFloatField;
    cdsInvoiceListProduktVardeSEK: TFloatField;
    cdsInvoiceListProduktvardeUtanFrakt: TFloatField;
    cdsInvoiceListProduktVardeUtanFraktSEK: TFloatField;
    cdsInvoiceListLevORT: TStringField;
    cdsInvoiceListErReferens: TStringField;
    cdsInvoiceListOrdernr: TStringField;
    sq_GetInvoiceDetailDataArticleNo: TIntegerField;
    sq_GetInvoiceDetailDataIIintNM3: TFloatField;
    sq_GetInvoiceDetailDataIIArticleNo: TIntegerField;
    cdsInvoiceDetailAttSekPerAM3: TBCDField;
    cdsInvoiceHeadDueDate: TSQLTimeStampField;
    sq_GetInvoiceHeadDataNoOfDaysDiscount2: TIntegerField;
    cdsInvoiceListDueDate: TSQLTimeStampField;
    sq_GetInvoiceHeadDataSetDueDateBlank: TSmallintField;
    sq_GetInvoiceHeadDataFreeDelMonth: TSmallintField;
    cdsInvoiceHeadBLDueDate: TIntegerField;
    cdsInvoiceHeadFreeDelMonth: TIntegerField;
    cdsInvoiceListInternalInvoiceNo: TIntegerField;
    cdsInvoiceListAgentNo: TIntegerField;
    cds_PurchaseInvNoPrefix: TStringField;
    sq_StoreTransferFile: TFDQuery;
    sq_TransferFiles: TFDQuery;
    sq_TransferFilesFileName: TStringField;
    sq_TransferFilesTransferType: TIntegerField;
    sq_TransferFilesDateCreated: TSQLTimeStampField;
    sq_TransferFilesCreatedUser: TIntegerField;
    sq_TransferFilesComplete: TIntegerField;
    sq_TransferFilesSendDate: TSQLTimeStampField;
    mtImportPrefix: TStringField;
    mtImportRecordType: TIntegerField;
    sq_PackageStatusHTF: TFDQuery;
    sq_PackageStatusHTFRecordType: TIntegerField;
    sq_PackageStatusHTFPrefix: TStringField;
    sq_PackageStatusHTFPaketnr: TIntegerField;
    sq_PackageStatusHTFStyck: TIntegerField;
    sq_PackageStatusHTFStatus: TIntegerField;
    sq_PackageStatusHTFStatusDatum: TSQLTimeStampField;
    sq_PackageStatusHTFOriginalStyck: TIntegerField;
    sq_PackageStatusHTFCreatedUser: TIntegerField;
    sq_PackageStatusHTFDateCreated: TSQLTimeStampField;
    sq_PackageStatusHTFComplete: TIntegerField;
    sq_TransferFilesLONo: TIntegerField;
    sq_PackageStatusHTFFileName: TStringField;
    sq_PackageStatusHTFByFileName: TFDQuery;
    sq_PackageStatusHTFByFileNameRecordType: TIntegerField;
    sq_PackageStatusHTFByFileNamePrefix: TStringField;
    sq_PackageStatusHTFByFileNamePaketnr: TIntegerField;
    sq_PackageStatusHTFByFileNameStyck: TIntegerField;
    sq_PackageStatusHTFByFileNameStatus: TIntegerField;
    sq_PackageStatusHTFByFileNameStatusDatum: TSQLTimeStampField;
    sq_PackageStatusHTFByFileNameOriginalStyck: TIntegerField;
    sq_PackageStatusHTFByFileNameCreatedUser: TIntegerField;
    sq_PackageStatusHTFByFileNameDateCreated: TSQLTimeStampField;
    sq_PackageStatusHTFByFileNameComplete: TIntegerField;
    sq_PackageStatusHTFByFileNameFileName: TStringField;
    sq_PackageStatusHTFLONo: TIntegerField;
    sq_PackageStatusHTFByFileNameLONo: TIntegerField;
    sq_TransferFilesHTF_FS: TStringField;
    sq_PackageStatusHTFHTF_FS: TStringField;
    sq_HTFPkgStatus: TFDQuery;
    sq_HTFPkgStatusRecordType: TIntegerField;
    sq_HTFPkgStatusPrefix: TStringField;
    sq_HTFPkgStatusPaketnr: TIntegerField;
    sq_HTFPkgStatusStyck: TIntegerField;
    sq_HTFPkgStatusStatus: TIntegerField;
    sq_HTFPkgStatusStatusDatum: TSQLTimeStampField;
    sq_HTFPkgStatusOriginalStyck: TIntegerField;
    sq_HTFPkgStatusCreatedUser: TIntegerField;
    sq_HTFPkgStatusDateCreated: TSQLTimeStampField;
    sq_HTFPkgStatusComplete: TIntegerField;
    sq_HTFPkgStatusFileName: TStringField;
    sq_HTFPkgStatusLONo: TIntegerField;
    sq_HTFPkgStatusHTF_FS: TStringField;
    sq_HTFPkgStatusTotalNoOfPieces: TIntegerField;
    sq_HTFPkgStatusBarCodeID: TIntegerField;
    sq_HTFPkgStatusGradestamp: TIntegerField;
    sq_HTFPkgStatusProductNo: TIntegerField;
    sq_HTFPkgStatusSurfacingNo: TIntegerField;
    sq_HTFPkgStatusNominalThicknessMM: TFloatField;
    sq_PackageStatusHTFPackageTypeNo: TIntegerField;
    sq_PackageStatusHTFLoadNo: TIntegerField;
    sq_HTFPkgStatusPackageTypeNo: TIntegerField;
    sq_HTFPkgStatusLoadNo: TIntegerField;
    sq_TransferFilesLoadNo: TIntegerField;
    sq_LD: TFDQuery;
    sq_LDLoadNo: TIntegerField;
    sq_LDShippingPlanNo: TIntegerField;
    sq_LDLoadDetailNo: TIntegerField;
    sq_LDPackageNo: TIntegerField;
    sq_LDNoOfPackages: TIntegerField;
    sq_LDPackageTypeNo: TIntegerField;
    sq_LDSupplierCode: TStringField;
    sq_LDPackageOK: TIntegerField;
    sq_LDProblemPackageLog: TStringField;
    sq_LDCreatedUser: TIntegerField;
    sq_LDModifiedUser: TIntegerField;
    sq_LDDateCreated: TSQLTimeStampField;
    sq_LDDefaultCustShipObjectNo: TIntegerField;
    sq_LDOverrideMatch: TIntegerField;
    sq_LDLIPNo: TIntegerField;
    sq_LDDefsspno: TIntegerField;
    sq_LDOverrideRL: TIntegerField;
    sq_PackageStatusHTFByFileNameHTF_FS: TStringField;
    sq_PackageStatusHTFByFileNamePackageTypeNo: TIntegerField;
    sq_PackageStatusHTFByFileNameLoadNo: TIntegerField;
    sq_LDMax: TFDQuery;
    sq_LDMaxMaxLoadDetailNo: TIntegerField;
    sq_GetLDLIPNo: TFDQuery;
    sq_GetLDLIPNoLIPNo: TIntegerField;
    sq_RemovePkgs: TFDQuery;
    sq_GetLONoByLoadNo: TFDQuery;
    sq_GetLONoByLoadNoLONo: TIntegerField;
    cds_InvDtl_AttAttSekPerAM3: TBCDField;
    sq_UpdateTransferFile: TFDQuery;
    sp_GenSoftSet449SP: TFDStoredProc;
    sq_TransferFilesTillHTF: TFDQuery;
    sq_TransferFilesTillHTFFileName: TStringField;
    sq_TransferFilesTillHTFTransferType: TIntegerField;
    sq_TransferFilesTillHTFDateCreated: TSQLTimeStampField;
    sq_TransferFilesTillHTFCreatedUser: TIntegerField;
    sq_TransferFilesTillHTFComplete: TIntegerField;
    sq_TransferFilesTillHTFSendDate: TSQLTimeStampField;
    sq_TransferFilesTillHTFLONo: TIntegerField;
    sq_TransferFilesTillHTFHTF_FS: TStringField;
    sq_TransferFilesTillHTFLoadNo: TIntegerField;
    sq_TransferFilesTillHTFInOut: TIntegerField;
    mtImportProduktKod: TStringField;
    mtImportPEFC: TIntegerField;
    mtImportALMM: TFloatField;
    mtImport550: TkbmMemTable;
    mtImport550RecordType: TIntegerField;
    mtImport550Paketnr: TIntegerField;
    mtImport550Prefix: TStringField;
    mtImport550Styck: TIntegerField;
    mtImport550Mottaget: TStringField;
    mtImport550KlarTillProduktion: TStringField;
    mtImport550ProduktionsDatum: TStringField;
    mtImport550KlarForLeverans: TStringField;
    mtImport550Utlevererat: TStringField;
    mtImport550UtlevereringsJournal: TStringField;
    mtImport550ProduktKod: TStringField;
    mtImport550PEFC: TIntegerField;
    mtImport550ALMM: TFloatField;
    QImport2ASCII550: TQImport3ASCII;
    sq_PackageStatusHTFProductCode: TStringField;
    sq_PackageStatusHTFALMM: TFloatField;
    sq_PackageStatusHTFPEFC: TIntegerField;
    sq_PackageStatusHTFProductNo: TIntegerField;
    sq_PackageStatusHTFDateAndTime: TStringField;
    cdsInvTrfLogg: TFDQuery;
    cdsInvTrfLoggInvoiceNo: TIntegerField;
    cdsInvTrfLoggInternalInvoiceNo: TIntegerField;
    cdsInvTrfLoggObject2: TStringField;
    cdsInvTrfLoggObject5: TStringField;
    cdsInvTrfLoggResKontraSerie: TStringField;
    cdsInvTrfLoggKundResKontra: TStringField;
    cdsInvTrfLoggForsaljningskonto: TStringField;
    cdsInvTrfLoggFrakt_konto: TStringField;
    cdsInvTrfLoggMoms_konto: TStringField;
    cdsInvTrfLoggRounding_Konto: TStringField;
    cdsInvTrfLoggProvision_Konto: TStringField;
    cdsInvTrfLoggKassaRabattKonto: TStringField;
    cdsInvTrfLoggAgentNo: TIntegerField;
    cdsInvTrfLoggRegion: TStringField;
    cdsInvTrfLoggCurrency: TStringField;
    cdsInvTrfLoggCountryNo: TIntegerField;
    cdsInvTrfLoggSkatteUpplag: TIntegerField;
    cdsInvTrfLoggInvoiceTotal_SEK: TBCDField;
    cdsInvTrfLoggForsaljningsKonto_SEK: TBCDField;
    cdsInvTrfLoggmoms_SEK: TBCDField;
    cdsInvTrfLoggmoms_For: TBCDField;
    cdsInvTrfLoggRounding_SEK: TBCDField;
    cdsInvTrfLoggTotalInvoiceValueNoRounding_SEK: TBCDField;
    cdsInvTrfLoggProvision_SEK: TBCDField;
    cdsInvTrfLoggKassaRabatt_SEK: TBCDField;
    cdsInvTrfLoggInvoiceTotal_For: TBCDField;
    cdsInvTrfLoggForsaljningsKonto_For: TBCDField;
    cdsInvTrfLoggRounding_For: TBCDField;
    cdsInvTrfLoggProvision_For: TBCDField;
    cdsInvTrfLoggTotalInvoiceValueNoRounding_For: TBCDField;
    cdsInvTrfLoggKassaRabatt_For: TBCDField;
    cdsInvTrfLoggfrakt_for: TBCDField;
    cdsInvTrfLoggInvoiceDate: TSQLTimeStampField;
    cdsInvTrfLoggVatcode: TIntegerField;
    cdsInvTrfLoggInvoiceType: TIntegerField;
    cdsInvTrfLoggEventDate: TSQLTimeStampField;
    cdsInvTrfLoggUserId: TIntegerField;
    cdsInvTrfLoggXorID_KundNamn: TStringField;
    cdsInvTrfLoggmoms: TBCDField;
    cdsInvTrfLoggVaruGrupp: TIntegerField;
    cdsInvTrfLoggPO_Country: TIntegerField;
    cdsInvTrfLoggTrading: TIntegerField;
    sq_InvTotals: TFDQuery;
    sq_InvTotalsidXOR: TStringField;
    sq_InvTotalsKassaRabatt_For: TBCDField;
    sq_InvTotalsKassaRabatt_SEK: TBCDField;
    sq_InvTotalsPaymentTermsNo: TIntegerField;
    sq_InvTotalsNoOfDaysDiscount1: TIntegerField;
    sq_InvTotalsInvoiceDate: TSQLTimeStampField;
    sq_InvTotalsDueDate: TSQLTimeStampField;
    sq_InvTotalsRegion: TStringField;
    sq_InvTotalsCountryNo: TIntegerField;
    sq_InvTotalsInternalInvoiceNo: TIntegerField;
    sq_InvTotalsInvoiceTotal: TBCDField;
    sq_InvTotalsXRATE: TFloatField;
    sq_InvTotalsInvoiceTotal_SEK: TBCDField;
    sq_InvTotalsFRAKT_CURR: TBCDField;
    sq_InvTotalsFRAKT_SEK: TBCDField;
    sq_InvTotalsVAT_FOR: TBCDField;
    sq_InvTotalsVAT_SEK: TBCDField;
    sq_InvTotalsSkatteupplag: TSmallintField;
    sq_InvTotalsCurr: TStringField;
    sq_InvTotalsNM3: TBCDField;
    sq_InvTotalsO5: TStringField;
    sq_InvTotalsAgentNo: TIntegerField;
    sq_InvTotalsCommission_for: TBCDField;
    sq_InvTotalsCommission_SEK: TBCDField;
    sq_InvTotalsTotalInvoiceValueNoRounding_For: TBCDField;
    sq_InvTotalsTotalInvoiceValueNoRounding_SEK: TBCDField;
    sq_InvTotalsCustomerName: TStringField;
    sq_InvTotalsquickInvoice: TIntegerField;
    sq_InvTotalsTrading: TIntegerField;
    sq_InvTotalsSalesGroupNo: TIntegerField;
    sq_InvTotalsSupplierNo: TIntegerField;
    sq_InvTotalsVaruGrupp: TIntegerField;
    sq_InvTotalsPO_CountryNo: TIntegerField;
    sq_InvTotalsinvoicetype: TIntegerField;
    sq_invoiceTrf: TFDQuery;
    sp_VIS_xp_voulogwrite: TFDStoredProc;
    sp_VIS_xp_vourowlogwrite: TFDStoredProc;
    sp_xp_ldglogwriteOLD: TFDStoredProc;
    sq_Region: TFDQuery;
    sq_RegionRegion: TStringField;
    cdsInvoiceListSHIPPER: TStringField;
    cdsInvoiceListPostit: TStringField;
    cdsInvoiceListPO_prefix: TStringField;
    dsInvoiceShipToAddress_II: TDataSource;
    cdsInvoiceShipToAddress_II: TFDQuery;
    cdsInvoiceShipToAddress_IIInternalInvoiceNo: TIntegerField;
    cdsInvoiceShipToAddress_IIShippingPlanNo: TIntegerField;
    cdsInvoiceShipToAddress_IIReference: TStringField;
    cdsInvoiceShipToAddress_IIAddressNo: TIntegerField;
    cdsInvoiceShipToAddress_IIAddressName: TStringField;
    cdsInvoiceShipToAddress_IIADDR: TStringField;
    cdsInvoiceShipToAddress_IIAddressLine1: TStringField;
    cdsInvoiceShipToAddress_IIAddressLine2: TStringField;
    cdsInvoiceShipToAddress_IIAddressLine3: TStringField;
    cdsInvoiceShipToAddress_IIAddressLine4: TStringField;
    cdsInvoiceShipToAddress_IISTATE: TStringField;
    cdsInvoiceShipToAddress_IIPOSTAL_CODE: TStringField;
    cdsInvoiceShipToAddress_IICITY: TStringField;
    cdsInvoiceShipToAddress_IICOUNTRY: TStringField;
    cdsInvoiceListSkatteupplag: TSmallintField;
    cds_Att_Ext_ServicesIIAmountAttested: TFloatField;
    cds_Att_Ext_ServicesIIAmount: TFloatField;
    cds_Att_Ext_ServicesIIActive: TIntegerField;
    cds_Att_Ext_LO: TFDQuery;
    FD_InsAttLO: TFDQuery;
    adDeleteAttExtLO: TFDQuery;
    sq_GetPOCountry: TFDQuery;
    sq_GetPOCountryCountryNo: TIntegerField;
    sq_FSKonton: TFDQuery;
    StringField1: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BCDField3: TBCDField;
    FloatField1: TFloatField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    BCDField10: TBCDField;
    SmallintField1: TSmallintField;
    StringField3: TStringField;
    BCDField11: TBCDField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    BCDField14: TBCDField;
    BCDField15: TBCDField;
    StringField5: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    sq_Del_AttestKoppling: TFDQuery;
    sp_GenSoftSet700790_SP: TFDStoredProc;
    sq_HTFPkgStatusProductCode: TStringField;
    sq_HTFPkgStatusALMM: TFloatField;
    sq_HTFPkgStatusPEFC: TIntegerField;
    sq_HTFPkgStatusDateAndTime: TStringField;
    sq_GetPackageData: TFDQuery;
    sq_GetPackageDataProductNo: TIntegerField;
    sq_GetPackageDataLIP_PkgNo: TIntegerField;
    sq_GetPackageDataPaketNr: TIntegerField;
    sq_GetPackageDataFileName: TStringField;
    sq_GetFileNameOfLoadNo: TFDQuery;
    sq_GetFileNameOfLoadNoFileName: TStringField;
    cdsInvoiceDetailNettoSEKPerNM3: TBCDField;
    cdsInvoiceDetailBruttoSEKPerNM3: TBCDField;
    sq_GetNettoPris: TFDQuery;
    sq_GetInvoiceDetailDataOrderNo: TIntegerField;
    sq_GetNettoPrisValueField: TFloatField;
    sq_GetBruttoPris: TFDQuery;
    sq_GetBruttoPrisValueField: TFloatField;
    sq_InsInvNo: TFDQuery;
    sq_CopyLoad: TFDQuery;
    sp_vis_CopyLoad: TFDStoredProc;
    sq_GetOrgInvoiceNoByCredit: TFDQuery;
    sq_GetOrgInvoiceNoByCreditInternalInvoiceNo: TIntegerField;
    FDQuery1: TFDQuery;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SQLTimeStampField3: TSQLTimeStampField;
    sq_GetInvoiceDetailDataInternalPrice: TFloatField;
    cdsInvoiceHeadDelKredit: TIntegerField;
    cdsInvoiceHeadIntInvNoToAttestAgainst: TIntegerField;
    cdsInvoiceListVarukonto: TStringField;
    cdsInvoiceListFraktkonto: TStringField;
    sq_GetArticleNo: TFDQuery;
    sq_GetArticleNoArticleNo: TIntegerField;
    sq_GetInvoiceHeadDataBillingCountryNo: TIntegerField;
    sq_GetInvoiceHeadDataSalesGroupNo: TIntegerField;
    cdsInvoiceListMomskonto: TStringField;
    cdsInvoiceListMomskod: TIntegerField;
    cdsInvoiceHeadIntraStatCountryNo: TIntegerField;
    sq_GetInvoiceHeadDataIntraStatCountryNo: TIntegerField;
    cdsInvoiceListIntraStatCountryNo: TIntegerField;
    cdsInvoiceListStatistikland: TStringField;
    cdsInvTrfLoggfrakt_SEK: TBCDField;
    cdsInvoiceListDelKredit: TIntegerField;
    sq_InvLOs: TFDQuery;
    sq_InvLOsShippingPlanNo: TIntegerField;
    sq_PkgType_InvoiceForCredit: TFDQuery;
    sq_InvTotalsProduktvardeFOR: TFloatField;
    sq_InvTotalsProduktvardeSEK: TBCDField;
    cdsInvoiceListFraktValutaSEK: TFloatField;
    sq_InvTotalsFraktKonto: TStringField;
    sp_InvTotals: TFDStoredProc;
    sp_TransformHTFPkgs: TFDStoredProc;
    cdsInvoiceListIncludeFreightCostInPrice: TIntegerField;
    cdsInvoiceDetailInclInPrice: TIntegerField;
    cdsInvoiceDetailInclInInvoiceTotal: TIntegerField;
    mt_VerLogg: TFDMemTable;
    mt_VerLoggKonto: TStringField;
    mt_VerLoggNamn: TStringField;
    mt_VerLoggValuta: TStringField;
    mt_VerLoggKurs: TFloatField;
    mt_VerLoggUtlandsBelopp: TFloatField;
    mt_VerLoggDebet: TFloatField;
    mt_VerLoggKredit: TFloatField;
    mt_VerLoggText: TStringField;
    ds_VerLogg: TDataSource;
    mt_VerLoggRadOrder: TIntegerField;
    sq_GetTotalFreigthInPrice: TFDQuery;
    sq_GetTotalFreigthInPriceFreight: TFloatField;
    sq_GetTotalAM3PerLO: TFDQuery;
    sq_GetTotalAM3PerLOAM3: TFloatField;
    sq_GetInvoiceHeadDataFreightIncluded: TIntegerField;
    sq_GetInvoiceDetailDataIIOrderNo: TIntegerField;
    sq_GetInvoiceDetailDataIIInternalPrice: TFloatField;
    cdsInvoiceListArticleName: TStringField;
    cdsInvoiceListFraktValuta: TFMTBCDField;
    cds_InvNoAGENT: TFDQuery;
    cds_InvNoAGENTInvoiceNo: TIntegerField;
    cds_InvNoAGENTInternalInvoiceNo: TIntegerField;
    cds_InvNoAGENTUserCreated: TSmallintField;
    cds_InvNoAGENTUserModified: TSmallintField;
    cds_InvNoAGENTDateCreated: TSQLTimeStampField;
    cds_InvNoAGENTPrefix: TStringField;
    cdsInvoiceHeadMultFactor: TIntegerField;
    sq_InvoiceType: TFDQuery;
    sq_InvoiceTypeInvoiceType: TIntegerField;
    sq_InsVTAInvNo: TFDQuery;
    sq_GetInvoiceHeadDataOrderType: TIntegerField;
    sq_GetInvoiceHeadDataSalesRegionNo: TIntegerField;
    sq_GetInvoiceNumber: TFDQuery;
    sq_GetInvoiceNumberInvoiceNo: TIntegerField;
    cds_LindaExport: TFDQuery;
    cds_LindaExportPackageNo: TStringField;
    cds_LindaExportNomThick: TFloatField;
    cds_LindaExportNomWidth: TFloatField;
    cds_LindaExportActThick: TFloatField;
    cds_LindaExportActWidth: TFloatField;
    cds_LindaExportMAXLENGTH: TFloatField;
    cds_LindaExportMINLENGTH: TFloatField;
    cds_LindaExportPcs: TIntegerField;
    cds_LindaExportAM3: TFloatField;
    cds_LindaExportNM3: TFMTBCDField;
    cds_LindaExportMark: TStringField;
    cds_LindaExportPEFC: TStringField;
    QExportLindaExcel: TQExport4XLS;
    QImport3XLS1: TQImport3XLS;
    QExport4ASCII1: TQExport4ASCII;
    sq_GetArticleGroupNo: TFDQuery;
    sq_GetArticleGroupNoArticleGroupNo: TIntegerField;
    sq_InsBKOInvoiceNo: TFDQuery;
    sq_GetOrgInvoiceNoByCredit_BKO: TFDQuery;
    sq_GetOrgInvoiceNoByCredit_BKOInternalInvoiceNo: TIntegerField;
    mt_VerLoggVatCode: TIntegerField;
    mt_VerLoggAvdelning: TStringField;
    mt_VerLoggVolym: TFloatField;
    sp_InvTotalsInternalInvoiceNo: TIntegerField;
    sp_InvTotalsArticleNo: TIntegerField;
    sp_InvTotalsArticleGroupNo: TIntegerField;
    sp_InvTotalsArticleLink: TIntegerField;
    sp_InvTotalsintNM3: TFloatField;
    sp_InvTotalsRadorder: TIntegerField;
    sp_InvTotalsNamn: TStringField;
    sp_InvTotalsMomsKonto: TStringField;
    sp_InvTotalsMomsKod: TIntegerField;
    sp_InvTotalsVaruKonto: TStringField;
    sp_InvTotalsProduktVardeFOR: TFloatField;
    sp_InvTotalsProduktVardeSEK: TFloatField;
    sp_InvTotalsInvoiceTotalFOR: TFloatField;
    sp_InvTotalsInvoiceTotalSEK: TFloatField;
    sp_InvTotalsFreightFOR_INCL_IN_PRICE: TFloatField;
    sp_InvTotalsFreightFOR_NOT_INCL_IN_PRICE: TFloatField;
    sp_InvTotalsFreightSEK_INCL_IN_PRICE: TFloatField;
    sp_InvTotalsFreightSEK_NOT_INCL_IN_PRICE: TFloatField;
    sp_InvTotalsVAT_FOR: TFloatField;
    sp_InvTotalsVAT_SEK: TFloatField;
    sp_InvTotalsSkatteupplag: TIntegerField;
    sp_InvTotalsCurr: TStringField;
    sp_InvTotalsO5: TStringField;
    sp_InvTotalsAgentNo: TIntegerField;
    sp_InvTotalsPaymentTermsNo: TIntegerField;
    sp_InvTotalsNoOfDaysDiscount1: TIntegerField;
    sp_InvTotalsInvoiceDate: TSQLTimeStampField;
    sp_InvTotalsDueDate: TSQLTimeStampField;
    sp_InvTotalsRegion: TStringField;
    sp_InvTotalsCountryNo: TIntegerField;
    sp_InvTotalsCustomerName: TStringField;
    sp_InvTotalsquickInvoice: TIntegerField;
    sp_InvTotalsTrading: TIntegerField;
    sp_InvTotalsSalesGroupNo: TIntegerField;
    sp_InvTotalsSupplierNo: TIntegerField;
    sp_InvTotalsinvoicetype: TIntegerField;
    sp_InvTotalscid: TStringField;
    sp_InvTotalsClientNo: TIntegerField;
    sp_InvTotalsidXOR: TStringField;
    sp_InvTotalsDebit_Credit: TIntegerField;
    sp_InvTotalsXRATE: TFloatField;
    sp_xp_ldglogwrite: TFDStoredProc;
    sp_CustomerHaveValidEAN: TFDStoredProc;
    sp_InvoiceSentAsEDI: TFDStoredProc;
    cdsInvoice_Credited_Komp: TFDQuery;
    cdsInvoice_Credited_KompInternalInvoiceNo: TIntegerField;
    cdsInvoice_Credited_KompNewInternalInvoiceNo: TIntegerField;
    cdsInvoice_Credited_KompUserCreated: TIntegerField;
    cdsInvoice_Credited_KompUserModified: TIntegerField;
    cdsInvoice_Credited_KompDateCreated: TSQLTimeStampField;
    sp_InvTotalsTotal_Product_Value_No_Freight_For: TFloatField;
    sp_InvTotalsTotal_Product_Value_No_Freight_Sek: TFloatField;
    sq_GetLODataOrderNo: TIntegerField;
    sq_InvoiceNos: TFDQuery;
    sq_InvoiceNosInvoiceNo: TIntegerField;
    cds_ExportTyp1KVALITET: TStringField;
    cds_InsertToInvoiceEDI: TFDQuery;
    sp_vis_InvoicedEDIStatus: TFDStoredProc;
    sp_vis_DeleteInvoicedEDI: TFDStoredProc;
    cdsInvoiceShipToAddressGLN: TStringField;
    cds_ClientGLNNo: TFDQuery;
    cds_ClientGLNNoPartyIdentifier1: TStringField;
    cdsInvoiceHeadCustomerGLNNo: TStringField;
    cds_ClientGLNNoClientNo: TIntegerField;
    sp_GetAvdelning: TFDStoredProc;
    sp_GetAvdelningAvdelning: TStringField;
    sp_vis_DelPrelInvoice: TFDStoredProc;
    sp_PkgLogInvoiced: TFDStoredProc;
    sq_DeleteProformaInvoice: TFDQuery;
    cdsInvoiceListAddressLine1: TStringField;
    cds_CSH_ExtraCost: TFDQuery;
    cds_CSH_ExtraCostShippingPlanNo: TIntegerField;
    cds_CSH_ExtraCostCSH_ExtraCostRowNo: TIntegerField;
    cds_CSH_ExtraCostInvoiceAdditionAmount: TFloatField;
    cds_CSH_ExtraCostInvoiceAdditionUnitNo: TIntegerField;
    cds_CSH_ExtraCostInvoiceAdditionDescription: TStringField;
    cds_CSH_ExtraCostInvoiceAdditionCurrencyNo: TIntegerField;
    cds_CSH_ExtraCostCreatedUser: TIntegerField;
    cds_CSH_ExtraCostDateCreated: TSQLTimeStampField;
    cds_CSH_ExtraCostArticleNo: TIntegerField;
    cds_CSH_ExtraCostPriceUnit: TStringField;
    sp_LdConnCtrl: TFDStoredProc;
    sp_DEL_ExportInvoiceData: TFDStoredProc;
    sp_STORE_ExportInvoiceData: TFDStoredProc;
    sp_GetKundResKontra: TFDStoredProc;
    sp_JusteraUSAFakturor: TFDStoredProc;
    sp_GetInvoiceHeadData: TFDStoredProc;
    sp_copyBookingData: TFDStoredProc;
    sq_GetNextInvoiceNo_UK: TFDQuery;
    sq_GetNextInvoiceNo_UKNEXT_INVNO: TIntegerField;
    sq_GetOrgInvoiceNoByCredit_UK: TFDQuery;
    sq_GetOrgInvoiceNoByCredit_UKInternalInvoiceNo: TIntegerField;
    sq_InsInvNo_UK: TFDQuery;
    cds_PurchaseInvNo_UK: TFDQuery;
    cds_PurchaseInvNo_UKPO_InvoiceNo: TIntegerField;
    cds_PurchaseInvNo_UKInternalInvoiceNo: TIntegerField;
    cds_PurchaseInvNo_UKUserCreated: TSmallintField;
    cds_PurchaseInvNo_UKUserModified: TSmallintField;
    cds_PurchaseInvNo_UKDateCreated: TSQLTimeStampField;
    cds_PurchaseInvNo_UKPrefix: TStringField;
    cds_PurchaseInvNo_VP: TFDQuery;
    cds_PurchaseInvNo_VPPO_InvoiceNo: TIntegerField;
    cds_PurchaseInvNo_VPInternalInvoiceNo: TIntegerField;
    cds_PurchaseInvNo_VPUserCreated: TIntegerField;
    cds_PurchaseInvNo_VPUserModified: TIntegerField;
    cds_PurchaseInvNo_VPDateCreated: TSQLTimeStampField;
    cds_PurchaseInvNo_VPPrefix: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspInvoiceShipToAddressGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure DataModuleDestroy(Sender: TObject);
    procedure dsp_LoadPackagesGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure QExport3ASCII1BeforeExportRow(Sender: TObject; Row: TQExportRow;
      var Accept: Boolean);
    procedure QExport3ASCII2BeforeExportRow(Sender: TObject; Row: TQExportRow;
      var Accept: Boolean);
    // LG    procedure clFTPSendCommand(Sender: TObject; const AText: String);
    procedure cdsInvoiceHeadAfterInsert(DataSet: TDataSet);
    procedure cdsInvoiceDetailAfterInsert(DataSet: TDataSet);
    procedure cds_IH_SpecLoadAfterInsert(DataSet: TDataSet);
    procedure cds_Att_Ext_ServicesIIAfterInsert(DataSet: TDataSet);
    procedure cds_Att_Ext_ServicesIIAfterScroll(DataSet: TDataSet);
    procedure cds_Att_Ext_ServicesIIBeforeDelete(DataSet: TDataSet);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure cdsInvoiceHeadSupplierNoChange(Sender: TField);
    procedure cdsInvoiceHeadResponsibleSellerChange(Sender: TField);
    procedure QImport2ASCII1BeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    procedure QImport2ASCII2BeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    (* LG   procedure clFTPDirectoryListing(Sender: TObject;
      AFileInfo: TclFtpFileInfo; const Source: String); *)
    procedure sq_PackageStatusHTFBeforePost(DataSet: TDataSet);
    procedure sq_LDBeforePost(DataSet: TDataSet);
    procedure QImport2ASCII550BeforePost(Sender: TObject; Row: TQImportRow;
      var Accept: Boolean);
    procedure cds_IH_SpecLoadPIPNoChange(Sender: TField);
    procedure cdsInvoiceDetailVolume_OrderUnitChange(Sender: TField);
    procedure cds_Att_Ext_LOAfterInsert(DataSet: TDataSet);
    procedure cdsInvoiceDetailInclInPriceChange(Sender: TField);
    procedure cdsInvoiceHeadBeforePost(DataSet: TDataSet);
    procedure cdsInvoiceHeadInvoiceDateChange(Sender: TField);
    procedure cdsInvoiceDetailUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure cdsInvoiceHeadUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure cdsInvoiceLOUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure cdsInvoiceShipToUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure cdsInvoiceShipToAddressUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
    procedure cds_IH_SpecLoadUpdateError(ASender: TDataSet;
      AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
      var AAction: TFDErrorAction);
  private
    { Private declarations }
    GlobalLoadDetailNo: Integer;
    lbList: TStringList;
    function  AssignPurchase_VPInvoiceNumber(const InternalInvoiceNo  : Integer): Integer;
    function  AssignPurchase_UKInvoiceNumber(const InternalInvoiceNo : Integer): Integer;
    procedure AssignUK_Sales_InvoiceNumber(const InternalInvoiceNo  : Integer);
    function  GetKundResKontra(const Object5  : String;const CountryNo  : Integer) : String ;
    function  GetAvdelning(const ClientNo: Integer;
              const KontoNr: String): String;
    procedure DeleteInvoiceEDI(const InternalInvoiceNo: Integer);
    procedure Assign_BORGSTENA_InvoiceNumber(const InternalInvoiceNo: Integer);
    procedure AssignVTAInvoiceNumber(const InternalInvoiceNo: Integer);
    function  GetInvoiceNoOfMaxKeyTable(const InvoiceSerie: String): Integer;
    procedure AssignAGENTInvoiceNumber(const InternalInvoiceNo: Integer);
    function  GetFreightCostinCDS(const InclInPrice: Integer): Double;
    function  GetAM3PerLO: Double;
    Function  GetPOCountryNoPartII(const LONo: Integer): Integer;
    procedure vis_CopyLoad(const InternalInvoiceNo, NewInternalInvoiceNo : Integer);
    procedure InsertInvoiceNo(const InvoiceNo, InternalInvoiceNo: Integer);
    Function GetPOCountryNo(const SalesShippingPlanNo: Integer): Integer;
    procedure InsertAttest(const QInvNo: Integer);
    Function GetCountryRegion(const SalesRegionNo, CountryNo: Integer): Integer;
    (* LG    Function  GetFileNameForEfterfragadLastnr(const FragarEfterLoadNo : Integer) : String ;
      procedure DownENload500FilesFromFTP(const LocalDir, FileName : String) ;
    *)
    procedure CreateLoadAndEntryTo_Load_Imp(const LONo, LoadNo: Integer);
    procedure SetHTFPackageStatus(const LocalDir: String);
    (* LG    procedure SetHTFPackageStatus550(const LocalDir : String) ; *)
    procedure UpdateHTFPackages(const FileName: String;
      const LONo, LoadNo: Integer);
    procedure UpdateHTFPackages550(const FileName: String;
      const LONo, LoadNo: Integer);
    (* LG    procedure Download500FilesFromFTP(const LocalDir : String) ;
      procedure Get500FilesFromFTP ;

      procedure FillDirList;
    *)
    procedure StoreTransferFile(const FileName, HTF_FS: String;
      const TransferType, LONo, LoadNo, InOut: Integer);
    procedure RemoveLoadFromInvoice(const InternalInvoiceNo: Integer);
    function GetSalesManGroupNo(const ResponsibleSeller: Integer): Integer;
    (* LG    procedure DoOpenDir(const ADir: string);
      function  OpenFTP(Var LocalDir : String;const UpOrDown : Integer) : Boolean ;
    *)
    procedure AssignNormalInvoiceNumber(const InternalInvoiceNo: Integer);
    function AssignProformaInvoiceNumber(const InternalInvoiceNo
      : Integer): Integer;
    function AssignProFormaInvoiceNumberAndMovePkg(const InternalInvoiceNo
      : Integer): Integer;
    function AssignPurchaseInvoiceNumber(const InternalInvoiceNo
      : Integer): Integer;
    function checkIfMoreThanOneInvoiceOnLO(const LONo,
      InvoiceType: Integer): Integer;
    Procedure AddPackageToLoadDetail(const NewLoadNo: Integer);
    function CheckIfLoadNoIsOK(const LoadNo: Integer): Boolean;
    procedure CopyLoad(const NewLoadNo, CopyLoadNo: Integer);
    function SpecLoad(const CopyLoadNo: Integer): Integer;
    procedure AddLONoToLoadIfMissing(const ShippingPlanNo, CopyLoadNo,
      NewLoadNo: Integer);
    procedure RemovePkgFromLoad;
    Procedure ExportToWoodx(const CustomerNo, IntInvNo: Integer;
      const InvoiceNo: String);
  public
    { Public declarations }
    AttestChanged: Boolean;
    Supplier_InvoiceNo: String;
    CurrencyNo, SupplierNo: Integer;
    Supplier_InvoiceDate: TDateTime;
    Description, Note: String;
    fInternalInvoiceNo: Integer;
    fActive: Integer;
    vouno, logno: Integer;
    serie: String;
    ldglogwrite_logerror, vourowlog_logerror: Integer;
    procedure JusteraUSAFakturor ;
    procedure STORE_ExportInvoiceData(mtSelectedInvoices: TkbmMemTable);
    procedure DEL_ExportInvoiceData;
    procedure PkgLogInvoiced(const InternalInvoiceNo, Operation: Integer);
    procedure MailaCopyToVIDASTORE(const InvoiceNo: String;
      const InternalInvoiceNo, CustomerNo: Integer);
    procedure SendInvoiceAsEDI(const InternalInvoiceNo: Integer);
    function ControlInvoiceData(var Msg: String): Boolean;
    function InvoiceSentAsEDI(const InternalInvoiceNo: Integer): Boolean;
    function CustomerHaveValidEAN(const InternalInvoiceNo: Integer): Boolean;
    Function GetArticleGroupNo(const ArticleNo: Integer): Integer;
    procedure CalculateDueDate;
    procedure DeleteInvoice(const InternalInvoiceNo: Integer);
    procedure PrepareLindaExcelFile(const InvoiceNo: String;
      const CustomerNo, InternalInvoiceNo: Integer);
    Function Check_DoesInvoiceValueCorrespondWith_Debit_Credit: String;
    Function GetInvoiceTypeFromBinding(const SalesRegionNo,
      OrderType: Integer): Integer;
    procedure SummarizeWithOutOpenInvoiceForm;
    function GetTotalAM3PerLO(const InternalInvoiceNo, ShippingPlanNo
      : Integer): Double;
    Procedure CalcAndUpdateNetProductValueInInvoiceDetail;
    function GetFreigthCost(const InternalInvoiceNo, ShippingPlanNo,
      InclInPrice, InclInInvoiceTotal: Integer): Double;
    function InsertVerifikatLogg(const Test: Boolean;
      const InvoiceNo, InternalInvoiceNo, CustomerNo,
      InvoiceType2: Integer): Boolean;
    procedure TransformHTFPkgs;
    function GetArticleNo(const LO: Integer): Integer;
    function GetBruttoPris(const OrderNo, OrderLineNo: Integer): Double;
    function GetNettoPris(const OrderNo, OrderLineNo: Integer): Double;
    Function GetFileNameOfLoadNoFileName(const LoadNo: Integer): String;
    (* LG    procedure DeleteRecievedFiles ;
    *)
    procedure DeleteAttestRowKoppling(const InternalInvoiceNo, ShippingPlanNo,
      SequensNo, InvoiceDetailNo: Integer);
    procedure PrepareForAttest_DELKREDIT(const Quick_InvoiceNo: Integer);

    procedure EXEC_xp_ldglogwrite(const cid, person: String;
      const stype: Integer; const enum: String; const invno, seq: Integer;
      const org: String; const bookdate, invdate, duedate: TSQLTimeStamp;
      const currency: String; const amount, foramount, vat: Double;
      const vatcode: Byte; const account: String; const approval1: String;
      const logno, vouno: Integer; const serie, Object2, Object5: String);

    // verifikationshuvud
    procedure EXEC_sp_VIS_xp_voulogwrite(const cid: String;
      const logtype: Integer; const logdate: TSQLTimeStamp;
      const enumerator: String; const invno: Integer; Const FreeText: String);

    // verifikationsrad
    procedure EXEC_xp_vourowlogwrite(const logno: Integer;
      const account: String; const logdate: TSQLTimeStamp;
      const currency: String; const amount: Double; const foramount: Double;
      const vatcode: Integer; const creator: String;
      const Object2, Object5: String; Const NM3: Double;
      Const FreeText: String);

    procedure ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF;
    (* LG    procedure SetTransferFileCompleteValue(const FileName : String;const TransferType, Complete : Integer) ; *)
    Function HamtaEnUtleveransFran_PackageStatusHTF(const EfterfragadLastnr
      : Integer): String;
    (* LG    procedure UpLoadNewFileToFTP (const UpOrDown : Integer) ; *)
    procedure CreateLoadToShip(const LONo, LoadNo: Integer);
    procedure LoadMemTableWithImportPackages(const FileName: String);
    procedure LoadMemTableWithImportPackages550(const FileName: String);
    (* LG    procedure HamtaFilerFranFTPOchUppdatera ; *)
    Function GetDueDate(const InvoiceDate: TDateTime;
      const NoOfDaysDiscount2, DueDateBlank, FreeDelMonth: Integer): TDateTime;
    procedure GetPackageStatusOfHampenTEST(const FileName: String);
    procedure GetPackageStatusOfHampenTEST550(const FileName: String);
    function CreateDELCreditInvoiceByCopyDebitInvoice(const InvoiceNo,
      InternalInvoiceNo: Integer; const DatumString: String): Integer;
    procedure SetKontonr;
    procedure LoadUserProps(const Form: String);
    procedure SaveUserProps(const Form: String);
    function ControlInvDateForInvoice: Boolean;
    (* LG    procedure ExportTypSoftSet(const LoadNo, LONo, RecordType  : Integer;const LOTyp : String;const Purpose : Integer) ;
    *)
    Function GetGetProFormInvNo(const InternalInvoiceNo: Integer): Integer;
    Function GetInternalInvoiceNoByINVOICENO(const InvoiceNo: Integer;
      Var InvoiceType: Integer): Integer;
    Function GetInvoiceTypeByLONo(const LONo: Integer): Integer;
    procedure PrepareExportFiles(const InvoiceNo: String;
      const CustomerNo, InternalInvoiceNo, CET, KV: Integer);
    procedure ExportInvoiceSpecWoodxExecute(const CustomerNo, IntInvNo: Integer;
      const InvoiceNo: String);
    procedure EmailaTrpBrevExecute(const IntInvNo, InvoiceNo, CustomerNo,
      LONo: Integer; const OrderNoText: string);
    procedure ExportTyp1(const InvoiceNo, InternalInvoiceNo, CET: Integer);
    function SaveInvoiceSpecChanges(const InternalInvoiceNo: Integer): Boolean;
    function SaveInvoiceSpecToInventory(const InternalInvoiceNo
      : Integer): Boolean;
    procedure OpenInvoiceSpec(const InternalInvoiceNo: Integer);
    procedure OpenKortSkeppFS(const InternalInvoiceNo: Integer);
    procedure OpenPkgsRemovedToInventory(const InternalInvoiceNo: Integer);
    function GetInvoiceNo(const InternalInvoiceNo,
      InvoiceType: Integer): Integer;
    Function Get_InternalInvoiceNo(Var InvoiceType: Integer;
      const LoadNo: Integer): Integer;
    function CreateCreditInvoiceByCopyDebitInvoice(const InvoiceNo,
      InternalInvoiceNo: Integer; const DatumString: String;
      const InvoiceType: Integer): Integer;
    procedure AssignInvoiceNumber(const InternalInvoiceNo: Integer);
    procedure RefreshCHECKED;
    procedure AllRows;
    procedure AllLORows;
    function InvoiceAttested(const Quick_InvoiceNo: Integer): Integer;
    function SearchLONo(const LONo: Integer; Var InvoiceType: Integer): Integer;
    Function GetInvoiceDocTextByOrderNo(const OrderNo: Integer;
      RichEdit1: TRichEdit): Variant;
    Function GetInvoiceTextByClient(const ClientNo: Integer): Variant;
    function GetPaymentText(const CurrencyNo, LanguageCode,
      AddressNo: Integer): String;
    procedure OpenInvoiceHeaderForAttest(const InvoiceNo, InvoiceType: Integer);
    function NextProformaNo(const InternalInvoiceNo: Integer): Integer;
    procedure DeletePreliminaryInvoice(const InternalInvoiceNo: Integer);
    procedure DeleteEmptyLoadsForInternalInvoiceNo(const InternalInvoiceNo
      : Integer);

  end;

var
  dmVidaInvoice: TdmVidaInvoice;

implementation

Uses dmsDataConn, recerror, UnitEnterInvoiceNo, VidaConst, VidaUser,
  fMoveInvPkgToInventory, dmc_ArrivingLoads,
  dmsVidaContact, uSelectMultInvoice, dmsVidaSystem, VidaUtils,
  UnitCRExportOneReport, uSendMapiMail, MainU, dmc_ImportWoodx,
  dmcVidaOrder, dmsVidaProduct, UnitdmModule1, udmFR, uReportController,
  uReport;
{$R *.dfm}

function TdmVidaInvoice.ControlInvoiceData(var Msg: String): Boolean;
Begin
  Msg := '';
  if ((cdsInvoiceHeadSupplierNo.AsInteger = VIDA_BORGSTENA_BOTLR) and
    (cdsInvoiceHeadInvoiceType.AsInteger <> BORGSTENA_INVOICE)) OR
    ((cdsInvoiceHeadInvoiceType.AsInteger = BORGSTENA_INVOICE) and
    (cdsInvoiceHeadSupplierNo.AsInteger <> VIDA_BORGSTENA_BOTLR)) then
  Begin
    // LG_lang
    Msg := 'Försäljningsregionen stämmer inte med fakturaserien';
    Result := False;
  End
  else
    Result := True;
End;

procedure TdmVidaInvoice.AssignInvoiceNumber(const InternalInvoiceNo: Integer);
Begin
  case cdsInvoiceHeadInvoiceType.AsInteger of
    NORMAL_INVOICE:
      AssignNormalInvoiceNumber(InternalInvoiceNo);
    PROFORMA_REAL_INVOICE_LATER:
      AssignProformaInvoiceNumber(InternalInvoiceNo);
    PROFORMA_MOVE_PKGS_TO_INVENTORY:
      AssignProFormaInvoiceNumberAndMovePkg(InternalInvoiceNo);
    PURCHASE_INVOICE:
      AssignPurchaseInvoiceNumber(InternalInvoiceNo);
    // USA_INVOICE                          : AssignUSAInvoiceNumber(InternalInvoiceNo) ;
    // FW_INVOICE                          : AssignFWInvoiceNumber(InternalInvoiceNo) ;
    AGENT_INVOICE:
      AssignAGENTInvoiceNumber(InternalInvoiceNo);
    VTA_INVOICE:
      AssignVTAInvoiceNumber(InternalInvoiceNo);
    BORGSTENA_INVOICE:
      Assign_BORGSTENA_InvoiceNumber(InternalInvoiceNo);

    UK_INVOICE:
      AssignUK_Sales_InvoiceNumber(InternalInvoiceNo);

    UK_INVOICE_PO:
      AssignPurchase_UKInvoiceNumber(InternalInvoiceNo);

    VP_INVOICE_PO:
      AssignPurchase_VPInvoiceNumber(InternalInvoiceNo);
  End;
End;

function TdmVidaInvoice.AssignPurchase_VPInvoiceNumber(const InternalInvoiceNo
  : Integer): Integer;
Var
  FormEnterInvoiceNo: TFormEnterInvoiceNo;
Begin
  Result := -1;
  with dmVidaInvoice do
  Begin
    cds_PurchaseInvNo_VP.Active := True;
    Try
      if cds_PurchaseInvNo_VP.Locate('InternalInvoiceNo', InternalInvoiceNo, [])
      then
      Begin
        Result := 1; // Invoice Number Record already exist
        showmessage('Purchase order invoice number already assigned..');
        Exit;
      End
      else
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);

        Try
          FormEnterInvoiceNo.Caption := 'Enter PO invoice number';
          FormEnterInvoiceNo.ePrefix.Visible := True;
          FormEnterInvoiceNo.LPrefix.Visible := True;
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            cds_PurchaseInvNo_VP.Insert;
            cds_PurchaseInvNo_VPInternalInvoiceNo.AsInteger := InternalInvoiceNo;
            cds_PurchaseInvNo_VPPO_InvoiceNo.AsInteger :=
              StrToInt(FormEnterInvoiceNo.eFakturanr.Text);
            cds_PurchaseInvNo_VPPrefix.AsString := FormEnterInvoiceNo.ePrefix.Text;
            cds_PurchaseInvNo_VPUserCreated.AsInteger := ThisUser.UserID;
            cds_PurchaseInvNo_VPUserModified.AsInteger := ThisUser.UserID;
            cds_PurchaseInvNo_VPDateCreated.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(Now);
            cds_PurchaseInvNo_VP.Post;
            if cds_PurchaseInvNo_VP.ChangeCount > 0 then
            Begin
              cds_PurchaseInvNo_VP.ApplyUpdates(0);
              cds_PurchaseInvNo_VP.CommitUpdates;
            End;
            Result := 0;
          End;

          PkgLogInvoiced(InternalInvoiceNo, 25);

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End;
    Finally
      cds_PurchaseInvNo_VP.Active := False;
    End;
  End; // with
End;

function TdmVidaInvoice.AssignPurchase_UKInvoiceNumber(const InternalInvoiceNo
  : Integer): Integer;
Var
  FormEnterInvoiceNo: TFormEnterInvoiceNo;
Begin
  Result := -1;
  with dmVidaInvoice do
  Begin
    cds_PurchaseInvNo_UK.Active := True;
    Try
      if cds_PurchaseInvNo_UK.Locate('InternalInvoiceNo', InternalInvoiceNo, [])
      then
      Begin
        Result := 1; // Invoice Number Record already exist
        showmessage('Purchase order invoice number already assigned..');
        Exit;
      End
      else
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);

        Try
          FormEnterInvoiceNo.Caption := 'Enter PO invoice number';
          FormEnterInvoiceNo.ePrefix.Visible := True;
          FormEnterInvoiceNo.LPrefix.Visible := True;
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            cds_PurchaseInvNo_UK.Insert;
            cds_PurchaseInvNo_UKInternalInvoiceNo.AsInteger := InternalInvoiceNo;
            cds_PurchaseInvNo_UKPO_InvoiceNo.AsInteger :=
              StrToInt(FormEnterInvoiceNo.eFakturanr.Text);
            cds_PurchaseInvNo_UKPrefix.AsString := FormEnterInvoiceNo.ePrefix.Text;
            cds_PurchaseInvNo_UKUserCreated.AsInteger := ThisUser.UserID;
            cds_PurchaseInvNo_UKUserModified.AsInteger := ThisUser.UserID;
            cds_PurchaseInvNo_UKDateCreated.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(Now);
            cds_PurchaseInvNo_UK.Post;
            if cds_PurchaseInvNo_UK.ChangeCount > 0 then
            Begin
              cds_PurchaseInvNo_UK.ApplyUpdates(0);
              cds_PurchaseInvNo_UK.CommitUpdates;
            End;
            Result := 0;
          End;

          PkgLogInvoiced(InternalInvoiceNo, 25);

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End;
    Finally
      cds_PurchaseInvNo_UK.Active := False;
    End;
  End; // with
End;

procedure TdmVidaInvoice.AssignUK_Sales_InvoiceNumber(const InternalInvoiceNo
  : Integer);
Var
  mrResult: Word;
  InvoiceNo, OrgInternalInvoiceNo, QInvNo: Integer;
  FormEnterInvoiceNo: TFormEnterInvoiceNo;

  Function GetInvNo: Integer;
  Begin
    // sq_GetNextInvoiceNo.Close ;
    sq_GetNextInvoiceNo_UK.Open;
    Try
      Result := sq_GetNextInvoiceNo_UKNEXT_INVNO.AsInteger;
    Finally
      sq_GetNextInvoiceNo_UK.Close;
    End;
  End;

procedure InsertInvoiceNo_UK(const InvoiceNo, InternalInvoiceNo
  : Integer);
Begin
  Try
    sq_InsInvNo_UK.ParamByName('InvoiceNo').AsInteger         := InvoiceNo;
    sq_InsInvNo_UK.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo;
    sq_InsInvNo_UK.ParamByName('UserCreated').AsInteger       := ThisUser.UserID;
    sq_InsInvNo_UK.ParamByName('UserModified').AsInteger      := ThisUser.UserID;
    sq_InsInvNo_UK.ParamByName('DateCreated').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now);
    sq_InsInvNo_UK.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

  Function GetOrgInvoiceNoByCreditInternalInvoiceNo: Integer;
  Begin
    Try
      sq_GetOrgInvoiceNoByCredit_UK.ParamByName('NewInternalInvoiceNo').AsInteger
        := InternalInvoiceNo;
      sq_GetOrgInvoiceNoByCredit_UK.Active := True;
      if not sq_GetOrgInvoiceNoByCredit_UK.Eof then
        Result := sq_GetOrgInvoiceNoByCredit_UKInternalInvoiceNo.AsInteger
      else
        Result := -1;
    Finally
      sq_GetOrgInvoiceNoByCredit_UK.Active := False;
    End;
  End;

  procedure Insert_PkgType_Invoice;
  Begin
    // sq_InvLOs.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
    // sq_InvLOs.Active := True ;
    // Try
    // sq_InvLOs.First ;
    // While not sq_InvLOs.Eof do
    // Begin
    Try
      sq_PkgType_InvoiceForCredit.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      // sq_PkgType_Invoice.ParamByName('SupplierNo').AsInteger        := cdsInvoiceHeadSupplierNo.AsInteger ;//VIDA_WOOD_CLIENTNO ;
      // sq_PkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger    := sq_InvLOsShippingPlanNo.AsInteger ;
      // sq_PkgType_Invoice.ParamByName('CustomerNo').AsInteger        := cdsInvoiceHeadCustomerNo.AsInteger ; // Avrop customerNo
      sq_PkgType_InvoiceForCredit.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
    // sq_InvLOs.Next ;
    // End ;//While..
    // Finally
    // sq_InvLOs.Active  := False ;
    // End ;
  End;

// Main AssignNormalInvoiceNumber
Begin
  // Result:= -1 ;
  with dmVidaInvoice do
  Begin
    OrgInternalInvoiceNo := GetOrgInvoiceNoByCreditInternalInvoiceNo;

    InvoiceNo := GetInvoiceNo(InternalInvoiceNo, UK_INVOICE);
    if InvoiceNo > 0 then
    Begin
      showmessage('Invoice number (' + inttostr(InvoiceNo) + ') already assigned.');
      Exit;
    End
    else
    Begin
      mrResult := MessageDlg
        ('Click Yes to generate invoice number automatically, or click no to enter the invoice number manually ',
        mtConfirmation, [mbYes, mbNo, mbCancel], 0);
      if mrResult = mrNo then
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);
        Try
          FormEnterInvoiceNo.Caption := 'Ange fakturanr';
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            // START A TRANSACTION
            dmsConnector.StartTransaction;
            Try
              if StrToInt(FormEnterInvoiceNo.eFakturanr.Text) > 0 then
              Begin
                InsertInvoiceNo_UK(StrToInt(FormEnterInvoiceNo.eFakturanr.Text),
                  InternalInvoiceNo);
                if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                  (cdsInvoiceHeadDelKredit.AsInteger = 0) then
                Begin
                  vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                    InternalInvoiceNo); // NewInternalInvoiceNo
                  Insert_PkgType_Invoice;
                End;
                if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                  InsertAttest(StrToInt(FormEnterInvoiceNo.eFakturanr.Text));
              End;

              PkgLogInvoiced(InternalInvoiceNo, 25);

              dmsConnector.Commit;
            Except
              On E: Exception do
              Begin
                dmsConnector.Rollback;
                dmsSystem.FDoLog(E.Message);
                Raise;
              End;
            End;
          End;

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End // End of Manual invoice number entry
      else if mrResult = mrYes then
      Begin // Auto invoice number
        if MessageDlg('Do you want to continue generating the invoice number automatically?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes then
        Begin
          // START A TRANSACTION
          dmsConnector.StartTransaction;
          Try
            QInvNo := GetInvNo;

            if QInvNo > 0 then
            Begin
              InsertInvoiceNo_UK(QInvNo, InternalInvoiceNo);
              if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                (cdsInvoiceHeadDelKredit.AsInteger = 0) and
                (OrgInternalInvoiceNo > 0) then
              Begin
                vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                  InternalInvoiceNo); // NewInternalInvoiceNo
                Insert_PkgType_Invoice;
              End;
              if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                InsertAttest(QInvNo);
            End;
            dmsConnector.Commit;
          Except
            On E: Exception do
            Begin
              dmsConnector.Rollback;
              dmsSystem.FDoLog(E.Message);
              Raise;
            End;
          End;

        End;
      End;
    End;

  End; // with
End;

procedure TdmVidaInvoice.Assign_BORGSTENA_InvoiceNumber(const InternalInvoiceNo
  : Integer);
Var
  mrResult: Word;
  InvoiceNo, OrgInternalInvoiceNo, QInvNo: Integer;
  FormEnterInvoiceNo: TFormEnterInvoiceNo;

  { Function GetInvNo : Integer ;
    Begin
    // sq_GetNextInvoiceNo.Close ;
    sq_GetNextInvoiceNo.Open ;
    Try
    Result:= sq_GetNextInvoiceNoNEXT_INVNO.AsInteger ;
    Finally
    sq_GetNextInvoiceNo.Close ;
    End ;
    End ; }

  Function GetOrgInvoiceNoByCreditInternalInvoiceNo: Integer;
  Begin
    Try
      sq_GetOrgInvoiceNoByCredit_BKO.ParamByName('NewInternalInvoiceNo')
        .AsInteger := InternalInvoiceNo;
      sq_GetOrgInvoiceNoByCredit_BKO.Active := True;
      if not sq_GetOrgInvoiceNoByCredit_BKO.Eof then
        Result := sq_GetOrgInvoiceNoByCredit_BKOInternalInvoiceNo.AsInteger
      else
        Result := -1;
    Finally
      sq_GetOrgInvoiceNoByCredit_BKO.Active := False;
    End;
  End;

  procedure InsertInvoiceNoBKO(const InvoiceNo, InternalInvoiceNo: Integer);
  Begin
    Try
      sq_InsBKOInvoiceNo.ParamByName('InvoiceNo').AsInteger := InvoiceNo;
      sq_InsBKOInvoiceNo.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      sq_InsBKOInvoiceNo.ParamByName('UserCreated').AsInteger :=
        ThisUser.UserID;
      sq_InsBKOInvoiceNo.ParamByName('UserModified').AsInteger :=
        ThisUser.UserID;
      sq_InsBKOInvoiceNo.ParamByName('DateCreated').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      sq_InsBKOInvoiceNo.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;
  End;

  procedure Insert_PkgType_Invoice;
  Begin
    // sq_InvLOs.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
    // sq_InvLOs.Active := True ;
    // Try
    // sq_InvLOs.First ;
    // While not sq_InvLOs.Eof do
    // Begin
    Try
      sq_PkgType_InvoiceForCredit.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      // sq_PkgType_Invoice.ParamByName('SupplierNo').AsInteger        := cdsInvoiceHeadSupplierNo.AsInteger ;//VIDA_WOOD_CLIENTNO ;
      // sq_PkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger    := sq_InvLOsShippingPlanNo.AsInteger ;
      // sq_PkgType_Invoice.ParamByName('CustomerNo').AsInteger        := cdsInvoiceHeadCustomerNo.AsInteger ; // Avrop customerNo
      sq_PkgType_InvoiceForCredit.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
    // sq_InvLOs.Next ;
    // End ;//While..
    // Finally
    // sq_InvLOs.Active  := False ;
    // End ;
  End;

// Main Assign_BORGSTENA_InvoiceNumber
Begin
  // Result:= -1 ;
  with dmVidaInvoice do
  Begin
    OrgInternalInvoiceNo := GetOrgInvoiceNoByCreditInternalInvoiceNo;

    InvoiceNo := GetInvoiceNo(InternalInvoiceNo, 0);
    if InvoiceNo > 0 then
    Begin
      // LG_lang
      showmessage('Invoice number already assigned.');
      Exit;
    End
    else
    Begin
      mrResult := MessageDlg
        ('Click Yes to generate invoice number automatically, or click no to enter the invoice number manually ',
        mtConfirmation, [mbYes, mbNo, mbCancel], 0);
      if mrResult = mrNo then
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);
        Try
          FormEnterInvoiceNo.Caption := 'Enter the invoice number';
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            // START A TRANSACTION
            dmsConnector.StartTransaction;
            Try
              if StrToInt(FormEnterInvoiceNo.eFakturanr.Text) > 0 then
              Begin
                InsertInvoiceNoBKO(StrToInt(FormEnterInvoiceNo.eFakturanr.Text),
                  InternalInvoiceNo);
                if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                  (cdsInvoiceHeadDelKredit.AsInteger = 0) then
                Begin
                  vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                    InternalInvoiceNo); // NewInternalInvoiceNo
                  Insert_PkgType_Invoice;
                End;
                if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                  InsertAttest(StrToInt(FormEnterInvoiceNo.eFakturanr.Text));
              End;

              PkgLogInvoiced(InternalInvoiceNo, 25);

              dmsConnector.Commit;
            Except
              On E: Exception do
              Begin
                dmsConnector.Rollback;
                dmsSystem.FDoLog(E.Message);
                Raise;
              End;
            End;
          End;

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End // End of Manual invoice number entry
      else if mrResult = mrYes then
      Begin // Auto invoice number
        if MessageDlg('Do you want to continue generating the invoice number automatically?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes then
        Begin
          // START A TRANSACTION
          dmsConnector.StartTransaction;
          Try
            // QInvNo := GetInvNo ;
            QInvNo := GetInvoiceNoOfMaxKeyTable('BKO'); // GetInvNo ;

            if QInvNo > 0 then
            Begin
              InsertInvoiceNoBKO(QInvNo, InternalInvoiceNo);
              if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                (cdsInvoiceHeadDelKredit.AsInteger = 0) then
              Begin
                vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                  InternalInvoiceNo); // NewInternalInvoiceNo
                Insert_PkgType_Invoice;
              End;
              if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                InsertAttest(QInvNo);
            End;
            dmsConnector.Commit;
          Except
            On E: Exception do
            Begin
              dmsConnector.Rollback;
              dmsSystem.FDoLog(E.Message);
              Raise;
            End;
          End;

        End;
      End;
    End;

  End; // with
End;

procedure TdmVidaInvoice.AssignAGENTInvoiceNumber(const InternalInvoiceNo
  : Integer);
Var
  FormEnterInvoiceNo: TFormEnterInvoiceNo;
Begin
  with dmVidaInvoice do
  Begin
    cds_InvNoAGENT.Active := True;
    Try
      if cds_InvNoAGENT.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
      Begin
        showmessage('Invoice number already assigned.');
        Exit;
      End
      else
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);

        Try
          FormEnterInvoiceNo.Caption := 'Enter a invoice number';
          FormEnterInvoiceNo.ePrefix.Visible := True;
          FormEnterInvoiceNo.LPrefix.Visible := True;
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            cds_InvNoAGENT.Insert;
            cds_InvNoAGENTInternalInvoiceNo.AsInteger := InternalInvoiceNo;
            cds_InvNoAGENTInvoiceNo.AsInteger :=
              StrToInt(FormEnterInvoiceNo.eFakturanr.Text);
            cds_InvNoAGENTPrefix.AsString := FormEnterInvoiceNo.ePrefix.Text;
            cds_InvNoAGENTUserCreated.AsInteger := ThisUser.UserID;
            cds_InvNoAGENTUserModified.AsInteger := ThisUser.UserID;
            cds_InvNoAGENTDateCreated.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(Now);
            cds_InvNoAGENT.Post;

            if cds_InvNoAGENT.ChangeCount > 0 then
            Begin
              cds_InvNoAGENT.ApplyUpdates(0);
              cds_InvNoAGENT.CommitUpdates;
            End;

            PkgLogInvoiced(InternalInvoiceNo, 25);

          End;

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End;
    Finally
      cds_InvNoAGENT.Active := False;
    End;
  End; // with
End;

procedure TdmVidaInvoice.AssignNormalInvoiceNumber(const InternalInvoiceNo
  : Integer);
Var
  mrResult: Word;
  InvoiceNo, OrgInternalInvoiceNo, QInvNo: Integer;
  FormEnterInvoiceNo: TFormEnterInvoiceNo;

  Function GetInvNo: Integer;
  Begin
    // sq_GetNextInvoiceNo.Close ;
    sq_GetNextInvoiceNo.Open;
    Try
      Result := sq_GetNextInvoiceNoNEXT_INVNO.AsInteger;
    Finally
      sq_GetNextInvoiceNo.Close;
    End;
  End;

  Function GetOrgInvoiceNoByCreditInternalInvoiceNo: Integer;
  Begin
    Try
      sq_GetOrgInvoiceNoByCredit.ParamByName('NewInternalInvoiceNo').AsInteger
        := InternalInvoiceNo;
      sq_GetOrgInvoiceNoByCredit.Active := True;
      if not sq_GetOrgInvoiceNoByCredit.Eof then
        Result := sq_GetOrgInvoiceNoByCreditInternalInvoiceNo.AsInteger
      else
        Result := -1;
    Finally
      sq_GetOrgInvoiceNoByCredit.Active := False;
    End;
  End;

  procedure Insert_PkgType_Invoice;
  Begin
    // sq_InvLOs.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
    // sq_InvLOs.Active := True ;
    // Try
    // sq_InvLOs.First ;
    // While not sq_InvLOs.Eof do
    // Begin
    Try
      sq_PkgType_InvoiceForCredit.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      // sq_PkgType_Invoice.ParamByName('SupplierNo').AsInteger        := cdsInvoiceHeadSupplierNo.AsInteger ;//VIDA_WOOD_CLIENTNO ;
      // sq_PkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger    := sq_InvLOsShippingPlanNo.AsInteger ;
      // sq_PkgType_Invoice.ParamByName('CustomerNo').AsInteger        := cdsInvoiceHeadCustomerNo.AsInteger ; // Avrop customerNo
      sq_PkgType_InvoiceForCredit.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
    // sq_InvLOs.Next ;
    // End ;//While..
    // Finally
    // sq_InvLOs.Active  := False ;
    // End ;
  End;

// Main AssignNormalInvoiceNumber
Begin
  // Result:= -1 ;
  with dmVidaInvoice do
  Begin
    OrgInternalInvoiceNo := GetOrgInvoiceNoByCreditInternalInvoiceNo;

    InvoiceNo := GetInvoiceNo(InternalInvoiceNo, 0);
    if InvoiceNo > 0 then
    Begin
      showmessage('Invoice number already assigned.');
      Exit;
    End
    else
    Begin
      mrResult := MessageDlg
        ('Click Yes to generate invoice number automatically, or click no to enter the invoice number manually ',
        mtConfirmation, [mbYes, mbNo, mbCancel], 0);
      if mrResult = mrNo then
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);
        Try
          FormEnterInvoiceNo.Caption := 'Ange fakturanr';
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            // START A TRANSACTION
            dmsConnector.StartTransaction;
            Try
              if StrToInt(FormEnterInvoiceNo.eFakturanr.Text) > 0 then
              Begin
                InsertInvoiceNo(StrToInt(FormEnterInvoiceNo.eFakturanr.Text),
                  InternalInvoiceNo);
                if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                  (cdsInvoiceHeadDelKredit.AsInteger = 0) then
                Begin
                  vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                    InternalInvoiceNo); // NewInternalInvoiceNo
                  Insert_PkgType_Invoice;
                End;
                if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                  InsertAttest(StrToInt(FormEnterInvoiceNo.eFakturanr.Text));
              End;

              PkgLogInvoiced(InternalInvoiceNo, 25);

              dmsConnector.Commit;
            Except
              On E: Exception do
              Begin
                dmsConnector.Rollback;
                dmsSystem.FDoLog(E.Message);
                Raise;
              End;
            End;
          End;

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End // End of Manual invoice number entry
      else if mrResult = mrYes then
      Begin // Auto invoice number
        if MessageDlg('Do you want to continue generating the invoice number automatically?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes then
        Begin
          // START A TRANSACTION
          dmsConnector.StartTransaction;
          Try
            QInvNo := GetInvNo;

            if QInvNo > 0 then
            Begin
              InsertInvoiceNo(QInvNo, InternalInvoiceNo);
              if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                (cdsInvoiceHeadDelKredit.AsInteger = 0) and
                (OrgInternalInvoiceNo > 0) then
              Begin
                vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                  InternalInvoiceNo); // NewInternalInvoiceNo
                Insert_PkgType_Invoice;
              End;
              if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                InsertAttest(QInvNo);
            End;
            dmsConnector.Commit;
          Except
            On E: Exception do
            Begin
              dmsConnector.Rollback;
              dmsSystem.FDoLog(E.Message);
              Raise;
            End;
          End;

        End;
      End;
    End;

  End; // with
End;

function TdmVidaInvoice.GetInvoiceNoOfMaxKeyTable(const InvoiceSerie
  : String): Integer;
Begin
  Result := dmsConnector.NextMaxNo(InvoiceSerie);
End;

procedure TdmVidaInvoice.vis_CopyLoad(const InternalInvoiceNo,
  NewInternalInvoiceNo: Integer);
Begin
  Try
    sp_vis_CopyLoad.ParamByName('@CreateUser').AsInteger := ThisUser.UserID;
    sp_vis_CopyLoad.ParamByName('@InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sp_vis_CopyLoad.ParamByName('@NewInternalInvoiceNo').AsInteger :=
      NewInternalInvoiceNo;
    sp_vis_CopyLoad.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmVidaInvoice.InsertInvoiceNo(const InvoiceNo, InternalInvoiceNo
  : Integer);
Begin
  Try
    sq_InsInvNo.ParamByName('InvoiceNo').AsInteger := InvoiceNo;
    sq_InsInvNo.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo;
    sq_InsInvNo.ParamByName('UserCreated').AsInteger := ThisUser.UserID;
    sq_InsInvNo.ParamByName('UserModified').AsInteger := ThisUser.UserID;
    sq_InsInvNo.ParamByName('DateCreated').AsSQLTimeStamp :=
      DateTimeToSQLTimeStamp(Now);
    sq_InsInvNo.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

// Vid tilldelning av fakturanr tas lasten bort om fakturan är en fullkredit
procedure TdmVidaInvoice.RemoveLoadFromInvoice(const InternalInvoiceNo
  : Integer);
Begin
  if cdsInvoiceHeadSendInvoiceToAgent.AsInteger = 0 then // FULLKredit
  Begin
    Try
      sq_RemInvLoadII.ParamByName('NewInternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      sq_RemInvLoadII.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;
  End;
End;

function TdmVidaInvoice.AssignProformaInvoiceNumber(const InternalInvoiceNo
  : Integer): Integer;
Var
  TdmArrivingLoadsWasAssigned: Boolean;
  FormEnterInvoiceNo: TFormEnterInvoiceNo;
Begin
  if (not Assigned(dmArrivingLoads)) then
  Begin
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  End;
  dmsSystem.AssignDMToThisWork('TdmVidaInvoice', 'dmArrivingLoads');
  Try

    Result := -1;
    TdmArrivingLoadsWasAssigned := True;
    with dmVidaInvoice do
    Begin
      cdsProformaInvNo.Active := True;
      Try
        if cdsProformaInvNo.Locate('InternalInvoiceNo', InternalInvoiceNo, [])
        then
        Begin
          Result := 1; // Invoice Number Record already exist
          showmessage('Proforma Invoice number already generated and assigned');
          Exit;
        End
        else
        Begin
          FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);
          // formfMoveInvPkgToInventory:= TformfMoveInvPkgToInventory.Create(Nil);
          if not Assigned(dmArrivingLoads) then
          Begin
            TdmArrivingLoadsWasAssigned := False;
            dmArrivingLoads := TdmArrivingLoads.Create(Nil);
          End;
          Try
            // formfMoveInvPkgToInventory.InternalInvoiceNo:= InternalInvoiceNo ;
            // formfMoveInvPkgToInventory.ShowModal ;

            FormEnterInvoiceNo.Caption := 'Ange Proforma fakturanr';
            if FormEnterInvoiceNo.ShowModal = MrOK then
            Begin;

              cdsProformaInvNo.Insert;
              cdsProformaInvNoInternalInvoiceNo.AsInteger := InternalInvoiceNo;

              cdsProformaInvNoProformaInvoiceNo.AsInteger :=
                StrToInt(FormEnterInvoiceNo.eFakturanr.Text);
              cdsProformaInvNoUserCreated.AsInteger := ThisUser.UserID;
              cdsProformaInvNoUserModified.AsInteger := ThisUser.UserID;
              cdsProformaInvNoDateCreated.AsSQLTimeStamp :=
                DateTimeToSQLTimeStamp(Now);
              cdsProformaInvNo.Post;

              PkgLogInvoiced(InternalInvoiceNo, 25);

              if cdsProformaInvNo.ChangeCount > 0 then
              Begin
                cdsProformaInvNo.ApplyUpdates(0);
                cdsProformaInvNo.CommitUpdates;
              End;

              Result := 0;
            End;
          Finally
            // FreeAndNil(formfMoveInvPkgToInventory) ;//.Free ;
            FreeAndNil(FormEnterInvoiceNo); // .Free ;
            if TdmArrivingLoadsWasAssigned = False then
              FreeAndNil(dmArrivingLoads); // .Free ;

          End;
        End;
      Finally
        cdsProformaInvNo.Active := False;
      End;
    End; // with
  Finally
    if dmsSystem.DeleteAssigned('TdmVidaInvoice', 'dmArrivingLoads') = True then
    Begin
      dmArrivingLoads.Free;
      dmArrivingLoads := Nil;
    End;
  End;
End;

function TdmVidaInvoice.AssignPurchaseInvoiceNumber(const InternalInvoiceNo
  : Integer): Integer;
Var
  FormEnterInvoiceNo: TFormEnterInvoiceNo;
Begin
  Result := -1;
  with dmVidaInvoice do
  Begin
    cds_PurchaseInvNo.Active := True;
    Try
      if cds_PurchaseInvNo.Locate('InternalInvoiceNo', InternalInvoiceNo, [])
      then
      Begin
        Result := 1; // Invoice Number Record already exist
        showmessage('Purchase order invoice number already assigned..');
        Exit;
      End
      else
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);

        Try
          FormEnterInvoiceNo.Caption := 'Enter PO invoice number';
          FormEnterInvoiceNo.ePrefix.Visible := True;
          FormEnterInvoiceNo.LPrefix.Visible := True;
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            cds_PurchaseInvNo.Insert;
            cds_PurchaseInvNoInternalInvoiceNo.AsInteger := InternalInvoiceNo;
            cds_PurchaseInvNoPO_InvoiceNo.AsInteger :=
              StrToInt(FormEnterInvoiceNo.eFakturanr.Text);
            cds_PurchaseInvNoPrefix.AsString := FormEnterInvoiceNo.ePrefix.Text;
            cds_PurchaseInvNoUserCreated.AsInteger := ThisUser.UserID;
            cds_PurchaseInvNoUserModified.AsInteger := ThisUser.UserID;
            cds_PurchaseInvNoDateCreated.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(Now);
            cds_PurchaseInvNo.Post;
            if cds_PurchaseInvNo.ChangeCount > 0 then
            Begin
              cds_PurchaseInvNo.ApplyUpdates(0);
              cds_PurchaseInvNo.CommitUpdates;
            End;
            Result := 0;
          End;

          PkgLogInvoiced(InternalInvoiceNo, 25);

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End;
    Finally
      cds_PurchaseInvNo.Active := False;
    End;
  End; // with
End;

procedure TdmVidaInvoice.AssignVTAInvoiceNumber(const InternalInvoiceNo
  : Integer);
Var
  mrResult: Word;
  InvoiceNo, OrgInternalInvoiceNo, QInvNo: Integer;
  FormEnterInvoiceNo: TFormEnterInvoiceNo;

  procedure InsertAgentInvoiceNo(const InvoiceNo, InternalInvoiceNo: Integer);
  Begin
    Try
      sq_InsVTAInvNo.ParamByName('InvoiceNo').AsInteger := InvoiceNo;
      sq_InsVTAInvNo.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      sq_InsVTAInvNo.ParamByName('UserCreated').AsInteger := ThisUser.UserID;
      sq_InsVTAInvNo.ParamByName('UserModified').AsInteger := ThisUser.UserID;
      sq_InsVTAInvNo.ParamByName('DateCreated').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      sq_InsVTAInvNo.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;
  End;

  Function GetOrgInvoiceNoByCreditInternalInvoiceNo: Integer;
  Begin
    Try
      sq_GetOrgInvoiceNoByCredit.ParamByName('NewInternalInvoiceNo').AsInteger
        := InternalInvoiceNo;
      sq_GetOrgInvoiceNoByCredit.Active := True;
      if not sq_GetOrgInvoiceNoByCredit.Eof then
        Result := sq_GetOrgInvoiceNoByCreditInternalInvoiceNo.AsInteger
      else
        Result := -1;
    Finally
      sq_GetOrgInvoiceNoByCredit.Active := False;
    End;
  End;

  procedure Insert_PkgType_Invoice;
  Begin
    // sq_InvLOs.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
    // sq_InvLOs.Active := True ;
    // Try
    // sq_InvLOs.First ;
    // While not sq_InvLOs.Eof do
    // Begin
    Try
      sq_PkgType_InvoiceForCredit.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      // sq_PkgType_Invoice.ParamByName('SupplierNo').AsInteger        := cdsInvoiceHeadSupplierNo.AsInteger ;//VIDA_WOOD_CLIENTNO ;
      // sq_PkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger    := sq_InvLOsShippingPlanNo.AsInteger ;
      // sq_PkgType_Invoice.ParamByName('CustomerNo').AsInteger        := cdsInvoiceHeadCustomerNo.AsInteger ; // Avrop customerNo
      sq_PkgType_InvoiceForCredit.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
    // sq_InvLOs.Next ;
    // End ;//While..
    // Finally
    // sq_InvLOs.Active  := False ;
    // End ;
  End;

// Main AssignVTAInvoiceNumber
Begin
  // Result:= -1 ;
  with dmVidaInvoice do
  Begin
    OrgInternalInvoiceNo := GetOrgInvoiceNoByCreditInternalInvoiceNo;

    InvoiceNo := GetInvoiceNo(InternalInvoiceNo, 0);
    if InvoiceNo > 0 then
    Begin
      showmessage('Invoice number already assigned.');
      Exit;
    End
    else
    Begin
      mrResult := MessageDlg
        ('Click Yes to generate invoice number automatically, or click no to enter the invoice number manually ',
        mtConfirmation, [mbYes, mbNo, mbCancel], 0);
      if mrResult = mrNo then
      Begin
        FormEnterInvoiceNo := TFormEnterInvoiceNo.Create(Nil);
        Try
          FormEnterInvoiceNo.Caption := 'Enter the invoice number';
          if FormEnterInvoiceNo.ShowModal = MrOK then
          Begin;
            // START A TRANSACTION
            dmsConnector.StartTransaction;
            Try
              if StrToInt(FormEnterInvoiceNo.eFakturanr.Text) > 0 then
              Begin
                InsertAgentInvoiceNo
                  (StrToInt(FormEnterInvoiceNo.eFakturanr.Text),
                  InternalInvoiceNo);
                if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                  (cdsInvoiceHeadDelKredit.AsInteger = 0) then
                Begin
                  vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                    InternalInvoiceNo); // NewInternalInvoiceNo
                  Insert_PkgType_Invoice;
                End;
                if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                  InsertAttest(StrToInt(FormEnterInvoiceNo.eFakturanr.Text));
              End;

              PkgLogInvoiced(InternalInvoiceNo, 25);

              dmsConnector.Commit;
            Except
              On E: Exception do
              Begin
                dmsConnector.Rollback;
                dmsSystem.FDoLog(E.Message);
                Raise;
              End;
            End;
          End;

        Finally
          FormEnterInvoiceNo.Free;
        End;
      End // Manual invoice number entry
      else if mrResult = mrYes then
      Begin // Auto invoice number
        if MessageDlg('Do you want to continue generating the invoice number automatically?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes then
        Begin
          // START A TRANSACTION
          dmsConnector.StartTransaction;
          Try
            QInvNo := GetInvoiceNoOfMaxKeyTable('VTA'); // GetInvNo ;

            if QInvNo > 0 then
            Begin
              InsertAgentInvoiceNo(QInvNo, InternalInvoiceNo);
              if (cdsInvoiceHeadDebit_Credit.AsInteger = cCredit) and
                (cdsInvoiceHeadDelKredit.AsInteger = 0) then
              Begin
                vis_CopyLoad(OrgInternalInvoiceNo, // Old OrgInternalInvoiceNo
                  InternalInvoiceNo); // NewInternalInvoiceNo
                Insert_PkgType_Invoice;
              End;
              if cdsInvoiceHeadDelKredit.AsInteger = 1 then
                InsertAttest(QInvNo);
            End;
            dmsConnector.Commit;
          Except
            On E: Exception do
            Begin
              dmsConnector.Rollback;
              dmsSystem.FDoLog(E.Message);
              Raise;
            End;
          End;

        End;
      End;
    End;

  End; // with
End;

(*
  function TdmVidaInvoice.AssignAGENTInvoiceNumber(const InternalInvoiceNo : Integer) : Integer ;
  Var FormEnterInvoiceNo : TFormEnterInvoiceNo ;
  Begin
  Result := -1 ;
  with dmVidaInvoice do
  Begin
  cds_InvNoAGENT.Active  := True ;
  Try
  if cds_InvNoAGENT.Locate('InternalInvoiceNo',InternalInvoiceNo,[]) then
  Begin
  Result := 1 ; //Invoice Number Record already exist
  showmessage('Inköpsfakturanr är redan tilldelad fakturan.');
  Exit ;
  End
  else
  Begin
  FormEnterInvoiceNo:= TFormEnterInvoiceNo.Create(Nil) ;

  Try
  FormEnterInvoiceNo.Caption          := 'Ange inköpsfakturanr' ;
  FormEnterInvoiceNo.ePrefix.Visible  := True ;
  FormEnterInvoiceNo.LPrefix.Visible  := True ;
  if FormEnterInvoiceNo.ShowModal = mrOK then
  Begin;
  cds_InvNoAGENT.Insert ;
  cds_InvNoAGENTInternalInvoiceNo.AsInteger  := InternalInvoiceNo ;
  cds_InvNoAGENTInvoiceNo.AsInteger          := StrToInt(FormEnterInvoiceNo.eFakturanr.Text) ;
  cds_InvNoAGENTPrefix.AsString              := FormEnterInvoiceNo.ePrefix.Text ;
  cds_InvNoAGENTUserCreated.AsInteger        := ThisUser.UserID ;
  cds_InvNoAGENTUserModified.AsInteger       := ThisUser.UserID ;
  cds_InvNoAGENTDateCreated.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
  cds_InvNoAGENT.Post ;

  if cds_InvNoAGENT.ChangeCount > 0 then
  Begin
  cds_InvNoAGENT.ApplyUpdates(0) ;
  cds_InvNoAGENT.CommitUpdates ;
  End ;
  Result:= 0 ;
  End ;

  Finally
  FormEnterInvoiceNo.Free ;
  End ;
  End ;
  Finally
  cds_InvNoAGENT.Active  := False ;
  End ;
  End ; //with
  End ;
*)

function TdmVidaInvoice.AssignProFormaInvoiceNumberAndMovePkg
  (const InternalInvoiceNo: Integer): Integer;
Var
  TdmArrivingLoadsWasAssigned: Boolean;
  formfMoveInvPkgToInventory: TformfMoveInvPkgToInventory;
Begin
  if (not Assigned(dmArrivingLoads)) then
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  dmsSystem.AssignDMToThisWork('TdmVidaInvoice', 'dmArrivingLoads');
  Try

    Result := -1;
    TdmArrivingLoadsWasAssigned := True;
    with dmVidaInvoice do
    Begin
      cdsProformaInvNo.Active := True;
      Try
        if cdsProformaInvNo.Locate('InternalInvoiceNo', InternalInvoiceNo, [])
        then
        Begin
          Result := 1; // Invoice Number Record already exist
          showmessage('Proforma Invoice number already generated and assigned');
          Exit;
        End
        else
        Begin
          if not Assigned(dmArrivingLoads) then
          Begin
            TdmArrivingLoadsWasAssigned := False;
            dmArrivingLoads := TdmArrivingLoads.Create(Nil);
          End;

          formfMoveInvPkgToInventory := TformfMoveInvPkgToInventory.Create(Nil);
          Try
            formfMoveInvPkgToInventory.LONo :=
              cdsInvoiceLOShippingPlanNo.AsInteger;
            formfMoveInvPkgToInventory.InternalInvoiceNo := InternalInvoiceNo;
            formfMoveInvPkgToInventory.LO_CUSTOMERNO :=
              cdsInvoiceHeadCustomerNo.AsInteger;
            formfMoveInvPkgToInventory.ShowModal;

          Finally
            FreeAndNil(formfMoveInvPkgToInventory); // .Free ;
            if TdmArrivingLoadsWasAssigned = False then
              FreeAndNil(dmArrivingLoads); // .Free ;

            // FormEnterInvoiceNo.Free ;
          End;
        End;
      Finally
        cdsProformaInvNo.Active := False;
      End;
    End; // with

  Finally
    if dmsSystem.DeleteAssigned('TdmVidaInvoice', 'dmArrivingLoads') = True then
    Begin
      dmArrivingLoads.Free;
      dmArrivingLoads := Nil;
    End;
  End;
End;

function TdmVidaInvoice.CreateCreditInvoiceByCopyDebitInvoice(const InvoiceNo,
  InternalInvoiceNo: Integer; const DatumString: String;
  const InvoiceType: Integer): Integer;
Var
  NewInternalInvoiceNo, i, x: Integer;
  InvoiceHead: Array of Variant;
  InvoiceLO: Array of array of Variant;
  InvoiceDetail: Array of array of Variant;
  InvoiceShipTo: Array of array of Variant;
  myRollBack: Boolean;
  cxDBRichEdit3: TDBRichEdit;
  fSelectMultInvoice: TfSelectMultInvoice;
Begin
  cdsInvoiceDetailInclInPrice.OnChange := nil;
  Try
    fSelectMultInvoice := TfSelectMultInvoice.Create(nil);
    Try // Finally
      cxDBRichEdit3             := TDBRichEdit.Create(self);
      cxDBRichEdit3.Parent      := fSelectMultInvoice;
      cxDBRichEdit3.DataSource  := dmVidaInvoice.dsrcInvoiceHead;
      cxDBRichEdit3.DataField   := 'InvoiceText';
      cxDBRichEdit3.Visible     := False;

      Result                  := -1;
      NewInternalInvoiceNo    := 0;
      myRollBack              := False;
      cdsInvoiceNumber.Active := True;
      NewInternalInvoiceNo    := dmsConnector.NextMaxNo('InvoiceHeader');

      // START A TRANSACTION
      dmsConnector.StartTransaction;
      Try

        // if AssignNormalInvoiceNumber(NewInternalInvoiceNo) = 1 then
        // Begin

        cdsInvoiceHead.Active := False;
        cdsInvoiceHead.Close;
        cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        cdsInvoiceHead.Open;
        cdsInvoiceHead.Active := True;

        SetLength(InvoiceHead, cdsInvoiceHead.FieldCount);
        for i := 0 to cdsInvoiceHead.FieldCount - 1 do
        Begin
          InvoiceHead[i] := cdsInvoiceHead.Fields[i].Value;
        End;

        cdsInvoiceHead.Append;
        For i := 0 to cdsInvoiceHead.FieldCount - 1 do
          cdsInvoiceHead.Fields[i].Value := InvoiceHead[i];
        cdsInvoiceHead.FieldByName('InternalInvoiceNo').AsInteger :=
          NewInternalInvoiceNo; // dmsConnector.NextIDinTable('InvoiceHeader') ;
        // cdsInvoiceHead.FieldByName('InvoiceType').AsInteger       := NORMAL_INVOICE ;
        cdsInvoiceHead.FieldByName('Debit_Credit').AsInteger := cCredit;
        cdsInvoiceHead.FieldByName('ModifiedUser').AsInteger := ThisUser.UserID;
        cdsInvoiceHead.FieldByName('CreatedUser').AsInteger := ThisUser.UserID;
        cdsInvoiceHead.FieldByName('DateCreated').AsSQLTimeStamp :=
          DateTimeToSQLTimeStamp(Now);
        cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
          cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * (-1);
        cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat :=
          cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat * (-1);
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * (-1);
        cdsInvoiceHeadVAT_Value.AsFloat :=
          cdsInvoiceHeadVAT_Value.AsFloat * (-1);
        cdsInvoiceHeadCommission_and_Discount.AsFloat :=
          cdsInvoiceHeadCommission_and_Discount.AsFloat * (-1);
        cdsInvoiceHeadCommission.AsFloat :=
          cdsInvoiceHeadCommission.AsFloat * (-1);
        cdsInvoiceHeadDiscount.AsFloat := cdsInvoiceHeadDiscount.AsFloat * (-1);
        cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat :=
          cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (-1);
        cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
          cdsInvoiceHeadSUM_FreigthCost.AsFloat * (-1);
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (-1);

        cdsInvoiceHeadInvoiced.AsInteger := 0;
        cdsInvoiceHeadSendInvoiceToAgent.AsInteger := 0; // FULLKredit

        // cdsInvoiceHeadInvoiceText.AsString := cdsInvoiceHeadInvoiceText.AsString +
        cxDBRichEdit3.Lines.Add('Credit note re: Invoice ' + IntToStr(InvoiceNo)
          + ' (' + FloatToStr(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat) +
          ' ' + DatumString + ')');
        cdsInvoiceHead.Post;

        // copy and insert InvoiceLO
        cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        cdsInvoiceLO.Active := True;
        cdsInvoiceLO.First;
        x := 1;
        While not cdsInvoiceLO.Eof do
        Begin
          SetLength(InvoiceLO, x);

          SetLength(InvoiceLO[x - 1], cdsInvoiceLO.FieldCount);

          for i := 0 to cdsInvoiceLO.FieldCount - 1 do
          Begin
            InvoiceLO[x - 1, i] := cdsInvoiceLO.Fields[i].Value;
          End;
          x := succ(x);
          cdsInvoiceLO.Next;
        End;

        // cdsInvoiceLO.Active:= True ;

        For x := Low(InvoiceLO) to High(InvoiceLO) do
        Begin
          cdsInvoiceLO.Append;
          For i := 0 to cdsInvoiceLO.FieldCount - 1 do
            cdsInvoiceLO.Fields[i].Value := InvoiceLO[x, i];
          cdsInvoiceLO.FieldByName('InternalInvoiceNo').AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger;
          cdsInvoiceLO.FieldByName('ModifiedUser').AsInteger := ThisUser.UserID;
          cdsInvoiceLO.FieldByName('CreatedUser').AsInteger := ThisUser.UserID;
          cdsInvoiceLO.FieldByName('DateCreated').AsSQLTimeStamp :=
            DateTimeToSQLTimeStamp(Now);
          cdsInvoiceLO.Post;
        End;

        // copy and insert InvoiceDetail
        cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        cdsInvoiceDetail.Active := True;
        cdsInvoiceDetail.First;
        x := 1;
        While not cdsInvoiceDetail.Eof do
        Begin
          SetLength(InvoiceDetail, x);

          SetLength(InvoiceDetail[x - 1], cdsInvoiceDetail.FieldCount);

          for i := 0 to cdsInvoiceDetail.FieldCount - 1 do
          Begin
            InvoiceDetail[x - 1, i] := cdsInvoiceDetail.Fields[i].Value;
          End;
          x := succ(x);
          cdsInvoiceDetail.Next;
        End;

        cdsInvoiceDetail.Active := False;
        cdsInvoiceDetail.Active := True;

        For x := Low(InvoiceDetail) to High(InvoiceDetail) do
        Begin
          Try
            cdsInvoiceDetail.Append;
            For i := 0 to cdsInvoiceDetail.FieldCount - 1 do
              cdsInvoiceDetail.Fields[i].Value := InvoiceDetail[x, i];
            cdsInvoiceDetail.FieldByName('InternalInvoiceNo').AsInteger :=
              cdsInvoiceHeadInternalInvoiceNo.AsInteger;
            cdsInvoiceDetail.FieldByName('ModifiedUser').AsInteger :=
              ThisUser.UserID;
            cdsInvoiceDetail.FieldByName('CreatedUser').AsInteger :=
              ThisUser.UserID;
            cdsInvoiceDetail.FieldByName('DateCreated').AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(Now);
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat * (-1);

            // cdsInvoiceDetailPrice.

            // cdsInvoiceDetailVatValue.AsFloat                             := cdsInvoiceDetailVatValue.AsFloat * (-1) ;
            cdsInvoiceDetailintNM3.AsFloat :=
              cdsInvoiceDetailintNM3.AsFloat * (-1);
            cdsInvoiceDetailNoOfPieces.AsInteger :=
              cdsInvoiceDetailNoOfPieces.AsInteger * (-1);
            cdsInvoiceDetailLinealMeter.AsFloat :=
              cdsInvoiceDetailLinealMeter.AsFloat * (-1);
            cdsInvoiceDetailNominalM3.AsFloat :=
              cdsInvoiceDetailNominalM3.AsFloat * (-1);
            cdsInvoiceDetailActualNetM3.AsFloat :=
              cdsInvoiceDetailActualNetM3.AsFloat * (-1);
            cdsInvoiceDetailVolume_OrderUnit.AsFloat :=
              cdsInvoiceDetailVolume_OrderUnit.AsFloat * (-1);
            cdsInvoiceDetailProductValueWOFreight.AsFloat :=
              cdsInvoiceDetailProductValueWOFreight.AsFloat * (-1);
            cdsInvoiceDetailNoOfPkgs.AsFloat :=
              cdsInvoiceDetailNoOfPkgs.AsFloat * (-1);
            cdsInvoiceDetailVatValue.AsFloat :=
              cdsInvoiceDetailVatValue.AsFloat * (-1);
            cdsInvoiceDetailFreightCostCurr.AsFloat :=
              cdsInvoiceDetailFreightCostCurr.AsFloat * (-1);

            cdsInvoiceDetail.Post;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;
        End;

        // copy and insert InvoiceDetail
        cdsInvoiceShipTo.Active := False;
        cdsInvoiceShipTo.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        cdsInvoiceShipTo.Active := True;
        cdsInvoiceShipTo.First;
        x := 1;
        While not cdsInvoiceShipTo.Eof do
        Begin
          SetLength(InvoiceShipTo, x);

          SetLength(InvoiceShipTo[x - 1], cdsInvoiceShipTo.FieldCount);

          for i := 0 to 3 do // cdsInvoiceShipToAddress.FieldCount-1 do
          Begin
            InvoiceShipTo[x - 1, i] := cdsInvoiceShipTo.Fields[i].Value;
          End;
          x := succ(x);
          cdsInvoiceShipTo.Next;
        End;

        For x := Low(InvoiceShipTo) to High(InvoiceShipTo) do
        Begin
          cdsInvoiceShipTo.Append;
          For i := 0 to 3 do // cdsInvoiceShipTo.FieldCount-1 do
            cdsInvoiceShipTo.Fields[i].Value := InvoiceShipTo[x, i];
          cdsInvoiceShipTo.FieldByName('InternalInvoiceNo').AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger;
          cdsInvoiceShipTo.Post;
        End;

        if InvoiceType = 0 then
        Begin
          cdsInvoice_Credited.Active := True;
          cdsInvoice_Credited.Insert;
          cdsInvoice_CreditedInternalInvoiceNo.AsInteger := InternalInvoiceNo;
          cdsInvoice_CreditedNewInternalInvoiceNo.AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger;
          cdsInvoice_CreditedModifiedUser.AsInteger := ThisUser.UserID;
          cdsInvoice_CreditedCreatedUser.AsInteger := ThisUser.UserID;
          cdsInvoice_CreditedDateCreated.AsSQLTimeStamp :=
            DateTimeToSQLTimeStamp(Now);
          cdsInvoice_Credited.Post;
        End
        else if InvoiceType = 8 then
        Begin
          cdsInvoice_Credited_Komp.Active := True;
          cdsInvoice_Credited_Komp.Insert;
          cdsInvoice_Credited_KompInternalInvoiceNo.AsInteger :=
            InternalInvoiceNo;
          cdsInvoice_Credited_KompNewInternalInvoiceNo.AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger;
          cdsInvoice_Credited_KompUserModified.AsInteger := ThisUser.UserID;
          cdsInvoice_Credited_KompUserCreated.AsInteger := ThisUser.UserID;
          cdsInvoice_Credited_KompDateCreated.AsSQLTimeStamp :=
            DateTimeToSQLTimeStamp(Now);
          cdsInvoice_Credited_Komp.Post;
        End;

        if cdsInvoiceHead.ChangeCount > 0 then
          if cdsInvoiceHead.ApplyUpdates(0) > 0 then
            myRollBack := True
          else
            cdsInvoiceHead.CommitUpdates;

        if cdsInvoiceLO.ChangeCount > 0 then
          if cdsInvoiceLO.ApplyUpdates(0) > 0 then
            myRollBack := True
          else
            cdsInvoiceLO.CommitUpdates;

        if cdsInvoiceDetail.ChangeCount > 0 then
          if cdsInvoiceDetail.ApplyUpdates(0) > 0 then
            myRollBack := True
          else
            cdsInvoiceDetail.CommitUpdates;

        if cdsInvoiceShipTo.ChangeCount > 0 then
          if cdsInvoiceShipTo.ApplyUpdates(0) > 0 then
            myRollBack := True
          else
            cdsInvoiceShipTo.CommitUpdates;

        if cdsInvoice_Credited.Active then
        Begin
          if cdsInvoice_Credited.ChangeCount > 0 then
            if cdsInvoice_Credited.ApplyUpdates(0) > 0 then
              myRollBack := True
            else
              cdsInvoice_Credited.CommitUpdates;
        End;

        if cdsInvoice_Credited_Komp.Active then
        Begin
          if cdsInvoice_Credited_Komp.ChangeCount > 0 then
            if cdsInvoice_Credited_Komp.ApplyUpdates(0) > 0 then
              myRollBack := True
            else
              cdsInvoice_Credited_Komp.CommitUpdates;
        End;

        { Try
          sq_RemoveFrom_InvLoad.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
          sq_RemoveFrom_InvLoad.ExecSQL ;
          except
          On E: Exception do
          Begin
          dmsSystem.FDoLog(E.Message) ;
          //      ShowMessage(E.Message);
          Raise ;
          End ;
          end;
        }

        if myRollBack = True then
        Begin
          dmsConnector.Rollback;
          showmessage('Error confirming, operation rollbacked');
          // NewInternalInvoiceNo:= 0 ;
        End
        else
        Begin
          dmsConnector.Commit;
          Result := NewInternalInvoiceNo;
        End;

      Except
        On E: Exception do
        Begin
          dmsConnector.Rollback;
          dmsSystem.FDoLog(E.Message);
          Raise;
        End;
      End;

    Finally
      cxDBRichEdit3.Free;
      cdsInvoiceNumber.Active := False;
      FreeAndNil(fSelectMultInvoice);
    End;
  Finally
    cdsInvoiceDetailInclInPrice.OnChange := cdsInvoiceDetailInclInPriceChange;
  End;
end;

procedure TdmVidaInvoice.DataModuleCreate(Sender: TObject);
begin
  fInternalInvoiceNo := -1;
  mtInvoiceType.Active := True;
  mtInvoiceType.InsertRecord([11, 'VP Purchase']);
  mtInvoiceType.InsertRecord([10, 'UK Purchase']);
  mtInvoiceType.InsertRecord([9, 'VIDA UK']);
  mtInvoiceType.InsertRecord([8, 'BKO']);
  mtInvoiceType.InsertRecord([7, 'VTA']);
  mtInvoiceType.InsertRecord([6, 'AGENT']);
  mtInvoiceType.InsertRecord([5, 'FW']);
  mtInvoiceType.InsertRecord([4, 'USA (K2)']);
  mtInvoiceType.InsertRecord([3, 'Purchase Invoice']);
  mtInvoiceType.InsertRecord([2, 'Proforma, (move pkgs to inventory)']);
  mtInvoiceType.InsertRecord([1, 'Proforma, (Invoice later)']);
  mtInvoiceType.InsertRecord([0, 'VIDA (K1)']);
  if not dmsContact.cds_Country.Active then
    dmsContact.cds_Country.Active := True;
end;

// Uppdaterar SequensNo och Checked kolumn i invoice details
procedure TdmVidaInvoice.RefreshCHECKED;
begin
  mt_InvDtl_Att.First;
  While not mt_InvDtl_Att.Eof do
  Begin
    mt_InvDtl_Att.Edit;
    mt_InvDtl_AttSequensNo.AsInteger := 0;
    mt_InvDtl_AttChecked.AsInteger := 0;
    mt_InvDtl_Att.Post;
    mt_InvDtl_Att.Next;
  End;

  { dmVidaInvoice.cds_InvDtl_Att.Active:= False ;
    dmVidaInvoice.sq_InvDtl_Att.Close ;
    dmVidaInvoice.sq_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
    dmVidaInvoice.sq_InvDtl_Att.ParamByName('ShippingPlanNo').AsInteger:= cds_Att_Ext_ServicesIIShippingPlanNo.AsInteger ;
    dmVidaInvoice.sq_InvDtl_Att.ParamByName('Sequensno').AsInteger:= dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
    dmVidaInvoice.cds_InvDtl_Att.Active:= True ; }

  if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
  Begin
    mt_AttestRow.Filter := 'InternalInvoiceNo = ' +
      dmVidaInvoice.cds_Att_Ext_ServicesIIInternalInvoiceNo.AsString +
      ' AND SequensNo = ' +
      dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsString;
    // if cds_Att_Ext_ServicesIIShippingPlanNo.AsInteger  > 0 then
    // mt_AttestRow.Filter  := mt_AttestRow.Filter + ' AND ShippingPlanNo = ' + cds_Att_Ext_ServicesIIShippingPlanNo.AsString ;
    mt_AttestRow.Filtered := True;
    mt_AttestRow.First;
    While not mt_AttestRow.Eof do
    Begin
      if mt_InvDtl_Att.FindKey([mt_AttestRowInternalInvoiceNo.AsInteger,
        mt_AttestRowShippingPlanNo.AsInteger,
        mt_AttestRowInvoiceDetailNo.AsInteger]) then
      Begin
        mt_InvDtl_Att.Edit;
        mt_InvDtl_AttSequensNo.AsInteger := mt_AttestRowSequensNo.AsInteger;
        mt_InvDtl_AttChecked.AsInteger := 1;
        mt_InvDtl_Att.Post;
      End;
      mt_AttestRow.Next;
    End; // while
  end; // if
end;

procedure TdmVidaInvoice.AllRows;
begin
  With dmVidaInvoice do
  Begin
    Try
      mt_InvDtl_Att.Filter := 'TypeOfRow = 1';
      mt_InvDtl_Att.Filtered := True;
      mt_InvDtl_Att.First;

      // mt_AttestRow.Filter:= 'InternalInvoiceNo = '+mt_InvDtl_AttInternalInvoiceNo.AsString ;
      // mt_AttestRow.Filtered:= True ;
      mt_AttestRow.First;
      While not mt_AttestRow.Eof do
        mt_AttestRow.Delete;

      While not mt_InvDtl_Att.Eof do
      Begin
        mt_AttestRow.Insert;
        mt_AttestRowInternalInvoiceNo.AsInteger :=
          mt_InvDtl_AttInternalInvoiceNo.AsInteger;
        mt_AttestRowShippingPlanNo.AsInteger :=
          mt_InvDtl_AttShippingPlanNo.AsInteger;
        mt_AttestRowSequensNo.AsInteger :=
          dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger;
        mt_AttestRowInvoiceDetailNo.AsInteger :=
          mt_InvDtl_AttInvoiceDetailNo.AsInteger;
        mt_AttestRow.Post;
        mt_InvDtl_Att.Next;
      End;

    Finally
      dmVidaInvoice.mt_InvDtl_Att.Filter := 'InternalInvoiceNo = ' +
        cdsInvoiceHead_IIInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
        cdsInvoiceLOShippingPlanNo.AsString;

      mt_InvDtl_Att.Filtered := True;
      RefreshCHECKED;
      AttestChanged := True;
    End;
  End; // With
end;

procedure TdmVidaInvoice.AllLORows;
begin
  With dmVidaInvoice do
  Begin
    Try
      mt_InvDtl_Att.Filter := 'TypeOfRow = 1' + ' AND ShippingPlanNo = ' +
        mt_InvDtl_AttShippingPlanNo.AsString;
      mt_InvDtl_Att.Filtered := True;
      mt_InvDtl_Att.First;

      // mt_AttestRow.Filter:= 'InternalInvoiceNo = '+mt_InvDtl_AttInternalInvoiceNo.AsString ;
      // mt_AttestRow.Filtered:= True ;
      mt_AttestRow.First;
      While not mt_AttestRow.Eof do
        mt_AttestRow.Delete;

      While not mt_InvDtl_Att.Eof do
      Begin
        mt_AttestRow.Insert;
        mt_AttestRowInternalInvoiceNo.AsInteger :=
          mt_InvDtl_AttInternalInvoiceNo.AsInteger;
        mt_AttestRowShippingPlanNo.AsInteger :=
          mt_InvDtl_AttShippingPlanNo.AsInteger;
        mt_AttestRowSequensNo.AsInteger :=
          dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger;
        mt_AttestRowInvoiceDetailNo.AsInteger :=
          mt_InvDtl_AttInvoiceDetailNo.AsInteger;
        mt_AttestRow.Post;
        mt_InvDtl_Att.Next;
      End;

    Finally
      dmVidaInvoice.mt_InvDtl_Att.Filter := 'InternalInvoiceNo = ' +
        cdsInvoiceHead_IIInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
        cdsInvoiceLOShippingPlanNo.AsString;

      mt_InvDtl_Att.Filtered := True;
      RefreshCHECKED;
      AttestChanged := True;
    End;
  End; // With
end;

function TdmVidaInvoice.InvoiceAttested(const Quick_InvoiceNo: Integer)
  : Integer;
Begin
  sq_InvAttested.ParamByName('Quick_InvoiceNo').AsInteger := Quick_InvoiceNo;
  sq_InvAttested.Open;
  Result := sq_InvAttestedSequensNo.AsInteger;
  sq_InvAttested.Close;
End;

function TdmVidaInvoice.SearchLONo(const LONo: Integer;
  Var InvoiceType: Integer): Integer;
Begin
  InvoiceType := GetInvoiceTypeByLONo(LONo);
  if InvoiceType > -1 then
    Result := checkIfMoreThanOneInvoiceOnLO(LONo, InvoiceType)
  else
    Result := -1;

  { sq_SearchLONo.ParamByName('ShippingPlanNo').AsInteger:= LONo ;
    sq_SearchLONo.ParamByName('InvoiceType').AsInteger:= InvoiceType ;
    sq_SearchLONo.Open ;
    if sq_SearchLONoInternalInvoiceNo.AsInteger > 0 then
    Result:= sq_SearchLONoInternalInvoiceNo.AsInteger
    else
    Result:= -1 ;
    sq_SearchLONo.Close ; }
End;

Function TdmVidaInvoice.Get_InternalInvoiceNo(Var InvoiceType: Integer;
  const LoadNo: Integer): Integer;
Begin
  sq_SearchLoadNo.Close;
  sq_SearchLoadNo.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_SearchLoadNo.Open;
  if not sq_SearchLoadNo.Eof then
  Begin
    Result := sq_SearchLoadNoInternalInvoiceNo.AsInteger;
    InvoiceType := sq_SearchLoadNoInvoiceType.AsInteger;
  End
  else
  Begin
    Result := -1;
    InvoiceType := -1;
  End;
  sq_SearchLoadNo.Close;
End;

Function TdmVidaInvoice.GetInvoiceDocTextByOrderNo(const OrderNo: Integer;
  RichEdit1: TRichEdit): Variant;
Begin
  Result := '';
  sq_GetInvTexts.Close;
  sq_GetInvTexts.ParamByName('OrderNo').AsInteger := OrderNo;
  sq_GetInvTexts.Open;
  sq_GetInvTexts.First;
  While not sq_GetInvTexts.Eof do
  Begin
    RichEdit1.Lines.Add(sq_GetInvTextsDocText.AsVariant);
    Result := Result + sq_GetInvTextsDocText.AsVariant;
    sq_GetInvTexts.Next;
  End;
  sq_GetInvTexts.Close;
End;

Function TdmVidaInvoice.GetInvoiceTextByClient(const ClientNo: Integer)
  : Variant;
Begin
  Result := '';
  sq_GetClientInvTexts.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_GetClientInvTexts.Open;
  sq_GetClientInvTexts.First;
  if not sq_GetClientInvTexts.Eof then
    Result := sq_GetClientInvTextsDocText.AsVariant;
  sq_GetClientInvTexts.Close;
End;

procedure TdmVidaInvoice.dspInvoiceShipToAddressGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'InvoiceShipToAddress';
end;

function TdmVidaInvoice.GetPaymentText(const CurrencyNo, LanguageCode,
  AddressNo: Integer): String;
Begin
  sq_GetPaymentText.Close;
  sq_GetPaymentText.ParamByName('CurrencyNo').AsInteger := CurrencyNo;
  sq_GetPaymentText.ParamByName('LanguageCode').AsInteger := LanguageCode;
  sq_GetPaymentText.ParamByName('AddressNo').AsInteger := AddressNo;
  sq_GetPaymentText.Open;
  if not sq_GetPaymentText.Eof then
    Result := sq_GetPaymentTextPaymentText.AsString
  else
    Result := '';
  sq_GetPaymentText.Close;
End;

procedure TdmVidaInvoice.DataModuleDestroy(Sender: TObject);
begin
  mtInvoiceType.Active := False;
end;

procedure TdmVidaInvoice.OpenInvoiceHeaderForAttest(const InvoiceNo,
  InvoiceType: Integer);
Begin
  cdsInvoiceHead_II.SQL.Clear;
  cdsInvoiceHead_II.SQL.Add('Select * FROM InvoiceHeader IH');
  Case InvoiceType of
    0:
      Begin
        cdsInvoiceHead_II.SQL.Add
          ('Inner Join dbo.InvoiceNumber invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo');
      End;
    1, 2:
      cdsInvoiceHead_II.SQL.Add
        ('Inner Join dbo.ProformaInvoiceNumber invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo');
    3:
      cdsInvoiceHead_II.SQL.Add
        ('Inner Join dbo.InvoiceNumber_PO invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo');
    4:
      cdsInvoiceHead_II.SQL.Add
        ('Inner Join dbo.InvoiceNo_USA invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo');
    5:
      cdsInvoiceHead_II.SQL.Add
        ('Inner Join dbo.InvNo_FW invNo on invNo.InternalInvoiceNo = IH.InternalInvoiceNo');
  End;
  cdsInvoiceHead_II.SQL.Add('WHERE');
  cdsInvoiceHead_II.SQL.Add('IH.InvoiceType = ' + IntToStr(InvoiceType));
  cdsInvoiceHead_II.SQL.Add('AND IH.InternalInvoiceNo = ' +
    IntToStr(InvoiceNo));
  // if thisuser.UserID = 8 then  cdsInvoiceHead_II.SQL.SaveToFile('cdsInvoiceHead_II.txt');
End;

{ 0 VIDA (K1)
  1 PROFORMA (invoice later)
  2 PROFORMA (move pkgs)
  3 PURCHASE INVOICE
  4 USA (K2)
  5 FW (K4)
  ALLA }


// Select InvoiceNo FROM [dbo].[InvoiceNos]
// WHERE InternalInvoiceNo = :InternalInvoiceNo
function TdmVidaInvoice.GetInvoiceNo(const InternalInvoiceNo,
  InvoiceType: Integer): Integer;
begin
  sq_GetInvoiceNumber.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  Try
    sq_GetInvoiceNumber.Open;
    if not sq_GetInvoiceNumber.Eof then
      Result := sq_GetInvoiceNumberInvoiceNo.AsInteger
    else
      Result := 0;

  Finally
    sq_GetInvoiceNumber.Close;
  End;

  { sq_GetInvNo.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
    Try
    sq_GetInvNo.Open ;
    if not sq_GetInvNo.Eof then
    Result  :=  sq_GetInvNoInvoiceNo.AsInteger
    else
    Result  := 0 ;

    Finally
    sq_GetInvNo.Close ;
    End ; }
End; // Proc

(*
  With dmVidaInvoice do
  Begin
  Case InvoiceType of
  0    :  Begin
  Result  := dmsConnector.NextMaxNo('K1') ;
  End ;

  1,2  :  Begin
  Result  := dmsConnector.NextMaxNo('Proforma') ;
  End ;

  3   :  Begin
  Result  := dmsConnector.NextMaxNo('PO') ;
  End ;

  4   :  Begin
  Result  := dmsConnector.NextMaxNo('K2') ;
  End ;

  5   :  Begin
  Result  := dmsConnector.NextMaxNo('K4') ;
  End ;
  End ;//case§
  End ;// With dmVidaInvoice do
*)
// End ;

function TdmVidaInvoice.checkIfMoreThanOneInvoiceOnLO(const LONo,
  InvoiceType: Integer): Integer;
var
  fSelectMultInvoice: TfSelectMultInvoice;
Begin
  cds_NoOfInvoices.SQL.Clear;
  cds_NoOfInvoices.SQL.Add('SELECT distinct');
  Case InvoiceType of
    0:
      cds_NoOfInvoices.SQL.Add('INO.InvoiceNo AS Fakturnr,');
    1:
      cds_NoOfInvoices.SQL.Add('INO.ProformaInvoiceNo AS Fakturnr,');
    2:
      cds_NoOfInvoices.SQL.Add('INO.ProformaInvoiceNo AS Fakturnr,');
    3:
      cds_NoOfInvoices.SQL.Add('INO.PO_InvoiceNo AS Fakturnr,');
    4:
      cds_NoOfInvoices.SQL.Add('INO.InvoiceNo AS Fakturnr,');
    5:
      cds_NoOfInvoices.SQL.Add('INO.InvoiceNo AS Fakturnr,');
  End; // Case
  cds_NoOfInvoices.SQL.Add
    ('IL.ShippingPlanNo AS LO, IH.InvoiceDate AS Fakturadatum, IL.InternalInvoiceNo');
  cds_NoOfInvoices.SQL.Add('FROM');
  cds_NoOfInvoices.SQL.Add('dbo.InvoiceLO IL');
  cds_NoOfInvoices.SQL.Add
    ('Inner Join dbo.InvoiceHeader IH ON IH.InternalInvoiceNo = IL.InternalInvoiceNo');
  Case InvoiceType of
    0:
      cds_NoOfInvoices.SQL.Add
        ('Inner Join dbo.InvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo');
    1:
      cds_NoOfInvoices.SQL.Add
        ('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo');
    2:
      cds_NoOfInvoices.SQL.Add
        ('Inner Join dbo.ProformaInvoiceNumber INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo');
    3:
      cds_NoOfInvoices.SQL.Add
        ('Inner Join dbo.InvoiceNumber_PO INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo');
    4:
      cds_NoOfInvoices.SQL.Add
        ('Inner Join dbo.InvoiceNo_USA INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo');
    5:
      cds_NoOfInvoices.SQL.Add
        ('Inner Join dbo.InvNo_FW INo ON INo.InternalInvoiceNo = IH.InternalInvoiceNo');
  End;

  cds_NoOfInvoices.SQL.Add('WHERE IL.ShippingPlanNo = ' + IntToStr(LONo));

  cds_NoOfInvoices.Active := True;

  if cds_NoOfInvoices.RecordCount > 1 then
  Begin
    fSelectMultInvoice := TfSelectMultInvoice.Create(nil);
    try
      fSelectMultInvoice.ShowModal;
      Result := cds_NoOfInvoicesInternalInvoiceNo.AsInteger;
    finally
      FreeAndNil(fSelectMultInvoice);
    end;
  End
  else if cds_NoOfInvoices.RecordCount = 1 then
    Result := cds_NoOfInvoicesInternalInvoiceNo.AsInteger
  else
    Result := -1;
  cds_NoOfInvoices.Active := False;
End;

function TdmVidaInvoice.NextProformaNo(const InternalInvoiceNo
  : Integer): Integer;
begin
  Try
    sp_GetNextProformaInvNo.ParamByName('@InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sp_GetNextProformaInvNo.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_GetNextProformaInvNo.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
  try
    // Result := sp_GetNextProformaInvNo.ParamByName('MaxNo').AsInteger;
  finally
    sp_GetNextProformaInvNo.Close;
  end;
end;

procedure TdmVidaInvoice.OpenInvoiceSpec(const InternalInvoiceNo: Integer);
Begin
  cds_LoadPackages.Active := False;
  // dsp_LoadPackages.DataSet   := sq_LoadPackages ;
  cds_LoadPackages.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  cds_LoadPackages.Active := True;
  cds_LoadPackages.UpdateOptions.ReadOnly := False;
End;

procedure TdmVidaInvoice.OpenKortSkeppFS(const InternalInvoiceNo: Integer);
begin
  cds_LoadPackagesII.Active := False;
  cds_LoadPackagesII.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  cds_LoadPackagesII.Active := True;
end;

procedure TdmVidaInvoice.OpenPkgsRemovedToInventory(const InternalInvoiceNo
  : Integer);
begin
  cds_LoadPackagesIII.Active := False;
  cds_LoadPackagesIII.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  cds_LoadPackagesIII.Active := True;
end;

// check if SpecLoad exist otherwise create a new specload
function TdmVidaInvoice.SpecLoad(const CopyLoadNo: Integer): Integer;
Var
  NewLoadNo: Integer;

  function GetNextLDNo: Integer;
  Begin
    sq_GetNextLDNo.ParamByName('LoadNo').AsInteger := NewLoadNo;
    sq_GetNextLDNo.Open;
    Try
      if not sq_GetNextLDNo.Eof then
        Result := sq_GetNextLDNoNextLDNo.AsInteger
      else
        Result := 1;
    Finally
      sq_GetNextLDNo.Close;
    End;
  End;

  Function PackagesMovedToSpecLoad: Boolean;
  Begin
    Result := False;
    cds_LoadPackagesII.First;
    if cds_LoadPackagesII.RecordCount > 0 then
      Result := True;
  End;

Begin
  NewLoadNo := 0;
  // if (PackagesMovedToSpecLoad) and
  if ((cds_IH_SpecLoadSpecLoadNo.AsInteger < 1) or
    (cds_IH_SpecLoadSpecLoadNo.IsNull)) then
  Begin
    NewLoadNo := dmsConnector.NextMaxNo('Loads');
    GlobalLoadDetailNo := 1;
    if CheckIfLoadNoIsOK(NewLoadNo) = False then
    Begin
      NewLoadNo := dmsConnector.NextMaxNo('Loads');
    End;
    if cds_IH_SpecLoad.State in [dsBrowse] then
      cds_IH_SpecLoad.Edit;
    cds_IH_SpecLoadSpecLoadNo.AsInteger := NewLoadNo;
    cds_IH_SpecLoad.Post;
    CopyLoad(NewLoadNo, CopyLoadNo);
    // Making a new Load by copying a load attached to invoice
  End // if (PackagesMovedToSpecLoad) and ((cds_IH_SpecLoadSpecLoadNo.AsInteger < 1) or (cds_IH_SpecLoadSpecLoadNo.IsNull)) then
  else // Use existing load, pickup next LoadDetailNo
  Begin
    NewLoadNo := cds_IH_SpecLoadSpecLoadNo.AsInteger;
    if CheckIfLoadNoIsOK(NewLoadNo) = True then
    // Lite bakvänt här... OM lasten finns returneras FALSE
    Begin
      NewLoadNo := dmsConnector.NextMaxNo('Loads');
      GlobalLoadDetailNo := 1;
      if CheckIfLoadNoIsOK(NewLoadNo) = False then
      Begin
        NewLoadNo := dmsConnector.NextMaxNo('Loads');
      End;
      if cds_IH_SpecLoad.State in [dsBrowse] then
        cds_IH_SpecLoad.Edit;
      cds_IH_SpecLoadSpecLoadNo.AsInteger := NewLoadNo;
      cds_IH_SpecLoad.Post;
      CopyLoad(NewLoadNo, CopyLoadNo);
      // Making a new Load by copying a load attached to invoice
    End
    else
    Begin
      if GlobalLoadDetailNo = 0 then
        GlobalLoadDetailNo := GetNextLDNo;

      // Open existing Load
      cds_LoadHead.Active := False;
      cds_LoadHead.ParamByName('LoadNo').AsInteger := NewLoadNo;
      cds_LoadHead.Active := True;

      cds_CopyLSP.Active := False;
      cds_CopyLSP.ParamByName('LoadNo').AsInteger := NewLoadNo;
      cds_CopyLSP.Active := True;

      cds_CopyLD.Active := False;
      cds_CopyLD.ParamByName('LoadNo').AsInteger := NewLoadNo;
      cds_CopyLD.Active := True;
    End;
  End; // else //Use existing load, pickup next LoadDetailNo
  Result := NewLoadNo;
End;

// Executed when user save the spec from the invoice
function TdmVidaInvoice.SaveInvoiceSpecChanges(const InternalInvoiceNo: Integer)
  : Boolean;
Begin
  cds_LoadPackagesII.First;
  cds_LoadPackagesII.Filter := 'NoOfPackages = 2';
  cds_LoadPackagesII.Filtered := True;
  Try

    if cds_LoadPackagesII.RecordCount > 0 then
    Begin

      cds_LoadHead.Active := False;
      cds_CopyLSP.Active := False;
      cds_CopyLD.Active := False;

      cds_LoadHead.Active := True;
      cds_CopyLSP.Active := True;
      cds_CopyLD.Active := True;

      // START A TRANSACTION
      // dmsConnector.StartTransaction ;
      Try

        GlobalLoadDetailNo := 0;

        // check if SpecLoad exist otherwise create a new specload
        SpecLoad(cds_LoadPackagesIILoadNo.AsInteger);

        While not cds_LoadPackagesII.Eof do
        Begin
          if cds_LoadPackages.Locate('PackageNo;SupplierCode',
            VarArrayOf([cds_LoadPackagesIIPACKAGENO.AsInteger,
            cds_LoadPackagesIISupplierCode.AsString]), []) then
            cds_LoadPackages.Delete;
          AddLONoToLoadIfMissing(cds_LoadPackagesIIShippingPlanNo.AsInteger,
            cds_LoadPackagesIILoadNo.AsInteger, cds_LoadHeadLoadNo.AsInteger);
          AddPackageToLoadDetail(cds_LoadHeadLoadNo.AsInteger);
          // cds_LoadHeadLoadNo is NewLoadNo
          GlobalLoadDetailNo := succ(GlobalLoadDetailNo);
          cds_LoadPackagesII.Edit;
          cds_LoadPackagesIINoOfPackages.AsInteger := 1;
          cds_LoadPackagesII.Post;
          // cds_LoadPackagesII.Delete ;
        End;

        if cds_IH_SpecLoad.ChangeCount > 0 then
        Begin
          cds_IH_SpecLoad.ApplyUpdates(0);
          cds_IH_SpecLoad.CommitUpdates;
        End;

        if cds_LoadHead.ChangeCount > 0 then
        Begin
          cds_LoadHead.ApplyUpdates(0);
          cds_LoadHead.CommitUpdates;
        End;

        if cds_CopyLSP.ChangeCount > 0 then
        Begin
          cds_CopyLSP.ApplyUpdates(0);
          cds_CopyLSP.CommitUpdates;
        End;

        if cds_CopyLD.ChangeCount > 0 then
        Begin
          cds_CopyLD.ApplyUpdates(0);
          cds_CopyLD.CommitUpdates;
        End;

        if cds_LoadPackages.ChangeCount > 0 then
        Begin
          cds_LoadPackages.ApplyUpdates(0);
          cds_LoadPackages.CommitUpdates;
        End;

        // dmsConnector.Commit ;
        Result := True;
      Except
        if cds_IH_SpecLoad.ChangeCount > 0 then
          cds_IH_SpecLoad.CancelUpdates;
        if cds_LoadHead.ChangeCount > 0 then
          cds_LoadHead.CancelUpdates;
        if cds_CopyLSP.ChangeCount > 0 then
          cds_CopyLSP.CancelUpdates;
        if cds_CopyLD.ChangeCount > 0 then
          cds_CopyLD.CancelUpdates;
        if cds_LoadPackagesII.ChangeCount > 0 then
          cds_LoadPackagesII.CancelUpdates;
        // dmsConnector.Rollback ;
        Result := False;
        showmessage('Failed to save packages to spec, operation rollbacked');

      End;
    End // if cds_LoadPackages.RecordCount > 0 then
    else
    Begin
      Result := False;
      // ShowMessage('Inga åtgärder gjorda...') ;
    End;
  Finally
    cds_LoadPackagesII.Filtered := False;
  End;
End;

function TdmVidaInvoice.SaveInvoiceSpecToInventory(const InternalInvoiceNo
  : Integer): Boolean;
Begin
  cds_LoadPackagesIII.First;
  cds_LoadPackagesIII.Filter := 'NoOfPackages = 2';
  cds_LoadPackagesIII.Filtered := True;
  Try

    if cds_LoadPackagesIII.RecordCount > 0 then
    Begin

      // START A TRANSACTION
      // dmsConnector.StartTransaction ;
      Try

        // GlobalLoadDetailNo:= 0 ;

        // check if SpecLoad exist otherwise create a new specload
        // SpecLoad(cds_LoadPackagesLoadNo.AsInteger) ;

        cds_LoadPackagesIII.First;
        While not cds_LoadPackagesIII.Eof do
        Begin
          // 1) Remove package from current load to the inventory selected by user (PIPNo, LIPNo stored in IH_SpecLoad)
          RemovePkgFromLoad;
          // GlobalLoadDetailNo:= succ(GlobalLoadDetailNo) ;
          cds_LoadPackagesIII.Edit;
          cds_LoadPackagesIIINoOfPackages.AsInteger := 1;
          cds_LoadPackagesIII.Post;
          // cds_LoadPackages.Next ;
        End;

        if cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
          cds_IH_SpecLoad.Post;
        if cds_IH_SpecLoad.ChangeCount > 0 then
        Begin
          cds_IH_SpecLoad.ApplyUpdates(0);
          cds_IH_SpecLoad.CommitUpdates;
        End;

        // if cds_CopyLSP.ChangeCount > 0 then
        // cds_CopyLSP.ApplyUpdates(0) ;
        // if cds_CopyLD.ChangeCount > 0 then
        // cds_CopyLD.ApplyUpdates(0) ;
        if cds_LoadPackages.ChangeCount > 0 then
        Begin
          cds_LoadPackages.ApplyUpdates(0);
          cds_LoadPackages.CommitUpdates;
        End;

        if cds_LoadPackagesIII.ChangeCount > 0 then
        Begin
          cds_LoadPackagesIII.ApplyUpdates(0);
          cds_LoadPackagesIII.CommitUpdates;
        End;

        // dmsConnector.Commit ;
        Result := True;
      Except
        if cds_IH_SpecLoad.ChangeCount > 0 then
          cds_IH_SpecLoad.CancelUpdates;
        if cds_LoadHead.ChangeCount > 0 then
          cds_LoadHead.CancelUpdates;
        if cds_CopyLSP.ChangeCount > 0 then
          cds_CopyLSP.CancelUpdates;
        if cds_CopyLD.ChangeCount > 0 then
          cds_CopyLD.CancelUpdates;
        if cds_LoadPackages.ChangeCount > 0 then
          cds_LoadPackages.CancelUpdates;
        if cds_LoadPackagesIII.ChangeCount > 0 then
          cds_LoadPackagesIII.CancelUpdates;
        // dmsConnector.Rollback ;
        Result := False;
        showmessage
          ('Failed to move packages to inventory, operation rollbacked');
      End;
    End // if cds_LoadPackages.RecordCount > 0 then
    else
    Begin
      Result := False;
      // ShowMessage('Inga åtgärder gjorda...') ;
    End;
  Finally
    cds_LoadPackagesIII.Filtered := False;
  End;
End;

// 1) Remove package from current load
// 2) Add Package to new load, if a load does not exist then create a load
Procedure TdmVidaInvoice.AddPackageToLoadDetail(const NewLoadNo: Integer);
Begin
  if not cds_CopyLD.Locate('PackageNo;SupplierCode',
    VarArrayOf([cds_LoadPackagesIIPACKAGENO.AsInteger,
    cds_LoadPackagesIISupplierCode.AsString]), []) then
  Begin
    cds_CopyLD.Insert;
    cds_CopyLDLoadNo.AsInteger := NewLoadNo;
    cds_CopyLDLoadDetailNo.AsInteger := GlobalLoadDetailNo;
    cds_CopyLDShippingPlanNo.AsInteger :=
      cds_LoadPackagesIIShippingPlanNo.AsInteger;
    cds_CopyLDPackageNo.AsInteger := cds_LoadPackagesIIPACKAGENO.AsInteger;
    cds_CopyLDNoOfPackages.AsInteger := 1;
    cds_CopyLDPackageTypeNo.AsInteger :=
      cds_LoadPackagesIIPACKAGETYPENO.AsInteger;
    cds_CopyLDSupplierCode.AsString := cds_LoadPackagesIISupplierCode.AsString;
    cds_CopyLDPackageOK.AsInteger := cds_LoadPackagesIIPackageOK.AsInteger;
    cds_CopyLDProblemPackageLog.AsString :=
      cds_LoadPackagesIIProblemPackageLog.AsString;
    cds_CopyLDCreatedUser.AsInteger := ThisUser.UserID;
    cds_CopyLDModifiedUser.AsInteger := ThisUser.UserID;
    cds_CopyLDDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_CopyLDDefaultCustShipObjectNo.AsInteger :=
      cds_LoadPackagesIIDefaultCustShipObjectNo.AsInteger;
    cds_CopyLDOverrideMatch.AsInteger :=
      cds_LoadPackagesIIOverrideMatch.AsInteger;
    cds_CopyLDLIPNo.AsInteger := cds_LoadPackagesIILIPNo.AsInteger;
    cds_CopyLDDefsspno.AsInteger := cds_LoadPackagesIIDefsspno.AsInteger;
    cds_CopyLDOverrideRL.AsInteger := cds_LoadPackagesIIOverrideRL.AsInteger;
    cds_CopyLD.Post;
  End; // if..
End;

procedure TdmVidaInvoice.CopyLoad(const NewLoadNo, CopyLoadNo: Integer);
Var
  LoadShippingPlan: Array of array of Variant;
  Load: Array of Variant;
  x, i: Integer;
Begin
  // copy Load
  cds_LoadHead.Active := False;
  cds_LoadHead.ParamByName('LoadNo').AsInteger := CopyLoadNo;
  cds_LoadHead.Active := True;
  cds_LoadHead.First;
  SetLength(Load, cds_LoadHead.FieldCount);
  for i := 0 to cds_LoadHead.FieldCount - 1 do
  Begin
    Load[i] := cds_LoadHead.Fields[i].Value;
  End;

  // copy LoadShippingPlan
  cds_CopyLSP.Active := False;
  cds_CopyLSP.ParamByName('LoadNo').AsInteger := CopyLoadNo;
  cds_CopyLSP.Active := True;
  cds_CopyLSP.First;
  x := 1;
  While not cds_CopyLSP.Eof do
  Begin
    SetLength(LoadShippingPlan, x);
    SetLength(LoadShippingPlan[x - 1], cds_CopyLSP.FieldCount);
    for i := 0 to cds_CopyLSP.FieldCount - 1 do
    Begin
      LoadShippingPlan[x - 1, i] := cds_CopyLSP.Fields[i].Value;
    End;
    x := succ(x);

    cds_CopyLSP.Next;
  End;

  // ===================================== Insert New Load =====================
  cds_LoadHead.Active := False;
  cds_LoadHead.ParamByName('LoadNo').AsInteger := -1;
  cds_LoadHead.Active := True;

  cds_CopyLSP.Active := False;
  cds_CopyLSP.ParamByName('LoadNo').AsInteger := -1;
  cds_CopyLSP.Active := True;

  // Insert Load
  cds_LoadHead.Insert;
  // LoadNo := cds_LoadHeadLoadNo.AsInteger ;
  For i := 0 to cds_LoadHead.FieldCount - 1 do
    cds_LoadHead.Fields[i].Value := Load[i];
  cds_LoadHeadLoadNo.AsInteger := NewLoadNo;
  cds_LoadHeadSenderLoadStatus.AsInteger := 0;
  cds_LoadHeadLoadAR.AsInteger := 1;
  cds_LoadHeadCreatedUser.AsInteger := ThisUser.UserID;
  cds_LoadHeadModifiedUser.AsInteger := ThisUser.UserID;
  cds_LoadHeadDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_LoadHeadLoadedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_LoadHeadFS.AsString := 'LO:' + VarToStr(LoadShippingPlan[0, 1]);
  cds_LoadHead.Post;

  // Insert LoadShippingPlan
  For x := Low(LoadShippingPlan) to High(LoadShippingPlan) do
  Begin
    cds_CopyLSP.Insert;
    For i := 0 to cds_CopyLSP.FieldCount - 1 do
      cds_CopyLSP.Fields[i].Value := LoadShippingPlan[x, i];
    cds_CopyLSPLoadNo.AsInteger := NewLoadNo;
    // cds_CopyLSPConfirmedByReciever.AsInteger:= 0 ;
    // cds_CopyLSPConfirmedBySupplier.AsInteger:= 0 ;
    cds_CopyLSPCreatedUser.AsInteger := ThisUser.UserID;
    cds_CopyLSPModifiedUser.AsInteger := ThisUser.UserID;
    cds_CopyLSPDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_CopyLSP.Post;
  End;
End;

// Om lasten finns returneras FALSE
function TdmVidaInvoice.CheckIfLoadNoIsOK(const LoadNo: Integer): Boolean;
Begin
  sq_CheckLoadNo.Close;
  sq_CheckLoadNo.ParamByName('LoadNo').AsInteger := LoadNo;
  sq_CheckLoadNo.Open;
  Try
    if sq_CheckLoadNoLoadNo.AsInteger = LoadNo then
      Result := False
    else
      Result := True;
  Finally
    sq_CheckLoadNo.Close;
  End;
End;

procedure TdmVidaInvoice.AddLONoToLoadIfMissing(const ShippingPlanNo,
  CopyLoadNo, NewLoadNo: Integer);
Var
  LoadShippingPlan: Array of array of Variant;
  // Load                : Array of variant ;
  x, i: Integer;
Begin
  // copy LoadShippingPlan
  if not cds_CopyLSP.Locate('ShippingPlanNo', ShippingPlanNo, []) then
  Begin
    sq_CopyLSPByLoNo.ParamByName('LoadNo').AsInteger := CopyLoadNo;
    sq_CopyLSPByLoNo.ParamByName('ShippingPlanNo').AsInteger := ShippingPlanNo;
    sq_CopyLSPByLoNo.Open;
    sq_CopyLSPByLoNo.First;
    x := 1;
    While not sq_CopyLSPByLoNo.Eof do
    Begin
      SetLength(LoadShippingPlan, x);
      SetLength(LoadShippingPlan[x - 1], sq_CopyLSPByLoNo.FieldCount);
      for i := 0 to sq_CopyLSPByLoNo.FieldCount - 1 do
      Begin
        LoadShippingPlan[x - 1, i] := sq_CopyLSPByLoNo.Fields[i].Value;
      End;
      x := succ(x);

      sq_CopyLSPByLoNo.Next;
    End;

    // ===================================== Insert New LoadShippingPlan =====================
    For x := Low(LoadShippingPlan) to High(LoadShippingPlan) do
    Begin
      cds_CopyLSP.Insert;
      For i := 0 to cds_CopyLSP.FieldCount - 1 do
        cds_CopyLSP.Fields[i].Value := LoadShippingPlan[x, i];
      cds_CopyLSPLoadNo.AsInteger := NewLoadNo;
      // cds_CopyLSPConfirmedByReciever.AsInteger:= 0 ;
      // cds_CopyLSPConfirmedBySupplier.AsInteger:= 0 ;
      cds_CopyLSPCreatedUser.AsInteger := ThisUser.UserID;
      cds_CopyLSPModifiedUser.AsInteger := ThisUser.UserID;
      cds_CopyLSPDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
      cds_CopyLSP.Post;
    End;
  End; // if not cds_CopyLSP.Locate('ShippingPlanNo', ShippingPlanNo, []) then
End;

procedure TdmVidaInvoice.dsp_LoadPackagesGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'LoadDetail';
end;

procedure TdmVidaInvoice.RemovePkgFromLoad;
Begin
  Try
    sp_RemPkgFromLoad.Close;
    sp_RemPkgFromLoad.ParamByName('@PackageNo').AsInteger :=
      cds_LoadPackagesIIIPACKAGENO.AsInteger;
    sp_RemPkgFromLoad.ParamByName('@SupplierCode').AsString :=
      cds_LoadPackagesIIISupplierCode.AsString;
    sp_RemPkgFromLoad.ParamByName('@RegistrationPointNo').AsInteger := -1;
    // -1 ingen mätpunkt
    sp_RemPkgFromLoad.ParamByName('@PackageTypeNo').AsInteger :=
      cds_LoadPackagesIIIPACKAGETYPENO.AsInteger;
    sp_RemPkgFromLoad.ParamByName('@LogicalInventoryPointNo').AsInteger :=
      cds_IH_SpecLoadLIPNo.AsInteger; // cds_LoadPackagesLIPNo.AsInteger ;
    sp_RemPkgFromLoad.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_RemPkgFromLoad.ParamByName('@Status').AsInteger :=
      status_Pkg_IN_Inventory;
    sp_RemPkgFromLoad.ParamByName('@Operation').AsInteger :=
      oper_Remove_From_Load;
    // sp_RemPkgFromLoad.ParamByName('LoadNo').AsInteger:= LoadNo ;
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

procedure TdmVidaInvoice.DeleteEmptyLoadsForInternalInvoiceNo
  (const InternalInvoiceNo: Integer);
Begin
  Try
    sq_DelIHEmptyLoads.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sq_DelIHEmptyLoads.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmVidaInvoice.DeletePreliminaryInvoice(const InternalInvoiceNo
  : Integer);
Begin
  Try
    sq_DelIH.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo;
    sq_DelIH.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmVidaInvoice.ExportTyp1(const InvoiceNo, InternalInvoiceNo,
  CET: Integer);
const
  LF = #10;
Var
  FileName, FileNameExcel: String;
Begin
  FileName := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + IntToStr(InvoiceNo)
    + '.csv';
  FileNameExcel := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' +
    IntToStr(InvoiceNo) + '.xls';
  cds_ExportTyp1.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  cds_ExportTyp1.ParamByName('CET').AsInteger := CET;
  cds_ExportTyp1.Active := True;
  Try
    QExport3ASCII1.FileName := FileName;
    QExport3ASCII1.Execute;
    QExport3XLS1.FileName := FileNameExcel;
    QExport3XLS1.Execute;
    showmessage('Files exportered to ' + FileName + ' resp. ' +
      FileNameExcel + LF + '' + LF + '' +
      '  NOTE! please check the export files before sending them!');
  Finally
    cds_ExportTyp1.Active := False;
  End;
End;

procedure TdmVidaInvoice.QExport3ASCII1BeforeExportRow(Sender: TObject;
  Row: TQExportRow; var Accept: Boolean);
// var   i: integer;
begin
  { for i := 0 to Row.Count - 1 do begin
    if (Row[i].Name = 'MINLENGTH') then
    if Row[i].Value = '0' then
    Row[i].Value:= '0000' ;
    // Row[i].Value:=  ReplaceCommas(Row[i].Value) ;
    Accept := True ;
    //     if (AnsiCompareText(Row[i].Value, '') = 0)
    //    AND ((Row[i].Name = 'Customer') or (Row[i].Name = 'AddressName'))
    //    then begin
    //        Accept := false;
    //        Exit;
    //    end;
    End ; }
end;

procedure TdmVidaInvoice.EmailaTrpBrevExecute(const IntInvNo, InvoiceNo,
  CustomerNo, LONo: Integer; const OrderNoText: string);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress, ExcelDir: String;

  sTransportBrev,
  sSpecification: string;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  i, ClientNo: integer;
  Params: TCMParams;
begin
  // if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
  // Begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  MailToAddress := dmsContact.GetEmailAddressForSpeditorByLO(LONo);
  if Length(MailToAddress) = 0 then
  Begin
    MailToAddress := 'ange@adress.nu';
    showmessage
      ('Email address is missing for the client.');
  End;

  if Length(MailToAddress) > 0 then
  Begin
    sTransportBrev := ExcelDir + 'Transportbrev ' + IntToStr(InvoiceNo) + '.pdf';
    sSpecification := ExcelDir + 'Specification ' + IntToStr(InvoiceNo) + '.pdf';

    if uReportController.useFR then
     begin

      params := TCMParams.Create();
      Params.Add('@INVOICENO',IntInvNo);

      RC := TCMReportController.create;
      ClientNo := CustomerNo;
      RoleType := -1;

      Try
        DocTyp := cTrpBrev;
        RC.setExportFile(sTransportBrev);
        RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frFile);

        DocTyp := cPkgSpec;
        RC.setExportFile(sSpecification);
        RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frFile);
      Finally
        FreeAndNil(Params);
        FreeAndNil(RC);
      End;
     end
    else
     begin
      sTransportBrev := ExcelDir + 'Transportbrev ' + IntToStr(InvoiceNo) ;
      sSpecification := ExcelDir + 'Specification ' + IntToStr(InvoiceNo) ;
      FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
      Try
        SetLength(A, 1);

        A[0] := IntInvNo;
        FormCRExportOneReport.CreateCo(CustomerNo, cTrpBrev, A,
          sTransportBrev);

        FormCRExportOneReport.CreateCo(CustomerNo, cPkgSpec, A,
          sSpecification);
        sTransportBrev    := sTransportBrev + '.pdf' ;
        sSpecification    := sSpecification + '.pdf' ;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
     end;

    SetLength(Attach, 2);
    Attach[0] := sTransportBrev;
    if thisuser.userid = 8 then
       dmsSystem.FDoLog('sTransportBrev= ' + sTransportBrev);
    Attach[1] := sSpecification;
    if thisuser.userid = 8 then
       dmsSystem.FDoLog('sSpecification= ' + sSpecification);
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try

    for i := Low(Attach) to High(Attach) do
    Begin
      if thisuser.userid = 8 then
       dmsSystem.FDoLog('Attach= ' + Attach[i]);

    End;

      dm_SendMapiMail.SendMail('Transportbrev/Paketspec. Fakturanr: ' +
        IntToStr(InvoiceNo), 'Transportbrev/Paketspecifikation bifogad. ' + LF +
        '' + 'Transport letter/Package specification attached. ' + LF + '' + LF
        + '' + LF + 'MVH/Best Regards, ' + LF + '' +
        dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    showmessage('Email address is missing for the client.');
  // End ;//if dmVidaInvoice.cdsInvoiceList.Locate('INT_INVNO', IntInvNo, []) then
end;

Procedure TdmVidaInvoice.ExportToWoodx(const CustomerNo, IntInvNo: Integer;
  const InvoiceNo: String);
// Var DeliveryMessageNumber : String ;
begin
  XMLImportExport := TXMLImportExport.Create(nil);
  try
    XMLImportExport.InvoiceNo := StrToIntDef(InvoiceNo, 0);
    XMLImportExport.InternalInvoiceNo := IntInvNo;
    XMLImportExport.CustomerNo := CustomerNo;
    XMLImportExport.tsImport.TabVisible := False;
    if XMLImportExport.ShowModal = MrOK then
    Begin
      // DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
    End;
  finally
    FreeAndNil(XMLImportExport);
  end;
end;

procedure TdmVidaInvoice.ExportInvoiceSpecWoodxExecute(const CustomerNo,
  IntInvNo: Integer; const InvoiceNo: String);
begin
  dmsSystem.RunLengthSpec;
  dm_ImportWoodx := Tdm_ImportWoodx.Create(nil);
  Try
    With dm_ImportWoodx do
    Begin
      // DeliveryMessageNumber:= dmVidaI1nvoice.cdsInvoiceListINT_INVNO.AsString ;
      Try
        ExportDeliveryWoodMessage(IntInvNo);
        ExportToWoodx(CustomerNo, IntInvNo, InvoiceNo);
      Except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          Raise;
        End;
      End;
    End;
  Finally
    FreeAndNil(dm_ImportWoodx);
  End;
end;

procedure TdmVidaInvoice.PrepareExportFiles(const InvoiceNo: String;
  const CustomerNo, InternalInvoiceNo, CET, KV: Integer);
const
  LF = #10;
Var
  FileName, FileNameExcel, Stext, Subject, MailToAddress: String;
  Attach: array of String;
Begin
  dmsSystem.RunLengthSpec;

  FileName := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + InvoiceNo + '.csv';
  FileNameExcel := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' +
    InvoiceNo + '.xls';
  cds_ExportTyp1.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  cds_ExportTyp1.ParamByName('CET').AsInteger := CET;
  cds_ExportTyp1.ParamByName('KV').AsInteger := KV;
  cds_ExportTyp1.Active := True;
  Try
    QExport3ASCII1.FileName := FileName;
    QExport3ASCII1.Execute;

    QExport3XLS1.FileName := FileNameExcel;
    QExport3XLS1.Execute;

    SetLength(Attach, 2);
    Attach[0] := FileName;
    Attach[1] := FileNameExcel;

    Subject := 'Faktura/paketspecifikation. Fakturanr: ' + InvoiceNo +
      ' - Invoice/package specification. InvoiceNo: ' + InvoiceNo;
    Stext := 'Exportfil paketspecifikation bifogad. ' + LF + '' +
      'Export file package specification attached. ' + LF + '' + LF + '' + LF +
      'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
      (ThisUser.UserID);

    MailToAddress := dmsContact.GetEmailAddress(CustomerNo);
    dmsSystem.Email_Attachments(Attach, MailToAddress, Subject, Stext);
    // ShowMessage('Filerna exporterade till ' + FileName + ' resp. ' + FileNameExcel  + LF + ''  + LF + ''  + '  OBS!Kontrollera filerna innan du skickar dem!') ;
  Finally
    cds_ExportTyp1.Active := False;
  End;
End;

Function TdmVidaInvoice.GetInvoiceTypeByLONo(const LONo: Integer): Integer;
Begin
  sq_GetInvoiceType.ParamByName('LONo').AsInteger := LONo;
  sq_GetInvoiceType.Open;
  Try
    if not sq_GetInvoiceType.Eof then
      Result := sq_GetInvoiceTypeInvoiceType.AsInteger
    else
      Result := -1;
  Finally
    sq_GetInvoiceType.Close;
  End;
End;

Function TdmVidaInvoice.GetInternalInvoiceNoByINVOICENO(const InvoiceNo
  : Integer; Var InvoiceType: Integer): Integer;
Begin
  sq_GetIntInvNo.ParamByName('InvoiceNo').AsInteger := InvoiceNo;
  sq_GetIntInvNo.Open;
  Try
    if not sq_GetIntInvNo.Eof then
    Begin
      Result := sq_GetIntInvNoInternalInvoiceNo.AsInteger;
      InvoiceType := sq_GetIntInvNoInvoiceType.AsInteger;
    End
    else
    Begin
      Result := -1;
      InvoiceType := -1;
    End;
  Finally
    sq_GetIntInvNo.Close;
  End;
End;

Function TdmVidaInvoice.GetGetProFormInvNo(const InternalInvoiceNo
  : Integer): Integer;
Begin
  sq_GetProFormInvNo.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  sq_GetProFormInvNo.Open;
  Try
    if not sq_GetProFormInvNo.Eof then
      Result := sq_GetProFormInvNoProformaInvoiceNo.AsInteger
    else
      Result := -1;
  Finally
    sq_GetProFormInvNo.Close;
  End;
End;
(* LG

  procedure TdmVidaInvoice.ExportTypSoftSet(const LoadNo, LONo, RecordType  : Integer;const LOTyp : String;const Purpose : Integer) ;
  const
  LF = #10;
  Var FileName : String ;

  procedure GenSoftSet449_For_Normal_LO ;
  Begin
  sp_GenSoftSet449.ParamByName('@LoadNo').AsInteger   := LoadNo ;
  sp_GenSoftSet449.ParamByName('@UserID').AsInteger   := ThisUser.UserID ;
  sp_GenSoftSet449.ParamByName('@Purpose').AsString   := inttostr(Purpose) ;
  Try
  sp_GenSoftSet449.ExecProc ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  End ;

  procedure GenSoftSet449_For_IntAndAddLO_LO ;
  Begin
  sp_GenSoftSet449SP.ParamByName('@LoadNo').AsInteger   := LoadNo ;
  sp_GenSoftSet449SP.ParamByName('@UserID').AsInteger   := ThisUser.UserID ;
  sp_GenSoftSet449SP.ParamByName('@Purpose').AsString   := inttostr(Purpose) ;
  Try
  sp_GenSoftSet449SP.ExecProc ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  End ;

  procedure GenSoftSet700_For_IntAndAddLO_LO ;
  Begin
  sp_GenSoftSet700790_SP.ParamByName('@LoadNo').AsInteger := LoadNo ;
  sp_GenSoftSet700790_SP.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
  Try
  sp_GenSoftSet700790_SP.ExecProc ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  End ;

  procedure GenSoftSet700_For_Normal_LO ;
  Begin
  sp_GenSoftSet700790.ParamByName('@LoadNo').AsInteger := LoadNo ;
  sp_GenSoftSet700790.ParamByName('@UserID').AsInteger := ThisUser.UserID ;
  Try
  sp_GenSoftSet700790.ExecProc ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  End ;

  //Main proc ExportTypSoftSet
  Begin
  if RecordType = 4 then
  Begin
  //Laster till Hampen
  if LOTyp = 'LO' then
  GenSoftSet449_For_IntAndAddLO_LO //GenSoftSet449_For_Normal_LO
  else
  GenSoftSet449_For_IntAndAddLO_LO ;
  End
  else
  //Laster ut från Hampen
  if RecordType = 7 then
  Begin
  if LOTyp = 'INTERN' then
  GenSoftSet700_For_IntAndAddLO_LO
  else
  GenSoftSet700_For_Normal_LO ;
  End ;



  Try
  // FileName := dmsSystem.Get_Dir('ExcelDir') + IntToStr(RecordType) + '_' + IntToStr(LONo) +  '-' + IntToStr(LoadNo) + '.csv' ;
  FileName := dmsSystem.Get_Dir('ExcelDir') + IntToStr(RecordType) +  '_' + IntToStr(LoadNo) + '.csv' ;
  Try
  cds_ExpSoftSet.Active                                := False ;
  cds_ExpSoftSet.ParamByName('LoadNo').AsInteger       := LoadNo ;
  cds_ExpSoftSet.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  cds_ExpSoftSet.ParamByName('RecordType').AsInteger   := RecordType ;
  cds_ExpSoftSet.Active                                := True ;

  QExport3ASCII2.FileName  := FileName ;
  QExport3ASCII2.Execute ;

  //Store ExportFile in dbo.TransferFile

  StoreTransferFile(FileName, '', c_ExportFile, LONo, LoadNo, 1) ;

  UpLoadNewFileToFTP (cUp) ;

  // ShowMessage('Filerna exporterade till ' + FileName + ' resp. ' + FileNameExcel
  // + LF + ''  + LF + ''  + '  OBS!Kontrollera filerna innan du skickar dem!') ;

  Except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  Raise ;
  End ;
  End ;

  Finally
  cds_ExpSoftSet.Active:= False ;
  End ;
  End ;

  LG *)

procedure TdmVidaInvoice.StoreTransferFile(const FileName, HTF_FS: String;
  const TransferType, LONo, LoadNo, InOut: Integer);
Begin
  Try
    sq_StoreTransferFile.ParamByName('FileName').AsString := FileName;
    sq_StoreTransferFile.ParamByName('TransferType').AsInteger := TransferType;
    sq_StoreTransferFile.ParamByName('CreatedUser').AsInteger :=
      ThisUser.UserID;
    sq_StoreTransferFile.ParamByName('Complete').AsInteger := 0;
    sq_StoreTransferFile.ParamByName('LONo').AsInteger := LONo;
    sq_StoreTransferFile.ParamByName('HTF_FS').AsString := HTF_FS;
    sq_StoreTransferFile.ParamByName('LoadNo').AsInteger := LoadNo;
    sq_StoreTransferFile.ParamByName('InOut').AsInteger := InOut;
    sq_StoreTransferFile.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmVidaInvoice.QExport3ASCII2BeforeExportRow(Sender: TObject;
  Row: TQExportRow; var Accept: Boolean);
// var  i: integer;
begin
  { for i := 0 to Row.Count - 1 do begin
    if (Row[i].Name = 'MINLENGTH') then
    if Row[i].Value = '0' then
    Row[i].Value:= '0000' ;
    // Row[i].Value:=  ReplaceCommas(Row[i].Value) ;
    Accept := True ;
    //     if (AnsiCompareText(Row[i].Value, '') = 0)
    //    AND ((Row[i].Name = 'Customer') or (Row[i].Name = 'AddressName'))
    //    then begin
    //        Accept := false;
    //        Exit;
    //    end;
    End ; }
end;

(* LG
  procedure TdmVidaInvoice.UpLoadNewFileToFTP(const UpOrDown : Integer) ;
  var
  //position,
  //  fileExistsResult: Integer;
  stream          : TStream;
  Mapp, fileName,
  LocalDir        : string;
  Save_Cursor     : TCursor ;
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  Try
  // AddLONosToFileName ;
  Try
  if OpenFTP(LocalDir, UpOrDown) then
  Begin
  if not clFTP.Active then Exit;
  //  clFTP.Delete('LastOrder.txt') ;
  sq_TransferFiles.Active := False ;
  sq_TransferFiles.ParamByName('TransferType').AsInteger := c_ExportFile ;
  sq_TransferFiles.ParamByName('Complete').AsInteger     := 0 ;
  sq_TransferFiles.ParamByName('InOut').AsInteger        := 1 ; //1 = ut
  sq_TransferFiles.Active := True ;
  sq_TransferFiles.First ;
  While not sq_TransferFiles.Eof do
  Begin
  FileName := sq_TransferFilesFileName.AsString ;//FileToSend ;//dmsSystem.Get_A_Value_From_UserDir('LastOrder.txt', 'ExportDir') + 'LastOrder.txt' ;
  stream   := TFileStream.Create(FileName, fmOpenRead);
  try
  fileName := ExtractFileName(FileName);
  Try
  clFTP.PutFile(fileName, stream) ;// .PutFile(fileName, stream, position, -1);



  {       sq_TransferFiles.Edit ;
  sq_TransferFilesComplete.AsInteger       := 1 ;
  sq_TransferFilesSendDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  sq_TransferFiles.Post ; }

  SetTransferFileCompleteValue(sq_TransferFilesFileName.AsString, sq_TransferFilesTransferType.AsInteger, 1 {Complete}) ;

  {       Try
  sq_UpdateTransferFile.ParamByName('FileName').AsString       := sq_TransferFilesFileName.AsString ;
  sq_UpdateTransferFile.ParamByName('TransferType').AsInteger  := sq_TransferFilesTransferType.AsInteger ;
  sq_UpdateTransferFile.ParamByName('Complete').AsInteger      := 1 ;
  sq_UpdateTransferFile.ExecSQL ;
  ShowMessage('Transfer complete');
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //ShowMessage(E.Message);
  Raise ;
  End ;
  end; }

  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //ShowMessage(E.Message);
  Raise ;
  End ;
  end;

  finally
  stream.Free();
  end;
  sq_TransferFiles.Next ;
  End ;// While not sq_TransferFiles.Eof...
  end;//if OpenFTP then

  Finally
  if clFTP.Active then clFTP.Close() ;
  if sq_TransferFiles.Active then
  sq_TransferFiles.Active := False ;
  End ;

  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  end;

  procedure TdmVidaInvoice.SetTransferFileCompleteValue(const FileName : String;const TransferType, Complete : Integer) ;
  Begin
  Try
  sq_UpdateTransferFile.ParamByName('FileName').AsString       := FileName ;
  sq_UpdateTransferFile.ParamByName('TransferType').AsInteger  := TransferType ;
  sq_UpdateTransferFile.ParamByName('Complete').AsInteger      := Complete ;
  sq_UpdateTransferFile.ExecSQL ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  End ;

  function TdmVidaInvoice.OpenFTP(Var LocalDir : String;const UpOrDown  : Integer) : Boolean ;
  Var edtStartDir : String ;
  const
  transferTypes: array[Boolean] of TclFtpTransferType = (ttBinary, ttAscii);
  begin
  With dmsSystem do
  Begin
  Try
  cds_FtpParam.Active   := False ;
  cds_FtpParam.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  cds_FtpParam.Active   := True ;
  cds_FtpParam.Filter   := 'ConnectionName = ' + QuotedStr('Hampen') ;
  cds_FtpParam.Filtered := True ;
  if not cds_FtpParam.Eof then
  Begin
  LocalDir := cds_FtpParamLocalDir.AsString ;


  if clFTP.Active then
  begin
  ShowMessage('You are already connected. Please click Logout to disconnect.');
  Result  := False ;
  Exit;
  end;
  //  clFTP.Port          := cds_FtpParamPort.AsInteger ;
  clFTP.Server        := cds_FtpParamHost.AsString ;
  clFTP.UserName      := cds_FtpParamUserName.AsString ;
  clFTP.Password      := cds_FtpParamPassword.AsString ;
  clFTP.PassiveMode   := cds_FtpParamPassiveMode.AsInteger = 1 ;
  clFTP.TransferType  := transferTypes[not cds_FtpParamAsciiMode.AsInteger = 1] ;
  clFTP.Open();     //transferTypes[cbAsciiMode.Checked];
  if (cds_FtpParamStartDir.AsString = '') then
  begin
  edtStartDir := clFTP.CurrentDir;
  end
  else
  Begin
  if UpOrDown = cUp then
  edtStartDir := cds_FtpParamStartDirUpload.AsString
  else
  edtStartDir := cds_FtpParamStartDir.AsString ;
  End ;

  if (edtStartDir <> '') and ((edtStartDir[1] = '/') or (edtStartDir[1] = '\')) then
  //  if (edtStartDir.Text <> '') and (edtStartDir.Text[1] = '/') then
  begin
  DoOpenDir(edtStartDir);
  //    FillDirList ;
  end;
  Result  := True ;
  //  UpdateStatus();
  end //if not cds_FtpParam.Eof then
  else
  Result  := False ;
  Finally
  cds_FtpParam.Filtered  := False ;
  cds_FtpParam.Active    := False ;
  End ;
  End ;//With
  end;

  procedure TdmVidaInvoice.DoOpenDir(const ADir: string);
  var
  dir: string;
  begin
  dir := ADir;
  if (Length(dir) > 1) and (dir[1] = '/') and (dir[2] = '/') then
  begin
  system.Delete(dir, 1, 1);
  end;
  clFTP.ChangeCurrentDir('/');
  clFTP.ChangeCurrentDir(dir);
  //  FillDirList();
  end;

  procedure TdmVidaInvoice.clFTPSendCommand(Sender: TObject;
  const AText: String);
  begin
  dmsSystem.FDoLog(Trim(AText));
  end;

  LGA *)

function TdmVidaInvoice.ControlInvDateForInvoice: Boolean;
const
  LF = #10;
Var
  LastInvNr: Integer;
  invdate: TDateTime;
  MaxDateMsg: String;
Begin
  With dmVidaInvoice do
  Begin
    cds_LoadPackages.DisableControls;
    Try
      // if cds_LoadPackages.State in [dsEdit, dsInsert] then
      // cds_LoadPackages.Post ;
      Result := True;
      cds_LoadPackages.First;
      While not cds_LoadPackages.Eof do
      Begin
        LastInvNr := dmsSystem.IsRegDateBeforeInvDate
          (cds_LoadPackagesLIPNo.AsInteger,
          SQLTimeStampToDateTime(cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp),
          invdate, MaxDateMsg);
        if LastInvNr > -1 then
        Begin
          // cds_LoadPackages.Edit ;
          // cds_LoadPackagesInvNr.AsInteger := LastInvNr ;
          // cds_LoadPackages.Post ;
          Result := False;
        End;
        cds_LoadPackages.Next;
      End;
    Finally
      cds_LoadPackages.EnableControls;
    End;
  End; // With dmVidaInvoice
end;

procedure TdmVidaInvoice.cdsInvoiceHeadAfterInsert(DataSet: TDataSet);
begin
  cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger := 1;
  cdsInvoiceHeadDelKredit.AsInteger := 0;
end;

procedure TdmVidaInvoice.cdsInvoiceDetailAfterInsert(DataSet: TDataSet);
begin
  cdsInvoiceDetailInternalInvoiceNo.AsInteger :=
    cdsInvoiceHeadInternalInvoiceNo.AsInteger;
  cdsInvoiceDetailInvoiceDetailNo.AsInteger := dmsConnector.NextSecondMaxNo
    ('Invoice', cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  cdsInvoiceDetailCreatedUser.AsInteger := ThisUser.UserID;
  cdsInvoiceDetailModifiedUser.AsInteger := ThisUser.UserID;
  cdsInvoiceDetailDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
end;

procedure TdmVidaInvoice.cds_IH_SpecLoadAfterInsert(DataSet: TDataSet);
begin
  cds_IH_SpecLoadInternalInvoiceNo.AsInteger :=
    cdsInvoiceHeadInternalInvoiceNo.AsInteger;
end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIAfterInsert(DataSet: TDataSet);
begin
  cds_Att_Ext_ServicesIIInternalInvoiceNo.AsInteger :=
    cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
  cds_Att_Ext_ServicesIIShippingPlanNo.AsInteger :=
    cdsInvoiceLOShippingPlanNo.AsInteger;
  cds_Att_Ext_ServicesIISequensNo.AsInteger :=
    dmsConnector.NextMaxNo('Att_Ext_Services');
  cds_Att_Ext_ServicesIICreatedUser.AsInteger := ThisUser.UserID;
  cds_Att_Ext_ServicesIIModifiedUser.AsInteger := ThisUser.UserID;
  cds_Att_Ext_ServicesIICreatedDate.AsSQLTimeStamp :=
    DateTimeToSQLTimeStamp(Now);
  cds_Att_Ext_ServicesIIModifiedDate.AsSQLTimeStamp :=
    DateTimeToSQLTimeStamp(Now);
  cds_Att_Ext_ServicesIICurrencyNo.AsInteger := 10001;
end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIAfterScroll(DataSet: TDataSet);
begin
  Try
    mt_InvDtl_Att.DisableControls;
    RefreshCHECKED;
  Finally
    mt_InvDtl_Att.EnableControls;
  End;
end;

procedure TdmVidaInvoice.cds_Att_Ext_ServicesIIBeforeDelete(DataSet: TDataSet);
begin
  Try
    // mt_AttestRow.Filter:= 'InternalInvoiceNo = '+mt_InvDtl_AttInternalInvoiceNo.AsString ;
    // mt_AttestRow.Filtered:= True ;
    mt_AttestRow.First;
    While not mt_AttestRow.Eof do
      mt_AttestRow.Delete;

  Finally
    // mt_AttestRow.Filter:= 'InternalInvoiceNo = '+dmVidaInvoice.cds_Att_Ext_ServicesIIInternalInvoiceNo.AsString+
    // ' AND SequensNo = '+dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsString ;
  End;
end;

procedure TdmVidaInvoice.SaveUserProps(const Form: String);
Var
  x: Integer;
Begin
  // if mtProps.State in [dsEdit, dsInsert] then
  // mtProps.Post ;
  if cds_Props.State in [dsBrowse] then
    cds_Props.Edit;

  if cds_PropsLengthVolUnitNo.IsNull then
    cds_PropsLengthVolUnitNo.AsInteger := 0;

  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

End;

procedure TdmVidaInvoice.LoadUserProps(const Form: String);
Var
  x: Integer;
Begin
  // mtProps.Active:= True ;
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    // mtProps.Insert ;
    // mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
    // For x := 0 to 14 do
    // mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
    // mtProps.Post ;

    // mtPropsOwnerNo.OnChange     := nil ;
    // mtPropsPIPNo.OnChange       := nil ;
    // mtPropsProducerNo.OnChange  := nil ;
    // Try
    // mtProps.Edit ;
    // mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
    // For x := 0 to 14 do
    // mtProps.Fields.Fields[x].AsVariant:= cds_Props.Fields.Fields[x].AsVariant ;
    // mtPropsRegDate.AsDateTime := Now ;
    // mtPropsRunNo.AsInteger    := -1 ;
    // mtProps.Post ;
    // Finally
    // mtPropsProducerNo.OnChange   := mtPropsProducerNoChange ;
    // mtPropsPIPNo.OnChange        := mtPropsPIPNoChange ;
    // mtPropsOwnerNo.OnChange      := mtPropsOwnerNoChange ;
    // End ;
  End
  else
  Begin
    cds_Props.Insert;
    // mtPropsRoleType.AsInteger     :=  dmsContact.GetRoleType(ThisUser.CompanyNo) ;
    cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo;
    cds_PropsForm.AsString := Form;

    cds_PropsLengthVolUnitNo.AsInteger := 0;
    cds_PropsBookingTypeNo.AsInteger := 0;
    cds_PropsBarCodeNo.AsInteger := 0;

    cds_PropsCopyPcs.AsInteger := 0;


    cds_Props.Post;
  End;
  // cds_Props.Active:= False ;
End;

procedure TdmVidaInvoice.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
end;

procedure TdmVidaInvoice.cdsInvoiceHeadSupplierNoChange(Sender: TField);
begin
  cds_PIP.Active := False;
  cds_PIP.ParamByName('OwnerNo').AsInteger :=
    cdsInvoiceHeadSupplierNo.AsInteger;
  cds_PIP.Active := True;
end;

procedure TdmVidaInvoice.cdsInvoiceHeadUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dmsSystem.FDoLog('Error Update InvoiceHead : ' + AException.Message);
end;

procedure TdmVidaInvoice.cdsInvoiceLOUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dmsSystem.FDoLog('Error Update InvoiceLO : ' + AException.Message);
end;

procedure TdmVidaInvoice.cdsInvoiceShipToAddressUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dmsSystem.FDoLog('Error Update InvoiceShipToAddress : ' + AException.Message);
end;

procedure TdmVidaInvoice.cdsInvoiceShipToUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dmsSystem.FDoLog('Error Update InvoiceShipTo : ' + AException.Message);
end;

procedure TdmVidaInvoice.cdsInvoiceHeadResponsibleSellerChange(Sender: TField);
begin
  With dmVidaInvoice do
  Begin
    if cdsInvoiceLO.Active then
    Begin
      if cdsInvoiceLO.State in [dsBrowse] then
        cdsInvoiceLO.Edit;
      cdsInvoiceLOSalesMan.AsString := dmsContact.GetFullUserName
        (cdsInvoiceHeadResponsibleSeller.AsInteger);
      cdsInvoiceLO.Post;
    End;
  End;
end;

function TdmVidaInvoice.GetSalesManGroupNo(const ResponsibleSeller
  : Integer): Integer;
Begin
  // FD_GetSalesManGroupNo
End;

procedure TdmVidaInvoice.SetKontonr;
Var
  PO_CountryNo: Integer;
Begin
  if cdsInvoiceHeadInvoiceType.AsInteger <> 3 then
  Begin
    cdsInvoiceDetail.Filtered := False;
    Try
      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        cds_KontoLogik.Active := False;
        cds_KontoLogik.ParamByName('SalesmangroupNo').AsInteger :=
          cdsInvoiceHeadSalesGroupNo.AsInteger;
        cds_KontoLogik.ParamByName('SalesregionNo').AsInteger :=
          cdsInvoiceHeadSupplierNo.AsInteger;
        cds_KontoLogik.ParamByName('CustomerCountryNo').AsInteger :=
          GetCountryRegion(cdsInvoiceHeadSupplierNo.AsInteger,
          cdsInvoiceHeadCountryNo.AsInteger);
        cds_KontoLogik.ParamByName('VarugruppNo').AsInteger :=
          cdsInvoiceDetailArticleNo.AsInteger;
        cds_KontoLogik.ParamByName('Moms').AsInteger :=
          cdsInvoiceHeadMoms.AsInteger;

        if cdsInvoiceHeadTrading.AsInteger = 1 then
        Begin
          PO_CountryNo := GetPOCountryNo
            (cdsInvoiceDetailShippingPlanNo.AsInteger);
          cds_KontoLogik.ParamByName('Trading').AsInteger :=
            cdsInvoiceHeadTrading.AsInteger;
          cds_KontoLogik.ParamByName('PO_CountryNo').AsInteger := PO_CountryNo;
        End
        else
        Begin
          cds_KontoLogik.ParamByName('Trading').AsInteger :=
            cdsInvoiceHeadTrading.AsInteger;
          cds_KontoLogik.ParamByName('PO_CountryNo').AsInteger := -1;
        End;

        cds_KontoLogik.Active := True;

        // Gäller bara trading!
        // om inte en match hittades then prova att matcha med ev annat POCountry som hämtas från GetPOCountryNoPartII
        if (cds_KontoLogik.Eof) and (cdsInvoiceHeadTrading.AsInteger = 1) then
        Begin
          cds_KontoLogik.Active := False;
          cds_KontoLogik.ParamByName('SalesmangroupNo').AsInteger :=
            cdsInvoiceHeadSalesGroupNo.AsInteger;
          cds_KontoLogik.ParamByName('SalesregionNo').AsInteger :=
            cdsInvoiceHeadSupplierNo.AsInteger;
          cds_KontoLogik.ParamByName('CustomerCountryNo').AsInteger :=
            GetCountryRegion(cdsInvoiceHeadSupplierNo.AsInteger,
            cdsInvoiceHeadCountryNo.AsInteger);
          cds_KontoLogik.ParamByName('VarugruppNo').AsInteger :=
            cdsInvoiceDetailArticleNo.AsInteger;
          cds_KontoLogik.ParamByName('Moms').AsInteger :=
            cdsInvoiceHeadMoms.AsInteger;

          PO_CountryNo := GetPOCountryNoPartII
            (cdsInvoiceDetailShippingPlanNo.AsInteger);
          cds_KontoLogik.ParamByName('Trading').AsInteger :=
            cdsInvoiceHeadTrading.AsInteger;
          cds_KontoLogik.ParamByName('PO_CountryNo').AsInteger := PO_CountryNo;
          cds_KontoLogik.Active := True;
        End; // if cds_KontoLogik.Eof then

        // om match hittades then uppdatera fakturaraden (cdsInvoiceDetail) nedan
        if not cds_KontoLogik.Eof then
        Begin
          if cdsInvoiceDetail.State in [dsBrowse] then
            cdsInvoiceDetail.Edit;
          cdsInvoiceDetailKonto.AsString :=
            cds_KontoLogikForsaljningsKonto.AsString;
          cdsInvoiceDetailVatCode.AsInteger := cds_KontoLogikVatCode.AsInteger;
          cdsInvoiceDetailmoms_konto.AsString :=
            cds_KontoLogikMomsKonto.AsString;
          cdsInvoiceDetail.Post;
        End
        else
        Begin
          if cdsInvoiceDetail.State in [dsBrowse] then
            cdsInvoiceDetail.Edit;
          cdsInvoiceDetailKonto.AsString := 'XXXX';
          cdsInvoiceDetailVatCode.AsInteger := -1;
          cdsInvoiceDetailmoms_konto.AsString := 'XXXX';
          cdsInvoiceDetail.Post;
        End;

        cdsInvoiceDetail.Next;
      End; // While

      // cdsInvoiceHeadResKontraSerie.AsString :=
      // cdsInvoiceHeadKundResKontra.AsString  :=
    Finally
      cdsInvoiceDetail.Filtered := True;
    End;
  End;
End;

Function TdmVidaInvoice.GetCountryRegion(const SalesRegionNo,
  CountryNo: Integer): Integer;
Var
  Region: String;


  Function IsEUCountry: Integer;
  Begin
    Try
      sq_Region.Active := False;
      sq_Region.ParamByName('CountryNo').AsInteger := CountryNo;
      sq_Region.Active := True;
      if not sq_Region.Eof then
      Begin
        // Region  := sq_RegionRegion.AsString ;
        Result := 365; // EU
      End
      else
        Result := -1;

    Finally
      sq_Region.Active := False;
    End;
  End;

// GetCountryRegion
Begin
 //CountryNo := dmsContact.GetCountryOfSalesRegion(SalesRegionNo) ;

    if SalesRegionNo = VIDA_DANMARK then
    Begin
      if CountryNo = DENMARK then
        Result := DENMARK
      else if CountryNo = Sweden then
        Result := Sweden
      else
      Begin
        Result := IsEUCountry;
        if Result = -1 then
          Result := 366; // Export
      End;
    End // if SalesRegionNo = VIDA_DANMARK then
    else
    Begin
      if CountryNo = Sweden then
        Result := Sweden
      else
      Begin
        Result := IsEUCountry;
        if Result = -1 then
          Result := 366; // Export
      End;
    End ;
End;

function TdmVidaInvoice.CreateDELCreditInvoiceByCopyDebitInvoice
  (const InvoiceNo, InternalInvoiceNo: Integer;
  const DatumString: String): Integer;
Var
  NewInternalInvoiceNo, i, x: Integer;
  InvoiceHead: Array of Variant;
  InvoiceLO: Array of array of Variant;
  InvoiceDetail: Array of array of Variant;
  InvoiceShipTo: Array of array of Variant;
  myRollBack: Boolean;
  cxDBRichEdit3: TDBRichEdit;
  fSelectMultInvoice: TfSelectMultInvoice;

Begin
  fSelectMultInvoice := TfSelectMultInvoice.Create(nil);
  Try // Finally
    cxDBRichEdit3 := TDBRichEdit.Create(self);
    cxDBRichEdit3.Parent := fSelectMultInvoice;
    cxDBRichEdit3.DataSource := dmVidaInvoice.dsrcInvoiceHead;
    cxDBRichEdit3.DataField := 'InvoiceText';
    cxDBRichEdit3.Visible := False;
    Try // Except

      Result := -1;
      NewInternalInvoiceNo := 0;
      myRollBack := False;
      cdsInvoiceNumber.Active := True;
      NewInternalInvoiceNo := dmsConnector.NextMaxNo('InvoiceHeader');

      // START A TRANSACTION
      // dmsConnector.StartTransaction ;
      // Try

      // if AssignNormalInvoiceNumber(NewInternalInvoiceNo) = 1 then
      // Begin

      cdsInvoiceHead.Active := False;
      cdsInvoiceHead.Close;
      cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      cdsInvoiceHead.Open;
      cdsInvoiceHead.Active := True;

      SetLength(InvoiceHead, cdsInvoiceHead.FieldCount);
      for i := 0 to cdsInvoiceHead.FieldCount - 1 do
      Begin
        InvoiceHead[i] := cdsInvoiceHead.Fields[i].Value;
      End;

      cdsInvoiceHead.Append;
      For i := 0 to cdsInvoiceHead.FieldCount - 1 do
        cdsInvoiceHead.Fields[i].Value := InvoiceHead[i];
      cdsInvoiceHead.FieldByName('InternalInvoiceNo').AsInteger :=
        NewInternalInvoiceNo; // dmsConnector.NextIDinTable('InvoiceHeader') ;
      cdsInvoiceHead.FieldByName('InvoiceType').AsInteger := NORMAL_INVOICE;
      cdsInvoiceHead.FieldByName('Debit_Credit').AsInteger := cCredit;
      cdsInvoiceHead.FieldByName('ModifiedUser').AsInteger := ThisUser.UserID;
      cdsInvoiceHead.FieldByName('CreatedUser').AsInteger := ThisUser.UserID;
      cdsInvoiceHead.FieldByName('DateCreated').AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
      cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * (-1);
      cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat :=
        cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat * (-1);
      cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * (-1);
      cdsInvoiceHeadVAT_Value.AsFloat := cdsInvoiceHeadVAT_Value.AsFloat * (-1);
      cdsInvoiceHeadCommission_and_Discount.AsFloat :=
        cdsInvoiceHeadCommission_and_Discount.AsFloat * (-1);
      cdsInvoiceHeadCommission.AsFloat :=
        cdsInvoiceHeadCommission.AsFloat * (-1);
      cdsInvoiceHeadDiscount.AsFloat := cdsInvoiceHeadDiscount.AsFloat * (-1);
      cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat :=
        cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (-1);
      cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
        cdsInvoiceHeadSUM_FreigthCost.AsFloat * (-1);
      cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat :=
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (-1);
      cdsInvoiceHeadInvoiced.AsInteger := 0;
      // cdsInvoiceHeadQuickInvoice.AsInteger                      := 1 ;

      cdsInvoiceHeadSendInvoiceToAgent.AsInteger := 1; // DELKredit

      // cdsInvoiceHeadInvoiceText.AsString
      cxDBRichEdit3.Lines.Add( // cdsInvoiceHeadInvoiceText.AsString +
        'Credit note re: Invoice ' + IntToStr(InvoiceNo) + ' (' +
        cdsInvoiceHeadCurrencyName.AsString + ' ' +
        FloatToStr(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * -1) + ' ' +
        DatumString + ')');

      cdsInvoiceHeadDelKredit.AsInteger := 1;
      cdsInvoiceHeadIntInvNoToAttestAgainst.AsInteger := InternalInvoiceNo;
      cdsInvoiceHead.Post;

      // copy and insert InvoiceLO
      cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      cdsInvoiceLO.Active := True;
      cdsInvoiceLO.First;
      x := 1;
      While not cdsInvoiceLO.Eof do
      Begin
        if amt_Credit.Locate('LONo', cdsInvoiceLOShippingPlanNo.AsInteger, [])
        then
        Begin
          SetLength(InvoiceLO, x);
          SetLength(InvoiceLO[x - 1], cdsInvoiceLO.FieldCount);
          for i := 0 to cdsInvoiceLO.FieldCount - 1 do
          Begin
            InvoiceLO[x - 1, i] := cdsInvoiceLO.Fields[i].Value;
          End;
          x := succ(x);
        End;
        cdsInvoiceLO.Next;
      End; // While

      For x := Low(InvoiceLO) to High(InvoiceLO) do
      Begin
        cdsInvoiceLO.Append;
        For i := 0 to cdsInvoiceLO.FieldCount - 1 do
          cdsInvoiceLO.Fields[i].Value := InvoiceLO[x, i];
        cdsInvoiceLO.FieldByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        cdsInvoiceLO.FieldByName('ModifiedUser').AsInteger := ThisUser.UserID;
        cdsInvoiceLO.FieldByName('CreatedUser').AsInteger := ThisUser.UserID;
        cdsInvoiceLO.FieldByName('DateCreated').AsSQLTimeStamp :=
          DateTimeToSQLTimeStamp(Now);
        cdsInvoiceLO.Post;
      End;



      // copy and insert InvoiceDetail
      // Skall inte kopieras i delkredit!!!

      { cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
        cdsInvoiceDetail.Active:= True ;
        cdsInvoiceDetail.First ;
        x:= 1 ;
        While not cdsInvoiceDetail.Eof do
        Begin
        SetLength(InvoiceDetail, x) ;

        SetLength(InvoiceDetail[x-1], cdsInvoiceDetail.FieldCount) ;

        for i:= 0 to cdsInvoiceDetail.FieldCount-1 do
        Begin
        InvoiceDetail[x-1,i]:= cdsInvoiceDetail.Fields[i].Value ;
        End ;
        x:= succ(x) ;
        cdsInvoiceDetail.Next ;
        End ;

        cdsInvoiceDetail.Active:= False ;
        cdsInvoiceDetail.Active:= True ;


        For x := Low(InvoiceDetail) to High(InvoiceDetail) do
        Begin
        Try
        cdsInvoiceDetail.Append ;
        For i := 0 to cdsInvoiceDetail.FieldCount-1 do
        cdsInvoiceDetail.Fields[i].Value:= InvoiceDetail[x,i] ;
        cdsInvoiceDetail.FieldByName('InternalInvoiceNo').AsInteger  := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
        cdsInvoiceDetail.FieldByName('ModifiedUser').AsInteger       := ThisUser.UserID ;
        cdsInvoiceDetail.FieldByName('CreatedUser').AsInteger        := ThisUser.UserID ;
        cdsInvoiceDetail.FieldByName('DateCreated').AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
        cdsInvoiceDetailProductValue.AsFloat                         := cdsInvoiceDetailProductValue.AsFloat * (-1) ;
        cdsInvoiceDetail.Post ;
        except
        On E: Exception do
        Begin
        dmsSystem.FDoLog(E.Message) ;

        Raise ;
        End ;
        end;
        End ;


      }

      // copy cdsInvoiceShipTo
      cdsInvoiceShipTo.Active := False;
      cdsInvoiceShipTo.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      cdsInvoiceShipTo.Active := True;
      cdsInvoiceShipTo.First;
      x := 1;
      While not cdsInvoiceShipTo.Eof do
      Begin
        SetLength(InvoiceShipTo, x);

        SetLength(InvoiceShipTo[x - 1], cdsInvoiceShipTo.FieldCount);

        for i := 0 to 3 do // cdsInvoiceShipTo.FieldCount-1 do
        Begin
          InvoiceShipTo[x - 1, i] := cdsInvoiceShipTo.Fields[i].Value;
        End;
        x := succ(x);
        cdsInvoiceShipTo.Next;
      End;

      For x := Low(InvoiceShipTo) to High(InvoiceShipTo) do
      Begin
        cdsInvoiceShipTo.Append;
        For i := 0 to 3 do // cdsInvoiceShipTo.FieldCount-1 do
          cdsInvoiceShipTo.Fields[i].Value := InvoiceShipTo[x, i];
        cdsInvoiceShipTo.FieldByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        cdsInvoiceShipToReference.AsString := '1';
        cdsInvoiceShipTo.Post;
      End;

      cdsInvoice_Credited.Active := True;
      cdsInvoice_Credited.Insert;
      cdsInvoice_CreditedInternalInvoiceNo.AsInteger := InternalInvoiceNo;
      cdsInvoice_CreditedNewInternalInvoiceNo.AsInteger :=
        cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      cdsInvoice_CreditedModifiedUser.AsInteger := ThisUser.UserID;
      cdsInvoice_CreditedCreatedUser.AsInteger := ThisUser.UserID;
      cdsInvoice_CreditedDateCreated.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cdsInvoice_Credited.Post;

      if cdsInvoiceHead.ChangeCount > 0 then
        if cdsInvoiceHead.ApplyUpdates(0) > 0 then
          myRollBack := True
        else
          cdsInvoiceHead.CommitUpdates;

      if cdsInvoiceLO.ChangeCount > 0 then
        if cdsInvoiceLO.ApplyUpdates(0) > 0 then
          myRollBack := True
        else
          cdsInvoiceLO.CommitUpdates;

      { if cdsInvoiceDetail.ChangeCount > 0 then
        if cdsInvoiceDetail.ApplyUpdates(0) > 0 then myRollBack := True
        else
        cdsInvoiceDetail.CommitUpdates ; }

      if cdsInvoiceShipTo.ChangeCount > 0 then
        if cdsInvoiceShipTo.ApplyUpdates(0) > 0 then
          myRollBack := True
        else
          cdsInvoiceShipTo.CommitUpdates;

      if cdsInvoice_Credited.ChangeCount > 0 then
        if cdsInvoice_Credited.ApplyUpdates(0) > 0 then
          myRollBack := True
        else
          cdsInvoice_Credited.CommitUpdates;

      { if myRollBack = True then
        Begin
        dmsConnector.Rollback ;
        ShowMessage('Error confirming, operation rollbacked') ;
        End
        else
        Begin
        dmsConnector.Commit ;
        Result:= NewInternalInvoiceNo ;
        End ;
        Except
        dmsConnector.Rollback ;
        End ; }
      Result := NewInternalInvoiceNo;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

  Finally
    cxDBRichEdit3.Free;
    cdsInvoiceNumber.Active := False;
    FreeAndNil(fSelectMultInvoice);
  End;
end;

procedure TdmVidaInvoice.LoadMemTableWithImportPackages(const FileName: String);
begin
  dmVidaInvoice.mtImport.Active := False;
  dmVidaInvoice.mtImport.Active := True;
  dmVidaInvoice.GetPackageStatusOfHampenTEST(FileName);
end;

procedure TdmVidaInvoice.LoadMemTableWithImportPackages550
  (const FileName: String);
begin
  dmVidaInvoice.mtImport.Active := False;
  dmVidaInvoice.mtImport.Active := True;
  dmVidaInvoice.GetPackageStatusOfHampenTEST550(FileName);
end;

procedure TdmVidaInvoice.GetPackageStatusOfHampenTEST(const FileName: String);
Begin
  QImport2ASCII2.FileName := FileName;
  QImport2ASCII2.Map.Clear;
  QImport2ASCII2.Map.Add('RecordType=1');
  QImport2ASCII2.Map.Add('Prefix=2');
  QImport2ASCII2.Map.Add('Paketnr=3');
  QImport2ASCII2.Map.Add('Styck=4');
  QImport2ASCII2.Map.Add('Mottaget=5');
  QImport2ASCII2.Map.Add('KlarTillProduktion=6');
  QImport2ASCII2.Map.Add('ProduktionsDatum=7');
  QImport2ASCII2.Map.Add('KlarForLeverans=8');
  QImport2ASCII2.Map.Add('Utlevererat=9');
  QImport2ASCII2.Map.Add('UtlevereringsJournal=10');
  QImport2ASCII2.Execute;
End;

procedure TdmVidaInvoice.GetPackageStatusOfHampenTEST550(const FileName
  : String);
Begin
  QImport2ASCII550.FileName := FileName;
  QImport2ASCII550.Map.Clear;
  QImport2ASCII550.Map.Add('RecordType=1');
  QImport2ASCII550.Map.Add('Prefix=2');
  QImport2ASCII550.Map.Add('Paketnr=3');
  QImport2ASCII550.Map.Add('Produktkod=4');
  QImport2ASCII550.Map.Add('PEFC=5');
  QImport2ASCII550.Map.Add('ALMM=6');
  QImport2ASCII550.Map.Add('Styck=9');

  { RecordType=1
    Paketnr=3
    Prefix=2
    Styck=9
    ProduktKod=4
    PEFC=5
    ALMM=6
  }
  // QImport2ASCII550.Map.Add('KlarForLeverans=8') ;
  // QImport2ASCII550.Map.Add('Utlevererat=9') ;
  // QImport2ASCII550.Map.Add('UtlevereringsJournal=10') ;
  QImport2ASCII550.Execute;
End;

procedure TdmVidaInvoice.QImport2ASCII1BeforePost(Sender: TObject;
  Row: TQImportRow; var Accept: Boolean);
Var
  i: Integer;
begin
  (*
    for i := 0 to Row.Count - 1 do
    begin
    if (Row[i].Name = 'Mottaget') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'KlarTillProduktion') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'ProduktionsDatum') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'KlarForLeverans') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'Utlevererat') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    // Row[i].Value:=  ReplaceCommas(Row[i].Value) ;
    Accept := True ;
    //     if (AnsiCompareText(Row[i].Value, '') = 0)
    //    AND ((Row[i].Name = 'Customer') or (Row[i].Name = 'AddressName'))
    //    then begin
    //        Accept := false;
    //        Exit;
    //    end;
    End ;//for
  *)
end;

procedure TdmVidaInvoice.QImport2ASCII2BeforePost(Sender: TObject;
  Row: TQImportRow; var Accept: Boolean);
Var
  i: Integer;
begin
  for i := 0 to Row.Count - 1 do
  begin
    if (Row[i].Name = 'RecordType') then
      if (Row[i].Value = '500') then
        Accept := True
      else
      Begin
        Accept := False;
        Exit;
      End;
  End;

  // Row[i].Value:=  ReplaceCommas(Row[i].Value) ;
  Accept := True;
  // if (AnsiCompareText(Row[i].Value, '') = 0)
  // AND ((Row[i].Name = 'Customer') or (Row[i].Name = 'AddressName'))
  // then begin
  // Accept := false;
  // Exit;
  // end;
  // End ;//for

  (* for i := 0 to Row.Count - 1 do
    begin
    if (Row[i].Name = 'Mottaget') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'KlarTillProduktion') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'ProduktionsDatum') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'KlarForLeverans') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;

    if (Row[i].Name = 'Utlevererat') then
    if Row[i].Value >= '' then
    Row[i].Value:= '1900-01-01' ;


    // Row[i].Value:=  ReplaceCommas(Row[i].Value) ;
    Accept := True ;
    //     if (AnsiCompareText(Row[i].Value, '') = 0)
    //    AND ((Row[i].Name = 'Customer') or (Row[i].Name = 'AddressName'))
    //    then begin
    //        Accept := false;
    //        Exit;
    //    end;
    End ;//for
  *)
end;

Function TdmVidaInvoice.GetDueDate(const InvoiceDate: TDateTime;
  const NoOfDaysDiscount2, DueDateBlank, FreeDelMonth: Integer): TDateTime;
Begin
  // om NoOfDaysDiscount2 = 0 then
  { if DueDateBlank = 1 then
    Result  := 0
    else
    if FreeDelMonth = 1 then
    Begin

    End
    else
    Begin }

  Result := InvoiceDate + NoOfDaysDiscount2;
  // End ;
End;

(* LG
  procedure TdmVidaInvoice.FillDirList;
  begin
  lbList.BeginUpdate();
  try
  lbList.Clear();
  clFTP.DirectoryListing();
  finally
  lbList.EndUpdate();
  end;
  lbList.Sorted := False;
  lbList.Sorted := True;
  end;

  LG *)

(*
  procedure TdmVidaInvoice.Get500FilesFromFTP ;
  var
  //position,
  //  fileExistsResult: Integer;
  stream: TStream;
  Mapp, fileName: string;
  Save_Cursor : TCursor ;
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  // AddLONosToFileName ;
  Try
  if OpenFTP then
  Begin
  if not clFTP.Active then Exit;
  FillDirList ;

  //  clFTP.Delete('LastOrder.txt') ;
  sq_TransferFiles.Active := False ;
  sq_TransferFiles.Active := True ;
  While not sq_TransferFiles.Eof do
  Begin
  FileName := sq_TransferFilesFileName.AsString ;//FileToSend ;//dmsSystem.Get_A_Value_From_UserDir('LastOrder.txt', 'ExportDir') + 'LastOrder.txt' ;
  stream   := TFileStream.Create(FileName, fmOpenRead);
  try
  fileName := ExtractFileName(FileName);
  Try
  clFTP.PutFile(fileName, stream) ;// .PutFile(fileName, stream, position, -1);
  ShowMessage('Transfer complete');
  sq_TransferFiles.Edit ;
  sq_TransferFilesComplete.AsInteger       := 1 ;
  sq_TransferFilesSendDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
  sq_TransferFiles.Post ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //ShowMessage(E.Message);
  Raise ;
  End ;
  end;

  finally
  stream.Free();
  end;
  sq_TransferFiles.Next ;
  End ;// While not sq_TransferFiles.Eof...
  end;//if OpenFTP then

  Finally
  if clFTP.Active then clFTP.Close() ;
  if sq_TransferFiles.Active then
  sq_TransferFiles.Activef := False ;
  End ;

  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  end;
*)

(* LG
  procedure TdmVidaInvoice.clFTPDirectoryListing(Sender: TObject;
  AFileInfo: TclFtpFileInfo; const Source: String);
  const
  dirPrefix: array[Boolean] of string = ('', '/');
  begin
  lbList.Add(dirPrefix[AFileInfo.IsDirectory or AFileInfo.IsLink] + AFileInfo.FileName);
  end;

  procedure TdmVidaInvoice.DeleteRecievedFiles ;
  Var LocalDir      : String ;
  Save_Cursor   : TCursor ;
  Begin
  Save_Cursor    := Screen.Cursor ;
  Screen.Cursor  := crHourGlass ;    { Show hourglass cursor }
  Try
  if OpenFTP(LocalDir, cDown) then
  Begin
  if not clFTP.Active then Exit;
  Try
  sq_TransferFiles.Active := False ;
  sq_TransferFiles.ParamByName('TransferType').AsInteger := -1 ;//ALLA
  sq_TransferFiles.ParamByName('Complete').AsInteger     := 0 ;
  sq_TransferFiles.ParamByName('InOut').AsInteger        := 0 ; //0 = utleverans
  sq_TransferFiles.Active := True ;
  sq_TransferFiles.First ;
  While not sq_TransferFiles.Eof do
  Begin
  Try
  if (clFTP.FileExists(sq_TransferFilesFileName.AsString))
  and (SysUtils.FileExists(LocalDir + sq_TransferFilesFileName.AsString)) then
  Begin
  clFTP.Delete(sq_TransferFilesFileName.AsString) ;// (lbList.Items[lbList.ItemIndex]);
  SetTransferFileCompleteValue(sq_TransferFilesFileName.AsString, c_ImportPackageStatusFile, 2 {Deletad från }) ;
  End
  else
  dmsSystem.FDoLog('File not located on Ftp for delete: ' + LocalDir + sq_TransferFilesFileName.AsString) ;

  sq_TransferFiles.Next ;
  Except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      Raise ;
  End ;
  End ;
  End ; //While not..
  Finally
  if clFTP.Active then clFTP.Close() ;
  End ;
  End ;
  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  End ;

  procedure TdmVidaInvoice.HamtaFilerFranFTPOchUppdatera ;
  Var LocalDir      : String ;
  Save_Cursor   : TCursor ;
  begin
  Save_Cursor    := Screen.Cursor ;
  Screen.Cursor  := crHourGlass ;    { Show hourglass cursor }
  Try

  lbList:= TStringList.Create ;
  Try
  if OpenFTP(LocalDir, cDown) then
  Begin
  if not clFTP.Active then Exit;
  Try

  Try
  FillDirList ; //Lägger in filnamn i listan "lbList"

  Download500FilesFromFTP(LocalDir) ;//Laddar ner 500 filer till lokal mapp

  SetHTFPackageStatus(LocalDir) ; //Sätter paketets "Datum" status i tabellen "PackageStatusHTF" (5 olika statusar)

  SetHTFPackageStatus550(LocalDir) ; //Sätter paketets "Datum" status i tabellen "PackageStatusHTF" (5 olika statusar)

  //  ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
  Except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  Raise ;
  End ;
  End ;

  Finally
  if clFTP.Active then clFTP.Close() ;
  End ;
  End ;

  Finally
  lbList.Free ;
  End ;

  //Avregistrera paket som flyttats från regular till galge lager med lastnr
  TransformHTFPkgs ;

  DeleteRecievedFiles ;

  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  End ;

  LG *)

procedure TdmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF;
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    Try
      dmsProduct := TdmsProduct.Create(NIL);

      dmsProduct.SaveChangedPackages;
    Finally
      FreeAndNil(dmsProduct); // .Free ;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
End;

// går igenom alla IN (filer som kommer från htf) filer som Complete = 0
procedure TdmVidaInvoice.SetHTFPackageStatus(const LocalDir: String);
var
  // LONo,
  x, size, position, fileExistsResult: Integer;
  stream: TStream;
  FileName: String;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    sq_TransferFiles.Active := False;
    sq_TransferFiles.ParamByName('TransferType').AsInteger := -1; // ALLA
    sq_TransferFiles.ParamByName('Complete').AsInteger := 0;
    sq_TransferFiles.ParamByName('InOut').AsInteger := 0;
    // 0 = "Leverans från Hampen"
    sq_TransferFiles.Active := True;
    sq_TransferFiles.First;
    Try
      While not sq_TransferFiles.Eof do
      Begin
        LoadMemTableWithImportPackages
          (LocalDir + sq_TransferFilesFileName.AsString);

        // Lägger in paketnr i tabellen PackageStatusHTF
        UpdateHTFPackages(sq_TransferFilesFileName.AsString,
          sq_TransferFilesLONo.AsInteger, sq_TransferFilesLoadNo.AsInteger);

        // sq_TransferFiles.Edit ;
        // sq_TransferFilesComplete.AsInteger        := 1 ;//Paket överförda
        // sq_TransferFilesSendDate.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
        // sq_TransferFiles.Post ;

        // SetTransferFileCompleteValue(sq_TransferFilesFileName.AsString, c_ImportPackageStatusFile, 1 {Complete}) ;
        sq_TransferFiles.Next;

      End; // While not..
    Except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    End;

  Finally
    Screen.Cursor := Save_Cursor;
  End;
End;

(* LG
  //går igenom alla IN (filer som kommer från htf) filer som Complete = 0
  procedure TdmVidaInvoice.SetHTFPackageStatus550(const LocalDir : String) ;
  var
  //  LONo,
  x,
  size,
  position,
  fileExistsResult  : Integer;
  stream            : TStream;
  FileName          : String ;
  Save_Cursor       : TCursor ;
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try
  sq_TransferFiles.Active := False ;
  sq_TransferFiles.ParamByName('TransferType').AsInteger := -1 ;//ALLA
  sq_TransferFiles.ParamByName('Complete').AsInteger     := 0 ;
  sq_TransferFiles.ParamByName('InOut').AsInteger        := 0 ; //0 = ut
  sq_TransferFiles.Active := True ;
  sq_TransferFiles.First ;
  Try
  While not sq_TransferFiles.Eof do
  Begin
  //Hämtar data från exportfilen
  LoadMemTableWithImportPackages550(LocalDir + sq_TransferFilesFileName.AsString) ;

  //Lägger in paketnr i tabellen PackageStatusHTF
  UpdateHTFPackages550(sq_TransferFilesFileName.AsString, sq_TransferFilesLONo.AsInteger, sq_TransferFilesLoadNo.AsInteger) ;

  //  sq_TransferFiles.Edit ;
  //  sq_TransferFilesComplete.AsInteger        := 1 ;//Paket överförda
  //  sq_TransferFilesSendDate.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
  //  sq_TransferFiles.Post ;
  SetTransferFileCompleteValue(sq_TransferFilesFileName.AsString, c_ImportPackageStatusFile, 0 {Complete}) ;
  sq_TransferFiles.Next ;
  End ; //While not..
  Except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  Raise ;
  End ;
  End ;

  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  End ;

  LG *)

procedure TdmVidaInvoice.UpdateHTFPackages(const FileName: String;
  const LONo, LoadNo: Integer);
Var
  StatusDate: String;
  SQLDate: TSQLTimeStamp;
  PackageStatus: Integer;
  PackageTypeNo: Integer;
  ProductNo: Integer;
  ALMM: Double;

  Function GetHTFPackageStatus: Integer;
  Begin
    if Length(mtImportUtlevererat.AsString) > 0 then
    Begin
      Result := 5;
      StatusDate := mtImportUtlevererat.AsString;
    End
    else if Length(mtImportKlarForLeverans.AsString) > 0 then
    Begin
      Result := 4;
      StatusDate := mtImportKlarForLeverans.AsString;
    End
    else if Length(mtImportProduktionsDatum.AsString) > 0 then
    Begin
      Result := 3;
      StatusDate := mtImportProduktionsDatum.AsString;
    End
    else if Length(mtImportKlarTillProduktion.AsString) > 0 then
    Begin
      Result := 2;
      StatusDate := mtImportKlarTillProduktion.AsString;
    End
    else if Length(mtImportMottaget.AsString) > 0 then
    Begin
      Result := 1;
      StatusDate := mtImportMottaget.AsString;
    End;
  End;

Begin
  // UpdateHTFPackages
  mtImport.Filter := 'RecordType = 500';
  mtImport.Filtered := True;
  Try
    mtImport.First;
    While not mtImport.Eof do
    Begin
      PackageStatus := GetHTFPackageStatus;
      StatusDate := ReplaceCharWithChar(StatusDate, '/', '-');

      sq_PackageStatusHTF.Active := False;
      sq_PackageStatusHTF.ParamByName('Paketnr').AsInteger :=
        mtImportPaketnr.AsInteger;
      sq_PackageStatusHTF.ParamByName('Prefix').AsString :=
        mtImportPrefix.AsString;
      sq_PackageStatusHTF.ParamByName('FileName').AsString := FileName;
      sq_PackageStatusHTF.ParamByName('RecordType').AsInteger :=
        mtImportRecordType.AsInteger;
      sq_PackageStatusHTF.Active := True;
      if sq_PackageStatusHTF.Eof then
      Begin
        if (not mtImportPrefix.IsNull) and (Length(mtImportPrefix.AsString) > 0)
          and (not mtImportPaketnr.IsNull) and (mtImportPaketnr.AsInteger > 0)
        then
        Begin
          sq_PackageStatusHTF.Insert;
          sq_PackageStatusHTFPaketnr.AsInteger := mtImportPaketnr.AsInteger;
          sq_PackageStatusHTFPrefix.AsString := mtImportPrefix.AsString;
          sq_PackageStatusHTFStyck.AsInteger := mtImportStyck.AsInteger;
          sq_PackageStatusHTFStatus.AsInteger := PackageStatus;
          sq_PackageStatusHTFRecordType.AsInteger :=
            mtImportRecordType.AsInteger;
          if TryStrToSQLTimeStamp(StatusDate, SQLDate) then
            // SQLDate := sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp ;
            sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp := SQLDate;
          sq_PackageStatusHTFOriginalStyck.AsInteger :=
            dmsSystem.GetCurrentStyckInPackage(mtImportPaketnr.AsInteger,
            mtImportPrefix.AsString, PackageTypeNo, ProductNo, ALMM);
          sq_PackageStatusHTFPackageTypeNo.AsInteger := PackageTypeNo;
          sq_PackageStatusHTFComplete.AsInteger := 0;
          sq_PackageStatusHTFFileName.AsString := FileName;
          sq_PackageStatusHTFLONo.AsInteger := LONo;
          sq_PackageStatusHTFLoadNo.AsInteger := LoadNo;
          sq_PackageStatusHTFHTF_FS.AsString :=
            mtImportUtlevereringsJournal.AsString;

          // sq_PackageStatusHTFProductCode.AsString        := mtImportProduktKod.AsString ;
          sq_PackageStatusHTFProductNo.AsInteger := ProductNo;
          sq_PackageStatusHTFPEFC.AsInteger := mtImportPEFC.AsInteger;
          sq_PackageStatusHTFALMM.AsFloat := ALMM;
          // sq_PackageStatusHTFDateAndTime.AsString        :=

          sq_PackageStatusHTF.Post;
        End; // if (Length(mtImportPrefix.AsString) > 0) and (not mtImportPrefix.IsNull) then
      End
      else
      Begin
        sq_PackageStatusHTF.Edit;
        sq_PackageStatusHTFStyck.AsInteger := mtImportStyck.AsInteger;
        sq_PackageStatusHTFStatus.AsInteger := PackageStatus;
        sq_PackageStatusHTFRecordType.AsInteger := mtImportRecordType.AsInteger;
        if TryStrToSQLTimeStamp(StatusDate, SQLDate) then
          // SQLDate := sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp ;
          sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp := SQLDate;
        sq_PackageStatusHTFOriginalStyck.AsInteger :=
          dmsSystem.GetCurrentStyckInPackage(mtImportPaketnr.AsInteger,
          mtImportPrefix.AsString, PackageTypeNo, ProductNo, ALMM);
        sq_PackageStatusHTFPackageTypeNo.AsInteger := PackageTypeNo;
        sq_PackageStatusHTFComplete.AsInteger := 0;
        sq_PackageStatusHTFFileName.AsString := FileName;
        sq_PackageStatusHTFLONo.AsInteger := LONo;
        sq_PackageStatusHTFLoadNo.AsInteger := LoadNo;
        sq_PackageStatusHTFHTF_FS.AsString :=
          mtImportUtlevereringsJournal.AsString;

        // sq_PackageStatusHTFProductCode.AsString        := mtImportProduktKod.AsString ;
        sq_PackageStatusHTFProductNo.AsInteger := ProductNo;
        sq_PackageStatusHTFPEFC.AsInteger := mtImportPEFC.AsInteger;
        sq_PackageStatusHTFALMM.AsFloat := ALMM;

        sq_PackageStatusHTF.Post;
      End;
      mtImport.Next;
    End; // While
  Finally
    mtImport.Filtered := False;
  End;
End;

procedure TdmVidaInvoice.UpdateHTFPackages550(const FileName: String;
  const LONo, LoadNo: Integer);
Var
  StatusDate: String;
  SQLDate: TSQLTimeStamp;
  PackageStatus: Integer;
  PackageTypeNo: Integer;
  ProductNo: Integer;
  ALMM: Double;

  // procedure TdmVidaInvoice.UpdateHTFPackages550
Begin
  mtImport.Filter := 'RecordType = 550';
  mtImport.Filtered := True;
  Try
    mtImport.First;
    While not mtImport.Eof do
    Begin
      // StatusDate    := ReplaceCharWithChar(StatusDate, '/', '-') ;

      sq_PackageStatusHTF.Active := False;
      sq_PackageStatusHTF.ParamByName('Paketnr').AsInteger :=
        mtImportPaketnr.AsInteger;
      sq_PackageStatusHTF.ParamByName('Prefix').AsString :=
        mtImportPrefix.AsString;
      sq_PackageStatusHTF.ParamByName('FileName').AsString := FileName;
      sq_PackageStatusHTF.ParamByName('RecordType').AsInteger :=
        mtImportRecordType.AsInteger;
      sq_PackageStatusHTF.Active := True;
      if sq_PackageStatusHTF.Eof then
      Begin
        sq_PackageStatusHTF.Insert;
        sq_PackageStatusHTFPaketnr.AsInteger := mtImportPaketnr.AsInteger;
        sq_PackageStatusHTFPrefix.AsString := mtImportPrefix.AsString;
        sq_PackageStatusHTFStyck.AsInteger := mtImportStyck.AsInteger;
        sq_PackageStatusHTFStatus.AsInteger := 6;
        sq_PackageStatusHTFRecordType.AsInteger := mtImportRecordType.AsInteger;
        // if TryStrToSQLTimeStamp(StatusDate, SQLDate) then
        // SQLDate := sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp ;
        // sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp  := SQLDate ;
        sq_PackageStatusHTFOriginalStyck.AsInteger :=
          dmsSystem.GetCurrentStyckInPackage(mtImportPaketnr.AsInteger,
          mtImportPrefix.AsString, PackageTypeNo, ProductNo, ALMM);
        // sq_PackageStatusHTFOriginalStyck.AsInteger     := -1 ;
        sq_PackageStatusHTFPackageTypeNo.AsInteger := PackageTypeNo;
        sq_PackageStatusHTFComplete.AsInteger := 0;
        sq_PackageStatusHTFFileName.AsString := FileName;
        sq_PackageStatusHTFLONo.AsInteger := LONo;
        sq_PackageStatusHTFLoadNo.AsInteger := LoadNo;
        sq_PackageStatusHTFHTF_FS.AsString :=
          mtImportUtlevereringsJournal.AsString;
        sq_PackageStatusHTFProductCode.AsString := mtImportProduktKod.AsString;
        sq_PackageStatusHTFProductNo.AsInteger :=
          dmsSystem.GetProductNoByProductCode
          (sq_PackageStatusHTFProductCode.AsString);
        sq_PackageStatusHTFPEFC.AsInteger := mtImportPEFC.AsInteger;
        sq_PackageStatusHTFALMM.AsFloat := mtImportALMM.AsFloat;
        sq_PackageStatusHTF.Post;
      End
      else
      Begin
        sq_PackageStatusHTF.Edit;
        sq_PackageStatusHTFStyck.AsInteger := mtImportStyck.AsInteger;
        sq_PackageStatusHTFStatus.AsInteger := 6;
        sq_PackageStatusHTFRecordType.AsInteger := mtImportRecordType.AsInteger;
        // if TryStrToSQLTimeStamp(StatusDate, SQLDate) then
        // sq_PackageStatusHTFStatusDatum.AsSQLTimeStamp  := SQLDate ;
        sq_PackageStatusHTFOriginalStyck.AsInteger :=
          dmsSystem.GetCurrentStyckInPackage(mtImportPaketnr.AsInteger,
          mtImportPrefix.AsString, PackageTypeNo, ProductNo, ALMM);
        sq_PackageStatusHTFPackageTypeNo.AsInteger := PackageTypeNo;
        sq_PackageStatusHTFComplete.AsInteger := 0;
        sq_PackageStatusHTFFileName.AsString := FileName;
        sq_PackageStatusHTFLONo.AsInteger := LONo;
        sq_PackageStatusHTFLoadNo.AsInteger := LoadNo;
        sq_PackageStatusHTFHTF_FS.AsString :=
          mtImportUtlevereringsJournal.AsString;
        sq_PackageStatusHTFProductCode.AsString := mtImportProduktKod.AsString;
        sq_PackageStatusHTFProductNo.AsInteger :=
          dmsSystem.GetProductNoByProductCode
          (sq_PackageStatusHTFProductCode.AsString);
        sq_PackageStatusHTFPEFC.AsInteger := mtImportPEFC.AsInteger;
        sq_PackageStatusHTFALMM.AsFloat := mtImportALMM.AsFloat;
        sq_PackageStatusHTF.Post;
      End;
      mtImport.Next;
    End; // While
  Finally
    mtImport.Filtered := False;
  End;
End;

(* LG
  procedure TdmVidaInvoice.Download500FilesFromFTP(const LocalDir : String) ;
  var
  x,
  y,
  size,
  position,
  LONo,
  LoadNo,
  L,
  Length_,
  Pos_,
  fileExistsResult  : Integer;
  stream            : TStream;
  HTF_FS,
  TempFileName,
  FileName          : String ;
  Save_Cursor       : TCursor ;

  Function GetLONoByLoadNo : Integer ;
  Begin
  Try
  sq_GetLONoByLoadNo.Active  := False ;
  sq_GetLONoByLoadNo.ParamByName('LoadNo').AsInteger := LoadNo ;
  sq_GetLONoByLoadNo.Active  := True ;
  if not sq_GetLONoByLoadNo.Eof then
  Result  := sq_GetLONoByLoadNoLONo.AsInteger
  else
  Result  := -1 ;
  Finally
  sq_GetLONoByLoadNo.Active  := False ;
  End ;
  End ;


  //Download500FilesFromFTP
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try

  For x := 0 to lbList.Count - 1 do
  Begin
  if not clFTP.Active then Exit;
  if // (lbList.ItemIndex > -1) and
  (lbList.Strings[x] <> '') and
  (lbList.Strings[x][1] <> '/') then
  begin
  FileName := lbList.Strings[x] ;
  //   L  := Length(FileName) - 9 ;
  LoadNo         := -1 ;
  TempFileName   := FileName ;
  if FileName[3] = 'U' then
  Begin
  //Kopiera LOnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"
  For y := 1 to 3 do
  Begin
  Pos_           := Pos('_', TempFileName) ;
  Length_        := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName   := Copy(TempFileName, Pos_ + 1, Length_ + 1) ;
  End ;
  LoadNo  := StrToIntDef(Copy(TempFileName, 1, Length(TempFileName)-4),0) ;
  LONo    := GetLONoByLoadNo ;

  TempFileName := FileName ;
  //Kopiera htf Följesedelnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"  nnnn_aaaa.csv"
  For y := 1 to 2 do
  Begin
  Pos_         := Pos('_', TempFileName) ;
  Length_      := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, Pos_ + 1, Length_ + 1) ;
  End ;

  Pos_          := Pos('_', TempFileName) ;
  Length_       := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName  := Copy(TempFileName, 1, Pos_ - 1) ;
  HTF_FS        := TempFileName ;

  End
  else
  Begin
  //Kopiera LOnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"
  End ;



  //    if SaveDialog.Execute() then
  //    begin
  size := clFTP.GetFileSize(lbList.Strings[x]);
  position := 0;
  stream := nil;
  try
  if FileExists(LocalDir + FileName) then
  begin
  //          fileExistsResult := TFileExistsDialog.ShowFileDialog(FileName);
  //          if (fileExistsResult = mrCancel) then Exit;
  //          if (fileExistsResult = mrYes) then
  //          begin
  stream := TFileStream.Create(LocalDir + FileName, fmCreate);
  //          end ;

  {          else
  begin
  stream := TFileStream.Create(FileName, fmOpenReadWrite);
  if (size > stream.Size) then
  begin
  position := stream.Size;
  end
  else
  begin
  stream.Free();
  stream := nil;
  stream := TFileStream.Create(FileName, fmCreate);
  end;
  end; }
  end
  else//if FileExists(FileName) then
  begin
  stream := TFileStream.Create(LocalDir + FileName, fmCreate);
  end;
  //        ProgressBar.Min := 0;
  //        ProgressBar.Max := size;
  //        ProgressBar.Position := position;
  clFTP.GetFile(lbList.Strings[x], stream, position, -1) ;

  if LoadNo = -1 then
  StoreTransferFile(FileName, HTF_FS, c_ImportPackageStatusFile, LONo, LoadNo, 0)
  else
  StoreTransferFile(FileName, HTF_FS, c_ImportLoadFile, LONo, LoadNo, 0) ;


  //        ShowMessage('Done');
  finally
  stream.Free();
  end;
  //    end; //if SaveDialog.Execute() then
  end;//  if (//lbList.ItemIndex > -1) and
  End ;//For x := 0 to lbList.Count - 1 do

  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  end;

  LG *)

procedure TdmVidaInvoice.sq_PackageStatusHTFBeforePost(DataSet: TDataSet);
begin
  sq_PackageStatusHTFCreatedUser.AsInteger := ThisUser.UserID;
  sq_PackageStatusHTFDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
end;

procedure TdmVidaInvoice.CreateLoadToShip(const LONo, LoadNo: Integer);
// Var
// CreationTime  : TDateTime ;
// FFileList     : TStringList;
// I             : Integer;
// L_SupplierNo  : Integer ;

begin
  if LONo > 0 then
  Begin
    Try
      CreateLoadAndEntryTo_Load_Imp(LONo, LoadNo);
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;
  End;
end;

procedure TdmVidaInvoice.CreateLoadAndEntryTo_Load_Imp(const LONo,
  LoadNo: Integer);
Var
  Save_Cursor: TCursor;

  // Lokala metoder
  Function GetMax_LoadDetailNo: Integer;
  Begin
    Try
      sq_LDMax.Active := False;
      sq_LDMax.ParamByName('LoadNo').AsInteger := LoadNo;
      sq_LDMax.Active := True;
      if not sq_LDMax.Eof then
        Result := sq_LDMaxMaxLoadDetailNo.AsInteger + 1
      else
        Result := 1;
    Finally
      sq_LDMax.Active := False;
    End;
  End;

  Function GetLDLIPNo: Integer;
  Begin
    Try
      sq_GetLDLIPNo.Active := False;
      sq_GetLDLIPNo.ParamByName('PackageNo').AsInteger :=
        sq_PackageStatusHTFByFileNamePaketnr.AsInteger;
      sq_GetLDLIPNo.ParamByName('SupplierCode').AsString :=
        sq_PackageStatusHTFByFileNamePrefix.AsString;
      sq_GetLDLIPNo.Active := True;
      if not sq_GetLDLIPNo.Eof then
        Result := sq_GetLDLIPNoLIPNo.AsInteger
      else
        Result := -1;
    Finally
      sq_GetLDLIPNo.Active := False;
    End;
  End;

// procedure TdmVidaInvoice.CreateLoadAndEntryTo_Load_Imp
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    dmsConnector.StartTransaction;
    Try
      GlobalLoadDetailNo := GetMax_LoadDetailNo;

      // Lägg till Paket som INTE finns i lasten men i htf
      sq_LD.Active := False;
      sq_LD.ParamByName('LoadNo').AsInteger := LoadNo;
      sq_LD.Active := True;

      sq_PackageStatusHTFByFileName.Active := False;
      sq_PackageStatusHTFByFileName.ParamByName('LoadNo').AsInteger := LoadNo;
      sq_PackageStatusHTFByFileName.Active := True;
      sq_PackageStatusHTFByFileName.First;
      While not sq_PackageStatusHTFByFileName.Eof do
      Begin
        if not sq_LD.FindKey([sq_PackageStatusHTFByFileNamePaketnr.AsInteger,
          sq_PackageStatusHTFByFileNamePrefix.AsString]) then
        Begin
          sq_LD.Insert;
          sq_LDLoadNo.AsInteger := LoadNo;
          sq_LDPackageNo.AsInteger :=
            sq_PackageStatusHTFByFileNamePaketnr.AsInteger;
          sq_LDSupplierCode.AsString :=
            sq_PackageStatusHTFByFileNamePrefix.AsString;
          sq_LDPackageTypeNo.AsInteger :=
            sq_PackageStatusHTFByFileNamePackageTypeNo.AsInteger;
          sq_LDNoOfPackages.AsInteger := 1;
          sq_LDShippingPlanNo.AsInteger := LONo;
          sq_LDCreatedUser.AsInteger := ThisUser.UserID;
          sq_LDModifiedUser.AsInteger := ThisUser.UserID;
          sq_LDDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
          sq_LDLIPNo.AsInteger := GetLDLIPNo;
          sq_LDPackageOK.AsInteger := VP_NyaHTFPaket;
          sq_LDProblemPackageLog.AsString := 'Utbytt paket';
          GlobalLoadDetailNo := succ(GlobalLoadDetailNo);

          sq_LD.Post;
        End
        else if sq_LDPackageTypeNo.AsInteger <>
          sq_PackageStatusHTFByFileNamePackageTypeNo.AsInteger then
        Begin
          sq_LD.Edit;
          // sq_LDPackageNo.AsInteger       := sq_PackageStatusHTFByFileNamePaketnr.AsInteger ;
          // sq_LDSupplierCode.AsString     := sq_PackageStatusHTFByFileNamePrefix.AsString ;
          sq_LDPackageTypeNo.AsInteger :=
            sq_PackageStatusHTFByFileNamePackageTypeNo.AsInteger;
          // sq_LDNoOfPackages.AsInteger    := 1 ;
          // sq_LDShippingPlanNo.AsInteger  := LONo ;
          // sq_LDCreatedUser.AsInteger     := ThisUser.UserID ;
          sq_LDModifiedUser.AsInteger := ThisUser.UserID;
          sq_LDPackageOK.AsInteger := 1;
          sq_LDProblemPackageLog.AsString := 'Validera';
          // sq_LDDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
          // sq_LDLIPNo.AsInteger           := GetLDLIPNo ;
          sq_LD.Post;
        End;

        sq_PackageStatusHTFByFileName.Next;
      End;

      // Ta bort Paket som FINNS i lasten men INTE i htf
      Try
        sq_RemovePkgs.ParamByName('LoadNo').AsInteger := LoadNo;
        sq_RemovePkgs.ExecSQL;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          Raise;
        End;
      end;

      dmsConnector.Commit;
    Except
      dmsConnector.Rollback;
    End;

  Finally
    Screen.Cursor := Save_Cursor;
  End;

End;

// Läser in en fil och skapar en last
(*
  procedure TdmVidaInvoice.CreateLoadAndEntryTo_Load_Imp(const L_SupplierNo, LONo : Integer;const FileName : String) ;
  Var
  LoadID, FS,
  Prefix  : String ;
  TempLoadNo,
  NewLoadNo : Integer ;
  AntalPaket  : Integer ;


  procedure DeleteTempPkg ;
  Begin
  with dmsSystem do
  Begin
  Try
  sq_DelTempPkg.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  sq_DelTempPkg.ExecSQL ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  End ;
  End ;

  procedure AddPkgToTempTable ;
  Begin
  with dmsSystem do
  Begin
  sq_PackageStatusHTFByFileName.Active  := False ;
  sq_PackageStatusHTFByFileName.ParamByName('FileName').AsString  := FileName ;
  sq_PackageStatusHTFByFileName.Active  := True ;
  sq_PackageStatusHTFByFileName.First ;

  While not sq_PackageStatusHTFByFileName.Eof do
  Begin
  Try
  sq_InsTempPkg.ParamByName('UserID').AsInteger       := ThisUser.UserID ;
  sq_InsTempPkg.ParamByName('PackageNo').AsInteger    := sq_PackageStatusHTFByFileNamePaketnr.AsInteger ;
  sq_InsTempPkg.ParamByName('SupplierCode').AsString  := sq_PackageStatusHTFByFileNamePrefix.AsString ;
  sq_InsTempPkg.ExecSQL ;
  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  //      ShowMessage(E.Message);
  Raise ;
  End ;
  end;
  sq_PackageStatusHTFByFileName.Next ;
  AntalPaket  := succ(AntalPaket) ;
  End ;//While..
  End ;//With..
  End ;

  //CreateLoadAndEntryTo_Load_Imp
  Begin
  AntalPaket  := 0 ;
  LoadID      := '' ;
  FS          := '' ;
  DeleteTempPkg ;
  AddPkgToTempTable ;


  dmsConnector.StartTransaction;
  try
  NewLoadNo:= dmsSystem.NewLoad(L_SupplierNo, ThisUser.UserID, LONo, LoadID, FS) ;
  dmsSystem.InsLoad_Imp(TempLoadNo, NewLoadNo, LONo, AntalPaket) ;

  dmsConnector.Commit  ;
  except
  dmsConnector.Rollback ;
  raise;
  end;

  dmsSystem.cds_Load_Imp.Active := False ;
  dmsSystem.cds_Load_Imp.ParamByName('UserID').AsInteger  := ThisUser.UserID ;
  dmsSystem.cds_Load_Imp.Active := True ;

  End ;
*)

procedure TdmVidaInvoice.sq_LDBeforePost(DataSet: TDataSet);
begin
  sq_LD.FieldByName('LoadDetailNo').AsInteger := GlobalLoadDetailNo;
end;

Function TdmVidaInvoice.GetFileNameOfLoadNoFileName(const LoadNo
  : Integer): String;
Begin
  sq_GetFileNameOfLoadNo.ParamByName('LoadNo').AsInteger := LoadNo;
  Try
    sq_GetFileNameOfLoadNo.Active := True;
    if not sq_GetFileNameOfLoadNo.Eof then
      Result := sq_GetFileNameOfLoadNoFileName.AsString
    else
      Result := '';
  Finally
    sq_GetFileNameOfLoadNo.Active := False;
  End;
End;

Function TdmVidaInvoice.HamtaEnUtleveransFran_PackageStatusHTF
  (const EfterfragadLastnr: Integer): String;
Var // LocalDir      : String ;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try

    sq_GetPackageData.Active := False;
    sq_GetPackageData.ParamByName('LoadNo').AsInteger := EfterfragadLastnr;
    sq_GetPackageData.Active := True;
    sq_GetPackageData.First;
    Try
      if not sq_GetPackageData.Eof then
      Begin
        sq_GetPackageData.Filter := 'LIP_PkgNo <> PaketNr';
        sq_GetPackageData.Filtered := True;
        if sq_GetPackageData.RecordCount > 0 then
          Result := 'Lastfilen är inläst men paketen har inte uppdaterats, alt att paketnr i filen inte är aktiva i lagret'
        else
        Begin
          Result := 'LoadOK';
          // FileName  := sq_GetPackageDataFileName.AsString ;
        End;
      End
      else
        Result := 'Lastfilen är inte inläst.';
    Finally
      sq_GetPackageData.Filtered := False;
      sq_GetPackageData.Active := False;
    End;

  Finally
    Screen.Cursor := Save_Cursor;
  End;

  (* Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    Try

    lbList:= TStringList.Create ;
    Try
    if OpenFTP(LocalDir, cDown) then
    Begin
    if not clFTP.Active then Exit;
    Try
    FillDirList ;

    FileName  := GetFileNameForEfterfragadLastnr(EfterfragadLastnr) ;
    if FileName <> 'No_Match' then
    Begin
    DownENload500FilesFromFTP(LocalDir, FileName) ;//Laddar ner 500 filer till lokal mapp

    SetHTFPackageStatus(LocalDir) ; //Sätter paketets status i tabellen "PackageStatusHTF"

    SetHTFPackageStatus550(LocalDir) ; //Sätter paketets "Datum" status i tabellen "PackageStatusHTF" (5 olika statusar)

    ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;

    Result := FileName ;
    End
    else
    Begin
    Result := 'No_Match' ;
    ShowMessage('Hittar ingen matchande fil till lastnr ' + IntToStr(EfterfragadLastnr)) ;
    End ;

    Finally
    if clFTP.Active then clFTP.Close() ;
    End ;
    End //if OpenFTP(LocalDir, cDown) then
    else
    Result := 'No_Match' ;

    Finally
    lbList.Free ;
    End ;

    Finally
    Screen.Cursor := Save_Cursor ;
    End ; *)
End;

(* LG
  Function TdmVidaInvoice.GetFileNameForEfterfragadLastnr(const FragarEfterLoadNo : Integer) : String ;
  Var x, y, Pos_,
  Length_,
  LoadNo        : Integer ;
  FileName,
  TempFileName  : String ;
  Begin
  if not clFTP.Active then Exit;
  Result := 'No_Match' ;
  For x := 0 to lbList.Count - 1 do
  Begin
  if (lbList.Strings[x] <> '') and
  (lbList.Strings[x][1] <> '/') then
  begin
  FileName := lbList.Strings[x] ;
  //   L  := Length(FileName) - 9 ;
  LoadNo         := -1 ;
  TempFileName := FileName ;
  if FileName[2] = 'U' then
  Begin
  //Kopiera LOnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"
  For y := 1 to 3 do
  Begin
  Pos_  := Pos('_', TempFileName) ;
  Length_ := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, Pos_ + 1, Length_ + 1) ;
  End ;
  LoadNo  := StrToIntDef(Copy(TempFileName, 1, Length(TempFileName)-4),0) ;

  {    LONo    := GetLONoByLoadNo ;

  TempFileName := FileName ;
  //Kopiera htf Följesedelnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"  nnnn_aaaa.csv"
  For y := 1 to 2 do
  Begin
  Pos_  := Pos('_', TempFileName) ;
  Length_ := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, Pos_ + 1, Length_ + 1) ;
  End ;

  Pos_  := Pos('_', TempFileName) ;
  Length_ := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, 1, Pos_ - 1) ;
  HTF_FS := TempFileName ;
  }

  if FragarEfterLoadNo = LoadNo then
  Result := FileName ;

  End
  else
  Begin
  //Kopiera LOnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"
  End ;
  End ;//if (lbList.Strings[x] <> '') and
  End ;// For x := 0 to lbList.Count - 1 do
  End ;

  procedure TdmVidaInvoice.DownENload500FilesFromFTP(const LocalDir, FileName : String) ;
  var
  x,
  y,
  size,
  position,
  LONo,
  LoadNo,
  L,
  Length_,
  Pos_,
  fileExistsResult  : Integer;
  stream            : TStream;
  HTF_FS,
  TempFileName      : String ;
  //  FileName          : String ;
  Save_Cursor       : TCursor ;

  Function GetLONoByLoadNo : Integer ;
  Begin
  Try
  sq_GetLONoByLoadNo.Active  := False ;
  sq_GetLONoByLoadNo.ParamByName('LoadNo').AsInteger := LoadNo ;
  sq_GetLONoByLoadNo.Active  := True ;
  if not sq_GetLONoByLoadNo.Eof then
  Result  := sq_GetLONoByLoadNoLONo.AsInteger
  else
  Result  := -1 ;
  Finally
  sq_GetLONoByLoadNo.Active  := False ;
  End ;
  End ;
  //procedure TdmVidaInvoice.DownENload500FilesFromFTP
  begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Try

  // For x := 0 to lbList.Count - 1 do
  // Begin
  if not clFTP.Active then Exit;
  if // (lbList.ItemIndex > -1) and
  (FileName <> '') and
  (FileName[1] <> '/') then
  begin
  //   FileName := lbList.Strings[x];
  //   L  := Length(FileName) - 9 ;
  LoadNo         := -1 ;
  TempFileName := FileName ;
  if FileName[2] = 'U' then
  Begin
  //Kopiera LOnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"
  For y := 1 to 3 do
  Begin
  Pos_  := Pos('_', TempFileName) ;
  Length_ := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, Pos_ + 1, Length_ + 1) ;
  End ;
  LoadNo  := StrToIntDef(Copy(TempFileName, 1, Length(TempFileName)-4),0) ;
  LONo    := GetLONoByLoadNo ;

  TempFileName := FileName ;
  //Kopiera htf Följesedelnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"  nnnn_aaaa.csv"
  For y := 1 to 2 do
  Begin
  Pos_  := Pos('_', TempFileName) ;
  Length_ := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, Pos_ + 1, Length_ + 1) ;
  End ;

  Pos_  := Pos('_', TempFileName) ;
  Length_ := Length(TempFileName)-(Pos_ + 1) ;
  TempFileName := Copy(TempFileName, 1, Pos_ - 1) ;
  HTF_FS := TempFileName ;

  End
  else
  Begin
  //Kopiera LOnr från filnamn "5U_YYMMDD_nnnn_aaaa.csv"
  End ;



  //    if SaveDialog.Execute() then
  //    begin
  size := clFTP.GetFileSize(FileName) ;//clFTP.GetFileSize(lbList.Strings[x]);
  position := 0;
  stream := nil;
  try
  if FileExists(LocalDir + FileName) then
  begin
  //          fileExistsResult := TFileExistsDialog.ShowFileDialog(FileName);
  //          if (fileExistsResult = mrCancel) then Exit;
  //          if (fileExistsResult = mrYes) then
  //          begin
  stream := TFileStream.Create(LocalDir + FileName, fmCreate);
  //          end ;

  {          else
  begin
  stream := TFileStream.Create(FileName, fmOpenReadWrite);
  if (size > stream.Size) then
  begin
  position := stream.Size;
  end
  else
  begin
  stream.Free();
  stream := nil;
  stream := TFileStream.Create(FileName, fmCreate);
  end;
  end; }
  end
  else//if FileExists(FileName) then
  begin
  stream := TFileStream.Create(LocalDir + FileName, fmCreate);
  end;
  //        ProgressBar.Min := 0;
  //        ProgressBar.Max := size;
  //        ProgressBar.Position := position;
  clFTP.GetFile(FileName, stream, position, -1) ;

  if LoadNo = -1 then
  StoreTransferFile(FileName, HTF_FS, c_ImportPackageStatusFile, LONo, LoadNo, 0)
  else
  StoreTransferFile(FileName, HTF_FS, c_ImportLoadFile, LONo, LoadNo, 0) ;


  //        ShowMessage('Done');
  finally
  stream.Free();
  end;
  //    end; //if SaveDialog.Execute() then
  end;//  if (//lbList.ItemIndex > -1) and
  // End ;//For x := 0 to lbList.Count - 1 do

  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
  end;

  LG *)

procedure TdmVidaInvoice.QImport2ASCII550BeforePost(Sender: TObject;
  Row: TQImportRow; var Accept: Boolean);
Var
  i: Integer;
begin
  for i := 0 to Row.Count - 1 do
  begin
    if (Row[i].Name = 'RecordType') then
      if Row[i].Value = '550' then
        Accept := True
      else
      Begin
        Accept := False;
        Exit;
      End;
  End;
End;

// RESKONTRA
procedure TdmVidaInvoice.EXEC_xp_ldglogwrite(const cid, person: String;
  const stype: Integer; const enum: String; const invno, seq: Integer;
  const org: String; const bookdate, invdate, duedate: TSQLTimeStamp;
  const currency: String; const amount, foramount, vat: Double;
  const vatcode: Byte; const account: String; const approval1: String;
  const logno, vouno: Integer; const serie, Object2, Object5: String);

Begin
  // ShowMessage('Before sp_xp_ldglogwrite');
  Try
    sp_xp_ldglogwrite.Close;
    sp_xp_ldglogwrite.ParamByName('@cid').AsString := cid; // varchar 8
    sp_xp_ldglogwrite.ParamByName('@person').AsString := person; // varchar 12
    sp_xp_ldglogwrite.ParamByName('@type').AsInteger := stype; // smallint
    sp_xp_ldglogwrite.ParamByName('@enum').AsString := enum; // varchar 8
    sp_xp_ldglogwrite.ParamByName('@invno').AsInteger := invno; // int
    sp_xp_ldglogwrite.ParamByName('@seq').AsInteger := seq; // Set to 0, tinyint
    sp_xp_ldglogwrite.ParamByName('@org').AsString := org;
    // Ursprungligt fakturanummer., varchar 30
    sp_xp_ldglogwrite.ParamByName('@bookdate').AsSQLTimeStamp := bookdate;
    // datetime
    sp_xp_ldglogwrite.ParamByName('@invdate').AsSQLTimeStamp := invdate;
    // datetime
    sp_xp_ldglogwrite.ParamByName('@duedate').AsSQLTimeStamp := duedate;
    // datetime
    sp_xp_ldglogwrite.ParamByName('@currency').AsString := currency;
    // varchar 3
    sp_xp_ldglogwrite.ParamByName('@amount').Value := amount; // xfloat
    sp_xp_ldglogwrite.ParamByName('@foramount').Value := foramount; // xfloat
    sp_xp_ldglogwrite.ParamByName('@vat').Value := vat; // xfloat
    sp_xp_ldglogwrite.ParamByName('@vatcode').Value := vatcode; // tinyint
    // sp_xp_ldglogwrite.ParamByName('discount').AsString:= discount ; //varchar 8
    sp_xp_ldglogwrite.ParamByName('@account').AsString := account; // varchar 6
    // sp_xp_ldglogwrite.ParamByName('mop').AsString:= mop ; //varchar 8
    sp_xp_ldglogwrite.ParamByName('@approval1').AsString := approval1;
    // varchar 8
    sp_xp_ldglogwrite.ParamByName('@logno').AsInteger := logno; // int
    sp_xp_ldglogwrite.ParamByName('@vouno').AsInteger := vouno; // int

    if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
    dmsSystem.FDoLog('#2: Serie = ' + serie);

    sp_xp_ldglogwrite.ParamByName('@serie').AsString := serie; // varchar 8
    sp_xp_ldglogwrite.ParamByName('@o2').AsString := Object2; // varchar 8
    sp_xp_ldglogwrite.ParamByName('@o5').AsString := Object5; // varchar 8

    if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
      showmessage('#5: Serie = ' + serie + '    Vouno = ' + IntToStr(vouno) +
        '    logno = ' + IntToStr(logno) + '  cid = ' + cid);

    sp_xp_ldglogwrite.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
  // ShowMessage('After sp_xp_ldglogwrite');
  // ldglogwrite_logerror := sp_xp_ldglogwrite.ParamByName('logerror').AsInteger ;
End;

// VERIFIKATIONSHUVUD
procedure TdmVidaInvoice.EXEC_sp_VIS_xp_voulogwrite(const cid: String;
  const logtype: Integer; const logdate: TSQLTimeStamp;
  const enumerator: String; const invno: Integer; Const FreeText: String);

Begin
  // ShowMessage('procedure TdmVidaInvoice.EXEC_sp_VIS_xp_voulogwrite');
  vouno := 0;
  logno := 0;
  serie := '';

  if cid = 'VWAB' then
    serie := 'KR19'
  else if cid = 'VBAB' then
    serie := 'KR21'
  else
    serie := 'KR34';

  Try
    sp_VIS_xp_voulogwrite.ParamByName('@cid').AsString := cid;
    sp_VIS_xp_voulogwrite.ParamByName('@logtype').AsInteger := logtype;
    sp_VIS_xp_voulogwrite.ParamByName('@logdate').AsSQLTimeStamp := logdate;
    // datetime Bokföringsdag
    sp_VIS_xp_voulogwrite.ParamByName('@enumerator').AsString := enumerator;
    // Reskontraserie tex VWK1
    sp_VIS_xp_voulogwrite.ParamByName('@invno').AsInteger := invno;
    sp_VIS_xp_voulogwrite.ParamByName('@FreeText').AsString := FreeText;
    sp_VIS_xp_voulogwrite.ParamByName('@serie').AsString := serie;
    sp_VIS_xp_voulogwrite.ParamByName('@vouno').AsInteger := vouno; // invno ;

    if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
      showmessage('#1 EXEC_sp_VIS_xp_voulogwrite: Serie = ' + serie +
        '    Vouno = ' + IntToStr(vouno) + '    logno = ' + IntToStr(logno));

    sp_VIS_xp_voulogwrite.ExecProc;

    vouno := sp_VIS_xp_voulogwrite.ParamByName('@vouno').AsInteger;
    logno := sp_VIS_xp_voulogwrite.ParamByName('@logno').AsInteger;
    serie := sp_VIS_xp_voulogwrite.ParamByName('@serie').AsString;

    if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
    Begin
      dmsSystem.FDoLog('#2: Serie = ' + serie);
      dmsSystem.FDoLog('    Vouno = ' + IntToStr(vouno));
      dmsSystem.FDoLog('    logno = ' + IntToStr(logno));
    End;

    if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
      showmessage('#2 EXEC_sp_VIS_xp_voulogwrite: Serie = ' + serie +
        '    Vouno = ' + IntToStr(vouno) + '    logno = ' + IntToStr(logno));

  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;

  // ShowMessage('logno = '+inttostr(logno));
  // ShowMessage('vouno = '+inttostr(vouno));
  { sq_GetvoulogxData.ParamByName('invno').AsInteger       := invno ;
    sq_GetvoulogxData.ParamByName('enumerator').AsString   := enumerator ;
    sq_GetvoulogxData.Open ;
    if not sq_GetvoulogxData.Eof then
    Begin
    vouno:= sq_GetvoulogxData.FieldByName('vouno').AsInteger ;
    logno:= sq_GetvoulogxData.FieldByName('logo').AsInteger ;
    End ;
    sq_GetvoulogxData.Close ; }
End;

// VERIFIKATIONSRAD
procedure TdmVidaInvoice.EXEC_xp_vourowlogwrite(const logno: Integer;
  const account: String; const logdate: TSQLTimeStamp; const currency: String;
  const amount: Double; const foramount: Double; const vatcode: Integer;
  const creator: String; const Object2, Object5: String; Const NM3: Double;
  Const FreeText: String);

const
  LF = #10;

Begin

  if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
    showmessage('EXEC_xp_vourowlogwrite: ' + LF + ' logno = ' + IntToStr(logno)
      + LF + ' account = ' + account + LF + ' currency = ' + currency + LF +
      ' amount = ' + FloatToStr(amount) + LF + ' Object2 = ' + Object2 + LF +
      ' Object5 = ' + Object5 + LF + ' FreeText = ' + FreeText);

  // ShowMessage('Before EXEC_xp_vourowlogwrite');
  Try
    sp_VIS_xp_vourowlogwrite.ParamByName('@logno').AsInteger := logno;
    // From temp table
    // sp_VIS_xp_vourowlogwrite.ParamByName('logrow').AsInteger:= -1 ;//
    // sp_VIS_xp_vourowlogwrite.ParamByName('logtype').AsInteger:= 3 ;//Var loggen kommer ifrån, 3 ?
    sp_VIS_xp_vourowlogwrite.ParamByName('@account').AsString := account;
    // Konto. Refererar till account.account. tex 1510=Kundfordringar
    sp_VIS_xp_vourowlogwrite.ParamByName('@date').AsSQLTimeStamp := logdate;
    // Transaktionsdatum
    sp_VIS_xp_vourowlogwrite.ParamByName('@currency').AsString := currency;
    // Valuta. Refererar till currency.currency.
    sp_VIS_xp_vourowlogwrite.ParamByName('@amount').AsFloat := amount;
    sp_VIS_xp_vourowlogwrite.ParamByName('@foramount').AsFloat := foramount;
    sp_VIS_xp_vourowlogwrite.ParamByName('@number').AsFloat := NM3;
    // antal av vadå?
    sp_VIS_xp_vourowlogwrite.ParamByName('@vatcode').AsSmallInt := vatcode; //
    sp_VIS_xp_vourowlogwrite.ParamByName('@crtype').AsInteger := 5; // 5 = kund
    sp_VIS_xp_vourowlogwrite.ParamByName('@creator').AsString := creator;
    sp_VIS_xp_vourowlogwrite.ParamByName('@o2').AsString := Object2;
    // varchar 8
    sp_VIS_xp_vourowlogwrite.ParamByName('@o5').AsString := Object5;
    // varchar 8
    sp_VIS_xp_vourowlogwrite.ParamByName('@FreeText').AsString := FreeText;
    // varchar
    sp_VIS_xp_vourowlogwrite.ExecProc;
    vourowlog_logerror := sp_VIS_xp_vourowlogwrite.ParamByName('@logerror')
      .AsInteger;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;

  // ShowMessage('After EXEC_xp_vourowlogwrite');
  { @logno, @logrow, @logerror, @account, @date, @currency, @amount,
    @foramount, @number,
    @o1, @o2, @o3, @o4, @o5, @o6, @o7, @o8, @freetext, @extraamount,
    @group1, @group2, @group3, @group4, @altered, @vatcode,
    @crtype, @creator, @basecurrency, @baseamount
  }
End;

procedure TdmVidaInvoice.cds_IH_SpecLoadPIPNoChange(Sender: TField);
begin
  with dmVidaInvoice do
  Begin
    if not cds_IH_SpecLoadPIPNo.IsNull then
    Begin
      cds_LIP.Filter := 'PIPNo = ' + cds_IH_SpecLoadPIPNo.AsString;
      cds_LIP.Filtered := True;
      if cds_LIP.RecordCount = 1 then
        cds_IH_SpecLoadLIPNo.AsInteger := cds_LIPLIPNo.AsInteger
      else
        cds_IH_SpecLoadLIPNo.AsInteger := -1;
    End
    else
    Begin
      cds_IH_SpecLoadLIPNo.AsInteger := -1;
    End;
  End; // With
end;

procedure TdmVidaInvoice.cds_IH_SpecLoadUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dmsSystem.FDoLog('Error Update IH_SpecLoad : ' + AException.Message);
end;

procedure TdmVidaInvoice.cdsInvoiceDetailVolume_OrderUnitChange(Sender: TField);
begin
  if (cdsInvoiceHeadQuickInvoice.AsInteger = 1) or
    (cdsInvoiceHeadSendInvoiceToAgent.AsInteger = 1) then
    cdsInvoiceDetailProductValue.AsFloat :=
      cdsInvoiceDetailVolume_OrderUnit.AsFloat * cdsInvoiceDetailPrice.AsFloat;
end;

procedure TdmVidaInvoice.InsertAttest(const QInvNo: Integer);
Begin
  with dmModule1 do
  Begin
    FDmSelectedRows.Active := False;
    FDmSelectedRows.Active := True;
    PrepareForAttest_DELKREDIT(QInvNo);
    dmModule1.InsertAttestHeader('Vara');
    FDmSelectedRows.Active := False;
  End; // with dmModule1  do
End;

procedure TdmVidaInvoice.PrepareForAttest_DELKREDIT(const Quick_InvoiceNo
  : Integer);
Var
  Save_Cursor: TCursor;
  TotalAmount: Double;
  OldFilter: String;

  Function GetTotalAmount: Double;
  Begin
    with dmModule1 do
    Begin
      cdsInvoiceDetail.Filtered := False;
      Try
        Result := 0;
        cdsInvoiceDetail.First;
        While not cdsInvoiceDetail.Eof do
        Begin
          Result := Result + cdsInvoiceDetailProductValue.AsFloat;
          cdsInvoiceDetail.Next;
        End; // cds_LF
      Finally
        cdsInvoiceDetail.Filtered := True;
      End;
    End; // With
  End;

  Function GetTotalAmountPerLO: Double;
  Begin
    with dmModule1 do
    Begin
      Result := 0;
      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        Result := Result + cdsInvoiceDetailProductValue.AsFloat;
        cdsInvoiceDetail.Next;
      End; // cds_LF
    End; // With
  End;

// GetSelectedInvoiceAndLORows ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    with dmModule1 do
    Begin
      OldFilter := cdsInvoiceDetail.Filter;
      Try
        cdsInvoiceLO.Filtered := False;
        // cds_LF.Filtered := True ;
        TotalAmount := GetTotalAmount;
        cdsInvoiceLO.First;
        While not cdsInvoiceLO.Eof do
        Begin
          cdsInvoiceDetail.Filter :=
          // 'InternalInvoiceNo = ' + dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND
            'ShippingPlanNo = ' + cdsInvoiceLOShippingPlanNo.AsString;

          FDmSelectedRows.Insert;
          FDmSelectedRowsInternalInvoiceNo.AsInteger :=
            cdsInvoiceHeadIntInvNoToAttestAgainst.AsInteger;
          FDmSelectedRowsFakturanr.AsInteger := Quick_InvoiceNo;
          FDmSelectedRowsLONo.AsInteger := cdsInvoiceLOShippingPlanNo.AsInteger;
          FDmSelectedRowsAmount.AsFloat := GetTotalAmountPerLO;
          // Summa från delkredit

          FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger :=
            cdsInvoiceHeadCustomerNo.AsInteger;
          FDmSelectedRowsCURRENCYNO.AsInteger :=
            cdsInvoiceHeadCurrencyNo.AsInteger;

          FDmSelectedRowsTotalAmount.AsFloat := TotalAmount;
          // Summa från delkredit
          FDmSelectedRows.Post;
          cdsInvoiceLO.Next;
        End; // cdsInvoiceLO
      Finally
        cdsInvoiceDetail.Filter := OldFilter;
        cdsInvoiceLO.Filtered := True;
      End;
    End; // With

  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;

end;

procedure TdmVidaInvoice.cds_Att_Ext_LOAfterInsert(DataSet: TDataSet);
begin
  // cds_Att_Ext_LOInternalInvoiceNo.AsInteger  := cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
  // cds_Att_Ext_LOShippingPlanNo.AsInteger     := cdsInvoiceLOShippingPlanNo.AsInteger ;
  // cds_Att_Ext_LOSequensNo.AsInteger          := cds_Att_Ext_ServicesIISequensNo.AsInteger ;
end;

Function TdmVidaInvoice.GetPOCountryNoPartII(const LONo: Integer): Integer;
Var
  CountryNo: Integer;

  Function IsEUCountry: Integer;
  Begin
    Try
      sq_Region.Active := False;
      sq_Region.ParamByName('CountryNo').AsInteger := CountryNo;
      sq_Region.Active := True;
      if not sq_Region.Eof then
      Begin
        // Region  := sq_RegionRegion.AsString ;
        Result := 365; // EU
      End
      else
        Result := -1;

    Finally
      sq_Region.Active := False;
    End;
  End;

Begin
  sq_GetPOCountry.ParamByName('SalesShippingPlanNo').AsInteger := LONo;
  Try
    sq_GetPOCountry.Open;

    if not sq_GetPOCountry.Eof then
    Begin
      CountryNo := sq_GetPOCountryCountryNo.AsInteger;
      Result := IsEUCountry;
      if Result = -1 then
        Result := 366; // Export
    End;

  Finally
    sq_GetPOCountry.Close;
  End;
End;

Function TdmVidaInvoice.GetPOCountryNo(const SalesShippingPlanNo
  : Integer): Integer;
Begin
  sq_GetPOCountry.ParamByName('SalesShippingPlanNo').AsInteger :=
    SalesShippingPlanNo;
  Try
    sq_GetPOCountry.Open;
    if not sq_GetPOCountry.Eof then
      Result := sq_GetPOCountryCountryNo.AsInteger
    else
      Result := -1;
  Finally
    sq_GetPOCountry.Close;
  End;
End;

procedure TdmVidaInvoice.DeleteAttestRowKoppling(const InternalInvoiceNo,
  ShippingPlanNo, SequensNo, InvoiceDetailNo: Integer);
Begin
  Try
    sq_Del_AttestKoppling.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sq_Del_AttestKoppling.ParamByName('ShippingPlanNo').AsInteger :=
      ShippingPlanNo;
    sq_Del_AttestKoppling.ParamByName('SequensNo').AsInteger := SequensNo;
    sq_Del_AttestKoppling.ParamByName('InvoiceDetailNo').AsInteger :=
      InvoiceDetailNo;
    sq_Del_AttestKoppling.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

function TdmVidaInvoice.GetNettoPris(const OrderNo,
  OrderLineNo: Integer): Double;
Begin
  sq_GetNettoPris.ParamByName('OrderNo').AsInteger := OrderNo;
  sq_GetNettoPris.ParamByName('OrderLineNo').AsInteger := OrderLineNo;
  sq_GetNettoPris.Active := True;
  Try
    if not sq_GetNettoPris.Eof then
      Result := sq_GetNettoPrisValueField.AsFloat
    else
      Result := 0;
  Finally
    sq_GetNettoPris.Active := False;
  End;
End;

function TdmVidaInvoice.GetBruttoPris(const OrderNo,
  OrderLineNo: Integer): Double;
Begin
  sq_GetBruttoPris.ParamByName('OrderNo').AsInteger := OrderNo;
  sq_GetBruttoPris.ParamByName('OrderLineNo').AsInteger := OrderLineNo;
  sq_GetBruttoPris.Active := True;
  Try
    if not sq_GetBruttoPris.Eof then
      Result := sq_GetBruttoPrisValueField.AsFloat
    else
      Result := 0;
  Finally
    sq_GetBruttoPris.Active := False;
  End;
End;

function TdmVidaInvoice.GetArticleNo(const LO: Integer): Integer;
Begin
  sq_GetArticleNo.ParamByName('ShippingPlanNo').AsInteger := LO;
  Try
    sq_GetArticleNo.Active := True;
    if not sq_GetArticleNo.Eof then
      Result := sq_GetArticleNoArticleNo.AsInteger + 1
    else
      Result := -1;
  Finally
    sq_GetArticleNo.Active := False;
  End;
End;

procedure TdmVidaInvoice.TransformHTFPkgs;
Begin
  Try
    sp_TransformHTFPkgs.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_TransformHTFPkgs.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmVidaInvoice.GetKundResKontra(const Object5  : String;const CountryNo  : Integer) : String ;
Begin
  sp_GetKundResKontra.Active := False ;
  sp_GetKundResKontra.ParamByName('@CountryNo').AsInteger := CountryNo ;
  sp_GetKundResKontra.ParamByName('@Object5').AsString    := Object5 ;
  Try
    sp_GetKundResKontra.Active  := True ;
    if not sp_GetKundResKontra.Eof then
     Result := sp_GetKundResKontra.FieldByName('ResKontranr').AsString
      else
       Result := '0000' ;
  Finally
    sp_GetKundResKontra.Active  :=  False ;
  End;
End;

function TdmVidaInvoice.InsertVerifikatLogg(const Test: Boolean;
  const InvoiceNo, InternalInvoiceNo, CustomerNo, InvoiceType2
  : Integer): Boolean;
const
  LF = #10;

Var
  Object2, Object5: String;
  ResKontraSerie: String;
  KundResKontra: String;
  VaruKonto: String;
  Frakt_konto: String;
  Moms_konto: String;
  Rounding_Konto: String;
  Provision_Konto: String;
  KassaRabattKonto: String;
  Debit_Credit: Integer;
  AgentNo: Integer;
  Region, currency: String;
  CountryNo: Integer;
  Trading: Integer;
  VaruGrupp: Integer;
  PO_CountryNo: Integer;

  InvoiceTotal_SEK,
  // InvVal_No_moms_freight_SEK,
  ForsaljningsKonto_SEK, moms_sek, moms_for, Rounding_SEK,
    TotalInvoiceValueNoRounding_SEK, Provision_SEK, KassaRabatt_SEK,
    Total_frakt_SEK: Double;

  Debet, Kredit, InvoiceTotal_For,
  // InvVal_No_moms_freight_For,
  ForsaljningsKonto_For, Rounding_For, Provision_For,
    TotalInvoiceValueNoRounding_For, KassaRabatt_For, Total_frakt_FOR: Double;

  SkatteUpplag: Integer;
  InvoiceDate, duedate: TSQLTimeStamp;
  InvoiceDateAsDateTime, DueDateAsDateTime: TDateTime;
  vatcode: Byte;
  InvoiceType: Integer;
  Moms_20Percent: Double;
  SalesmanGroupNo: Integer;
  SalesRegionNo: Integer;
  xorID, XorID_KundNamn: String;
  Volume: Double;
  cid: String;

  {
    function GetAvdelning(const Konto : String;const ) : String ;
    Begin

    if Konto = '3806' then
    Result := '1758'
    else
    if Konto = '3803' then
    Result := '1753'
    else
    if Konto = '3802' then
    Result := '1755' ;
    End;

  }

  // begin TransferInvoiceToXor
begin
  mt_VerLogg.Active := False;
  mt_VerLogg.Active := True;
  // Try
  with dmVidaInvoice do
  Begin
    // if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
    // Begin
    Try
      cdsInvTrfLogg.Active := True;
      cdsInvTrfLogg.Insert;

      xorID := '';
      Moms_20Percent  := 0.20;
      Moms_konto      := '2610';
      Rounding_SEK    := 0;
      Rounding_For    := 0;
      Rounding_Konto  := '3740';

      Total_frakt_SEK := 0;
      Total_frakt_FOR := 0;

      Debet           := 0;
      Kredit          := 0;

      sp_InvTotals.Active := False;
      sp_InvTotals.ParamByName('@IntInvNo').AsInteger := InternalInvoiceNo;
      sp_InvTotals.Active := True;

      if not sp_InvTotals.Eof then
      Begin
        cid := sp_InvTotalscid.AsString;

        VaruKonto := sp_InvTotalsVaruKonto.AsString;
        // Frakt_konto                         := sp_InvTotalsFraktKonto.AsString ;//cdsInvoiceListFraktkonto.AsString ;
        Moms_konto := sp_InvTotalsMomsKonto.AsString;
        vatcode := sp_InvTotalsMomsKod.AsInteger;
        // Debit_Credit                        := sp_InvTotalsDebit_Kredit.AsInteger ;

        SalesRegionNo := sp_InvTotalsSupplierNo.AsInteger;
        SalesmanGroupNo := sp_InvTotalsSalesGroupNo.AsInteger;
        // Trading                          := sp_InvTotalsTrading.AsInteger ;
        // KassaRabatt_For                  := sp_InvTotalsKassaRabatt_For.AsFloat ;
        // KassaRabatt_SEK                  := sp_InvTotalsKassaRabatt_SEK.AsFloat ;
        // Provision_For                    := sp_InvTotalsCommission_for.AsFloat ;
        // Provision_SEK                    := sp_InvTotalsCommission_SEK.AsFloat ;
        // TotalInvoiceValueNoRounding_For  := sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat ;
        // TotalInvoiceValueNoRounding_SEK  := sp_InvTotalsTotalInvoiceValueNoRounding_SEK.AsFloat ;
        InvoiceTotal_SEK := sp_InvTotalsInvoiceTotalSEK.AsFloat;
        // FAKTURATOTAL I SEK
        // InvVal_No_moms_freight_SEK       := sp_InvTotalsInvValnofreight_SEK.AsFloat ;//FAKTURA BELOPP SEK UTAN moms_sek OCH FRAKT
        InvoiceTotal_For := sp_InvTotalsInvoiceTotalFOR.AsFloat;
        // FAKTURATOTAL I UTLÄNDSVALUTA
        // InvVal_No_moms_freight_For       := sp_InvTotalsInvValnofreight.AsFloat ;//FAKTURA BELOPP I UTLÄNDSVALUTA UTAN moms_sek OCH FRAKT
        moms_sek := sp_InvTotalsVAT_SEK.AsFloat; // MOMSBELOPP SEK

        // MOMSBELOPP FOR
        moms_for := sp_InvTotalsVAT_FOR.AsFloat;

        // DEBIT ELLER KREDIT INVOICE TYPE
        if sp_InvTotalsInvoiceTotalSEK.AsFloat > 0 then
        Begin
          InvoiceType := 1; // Debit
          Debit_Credit := 0;
        End
        else
        Begin
          InvoiceType := 2; // Credit
          Debit_Credit := 1;
        End;

        // AgentNo        := sp_InvTotalsAgentNo.AsInteger ;
        // XorID_KundNamn LÄGGS I FREETEXT BÅDE I HUVUD OCH RAD I VERIFIKATIONEN
        XorID_KundNamn := sp_InvTotalsidXOR.AsString + ':' +
          sp_InvTotalsCustomerName.AsString;
        xorID := sp_InvTotalsidXOR.AsString;

        // Region         := sp_InvTotalsRegion.AsString ;   //TEX EU REGION
        currency := sp_InvTotalsCurr.AsString;
        // LANDNR FRÅN FAKTURAADRESS
        // CountryNo      := sp_InvTotalsCountryNo.AsInteger ;

        // VaruGrupp      := sp_InvTotalsVaruGrupp.AsInteger ;
        PO_CountryNo := -1; // sp_InvTotalsPO_CountryNo.AsInteger ;

        SkatteUpplag := sp_InvTotalsSkatteupplag.AsInteger;
        // 0 = INGET SKATTEUPPLAG, 1 = SKATTEUPPLAG

        InvoiceDate           := sp_InvTotalsInvoiceDate.AsSQLTimeStamp; // FAKTURADATUM
        InvoiceDateAsDateTime := SQLTimeStampToDateTime(InvoiceDate);
        InvoiceDateAsDateTime := RecodeTime(InvoiceDateAsDateTime, 0, 0, 0, 0);
        InvoiceDate           := DateTimeToSQLTimeStamp(InvoiceDateAsDateTime);
        duedate               := sp_InvTotalsDueDate.AsSQLTimeStamp; // FÖRFALLODATUM
        DueDateAsDateTime     := SQLTimeStampToDateTime(duedate);
        DueDateAsDateTime     := RecodeTime(DueDateAsDateTime, 0, 0, 0, 0);
        duedate               := DateTimeToSQLTimeStamp(DueDateAsDateTime);

        // Okt 24 2005 borttaget från nedan formel KassaRabatt_For + Provision_For +
        // ForsaljningsKonto_For:= InvoiceTotal_For - (Total_frakt_FOR + moms_for + Rounding_For) ;
        // Okt 24 2005 borttaget från nedan formel KassaRabatt_SEK + Provision_SEK ?
        // ForsaljningsKonto_SEK:= InvoiceTotal_SEK - (Total_frakt_SEK + moms_sek + Rounding_SEK ) ;

        // FRAKTBELOPP I SEK
        // Total_frakt_SEK              := sp_InvTotalsFRAKTTOTAL_SEK.AsFloat ;
        // FRAKTBELOPP I UTLÄNDSVALUTA
        // Total_frakt_FOR              := sp_InvTotalsFRAKTTOTAL_CURR.AsFloat ;

        // ForsaljningsKonto_For  :=  sp_InvTotalsProduktvardeFOR.AsFloat ;
        // ForsaljningsKonto_SEK  :=  sp_InvTotalsProduktvardeSEK.AsFloat ;


        // Rounding_SEK       := Abs(InvoiceTotal_SEK) - (Abs(moms_sek) + Abs(Total_frakt_SEK) + Abs(ForsaljningsKonto_SEK)) ;


        // Om volymen är 0 eller null sätt volymen till 1, för att ekonomin kräver det!
        { if (sp_InvTotalsintNM3.IsNull = False) and (sp_InvTotalsintNM3.AsFloat > 0) then
          Volume := sp_InvTotalsintNM3.AsFloat
          else
          Volume := 1 ; }

        if (sp_InvTotalsintNM3.IsNull = False) then
          Volume := Abs(sp_InvTotalsintNM3.AsFloat)
        else
          Volume := 1;

        // OBJECT 5 ÄR MOTPART
        Object5 := sp_InvTotalsO5.AsString;
        KundResKontra :=  GetKundResKontra(Object5, sp_InvTotalsCountryNo.AsInteger) ;

     //   KundResKontra :=  GetKundResKontra(Object5, sp_InvTotalsCountryNo.AsInteger) ;
        // Kundreskontra
{
          if Object5 = '99' then // 99 = extern kund
          Begin
            if sp_InvTotalsCountryNo.AsInteger = 9 then // CountryNo 9 = Sverige
              KundResKontra := '1510' // Kundfordring Sverige externa kunder
            else
              KundResKontra := '1512'; // Kundfordring utländska externa kunder
          End
          else // Intern kund
          Begin
            if Object5 = '22' then
              KundResKontra := '1562' // Kundfordring koncern Vida Wood UK
            else
              KundResKontra := '1560'; // Kundfordring koncern Sverige
          End;
}

        { if Debit_Credit = 0 then
          Begin
          ForsaljningsKonto_SEK := Abs(ForsaljningsKonto_SEK) * -1 ;
          ForsaljningsKonto_FOR := Abs(ForsaljningsKonto_FOR) * -1 ;
          moms_sek              := Abs(moms_sek) * -1 ;
          moms_For              := Abs(moms_For) * -1 ;
          Total_frakt_SEK       := Abs(Total_frakt_SEK) * -1 ;
          Total_frakt_FOR       := Abs(Total_frakt_FOR) * -1 ;
          End
          else
          Begin
          ForsaljningsKonto_SEK := Abs(ForsaljningsKonto_SEK) ;
          ForsaljningsKonto_FOR := Abs(ForsaljningsKonto_FOR) ;
          moms_sek              := Abs(moms_sek) ;
          moms_For              := Abs(moms_For) ;
          Total_frakt_SEK       := Abs(Total_frakt_SEK) ;
          Total_frakt_FOR       := Abs(Total_frakt_FOR) ;
          End ; }

        // RAD 1 KUNDFORDRING
        mt_VerLogg.Insert;
        mt_VerLoggKonto.AsString := KundResKontra;
        mt_VerLoggNamn.AsString := 'KUNDFORDRING';
        mt_VerLoggValuta.AsString := sp_InvTotalsCurr.AsString;

        if sp_InvTotalsInvoiceTotalFOR.AsFloat <> 0 then
          mt_VerLoggKurs.AsFloat := Abs(sp_InvTotalsInvoiceTotalSEK.AsFloat) /
            Abs(sp_InvTotalsInvoiceTotalFOR.AsFloat)
        else
          mt_VerLoggKurs.AsFloat := 0;

        mt_VerLoggUtlandsBelopp.AsFloat := sp_InvTotalsInvoiceTotalFOR.AsFloat;

        if sp_InvTotalsInvoiceTotalSEK.AsFloat > 0 then
        Begin
          mt_VerLoggDebet.AsFloat := sp_InvTotalsInvoiceTotalSEK.AsFloat;
          mt_VerLoggKredit.AsFloat := 0;
          // if (thisuser.UserName = 'larmak') or (thisuser.UserName = 'Lars') then
          // ShowMessage('mt_VerLoggDebet.As = ' + mt_VerLoggDebet.AsString) ;
        End
        else
        Begin
          mt_VerLoggKredit.AsFloat := sp_InvTotalsInvoiceTotalSEK.AsFloat;
          mt_VerLoggDebet.AsFloat := 0;
          // if (thisuser.UserName = 'larmak') or (thisuser.UserName = 'Lars') then
          // ShowMessage('mt_VerLoggKredit.As = ' + mt_VerLoggKredit.AsString) ;
        End;

        mt_VerLoggText.AsString := XorID_KundNamn;
        mt_VerLoggRadOrder.AsInteger := 1;
        mt_VerLoggVatCode.AsInteger := 0;
        mt_VerLogg.Post;
        // SLUT KUNDFORDRING

        // RAD 4 MOMS
        mt_VerLogg.Insert;
        mt_VerLoggKonto.AsString := Moms_konto;
        mt_VerLoggNamn.AsString := 'MOMS';
        mt_VerLoggValuta.AsString := sp_InvTotalsCurr.AsString;
        if sp_InvTotalsVAT_FOR.AsFloat <> 0 then
          mt_VerLoggKurs.AsFloat := sp_InvTotalsVAT_SEK.AsFloat /
            sp_InvTotalsVAT_FOR.AsFloat
        else
          mt_VerLoggKurs.AsFloat := 0;

        if sp_InvTotalsVAT_SEK.AsFloat > 0 then
        Begin
          mt_VerLoggDebet.AsFloat := 0;
          mt_VerLoggKredit.AsFloat := sp_InvTotalsVAT_SEK.AsFloat * -1;
          mt_VerLoggUtlandsBelopp.AsFloat := sp_InvTotalsVAT_FOR.AsFloat * -1;
        End
        else
        Begin
          mt_VerLoggKredit.AsFloat := 0;
          mt_VerLoggDebet.AsFloat := sp_InvTotalsVAT_SEK.AsFloat * -1;
          mt_VerLoggUtlandsBelopp.AsFloat := sp_InvTotalsVAT_FOR.AsFloat * -1;
        End;

        mt_VerLoggText.AsString := XorID_KundNamn;
        mt_VerLoggRadOrder.AsInteger := 4;
        mt_VerLoggVatCode.AsInteger := 0;
        mt_VerLogg.Post;
        // SLUT MOMS

        // RAD 2 VARA
        While not sp_InvTotals.Eof do
        Begin
          mt_VerLogg.Insert;
          mt_VerLoggKonto.AsString := sp_InvTotalsVaruKonto.AsString;
          mt_VerLoggNamn.AsString := sp_InvTotalsNamn.AsString;
          mt_VerLoggValuta.AsString := sp_InvTotalsCurr.AsString;
          if sp_InvTotalsProduktVardeFOR.AsFloat <> 0 then
            mt_VerLoggKurs.AsFloat := sp_InvTotalsProduktVardeSEK.AsFloat /
              sp_InvTotalsProduktVardeFOR.AsFloat
          else
            mt_VerLoggKurs.AsFloat := 0;

          if sp_InvTotalsArticleGroupNo.AsInteger = 0 then
          Begin
            mt_VerLoggVolym.AsFloat := Volume;
            if sp_InvTotalsProduktVardeSEK.AsFloat > 0 then
            Begin
              mt_VerLoggDebet.AsFloat := 0;
              // mt_VerLoggKredit.AsFloat         := sp_InvTotalsTotal_Product_Value_No_Freight_Sek.AsFloat* -1 ; // sp_InvTotalsProduktvardeSEK.AsFloat * -1 ;
              // mt_VerLoggUtlandsBelopp.AsFloat  := sp_InvTotalsTotal_Product_Value_No_Freight_For.AsFloat* -1 ; //  sp_InvTotalsProduktvardeFOR.AsFloat * -1 ;

              mt_VerLoggKredit.AsFloat :=
                int(sp_InvTotalsProduktVardeSEK.AsFloat * -1 * 10);
              mt_VerLoggKredit.AsFloat := mt_VerLoggKredit.AsFloat / 10;
              mt_VerLoggUtlandsBelopp.AsFloat :=
                int(sp_InvTotalsProduktVardeFOR.AsFloat * -1 * 10);
              mt_VerLoggUtlandsBelopp.AsFloat :=
                mt_VerLoggUtlandsBelopp.AsFloat / 10;
            End
            else
            Begin
              mt_VerLoggKredit.AsFloat := 0;
              // mt_VerLoggDebet.AsFloat          := sp_InvTotalsTotal_Product_Value_No_Freight_Sek.AsFloat* -1 ; // sp_InvTotalsProduktvardeSEK.AsFloat * -1 ;
              // mt_VerLoggUtlandsBelopp.AsFloat  := sp_InvTotalsTotal_Product_Value_No_Freight_For.AsFloat* -1 ; // sp_InvTotalsProduktvardeFOR.AsFloat * -1 ;
              mt_VerLoggDebet.AsFloat :=
                int(sp_InvTotalsProduktVardeSEK.AsFloat * -1 * 10);
              mt_VerLoggDebet.AsFloat := mt_VerLoggDebet.AsFloat / 10;
              mt_VerLoggUtlandsBelopp.AsFloat :=
                int(sp_InvTotalsProduktVardeFOR.AsFloat * -1 * 10);
              mt_VerLoggUtlandsBelopp.AsFloat :=
                mt_VerLoggUtlandsBelopp.AsFloat / 10;
            End;
          End
          else // FRAKT
            if sp_InvTotalsArticleGroupNo.AsInteger = 1 then
            Begin
              // if (sp_InvTotalsProduktvardeSEK.AsFloat < 0) or (sp_InvTotalsInclInPrice.AsInteger = 0) then
              if InvoiceType = 1 then // Debet
              Begin
                mt_VerLoggKredit.AsFloat :=
                  Abs(sp_InvTotalsProduktVardeSEK.AsFloat) * -1;
                mt_VerLoggDebet.AsFloat := 0;
                mt_VerLoggUtlandsBelopp.AsFloat :=
                  Abs(sp_InvTotalsProduktVardeFOR.AsFloat) * -1;
              End
              else // Kredit
              Begin
                mt_VerLoggKredit.AsFloat := 0;
                mt_VerLoggDebet.AsFloat := sp_InvTotalsProduktVardeSEK.AsFloat;
                // * -1 ;
                mt_VerLoggUtlandsBelopp.AsFloat :=
                  sp_InvTotalsProduktVardeFOR.AsFloat;
              End;
            End;

          mt_VerLoggText.AsString := XorID_KundNamn;
          mt_VerLoggRadOrder.AsInteger := sp_InvTotalsRadorder.AsInteger;

          // if SalesRegionNo = VIDA_BORGSTENA_BOTLR then
          mt_VerLoggAvdelning.AsString := GetAvdelning(SalesRegionNo,
            mt_VerLoggKonto.AsString);
          // else
          // mt_VerLoggAvdelning.AsString := '' ;

          mt_VerLoggVatCode.AsInteger := vatcode;
          mt_VerLogg.Post;

          sp_InvTotals.Next;
        End; // sp_InvTotals

        if Length(Trim(Object5)) = 0 then
        Begin
          showmessage('Motpart (Object5) saknas för kund ' +
            sp_InvTotalsCustomerName.AsString);
          Exit;
        End;

        // Calc ÖRESAVRUNDNING
        mt_VerLogg.First;
        while not mt_VerLogg.Eof do
        Begin
          Debet := Debet + mt_VerLoggDebet.AsFloat;
          Kredit := Kredit + mt_VerLoggKredit.AsFloat;
          mt_VerLogg.Next;
        End;

        Debet := Abs(Debet);
        Kredit := Abs(Kredit);

        Rounding_SEK := Debet - Kredit;

        Rounding_SEK := Round(Rounding_SEK * 100);
        Rounding_SEK := Rounding_SEK / 100;

        if SalesRegionNo <> VIDA_BORGSTENA_BOTLR then
        Begin
          // Sätt object2 till blank till att börja med...
          Object2 := '';

          if SalesmanGroupNo = 1 then // Danmark
            Object2 := '990';

          if AgentNo = 5391 { VTA } then
            Object2 := '970';

          if CustomerNo = 3787 { cdsInvoiceListCustomerNo } then
            Object2 := '970';

          if Length(Trim(Object2)) = 0 then
            Object2 := '980';
        End;

        if InvoiceType2 = 0 then
        Begin
          if Object5 = '99' then // Om extern kund
            ResKontraSerie := 'VWK1'
          else
            ResKontraSerie := 'VWK1';
        End
        else // Om det är en USA faktura skall serien vara VWK2
          if InvoiceType2 = 4 then
            ResKontraSerie := 'VWK2'
          else // Irland
            if InvoiceType2 = 5 then
              ResKontraSerie := 'VWK4'
            else if InvoiceType2 = 7 then
              ResKontraSerie := 'VTA1'
            else if InvoiceType2 = 8 then
              ResKontraSerie := 'VBAB';

        if Length(Trim(ResKontraSerie)) = 0 then
        Begin
          showmessage('"Reskontraserie" could not be determined for invoice number ' +
            IntToStr(InvoiceNo));
          Exit;
        End;

        if Length(Trim(xorID)) = 0 then
        Begin
          showmessage('Invoice number ' + IntToStr(InvoiceNo) +
            ' could not be transferred, because customer ' +
            Trim(sp_InvTotalsCustomerName.AsString) +
            ' is missing xorID for roll type customer.');
          Exit;
        End;

        cdsInvTrfLoggInvoiceNo.AsInteger := InvoiceNo;
        cdsInvTrfLoggInternalInvoiceNo.AsInteger := InternalInvoiceNo;
        cdsInvTrfLoggObject2.AsString := Object2;
        cdsInvTrfLoggObject5.AsString := Object5;
        cdsInvTrfLoggResKontraSerie.AsString := ResKontraSerie;
        cdsInvTrfLoggKundResKontra.AsString := KundResKontra;
        cdsInvTrfLoggForsaljningskonto.AsString := VaruKonto;
        cdsInvTrfLoggFrakt_konto.AsString := Frakt_konto;
        cdsInvTrfLoggMoms_konto.AsString := Moms_konto;
        cdsInvTrfLoggRounding_Konto.AsString := Rounding_Konto;
        cdsInvTrfLoggProvision_Konto.AsString := Provision_Konto;
        cdsInvTrfLoggKassaRabattKonto.AsString := KassaRabattKonto;
        cdsInvTrfLoggAgentNo.AsInteger := AgentNo;
        cdsInvTrfLoggRegion.AsString := Region;
        cdsInvTrfLoggCurrency.AsString := currency;
        cdsInvTrfLoggCountryNo.AsInteger := sp_InvTotalsCountryNo.AsInteger;
        cdsInvTrfLoggSkatteUpplag.AsInteger := SkatteUpplag;
        cdsInvTrfLoggInvoiceTotal_SEK.AsFloat := InvoiceTotal_SEK;
        cdsInvTrfLoggForsaljningsKonto_SEK.AsFloat := ForsaljningsKonto_SEK;
        cdsInvTrfLoggmoms_SEK.AsFloat := moms_sek;
        cdsInvTrfLoggmoms_For.AsFloat := moms_for;
        cdsInvTrfLoggmoms.AsFloat := moms_sek;
        cdsInvTrfLoggRounding_SEK.AsFloat := Rounding_SEK;
        cdsInvTrfLoggTotalInvoiceValueNoRounding_SEK.AsFloat :=
          TotalInvoiceValueNoRounding_SEK;
        cdsInvTrfLoggProvision_SEK.AsFloat := Provision_SEK;
        cdsInvTrfLoggKassaRabatt_SEK.AsFloat := KassaRabatt_SEK;
        cdsInvTrfLoggfrakt_SEK.AsFloat := Total_frakt_SEK;
        cdsInvTrfLoggInvoiceTotal_For.AsFloat := InvoiceTotal_For;
        cdsInvTrfLoggForsaljningsKonto_For.AsFloat := ForsaljningsKonto_For;
        cdsInvTrfLoggRounding_For.AsFloat := Rounding_For;
        cdsInvTrfLoggProvision_For.AsFloat := Provision_For;
        cdsInvTrfLoggTotalInvoiceValueNoRounding_For.AsFloat :=
          TotalInvoiceValueNoRounding_For;
        cdsInvTrfLoggKassaRabatt_For.AsFloat := KassaRabatt_For;
        cdsInvTrfLoggfrakt_for.AsFloat := Total_frakt_FOR;
        cdsInvTrfLoggInvoiceDate.AsSQLTimeStamp := InvoiceDate;
        cdsInvTrfLoggVatcode.AsInteger := vatcode;
        cdsInvTrfLoggInvoiceType.AsInteger := InvoiceType;
        cdsInvTrfLoggEventDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
        cdsInvTrfLoggUserId.AsInteger := ThisUser.UserID;
        cdsInvTrfLoggXorID_KundNamn.AsString := XorID_KundNamn;
        cdsInvTrfLoggTrading.AsInteger := Trading;
        cdsInvTrfLoggVaruGrupp.AsInteger := VaruGrupp;
        cdsInvTrfLoggPO_Country.AsInteger := PO_CountryNo;

        cdsInvTrfLogg.Post;
        if cdsInvTrfLogg.ChangeCount > 0 then
        Begin
          cdsInvTrfLogg.ApplyUpdates(0);
          cdsInvTrfLogg.CommitUpdates;
        End;
        cdsInvTrfLogg.Active := False;

        { if Debit_Credit = 0 then
          Begin
          ForsaljningsKonto_SEK := Abs(ForsaljningsKonto_SEK) * -1 ;
          ForsaljningsKonto_FOR := Abs(ForsaljningsKonto_FOR) * -1 ;
          moms_sek              := Abs(moms_sek) * -1 ;
          moms_For              := Abs(moms_For) * -1 ;
          Total_frakt_SEK       := Abs(Total_frakt_SEK) * -1 ;
          Total_frakt_FOR       := Abs(Total_frakt_FOR) * -1 ;
          End
          else
          Begin
          ForsaljningsKonto_SEK := Abs(ForsaljningsKonto_SEK) ;
          ForsaljningsKonto_FOR := Abs(ForsaljningsKonto_FOR) ;
          moms_sek              := Abs(moms_sek) ;
          moms_For              := Abs(moms_For) ;
          Total_frakt_SEK       := Abs(Total_frakt_SEK) ;
          Total_frakt_FOR       := Abs(Total_frakt_FOR) ;
          End ;

          //RAD 1 KUNDFORDRING
          mt_VerLogg.Insert ;
          mt_VerLoggKonto.AsString         := KundResKontra ;
          mt_VerLoggNamn.AsString          := 'KUNDFORDRING' ;
          mt_VerLoggValuta.AsString        := Currency ;

          if InvoiceTotal_For <> 0 then
          mt_VerLoggKurs.AsFloat           := Abs(InvoiceTotal_SEK) / Abs(InvoiceTotal_For)
          else
          mt_VerLoggKurs.AsFloat           := 0 ;

          mt_VerLoggUtlandsBelopp.AsFloat  := InvoiceTotal_For ;
          if InvoiceTotal_SEK > 0 then
          Begin
          mt_VerLoggDebet.AsFloat          := InvoiceTotal_SEK ;
          mt_VerLoggKredit.AsFloat         := 0 ;
          End
          else
          Begin
          mt_VerLoggKredit.AsFloat         := InvoiceTotal_SEK ;
          mt_VerLoggDebet.AsFloat          := 0 ;
          End ;

          mt_VerLoggText.AsString          := XorID_KundNamn ;
          mt_VerLoggRadOrder.AsInteger     := 1 ;
          mt_VerLogg.Post ;

          //RAD 2 VARA
          mt_VerLogg.Insert ;
          mt_VerLoggKonto.AsString         := VaruKonto ;
          mt_VerLoggNamn.AsString          := 'FÖRSÄLJNING' ;
          mt_VerLoggValuta.AsString        := Currency ;
          if ForsaljningsKonto_For <> 0 then
          mt_VerLoggKurs.AsFloat           := ForsaljningsKonto_SEK / ForsaljningsKonto_For
          else
          mt_VerLoggKurs.AsFloat           := 0 ;
          mt_VerLoggUtlandsBelopp.AsFloat  := ForsaljningsKonto_For ;

          if ForsaljningsKonto_SEK > 0 then
          Begin
          mt_VerLoggDebet.AsFloat          := ForsaljningsKonto_SEK ;
          mt_VerLoggKredit.AsFloat         := 0 ;
          End
          else
          Begin
          mt_VerLoggKredit.AsFloat         := ForsaljningsKonto_SEK ;
          mt_VerLoggDebet.AsFloat          := 0 ;
          End ;

          mt_VerLoggText.AsString          := XorID_KundNamn ;
          mt_VerLoggRadOrder.AsInteger     := 2 ;
          mt_VerLogg.Post ;

          //RAD 3 FRAKT
          mt_VerLogg.Insert ;
          mt_VerLoggKonto.AsString         := Frakt_Konto ;
          mt_VerLoggNamn.AsString          := 'FRAKTER' ;
          mt_VerLoggValuta.AsString        := Currency ;

          if Total_frakt_FOR <> 0 then
          mt_VerLoggKurs.AsFloat           := Total_frakt_SEK / Total_frakt_FOR
          else
          mt_VerLoggKurs.AsFloat           := 0 ;

          mt_VerLoggUtlandsBelopp.AsFloat  := Total_frakt_FOR ;

          if Total_frakt_SEK > 0 then
          Begin
          mt_VerLoggDebet.AsFloat          := Total_frakt_SEK ;
          mt_VerLoggKredit.AsFloat         := 0 ;
          End
          else
          Begin
          mt_VerLoggKredit.AsFloat         := Total_frakt_SEK ;
          mt_VerLoggDebet.AsFloat          := 0 ;
          End ;

          mt_VerLoggText.AsString          := XorID_KundNamn ;
          mt_VerLoggRadOrder.AsInteger     := 3 ;
          mt_VerLogg.Post ;


          //RAD 4 MOMS
          mt_VerLogg.Insert ;
          mt_VerLoggKonto.AsString         := Moms_Konto ;
          mt_VerLoggNamn.AsString          := 'MOMS' ;
          mt_VerLoggValuta.AsString        := Currency ;
          if Moms_FOR <> 0 then
          mt_VerLoggKurs.AsFloat           := Moms_SEK / Moms_FOR
          else
          mt_VerLoggKurs.AsFloat           := 0 ;

          mt_VerLoggUtlandsBelopp.AsFloat  := Moms_FOR ;

          if Moms_SEK > 0 then
          Begin
          mt_VerLoggDebet.AsFloat          := Moms_SEK ;
          mt_VerLoggKredit.AsFloat         := 0 ;
          End
          else
          Begin
          mt_VerLoggKredit.AsFloat         := Moms_SEK ;
          mt_VerLoggDebet.AsFloat          := 0 ;
          End ;

          mt_VerLoggText.AsString          := XorID_KundNamn ;
          mt_VerLoggRadOrder.AsInteger     := 4 ;
          mt_VerLogg.Post ; }

        // RAD 5 Öresavrundning
        mt_VerLogg.Insert;
        mt_VerLoggKonto.AsString := Rounding_Konto;
        mt_VerLoggNamn.AsString := 'ÖRESUTJÄMNING';
        mt_VerLoggValuta.AsString := currency;
        mt_VerLoggKurs.AsFloat := 0;
        mt_VerLoggUtlandsBelopp.AsFloat := 0;

        if Debit_Credit = 0 then
        Begin
          if Rounding_SEK > 0 then
            Rounding_SEK := Abs(Rounding_SEK) * -1
          else
            Rounding_SEK := Abs(Rounding_SEK);

          if Rounding_SEK > 0 then
          Begin
            mt_VerLoggDebet.AsFloat := Rounding_SEK;
            mt_VerLoggKredit.AsFloat := 0;
          End
          else
          Begin
            mt_VerLoggKredit.AsFloat := Rounding_SEK;
            mt_VerLoggDebet.AsFloat := 0;
          End;
        End
        else if Debit_Credit = 1 then
        Begin
          if Rounding_SEK > 0 then
          Begin
            mt_VerLoggKredit.AsFloat := Abs(Rounding_SEK) * -1;
            mt_VerLoggDebet.AsFloat := 0;
          End
          else
          Begin
            mt_VerLoggDebet.AsFloat := Abs(Rounding_SEK); // Rounding_SEK ;
            mt_VerLoggKredit.AsFloat := 0;
          End;
        End;
        mt_VerLoggText.AsString := XorID_KundNamn;
        mt_VerLoggRadOrder.AsInteger := 5;
        mt_VerLoggVatCode.AsInteger := 0;
        mt_VerLogg.Post;

        if (mt_VerLoggDebet.AsFloat > 10) or (Abs(mt_VerLoggKredit.AsFloat) > 10)
        then
          Result := False
        else
          Result := True;






        // if Thisuser.UserID = 8 then  Exit ;

        if Test then
          Exit;

        // sq_invoiceTrf KOLLAR OM FAKTURANNUMRET REDAN FINNS I XOR
        if (ThisUser.UserID <> 8) and (ThisUser.UserID <> 258) then
        Begin
          sq_invoiceTrf.ParamByName('Invno').AsInteger := InvoiceNo;
          sq_invoiceTrf.ParamByName('enumerator').AsString := ResKontraSerie;
          sq_invoiceTrf.Open;
          Try
            if sq_invoiceTrf.FieldByName('Invno').AsInteger > 1 then
            Begin
              showmessage('Invoice number ' + IntToStr(InvoiceNo) +
                ' is already in the log.');
              Exit;
            End;
          Finally
            sq_invoiceTrf.Close;
          End;
        End;

        if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
          showmessage('ResKontraSerie = ' + ResKontraSerie);

        // *******************************************
        // ******* Skapa verifikationshuvudet ********
        // *******************************************
        EXEC_sp_VIS_xp_voulogwrite(cid, 3, // logtype,
          InvoiceDate, ResKontraSerie, InvoiceNo, Copy(XorID_KundNamn, 1, 80)
          // FreeText
          );

        // *******************************************
        // ******* Loop 1 verifikationsRADER *********
        // *******************************************
        mt_VerLogg.Filter := 'RadOrder = 1';
        mt_VerLogg.Filtered := True;
        mt_VerLogg.First;
        while not mt_VerLogg.Eof do
        Begin
          if mt_VerLoggDebet.AsFloat <> 0 then
          Begin
            InvoiceTotal_SEK := mt_VerLoggDebet.AsFloat;
            // := sp_InvTotalsInvoiceTotalSEK.AsFloat ;
          End
          else
          Begin
            InvoiceTotal_SEK := mt_VerLoggKredit.AsFloat;
            // := sp_InvTotalsInvoiceTotalSEK.AsFloat ;
          End;

          if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
            showmessage('mt_VerLoggAvdelning.AsString = ' +
              mt_VerLoggAvdelning.AsString);

          if mt_VerLoggAvdelning.AsString > '' then
            Object2 := mt_VerLoggAvdelning.AsString;

          if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars') then
            showmessage('(RadOrder = 1) Skapa KUNDFORDRINGSKONTO: ' + LF +
              'mt_VerLoggKonto.AsString(KundResKontra) = ' +
              mt_VerLoggKonto.AsString + LF + 'InvoiceTotal_SEK = ' +
              FloatToStr(InvoiceTotal_SEK) + LF + 'Object2 = ' + Object2 + LF +
              'mt_VerLoggUtlandsBelopp.AsString = ' +
              mt_VerLoggUtlandsBelopp.AsString);

          // Skapa KUNDFORDRINGSKONTO verifikationsrad
          // *******************************************
          // ******* Skapa verifikationsRADER **********
          // *******************************************
          if InvoiceTotal_SEK <> 0 then
            EXEC_xp_vourowlogwrite(logno, mt_VerLoggKonto.AsString,
              // KundResKontra account tex 1560
              InvoiceDate, // logdate
              mt_VerLoggValuta.AsString, // currency
              InvoiceTotal_SEK, mt_VerLoggUtlandsBelopp.AsFloat,
              // InvoiceTotal_For,
              mt_VerLoggVatCode.AsInteger, // vatcode,
              xorID, // Creator
              Object2, Object5, Volume, Copy(XorID_KundNamn, 1, 30) // FreeText
              );
          mt_VerLogg.Next;
        End;

        // *******************************************
        // ******* Loop 2 verifikationsRADER *********
        // *******************************************
        mt_VerLogg.Filter := 'RadOrder > 1';
        mt_VerLogg.Filtered := True;
        Try
          mt_VerLogg.First;
          while not mt_VerLogg.Eof do
          Begin
            if mt_VerLoggKredit.AsFloat <> 0 then
              ForsaljningsKonto_SEK := mt_VerLoggKredit.AsFloat
            else
              ForsaljningsKonto_SEK := mt_VerLoggDebet.AsFloat;

            if mt_VerLoggAvdelning.AsString > '' then
              Object2 := mt_VerLoggAvdelning.AsString;

            if (ThisUser.UserName = 'larmak') or (ThisUser.UserName = 'Lars')
            then
              showmessage('(RadOrder > 1) Skapavaruvärde verifikationsrad: ' +
                LF + 'mt_VerLoggKonto.AsString(KundResKontra) = ' +
                mt_VerLoggKonto.AsString + LF + 'ForsaljningsKonto_SEK = ' +
                FloatToStr(ForsaljningsKonto_SEK) + LF + 'InvoiceTotal_SEK = ' +
                FloatToStr(InvoiceTotal_SEK) + LF + 'Object2 = ' + Object2 + LF
                + 'Object5 = ' + Object5 + LF +
                'mt_VerLoggUtlandsBelopp.AsString = ' +
                mt_VerLoggUtlandsBelopp.AsString + LF + 'mt_VerLoggRadOrder =  '
                + mt_VerLoggRadOrder.AsString + LF +
                'Length(TRIM(mt_VerLoggKonto.AsString)) = ' +
                IntToStr(Length(Trim(mt_VerLoggKonto.AsString))));

            // Skapa KUNDFORDRINGSKONTO verifikationsrad
            // *******************************************
            // ******* Skapa verifikationsRADER **********
            // *******************************************
            // ShowMessage('EXEC_xp_vourowlogwrite');
            // Skapa varuvärde verifikationsrad för Försäljningskonto 30xx
            // if ForsaljningsKonto_SEK <> 0 then
            if (Length(Trim(mt_VerLoggKonto.AsString)) > 0) and
              (ForsaljningsKonto_SEK <> 0) then
              EXEC_xp_vourowlogwrite(logno, mt_VerLoggKonto.AsString,
                // account tex 3020
                InvoiceDate, // logdate
                mt_VerLoggValuta.AsString, // currency
                // InvoiceTotal_SEK,
                // InvoiceTotal_For,
                // Tog bort *-1 på nedan 2 rader
                ForsaljningsKonto_SEK, // SEK amount : double;
                mt_VerLoggUtlandsBelopp.AsFloat,
                // ForsaljningsKonto_For, //foramount : double;
                mt_VerLoggVatCode.AsInteger, // skall ha en vatcode
                xorID, // Creator
                Object2, Object5, Volume, Copy(XorID_KundNamn, 1, 30)
                // FreeText
                );
            mt_VerLogg.Next;
          End;

        Finally
          mt_VerLogg.Filtered := False;
        End;

        (*
          //   ShowMessage('EXEC_xp_vourowlogwrite');
          //Skapa varvärde verifikationsrad för Försäljningskonto 30xx
          if ForsaljningsKonto_SEK <> 0 then
          EXEC_xp_vourowlogwrite (logno,
          VaruKonto ,//account tex 3020
          InvoiceDate, //logdate
          Currency, //currency
          //   InvoiceTotal_SEK,
          //   InvoiceTotal_For,
          //Tog bort *-1 på nedan 2 rader
          ForsaljningsKonto_SEK, //SEK amount : double;
          ForsaljningsKonto_For, //foramount : double;
          vatcode,//skall ha en vatcode
          sp_InvTotalsidXOR.AsString, //Creator
          Object2, Object5,
          Volume,
          Copy(XorID_KundNamn,1,30) //FreeText
          ) ;

          //   ShowMessage('2 EXEC_xp_vourowlogwrite');
          //Skapa frakt verifikationsrad
          //här!
          if Total_frakt_SEK <> 0 then
          EXEC_xp_vourowlogwrite (logno,
          Frakt_Konto ,//account tex 2610
          InvoiceDate, //logdate
          Currency, //currency
          Total_frakt_SEK, //SEK amount : double;
          Total_frakt_FOR, //foramount : double;
          vatcode,
          sp_InvTotalsidXOR.AsString, //Creator
          Object2, Object5,
          Volume,
          Copy(XorID_KundNamn,1,30) //FreeText
          ) ;

          //   ShowMessage('3 EXEC_xp_vourowlogwrite');
          //Skapa moms_sek verifikationsrad
          if moms_sek <> 0 then
          EXEC_xp_vourowlogwrite (logno,
          moms_Konto ,//account tex 2610
          InvoiceDate, //logdate
          Currency, //currency
          moms_sek, //Sek amount : double;
          moms_for, //foramount : double;
          0, //vatcode,
          sp_InvTotalsidXOR.AsString, //Creator
          Object2, Object5,
          Volume,
          Copy(XorID_KundNamn,1,30) //FreeText
          ) ;
          //   ShowMessage('4 EXEC_xp_vourowlogwrite');

          //Skapa Öresutjämnings verifikationsrad
          {   if  ((Currency = 'SEK') AND (rounding_SEK <> 0))
          OR ((Currency <> 'SEK') AND (rounding_For <> 0)) then }
          if RoundTo(rounding_SEK,-2) <> 0 then
          EXEC_xp_vourowlogwrite (logno,
          Rounding_Konto ,//account tex 3740
          InvoiceDate, //logdate
          Currency, //currency
          RoundTo(rounding_SEK,-2), //amount : double;
          0, //-1*rounding_For, OBS bara SEK avrundningsvärdet skall överföras till xor!!
          0, //vatcode,
          sp_InvTotalsidXOR.AsString, //Creator
          Object2, Object5,
          Volume,
          Copy(XorID_KundNamn,1,30) //FreeText
          ) ;

        *)

        // ShowMessage('5 EXEC_xp_vourowlogwrite');

        // Skapa Reskontra
        EXEC_xp_ldglogwrite(cid, sp_InvTotalsidXOR.AsString, InvoiceType,
          ResKontraSerie, InvoiceNo, 0, // seq
          IntToStr(InvoiceNo), InvoiceDate, InvoiceDate, duedate, currency,
          InvoiceTotal_SEK, InvoiceTotal_For, moms_sek, vatcode, KundResKontra,
          'MJ', logno, vouno, serie, Object2, Object5) ;

      End // sp_InvTotals
      else
        showmessage('The invoice are missing values.');
    Finally
      sp_InvTotals.Active := False;
    End;
    { End //  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
      else
      ShowMessage('Problem lokalisera faktura...') ; }
  End; // With

  // Finally
  // mt_VerLogg.Active  := False ;
  // End ;

end;

(*
  procedure TdmVidaInvoice.InsertVerifikatLogg (const Test : Boolean;const InvoiceNo, InternalInvoiceNo : Integer);
  Var Object2, Object5                    : String ;
  ResKontraSerie                      : String ;
  KundResKontra                       : String ;
  VaruKonto                           : String ;
  Frakt_konto                         : String ;
  Moms_konto                          : String ;
  Rounding_Konto                      : String ;
  Provision_Konto                     : String ;
  KassaRabattKonto                    : String ;
  Debit_Credit                        : Integer ;
  AgentNo                             : Integer ;
  Region, Currency                    : String ;
  CountryNo                           : Integer ;
  Trading                             : Integer ;
  VaruGrupp                           : Integer ;
  PO_CountryNo                        : Integer ;

  InvoiceTotal_SEK,
  //    InvVal_No_moms_freight_SEK,
  ForsaljningsKonto_SEK,
  moms_sek,
  moms_for,
  Rounding_SEK,
  TotalInvoiceValueNoRounding_SEK,
  Provision_SEK,
  KassaRabatt_SEK,
  Total_frakt_SEK                           : Double ;





  InvoiceTotal_For,
  //    InvVal_No_moms_freight_For,
  ForsaljningsKonto_For,
  Rounding_For,
  Provision_For,
  TotalInvoiceValueNoRounding_For,
  KassaRabatt_For,
  Total_frakt_FOR                           : Double ;

  SkatteUpplag                        : Integer ;
  InvoiceDate, DueDate                : TSQLTimeStamp ;
  InvoiceDateAsDateTime,
  DueDateAsDateTime                   : TDateTime ;
  Vatcode                             : Integer ;
  InvoiceType                         : Integer ;
  Moms_20Percent                      : Double ;
  SalesmanGroupNo                     : Integer ;
  SalesRegionNo                       : Integer ;
  xorID, XorID_KundNamn               : String ;
  Volume                              : Double ;
  cid                                 : String ;
  //begin TransferInvoiceToXor
  begin
  with dmVidaInvoice do
  Begin
  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
  Begin
  Try
  cdsInvTrfLogg.Active:= True ;
  cdsInvTrfLogg.Insert ;

  xorID                     := '' ;
  Moms_20Percent            := 0.20 ;
  moms_konto                :=  '2610' ;
  Rounding_SEK              := 0 ;
  Rounding_For              := 0 ;
  Rounding_Konto            := '3740' ;


  Total_frakt_SEK           := 0 ;
  Total_frakt_FOR           := 0 ;



  //  ShowMessage('InternalInvoiceNo = '+inttostr(InternalInvoiceNo));
  sp_InvTotals.Active := False ;
  sp_InvTotals.ParamByName('@IntInvNo').AsInteger:= InternalInvoiceNo ;
  sp_InvTotals.Active := True ;
  //  ShowMessage('1: sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat = '+sp_InvTotalsTotalInvoiceValueNoRounding_For.AsString) ;
  if not sp_InvTotals.Eof then
  Begin
  cid                                 := sp_InvTotalscid.AsString ;
  Provision_Konto                     := '' ;
  VaruKonto                           := sp_InvTotalsVaruKonto.AsString ;
  Frakt_konto                         := sp_InvTotalsFraktKonto.AsString ;//cdsInvoiceListFraktkonto.AsString ;
  Moms_konto                          := sp_InvTotalsMomskonto.AsString ;
  Vatcode                             := sp_InvTotalsMomskod.AsInteger ;
  Debit_Credit                        := sp_InvTotalsDebit_Kredit.AsInteger ;

  //Om volymen är 0 eller null sätt volymen till 1, för att ekonomin kräver det!
  if (sp_InvTotalsNM3.IsNull = False) and (sp_InvTotalsNM3.AsFloat > 0) then
  Volume:= sp_InvTotalsNM3.AsFloat
  else
  Volume:= 1 ;

  //   ShowMessage('2: sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat = '+sp_InvTotalsTotalInvoiceValueNoRounding_For.AsString) ;
  SalesRegionNo                    := sp_InvTotalsSupplierNo.AsInteger ;
  SalesmanGroupNo                  := sp_InvTotalsSalesGroupNo.AsInteger ;
  Trading                          := sp_InvTotalsTrading.AsInteger ;
  //   KassaRabatt_For                  := sp_InvTotalsKassaRabatt_For.AsFloat ;
  //   KassaRabatt_SEK                  := sp_InvTotalsKassaRabatt_SEK.AsFloat ;
  //   Provision_For                    := sp_InvTotalsCommission_for.AsFloat ;
  //   Provision_SEK                    := sp_InvTotalsCommission_SEK.AsFloat ;

  //   TotalInvoiceValueNoRounding_For  := sp_InvTotalsTotalInvoiceValueNoRounding_For.AsFloat ;
  //   TotalInvoiceValueNoRounding_SEK  := sp_InvTotalsTotalInvoiceValueNoRounding_SEK.AsFloat ;

  //FAKTURATOTAL I SEK
  InvoiceTotal_SEK                 := sp_InvTotalsInvoiceTotalSEK.AsFloat ;

  //FAKTURA BELOPP SEK UTAN moms_sek OCH FRAKT
  //   InvVal_No_moms_freight_SEK       := sp_InvTotalsInvValnofreight_SEK.AsFloat ;

  //FAKTURATOTAL I UTLÄNDSVALUTA
  InvoiceTotal_For                 := sp_InvTotalsInvoiceTotalFOR.AsFloat ;
  //FAKTURA BELOPP I UTLÄNDSVALUTA UTAN moms_sek OCH FRAKT
  //   InvVal_No_moms_freight_For       := sp_InvTotalsInvValnofreight.AsFloat ;

  //MOMSBELOPP SEK
  moms_sek                             := sp_InvTotalsVAT_SEK.AsFloat ;

  //MOMSBELOPP FOR
  moms_for                             := sp_InvTotalsVAT_FOR.AsFloat ;

  //DEBIT ELLER KREDIT INVOICE TYPE
  if InvoiceTotal_SEK > 0 then
  InvoiceType:= 1 //Debit
  else
  InvoiceType:= 2 ;//Credit

  AgentNo        := sp_InvTotalsAgentNo.AsInteger ;
  //XorID_KundNamn LÄGGS I FREETEXT BÅDE I HUVUD OCH RAD I VERIFIKATIONEN
  XorID_KundNamn := sp_InvTotalsidXOR.AsString+':'+sp_InvTotalsCustomerName.AsString ;
  xorID          := sp_InvTotalsidXOR.AsString ;
  //TEX EU REGION
  Region         := sp_InvTotalsRegion.AsString ;
  Currency       := sp_InvTotalsCurr.AsString ;
  //LANDNR FRÅN FAKTURAADRESS
  CountryNo      := sp_InvTotalsCountryNo.AsInteger ;

  VaruGrupp      := sp_InvTotalsVaruGrupp.AsInteger ;
  PO_CountryNo   := sp_InvTotalsPO_CountryNo.AsInteger ;

  //0 = INGET SKATTEUPPLAG, 1 = SKATTEUPPLAG
  SkatteUpplag   := sp_InvTotalsSkatteUpplag.AsInteger ;
  //FAKTURADATUM
  InvoiceDate            := sp_InvTotalsInvoiceDate.AsSQLTimeStamp ;
  InvoiceDateAsDateTime  := SQLTimeStampToDateTime(InvoiceDate) ;
  InvoiceDateAsDateTime  := RecodeTime(InvoiceDateAsDateTime, 0, 0, 0, 0) ;
  InvoiceDate            := DateTimeToSQLTimeStamp(InvoiceDateAsDateTime) ;
  //   RecodeTime(const AValue: TDateTime; const AHour, AMinute, ASecond, AMilliSecond: Word): TDateTime;
  //FÖRFALLODATUM
  DueDate            := sp_InvTotalsDueDate.AsSQLTimeStamp ;
  DueDateAsDateTime  := SQLTimeStampToDateTime(DueDate) ;
  DueDateAsDateTime  := RecodeTime(DueDateAsDateTime, 0, 0, 0, 0) ;
  DueDate            := DateTimeToSQLTimeStamp(DueDateAsDateTime) ;

  //Okt 24 2005 borttaget från nedan formel KassaRabatt_For + Provision_For +
  //   ForsaljningsKonto_For:= InvoiceTotal_For - (Total_frakt_FOR + moms_for + Rounding_For) ;
  //Okt 24 2005 borttaget från nedan formel KassaRabatt_SEK + Provision_SEK ?
  //   ForsaljningsKonto_SEK:= InvoiceTotal_SEK - (Total_frakt_SEK + moms_sek + Rounding_SEK ) ;

  //FRAKTBELOPP I SEK
  Total_frakt_SEK              := sp_InvTotalsFRAKTTOTAL_SEK.AsFloat ;
  //FRAKTBELOPP I UTLÄNDSVALUTA
  Total_frakt_FOR              := sp_InvTotalsFRAKTTOTAL_CURR.AsFloat ;

  ForsaljningsKonto_For  :=  sp_InvTotalsProduktvardeFOR.AsFloat ;
  ForsaljningsKonto_SEK  :=  sp_InvTotalsProduktvardeSEK.AsFloat ;

  //   if Debit_Credit = 0 then
  //   Rounding_SEK       := Abs(InvoiceTotal_SEK) - (Abs(moms_sek) + Abs(Total_frakt_SEK) + Abs(ForsaljningsKonto_SEK))
  //   else
  Rounding_SEK       := Abs(InvoiceTotal_SEK) - (Abs(moms_sek) + Abs(Total_frakt_SEK) + Abs(ForsaljningsKonto_SEK)) ;




  //OBJECT 5 ÄR MOTPART
  Object5:= sp_InvTotalsO5.AsString ;

  if Length(Trim(Object5)) = 0 then
  Begin
  ShowMessage('Motpart (Object5) saknas för kund '+sp_InvTotalsCustomerName.AsString) ;
  Exit ;
  End ;

  //Sätt object2 till blank till att börja med...
  Object2:= '' ;

  if SalesmanGroupNo = 1 then //Danmark
  Object2:= '990' ;

  if AgentNo = 5391 {VTA} then
  Object2:= '970' ;

  if cdsInvoiceListCustomerNo.AsInteger = 3787 {cdsInvoiceListCustomerNo} then
  Object2:= '970' ;



  if cdsInvoiceListInvoiceType.AsInteger = 0 then
  Begin
  if Object5 = '99' then //Om extern kund
  ResKontraSerie:= 'VWK1'
  else
  ResKontraSerie:= 'VWK1' ;
  End
  else //Om det är en USA faktura skall serien vara VWK2
  if cdsInvoiceListInvoiceType.AsInteger = 4 then
  ResKontraSerie:= 'VWK2'
  else //Irland
  if cdsInvoiceListInvoiceType.AsInteger = 5 then
  ResKontraSerie:= 'VWK4'
  else
  if cdsInvoiceListInvoiceType.AsInteger = 7 then
  ResKontraSerie:= 'VTA1'
  else
  if cdsInvoiceListInvoiceType.AsInteger = 8 then
  ResKontraSerie:= 'VBAB' ;

  if Length(Trim(ResKontraSerie)) = 0 then
  Begin
  ShowMessage('Reskontraserie kan inte bestämmas för fakturanr '+IntToStr(InvoiceNo)) ;
  Exit ;
  End ;


  //Kundreskontra
  if Object5 = '99' then //99 = extern kund
  Begin
  if CountryNo = 9 then //CountryNo 9 = Sverige
  KundResKontra:= '1510' //Kundfordring Sverige externa kunder
  else
  KundResKontra:= '1512' ; //Kundfordring utländska externa kunder
  End
  else //Intern kund
  Begin
  if Object5 = '22' then
  KundResKontra:= '1562' //Kundfordring koncern Vida Wood UK
  else
  KundResKontra:= '1560' ; //Kundfordring koncern Sverige
  End ;


  if Length(Trim(Object2)) = 0 then
  Object2:= '980' ;

  if Length(Trim(xorID)) = 0 then
  Begin
  ShowMessage('Fakturanr '+IntToStr(InvoiceNo)+ ' kan inte överföras, för att kund '+Trim(sp_InvTotalsCustomerName.AsString)+' har inget xorID i rolltypen kund') ;
  Exit ;
  End ;

  cdsInvTrfLoggInvoiceNo.AsInteger                     := InvoiceNo ;
  cdsInvTrfLoggInternalInvoiceNo.AsInteger             := InternalInvoiceNo ;
  cdsInvTrfLoggObject2.AsString                        := Object2 ;
  cdsInvTrfLoggObject5.AsString                        := Object5 ;
  cdsInvTrfLoggResKontraSerie.AsString                 := ResKontraSerie ;
  cdsInvTrfLoggKundResKontra.AsString                  := KundResKontra ;
  cdsInvTrfLoggForsaljningskonto.AsString              := VaruKonto ;
  cdsInvTrfLoggFrakt_konto.AsString                    := Frakt_konto ;
  cdsInvTrfLoggMoms_konto.AsString                     := Moms_konto ;
  cdsInvTrfLoggRounding_Konto.AsString                 := Rounding_Konto ;
  cdsInvTrfLoggProvision_Konto.AsString                := Provision_Konto ;
  cdsInvTrfLoggKassaRabattKonto.AsString               := KassaRabattKonto ;
  cdsInvTrfLoggAgentNo.AsInteger                       := AgentNo ;
  cdsInvTrfLoggRegion.AsString                         := Region ;
  cdsInvTrfLoggCurrency.AsString                       := Currency ;
  cdsInvTrfLoggCountryNo.AsInteger                     := CountryNo ;
  cdsInvTrfLoggSkatteUpplag.AsInteger                  := SkatteUpplag ;
  cdsInvTrfLoggInvoiceTotal_SEK.AsFloat                := InvoiceTotal_SEK ;
  cdsInvTrfLoggForsaljningsKonto_SEK.AsFloat           := ForsaljningsKonto_SEK ;
  cdsInvTrfLoggmoms_sek.AsFloat                        := moms_sek ;
  cdsInvTrfLoggmoms_for.AsFloat                        := moms_For ;
  cdsInvTrfLoggmoms.AsFloat                            := moms_sek ;
  cdsInvTrfLoggRounding_SEK.AsFloat                    := Rounding_SEK ;
  cdsInvTrfLoggTotalInvoiceValueNoRounding_SEK.AsFloat := TotalInvoiceValueNoRounding_SEK ;
  cdsInvTrfLoggProvision_SEK.AsFloat                   := Provision_SEK ;
  cdsInvTrfLoggKassaRabatt_SEK.AsFloat                 := KassaRabatt_SEK ;
  cdsInvTrfLoggfrakt_SEK.AsFloat                       := Total_frakt_SEK ;
  cdsInvTrfLoggInvoiceTotal_For.AsFloat                := InvoiceTotal_For ;
  cdsInvTrfLoggForsaljningsKonto_For.AsFloat           := ForsaljningsKonto_For ;
  cdsInvTrfLoggRounding_For.AsFloat                    := Rounding_For ;
  cdsInvTrfLoggProvision_For.AsFloat                   := Provision_For ;
  cdsInvTrfLoggTotalInvoiceValueNoRounding_For.AsFloat := TotalInvoiceValueNoRounding_For ;
  cdsInvTrfLoggKassaRabatt_For.AsFloat                 := KassaRabatt_For ;
  cdsInvTrfLoggfrakt_for.AsFloat                       := Total_frakt_FOR ;
  cdsInvTrfLoggInvoiceDate.AsSQLTimeStamp              := InvoiceDate ;
  cdsInvTrfLoggVatcode.AsInteger                       := Vatcode ;
  cdsInvTrfLoggInvoiceType.AsInteger                   := InvoiceType ;
  cdsInvTrfLoggEventDate.AsSQLTimeStamp                := DateTimeToSQLTimeStamp(Now) ;
  cdsInvTrfLoggUserId.AsInteger                        := ThisUser.UserID ;
  cdsInvTrfLoggXorID_KundNamn.AsString                 := XorID_KundNamn ;
  cdsInvTrfLoggTrading.AsInteger                       := Trading ;
  cdsInvTrfLoggVaruGrupp.AsInteger                     := VaruGrupp ;
  cdsInvTrfLoggPO_Country.AsInteger                    := PO_CountryNo ;

  cdsInvTrfLogg.Post ;
  if cdsInvTrfLogg.ChangeCount > 0 then
  cdsInvTrfLogg.ApplyUpdates(0) ;
  cdsInvTrfLogg.Active:= False ;


  if Debit_Credit = 0 then
  Begin
  ForsaljningsKonto_SEK := Abs(ForsaljningsKonto_SEK) * -1 ;
  ForsaljningsKonto_FOR := Abs(ForsaljningsKonto_FOR) * -1 ;
  moms_sek              := Abs(moms_sek) * -1 ;
  moms_For              := Abs(moms_For) * -1 ;
  Total_frakt_SEK       := Abs(Total_frakt_SEK) * -1 ;
  Total_frakt_FOR       := Abs(Total_frakt_FOR) * -1 ;
  End
  else
  Begin
  ForsaljningsKonto_SEK := Abs(ForsaljningsKonto_SEK) ;
  ForsaljningsKonto_FOR := Abs(ForsaljningsKonto_FOR) ;
  moms_sek              := Abs(moms_sek) ;
  moms_For              := Abs(moms_For) ;
  Total_frakt_SEK       := Abs(Total_frakt_SEK) ;
  Total_frakt_FOR       := Abs(Total_frakt_FOR) ;
  End ;

  //RAD 1 KUNDFORDRING
  mt_VerLogg.Insert ;
  mt_VerLoggKonto.AsString         := KundResKontra ;
  mt_VerLoggNamn.AsString          := 'KUNDFORDRING' ;
  mt_VerLoggValuta.AsString        := Currency ;

  if InvoiceTotal_For <> 0 then
  mt_VerLoggKurs.AsFloat           := Abs(InvoiceTotal_SEK) / Abs(InvoiceTotal_For)
  else
  mt_VerLoggKurs.AsFloat           := 0 ;

  mt_VerLoggUtlandsBelopp.AsFloat  := InvoiceTotal_For ;
  if InvoiceTotal_SEK > 0 then
  Begin
  mt_VerLoggDebet.AsFloat          := InvoiceTotal_SEK ;
  mt_VerLoggKredit.AsFloat         := 0 ;
  End
  else
  Begin
  mt_VerLoggKredit.AsFloat         := InvoiceTotal_SEK ;
  mt_VerLoggDebet.AsFloat          := 0 ;
  End ;

  mt_VerLoggText.AsString          := XorID_KundNamn ;
  mt_VerLoggRadOrder.AsInteger     := 1 ;
  mt_VerLogg.Post ;

  //RAD 2 VARA
  mt_VerLogg.Insert ;
  mt_VerLoggKonto.AsString         := VaruKonto ;
  mt_VerLoggNamn.AsString          := 'FÖRSÄLJNING' ;
  mt_VerLoggValuta.AsString        := Currency ;
  if ForsaljningsKonto_For <> 0 then
  mt_VerLoggKurs.AsFloat           := ForsaljningsKonto_SEK / ForsaljningsKonto_For
  else
  mt_VerLoggKurs.AsFloat           := 0 ;
  mt_VerLoggUtlandsBelopp.AsFloat  := ForsaljningsKonto_For ;

  if ForsaljningsKonto_SEK > 0 then
  Begin
  mt_VerLoggDebet.AsFloat          := ForsaljningsKonto_SEK ;
  mt_VerLoggKredit.AsFloat         := 0 ;
  End
  else
  Begin
  mt_VerLoggKredit.AsFloat         := ForsaljningsKonto_SEK ;
  mt_VerLoggDebet.AsFloat          := 0 ;
  End ;

  mt_VerLoggText.AsString          := XorID_KundNamn ;
  mt_VerLoggRadOrder.AsInteger     := 2 ;
  mt_VerLogg.Post ;

  //RAD 3 FRAKT
  mt_VerLogg.Insert ;
  mt_VerLoggKonto.AsString         := Frakt_Konto ;
  mt_VerLoggNamn.AsString          := 'FRAKTER' ;
  mt_VerLoggValuta.AsString        := Currency ;

  if Total_frakt_FOR <> 0 then
  mt_VerLoggKurs.AsFloat           := Total_frakt_SEK / Total_frakt_FOR
  else
  mt_VerLoggKurs.AsFloat           := 0 ;

  mt_VerLoggUtlandsBelopp.AsFloat  := Total_frakt_FOR ;

  if Total_frakt_SEK > 0 then
  Begin
  mt_VerLoggDebet.AsFloat          := Total_frakt_SEK ;
  mt_VerLoggKredit.AsFloat         := 0 ;
  End
  else
  Begin
  mt_VerLoggKredit.AsFloat         := Total_frakt_SEK ;
  mt_VerLoggDebet.AsFloat          := 0 ;
  End ;

  mt_VerLoggText.AsString          := XorID_KundNamn ;
  mt_VerLoggRadOrder.AsInteger     := 3 ;
  mt_VerLogg.Post ;

  //RAD 3 MOMS
  mt_VerLogg.Insert ;
  mt_VerLoggKonto.AsString         := Moms_Konto ;
  mt_VerLoggNamn.AsString          := 'MOMS' ;
  mt_VerLoggValuta.AsString        := Currency ;
  if Moms_FOR <> 0 then
  mt_VerLoggKurs.AsFloat           := Moms_SEK / Moms_FOR
  else
  mt_VerLoggKurs.AsFloat           := 0 ;

  mt_VerLoggUtlandsBelopp.AsFloat  := Moms_FOR ;

  if Moms_SEK > 0 then
  Begin
  mt_VerLoggDebet.AsFloat          := Moms_SEK ;
  mt_VerLoggKredit.AsFloat         := 0 ;
  End
  else
  Begin
  mt_VerLoggKredit.AsFloat         := Moms_SEK ;
  mt_VerLoggDebet.AsFloat          := 0 ;
  End ;

  mt_VerLoggText.AsString          := XorID_KundNamn ;
  mt_VerLoggRadOrder.AsInteger     := 4 ;
  mt_VerLogg.Post ;

  //RAD 5 Öresavrundning
  mt_VerLogg.Insert ;
  mt_VerLoggKonto.AsString         := Rounding_Konto ;
  mt_VerLoggNamn.AsString          := 'ÖRESUTJÄMNING' ;
  mt_VerLoggValuta.AsString        := Currency ;
  mt_VerLoggKurs.AsFloat           := 0 ;
  mt_VerLoggUtlandsBelopp.AsFloat  := 0 ;

  if Debit_Credit = 0 then
  Begin
  if Rounding_SEK > 0 then
  Rounding_SEK                     := Abs(Rounding_SEK) * -1
  else
  Rounding_SEK                     := Abs(Rounding_SEK) ;

  if Rounding_SEK > 0 then
  mt_VerLoggDebet.AsFloat         := Rounding_SEK
  else
  mt_VerLoggKredit.AsFloat         := Rounding_SEK ;

  End
  else
  Begin
  //    mt_VerLoggKredit.AsFloat         := Rounding_SEK ;

  if Rounding_SEK > 0 then
  mt_VerLoggDebet.AsFloat         := Rounding_SEK
  else
  mt_VerLoggKredit.AsFloat         := Rounding_SEK ;
  End ;

  //   if Debit_Credit = 0 then
  //    Rounding_SEK  := Abs(Rounding_SEK) ;

  {   if Rounding_SEK > 0 then
  Begin
  mt_VerLoggDebet.AsFloat          := Abs(Rounding_SEK) ;
  mt_VerLoggKredit.AsFloat         := 0 ;
  End
  else
  Begin
  mt_VerLoggKredit.AsFloat         := Abs(Rounding_SEK) * -1 ;
  mt_VerLoggDebet.AsFloat          := 0 ;
  End ;}

  mt_VerLoggText.AsString          := XorID_KundNamn ;
  mt_VerLoggRadOrder.AsInteger     := 5 ;
  mt_VerLogg.Post ;



  if Thisuser.UserID = 8 then  Exit ;

  if Test then Exit ;


  //sq_invoiceTrf KOLLAR OM FAKTURANNUMRET REDAN FINNS I XOR
  if Thisuser.UserID <> 8 then
  Begin
  sq_invoiceTrf.ParamByName('Invno').AsInteger      := InvoiceNo ;
  sq_invoiceTrf.ParamByName('enumerator').AsString  := ResKontraSerie ;
  sq_invoiceTrf.Open ;
  if sq_invoiceTrf.FieldByName('Invno').AsInteger > 1 then
  Begin
  ShowMessage('Faktura nr ' + inttostr(InvoiceNo) + ' är redan i loggen.') ;
  sq_invoiceTrf.Close ;
  Exit ;
  End ;
  sq_invoiceTrf.Close ;
  End ;


  //Skapa verifikationshuvudet
  EXEC_sp_VIS_xp_voulogwrite (cid,
  3{logtype},
  InvoiceDate,
  ResKontraSerie,
  InvoiceNo,
  Copy(XorID_KundNamn, 1,80) //FreeText
  ) ;
  //   ShowMessage('EXEC_sp_VIS_xp_voulogwrite');

  //Skapa KUNDFORDRINGSKONTO verifikationsrad
  if InvoiceTotal_SEK <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  KundResKontra,//account tex 1560
  InvoiceDate, //logdate
  Currency, //currency
  InvoiceTotal_SEK,
  InvoiceTotal_For,
  0, //vatcode,
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  Volume,
  Copy(XorID_KundNamn,1,30) //FreeText
  ) ;

  //   ShowMessage('EXEC_xp_vourowlogwrite');
  //Skapa varvärde verifikationsrad för Försäljningskonto 30xx
  if ForsaljningsKonto_SEK <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  VaruKonto ,//account tex 3020
  InvoiceDate, //logdate
  Currency, //currency
  //   InvoiceTotal_SEK,
  //   InvoiceTotal_For,
  //Tog bort *-1 på nedan 2 rader
  ForsaljningsKonto_SEK, //SEK amount : double;
  ForsaljningsKonto_For, //foramount : double;
  vatcode,//skall ha en vatcode
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  Volume,
  Copy(XorID_KundNamn,1,30) //FreeText
  ) ;

  //   ShowMessage('2 EXEC_xp_vourowlogwrite');
  //Skapa frakt verifikationsrad
  //här!
  if Total_frakt_SEK <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  Frakt_Konto ,//account tex 2610
  InvoiceDate, //logdate
  Currency, //currency
  Total_frakt_SEK, //SEK amount : double;
  Total_frakt_FOR, //foramount : double;
  vatcode,
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  Volume,
  Copy(XorID_KundNamn,1,30) //FreeText
  ) ;

  //   ShowMessage('3 EXEC_xp_vourowlogwrite');
  //Skapa moms_sek verifikationsrad
  if moms_sek <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  moms_Konto ,//account tex 2610
  InvoiceDate, //logdate
  Currency, //currency
  moms_sek, //Sek amount : double;
  moms_for, //foramount : double;
  0, //vatcode,
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  Volume,
  Copy(XorID_KundNamn,1,30) //FreeText
  ) ;
  //   ShowMessage('4 EXEC_xp_vourowlogwrite');

  //Skapa Öresutjämnings verifikationsrad
  {   if  ((Currency = 'SEK') AND (rounding_SEK <> 0))
  OR ((Currency <> 'SEK') AND (rounding_For <> 0)) then }
  if RoundTo(rounding_SEK,-2) <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  Rounding_Konto ,//account tex 3740
  InvoiceDate, //logdate
  Currency, //currency
  RoundTo(rounding_SEK,-2), //amount : double;
  0, //-1*rounding_For, OBS bara SEK avrundningsvärdet skall överföras till xor!!
  0, //vatcode,
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  Volume,
  Copy(XorID_KundNamn,1,30) //FreeText
  ) ;

  //   ShowMessage('5 EXEC_xp_vourowlogwrite');


  //Skapa KASSA verifikationsrad
  {   if KassaRabatt_SEK <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  KassaRabattKonto ,//account tex
  InvoiceDate, //logdate
  Currency, //currency
  -1*KassaRabatt_SEK, //Sek amount : double;
  -1*KassaRabatt_For, //foramount : double;
  vatcode,
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  sp_InvTotalsNM3.AsFloat,
  XorID_KundNamn //FreeText
  ) ; }

  //Skapa PROVISION verifikationsrad
  {   if Provision_SEK <> 0 then
  EXEC_xp_vourowlogwrite (logno,
  Provision_Konto ,//account tex
  InvoiceDate, //logdate
  Currency, //currency
  -1*Provision_SEK, //Sek amount : double;
  -1*Provision_For, //foramount : double;
  vatcode,
  sp_InvTotalsidXOR.AsString, //Creator
  Object2, Object5,
  sp_InvTotalsNM3.AsFloat,
  XorID_KundNamn //FreeText
  ) ; }


  //Skapa Reskontra
  EXEC_xp_ldglogwrite (cid,
  sp_InvTotalsidXOR.AsString,
  InvoiceType,
  ResKontraSerie,
  InvoiceNo,
  0,   //seq
  IntToStr(InvoiceNo),
  InvoiceDate,
  InvoiceDate,
  DueDate,
  Currency,
  InvoiceTotal_SEK,
  InvoiceTotal_For,
  moms_sek,
  vatcode,
  KundResKontra,
  'MJ',
  logno,
  vouno,
  serie,
  Object2, Object5 ) ;

  //   ShowMessage('2 EXEC_xp_ldglogwrite');

  {const cid, person : String;
  const stype : Integer;  //invoiceType
  const enum : String;
  const invno, seq : Integer ;
  const org : String;
  const bookdate, invdate, duedate : TSQLTimeStamp;
  const currency : String;
  const amount, foramount, moms_sek : Double;
  const vatcode : Integer;
  const account : String;
  const approval1 : String;
  const logno, vouno : Integer;
  const serie : String) ;  }
  End
  else
  ShowMessage('Fakturan har inga värden.') ;
  Finally
  sp_InvTotals.Active := False ;
  End ;
  End //  if cdsInvoiceList.Locate('InternalInvoiceNo', InternalInvoiceNo, []) then
  else
  ShowMessage('Problem lokalisera faktura...') ;
  End ; //With
  end; *)

procedure TdmVidaInvoice.cdsInvoiceDetailInclInPriceChange(Sender: TField);
begin
  if cdsInvoiceHeadDebit_Credit.AsInteger = 0 then
  Begin
    if cdsInvoiceDetailInclInPrice.AsInteger = 1 then
    Begin
      cdsInvoiceDetailTypeOfRow.AsInteger := 3;
      cdsInvoiceDetailProductValue.AsFloat :=
        Abs(cdsInvoiceDetailProductValue.AsFloat) * -1;
    End
    else
    Begin
      cdsInvoiceDetailTypeOfRow.AsInteger := 2;
      cdsInvoiceDetailProductValue.AsFloat :=
        Abs(cdsInvoiceDetailProductValue.AsFloat);
    End;
  End
  else
  Begin
    if cdsInvoiceDetailInclInPrice.AsInteger = 1 then
    Begin
      cdsInvoiceDetailTypeOfRow.AsInteger := 3;
      cdsInvoiceDetailProductValue.AsFloat :=
        Abs(cdsInvoiceDetailProductValue.AsFloat);
    End
    else
    Begin
      cdsInvoiceDetailTypeOfRow.AsInteger := 2;
      cdsInvoiceDetailProductValue.AsFloat :=
        Abs(cdsInvoiceDetailProductValue.AsFloat) * -1;
    End;
  End;
end;

procedure TdmVidaInvoice.cdsInvoiceDetailUpdateError(ASender: TDataSet;
  AException: EFDException; ARow: TFDDatSRow; ARequest: TFDUpdateRequest;
  var AAction: TFDErrorAction);
begin
  dmsSystem.FDoLog('Error Update InvoiceDetail : ' + AException.Message);
end;

function TdmVidaInvoice.GetFreigthCost(const InternalInvoiceNo, ShippingPlanNo,
  InclInPrice, InclInInvoiceTotal: Integer): Double;
Begin
  Try
    sq_GetTotalFreigthInPrice.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sq_GetTotalFreigthInPrice.ParamByName('ShippingPlanNo').AsInteger :=
      ShippingPlanNo;
    sq_GetTotalFreigthInPrice.ParamByName('InclInPrice').AsInteger :=
      InclInPrice;
    // sq_GetTotalFreigthInPrice.ParamByName('InclInInvoiceTotal').AsInteger  := InclInInvoiceTotal ;
    sq_GetTotalFreigthInPrice.Active := True;
    if not sq_GetTotalFreigthInPrice.Eof then
      Result := sq_GetTotalFreigthInPriceFreight.AsFloat
    else
      Result := 0;
  Finally
    sq_GetTotalFreigthInPrice.Active := False;
  End;
End;

function TdmVidaInvoice.GetTotalAM3PerLO(const InternalInvoiceNo,
  ShippingPlanNo: Integer): Double;
Begin
  Try
    sq_GetTotalAM3PerLO.ParamByName('InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sq_GetTotalAM3PerLO.ParamByName('ShippingPlanNo').AsInteger :=
      ShippingPlanNo;
    // sq_GetTotalAM3PerLO.ParamByName('InclInPrice').AsInteger         := InclInPrice ;
    // sq_GetTotalAM3PerLO.ParamByName('InclInInvoiceTotal').AsInteger  := InclInInvoiceTotal ;
    sq_GetTotalAM3PerLO.Active := True;
    if not sq_GetTotalAM3PerLO.Eof then
      Result := sq_GetTotalAM3PerLOAM3.AsFloat
    else
      Result := 0;
  Finally
    sq_GetTotalAM3PerLO.Active := False;
  End;
End;

Procedure TdmVidaInvoice.CalcAndUpdateNetProductValueInInvoiceDetail;
Var
  TotalFraktKostnadPerLOIncludedInPrice, TotalAM3LO, Temp_VOLUME_ORDERUNIT
    : Extended;
  OldFilter: String;
Begin
  with dmVidaInvoice do
  begin
    OldFilter := cdsInvoiceDetail.Filter;
    Try
      cdsInvoiceLO.First;

      // sq_LONoInInvoice.Active := False ;
      // sq_LONoInInvoice.ParamByName('InternalInvoiceNo').AsInteger := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
      // sq_LONoInInvoice.Active := True ;
      // sq_LONoInInvoice.First ;
      While not cdsInvoiceLO.Eof do // sq_LONoInInvoice.Eof do
      Begin

        TotalFraktKostnadPerLOIncludedInPrice := GetFreightCostinCDS(1);
        // dmVidaInvoice.GetFreigthCost(cdsInvoiceHeadInternalInvoiceNo.AsInteger, sq_LONoInInvoiceShippingPlanNo.AsInteger, 1, {InclInPrice} 0 {InclInInvoiceTotal}) ;
        TotalAM3LO := GetAM3PerLO;
        // GetTotalAM3PerLO(cdsInvoiceHeadInternalInvoiceNo.AsInteger, sq_LONoInInvoiceShippingPlanNo.AsInteger) ;
        cdsInvoiceDetail.Filter := 'ShippingPlanNo = ' +
          cdsInvoiceLOShippingPlanNo.AsString +
          ' AND (ArticleNo = 1 OR ArticleNo = 3)';
        cdsInvoiceDetail.Filtered := True;
        cdsInvoiceDetail.First;
        Try
          While not cdsInvoiceDetail.Eof do
          Begin
            cdsInvoiceDetail.Edit;
            // Räknar ut varuvärde, belopp - frakt
            if TotalAM3LO > 0 then
            Begin
              // if cdsInvoiceDetailInclInPrice.AsInteger = 1 then
              if Abs(TotalFraktKostnadPerLOIncludedInPrice) > 0 then
                cdsInvoiceDetailProductValueWOFreight.AsFloat :=
                  cdsInvoiceDetailProductValue.AsFloat +
                  ((cdsInvoiceDetailActualNetM3.AsFloat / TotalAM3LO) *
                  TotalFraktKostnadPerLOIncludedInPrice)
              else
                cdsInvoiceDetailProductValueWOFreight.AsFloat :=
                  cdsInvoiceDetailProductValue.AsFloat;

              cdsInvoiceDetailFreightCostCurr.AsFloat :=
                cdsInvoiceDetailProductValue.AsFloat -
                cdsInvoiceDetailProductValueWOFreight.AsFloat
            End
            else
              cdsInvoiceDetailProductValueWOFreight.AsFloat :=
                cdsInvoiceDetailProductValue.AsFloat;

            cdsInvoiceDetail.Post;
            cdsInvoiceDetail.Next;
          End; // While not cdsInvoiceDetail.Eof do

        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;

        // sq_LONoInInvoice.Next ;
        cdsInvoiceLO.Next;
      end; // While not sq_LONoInInvoice.Eof...
    Finally
      // sq_LONoInInvoice.Active  := False ;
      cdsInvoiceDetail.Filter := OldFilter;
    End;
  End; // with
End;

function TdmVidaInvoice.GetAM3PerLO: Double;
Var
  OldFilter: String;
Begin
  with dmVidaInvoice do
  begin
    Result := 0;
    OldFilter := cdsInvoiceDetail.Filter;
    Try
      cdsInvoiceDetail.Filter := 'ShippingPlanNo = ' +
        cdsInvoiceLOShippingPlanNo.AsString +
        ' AND (ArticleNo = 1 OR ArticleNo = 3)';
      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        Result := Result + cdsInvoiceDetailActualNetM3.AsFloat;
        cdsInvoiceDetail.Next;
      End; // While not cdsInvoiceDetail.Eof do

    Finally
      cdsInvoiceDetail.Filter := OldFilter;
    End;
  End; // with
End;

function TdmVidaInvoice.GetFreightCostinCDS(const InclInPrice: Integer): Double;
Var
  OldFilter: String;
Begin
  with dmVidaInvoice do
  begin
    Result := 0;
    OldFilter := cdsInvoiceDetail.Filter;
    Try
      cdsInvoiceDetail.Filter := '(ShippingPlanNo = ' +
        cdsInvoiceLOShippingPlanNo.AsString +
        ' AND ((ArticleNo = 2) OR (ArticleNo = 4))) ' + ' AND InclInPrice = ' +
        IntToStr(InclInPrice);
      cdsInvoiceDetail.Filtered := True;
      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        Result := Result + cdsInvoiceDetailProductValue.AsFloat;
        cdsInvoiceDetail.Next;
      End; // While not cdsInvoiceDetail.Eof do

    Finally
      cdsInvoiceDetail.Filtered := False;
      cdsInvoiceDetail.Filter := OldFilter;
    End;
  End; // with
End;

procedure TdmVidaInvoice.SummarizeWithOutOpenInvoiceForm;
// Var   SavePlace: TBookmark ;
Begin
  with dmVidaInvoice do
  Begin
    // if cdsInvoiceHeadInvoiced.AsInteger = 0 then
    // Begin
    // DetermineIfInvoiceIsWithMoms ; //not needed on invoices already made

    // Sätter kontonr
    SetKontonr;

    if cdsInvoiceHead.Active = False then
      Exit;
    cdsInvoiceDetail.DisableControls;
    // SavePlace:= cdsInvoiceDetail.GetBookmark ;
    Try
      if cdsInvoiceHead.State = dsBrowse then
        cdsInvoiceHead.Edit;
      cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat := 0;
      cdsInvoiceHeadSUM_FreigthCost.AsFloat := 0;

      cdsInvoiceDetail.Filtered := False;
      cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
        cdsInvoiceHeadInternalInvoiceNo.AsString;
      cdsInvoiceDetail.Filtered := True;

      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        // SUM Product details
        if ((cdsInvoiceDetailArticleNo.AsInteger = 1) or
          (cdsInvoiceDetailArticleNo.AsInteger = 3)) or
          (((cdsInvoiceDetailArticleNo.AsInteger = 2) or
          (cdsInvoiceDetailArticleNo.AsInteger = 4)) and
          (cdsInvoiceDetailInclInPrice.AsInteger = 0)) then
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat :=
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
            cdsInvoiceDetailProductValue.AsFloat;

        // SUM non product details as freight
        if ((cdsInvoiceDetailArticleNo.AsInteger = 2) or
          (cdsInvoiceDetailArticleNo.AsInteger = 4)) then
          cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
            cdsInvoiceHeadSUM_FreigthCost.AsFloat +
            Abs(cdsInvoiceDetailProductValue.AsFloat) * -1;
        cdsInvoiceDetail.Next;
      End;


      // Calculate total
      // DO NOT CALCULATE INVIOCE TOTALS!!
      (*
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat:=  cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat ;
        //Calculate invoice value with no freight
        cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat:=
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat + cdsInvoiceHeadSUM_FreigthCost.AsFloat ;


        if cdsInvoiceHeadFreightInDiscount.AsInteger = 1 then
        // if rgFreightInDiscount.ItemIndex = 1 then
        // if cbFreightInDiscount.Checked = False then
        Begin
        // Calculate Invoice value to be paid, Freight NOT included in discount calculation
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
        (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;

        cdsInvoiceHeadDiscount.AsFloat:=
        (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;
        End
        else
        Begin
        // Calculate Invoice value to be paid, Freight Included in discount calculation
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
        (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;

        cdsInvoiceHeadDiscount.AsFloat:= (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadDiscount1.AsFloat/100)) ;
        End ;

        // if cbCommissionPaidByCustomer.Checked then
        if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then
        Begin
        //  if cbFreightInComm.Checked = False then
        if cdsInvoiceHeadFreightInCommission.AsInteger = 1 then
        Begin
        // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat  := cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
        (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
        cdsInvoiceHeadCommission.AsFloat            := (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
        End
        else
        Begin
        // Calculate Invoice value to be paid, Freight included in Commission calculation
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat := cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
        (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
        cdsInvoiceHeadCommission.AsFloat           :=
        (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
        End ;
        End ;



        // if cbCommissionPaidByCustomer.Checked = False then
        if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then
        //Show commission VW is paying
        Begin
        //   if rgCommisionInDiscount.ItemIndex = 1 then
        if cdsInvoiceHeadFreightInCommission.AsInteger = 1 then
        Begin
        // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
        cdsInvoiceHeadCommission.AsFloat  := (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
        End
        else
        Begin
        // Calculate Invoice value to be paid, Freight included in Commission calculation
        cdsInvoiceHeadCommission.AsFloat:=
        (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
        End ;
        End ;

        cdsInvoiceHeadCommission_and_Discount.AsFloat          := cdsInvoiceHeadCommission.AsFloat + cdsInvoiceHeadDiscount.AsFloat ;
        cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat  := cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat - cdsInvoiceHeadCommission_and_Discount.AsFloat ;
        cdsInvoiceHeadVAT_Value.AsFloat                        := 0 ;

        //Calculate VAT Value
        if cdsInvoiceHeadMoms.AsInteger = 1 then
        Begin
        cdsInvoiceHeadVAT_Value.AsFloat               := cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * c_Moms ;
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat    := Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat+cdsInvoiceHeadVAT_Value.AsFloat) ;
        cdsInvoiceHeadVAT_Value.AsFloat               := cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * c_Moms ;
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat  := Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat+cdsInvoiceHeadVAT_Value.AsFloat) ;
        End
        else
        Begin
        cdsInvoiceHeadVAT_Value.AsFloat:= 0 ;
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat   := Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat) ;
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat := Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat) ;
        End ;

      *)

      // Save to InvoiceHeader table
      cdsInvoiceHead.Post;
      // CalcAndUpdateNetProductValueInInvoiceDetail ;
    Finally

      // cdsInvoiceDetail.Filtered:= False ;
      // dmVidaInvoice.cdsInvoiceDetail.Filter:= 'InternalInvoiceNo = ' + dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString+
      // ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex] ;

      cdsInvoiceDetail.Filtered := True;
      // cdsInvoiceDetail.GotoBookmark(SavePlace) ;
      cdsInvoiceDetail.EnableControls;
    End; // finally
    // End ;//if cdsInvoiceHeadInvoiced.AsInteger = 0 then
  End; // with
End;

procedure TdmVidaInvoice.cdsInvoiceHeadBeforePost(DataSet: TDataSet);
begin
  if cdsInvoiceHeadDebit_Credit.AsInteger = 0 then
    cdsInvoiceHeadMultFactor.AsInteger := 1
  else
    cdsInvoiceHeadMultFactor.AsInteger := -1;
end;

procedure TdmVidaInvoice.cdsInvoiceHeadInvoiceDateChange(Sender: TField);
begin
  CalculateDueDate;
end;

// Get invoicetype related to SalesRegion and OrderType
Function TdmVidaInvoice.GetInvoiceTypeFromBinding(const SalesRegionNo,
  OrderType: Integer): Integer;
Begin
  sq_InvoiceType.ParamByName('SalesRegionNo').AsInteger := SalesRegionNo;
  sq_InvoiceType.ParamByName('OrderType').AsInteger     := OrderType;
  sq_InvoiceType.Active := True;
  Try
    if not sq_InvoiceType.Eof then
      Result := sq_InvoiceTypeInvoiceType.AsInteger
    else
      Result := 0;
  Finally
    sq_InvoiceType.Active := False;
  End;
End;

Function TdmVidaInvoice.
  Check_DoesInvoiceValueCorrespondWith_Debit_Credit: String;
Begin
  if (cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat > 0) and
    (cdsInvoiceHeadDebit_Credit.AsInteger = 0) then
  Begin
    Result := '';
  End
  else if (cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat < 0) and
    (cdsInvoiceHeadDebit_Credit.AsInteger = 1) then
  Begin
    Result := '';
  End
  else if (cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat > 0) and
    (cdsInvoiceHeadDebit_Credit.AsInteger = 1) then
  Begin
    Result := 'Fakturabeloppet är positivt men fakturan är angiven som en kredit';
  End
  else if (cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat < 0) and
    (cdsInvoiceHeadDebit_Credit.AsInteger = 0) then
  Begin
    Result := 'Fakturabeloppet är negativt men fakturan är angiven som en Debet';
  End;
End;

procedure TdmVidaInvoice.PrepareLindaExcelFile(const InvoiceNo: String;
  const CustomerNo, InternalInvoiceNo: Integer);
const
  LF = #10;
Var // FileName,
  FileNameExcel, Stext, Subject, MailToAddress: String;
  Attach: array of String;
Begin
  dmsSystem.RunLengthSpec;

  // FileName       := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' + InvoiceNo + '.csv' ;
  FileNameExcel := dmsSystem.Get_Dir('ExcelDir') + 'InvoiceNo ' +
    InvoiceNo + '.xls';
  // FileNameExcel  := 'C:\vis\InvoiceNo ' + InvoiceNo + '.xls' ;

  cds_LindaExport.ParamByName('InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  // cds_LindaExport.ParamByName('CET').AsInteger := CET ;
  cds_LindaExport.Active := True;
  Try
    // QExport3ASCII1.FileName:= FileName ;
    // QExport3ASCII1.Execute ;
    QExportLindaExcel.FileName := FileNameExcel;
    QExportLindaExcel.Execute;

    SetLength(Attach, 1);
    // Attach[0]:= FileName ;
    Attach[0] := FileNameExcel;

    Subject := 'Faktura/paketspecifikation. Fakturanr: ' + InvoiceNo +
      ' - Invoice/package specification. InvoiceNo: ' + InvoiceNo;
    Stext := 'Exportfil paketspecifikation bifogad. ' + LF + '' +
      'Export file package specification attached. ' + LF + '' + LF + '' + LF +
      'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
      (ThisUser.UserID);

    MailToAddress := dmsContact.GetEmailAddress(CustomerNo);
    dmsSystem.Email_Attachments(Attach, MailToAddress, Subject, Stext);
    // ShowMessage('Filerna exporterade till ' + FileName + ' resp. ' + FileNameExcel  + LF + ''  + LF + ''  + '  OBS!Kontrollera filerna innan du skickar dem!') ;
  Finally
    cds_LindaExport.Active := False;
  End;
End;

procedure TdmVidaInvoice.DeleteInvoice(const InternalInvoiceNo: Integer);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  try
    With dmVidaInvoice do
    Begin
      Screen.Cursor := crSQLWait; { Show hourglass cursor }
      sp_vis_DelPrelInvoice.ParamByName('@InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      sp_vis_DelPrelInvoice.ExecProc;
    End;
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TdmVidaInvoice.CalculateDueDate;
// Var myYear, myMonth, myDay,
Var
  NoOfDaysDiscount2: Word;
Begin
  NoOfDaysDiscount2 := 0;
  // DecodeDate(cdsInvoiceHeadInvoiceDate.AsDateTime, myYear, myMonth, myDay);

  NoOfDaysDiscount2 := dmsSystem.Get_NoOfDaysDiscount2
    (cdsInvoiceHeadPaymentTermsNo.AsInteger);

  if NoOfDaysDiscount2 > 0 then
  Begin
    if cdsInvoiceHead.State in [dsBrowse] then
      cdsInvoiceHead.Edit;
    cdsInvoiceHeadDueDate.AsDateTime :=
      IncDay(cdsInvoiceHeadInvoiceDate.AsDateTime, NoOfDaysDiscount2);
  End;
End;

Function TdmVidaInvoice.GetArticleGroupNo(const ArticleNo: Integer): Integer;
Begin
  sq_GetArticleGroupNo.ParamByName('ArticleNo').AsInteger := ArticleNo;
  sq_GetArticleGroupNo.Active := True;
  Try
    if not sq_GetArticleGroupNo.Eof then
      Result := sq_GetArticleGroupNoArticleGroupNo.AsInteger
    else
      Result := -1;
  Finally
    sq_GetArticleGroupNo.Active := False;
  End;
End;

function TdmVidaInvoice.CustomerHaveValidEAN(const InternalInvoiceNo
  : Integer): Boolean;
Var
  ResultText: String;
Begin
  ResultText := '';
  sp_CustomerHaveValidEAN.ParamByName('@InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  sp_CustomerHaveValidEAN.ExecProc;
  Try
    ResultText := sp_CustomerHaveValidEAN.ParamByName('@ResultText').AsString;
    if Length(ResultText) > 0 then
    Begin
      showmessage(ResultText);
      Result := False;
    End
    else
      Result := True;

  Except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  End;
End;

function TdmVidaInvoice.GetAvdelning(const ClientNo: Integer;
  const KontoNr: String): String;
Var
  ResultText: String;
Begin
  if sp_GetAvdelning.Active then
    sp_GetAvdelning.Active := False;
  sp_GetAvdelning.ParamByName('@ClientNo').AsInteger := ClientNo;
  sp_GetAvdelning.ParamByName('@KontoNr').AsString := KontoNr;
  sp_GetAvdelning.Active := True;
  Try
    if not sp_GetAvdelning.Eof then
      Result := sp_GetAvdelningAvdelning.AsString
    else
      Result := '';
  Finally
    sp_GetAvdelning.Active := False;
  End;

End;

procedure TdmVidaInvoice.SendInvoiceAsEDI(const InternalInvoiceNo: Integer);
begin
  if CustomerHaveValidEAN(InternalInvoiceNo) then
  Begin
    if not InvoiceSentAsEDI(InternalInvoiceNo) then
    Begin
      Try
        cds_InsertToInvoiceEDI.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        cds_InsertToInvoiceEDI.ParamByName('UserID').AsInteger :=
          ThisUser.UserID;
        cds_InsertToInvoiceEDI.ParamByName('DateCreated').AsSQLTimeStamp :=
          DateTimeToSQLTimeStamp(Now);
        cds_InsertToInvoiceEDI.ExecSQL;
        showmessage('EDI on the way.');
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    End; // if not InvoiceSentAsEDI...
  End; // if CustomerHaveValidEAN...
end;

procedure TdmVidaInvoice.DeleteInvoiceEDI(const InternalInvoiceNo: Integer);
Begin
  sp_vis_DeleteInvoicedEDI.ParamByName('@InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  sp_vis_DeleteInvoicedEDI.ParamByName('@UserID').AsInteger := ThisUser.UserID;
  Try
    sp_vis_DeleteInvoicedEDI.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmVidaInvoice.InvoiceSentAsEDI(const InternalInvoiceNo
  : Integer): Boolean;
Begin
  sp_vis_InvoicedEDIStatus.ParamByName('@InternalInvoiceNo').AsInteger :=
    InternalInvoiceNo;
  sp_vis_InvoicedEDIStatus.Active := True;
  Try
    if sp_vis_InvoicedEDIStatus.Eof then
      Result := False
    else
      Result := True;
  Finally
    sp_vis_InvoicedEDIStatus.Active := False;
  End;

  if Result then
  Begin
    if MessageDlg
      ('The invoice has already been sent by EDI, do you want to do a resend?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      DeleteInvoiceEDI(InternalInvoiceNo);
      Result := False;
    End;
  End;

End;

procedure TdmVidaInvoice.MailaCopyToVIDASTORE(const InvoiceNo: String;
  const InternalInvoiceNo, CustomerNo: Integer);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  FilNamn, ExcelFolder, MailToAddress: String;

  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;

  // MailToAddressAgent,
  // MailToAddressKund,
  // MailToAddress,
  // InvoiceNo               : String ;
begin
  ExcelFolder := dmsSystem.Get_Dir('ExcelDir');
  // InvoiceNo:= intToStr(dmVidaInvoice.GetInvoiceNo(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger, dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger)) ;

  FilNamn := ExcelFolder + 'InvoiceNo ' + InvoiceNo + '.pdf';

  {
    if (not dmVidaInvoice.cdsInvoiceHeadAgentNo.IsNull) and
    (dmVidaInvoice.cdsInvoiceHeadAgentNo.AsInteger > 0) then
    MailToAddressAgent := dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceHeadAgentNo.AsInteger) ;

    MailToAddressKund  := dmsContact.GetEmailAddress(dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger) ;

    if (Length(MailToAddressAgent) > 0) and (Length(MailToAddressKund) > 0) then
    MailToAddress := MailToAddressAgent + MailToAddressKund
    else
    if (Length(MailToAddressAgent) > 0) then
    MailToAddress := MailToAddressAgent
    else
    if (Length(MailToAddressKund) > 0) then
    MailToAddress := MailToAddressKund ; }

  MailToAddress := 'vis.faktura@vida.se';


  // if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then exit ;

  if not FileExists(FilNamn) then
  Begin
    if uReportController.useFR then begin

      params := TCMParams.Create();
      Params.Add('@INVOICENO',InternalInvoiceNo);

      RC := TCMReportController.Create;
      ClientNo := CustomerNo;
      RoleType := -1;

      DocTyp := cFaktura;
      Try
        RC.setExportFile(FilNamn);
        RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frFile);
      Finally
        FreeAndNil(params);
        FreeAndNil(RC);
      End;
    end
    else begin
      FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := InternalInvoiceNo;

        FormCRExportOneReport.CreateCo(CustomerNo, cFaktura, A,
          ExcelFolder + 'InvoiceNo ' + InvoiceNo);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cPkgSpec, A, ExcelFolder + 'Specification '+InvoiceNo) ;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    // ExtractFilePath(Forms.Application.ExeName) + '\'+ExportFile+'.pdf';
  End;

  SetLength(Attach, 1);

  Attach[0] := FilNamn;
  // Attach[1]:= ExcelFolder + 'Specification '+InvoiceNo+'.pdf' ;

  // Attach[0]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'InvoiceNo '+InvoiceNo+'.pdf' ;
  // Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+InvoiceNo+'.pdf' ;
  dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
  Try
    dm_SendMapiMail.SendMail('Fakturanr: ' + InvoiceNo + 'InvoiceNo: ' +
      InvoiceNo, 'Faktura bifogad. ' + LF + '' + 'Invoice attached. ' + LF + ''
      + LF + '' + LF + 'MVH/Best Regards, ' + LF + '' +
      dmsContact.GetFirstAndLastName(ThisUser.UserID),
      dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
      // 'lars.makiaho@falubo.se', //getinvoice emailaddress

      Attach, True { SubMitt? } );
  Finally
    FreeAndNil(dm_SendMapiMail);
  End;

end;

procedure TdmVidaInvoice.PkgLogInvoiced(const InternalInvoiceNo,
  Operation: Integer);
Begin
  Try
    sp_PkgLogInvoiced.ParamByName('@InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sp_PkgLogInvoiced.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_PkgLogInvoiced.ParamByName('@Operation').AsInteger := Operation;
    sp_PkgLogInvoiced.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmVidaInvoice.DEL_ExportInvoiceData;
Begin
  Try
    sp_DEL_ExportInvoiceData.ParamByName('@UserID').AsInteger :=
      ThisUser.UserID;
    sp_DEL_ExportInvoiceData.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmVidaInvoice.STORE_ExportInvoiceData(mtSelectedInvoices
  : TkbmMemTable);
Begin
  mtSelectedInvoices.First;
  while not mtSelectedInvoices.Eof do
  Begin
    Try
      sp_STORE_ExportInvoiceData.ParamByName('@IntInvoiceNo').AsInteger :=
        mtSelectedInvoices.FieldByName('InternalInvoiceNo').AsInteger;
      sp_STORE_ExportInvoiceData.ParamByName('@UserID').AsInteger :=
        ThisUser.UserID;
      sp_STORE_ExportInvoiceData.ExecProc;
      mtSelectedInvoices.Next;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;
  End;
End;

procedure TdmVidaInvoice.JusteraUSAFakturor ;
Var Save_Cursor   : TCursor ;
Begin
 Try
  Save_Cursor    := Screen.Cursor ;
  Screen.Cursor  := crHourGlass ;    { Show hourglass cursor }
    Try
    sp_JusteraUSAFakturor.ExecProc ;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Raise;
      End;
    end;
  Finally
  Screen.Cursor := Save_Cursor ;
  End ;
End;



end.
