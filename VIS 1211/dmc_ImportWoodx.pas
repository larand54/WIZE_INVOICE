unit dmc_ImportWoodx;

interface

uses
  SysUtils, Classes, FMTBcd, DB, kbmMemTable, SqlTimSt, Controls, Forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Variants, Dialogs ;

type
  Tdm_ImportWoodx = class(TDataModule)
    ds_ImpClientMap: TDataSource;
    ds_ImpProdMap: TDataSource;
    ds_ImpLenMap: TDataSource;
    dsClient: TDataSource;
    ds_Products: TDataSource;
    mtPkgStatus: TkbmMemTable;
    mtPkgStatusStatus: TIntegerField;
    mtPkgStatusMessage: TStringField;
    mtClient: TkbmMemTable;
    mtClientWoodX_ClientName: TStringField;
    mtClientPartyIdentifier: TStringField;
    mtClientVisClientNo: TIntegerField;
    mtClientVisClientName: TStringField;
    ds_mtClient: TDataSource;
    ds_ProdLength: TDataSource;
    ds_DMWH: TDataSource;
    ds_DMR: TDataSource;
    ds_PartyID: TDataSource;
    ds_NameAddress: TDataSource;
    ds_DMS: TDataSource;
    ds_DSDMR: TDataSource;
    ds_ProdID: TDataSource;
    ds_TrpPkgInfo: TDataSource;
    ds_InfoQuant: TDataSource;
    ds_LengthSpec: TDataSource;
    mtLoadProducts: TkbmMemTable;
    mtLoadProductsProductNo: TIntegerField;
    mtLoadProductsProductDisplayName: TStringField;
    sq_GetDMR: TFDQuery;
    cds_DMWH: TFDQuery;
    sq_Ins_wx_prod_trsl: TFDQuery;
    sq_SearchPkgNo: TFDQuery;
    cds_ImpLenMap: TFDQuery;
    sq_GetISOCtry: TFDQuery;
    cds_ImpProdMap: TFDQuery;
    sq_Delete: TFDQuery;
    sq_GetLONos: TFDQuery;
    cds_ImpClientMap: TFDQuery;
    cds_ImpClientMapClientName: TStringField;
    cds_ImpClientMapWoodXPartyIdentifier: TStringField;
    cds_ImpClientMapName1: TStringField;
    cds_ImpClientMapDeliveryMessageNumber: TStringField;
    cds_ImpClientMapClientNo: TIntegerField;
    cds_ImpClientMapPartyIdentifier: TStringField;
    sq_GetLONosLONo: TIntegerField;
    sq_GetLONosInternalInvoiceNo: TIntegerField;
    sq_GetLONosInvoiceNo: TIntegerField;
    cds_ImpProdMapDeliveryMessageNumber: TStringField;
    cds_ImpProdMapProductIdentifier: TStringField;
    cds_ImpProdMapIdentifier: TStringField;
    cds_ImpProdMapProductNo: TIntegerField;
    cds_ImpProdMapStyck: TFMTBCDField;
    cds_ImpProdMapClientCode: TStringField;
    cds_ImpProdMapSupplierNo: TIntegerField;
    cds_ImpProdMapPartNumber: TStringField;
    cds_ImpProdMapClientNo: TIntegerField;
    cds_ImpProdMapStatus: TIntegerField;
    cds_ImpProdMapWoodXProduct: TStringField;
    cds_ImpProdMapProduktbeskrivning: TStringField;
    sq_GetISOCtryCountryCode: TStringField;
    cds_ImpLenMapDeliveryMessageNumber: TStringField;
    cds_ImpLenMapIdentifier: TStringField;
    cds_ImpLenMapLengthCategory: TStringField;
    cds_ImpLenMapStyck: TBCDField;
    cds_ImpLenMapLngd: TFloatField;
    cds_ImpLenMapProductLengthNo: TIntegerField;
    sq_SearchPkgNoPackageNo: TIntegerField;
    sq_ClrPartyID: TFDQuery;
    sq_UpdateClient: TFDQuery;
    cds_ImpLengths: TFDQuery;
    cds_Products: TFDQuery;
    cdsClient: TFDQuery;
    sq_GetOLDesc: TFDQuery;
    sq_GetLinkedProductNo: TFDQuery;
    sq_GetLinkedProductNoProductNo: TIntegerField;
    sq_GetOLDescProductDescription: TStringField;
    cdsClientClientNo: TIntegerField;
    cdsClientClientName: TStringField;
    cdsClientClientCode: TStringField;
    cds_ProductsProductNo: TIntegerField;
    cds_ProductsProductGroupNo: TIntegerField;
    cds_ProductsGradeName: TStringField;
    cds_ProductsSpeciesName: TStringField;
    cds_ProductsSurfacingName: TStringField;
    cds_ProductsProductCategoryName: TStringField;
    cds_ProductsActualThicknessMM: TFloatField;
    cds_ProductsActualWidthMM: TFloatField;
    cds_ProductsNominalThicknessMM: TFloatField;
    cds_ProductsNominalWidthMM: TFloatField;
    cds_ProductsProductDisplayName: TStringField;
    cds_ProductsGradeNo: TIntegerField;
    cds_ProductsSpeciesNo: TIntegerField;
    cds_ProductsProductCategoryNo: TIntegerField;
    cds_ProductsSurfacingNo: TIntegerField;
    cds_ProductsNominalThicknessINCH: TStringField;
    cds_ProductsNominalWidthINCH: TStringField;
    cds_ImpLengthsDeliveryMessageNumber: TStringField;
    cds_ImpLengthsDeliveryShipmentLineItemNumber: TIntegerField;
    cds_ImpLengthsIdentifier: TStringField;
    cds_ImpLengthsLengthCategory: TStringField;
    cds_ImpLengthsTotalNumberOfUnitsValue: TBCDField;
    cds_ImpLengthsTotalNumberOfUnitsUOM: TStringField;
    sq_GetDMHW: TFDQuery;
    sq_GetPGNo: TFDQuery;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthProductLengthNo: TIntegerField;
    cds_ProdLengthActualLengthMM: TFloatField;
    cds_ProdLengthNominalLengthMM: TFloatField;
    cds_ProdLengthNominalLengthFEET: TFloatField;
    cds_ProdLengthActualLengthINCH: TStringField;
    cds_ProdLengthPET: TIntegerField;
    cds_ProdLengthFingerJoint: TIntegerField;
    cds_ProdLengthCreatedUser: TIntegerField;
    cds_ProdLengthModifiedUser: TIntegerField;
    cds_ProdLengthDateCreated: TSQLTimeStampField;
    cds_ProdLengthSequenceNo: TIntegerField;
    cds_ProdLengthProductLengthGroupNo: TIntegerField;
    cds_ProdLengthAct: TIntegerField;
    sq_GetPGNoProductNo: TIntegerField;
    sq_GetPGNoProductGroupNo: TIntegerField;
    sq_GetPGNoSurfacingNo: TIntegerField;
    sq_GetPGNoNominalThicknessMM: TFloatField;
    cds_DMR: TFDQuery;
    sq_GetPartyID: TFDQuery;
    cds_PartyID: TFDQuery;
    sq_GetAddress: TFDQuery;
    cds_NameAddress: TFDQuery;
    cds_DMS: TFDQuery;
    sq_GetDSDMR: TFDQuery;
    cds_DSDMR: TFDQuery;
    sq_GetTrp: TFDQuery;
    cds_TrpPkgInfo: TFDQuery;
    sq_GetIQ: TFDQuery;
    cds_InfoQuant: TFDQuery;
    sq_GetLS: TFDQuery;
    cds_LengthSpec: TFDQuery;
    sq_GetDMHWPriceVolume: TFMTBCDField;
    sq_GetDMHWAM3: TFMTBCDField;
    sq_GetDMHWTotalNumberOfShipments: TIntegerField;
    cds_DMWHDeliveryMessageType: TStringField;
    cds_DMWHDeliveryMessageStatusType: TStringField;
    cds_DMWHReissued: TStringField;
    cds_DMWHLanguage: TStringField;
    cds_DMWHDeliveryMessageNumber: TStringField;
    cds_DMWHDeliveryMessageDate: TSQLTimeStampField;
    cds_DMWHIncoTermsLocation: TStringField;
    cds_DMWHIncoTerms: TStringField;
    cds_DMWHAdditionalText: TStringField;
    cds_DMWHTotalNumberOfShipments: TIntegerField;
    cds_DMWHTotalQuantityQuantityType: TStringField;
    cds_DMWHTotalQuantityValue: TBCDField;
    cds_DMWHTotalQuantityUOM: TStringField;
    cds_DMWHInternalInvoiceNo: TIntegerField;
    sq_GetDMRInvoiceNo: TIntegerField;
    sq_GetDMROrderNoText: TStringField;
    sq_GetDMRLONo: TIntegerField;
    sq_GetDMRIL_Reference: TStringField;
    sq_GetDMRInternalInvoiceNo: TIntegerField;
    sq_GetDMRCSD_Reference_Detail: TStringField;
    cds_DMRDeliveryMessageNumber: TStringField;
    cds_DMRDeliveryMessageReference: TStringField;
    cds_DMRDeliveryMessageReferenceType: TStringField;
    cds_DMRInternalInvoiceNo: TIntegerField;
    sq_GetPartyIDLONo: TIntegerField;
    sq_GetPartyIDIntNo: TIntegerField;
    sq_GetPartyIDBuyerName: TStringField;
    sq_GetPartyIDBuyerAddressLine1: TStringField;
    sq_GetPartyIDBuyerAddressLine2: TStringField;
    sq_GetPartyIDBuyerAddressLine3: TStringField;
    sq_GetPartyIDBuyerAddressLine4: TStringField;
    sq_GetPartyIDBuyerStateOrProvince: TStringField;
    sq_GetPartyIDBuyerPostalCode: TStringField;
    sq_GetPartyIDBuyerCity: TStringField;
    sq_GetPartyIDBuyerCountry: TStringField;
    sq_GetPartyIDBuyerVATNo: TStringField;
    sq_GetPartyIDBuyerClientNo: TIntegerField;
    sq_GetPartyIDBuyerClientCode: TStringField;
    sq_GetPartyIDShipToName: TStringField;
    sq_GetPartyIDShipToAddressName: TStringField;
    sq_GetPartyIDShipToAddressLine1: TStringField;
    sq_GetPartyIDShipToAddressLine2: TStringField;
    sq_GetPartyIDShipToAddressLine3: TStringField;
    sq_GetPartyIDShipToAddressLine4: TStringField;
    sq_GetPartyIDShipToStateOrProvince: TStringField;
    sq_GetPartyIDShipToPostalCode: TStringField;
    sq_GetPartyIDShipToCity: TStringField;
    sq_GetPartyIDShipToCountry: TStringField;
    sq_GetPartyIDSupplierName: TStringField;
    sq_GetPartyIDSupplierAddressLine1: TStringField;
    sq_GetPartyIDSupplierAddressLine2: TStringField;
    sq_GetPartyIDSupplierAddressLine3: TStringField;
    sq_GetPartyIDSupplierAddressLine4: TStringField;
    sq_GetPartyIDSupplierStateOrProvince: TStringField;
    sq_GetPartyIDSupplierPostalCode: TStringField;
    sq_GetPartyIDSupplierCity: TStringField;
    sq_GetPartyIDSupplierCountry: TStringField;
    sq_GetPartyIDSupplierVatNo: TStringField;
    sq_GetPartyIDSupplierClientNo: TIntegerField;
    sq_GetPartyIDSupplierClientCode: TStringField;
    cds_PartyIDDeliveryMessageNumber: TStringField;
    cds_PartyIDPartyType: TStringField;
    cds_PartyIDPartyIdentifier: TStringField;
    cds_PartyIDPartyIdentifierType: TStringField;
    cds_PartyIDInternalInvoiceNo: TIntegerField;
    sq_GetAddressLONo: TIntegerField;
    sq_GetAddressIntNo: TIntegerField;
    sq_GetAddressBuyerName: TStringField;
    sq_GetAddressBuyerAddressLine1: TStringField;
    sq_GetAddressBuyerAddressLine2: TStringField;
    sq_GetAddressBuyerAddressLine3: TStringField;
    sq_GetAddressBuyerAddressLine4: TStringField;
    sq_GetAddressBuyerStateOrProvince: TStringField;
    sq_GetAddressBuyerPostalCode: TStringField;
    sq_GetAddressBuyerCity: TStringField;
    sq_GetAddressBuyerCountry: TStringField;
    sq_GetAddressBuyerVATNo: TStringField;
    sq_GetAddressBuyerClientNo: TIntegerField;
    sq_GetAddressBuyerClientCode: TStringField;
    sq_GetAddressShipToName: TStringField;
    sq_GetAddressShipToAddressName: TStringField;
    sq_GetAddressShipToAddressLine1: TStringField;
    sq_GetAddressShipToAddressLine2: TStringField;
    sq_GetAddressShipToAddressLine3: TStringField;
    sq_GetAddressShipToAddressLine4: TStringField;
    sq_GetAddressShipToStateOrProvince: TStringField;
    sq_GetAddressShipToPostalCode: TStringField;
    sq_GetAddressShipToCity: TStringField;
    sq_GetAddressShipToCountry: TStringField;
    sq_GetAddressSupplierName: TStringField;
    sq_GetAddressSupplierAddressLine1: TStringField;
    sq_GetAddressSupplierAddressLine2: TStringField;
    sq_GetAddressSupplierAddressLine3: TStringField;
    sq_GetAddressSupplierAddressLine4: TStringField;
    sq_GetAddressSupplierStateOrProvince: TStringField;
    sq_GetAddressSupplierPostalCode: TStringField;
    sq_GetAddressSupplierCity: TStringField;
    sq_GetAddressSupplierCountry: TStringField;
    sq_GetAddressSupplierVatNo: TStringField;
    sq_GetAddressSupplierClientNo: TIntegerField;
    sq_GetAddressSupplierClientCode: TStringField;
    cds_NameAddressDeliveryMessageNumber: TStringField;
    cds_NameAddressPartyType: TStringField;
    cds_NameAddressName1: TStringField;
    cds_NameAddressName2: TStringField;
    cds_NameAddressName3: TStringField;
    cds_NameAddressAddress1: TStringField;
    cds_NameAddressAddress2: TStringField;
    cds_NameAddressAddress3: TStringField;
    cds_NameAddressAddress4: TStringField;
    cds_NameAddressCity: TStringField;
    cds_NameAddressCounty: TStringField;
    cds_NameAddressStateOrProvince: TStringField;
    cds_NameAddressPostalCode: TStringField;
    cds_NameAddressCountry: TStringField;
    cds_NameAddressISOcountryCode: TStringField;
    cds_NameAddressInternalInvoiceNo: TIntegerField;
    cds_DMSDeliveryMessageNumber: TStringField;
    cds_DMSShipmentID: TStringField;
    cds_DMSShipmentIDType: TStringField;
    cds_DMSProductGroupID: TStringField;
    cds_DMSProductGroupIDType: TStringField;
    cds_DMSDeliveryShipmentLineItemNumber: TIntegerField;
    cds_DMSProductIdentifier: TStringField;
    cds_DMSProductIdentifierType: TStringField;
    cds_DMSAgency: TStringField;
    cds_DMSProductDescription: TStringField;
    cds_DMSSpeciesType: TStringField;
    cds_DMSGradingRule: TStringField;
    cds_DMSGradeCode: TStringField;
    cds_DMSGradeName: TStringField;
    cds_DMSWidthValue: TBCDField;
    cds_DMSWidthUOM: TStringField;
    cds_DMSThicknessValue: TBCDField;
    cds_DMSThicknessUOM: TStringField;
    cds_DMSManufacturingProcessType: TStringField;
    cds_DMSExlogValue: TIntegerField;
    cds_DMSExlogUOM: TStringField;
    cds_DMSProductNo: TIntegerField;
    cds_DMSInternalInvoiceNo: TIntegerField;
    sq_GetDMS: TFDQuery;
    sq_GetDMSLONo: TIntegerField;
    sq_GetDMSShipmentID: TStringField;
    sq_GetDMSShipmentIDType: TStringField;
    sq_GetDMSProductGroupID: TStringField;
    sq_GetDMSProductGroupIDType: TStringField;
    sq_GetDMSDeliveryShipmentLineItemNumber: TIntegerField;
    sq_GetDMSProductIdentifier: TIntegerField;
    sq_GetDMSProductIdentifierType: TStringField;
    sq_GetDMSAgency: TStringField;
    sq_GetDMSSpeciesType: TStringField;
    sq_GetDMSGradingRule: TStringField;
    sq_GetDMSGradeCode: TStringField;
    sq_GetDMSGradeName: TStringField;
    sq_GetDMSWidthValue: TFloatField;
    sq_GetDMSWidthUOM: TStringField;
    sq_GetDMSThicknessValue: TFloatField;
    sq_GetDMSThicknessUOM: TStringField;
    sq_GetDMSManufacturingProcessType: TStringField;
    sq_GetDMSExLogValue: TIntegerField;
    sq_GetDMSExlogUOM: TStringField;
    sq_GetDMSProductNo: TIntegerField;
    sq_GetDMSSpeciesCode: TStringField;
    sq_GetDMSSurfacingCode: TStringField;
    sq_GetDMSImpCode: TStringField;
    sq_GetDSDMRInvoiceNumber: TIntegerField;
    sq_GetDSDMRContractNumber: TStringField;
    sq_GetDSDMRLoadingOrderNumber: TIntegerField;
    sq_GetDSDMROrderLineItemNumber: TIntegerField;
    sq_GetDSDMRIL_Reference: TStringField;
    sq_GetDSDMRInternalInvoiceNo: TIntegerField;
    sq_GetDSDMRCSD_Reference_Detail: TStringField;
    cds_DSDMRDeliveryMessageNumber: TStringField;
    cds_DSDMRDeliveryShipmentLineItemNumber: TIntegerField;
    cds_DSDMRDeliveryMessageReference: TStringField;
    cds_DSDMRDeliveryMessageReferenceType: TStringField;
    cds_DSDMRInternalInvoiceNo: TIntegerField;
    cds_ProdID: TFDQuery;
    cds_ProdIDDeliveryMessageNumber: TStringField;
    cds_ProdIDDeliveryShipmentLineItemNumber: TIntegerField;
    cds_ProdIDProductIdentifier: TStringField;
    cds_ProdIDProductIdentifierType: TStringField;
    cds_ProdIDAgency: TStringField;
    cds_ProdIDInternalInvoiceNo: TIntegerField;
    sq_GetTrpDeliveryMessageNumber: TStringField;
    sq_GetTrpDeliveryShipmentLineItemNumber: TIntegerField;
    sq_GetTrpPackageType: TStringField;
    sq_GetTrpSPEC_PackageNo: TStringField;
    sq_GetTrpIdentifierCodeType: TStringField;
    sq_GetTrpIdentifierType: TStringField;
    sq_GetTrpItemCountValue: TIntegerField;
    sq_GetTrpItemCountUOM: TStringField;
    sq_GetTrpQuantityType: TStringField;
    sq_GetTrpQuantityValue: TFMTBCDField;
    sq_GetTrpQuantityUOM: TStringField;
    cds_TrpPkgInfoDeliveryMessageNumber: TStringField;
    cds_TrpPkgInfoDeliveryShipmentLineItemNumber: TIntegerField;
    cds_TrpPkgInfoPackageType: TStringField;
    cds_TrpPkgInfoIdentifier: TStringField;
    cds_TrpPkgInfoIdentifierCodeType: TStringField;
    cds_TrpPkgInfoIdentifierType: TStringField;
    cds_TrpPkgInfoItemCountValue: TBCDField;
    cds_TrpPkgInfoItemCountUOM: TStringField;
    cds_TrpPkgInfoQuantityType: TStringField;
    cds_TrpPkgInfoQuantityValue: TBCDField;
    cds_TrpPkgInfoQuantityUOM: TStringField;
    cds_TrpPkgInfoInternalInvoiceNo: TIntegerField;
    sq_GetIQDeliveryMessageNumber: TStringField;
    sq_GetIQDeliveryShipmentLineItemNumber: TIntegerField;
    sq_GetIQIdentifier: TStringField;
    sq_GetIQNM3: TFMTBCDField;
    sq_GetIQNM1: TFMTBCDField;
    sq_GetIQAM2: TFMTBCDField;
    sq_GetIQAM1: TFMTBCDField;
    sq_GetIQPIECE: TIntegerField;
    sq_GetIQAM3: TFMTBCDField;
    sq_GetIQMFBM: TFMTBCDField;
    cds_InfoQuantDeliveryMessageNumber: TStringField;
    cds_InfoQuantDeliveryShipmentLineItemNumber: TIntegerField;
    cds_InfoQuantIdentifier: TStringField;
    cds_InfoQuantInformationalQuantityType: TStringField;
    cds_InfoQuantInformationalQuantityValue: TBCDField;
    cds_InfoQuantInformationalQuantityUOM: TStringField;
    cds_InfoQuantInternalInvoiceNo: TIntegerField;
    sq_GetLSDeliveryMessageNumber: TStringField;
    sq_GetLSDeliveryShipmentLineItemNumber: TIntegerField;
    sq_GetLSIdentifier: TStringField;
    sq_GetLSLengthCategory: TStringField;
    sq_GetLSTotalNumberOfUnitsValue: TIntegerField;
    sq_GetLSTotalNumberOfUnitsUOM: TStringField;
    sq_GetLSQuantityValue: TFMTBCDField;
    sq_GetLSQuantityUOM: TStringField;
    cds_LengthSpecDeliveryMessageNumber: TStringField;
    cds_LengthSpecDeliveryShipmentLineItemNumber: TIntegerField;
    cds_LengthSpecIdentifier: TStringField;
    cds_LengthSpecLengthCategory: TStringField;
    cds_LengthSpecTotalNumberOfUnitsValue: TBCDField;
    cds_LengthSpecTotalNumberOfUnitsUOM: TStringField;
    cds_LengthSpecInternalInvoiceNo: TIntegerField;
    sq_GetTrpPaketAprefix: TStringField;
    mtVisKlient: TkbmMemTable;
    mtVisKlientClientNo: TIntegerField;
    mtVisKlientLeverantr: TStringField;
    sq_UpdPrefix: TFDQuery;
    cds_ImpClientMapDeliveryMessageDate: TSQLTimeStampField;
    cds_ImpProdMapProdukt: TStringField;
    cds_ImpProdMapLogg: TStringField;
    cds_ImpClientMapWoodXPartyIdentifierType: TStringField;
    cds_ImpClientMapPartyIdentifierType: TStringField;
    mtVisKlientPartyIdentifier: TStringField;
    mtVisKlientPartyIdentifierType: TStringField;
    cdsClientPartyIdentifier: TStringField;
    cdsClientPartyIdentifierType: TStringField;
    cds_DSDMR2: TFDQuery;
    ds_DSDMR2: TDataSource;
    cds_DSDMR2DeliveryMessageNumber: TStringField;
    cds_DSDMR2DeliveryShipmentLineItemNumber: TIntegerField;
    cds_DSDMR2DeliveryMessageReference: TStringField;
    cds_DSDMR2DeliveryMessageReferenceType: TStringField;
    sq_GetDSDMRPO_Number: TStringField;
    sq_GetDMRPO_Number: TStringField;
    sq_GetTrpIdentifierCodeType2: TStringField;
    sq_GetTrpIdentifierType2: TStringField;
    sq_GetTrpIdentifier2: TStringField;
    cds_TrpPkgInfoIdentifier2: TStringField;
    cds_TrpPkgInfoIdentifierCodeType2: TStringField;
    cds_TrpPkgInfoIdentifierType2: TStringField;
    cds_TrpPkgInfoIdentifierFormatType2: TStringField;
    sq_GetTrpIdentifierFormatType2: TStringField;
    cds_DMWHYear: TIntegerField;
    cds_DMWHMonth: TIntegerField;
    cds_DMWHDay: TIntegerField;
    cds_DMWHPO_Number: TStringField;
    sq_GetDMHWOrderCreated: TSQLTimeStampField;
    sq_GetDMHWPO_Number: TStringField;
    sp_Ins_InvoicePkgSpecWoodX: TFDStoredProc;
    procedure dsp_ImpClientMapGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dsp_ImpProdMapGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure mtClientAfterInsert(DataSet: TDataSet);
    procedure mtVisKlientClientNoChange(Sender: TField);
  private
    { Private declarations }
    procedure ExportDeliveryMessageReference(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
    procedure ExportPartyID(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
    procedure ExportNameAddress(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
    procedure ExportDMS(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
    procedure ExportDSDMR(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber : Integer) ;
    procedure ExportProductID(const ShippingPlanNo, InternalInvoiceNo : Integer;const ProductIdentifier : String;const DeliveryShipmentLineItemNumber : Integer) ;
    procedure ExportTrpPkgInfo(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber, ProductNo : Integer) ;
    procedure ExportLengthSpec(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber : Integer;const Identifier : String) ;
    procedure ExportInformationalQuantity(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber : Integer;const Identifier : String) ;

    Function  GetProductIdentifier(const AT, AB : Double; Const SpeciesCode, SurfacingCode, ImpCode, GradeCode : String) : String ;
    Function  GetISOCountryCode(const Country : String) : String ;
  public
    { Public declarations }
//    LevKod : String ;
    OrderSupplierNo : Integer ;
    ImportedLoadOK  : Boolean ;
    procedure Ins_InvoicePkgSpecWoodX (const InternalInvoiceNo, LONo : Integer) ;
    Function  IsClientConnectionValid : Boolean ;
    procedure EditClient(const PartyIdentifier, PartyIdentifierType : String) ;
    procedure OpenCurrentSupplier ;
    procedure UppdateraPrefixInitially(const DeliveryMessageNumber, Prefix : String) ;
    procedure UppdateraPrefix(const DeliveryMessageNumber : String) ;
    procedure GetProductNos ;
    Function  GetProductGroupNo (const ProductNo : Integer) : Integer ;
    Function  GetSurfacingNo (const ProductNo : Integer) : Integer ;
    Function  GetNOM_THICK (const ProductNo : Integer) : Double ;
    procedure ExportDeliveryWoodMessage(const InternalInvoiceNo : Integer) ;
    procedure SaveTo_Ins_wx_prod_trsl (const SalesRegionNo : Integer) ;
    procedure ValidateProducts  ;
    function  ValidateLengths : Boolean  ;
    function  IsPkgsValid : Boolean  ;
    procedure UpdateClient (const ClientNo : Integer; const PartyIdentifier, PartyIdentifierType : String) ;
    //procedure AdjustLengths(const ShippingPlanNo : Integer) ;
    procedure AdjustLengths(const DeliveryMessageNumber : String) ;
    function  AllPkgsValid : Boolean ;
  end;

var
  dm_ImportWoodx: Tdm_ImportWoodx;
//  DeliveryMessageNumber : String ;

implementation

uses dmsDataConn, recerror , dmsVidaProduct, dmsVidaSystem, dmsVidaContact, VidaUser ;

{$R *.dfm}

procedure Tdm_ImportWoodx.dsp_ImpClientMapGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
// TableName:= 'Client' ;
end;

procedure Tdm_ImportWoodx.dsp_ImpProdMapGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName:= 'wx_prod_trsl' ;
end;


procedure Tdm_ImportWoodx.SaveTo_Ins_wx_prod_trsl(const SalesRegionNo : Integer) ;
Begin
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  if (cds_ImpProdMap.UpdateStatus in [usModified, usInserted]) and (cds_ImpProdMapProductNo.AsInteger > 0) then
  Begin
   Try
   sq_Ins_wx_prod_trsl.ParamByName('SupplierNo').AsInteger    := cds_ImpProdMapClientNo.AsInteger ;
   sq_Ins_wx_prod_trsl.ParamByName('ProductNo').AsInteger     := cds_ImpProdMapProductNo.AsInteger ;
   sq_Ins_wx_prod_trsl.ParamByName('PartNumber').AsString     := cds_ImpProdMapProductIdentifier.AsString ;
   sq_Ins_wx_prod_trsl.ParamByName('SalesRegionNo').AsInteger := SalesRegionNo ;
   sq_Ins_wx_prod_trsl.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  End ;
  cds_ImpProdMap.Next ;
 End ;
End ;

function Tdm_ImportWoodx.IsPkgsValid : Boolean  ;
Begin
 Result:= True ;
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  if (cds_ImpProdMapStatus.AsInteger <> 0) then
   Result:= False ;
  cds_ImpProdMap.Next ;
 End ;
End ;

function Tdm_ImportWoodx.ValidateLengths : Boolean  ;
Begin
 Result:= True ;
 cds_ImpLenMap.First ;
 While not cds_ImpLenMap.Eof do
 Begin
  if cds_ImpLenMapProductLengthNo.AsInteger < 1 then
   Result:= False ;
  cds_ImpLenMap.Next ;
 End ;
End ;

procedure Tdm_ImportWoodx.GetProductNos ;

function GetLinkedProductNo : Integer ;
Begin
 Try
 sq_GetLinkedProductNo.Close ;
 sq_GetLinkedProductNo.ParamByName('SupplierNo').AsInteger  := cds_ImpClientMapClientNo.AsInteger ;//cds_ImpProdMapSupplierNo.AsInteger ;
 sq_GetLinkedProductNo.ParamByName('PartNumber').AsString   := cds_ImpProdMapProductIdentifier.AsString ;
 sq_GetLinkedProductNo.Open ;
 if not sq_GetLinkedProductNo.Eof then
  Result:= sq_GetLinkedProductNoProductNo.AsInteger
   else
    Result:= -1 ;
 Finally
 sq_GetLinkedProductNo.Close ;
 End ;
End ;

//Main
Begin
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  cds_ImpProdMap.Edit ;
  cds_ImpProdMapProductNo.AsInteger:= GetLinkedProductNo ;
  cds_ImpProdMap.Post ;

  cds_ImpProdMap.Next ;
 End ;
End ;

(*procedure Tdm_ImportWoodx.ValidateProducts ;
Begin
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  if Length(LevKod) > 0 then
  Begin
   cds_ImpProdMap.Edit ;
   cds_ImpProdMapClientCode.AsString:= LevKod ;                                     2
   cds_ImpProdMap.Post ;
  End ;


  if (cds_ImpProdMapProductNo.AsInteger < 1) then
  Begin
   cds_ImpProdMap.Edit ;
   cds_ImpProdMapStatus.AsInteger := 2 ;
   cds_ImpProdMap.Post ;
  End
  else
  Begin
   sq_SearchPkgNo.ParamByName('PackageNo').AsInteger   := cds_ImpProdMapIdentifier.AsInteger ;
   sq_SearchPkgNo.ParamByName('SupplierCode').AsString := cds_ImpProdMapClientCode.AsString ;
   sq_SearchPkgNo.Open ;

   if not sq_SearchPkgNo.Eof then
   Begin
    cds_ImpProdMap.Edit ;
    cds_ImpProdMapStatus.AsInteger := 1 ;
    cds_ImpProdMap.Post ;
   End
   else
    Begin
     cds_ImpProdMap.Edit ;
     cds_ImpProdMapStatus.AsInteger := 0 ;
     cds_ImpProdMap.Post ;
    End ;
   sq_SearchPkgNo.Close ;
  End ;

  cds_ImpProdMap.Next ;
 End ;
End ;*)

procedure Tdm_ImportWoodx.ValidateProducts ;
Begin
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  if Length(Trim(cds_ImpProdMapClientCode.AsString)) = 0 then
  Begin
   cds_ImpProdMap.Edit ;
   cds_ImpProdMapStatus.AsInteger := 3 ;
   cds_ImpProdMap.Post ;
  End
  else
  if (cds_ImpProdMapProductNo.AsInteger < 1) then
  Begin
   cds_ImpProdMap.Edit ;
   cds_ImpProdMapStatus.AsInteger := 2 ;
   cds_ImpProdMap.Post ;
  End
  else
  Begin
   sq_SearchPkgNo.Close ;
   sq_SearchPkgNo.ParamByName('PackageNo').AsInteger   := cds_ImpProdMapIdentifier.AsInteger ;
   sq_SearchPkgNo.ParamByName('SupplierCode').AsString := cds_ImpProdMapClientCode.AsString ;
   sq_SearchPkgNo.Open ;

   if not sq_SearchPkgNo.Eof then
   Begin
    cds_ImpProdMap.Edit ;
    cds_ImpProdMapStatus.AsInteger := 1 ;
    cds_ImpProdMap.Post ;
   End ;
   sq_SearchPkgNo.Close ;
  End ;

  cds_ImpProdMap.Next ;
 End ;
End ;

procedure Tdm_ImportWoodx.DataModuleCreate(Sender: TObject);
begin
 mtPkgStatus.Active:= False ;
 mtPkgStatus.Active:= True ;
 mtPkgStatus.InsertRecord([-1,'__']); 
 mtPkgStatus.InsertRecord([0,'OK']);
 mtPkgStatus.InsertRecord([1,'Paketnr finns redan inlagd']);
 mtPkgStatus.InsertRecord([2,'Produkt koppling saknas']);
 mtPkgStatus.InsertRecord([3,'Prefix saknas']);

 cds_ProdLength.Active:= True ;
end;

procedure Tdm_ImportWoodx.mtClientAfterInsert(DataSet: TDataSet);
begin
 mtClientWoodX_ClientName.AsString:= cds_ImpClientMapName1.AsString ;
 mtClientPartyIdentifier.AsString := cds_ImpClientMapWoodXPartyIdentifier.AsString ;
 if cds_ImpClientMapClientNo.AsInteger > 0 then
  mtClientVisClientNo.AsInteger    := cds_ImpClientMapClientNo.AsInteger
   else
    mtClientVisClientNo.AsInteger    := dmsProduct.SupplierNo ;
end;

procedure Tdm_ImportWoodx.UpdateClient (const ClientNo : Integer; const PartyIdentifier, PartyIdentifierType : String) ;
Begin
 Try
 sq_ClrPartyID.ParamByName('PartyIdentifier').AsString  := PartyIdentifier ;
 sq_ClrPartyID.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Try
 sq_UpdateClient.ParamByName('ClientNo').AsInteger            := ClientNo ;
 sq_UpdateClient.ParamByName('PartyIdentifier').AsString      := PartyIdentifier ;
 sq_UpdateClient.ParamByName('PartyIdentifierType').AsString  := PartyIdentifierType ;
 sq_UpdateClient.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

//Modifierar woodx längder som inte är mm till mm
(*procedure Tdm_ImportWoodx.AdjustLengths(const ShippingPlanNo : Integer) ;
Var Tecken      : Integer ;
    RealLength  : Double ;
Begin
 cds_ImpLengths.Active:= False ;
 cds_ImpLengths.ParamByName('DeliveryMessageNumber').AsString:= inttostr(ShippingPlanNo) ;
 cds_ImpLengths.Active:= True ;
 cds_ImpLengths.First ;
 While not cds_ImpLengths.Eof do
 Begin
  RealLength  := StrToFloatDef(cds_ImpLengthsLengthCategory.AsString,0) ;
  Tecken      := Length(Trim(cds_ImpLengthsLengthCategory.AsString)) ;
  if Tecken = 2 then
   Begin
    cds_ImpLengths.Edit ;
    cds_ImpLengthsLengthCategory.AsString:= FloatToStr(RealLength * 100) ;
   End
    else
     if Tecken = 3 then
     Begin
      cds_ImpLengths.Edit ;
      cds_ImpLengthsLengthCategory.AsString:= FloatToStr(RealLength * 10) ;
     End ;

  if cds_ImpLengths.State in [dsEdit] then
  cds_ImpLengths.Post
  else
  cds_ImpLengths.Next ;
 End ;
 if cds_ImpLengths.ChangeCount > 0 then
 Begin
  cds_ImpLengths.ApplyUpdates(0) ;
  cds_ImpLengths.CommitUpdates ;
 End ;
End ; *)

procedure Tdm_ImportWoodx.AdjustLengths(const DeliveryMessageNumber : String) ;
Var Tecken      : Integer ;
    RealLength  : Double ;
Begin
 cds_ImpLengths.Active:= False ;
 cds_ImpLengths.ParamByName('DeliveryMessageNumber').AsString:= DeliveryMessageNumber ;
 cds_ImpLengths.Active:= True ;
 cds_ImpLengths.First ;
 While not cds_ImpLengths.Eof do
 Begin
  RealLength  := StrToFloatDef(cds_ImpLengthsLengthCategory.AsString,0) ;
  Tecken      := Length(Trim(cds_ImpLengthsLengthCategory.AsString)) ;
  if Tecken = 2 then
   Begin
    cds_ImpLengths.Edit ;
    cds_ImpLengthsLengthCategory.AsString:= FloatToStr(RealLength * 100) ;
   End
    else
     if Tecken = 3 then
     Begin
      cds_ImpLengths.Edit ;
      cds_ImpLengthsLengthCategory.AsString:= FloatToStr(RealLength * 10) ;
     End ;

  if cds_ImpLengths.State in [dsEdit] then
  cds_ImpLengths.Post
  else
  cds_ImpLengths.Next ;
 End ;
 if cds_ImpLengths.ChangeCount > 0 then
 Begin
  cds_ImpLengths.ApplyUpdates(0) ;
  cds_ImpLengths.CommitUpdates ;
 End ;
End ;

procedure Tdm_ImportWoodx.ExportDeliveryWoodMessage(const InternalInvoiceNo : Integer) ;
Var
 Save_Cursor  : TCursor;
 Year, Month, Day : word ;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
   sq_GetLONos.Close ;
   sq_GetLONos.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
   sq_GetLONos.Open ;
   While not sq_GetLONos.Eof do
   Begin
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      Try
      sq_Delete.ParamByName('DeliveryMessageNumber').AsString  := inttostr(sq_GetLONosLONo.AsInteger) ;
      sq_Delete.ParamByName('InternalInvoiceNo').AsString      := inttostr(InternalInvoiceNo) ;
      sq_Delete.ExecSQL ;
      except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
      //      ShowMessage(E.Message);
       Raise ;
      End ;
      end;

     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     sq_GetDMHW.Close ;
     sq_GetDMHW.ParamByName('ShippingPlanNo').AsInteger     := sq_GetLONosLONo.AsInteger ;
     sq_GetDMHW.ParamByName('InternalInvoiceNo').AsInteger  := InternalInvoiceNo ;
     sq_GetDMHW.Open ;
     if not sq_GetDMHW.Eof then
     Begin
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      cds_DMWH.Active:= True ;
      Try
      cds_DMWH.Insert ;
      cds_DMWHDeliveryMessageType.AsString           := 'PackingSpecification' ;
      cds_DMWHDeliveryMessageStatusType.AsString     := 'Original' ;
      cds_DMWHDeliveryMessageNumber.AsString         := sq_GetLONosLONo.AsString ; //Key
      cds_DMWHInternalInvoiceNo.AsInteger            := InternalInvoiceNo ; //Key
      cds_DMWHReissued.AsString                      := '' ;
      cds_DMWHLanguage.AsString                      := '' ;
      cds_DMWHDeliveryMessageDate.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;

      cds_DMWHIncoTermsLocation.AsString             := '' ;
      cds_DMWHIncoTerms.AsString                     := '' ;
      cds_DMWHAdditionalText.AsString                := '' ;

      cds_DMWHTotalNumberOfShipments.AsInteger       := sq_GetDMHWTotalNumberOfShipments.AsInteger ;
      cds_DMWHTotalQuantityQuantityType.AsString     := 'Volume' ;
      cds_DMWHTotalQuantityValue.AsFloat             := sq_GetDMHWAM3.AsFloat ;//AM3 instead of price volume? sq_GetDMHWPriceVolume.AsFloat ;
      cds_DMWHTotalQuantityUOM.AsString              := 'CubicMeter' ;


      DecodeDate(SQLTimeStampToDateTime(sq_GetDMHWOrderCreated.AsSQLTimeStamp), Year, Month, Day);

      cds_DMWHYear.AsInteger                          := Year ;
      cds_DMWHMonth.AsInteger                         := Month ;
      cds_DMWHDay.AsInteger                           := Day ;

      cds_DMWHPO_Number.AsString                      := sq_GetDMHWPO_Number.AsString ;

      cds_DMWH.Post ;

      Except
      End ;
      if cds_DMWH.ChangeCount > 0 then
      Begin
       cds_DMWH.ApplyUpdates(0) ;
       cds_DMWH.CommitUpdates ;
      End ;

      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      ExportDeliveryMessageReference(InternalInvoiceNo, sq_GetLONosLONo.AsInteger) ;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      ExportPartyID(InternalInvoiceNo, sq_GetLONosLONo.AsInteger) ;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      ExportNameAddress(InternalInvoiceNo, sq_GetLONosLONo.AsInteger) ;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      ExportDMS(InternalInvoiceNo, sq_GetLONosLONo.AsInteger) ;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     End ;
     sq_GetDMHW.Close ;
    sq_GetLONos.Next ;
   End ;//sq_GetLONosLONo.
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure Tdm_ImportWoodx.ExportDeliveryMessageReference(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
Begin
 sq_GetDMR.Close ;
 sq_GetDMR.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sq_GetDMR.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo ;
 sq_GetDMR.Open ;
 if not sq_GetDMR.Eof then
 Begin
  cds_DMR.Active:= True ;
  cds_DMR.Insert ;
  cds_DMRDeliveryMessageNumber.AsString         := IntToStr(ShippingPlanNo) ;
  cds_DMRDeliveryMessageReference.AsString      := sq_GetDMRInvoiceNo.AsString ;
  cds_DMRDeliveryMessageReferenceType.AsString  := 'InvoiceNumber' ;
  cds_DMRInternalInvoiceNo.AsInteger            := InternalInvoiceNo ;
  cds_DMR.Post ;

  cds_DMR.Insert ;
  cds_DMRDeliveryMessageNumber.AsString         := inttostr(ShippingPlanNo) ;
  cds_DMRDeliveryMessageReference.AsString      := sq_GetDMROrderNoText.AsString ;
  cds_DMRDeliveryMessageReferenceType.AsString  := 'OrderNumber' ;
  cds_DMRInternalInvoiceNo.AsInteger            := InternalInvoiceNo ;
  cds_DMR.Post ;

  cds_DMR.Insert ;
  cds_DMRDeliveryMessageNumber.AsString         := inttostr(ShippingPlanNo) ;
  cds_DMRDeliveryMessageReference.AsString      := sq_GetDMRLONo.AsString ;
  cds_DMRDeliveryMessageReferenceType.AsString  := 'LoadingOrderNumber' ;
  cds_DMRInternalInvoiceNo.AsInteger            := InternalInvoiceNo ;
  cds_DMR.Post ;


  if Length(Trim(sq_GetDMRIL_Reference.AsString)) > 0 then
  Begin
   cds_DMR.Insert ;
   cds_DMRDeliveryMessageNumber.AsString         := inttostr(ShippingPlanNo) ;
   cds_DMRDeliveryMessageReference.AsString      := sq_GetDMRIL_Reference.AsString ;
   cds_DMRDeliveryMessageReferenceType.AsString  := 'ReferenceNumber' ;
   cds_DMRInternalInvoiceNo.AsInteger            := InternalInvoiceNo ;
   cds_DMR.Post ;
  End ;

  if Length(Trim(sq_GetDMRPO_Number.AsString)) > 0 then
  Begin
   cds_DMR.Insert ;
   cds_DMRDeliveryMessageNumber.AsString         := inttostr(ShippingPlanNo) ;
   cds_DMRDeliveryMessageReference.AsString      := sq_GetDMRPO_Number.AsString ;
   cds_DMRDeliveryMessageReferenceType.AsString  := 'PurchaseOrderNumber' ;
   cds_DMRInternalInvoiceNo.AsInteger            := InternalInvoiceNo ;
   cds_DMR.Post ;
  End ;
  if cds_DMR.ChangeCount > 0 then
  Begin
   cds_DMR.ApplyUpdates(0) ;
   cds_DMR.CommitUpdates ;
  End ;
 End ;//if not sq_GetDMR.Eof then
 sq_GetDMHW.Close ;
End ;

procedure Tdm_ImportWoodx.ExportPartyID(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
Begin
 sq_GetPartyID.Close ;
 sq_GetPartyID.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sq_GetPartyID.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo ;
 sq_GetPartyID.Open ;
 if not sq_GetPartyID.Eof then
 Begin
 //Buyer party identifiers
  cds_PartyID.Active:= True ;
  cds_PartyID.Insert ;
  cds_PartyIDInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
  cds_PartyIDDeliveryMessageNumber.AsString := inttostr(ShippingPlanNo)  ;
  cds_PartyIDPartyType.AsString             := 'Buyer' ;
  cds_PartyIDPartyIdentifier.AsString       := sq_GetPartyIDBuyerClientNo.AsString ;
  cds_PartyIDPartyIdentifierType.AsString   := 'AssignedBySeller' ;
  cds_PartyID.Post ;

  if Length(Trim(sq_GetPartyIDBuyerVATNo.AsString)) > 0 then
  Begin
   cds_PartyID.Insert ;
   cds_PartyIDInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
   cds_PartyIDDeliveryMessageNumber.AsString := inttostr(ShippingPlanNo) ;
   cds_PartyIDPartyType.AsString             := 'Buyer' ;
   cds_PartyIDPartyIdentifier.AsString       := sq_GetPartyIDBuyerVATNo.AsString ;
   cds_PartyIDPartyIdentifierType.AsString   := 'VATIdentificationNumber' ;
   cds_PartyID.Post ;
  End ;

 //ShipTo party identifiers
  cds_PartyID.Active:= True ;
  cds_PartyID.Insert ;
  cds_PartyIDInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
  cds_PartyIDDeliveryMessageNumber.AsString := inttostr(ShippingPlanNo) ;
  cds_PartyIDPartyType.AsString             := 'ShipTo' ;
  cds_PartyIDPartyIdentifier.AsString       := sq_GetPartyIDBuyerClientNo.AsString ;
  cds_PartyIDPartyIdentifierType.AsString   := 'AssignedBySeller' ;
  cds_PartyID.Post ;

  if Length(Trim(sq_GetPartyIDBuyerVATNo.AsString)) > 0 then
  Begin
   cds_PartyID.Insert ;
   cds_PartyIDInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
   cds_PartyIDDeliveryMessageNumber.AsString := inttostr(ShippingPlanNo) ;
   cds_PartyIDPartyType.AsString             := 'ShipTo' ;
   cds_PartyIDPartyIdentifier.AsString       := sq_GetPartyIDBuyerVATNo.AsString ;
   cds_PartyIDPartyIdentifierType.AsString   := 'VATIdentificationNumber' ;
   cds_PartyID.Post ;
  End ;

 //Supplier party identifiers
  cds_PartyID.Active:= True ;
  cds_PartyID.Insert ;
  cds_PartyIDInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
  cds_PartyIDDeliveryMessageNumber.AsString := inttostr(ShippingPlanNo) ;
  cds_PartyIDPartyType.AsString             := 'Supplier' ;
  cds_PartyIDPartyIdentifier.AsString       := sq_GetPartyIDSupplierClientNo.AsString ;
  cds_PartyIDPartyIdentifierType.AsString   := 'AssignedBySeller' ;
  cds_PartyID.Post ;

  if Length(Trim(sq_GetPartyIDSupplierVatNo.AsString)) > 0 then
  Begin
   cds_PartyID.Insert ;
   cds_PartyIDInternalInvoiceNo.AsInteger    := InternalInvoiceNo ;
   cds_PartyIDDeliveryMessageNumber.AsString := inttostr(ShippingPlanNo) ;
   cds_PartyIDPartyType.AsString             := 'Supplier' ;
   cds_PartyIDPartyIdentifier.AsString       := sq_GetPartyIDSupplierVatNo.AsString ;
   cds_PartyIDPartyIdentifierType.AsString   := 'VATIdentificationNumber' ;
   cds_PartyID.Post ;
  End ;
   if cds_PartyID.ChangeCount > 0 then
   Begin
    cds_PartyID.ApplyUpdates(0) ;
    cds_PartyID.CommitUpdates ;
   End ;
 End ;//if not sq_GetPartyID.Eof then
End ;

procedure Tdm_ImportWoodx.ExportNameAddress(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
Begin
 sq_GetAddress.Close ;
 sq_GetAddress.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sq_GetAddress.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo ;
 sq_GetAddress.Open ;

 cds_NameAddress.Active:= True ;
 //Buyer
 cds_NameAddress.Insert ;
 cds_NameAddressDeliveryMessageNumber.AsString    := inttostr(ShippingPlanNo) ;
 cds_NameAddressInternalInvoiceNo.AsInteger       := InternalInvoiceNo ;
 cds_NameAddressPartyType.AsString                := 'Buyer' ;
 cds_NameAddressName1.AsString                    := sq_GetAddressBuyerName.AsString ;
 cds_NameAddressName2.AsString                    := '' ;
 cds_NameAddressName3.AsString                    := '' ;
 cds_NameAddressAddress1.AsString                 := sq_GetAddressBuyerAddressLine1.AsString ;
 cds_NameAddressAddress2.AsString                 := sq_GetAddressBuyerAddressLine2.AsString ;
 cds_NameAddressAddress3.AsString                 := sq_GetAddressBuyerAddressLine3.AsString ;
 cds_NameAddressAddress4.AsString                 := sq_GetAddressBuyerAddressLine4.AsString ;
 cds_NameAddressCity.AsString                     := sq_GetAddressBuyerCity.AsString ;
 cds_NameAddressCounty.AsString                   := sq_GetAddressBuyerCountry.AsString ;
 cds_NameAddressStateOrProvince.AsString          := '' ;
 cds_NameAddressPostalCode.AsString               := sq_GetAddressBuyerPostalCode.AsString ;
 cds_NameAddressCountry.AsString                  := sq_GetAddressBuyerCountry.AsString ;
 cds_NameAddressISOcountryCode.AsString           := GetISOCountryCode(cds_NameAddressCountry.AsString) ;
 cds_NameAddress.Post ;


 //ShipTo
 cds_NameAddress.Insert ;
 cds_NameAddressDeliveryMessageNumber.AsString    := inttostr(ShippingPlanNo) ;
 cds_NameAddressInternalInvoiceNo.AsInteger       := InternalInvoiceNo ;
 cds_NameAddressPartyType.AsString                := 'ShipTo' ;
 cds_NameAddressName1.AsString                    := sq_GetAddressShipToName.AsString ;
// cds_NameAddressName2.AsString                    := '' ;
// cds_NameAddressName3.AsString                    := '' ;
 cds_NameAddressAddress1.AsString                 := sq_GetAddressShipToAddressLine1.AsString ;
 cds_NameAddressAddress2.AsString                 := sq_GetAddressShipToAddressLine2.AsString ;
 cds_NameAddressAddress3.AsString                 := sq_GetAddressShipToAddressLine3.AsString ;
 cds_NameAddressAddress4.AsString                 := sq_GetAddressShipToAddressLine4.AsString ;
 cds_NameAddressCity.AsString                     := sq_GetAddressShipToCity.AsString ;
 cds_NameAddressCounty.AsString                   := sq_GetAddressShipToCountry.AsString ;
// cds_NameAddressStateOrProvince.AsString          := '' ;
 cds_NameAddressPostalCode.AsString               := sq_GetAddressShipToPostalCode.AsString ;
 cds_NameAddressCountry.AsString                  := sq_GetAddressShipToCountry.AsString ;
 cds_NameAddressISOcountryCode.AsString           := GetISOCountryCode(cds_NameAddressCountry.AsString) ;
 cds_NameAddress.Post ;

 //Supplier
 cds_NameAddress.Insert ;
 cds_NameAddressDeliveryMessageNumber.AsString    := inttostr(ShippingPlanNo) ;
 cds_NameAddressInternalInvoiceNo.AsInteger       := InternalInvoiceNo ;
 cds_NameAddressPartyType.AsString                := 'Supplier' ;
 cds_NameAddressName1.AsString                    := sq_GetAddressSupplierName.AsString ;
// cds_NameAddressName2.AsString                    := '' ;
// cds_NameAddressName3.AsString                    := '' ;
 cds_NameAddressAddress1.AsString                 := sq_GetAddressSupplierAddressLine1.AsString ;
 cds_NameAddressAddress2.AsString                 := sq_GetAddressSupplierAddressLine2.AsString ;
 cds_NameAddressAddress3.AsString                 := sq_GetAddressSupplierAddressLine3.AsString ;
 cds_NameAddressAddress4.AsString                 := sq_GetAddressSupplierAddressLine4.AsString ;
 cds_NameAddressCity.AsString                     := sq_GetAddressSupplierCity.AsString ;
 cds_NameAddressCounty.AsString                   := sq_GetAddressSupplierCountry.AsString ;
// cds_NameAddressStateOrProvince.AsString          := '' ;
 cds_NameAddressPostalCode.AsString               := sq_GetAddressSupplierPostalCode.AsString ;
 cds_NameAddressCountry.AsString                  := sq_GetAddressSupplierCountry.AsString ;
 cds_NameAddressISOcountryCode.AsString           := GetISOCountryCode(cds_NameAddressCountry.AsString) ;
 cds_NameAddress.Post ;

 if cds_NameAddress.ChangeCount > 0 then
 Begin
  cds_NameAddress.ApplyUpdates(0) ;
  cds_NameAddress.CommitUpdates ;
 End ;
End ;

procedure Tdm_ImportWoodx.ExportDMS(const InternalInvoiceNo, ShippingPlanNo : Integer) ;
Var DeliveryShipmentLineItemNumber, x : Integer ;
    ProductIdentifier                 : String ;
Begin
 DeliveryShipmentLineItemNumber:= 1 ;
 cds_InfoQuant.Active   := True ;
 cds_LengthSpec.Active  := True ;
 cds_TrpPkgInfo.Active  := True ;
 cds_ProdID.Active      := True ;
 cds_DSDMR.Active       := True ;
 cds_DMS.Active         := True ;
 sq_GetDMS.Active       := False ;
 sq_GetDMS.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sq_GetDMS.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo ;
 sq_GetDMS.Active       := True ;
 sq_GetDMS.First ;
 While not sq_GetDMS.Eof do
 Begin
  cds_DMS.Insert ;
  For x := 0 to 20 do //cds_DMS.Fields.Count - 1 do
   cds_DMS.Fields.Fields[x].AsVariant:= sq_GetDMS.Fields.Fields[x].AsVariant ;

  sq_GetOLDesc.Close ;
  sq_GetOLDesc.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
  sq_GetOLDesc.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo ;
  sq_GetOLDesc.ParamByName('ProductNo').AsInteger         := cds_DMSProductNo.AsInteger ;
  sq_GetOLDesc.Open ;
  cds_DMSProductDescription.AsString:=   sq_GetOLDescProductDescription.AsString ;

  cds_DMSDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
  cds_DMSInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;
  cds_DMSDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
  ProductIdentifier                               := GetProductIdentifier(sq_GetDMSThicknessValue.AsFloat,
  sq_GetDMSWidthValue.AsFloat,
  sq_GetDMSSpeciesCode.AsString,
  sq_GetDMSSurfacingCode.AsString,
  sq_GetDMSImpCode.AsString,
  sq_GetDMSGradeCode.AsString) ;
  cds_DMSProductIdentifier.AsString               := ProductIdentifier ;
  cds_DMSProductNo.AsInteger                      := sq_GetDMSProductNo.AsInteger ;
  cds_DMS.Post ;
  if cds_DMS.ChangeCount > 0 then
  Begin
   cds_DMS.ApplyUpdates(0) ;
   cds_DMS.CommitUpdates ;
  End ;
  //Add DSDMR (references) for each Row
  ExportDSDMR(sq_GetDMSLONo.AsInteger, InternalInvoiceNo, DeliveryShipmentLineItemNumber) ;
  //Add ProductIdentifiers
  ExportProductID(sq_GetDMSLONo.AsInteger, InternalInvoiceNo, ProductIdentifier , DeliveryShipmentLineItemNumber) ;
  //Add Transport packages
  ExportTrpPkgInfo(sq_GetDMSLONo.AsInteger, InternalInvoiceNo, DeliveryShipmentLineItemNumber, sq_GetDMSProductNo.AsInteger) ;

  //Increase line item number
  DeliveryShipmentLineItemNumber:= Succ(DeliveryShipmentLineItemNumber) ;
  sq_GetDMS.Next ;
  sq_GetOLDesc.Close ;
 End ;
End ;

procedure Tdm_ImportWoodx.ExportDSDMR(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber : Integer) ;
Var x : Integer ;
Begin
 sq_GetDSDMR.Close ;
 sq_GetDSDMR.ParamByName('InternalInvoiceNo').AsInteger     := InternalInvoiceNo ;
 sq_GetDSDMR.ParamByName('LONo').AsInteger                  := ShippingPlanNo ;
 sq_GetDSDMR.Open ;
 if not sq_GetDSDMR.Eof then
 Begin
  cds_DSDMR.Insert ;
  cds_DSDMRDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
  cds_DSDMRDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
  cds_DSDMRDeliveryMessageReference.AsString        := sq_GetDSDMRContractNumber.AsString ;
  cds_DSDMRDeliveryMessageReferenceType.AsString    := 'ContractNumber' ;
  cds_DSDMRInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;
  cds_DSDMR.Post ;

  cds_DSDMR.Insert ;
  cds_DSDMRDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
  cds_DSDMRDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
  cds_DSDMRDeliveryMessageReference.AsString        := sq_GetDSDMRLoadingOrderNumber.AsString ;
  cds_DSDMRDeliveryMessageReferenceType.AsString    := 'LoadingOrderNumber' ;
  cds_DSDMRInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;
  cds_DSDMR.Post ;

  cds_DSDMR.Insert ;
  cds_DSDMRDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
  cds_DSDMRDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
  cds_DSDMRDeliveryMessageReference.AsString        := sq_GetDSDMRInvoiceNumber.AsString ;
  cds_DSDMRDeliveryMessageReferenceType.AsString    := 'InvoiceNumber' ;
  cds_DSDMRInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;
  cds_DSDMR.Post ;

  cds_DSDMR.Insert ;
  cds_DSDMRDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
  cds_DSDMRDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
  cds_DSDMRDeliveryMessageReference.AsString        := sq_GetDSDMROrderLineItemNumber.AsString ;
  cds_DSDMRDeliveryMessageReferenceType.AsString    := 'OrderLineItemNumber' ;
  cds_DSDMRInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;  
  cds_DSDMR.Post ;

{  cds_DSDMR.Insert ;
  cds_DSDMRDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
  cds_DSDMRDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
  cds_DSDMRDeliveryMessageReference.AsString        := sq_GetDSDMRPO_Number.AsString ;
  cds_DSDMRDeliveryMessageReferenceType.AsString    := 'PurchaseOrderNumber' ;
  cds_DSDMRInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;
  cds_DSDMR.Post ; }

 End ;
 if cds_DSDMR.ChangeCount > 0 then
 Begin
  cds_DSDMR.ApplyUpdates(0) ;
  cds_DSDMR.CommitUpdates ;
 End ;
 sq_GetDSDMR.Close ;
End ;

procedure Tdm_ImportWoodx.ExportProductID(const ShippingPlanNo, InternalInvoiceNo : Integer;const ProductIdentifier : String;const DeliveryShipmentLineItemNumber : Integer) ;
Begin
 cds_ProdID.Insert ;
 cds_ProdIDDeliveryMessageNumber.AsString           := inttostr(ShippingPlanNo) ;
 cds_ProdIDDeliveryShipmentLineItemNumber.AsInteger := DeliveryShipmentLineItemNumber ;
 cds_ProdIDProductIdentifier.AsString               := ProductIdentifier ;
 cds_ProdIDProductIdentifierType.AsString           := 'PartNumber' ;
 cds_ProdIDAgency.AsString                          := 'Supplier' ;
 cds_ProdIDInternalInvoiceNo.AsInteger              := InternalInvoiceNo ;
 cds_ProdID.Post ;
 if cds_ProdID.ChangeCount > 0 then
 Begin
  cds_ProdID.ApplyUpdates(0) ;
  cds_ProdID.CommitUpdates ;
 End ;
End ;

procedure Tdm_ImportWoodx.ExportTrpPkgInfo(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber, ProductNo : Integer) ;
Var x : Integer ;
Begin
 sq_GetTrp.Close ;
 sq_GetTrp.ParamByName('InternalInvoiceNo').AsInteger     := InternalInvoiceNo ;
 sq_GetTrp.ParamByName('ProductNo').AsInteger             := ProductNo ;
 sq_GetTrp.ParamByName('LONo').AsInteger                  := ShippingPlanNo ;
 sq_GetTrp.Open ;
 sq_GetTrp.First ;
 While not sq_GetTrp.Eof do
 Begin
  cds_TrpPkgInfo.Insert ;
  //For x := 0 to sq_GetTrp.Fields.Count - 1 do
  For x := 0 to 14 do
   cds_TrpPkgInfo.Fields.Fields[x].AsVariant  := sq_GetTrp.Fields.Fields[x].AsVariant ;

  cds_TrpPkgInfoInternalInvoiceNo.AsInteger               := InternalInvoiceNo ;
  cds_TrpPkgInfoDeliveryMessageNumber.AsString            := inttostr(ShippingPlanNo) ;
  cds_TrpPkgInfoDeliveryShipmentLineItemNumber.AsInteger  := DeliveryShipmentLineItemNumber ;
  cds_TrpPkgInfo.Post ;
  //Add informational quantity
  ExportInformationalQuantity(ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber, sq_GetTrpPaketAprefix.AsString) ;// sq_GetTrpSPEC_PackageNo.AsString) ;
  //Add lengths for each packagenumber (Identifier)
  ExportLengthSpec(ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber, sq_GetTrpPaketAprefix.AsString) ;// sq_GetTrpSPEC_PackageNo.AsString) ;
  sq_GetTrp.Next ;
 End ;//While
 if cds_TrpPkgInfo.ChangeCount > 0 then
 Begin
  cds_TrpPkgInfo.ApplyUpdates(0) ;
  cds_TrpPkgInfo.CommitUpdates ;
 End ;

 if cds_LengthSpec.ChangeCount > 0 then
 Begin
  cds_LengthSpec.ApplyUpdates(0) ;
  cds_LengthSpec.CommitUpdates ;
 End ;

 if cds_InfoQuant.ChangeCount > 0 then
 Begin
  cds_InfoQuant.ApplyUpdates(0) ;
  cds_InfoQuant.CommitUpdates ;
 End ;
 sq_GetTrp.Close ;
End ;

procedure Tdm_ImportWoodx.ExportInformationalQuantity(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber : Integer;const Identifier : String) ;
Var x : Integer ;
Begin
 sq_GetIQ.Close ;
 sq_GetIQ.ParamByName('InternalInvoiceNo').AsInteger     := InternalInvoiceNo ;
 sq_GetIQ.ParamByName('Identifier').AsString             := Identifier ;
 sq_GetIQ.ParamByName('LONo').AsInteger                  := ShippingPlanNo ;
 sq_GetIQ.Open ;
 if not sq_GetIQ.Eof then
 For x := 1 to 3 do
 Begin
  cds_InfoQuant.Insert ;
  cds_InfoQuantInternalInvoiceNo.AsInteger                := InternalInvoiceNo ;
  cds_InfoQuantDeliveryMessageNumber.AsString             := inttostr(ShippingPlanNo) ;
  cds_InfoQuantDeliveryShipmentLineItemNumber.AsInteger   := DeliveryShipmentLineItemNumber ;
  cds_InfoQuantIdentifier.AsString                        := sq_GetIQIdentifier.AsString ;// Identifier ;
  Case x of
   1 : Begin
        cds_InfoQuantInformationalQuantityType.AsString         := 'RunningLength' ;
        cds_InfoQuantInformationalQuantityValue.AsFloat         := sq_GetIQAM1.AsFloat ;
        cds_InfoQuantInformationalQuantityUOM.AsString          := 'Meter' ;
       End ;
   2 : Begin
        cds_InfoQuantInformationalQuantityType.AsString         := 'ActualVolume' ;
        cds_InfoQuantInformationalQuantityValue.AsFloat         := sq_GetIQAM3.AsFloat ;
        cds_InfoQuantInformationalQuantityUOM.AsString          := 'CubicMeter' ;
       End ;
   3 : Begin
        cds_InfoQuantInformationalQuantityType.AsString         := 'Count' ;
        cds_InfoQuantInformationalQuantityValue.AsFloat         := sq_GetIQPIECE.AsInteger ;
        cds_InfoQuantInformationalQuantityUOM.AsString          := 'Piece' ;
       End ;
  End ;//case

  cds_InfoQuant.Post ;
 End ;//for x...
 sq_GetIQ.Close ;
End ;

procedure Tdm_ImportWoodx.ExportLengthSpec(const ShippingPlanNo, InternalInvoiceNo, DeliveryShipmentLineItemNumber : Integer;const Identifier : String) ;
Var x : Integer ;
Begin
 sq_GetLS.Close ;
 sq_GetLS.ParamByName('InternalInvoiceNo').AsInteger     := InternalInvoiceNo ;
 sq_GetLS.ParamByName('Identifier').AsString             := Identifier ;
 sq_GetLS.ParamByName('LONo').AsInteger                  := ShippingPlanNo ;
 sq_GetLS.Open ;
 sq_GetLS.First ;
 While not sq_GetLS.Eof do
 Begin
  cds_LengthSpec.Insert ;
  For x := 0 to 5 do
   cds_LengthSpec.Fields.Fields[x].AsVariant              := sq_GetLS.Fields.Fields[x].AsVariant ;

  cds_LengthSpecInternalInvoiceNo.AsInteger               := InternalInvoiceNo ;
  cds_LengthSpecDeliveryMessageNumber.AsString            := inttostr(ShippingPlanNo) ;
  cds_LengthSpecDeliveryShipmentLineItemNumber.AsInteger  := DeliveryShipmentLineItemNumber ;
  cds_LengthSpec.Post ;
  sq_GetLS.Next ;
 End ;
 sq_GetLS.Close ;
End ;

Function Tdm_ImportWoodx.GetProductIdentifier(const AT, AB : Double; Const SpeciesCode, SurfacingCode, ImpCode, GradeCode : String) : String ;
Var ProductIdentifier : String ;
    pAT, pAB  : Integer ;
Begin
 //95.5 -> 955 -> 0955
 //100.5 -> 1005 -> 1005
 pAT:= Round(AT * 10) ;
 pAB:= Round(AB * 10) ;
 if pAT < 1000 then
  ProductIdentifier:= '0'+intToStr(pAT)
   else
    ProductIdentifier:= intToStr(pAT) ;

 if pAB < 1000 then
  ProductIdentifier:= ProductIdentifier+'0'+intToStr(pAB)
   else
    ProductIdentifier:= ProductIdentifier+intToStr(pAB) ;

 ProductIdentifier:= ProductIdentifier + SpeciesCode + SurfacingCode + GradeCode + ImpCode ;
 Result:= ProductIdentifier ;
End ;

Function Tdm_ImportWoodx.GetISOCountryCode(const Country : String) : String ;
Begin
 sq_GetISOCtry.Close ;
 sq_GetISOCtry.ParamByName('CountryName').AsString:= Country ;
 sq_GetISOCtry.Open ;
 if not sq_GetISOCtry.Eof then
 Begin
  Result:= sq_GetISOCtryCountryCode.AsString ;
 End
  else
   Result:= '00' ;
 sq_GetISOCtry.Close ;
End ;

Function Tdm_ImportWoodx.GetProductGroupNo (const ProductNo : Integer) : Integer ;
Begin
 Try
 sq_GetPGNo.Close ;
 sq_GetPGNo.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetPGNo.Open ;
 if not sq_GetPGNo.Eof then
  Result:= sq_GetPGNoProductGroupNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetPGNo.Close ;
 End ;
End ;

Function  Tdm_ImportWoodx.GetSurfacingNo (const ProductNo : Integer) : Integer ;
Begin
 Try
 sq_GetPGNo.Close ;
 sq_GetPGNo.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetPGNo.Open ;
 if not sq_GetPGNo.Eof then
  Result:= sq_GetPGNoSurfacingNo.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetPGNo.Close ;
 End ;
End ;

Function  Tdm_ImportWoodx.GetNOM_THICK (const ProductNo : Integer) : Double ;
Begin
 Try
 sq_GetPGNo.Close ;
 sq_GetPGNo.ParamByName('ProductNo').AsInteger:= ProductNo ;
 sq_GetPGNo.Open ;
 if not sq_GetPGNo.Eof then
  Result:= sq_GetPGNoNominalThicknessMM.AsInteger
   else
    Result:= -1 ;
 Finally
  sq_GetPGNo.Close ;
 End ;
End ;

function Tdm_ImportWoodx.AllPkgsValid : Boolean ;
Begin
 Result:= True ;
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  if cds_ImpProdMapStatus.AsInteger <> 0 then
   Result:= False ;
  cds_ImpProdMap.Next ;
 End ;
End ;

procedure Tdm_ImportWoodx.UppdateraPrefix(const DeliveryMessageNumber : String) ;
Begin
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
//  if Length(cds_ImpProdMapClientCode.AsString) > 0 then
//  Begin
   Try
   if (Length(cds_ImpProdMapClientCode.AsString) = 0) or ((cds_ImpProdMapStatus.AsInteger = 1)
   or (cds_ImpProdMapStatus.AsInteger = 3)) then
   Begin
    sq_UpdPrefix.ParamByName('DeliveryMessageNumber').AsString := DeliveryMessageNumber ;

    if cds_ImpProdMapStatus.AsInteger = 1 then
    sq_UpdPrefix.ParamByName('Prefix').AsString                := cds_ImpProdMapClientCode.AsString
    else
    sq_UpdPrefix.ParamByName('Prefix').AsString :=  cdsClientClientCode.AsString ;

    sq_UpdPrefix.ParamByName('Identifier').AsString            := cds_ImpProdMapIdentifier.AsString ;
    sq_UpdPrefix.ExecSQL ;
   End ;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message+' :sq_UpdPrefix.ExecSQL') ;
     Raise ;
    End ;
   end;
//  End ;
  cds_ImpProdMap.Next ;
 End ;
End ;

procedure Tdm_ImportWoodx.UppdateraPrefixInitially(const DeliveryMessageNumber, Prefix : String) ;
Begin
 cds_ImpProdMap.First ;
 While not cds_ImpProdMap.Eof do
 Begin
  Try
   sq_UpdPrefix.ParamByName('DeliveryMessageNumber').AsString := DeliveryMessageNumber ;
   sq_UpdPrefix.ParamByName('Prefix').AsString                := Prefix ;
   sq_UpdPrefix.ParamByName('Identifier').AsString            := cds_ImpProdMapIdentifier.AsString ;

   sq_UpdPrefix.ExecSQL ;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message+' :sq_UpdPrefix.ExecSQL') ;
     Raise ;
    End ;
   end;

   cds_ImpProdMap.Next ;
 End ;
End ;

procedure Tdm_ImportWoodx.mtVisKlientClientNoChange(Sender: TField);
Var Prefix  : String ;
begin
 Prefix := dmsContact.GetClientCode(mtVisKlientClientNo.AsInteger) ;
 UppdateraPrefixInitially(dmsSystem.DeliveryMessageNumber, Prefix) ;
end;

procedure Tdm_ImportWoodx.OpenCurrentSupplier ;
Begin
 cdsClient.Active := False ;
 cdsClient.ParamByName('ClientNo').AsInteger  := dm_ImportWoodx.OrderSupplierNo ;
 cdsClient.Active := True ;
End ;

procedure Tdm_ImportWoodx.EditClient(const PartyIdentifier, PartyIdentifierType : String) ;
Begin
 cdsClient.Edit ;
 cdsClientPartyIdentifier.AsString      := PartyIdentifier ;
 cdsClientPartyIdentifierType.AsString  := PartyIdentifierType ;
 cdsClient.Post ;
 if cdsClient.ChangeCount > 0 then
 Begin
  cdsClient.ApplyUpdates ;
  cdsClient.CommitUpdates ;
 End ;
End ;

Function Tdm_ImportWoodx.IsClientConnectionValid : Boolean ;
Begin
 if cds_ImpClientMap.Locate('WoodXPartyIdentifier;WoodXPartyIdentifierType',
 VarArrayOf([cdsClientPartyIdentifier.AsString, cdsClientPartyIdentifierType.AsString]), []) then
 Result := True
 else
 Result := False ;
End ;

procedure Tdm_ImportWoodx.Ins_InvoicePkgSpecWoodX (const InternalInvoiceNo, LONo : Integer) ;
Begin
 Try
 sp_Ins_InvoicePkgSpecWoodX.ParamByName('@InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
 sp_Ins_InvoicePkgSpecWoodX.ParamByName('@LONo').AsInteger              := LONo ;
 sp_Ins_InvoicePkgSpecWoodX.ParamByName('@UserID').AsInteger            := ThisUser.UserID ;
 sp_Ins_InvoicePkgSpecWoodX.ExecProc ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog('sp_Ins_InvoicePkgSpecWoodX: ' + E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end;
End;

end.
