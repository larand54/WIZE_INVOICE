unit dmcVidaOrder;

interface

uses
  SysUtils,
  Classes,
  DB,

  Forms,
  Controls,
  SqlTimSt,
  Vidatype, dxmdaset, FMTBcd, Variants, kbmMemTable,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client ;
const
 Const_SupplierShippingPlan = 'SupplierShippingPlan' ;
 Const_Booking                  = 'Booking' ;

type
  TdmcOrder = class(TDataModule)
    dsrcSawmillLoadOrders: TDataSource;

    dsrcLoadsForLO: TDataSource;
    dsrcBooking: TDataSource;
    ds_PPNo: TDataSource;
    ds_ELOLengths: TDataSource;
    ds_ELOLayout: TDataSource;
    ds_LOLengths: TDataSource;
    ds_OLLayout: TDataSource;
    ds_PI_ELO: TDataSource;
    mtProduct: TkbmMemTable;
    mtProductProductNo: TIntegerField;
    mtProductGradeStampNo: TIntegerField;
    mtProductBarCodeNo: TIntegerField;
    mtProductTotalPcs: TIntegerField;
    mtProductProductGroupNo: TIntegerField;
    mtProductAT: TFloatField;
    mtProductAB: TFloatField;
    mtProductSpeciesNo: TIntegerField;
    mtProductSurfacingNo: TIntegerField;
    mtProductGradeNo: TIntegerField;
    mtProductNT: TFloatField;
    mtProductNB: TFloatField;
    mtProductProductCategoryNo: TIntegerField;
    mtProductMarketRegionNo: TIntegerField;
    mtProductTagNo: TIntegerField;
    mtProductActive: TIntegerField;
    mtProductSizeFormat: TIntegerField;
    mtProductLengthFormat: TIntegerField;
    mtProductVolumeFormat: TIntegerField;
    mtProductLanguageCode: TIntegerField;
    mtProductALMM: TFloatField;
    mtPkgLengths: TkbmMemTable;
    mtPkgLengthsProductLengthNo: TIntegerField;
    mtPkgLengthsPieces: TIntegerField;
    mtPkgLengthsPackageCodeNo: TStringField;
    mtPkgLengthsPackageMainCode: TStringField;
    mtPkgLengthsLengthDescription: TStringField;
    mtPkgLengthsPackageTypeNo: TIntegerField;
    mtPkgLengthsALMM: TFloatField;
    mtPkgLengthsNLMM: TFloatField;
    mtPkgLengthsPkgCodePPNo: TIntegerField;
    mtPkgLengthsStatus: TIntegerField;
    mtPkgLengthsProdInstruNo: TIntegerField;
    mtPkgLengthsFOT: TFloatField;
    mtPkgLengthsTUM: TStringField;
    ds_ZeroGroup: TDataSource;
    ds_PkgCodeO: TDataSource;
    mtProps: TkbmMemTable;
    mtPropsVerkNo: TIntegerField;
    mtPropsOwnerNo: TIntegerField;
    mtPropsPIPNo: TIntegerField;
    mtPropsLIPNo: TIntegerField;
    mtPropsInputOption: TIntegerField;
    mtPropsRegPointNo: TIntegerField;
    mtPropsRegDate: TDateTimeField;
    mtPropsCopyPcs: TIntegerField;
    mtPropsRunNo: TIntegerField;
    mtPropsProducerNo: TIntegerField;
    mtPropsAutoColWidth: TIntegerField;
    mtPropsSupplierCode: TStringField;
    mtPropsLengthOption: TIntegerField;
    mtPropsLengthGroupNo: TIntegerField;
    mtPropsNewItemRow: TIntegerField;
    dsProps: TDataSource;
    mtPropsLengthGrupp: TStringField;
    ds_LOListHH: TDataSource;
    FDQuery1: TFDQuery;
    cdsSawmillLoadOrders: TFDQuery;
    cdsSawmillLoadOrdersKONTRAKTSBESKRIVNING: TStringField;
    cdsSawmillLoadOrdersShippersShipDate: TSQLTimeStampField;
    cdsSawmillLoadOrdersINITIALS: TStringField;
    cdsSawmillLoadOrdersShippingPlanStatus: TIntegerField;
    cdsSawmillLoadOrdersLONumber: TIntegerField;
    cdsSawmillLoadOrdersPackageCode: TStringField;
    cdsSawmillLoadOrdersProduct: TStringField;
    cdsSawmillLoadOrdersLength: TStringField;
    cdsSawmillLoadOrdersSupplierShipPlanObjectNo: TIntegerField;
    cdsSawmillLoadOrdersShowInGrid: TIntegerField;
    cdsSawmillLoadOrdersOrderNoText: TStringField;
    cdsSawmillLoadOrdersUnitName: TStringField;
    cdsSawmillLoadOrdersDestination: TStringField;
    cdsSawmillLoadOrdersClientName: TStringField;
    cdsSawmillLoadOrdersMARKNAD: TStringField;
    cdsSawmillLoadOrdersReference: TStringField;
    cdsSawmillLoadOrdersSupplier: TIntegerField;
    cdsSawmillLoadOrdersCHCustomerNo: TIntegerField;
    cdsSawmillLoadOrdersSPCustomerNO: TIntegerField;
    cdsSawmillLoadOrdersCustomerPrice: TFloatField;
    cdsSawmillLoadOrdersCustomerShowInGrid: TIntegerField;
    cdsSawmillLoadOrdersSUPP_NAME: TStringField;
    cdsSawmillLoadOrdersLOCAL_CUST: TStringField;
    cdsSawmillLoadOrdersObjectType: TIntegerField;
    cdsSawmillLoadOrdersORDERTYPE: TIntegerField;
    cdsSawmillLoadOrdersSHIPTO: TStringField;
    cdsSawmillLoadOrdersLOADING: TStringField;
    cdsSawmillLoadOrdersDelivery_WeekNo: TIntegerField;
    cdsSawmillLoadOrdersCSH_CustomerNo: TIntegerField;
    cdsSawmillLoadOrdersShipToInvPointNo: TIntegerField;
    cdsSawmillLoadOrdersLoadingLocationNo: TIntegerField;
    cdsSawmillLoadOrdersBarCode: TStringField;
    cdsSawmillLoadOrdersREFERENS: TStringField;
    cdsSawmillLoadOrdersSKAPAD: TSQLTimeStampField;
    cdsSawmillLoadOrdersNT: TFloatField;
    cdsSawmillLoadOrdersNB: TFloatField;
    cdsSawmillLoadOrdersAT: TFloatField;
    cdsSawmillLoadOrdersAB: TFloatField;
    cdsSawmillLoadOrdersTT: TStringField;
    cdsSawmillLoadOrdersTB: TStringField;
    cdsSawmillLoadOrdersTS: TStringField;
    cdsSawmillLoadOrdersUT: TStringField;
    cdsSawmillLoadOrdersKV: TStringField;
    cdsSawmillLoadOrdersPK: TStringField;
    cdsSawmillLoadOrdersINTLNGD: TStringField;
    cdsSawmillLoadOrdersRADREFERENS: TStringField;
    cdsSawmillLoadOrdersPris: TStringField;
    cdsSawmillLoadOrdersProductGroupNo: TIntegerField;
    cdsSawmillLoadOrdersPriceListName: TStringField;
    cdsSawmillLoadOrdersPcsPerPkg: TIntegerField;
    cdsSawmillLoadOrdersPackageWidth: TIntegerField;
    cdsSawmillLoadOrdersPackageHeight: TIntegerField;
    cdsSawmillLoadOrdersPkgCodePPNo: TIntegerField;
    cdsSawmillLoadOrdersProdInstruNo: TIntegerField;
    cdsSawmillLoadOrdersProductNo: TIntegerField;
    cdsSawmillLoadOrdersProductLengthNo: TIntegerField;
    cdsSawmillLoadOrdersLanguageCode: TIntegerField;
    cdsSawmillLoadOrdersALMM: TFloatField;
    cdsSawmillLoadOrdersSequenceNo: TIntegerField;
    cdsSawmillLoadOrdersOrderLineNo: TIntegerField;
    cdsSawmillLoadOrdersOrderNo: TIntegerField;
    cdsSawmillLoadOrdersModifiedUser: TIntegerField;
    cdsSawmillLoadOrdersLagergrupp: TStringField;
    cdsBooking: TFDQuery;
    cdsBookingCarrierName: TStringField;
    cdsBookingETD: TSQLTimeStampField;
    cdsBookingBookingNo: TIntegerField;
    cdsBookingShippersShipDate: TSQLTimeStampField;
    cdsBookingShippersShipTime: TSQLTimeStampField;
    cdsBookingShippingCompanyBookingID: TStringField;
    cdsBookingSupplierReference: TStringField;
    cdsBookingPreliminaryRequestedPeriod: TStringField;
    cdsBookingClientName: TStringField;
    cdsBookingShippingPlanNo: TIntegerField;
    cdsBookingPanic_Note: TStringField;
    cdsBookingLOText: TMemoField;
    cdsBookingInvoiceText: TMemoField;
    cdsBookingNoteForLoadSheet: TMemoField;
    cdsBookingVoyageNo: TIntegerField;
    cds_PPNo: TFDQuery;
    cds_PPNoPkgCodePPNo: TIntegerField;
    cds_PPNoPackageTypeNo: TIntegerField;
    cds_PPNoPackageCode: TStringField;
    cds_PPNoLanguagecode: TIntegerField;
    cds_PPNoSizeFormat: TIntegerField;
    cds_PPNoLengthFormat: TIntegerField;
    cds_PPNoVolumeFormat: TIntegerField;
    cds_PPNooThickness: TStringField;
    cds_PPNooWidth: TStringField;
    cds_PPNooLength: TStringField;
    cds_PPNoArtikelKod: TStringField;
    cds_PPNoModifiedDate: TSQLTimeStampField;
    cds_PPNoTagNo: TIntegerField;
    cds_PPNoActive: TIntegerField;
    cds_ELOLengths: TFDQuery;
    cds_ELOLengthsActualLengthMM: TFloatField;
    cds_ELOLengthsSupplierShipPlanObjectNo: TIntegerField;
    cds_ELOLengthsProductLengthNo: TIntegerField;
    cds_ELOLengthsPkgCodePPNo: TIntegerField;
    cds_PP_Layout: TFDQuery;
    cds_PP_LayoutPkgCodePPNo: TIntegerField;
    cds_PP_LayoutLayoutNo: TIntegerField;
    cds_PP_LayoutAntalKopior: TIntegerField;
    cds_LOLengths: TFDQuery;
    cds_LOLengthsActualLengthMM: TFloatField;
    cds_LOLengthsSupplierShipPlanObjectNo: TIntegerField;
    cds_LOLengthsProductLengthNo: TIntegerField;
    cds_LOLengthsPkgCodePPNo: TIntegerField;
    cds_ZeroGroup: TFDQuery;
    cds_ZeroGroupPkgCodePPZeroGroupNo: TIntegerField;
    cds_ZeroGroupPkgCodePPNo: TIntegerField;
    sq_CheckSupplierNo: TFDQuery;
    sq_CheckSupplierNoNoOfSuppliers: TIntegerField;
    sq_SetLOStatus: TFDQuery;
    sq_SearchALOByMainLO: TFDQuery;
    sq_SearchALOByMainLOShippingPlanNo: TIntegerField;
    sq_BTHExistInLager: TFDQuery;
    sq_FindLONo: TFDQuery;
    sq_FindLONoLONo: TIntegerField;
    cds_PI_ELO: TFDQuery;
    cds_PI_ELOProdInstruNo: TIntegerField;
    cds_PI_ELOFOHCpercent: TFloatField;
    cds_PI_ELOMiniBundleHeight: TIntegerField;
    cds_PI_ELOMiniBundleWidth: TIntegerField;
    cds_PI_ELOMinNoOfSticks: TIntegerField;
    cds_PI_ELONoOfStraps: TIntegerField;
    cds_PI_ELOCornerProtection: TStringField;
    cds_PI_ELOPackageWidth: TIntegerField;
    cds_PI_ELOPackageHeight: TIntegerField;
    cds_PI_ELOStamp: TIntegerField;
    cds_PI_ELOPET: TIntegerField;
    cds_PI_ELOMiniBundle: TIntegerField;
    cds_PI_ELOStressGrade: TIntegerField;
    cds_PI_ELOFingerJoint: TIntegerField;
    cds_PI_ELOPackageCut: TIntegerField;
    cds_PI_ELOExLog: TStringField;
    cds_PI_ELOCreated: TSQLTimeStampField;
    cds_PI_ELOModified: TSQLTimeStampField;
    cds_PI_ELOPackageTagLayout: TIntegerField;
    cds_PI_ELOPET_Tolerance: TStringField;
    cds_PI_ELOBarCodeID: TIntegerField;
    cds_PI_ELOExtraID: TStringField;
    cds_PI_ELOCreatedUser: TIntegerField;
    cds_PI_ELOModifiedUser: TIntegerField;
    cds_PI_ELODateCreated: TSQLTimeStampField;
    cds_PI_ELOPackageType: TIntegerField;
    cds_PI_ELOWrapType: TIntegerField;
    cds_PI_ELOPressureTreated: TIntegerField;
    cds_PI_ELOSequenceNo: TIntegerField;
    cds_PI_ELOPicture: TStringField;
    cds_PI_ELONote: TMemoField;
    cds_PI_ELOShrinkWrap: TIntegerField;
    cds_PI_ELOPiecesPerMiniBundle: TIntegerField;
    cds_PI_ELOPackage_Size: TIntegerField;
    cds_PI_ELOBILD: TBlobField;
    cds_PI_ELOCornerProtectionNo: TIntegerField;
    cds_PI_ELOExternalNote: TMemoField;
    cds_PI_ELOTruckSticksNo: TIntegerField;
    cds_PI_ELOStrapTypeNo: TIntegerField;
    cds_PkgOwner: TFDQuery;
    cds_PkgOwnerPkgCodePPNo: TIntegerField;
    cds_PkgOwnerClientNo: TIntegerField;
    cds_PkgOwnerCreatedUser: TIntegerField;
    cds_PkgOwnerDateCreated: TSQLTimeStampField;
    cds_ELOLayout: TFDQuery;
    cds_ELOLayoutSupplierShipPlanObjectNo: TIntegerField;
    cds_ELOLayoutLayoutNo: TIntegerField;
    cds_ELOLayoutAntalKopior: TIntegerField;
    sq_GetPPNo: TFDQuery;
    sq_GetPPNoPkgCodePPNo: TIntegerField;
    cds_OLLayout: TFDQuery;
    cds_OLLayoutOrderNo: TIntegerField;
    cds_OLLayoutOrderLineNo: TIntegerField;
    cds_OLLayoutLayoutNo: TIntegerField;
    cds_OLLayoutAntalKopior: TIntegerField;
    cds_PkgCodeO: TFDQuery;
    cds_PkgCodeOPkgCodePPNo: TIntegerField;
    cds_PkgCodeOPackageTypeNo: TIntegerField;
    cds_PkgCodeOPackageMainCode: TStringField;
    cds_PkgCodeOPackageCodeNo: TStringField;
    cds_PkgCodeOCreatedUser: TIntegerField;
    cds_PkgCodeOModifiedUser: TIntegerField;
    cds_PkgCodeODateCreated: TSQLTimeStampField;
    cds_PkgCodeODateModified: TSQLTimeStampField;
    cds_PkgCodeOLengthDescription: TStringField;
    cds_PkgCodeOMarketRegionNo: TIntegerField;
    sq_PkgStatus: TFDQuery;
    sq_PkgStatusStatus: TIntegerField;
    sq_RemFromZeroGroup: TFDQuery;
    sq_OrderType: TFDQuery;
    sq_OrderTypeOrderType: TIntegerField;
    sq_LegoHasLL: TFDQuery;
    sq_LegoHasLLLoadingLocationNo: TIntegerField;
    sq_ValidLONr: TFDQuery;
    sq_ValidLONrShippingPlanNo: TIntegerField;
    sq_ValidLONrSupplierNo: TIntegerField;
    sq_ValidLONrLoadingLocationNo: TIntegerField;
    cds_LOListHH: TFDQuery;
    cds_LOListHHCreatedUser: TIntegerField;
    cds_LOListHHSSPNo: TIntegerField;
    cds_LOListHHLONo: TIntegerField;
    cds_LOListHHDateCreated: TSQLTimeStampField;
    cds_LOListHHVolume: TFloatField;
    cds_LOListHHProdukt: TStringField;
    cds_LOListHHLngd: TStringField;
    cdsLoadsForLO: TFDStoredProc;
    sp_Populate_One_PkgTypeLengths: TFDStoredProc;
    sp_CngLOonLoad: TFDStoredProc;
    sp_PackageTypes: TFDStoredProc;
    sp_PackageTypeDetail: TFDStoredProc;
    sp_NewPackageType_II: TFDStoredProc;
    sp_NewPackageDetail: TFDStoredProc;
    sp_PackageTotals: TFDStoredProc;
    sp_lencolpcspkgtypeno: TFDStoredProc;
    cdsLoadsForLOFS: TStringField;
    cdsLoadsForLOShippingPlanNo: TIntegerField;
    cdsLoadsForLOLoadNo: TIntegerField;
    cdsLoadsForLOLoadID: TStringField;
    cdsLoadsForLOLoadedDate: TSQLTimeStampField;
    cdsLoadsForLOSenderLoadStatus: TIntegerField;
    cdsLoadsForLOPcs: TIntegerField;
    cdsLoadsForLOActualM3: TFloatField;
    cdsLoadsForLONominalM3: TFloatField;
    cdsLoadsForLOLinealMeter: TFloatField;
    cdsLoadsForLOMFBM: TFloatField;
    cdsLoadsForLOVERK: TStringField;
    cdsLoadsForLOANTPKT: TIntegerField;
    cdsLoadsForLOSupplierNo: TIntegerField;
    cdsLoadsForLOLoadAR: TIntegerField;
    cdsLoadsForLOAR: TSQLTimeStampField;
    cds_PPNoPublished: TIntegerField;
    cds_PPNoCreatedUser: TIntegerField;
    cds_PPNoCreatedDate: TSQLTimeStampField;
    cds_PPNoModifiedUser: TIntegerField;
    cds_PPNoprodinstruno: TIntegerField;
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
    cds_PropsVerk: TStringField;
    ds_Props: TDataSource;
    cdsSawmillLoadOrdersLngd: TStringField;
    FDUpdateSQL1: TFDUpdateSQL;
    cdsLoadsForLOAR_AV: TStringField;
    sq_City: TFDQuery;
    sq_CityOrt: TStringField;
    sq_CityCityNo: TIntegerField;
    cds_PropsLaststlle: TStringField;
    cds_PropsDestination: TStringField;
    cdsLoadsForLO_forVW: TFDStoredProc;
    cdsLoadsForLO_forVWFS: TStringField;
    cdsLoadsForLO_forVWShippingPlanNo: TIntegerField;
    cdsLoadsForLO_forVWLoadNo: TIntegerField;
    cdsLoadsForLO_forVWLoadID: TStringField;
    cdsLoadsForLO_forVWLoadedDate: TSQLTimeStampField;
    cdsLoadsForLO_forVWSenderLoadStatus: TIntegerField;
    cdsLoadsForLO_forVWPcs: TIntegerField;
    cdsLoadsForLO_forVWActualM3: TFloatField;
    cdsLoadsForLO_forVWNominalM3: TFloatField;
    cdsLoadsForLO_forVWLinealMeter: TFloatField;
    cdsLoadsForLO_forVWMFBM: TFloatField;
    cdsLoadsForLO_forVWVERK: TStringField;
    cdsLoadsForLO_forVWANTPKT: TIntegerField;
    cdsLoadsForLO_forVWSupplierNo: TIntegerField;
    cdsLoadsForLO_forVWLoadAR: TIntegerField;
    cdsLoadsForLO_forVWAR: TSQLTimeStampField;
    cdsLoadsForLO_forVWAR_AV: TStringField;
    sq_Dest: TFDQuery;
    sq_DestOrt: TStringField;
    sq_DestCityNo: TIntegerField;
    cdsLoadsForLOPackageEntryOption: TIntegerField;
    cdsLoadsForLO_forVWPackageEntryOption: TIntegerField;
    sq_Kund: TFDQuery;
    sq_Land: TFDQuery;
    sq_varugrupp: TFDQuery;
    sq_grade: TFDQuery;
    sq_Surfacing: TFDQuery;
    FDQuery7: TFDQuery;
    cdsSawmillLoadOrdersPreliminaryRequestedPeriod: TStringField;
    cdsSawmillLoadOrdersStartETDYearWeek: TIntegerField;
    cdsSawmillLoadOrdersEndETDYearWeek: TIntegerField;
    cdsSawmillLoadOrdersNoOfUnits: TFloatField;
    cdsSawmillLoadOrdersLand: TStringField;
    UpdateSQL_SawmillLoadOrders: TFDUpdateSQL;
    cdsSawmillLoadOrdersPackage_Size: TIntegerField;
    cdsSawmillLoadOrdersPackageSizeName: TStringField;
    cdsSawmillLoadOrdersPkgArticleNo: TIntegerField;
    cdsSawmillLoadOrdersLOGroupNo: TIntegerField;
    cdsSawmillLoadOrdersLOBuffertName: TStringField;
    cdsSawmillLoadOrdersLoadedPkgs: TIntegerField;
    cdsSawmillLoadOrdersLoadedNM3: TFloatField;
    sp_SetLOStatus: TFDStoredProc;


    procedure provSawMillLoadOrdersGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dsrcSawmillLoadOrdersDataChange(Sender: TObject;
      Field: TField);
    procedure mtPkgLengthsAfterInsert(DataSet: TDataSet);
    procedure provBookingGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure dsp_LOListHHGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsSawmillLoadOrdersBeforePost(DataSet: TDataSet);
    procedure cdsBookingAfterInsert(DataSet: TDataSet);
    procedure cds_PPNoAfterInsert(DataSet: TDataSet);
    procedure cds_ELOLengthsAfterInsert(DataSet: TDataSet);
    procedure cds_ELOLengthsBeforePost(DataSet: TDataSet);
    procedure cds_LOLengthsAfterInsert(DataSet: TDataSet);
    procedure cds_LOLengthsBeforePost(DataSet: TDataSet);
    procedure cds_PkgOwnerAfterInsert(DataSet: TDataSet);
    procedure cds_ELOLayoutAfterInsert(DataSet: TDataSet);
    procedure cds_PkgCodeOAfterInsert(DataSet: TDataSet);
    procedure cds_LOListHHAfterInsert(DataSet: TDataSet);
    procedure cds_PropsVerkNoChange(Sender: TField);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure cdsSawmillLoadOrdersBeforeScroll(DataSet: TDataSet);
    procedure cds_PropsOrderTypeNoChange(Sender: TField);
    procedure cdsSawmillLoadOrdersPreliminaryRequestedPeriodChange(
      Sender: TField);

  private
    PackageCode_Layout  : Array of array of variant ;
    FLastLOChecked : Integer;
    FLoadOrdersAfterScroll : TDataSetNotifyEvent;
    procedure ShowLoadsForLO_II(const LONo, pSupplierNo : Integer) ;
    procedure CheckIfPkgCodeNeedsToBeGeneratedFor_ELO (InfoList : TStrings) ;
    procedure CheckIfPkgCodeNeedsToBeGeneratedFor_LO(InfoList : TStrings) ;
    procedure SkapaEnKodFor_LO (const ShipPlanObjectNo, LanguageCode : Integer;const ELO : Boolean;const oThickness, oWidth, oLength, ArtikelKod : String) ;
    procedure CreateUnderKoderTillNollangd_for_ELO(const PkgCodePPZeroGroupNo, LanguageCode : Integer) ;
    procedure CreateUnderKoderTillNollangd_for_LO(const PkgCodePPZeroGroupNo : Integer) ;
    function  SavePackageType : Boolean ;
    Function  GetPPNo_for_ADDLO(const ArtikelKod : String;const LanguageCode : Integer) : Integer ;
    Function  GetPPNo(const ArtikelKod : String;const LanguageCode : Integer) : Integer ;
    procedure GetELOLAYOUT ;
    procedure UpdatePackageCode_Layout (const PkgCodePPNo : Integer) ;
    procedure GetOrderRowLAYOUT ;
    procedure AddPkgTypeColumns(const PackageTypeNo, AntalStyck : Integer) ;
    function  LOLengthsChanged_for_specific_LORow : Boolean ;
    function  ELOLengthsChanged_for_specific_ELORow : Boolean ;
    procedure ModifiedTheUserOnLO ;
  public

    SupplierNo : Integer ;
    Shipping : Integer ; //Deliver or Receiving selected by user in fLoadForm
    procedure SaveToBooking ;
    Function  FindLoadRecord(const LoadNo : Integer) : Boolean ;
    procedure RefreshOrter ;
    Function  PkgStatus(const SupplierNo, PackageNo : Integer;const prefix : String) : Boolean ;
    Function  LoadStatusOK : Boolean ;
    Function  GetTheLO_SupplierNo(const SupplierNo, LONo : Integer) : Integer ;
    Function  CheckIfChangeToPrefix_BH1(const PkgNo, InventoryOwner, UserCompanyLoggedOn, LONo : Integer;const Prefix : string3) : string3 ;

    function  LO_LoadingLocationIsLegoLoadingLocation(const LONo, LoggedInCompanyNo : Integer) : Boolean ;

    function  ValidLO(const LONo : Integer) : Boolean ;
    procedure CngLOonLoad(const LoadNo, NewLONo : Integer) ;
    procedure RefrehLOs(const Value: integer);
    constructor Create(AOwner : TComponent); override;
    procedure ShowLoadsForLO    (const LONo : Integer);
    procedure IsolateLoads;   // disconnect LO afterscroll
    procedure ReConnectLoads; // reinstate LO afterscroll
    Procedure SetLOStatus (const sspNo, Status : Integer) ;
    Function  GetLONoForLoadNo (const LoadNo : Integer) : Integer ;
    function  Does_SearchedLONo_Have_ALO_Connected (const SupplierNo, LO_NO : Integer) : Integer ;
    procedure SkapaPaketKoder (InfoList : TStrings) ;
    procedure RemoveCodeFromZeroGroup(const PkgCodePPZeroGroupNo, PkgCodePPNo : Integer) ;
    procedure LoadUserProps (const Form : String) ;
    procedure SaveUserProps (const Form : String) ;
    function  OrderTypeOrderType(const SupplierNo, LONo : Integer) : Integer ;
  end;

var
  dmcOrder: TdmcOrder;

implementation

{$R *.dfm}

uses
  Dialogs,
  recerror,//dlgReconcileConcurrencyError,
  dmsVidaContact,
  VidaConst, dmsDataConn, VidaUser , dmsVidaProduct, dmsVidaSystem,
  dmBooking, uSelectBTHorBTB;


Type

  TMatchRec = class
    private
      FMatch : Boolean;
      FObjNo : Integer;
    public
      constructor Create( ObjNoVal : Integer );
      property ObjNo : Integer read FObjNo write FObjNo;
      property Match : Boolean read FMatch write FMatch;
    end;


{ TMatchRec }

constructor TMatchRec.Create( ObjNoVal : Integer );
begin
  inherited Create;
  FMatch := TRUE;
  FObjNo := ObjNoVal;
end;


procedure TdmcOrder.ShowLoadsForLO(const LONo: Integer);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  ShowLoadsForLO_II(cdsSawmillLoadOrdersLONumber.AsInteger, cdsSawmillLoadOrdersSupplier.AsInteger) ;
  FLastLOChecked := LONo;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TdmcOrder.ShowLoadsForLO_II(const LONo, pSupplierNo : Integer);
begin
 if ThisUser.CompanyNo = 741 then
 Begin
  cdsLoadsForLO.Close;
  cdsLoadsForLO_forVW.Close;
  cdsLoadsForLO_forVW.ParamByName('@LONo').AsInteger        := cdsSawmillLoadOrdersLONumber.AsInteger ;// LONo;
  cdsLoadsForLO_forVW.ParamByName('@SupplierNo').AsInteger  := cdsSawmillLoadOrdersSupplier.AsInteger ;// SupplierNo ;
  cdsLoadsForLO_forVW.ParamByName('@Shipping').AsInteger    := cdsSawmillLoadOrdersOrderType.AsInteger ;// Shipping ;
  cdsLoadsForLO_forVW.Open;
  dsrcLoadsForLO.dataset  := cdsLoadsForLO_forVW ;
 End
 else
 Begin
  cdsLoadsForLO_forVW.Close;
  cdsLoadsForLO.Close;
  cdsLoadsForLO.ParamByName('@LONo').AsInteger        := cdsSawmillLoadOrdersLONumber.AsInteger ;// LONo;
  cdsLoadsForLO.ParamByName('@SupplierNo').AsInteger  := cdsSawmillLoadOrdersSupplier.AsInteger ;// SupplierNo ;
  cdsLoadsForLO.ParamByName('@Shipping').AsInteger    := cdsSawmillLoadOrdersOrderType.AsInteger ;// Shipping ;
  cdsLoadsForLO.Open;
  dsrcLoadsForLO.dataset  := cdsLoadsForLO ;
 End ;



end;

constructor TdmcOrder.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TdmcOrder.IsolateLoads;
begin
  FLoadOrdersAfterScroll := cdsSawmillLoadOrders.AfterScroll;
  cdsSawmillLoadOrders.AfterScroll := nil;
end;

procedure TdmcOrder.ReConnectLoads;
begin
    cdsSawmillLoadOrders.AfterScroll := FLoadOrdersAfterScroll;
end;

procedure TdmcOrder.provSawMillLoadOrdersGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'SupplierShippingPlan' ;
end;

procedure TdmcOrder.RefrehLOs(const Value: integer);
// Accessor method for SupplierNo property.
// Set by Load Orders form to ensure supplier shipping plans are retrieved
// for the appropriate supplier.
begin
  cdsSawmillLoadOrders.close;
  IsolateLoads;
  try
   cdsSawmillLoadOrders.Open;
   cdsSawmillLoadOrders.First;
  finally
   ReConnectLoads;
  end;
end;


procedure TdmcOrder.dsrcSawmillLoadOrdersDataChange(Sender: TObject;
  Field: TField);
begin
 if cdsSawmillLoadOrdersLONumber.AsInteger <>  FLastLOChecked then
  ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger) ;

  {  if cdsBooking.RecordCount = 0 then
  cdsBooking.ReadOnly:= True
  else
  cdsBooking.ReadOnly:= False ;
  }
end;

Procedure TdmcOrder.SetLOStatus (const sspNo, Status : Integer) ;
Begin

 Try
 sp_SetLOStatus.ParamByName('@sspNo').AsInteger  := sspNo ;
 sp_SetLOStatus.ParamByName('@Status').AsInteger := Status ;
 sp_SetLOStatus.ExecProc ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;


 {Try
 sq_SetLOStatus.ParamByName('sspNo').AsInteger  := sspNo ;
 sq_SetLOStatus.ParamByName('Status').AsInteger := Status ;
 sq_SetLOStatus.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end; }
End ;

Function TdmcOrder.GetLONoForLoadNo (const LoadNo : Integer) : Integer ;
Begin
 sq_FindLONo.ParamByName('LoadNo').AsInteger:= LoadNo ;
 Try
  sq_FindLONo.Open ;
  if not sq_FindLONo.Eof then
   Result:= sq_FindLONoLONo.AsInteger
    else
     Result := -1 ;
 Finally
  sq_FindLONo.Close ;
 End ;
End ;

function TdmcOrder.Does_SearchedLONo_Have_ALO_Connected (const SupplierNo, LO_NO : Integer) : Integer ;
Begin
  sq_SearchALOByMainLO.ParamByName('SupplierNo').AsInteger  := SupplierNo ;
  sq_SearchALOByMainLO.ParamByName('LO_NO').AsInteger       := LO_NO ;
  sq_SearchALOByMainLO.Open ;
  Result:= sq_SearchALOByMainLOShippingPlanNo.AsInteger ;
  sq_SearchALOByMainLO.Close ;
End ;

(*
procedure TdmcOrder.provSawMillLoadOrdersBeforeUpdateRecord(
  Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
Var SupplierShipPlanObjectNo, ProdInstruNo : Integer ;
    SQL  : String ;
    Connection        : TSQLConnection ;
begin
 Connection := (SourceDS as TCustomSQLDataSet).SQLConnection ;
 case UpdateKind of
 ukModify:
  Begin


{  if not VarIsEmpty(DeltaDS.FieldByName('ModifiedUser').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('ModifiedUser =  %s',
    [QuotedStr(DeltaDS.FieldByName('ModifiedUser').NewValue)] ) ;
   End ;  //if not VarIsEmpty
   }

  if not VarIsEmpty(DeltaDS.FieldByName('PackageWidth').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('PackageWidth =  %s',
    [QuotedStr(DeltaDS.FieldByName('PackageWidth').NewValue)] ) ;
   End ;  //if not VarIsEmpty

  if not VarIsEmpty(DeltaDS.FieldByName('PackageHeight').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('PackageHeight =  %s',
    [QuotedStr(DeltaDS.FieldByName('PackageHeight').NewValue)] ) ;
   End ;  //if not VarIsEmpty

   if not VarIsEmpty(DeltaDS.FieldByName('SequenceNo').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('SequenceNo =  %s',
    [DeltaDS.FieldByName('SequenceNo').NewValue] ) ;
   End ;  //if not VarIsEmpty

   if not VarIsEmpty(DeltaDS.FieldByName('PackageCode').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('PackageCode =  %s',
    [DeltaDS.FieldByName('PackageCode').NewValue] ) ;
   End ;  //if not VarIsEmpty

   if not VarIsEmpty(DeltaDS.FieldByName('PkgCodePPNo').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('PkgCodePPNo =  %s',
    [DeltaDS.FieldByName('PkgCodePPNo').NewValue] ) ;
   End ;  //if not VarIsEmpty

   if not VarIsEmpty(DeltaDS.FieldByName('PcsPerPkg').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('PcsPerPkg =  %s',
    [DeltaDS.FieldByName('PcsPerPkg').NewValue] ) ;
   End ;  //if not VarIsEmpty

   if not VarIsEmpty(DeltaDS.FieldByName('ShippingPlanStatus').NewValue) then
   Begin
    if SQL <> '' then
     SQL := SQL + ', ' ;
    SQL:= SQL + Format ('ShippingPlanStatus =  %s',
    [DeltaDS.FieldByName('ShippingPlanStatus').NewValue] ) ;
   End ;  //if not VarIsEmpty

   if SQL <> '' then
   Begin
    SupplierShipPlanObjectNo:= DeltaDS.FieldByName('SupplierShipPlanObjectNo').OldValue ;
    SQL:= Format ('UPDATE dbo.SupplierShippingPlan SET %s ' +
    'WHERE SupplierShipPlanObjectNo = %d', [SQL, SupplierShipPlanObjectNo]) ;
    Connection.Execute(SQL, nil, nil) ;
   End ; //end update SupplierShippingPlan



//============================== ProdInstru update ==========================

  End ;//ukModify
 End ;//Case
 Applied := True;
end;

*)

procedure TdmcOrder.SkapaPaketKoder (InfoList : TStrings) ;
Begin
//This is internal and ADD LO's
 CheckIfPkgCodeNeedsToBeGeneratedFor_ELO (InfoList) ;
 CheckIfPkgCodeNeedsToBeGeneratedFor_LO (InfoList) ;

{ cdsSawmillLoadOrders.First ;
 While not cdsSawmillLoadOrders.Eof do
 Begin
  if cdsSawmillLoadOrdersObjectType.AsInteger <> 2 then
   CheckIfPkgCodeNeedsToBeGeneratedFor_ELO (InfoList) ;
  cdsSawmillLoadOrders.Next ;
 End ; }
End ;

function TdmcOrder.ELOLengthsChanged_for_specific_ELORow : Boolean ;
Begin
 Result:= False ;
 cds_ELOLengths.First ;
 While not cds_ELOLengths.Eof do
 Begin
  if cds_ELOLengthsPkgCodePPNo.IsNull then
  Begin
   Result:= True ;
   Break ;
  End ;//if..
  cds_ELOLengths.Next ;
 End ;
End ;

function TdmcOrder.LOLengthsChanged_for_specific_LORow : Boolean ;
Begin
 Result:= False ;
 cds_LOLengths.First ;
 While not cds_LOLengths.Eof do
 Begin
  if cds_LOLengthsPkgCodePPNo.IsNull then
  Begin
   Result:= True ;
   Break ;
  End ;//if..
  cds_LOLengths.Next ;
 End ;
End ;

procedure TdmcOrder.CheckIfPkgCodeNeedsToBeGeneratedFor_LO(InfoList : TStrings) ;
Var 
    Save_Cursor : TCursor;
//    PIChanged,
    LayOutChanged,
    LOLengthChanged,
    ChangeCode  : Boolean ;
    x           : Integer ;
begin
 x := 0 ;

// with dmPkgCode do
 Begin
  cds_PPNo.Active       := False ;
  cds_PPNo.Active       := True ;
  cds_PkgOwner.Active   := False ;
  cds_PkgOwner.Active   := True ;
  cds_PkgCodeO.Active   := False ;
  cds_PkgCodeO.Active   := True ;
//  cds_LOLengths.MasterSource:= nil ;
//  cds_OLLayout.MasterSource := nil ;
//  dmPkgCode:= TdmPkgCode.Create(nil);
  cds_LOLengths.BeforePost      := nil ;
//  ds_OrderRow.OnDataChange:= nil ; //ds_OrderRowDataChange
//  cds_OrderRow.DisableControls ;
  Try
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 cdsSawmillLoadOrders.DisableControls ;
 Try
  cdsSawmillLoadOrders.Filter := 'ObjectType = 2' ;
  Try
  cdsSawmillLoadOrders.Filtered:= True ;
  cdsSawmillLoadOrders.First ;

   While not cdsSawmillLoadOrders.Eof do
   Begin
//    cds_OrderRow.Filter         := 'OrderLineNo = ' + cds_LOOrderLineNo.AsString ;
//    cds_OrderRow.Filtered       := True ;

    if cdsSawmillLoadOrdersProdInstruNo.IsNull then
     cds_PI_ELO.Filter          := 'ProdInstruNo = -1'
      else
       cds_PI_ELO.Filter          := 'ProdInstruNo = ' + cdsSawmillLoadOrdersProdInstruNo.AsString ;

//    PIChanged                   := PIChanged_for_specific_OrderRow ;

    cds_OLLayout.Filter         := 'OrderLineNo = ' + cdsSawmillLoadOrdersOrderLineNo.AsString + ' AND OrderNo = ' + cdsSawmillLoadOrdersOrderNo.AsString ;
//    cds_OLLayout.Filtered       := True ;
//    if cds_OLLayout.RecordCount > 0 then
//     LayOutChanged               := LayoutChanged_for_specific_OrderRow(cdsSawmillLoadOrdersOrderLineNo.AsInteger)
//      else
//       InfoList.Add('**** Layout saknas på kontraktsradNr ' + cdsSawmillLoadOrdersOrderLineNo.AsString + ' Paketkod ej uppdaterad') ;
//    cds_LOLengths.Filter        := 'SupplierShipPlanObjectNo = ' + cds_LOSupplierShipPlanObjectNo.AsString ;
//    cds_LOLengths.Filtered      := True ;
    cds_LOLengths.Active:= False ;
    cds_LOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
    cds_LOLengths.Active:= True ;
    LOLengthChanged             := LOLengthsChanged_for_specific_LORow ;
//    if (cds_OLLayout.RecordCount > 0) AND ( (cdsSawmillLoadOrders.UpdateStatus in [usModified, usInserted]) or (LOLengthChanged) //or (LayOutChanged) or (PIChanged)
//    or ((cdsSawmillLoadOrdersPkgCodePPNo.IsNull) or (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger < 1))) then
    if ( (cdsSawmillLoadOrders.UpdateStatus in [usModified, usInserted]) or (LOLengthChanged) //or (LayOutChanged) or (PIChanged)
    or ((cdsSawmillLoadOrdersPkgCodePPNo.IsNull) or (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger < 1))) then
    Begin
 //Kolla om den har ändrats i vissa fält
//    if dmProduct.ProductCategoryIsWoodLumber(cdsSawmillLoadOrdersProductNo.NewValue) = 0 then
    Begin
    ChangeCode:= False ;
//    if PIChanged then
//     ChangeCode := True ;
    if LOLengthChanged then
     ChangeCode := LOLengthChanged ;
//    if LayOutChanged then
//     ChangeCode := LayOutChanged ;
//    if cds_LOProductLengthNo.OldValue <> cds_LOProductLengthNo.NewValue then
//     ChangeCode := True ;
//    if cds_LOProductNo.OldValue <> cds_LOProductNo.NewValue then
//     ChangeCode := True ;
    if cdsSawmillLoadOrdersPcsPerPkg.OldValue <> cdsSawmillLoadOrdersPcsPerPkg.NewValue then
     ChangeCode := True ;
    if (cdsSawmillLoadOrdersPkgCodePPNo.IsNull) or (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger < 1) then
     ChangeCode := True ;
    if cdsSawmillLoadOrdersShippingPlanStatus.AsInteger in [STATUS_PRELIMINARY, STATUS_REJECTED, STATUS_COMPLETE, STATUS_PRODUCTION_COMPLETE, STATUS_ANNULERAD, STATUS_ANNULERAD_BEKRAFTAD] then
     ChangeCode := False ;
    if ChangeCode then
    Begin
     cds_OLLayout.Active:= False ;
     cds_OLLayout.ParamByName('OrderNo').AsInteger     := cdsSawmillLoadOrdersOrderNo.AsInteger ;
     cds_OLLayout.ParamByName('OrderLineNo').AsInteger := cdsSawmillLoadOrdersOrderLineNo.AsInteger ;
     cds_OLLayout.Active:= True ;

    //mtProduct används för att skapa paketTYP
     mtProduct.Active:= False ;
     mtProduct.Active:= True ;
     mtPkgLengths.Active:= False ;
     mtPkgLengths.Active:= True ;

     mtProduct.Insert ;
     mtProductProductNo.AsInteger          := cdsSawmillLoadOrdersProductNo.AsInteger ;
     mtProductBarCodeNo.AsInteger          := cds_PI_ELOBarCodeID.AsInteger ;
     mtProductGradeStampNo.AsInteger       := cds_PI_ELOStamp.AsInteger ;
     mtProductTotalPcs.AsInteger           := cdsSawmillLoadOrdersPcsPerPkg.AsInteger ;
     mtProduct.Post ;

     mtPkgLengths.Insert ;
     mtPkgLengthsProductLengthNo.AsInteger := cdsSawmillLoadOrdersProductLengthNo.AsInteger ;
     mtPkgLengths.Post ;

     SkapaEnKodFor_LO(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger, cdsSawmillLoadOrdersLanguageCode.AsInteger, False, cdsSawmillLoadOrdersAT.AsString, cdsSawmillLoadOrdersAB.AsString, cdsSawmillLoadOrdersALMM.AsString, cdsSawmillLoadOrdersRADREFERENS.AsString) ;

     if cdsSawmillLoadOrdersPkgCodePPNo.AsInteger <> mtPkgLengthsPkgCodePPNo.AsInteger then
     Begin
      //Räkna upp hur många huvudkoder som gjorts
      InfoList.Add('Paketkod ändrad på LOnr/radID ' + cdsSawmillLoadOrdersLONumber.AsString + '/' + cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsString + ' Variantnr= ' + mtPkgLengthsPkgCodePPNo.AsString) ;
     End ;

     cdsSawmillLoadOrders.Edit ;
     cdsSawmillLoadOrdersSequenceNo.AsInteger         := mtPkgLengthsPackageTypeNo.AsInteger ;
     cdsSawmillLoadOrdersPkgCodePPNo.AsInteger        := mtPkgLengthsPkgCodePPNo.AsInteger ;
     cdsSawmillLoadOrdersPackageCode.AsString         := mtPkgLengthsPkgCodePPNo.AsString ;
     cdsSawmillLoadOrders.Post ;

     if mtPkgLengthsPkgCodePPNo.AsInteger > 0 then
      x := succ(x) ;

     if (cdsSawmillLoadOrdersALMM.AsInteger < 1 {cds_LOALMM.AsFloat < 1}) and (mtPkgLengthsPkgCodePPNo.AsInteger > 0) then
      CreateUnderKoderTillNollangd_for_LO (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger) ;
//Spara undan LO längder
  if cds_LOLengths.ChangeCount > 0 then
  Begin
   cds_LOLengths.ApplyUpdates(0) ;
   cds_LOLengths.CommitUpdates ;
  End ;

    End ;//if ChangeCode then
    End ;//if ProductCategoryIsWoodLumber(cds_LOProductNo.NewValue) = 0 then
    End ;//if cds_LO.UpdateStatus in [usModified, usInserted] then
    cdsSawmillLoadOrders.Next ;
   End ;//While

  Finally
//   cds_OrderRow.Filtered  := False ;
//   cds_LO.Filter          := LOFilter ;
   cdsSawmillLoadOrders.Filtered        := False ;
//   cds_LOLengths.Filtered := False ;
  End ;

 finally
  cdsSawmillLoadOrders.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 Finally
  cds_PkgCodeO.Active       := False ;
  cds_PPNo.Active           := False ;
  cds_PkgOwner.Active       := False ;
//  FreeAndNil(dmPkgCode) ;
//  cds_LOLengths.MasterSource          := ds_LO ;
//  cds_OLLayout.Filtered     := False ;
//  cds_OLLayout.MasterSource           := ds_OrderRow ;
  cds_LOLengths.Active                := False ;
  cds_LOLengths.BeforePost            := cds_LOLengthsBeforePost ;
// ds_OrderRow.OnDataChange:= ds_OrderRowDataChange ;
// cds_OrderRow.EnableControls ;
 End ;
 End ;//With

end;

procedure TdmcOrder.CheckIfPkgCodeNeedsToBeGeneratedFor_ELO (InfoList : TStrings) ;
Var LOFilter    : String ;
    Save_Cursor : TCursor;
//    PIChanged,
    LayOutChanged,
    LOLengthChanged,
    ChangeCode  : Boolean ;
    Languagecode,
    x           : Integer ;
begin
 x := 0 ;
// with dmPkgCode do
// Begin
  Try
  cds_PPNo.Active             := False ;
  cds_PPNo.Active             := True ;
  cds_PkgOwner.Active         := False ;
  cds_PkgOwner.Active         := True ;
  cds_PkgCodeO.Active         := False ;
  cds_PkgCodeO.Active         := True ;

//  cds_ELOLayout.Filter         := 'SupplierShipPlanObjectNo = -1' ;
//  cds_ELOLayout.Active         := True ;
//  cds_ELOLengths.MasterSource  := nil ;
//  cds_ELOLayout.MasterSource   := nil ;
//  dmPkgCode:= TdmPkgCode.Create(nil);
  cds_ELOLengths.BeforePost    := nil ;
  Try
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 cdsSawmillLoadOrders.DisableControls ;
 Try

  LOFilter:= cdsSawmillLoadOrders.Filter ;
  cdsSawmillLoadOrders.Filter := 'ObjectType < 2' ;
  Try
   cdsSawmillLoadOrders.Filtered:= True ;
   cdsSawmillLoadOrders.First ;

   While not cdsSawmillLoadOrders.Eof do
   Begin
    if cdsSawmillLoadOrdersProdInstruNo.IsNull then
     cds_PI_ELO.Filter          := 'ProdInstruNo = -1'
      else
       cds_PI_ELO.Filter          := 'ProdInstruNo = ' + cdsSawmillLoadOrdersProdInstruNo.AsString ;

//    PIChanged                  := PIChanged_for_specific_ADDLORow ;
//    cds_ELOLayout.Filter       := 'SupplierShipPlanObjectNo = ' + cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsString ;
//    cds_ELOLayout.Filtered     := True ;
//    if cds_ELOLayout.RecordCount > 0 then
//     LayOutChanged              := LayoutChanged_for_specific_ADDLORow(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger)
//      else
//       InfoList.Add('**** Layout saknas på ADD LOnr/radID ' + cdsSawmillLoadOrdersShippingPlanNo.AsString + '/' + cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsString + ' Paketkod ej uppdaterad') ;

//    cds_ELOLengths.Filter      := 'SupplierShipPlanObjectNo = ' + cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsString ;
//    cds_ELOLengths.Filtered    := True ;
    cds_ELOLengths.Active:= False ;
    cds_ELOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
    cds_ELOLengths.Active:= True ;
    LOLengthChanged            := ELOLengthsChanged_for_specific_ELORow ;
//    if (cds_ELOLayout.RecordCount > 0) AND ( (cdsSawmillLoadOrders.UpdateStatus in [usModified, usInserted]) // or (LOLengthChanged) or (LayOutChanged) or (PIChanged)
//        or ((cdsSawmillLoadOrdersPkgCodePPNo.IsNull) or (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger < 1))) then
    if  ( (cdsSawmillLoadOrders.UpdateStatus in [usModified, usInserted])  or (LOLengthChanged) //or (LayOutChanged) or (PIChanged)
        or ((cdsSawmillLoadOrdersPkgCodePPNo.IsNull) or (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger < 1))) then
//    if cdsSawmillLoadOrders.UpdateStatus in [usModified, usInserted] then
    Begin
 //Kolla om den har ändrats i vissa fält
//    if dmProduct.ProductCategoryIsWoodLumber(cdsSawmillLoadOrdersProductNo.NewValue) = 0 then
    if 0 = 0 then
    Begin
    ChangeCode:= False ;
//    if PIChanged then
//     ChangeCode := PIChanged ;
    if LOLengthChanged then
     ChangeCode := LOLengthChanged ;
//    if LayOutChanged then
//     ChangeCode := LayOutChanged ;
//    if cdsSawmillLoadOrdersProductLengthNo.OldValue <> cdsSawmillLoadOrdersProductLengthNo.NewValue then
//     ChangeCode := True ;
//    if cdsSawmillLoadOrdersProductNo.OldValue <> cdsSawmillLoadOrdersProductNo.NewValue then
//     ChangeCode := True ;
    if cdsSawmillLoadOrdersPcsPerPkg.OldValue <> cdsSawmillLoadOrdersPcsPerPkg.NewValue then
     ChangeCode := True ;
    if (cdsSawmillLoadOrdersPkgCodePPNo.IsNull) or (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger < 1) then
     ChangeCode := True ;
    if cdsSawmillLoadOrdersShippingPlanStatus.AsInteger in [STATUS_PRELIMINARY, STATUS_REJECTED, STATUS_COMPLETE, STATUS_PRODUCTION_COMPLETE, STATUS_ANNULERAD, STATUS_ANNULERAD_BEKRAFTAD] then
     ChangeCode := False ;
    if ChangeCode then
    Begin
     cds_ELOLayout.Active:= False ;
     cds_ELOLayout.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
     cds_ELOLayout.Active:= True ;

    //mtProduct används för att skapa paketTYP
     mtProduct.Active:= False ;
     mtProduct.Active:= True ;
     mtPkgLengths.Active:= False ;
     mtPkgLengths.Active:= True ;

     mtProduct.Insert ;
     mtProductProductNo.AsInteger          := cdsSawmillLoadOrdersProductNo.AsInteger ;
     mtProductBarCodeNo.AsInteger          := cds_PI_ELOBarCodeID.AsInteger ;
     mtProductGradeStampNo.AsInteger       := cds_PI_ELOStamp.AsInteger ;
     mtProductTotalPcs.AsInteger           := cdsSawmillLoadOrdersPcsPerPkg.AsInteger ;
     mtProduct.Post ;

     mtPkgLengths.Insert ;
     mtPkgLengthsProductLengthNo.AsInteger := cdsSawmillLoadOrdersProductLengthNo.AsInteger ;
     mtPkgLengths.Post ;

     if cdsSawmillLoadOrdersLanguageCode.IsNull then
      LanguageCode:= 1 //Swedish
       else
        LanguageCode:= cdsSawmillLoadOrdersLanguageCode.AsInteger ;

     SkapaEnKodFor_LO(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger, LanguageCode, True, FloatToStr(cdsSawmillLoadOrdersAT.AsFloat), FloatToStr(cdsSawmillLoadOrdersAB.AsFloat), cdsSawmillLoadOrdersALMM.AsString, cdsSawmillLoadOrdersRADREFERENS.AsString) ;

     if cdsSawmillLoadOrdersPkgCodePPNo.AsInteger <> mtPkgLengthsPkgCodePPNo.AsInteger then
     Begin
      //Räkna upp hur många huvudkoder som gjorts
      InfoList.Add('Paketkod ändrad på ADD LOnr/radID ' + cdsSawmillLoadOrdersLONumber.AsString + '/' + cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsString + ' Variantnr= ' + mtPkgLengthsPkgCodePPNo.AsString) ;
     End ;

     cdsSawmillLoadOrders.Edit ;
     cdsSawmillLoadOrdersSequenceNo.AsInteger        := mtPkgLengthsPackageTypeNo.AsInteger ;
     cdsSawmillLoadOrdersPkgCodePPNo.AsInteger       := mtPkgLengthsPkgCodePPNo.AsInteger ;
     cdsSawmillLoadOrdersPackageCode.AsString        := mtPkgLengthsPkgCodePPNo.AsString ;
     cdsSawmillLoadOrders.Post ;

     if mtPkgLengthsPkgCodePPNo.AsInteger > 0 then
      x := succ(x) ;
     if (cdsSawmillLoadOrdersALMM.AsFloat < 1) and (mtPkgLengthsPkgCodePPNo.AsInteger > 0) then
      CreateUnderKoderTillNollangd_for_ELO (cdsSawmillLoadOrdersPkgCodePPNo.AsInteger, LanguageCode) ;

    End ;//if ChangeCode then
    End ;//if ProductCategoryIsWoodLumber(cdsSawmillLoadOrdersProductNo.NewValue) = 0 then
    End ;//cdsSawmillLoadOrders.UpdateStatus
    if cds_ELOLengths.ChangeCount > 0 then
    Begin
     cds_ELOLengths.ApplyUpdates(0) ;
     cds_ELOLengths.CommitUpdates ;
    End ; 

    cdsSawmillLoadOrders.Next ;
   End ;//While

  Finally
//   cdsSawmillLoadOrders.Filter           := LOFilter ;
   cdsSawmillLoadOrders.Filtered         := False ;
//   cds_ELOLengths.Filtered  := False ;
  End ;


// if cdsSawmillLoadOrders.ChangeCount > 0 then
//  cdsSawmillLoadOrders.ApplyUpdates(0) ;


 finally
  cdsSawmillLoadOrders.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 Finally
  cds_PkgCodeO.Active   := False ;
  cds_PPNo.Active       := False ;
  cds_PkgOwner.Active   := False ;
  cds_ELOLayout.Active  := False ;
//  FreeAndNil(dmPkgCode) ;
  cds_ELOLengths.BeforePost      := cds_ELOLengthsBeforePost ;
 End ;

     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
// End ;//With

end;

procedure TdmcOrder.SkapaEnKodFor_LO (const ShipPlanObjectNo, LanguageCode : Integer;const ELO : Boolean;const oThickness, oWidth, oLength, ArtikelKod : String) ;
Var PPNo            : Integer ;
    SavePackageTypeResult : Boolean ;
Begin
// With dmPkgCode do
 Begin

  //Select PP where PackageTypeNo, Languagecode, SizeFormat, LengthFormat, VolumeFormat, ArtikelKod,
   //PackageTypeNo läggs i mtPkgLengthsPackageTypeNo.AsInteger
   //Skapa packageType
   SavePackageTypeResult:= SavePackageType ;
   if SavePackageTypeResult then
   Begin
   if ELO then
   PPNo:= GetPPNo_for_ADDLO(ArtikelKod, LanguageCode)
    else
     PPNo:= GetPPNo(ArtikelKod, LanguageCode) ;
   if PPNo = -1 then
   Begin
    cds_PPNo.Insert ;
    cds_PPNoPackageTypeNo.AsInteger := mtPkgLengthsPackageTypeNo.AsInteger ;
    cds_PPNooThickness.AsString     := oThickness ;
    cds_PPNooWidth.AsString         := oWidth ;
    cds_PPNooLength.AsString        := oLength ;//cds_OrderRowProdLength.AsString ;
    cds_PPNoArtikelKod.AsString     := ArtikelKod ;
    cds_PPNoLanguageCode.AsInteger  := LanguageCode ;
    cds_PPNo.Post ;

    cds_PkgOwner.Insert ;
    cds_PkgOwner.Post ;

    cds_PkgCodeO.Insert ;
    cds_PkgCodeO.Post ;

    if ELO then
     GetELOLAYOUT
      else
       GetOrderRowLAYOUT ;
    UpdatePackageCode_Layout(cds_PPNoPkgCodePPNo.AsInteger) ;

    mtPkgLengths.Edit ;
    mtPkgLengthsPkgCodePPNo.AsInteger:= cds_PPNoPkgCodePPNo.AsInteger ;
    mtPkgLengths.Post ;

   if cds_PPNo.ChangeCount > 0 then
   Begin
    cds_PPNo.ApplyUpdates(0) ;
    cds_PPNo.CommitUpdates ;
   End ;

   if cds_PkgOwner.ChangeCount > 0 then
   Begin
    cds_PkgOwner.ApplyUpdates(0) ;
    cds_PkgOwner.CommitUpdates ;
   End ;

   if cds_PkgCodeO.ChangeCount > 0 then
   Begin
    cds_PkgCodeO.ApplyUpdates(0) ;
    cds_PkgCodeO.CommitUpdates ;
   End ;

   if cds_PP_Layout.ChangeCount > 0 then
   Begin
    cds_PP_Layout.ApplyUpdates(0) ;
    cds_PP_Layout.CommitUpdates ;
   End ;

  End
   else
   Begin
    mtPkgLengths.Edit ;
    mtPkgLengthsPkgCodePPNo.AsInteger:= PPNo ;
    mtPkgLengths.Post ;
   End ;
  End //if SavePackageTypeResult then
   else
    ShowMessage('Skapa kod misslyckades för LO radnr ' + inttostr(ShipPlanObjectNo)) ;
 End ;//With
End ;

//Skapar underkoder till en nolllängd för LO
procedure TdmcOrder.CreateUnderKoderTillNollangd_for_ELO(const PkgCodePPZeroGroupNo, LanguageCode : Integer) ;
Begin
// with dmPkgCode do
 Begin
  cds_ZeroGroup.Active:= False ;
  cds_ZeroGroup.ParamByName('PkgCodePPZeroGroupNo').AsInteger  := PkgCodePPZeroGroupNo ;
  cds_ZeroGroup.Active:= True ;
// cds_LOLengths.Active:= False ;
// sq_LOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
// cds_LOLengths.Active:= True ;
 cds_ELOLengths.First ;
 While not cds_ELOLengths.Eof do
 Begin
    //mtProduct används för att skapa paketTYP
//  mtProductProductNo.AsInteger          := cds_LOProductNo.AsInteger ;
//  mtProductBarCodeNo.AsInteger          := cds_ProdInstructBarCodeID.AsInteger ;
//  mtProductGradeStampNo.AsInteger       := cds_ProdInstructStamp.AsInteger ;
//  mtProductTotalPcs.AsInteger           := cds_LOPcsPerPkg.AsInteger ;

  mtPkgLengths.Active:= False ;
  mtPkgLengths.Active:= True ;
  mtPkgLengths.Insert ;
  mtPkgLengthsProductLengthNo.AsInteger := cds_ELOLengthsProductLengthNo.AsInteger ;
  mtPkgLengths.Post ;

  SkapaEnKodFor_LO(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger, LanguageCode,
    True,
    FloatToStr(cdsSawmillLoadOrdersAT.AsFloat), FloatToStr(cdsSawmillLoadOrdersAB.AsFloat),
    cds_ELOLengthsActualLengthMM.AsString, cdsSawmillLoadOrdersReference.AsString) ;

//  SkapaEnKodFor_LO(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger, LanguageCode,
//    True,
//    FloatToStr(cdsSawmillLoadOrdersAT.AsFloat), FloatToStr(cdsSawmillLoadOrdersAB.AsFloat),
//    cdsSawmillLoadOrdersALMM.AsString, cdsSawmillLoadOrdersReference.AsString) ;

//    SkapaEnKodFor_LO(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger,
//    cdsSawmillLoadOrdersLanguageCode.AsInteger, False, cdsSawmillLoadOrdersAT.AsString,
//    cdsSawmillLoadOrdersAB.AsString, cds_LOLengthsActualLengthMM.AsString, cdsSawmillLoadOrdersRADREFERENS.AsString) ;

  if not cds_ZeroGroup.Locate('PkgCodePPNo', mtPkgLengthsPkgCodePPNo.AsInteger { dmsSystem.cds_PPNoPkgCodePPNo.AsInteger}, []) then
  Begin
   cds_ZeroGroup.Insert ;
   cds_ZeroGroupPkgCodePPZeroGroupNo.AsInteger := PkgCodePPZeroGroupNo ;
   cds_ZeroGroupPkgCodePPNo.AsInteger          := mtPkgLengthsPkgCodePPNo.AsInteger ;
   cds_ZeroGroup.Post ;
   if cds_ZeroGroup.ChangeCount > 0 then
   Begin
    cds_ZeroGroup.ApplyUpdates(0) ;
    cds_ZeroGroup.CommitUpdates ;
   End ;
  End ;

  cds_ELOLengths.Edit ;
  cds_ELOLengthsPkgCodePPNo.AsInteger:= mtPkgLengthsPkgCodePPNo.AsInteger ;
  cds_ELOLengths.Post ;

  cds_ELOLengths.Next ;
 End ;
 End ;//With
End ;

//Skapar underkoder till en nolllängd för LO
procedure TdmcOrder.CreateUnderKoderTillNollangd_for_LO(const PkgCodePPZeroGroupNo : Integer) ;
Begin
// with dmPkgCode do
 Begin
  cds_ZeroGroup.Active:= False ;
  cds_ZeroGroup.ParamByName('PkgCodePPZeroGroupNo').AsInteger  := PkgCodePPZeroGroupNo ;
  cds_ZeroGroup.Active:= True ;
// cds_LOLengths.Active:= False ;
// sq_LOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
// cds_LOLengths.Active:= True ;
 cds_LOLengths.First ;
 While not cds_LOLengths.Eof do
 Begin
    //mtProduct används för att skapa paketTYP
//  mtProductProductNo.AsInteger          := cds_LOProductNo.AsInteger ;
//  mtProductBarCodeNo.AsInteger          := cds_ProdInstructBarCodeID.AsInteger ;
//  mtProductGradeStampNo.AsInteger       := cds_ProdInstructStamp.AsInteger ;
//  mtProductTotalPcs.AsInteger           := cds_LOPcsPerPkg.AsInteger ;

  mtPkgLengths.Active:= False ;
  mtPkgLengths.Active:= True ;
  mtPkgLengths.Insert ;
  mtPkgLengthsProductLengthNo.AsInteger := cds_LOLengthsProductLengthNo.AsInteger ;
  mtPkgLengths.Post ;

  SkapaEnKodFor_LO(cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger, cdsSawmillLoadOrdersLanguageCode.AsInteger, False, cdsSawmillLoadOrdersAT.AsString, cdsSawmillLoadOrdersAB.AsString, cds_LOLengthsActualLengthMM.AsString, cdsSawmillLoadOrdersRADREFERENS.AsString) ;

  if not cds_ZeroGroup.Locate('PkgCodePPNo', mtPkgLengthsPkgCodePPNo.AsInteger {dmsSystem.cds_PPNoPkgCodePPNo.AsInteger}, []) then
  Begin
   cds_ZeroGroup.Insert ;
   cds_ZeroGroupPkgCodePPZeroGroupNo.AsInteger := PkgCodePPZeroGroupNo ;
   cds_ZeroGroupPkgCodePPNo.AsInteger          := mtPkgLengthsPkgCodePPNo.AsInteger ;
   cds_ZeroGroup.Post ;
   if cds_ZeroGroup.ChangeCount > 0 then
   Begin
    cds_ZeroGroup.ApplyUpdates(0) ;
    cds_ZeroGroup.CommitUpdates ;
   End ; 
  End ;

  cds_LOLengths.Edit ;
  cds_LOLengthsPkgCodePPNo.AsInteger:= mtPkgLengthsPkgCodePPNo.AsInteger ;
  cds_LOLengths.Post ;

  cds_LOLengths.Next ;
 End ;
 End ;//With
End ;

function TdmcOrder.SavePackageType : Boolean ;
Var
    Save_Cursor       : TCursor;
    OLDPackageCodeNo,
    PackageCodeNo,
    OldIndexName      : String ;
    ProdInstructionNo : Integer ;
Type
  PMyList = ^AList;
  AList = record
    ProductLengthNo: Integer;
    NoOfPieces: Integer;
  end;
var

  PkgTypeNumbers : TList;
  PackagetypeNo  : Integer ;
  MyList: TList;
  ARecord: PMyList;

  function SavePkgType : Integer ;
  Var
     iDtls : Integer ;

    procedure SelectMatchingPkgTypeHdrs;
    begin
      // First get all package type (header) records that match
      sp_PackageTypes.ParamByName('@ProductNo'    ).AsInteger := mtProductProductNo.AsInteger ;

      if mtProductBarCodeNo.AsInteger < 0 then
       sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := 0  //mtPackages.Fields[cBARCODEID].AsInteger ;
        else
         sp_PackageTypes.ParamByName('@BarCodeID'    ).AsInteger := mtProductBarCodeNo.AsInteger ;

      if mtProductGradeStampNo.AsInteger < 0 then
       sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := 0
        else
         sp_PackageTypes.ParamByName('@GradeStamp'   ).AsInteger := mtProductGradeStampNo.AsInteger ; //mtPackages.Fields[cGRADESTAMP].AsInteger ;

      sp_PackageTypes.ParamByName('@TotalPieces'  ).AsInteger := mtProductTotalPcs.AsInteger ;
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
    end;//procedure SelectMatchingPkgTypeHdrs;

    Function GetNoOfLengthsInPkg : Integer ;
    Var x : Integer ;
    Begin
     Result:= 0 ;
     New(ARecord);
     ARecord^.ProductLengthNo := mtPkgLengthsProductLengthNo.AsInteger ;// StrToInt(mtPackages.Fields[x].FieldName) ;
     ARecord^.NoOfPieces      := mtProductTotalPcs.AsInteger ; //mtPkgLengthsPieces.AsInteger ;// mtPackages.Fields[x].AsInteger ;
     MyList.Add(ARecord);
    End ;//Function GetNoOfLengthsInPkg : Integer ; }


    procedure MatchingPackageType;
    var
      LengthMatched : Boolean;
      NoOfLengths, iDtl : Integer;
    begin
      // Check which if a selected package type hdr matches in terms of length details
//      if dmsPkgType.InputOption = INPUT_PIECES then
      NoOfLengths := GetNoOfLengthsInPkg ;
      PackagetypeNo := NO_MATCH;
      while (PkgTypeNumbers.Count > 0) and (PackageTypeNo = NO_MATCH) do
      begin
        try
          sp_PackageTypeDetail.Close;
          sp_PackageTypeDetail.ParamByName('@PackageTypeNo').AsInteger := Integer(PkgTypeNumbers[0]);
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
    end;//procedure MatchingPackageType;


    procedure NewPackageType ;
    // Create a new package type header record, and associated package type details records.
    // Return the PackageTypeNo for new header record.
    var
      iDtl : Integer;
    begin
      PackageTypeNo := dmsConnector.NextMaxNo('PackageType');
      Try
      sp_NewPackageType_II.Close ;
      sp_NewPackageType_II.ParamByName('@PackageTypeNo'   ).AsInteger := PackageTypeNo;
      sp_NewPackageType_II.ParamByName('@ProductNo'       ).AsInteger := mtProductProductNo.AsInteger ;
      if mtProductBarCodeNo.AsInteger < 0 then
       sp_NewPackageType_II.ParamByName('@BarCodeID'       ).AsInteger := 0
        else
         sp_NewPackageType_II.ParamByName('@BarCodeID'       ).AsInteger := mtProductBarCodeNo.AsInteger ;

      if mtProductGradeStampNo.AsInteger < 0 then
       sp_NewPackageType_II.ParamByName('@GradeStamp'      ).AsInteger := 0
        else
         sp_NewPackageType_II.ParamByName('@GradeStamp'      ).AsInteger := mtProductGradeStampNo.AsInteger ;
      sp_NewPackageType_II.ParamByName('@TotalNoOfPieces' ).AsInteger := mtProductTotalPcs.AsInteger ;

      sp_NewPackageType_II.ParamByName('@UserID').AsInteger := ThisUser.UserID;
      sp_NewPackageType_II.ParamByName('@ProdInstruNo').AsInteger := -1 ;//dmsSystem.cds_ProdInstructProdInstruNo.AsInteger ;


      sp_NewPackageType_II.ExecProc;
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
  //      sp_NewPackageDetail.ParamByName('DateCreated'    ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(WhenCreated) ;
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

    end;//    procedure NewPackageType ;

  procedure SavePackageTypeLengths ;
  Begin
   if mtProductTotalPcs.AsInteger > 0 then
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
  End ;//procedure  SavePackageTypeLengths ;

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
  end;//procedure SavePkgTotals( PackageTypeNo : Integer );

//SavePkgType PROC START
  begin
    PkgTypeNumbers := TList.Create;
    MyList := TList.Create;

    try
      SelectMatchingPkgTypeHdrs;
      MatchingPackageType ;
      if PackagetypeNo = NO_MATCH then
       Begin
        Result:= NO_MATCH ;
        NewPackageType ;
        SavePkgTotals(PackageTypeNo);
        SavePackageTypeLengths ;
        AddPkgTypeColumns(PackageTypeNo, mtProductTotalPcs.AsInteger);
        Result:= PackagetypeNo ;
       End
       else
       Result:= PackageTypeNo ;

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
  end;//SavePkgType PROC END

//SavePackageType MAIN PROC START
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 mtPkgLengths.Filter:= 'Status = 1' ;
 mtPkgLengths.Filtered:= True ;

Try
  OLDPackageCodeNo  := '' ;
  ProdInstructionNo := -1 ;
  Result:= False ;
  mtPkgLengths.First ;
  While not mtPkgLengths.Eof do
  Begin
  dmsConnector.StartTransaction ;
  try
    if SavePkgType <> NO_MATCH then
    Begin
     Try
{     if Length(Trim(mtPkgLengthsPackageCodeNo.AsString)) = 0 then
      OLDPackageCodeNo:= GetPackageCode (PackageTypeNo) ;

     if Length(OLDPackageCodeNo) = 0 then
     Begin
      if Length(Trim(mtPkgLengthsPackageCodeNo.AsString)) > 0 then
       PackageCodeNo:= Trim(mtPkgLengthsPackageCodeNo.AsString)
        else
         PackageCodeNo:= inttostr(PackageTypeNo) ;

     End ; }

       mtPkgLengths.Edit ;
//       mtPkgLengthsPackageCodeNo.AsString  := inttostr(PackageTypeNo) ;
       mtPkgLengthsPackageTypeNo.AsInteger := PackageTypeNo ;
//          mtPackages.Post ;

     Except
//      ShowMessage('För pakettypnr '+IntToStr(PackageTypeNo)+' finns det redan en paketkod upplagd eller så är externkod eller vidakod använd av ett annat pakettypnr') ;
      Raise ;
     End ;
    End ;//if SavePkgType <> NO_MATCH then
//    mtPackageTypes.Insert ;
//    mtPackageTypesPackageTypeNo.AsInteger:= PackageTypeNo ;
//    mtPackageTypes.Post ;

    dmsConnector.Commit ;
    Result:= True ;
  except
    dmsConnector.Rollback ;
    Result:= False ;
  end;

  mtPkgLengths.Next ;
  PackageTypeNo:= -1 ;
 end;

 Finally
  mtPkgLengths.Filtered:= False ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;//SavePackageType MAIN PROC END

Function TdmcOrder.GetPPNo_for_ADDLO(const ArtikelKod : String;const LanguageCode : Integer) : Integer ;
//Var PkgCodePPNo : Integer ;
Var NoGood : Boolean ;
Begin
// With dmPkgCode do
 Begin
 Result:= -1 ;
 sq_GetPPNo.ParamByName('PackageTypeNo').AsInteger  := mtPkgLengthsPackageTypeNo.AsInteger ;
 sq_GetPPNo.ParamByName('Languagecode').AsInteger   := LanguageCode ;
 sq_GetPPNo.ParamByName('SizeFormat').AsInteger     := 1 ;
 sq_GetPPNo.ParamByName('LengthFormat').AsInteger   := 1 ;
 sq_GetPPNo.ParamByName('VolumeFormat').AsInteger   := 1 ;
 sq_GetPPNo.ParamByName('ArtikelKod').AsString      := ArtikelKod ;

 sq_GetPPNo.Open ;
 Try
 While (not sq_GetPPNo.Eof) and (Result = -1) do
 Begin
  cds_PP_Layout.Active:= False ;
  cds_PP_Layout.ParamByName('PkgCodePPNo').AsInteger:= sq_GetPPNoPkgCodePPNo.AsInteger ;
  cds_PP_Layout.Active:= True ;

  if (cds_ELOLayout.RecordCount = 0) and (cds_PP_Layout.RecordCount = 0) then
   Result:= sq_GetPPNoPkgCodePPNo.AsInteger
    else
  if cds_ELOLayout.RecordCount = cds_PP_Layout.RecordCount then
  Begin
   NoGood:= False ;
   cds_ELOLayout.First ;
   While not cds_ELOLayout.Eof do
   Begin
    if not cds_PP_Layout.Locate('LayoutNo', cds_ELOLayoutLayoutNo.AsInteger, []) then
     Begin
      Result:= -1 ;
      NoGood:= True ;
      Break ;
     End ;
    if cds_ELOLayoutAntalKopior.AsInteger = cds_PP_LayoutAntalKopior.AsInteger then
     Result:= sq_GetPPNoPkgCodePPNo.AsInteger
      else
       Begin
        Result:= -1 ;
        NoGood:= True ;
        Break ;
       End ;
//    if Result > -1 then
//     Break ;
    cds_ELOLayout.Next ;
   End ;
   if NoGood = False then
   Result:= sq_GetPPNoPkgCodePPNo.AsInteger ;
//   PkgCodePPNo:= sq_GetPPNoPkgCodePPNo.AsInteger ;
  End ;

  //Kolla att layouterna är lika, både antal layouter och layoutNo
  //If Lika then Result:= PkgCodePPNo else Result:= -1 ;
  sq_GetPPNo.Next ;
 End ;

// Result:= PkgCodePPNo ;
 Finally
  cds_PP_Layout.Active:= False ;
  sq_GetPPNo.Close ;
 End ;
 End ;//With
End ;

Function TdmcOrder.GetPPNo(const ArtikelKod : String;const LanguageCode : Integer) : Integer ;
//Var PkgCodePPNo : Integer ;
Var NoGood : Boolean ;
Begin
// With dmPkgCode do
 Begin
  Result:= -1 ;
  sq_GetPPNo.ParamByName('PackageTypeNo').AsInteger  := mtPkgLengthsPackageTypeNo.AsInteger ;
  sq_GetPPNo.ParamByName('Languagecode').AsInteger   := LanguageCode ;
  sq_GetPPNo.ParamByName('SizeFormat').AsInteger     := 1 ;
  sq_GetPPNo.ParamByName('LengthFormat').AsInteger   := 1 ;
  sq_GetPPNo.ParamByName('VolumeFormat').AsInteger   := 1 ;
  sq_GetPPNo.ParamByName('ArtikelKod').AsString      := ArtikelKod ;

 sq_GetPPNo.Open ;
 Try
 While (not sq_GetPPNo.Eof) and (Result = -1) do
 Begin
  cds_PP_Layout.Active:= False ;
  cds_PP_Layout.ParamByName('PkgCodePPNo').AsInteger:= sq_GetPPNoPkgCodePPNo.AsInteger ;
  cds_PP_Layout.Active:= True ;

  if (cds_OLLayout.RecordCount = 0) and (cds_PP_Layout.RecordCount = 0) then
   Result:= sq_GetPPNoPkgCodePPNo.AsInteger
    else
  if cds_OLLayout.RecordCount = cds_PP_Layout.RecordCount then
  Begin
   NoGood:= False ;
   cds_OLLayout.First ;
   While not cds_OLLayout.Eof do
   Begin
    if not cds_PP_Layout.Locate('LayoutNo', cds_OLLayoutLayoutNo.AsInteger, []) then
     Begin
      Result:= -1 ;
      NoGood:= True ;
      Break ;
     End ;
    if cds_OLLayoutAntalKopior.AsInteger = cds_PP_LayoutAntalKopior.AsInteger then
     Result:= sq_GetPPNoPkgCodePPNo.AsInteger
      else
       Begin
        Result:= -1 ;
        NoGood:= True ;
        Break ;
       End ;
    cds_OLLayout.Next ;
   End ;
   if NoGood = False then
   Result:= sq_GetPPNoPkgCodePPNo.AsInteger ;
  End ;

//  if Result > -1 then
//   Break ;
  //Kolla att layouterna är lika, både antal layouter och layoutNo
  //If Lika then Result:= PkgCodePPNo else Result:= -1 ;
  sq_GetPPNo.Next ;
 End ;

 Finally
  cds_PP_Layout.Active:= False ;
  sq_GetPPNo.Close ;
 End ;
 End ;//With
End ;

procedure TdmcOrder.GetELOLAYOUT ;
Var x, i : Integer ;
begin
  cds_ELOLayout.First ;
  x:= 1 ;
  While not cds_ELOLayout.Eof do
  Begin
   SetLength(PackageCode_Layout, x) ;
   SetLength(PackageCode_Layout[x-1], cds_ELOLayout.FieldCount) ;
   for i:= 0 to 1 do //cds_ELOLayout.FieldCount-1 do
   Begin
    PackageCode_Layout[x-1,i]:= cds_ELOLayout.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cds_ELOLayout.Next ;
  End ;
end;

procedure TdmcOrder.UpdatePackageCode_Layout (const PkgCodePPNo : Integer) ;
Var x, i : Integer ;
Begin
  cds_PP_Layout.Active:= False ;
  cds_PP_Layout.ParamByName('PkgCodePPNo').AsInteger:= PkgCodePPNo ;
  cds_PP_Layout.Active:= True ;
  For x := Low(PackageCode_Layout) to High(PackageCode_Layout) do
  Begin
   if not cds_PP_Layout.Locate('LayoutNo', PackageCode_Layout[x,0], []) then
   Begin
    cds_PP_Layout.Insert ;
    For i := 0 to 1 do //cds_PP_Layout.FieldCount-1 do
    cds_PP_Layout.Fields[i].Value:= PackageCode_Layout[x,i] ;
    cds_PP_LayoutPkgCodePPNo.AsInteger:= PkgCodePPNo ;
    cds_PP_Layout.Post ;
   End ;
  End ;//for x
End ;

procedure TdmcOrder.GetOrderRowLAYOUT ;
Var x, i : Integer ;
begin
  cds_OLLayout.First ;
  x:= 1 ;
  While not cds_OLLayout.Eof do
  Begin
   SetLength(PackageCode_Layout, x) ;
   SetLength(PackageCode_Layout[x-1], cds_OLLayout.FieldCount) ;
   for i:= 0 to 1 do //cds_OLLayout.FieldCount-1 do
   Begin
    PackageCode_Layout[x-1,i]:= cds_OLLayout.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cds_OLLayout.Next ;
  End ;
end;

procedure TdmcOrder.AddPkgTypeColumns(const PackageTypeNo, AntalStyck : Integer) ;
Begin
 //Om längdgrupper ändras justeras pakettypskolumner när längdgrupp sparas, här läggs pakettypen upp för de längdgrupper som finns för tillfället
 if AntalStyck > 0 then
 Begin
//  sp_lencolm3pkgtypeno.ParamByName('SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
//  sp_lencolm3pkgtypeno.ExecProc ;
  Try
  sp_lencolpcspkgtypeno.ParamByName('@SearchPackageTypeNo').AsInteger:= PackageTypeNo ;
  sp_lencolpcspkgtypeno.ExecProc ;
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

procedure TdmcOrder.mtPkgLengthsAfterInsert(DataSet: TDataSet);
begin
 mtPkgLengthsStatus.AsInteger:= 1 ; //1 = ny inmatning
end;

procedure TdmcOrder.RemoveCodeFromZeroGroup(const PkgCodePPZeroGroupNo, PkgCodePPNo : Integer) ;
Begin
 Try
 sq_RemFromZeroGroup.ParamByName('PkgCodePPZeroGroupNo').AsInteger  := PkgCodePPZeroGroupNo ;
 sq_RemFromZeroGroup.ParamByName('PkgCodePPNo').AsInteger           := PkgCodePPNo ;
 sq_RemFromZeroGroup.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
End ;

procedure TdmcOrder.SaveUserProps (const Form : String) ;
Var x : Integer ;
Begin
// if mtProps.State in [dsEdit, dsInsert] then
// mtProps.Post ;
 if cds_Props.State in [dsEdit, dsInsert] then
  cds_Props.Post ;
 if cds_Props.ChangeCount > 0 then
 Begin
  cds_Props.ApplyUpdates(0) ;
  cds_Props.CommitUpdates ;
 End ;
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
End ;

procedure TdmcOrder.LoadUserProps (const Form : String) ;
Var VerkNo : Integer ;
Begin
// mtProps.Active:= True ;
 cds_Props.Active := False ;
 cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 cds_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  cds_Props.Edit ;
  VerkNo  := cds_PropsVerkNo.AsInteger ;
  cds_PropsVerkNo.AsInteger := VerkNo ;
  cds_Props.Post ;

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
  cds_PropsSupplierCode.AsString  := dmsContact.GetClientCode(ThisUser.CompanyNo) ;
  cds_PropsLengthGroupNo.AsInteger:= -1 ;
  cds_Props.Post ;
 End ;
// cds_Props.Active:= False ;
End ;

procedure TdmcOrder.ModifiedTheUserOnLO ;
Begin
 if cdsSawmillLoadOrders.State in [dsBrowse] then
  cdsSawmillLoadOrders.Edit ;
 cdsSawmillLoadOrdersModifiedUser.AsInteger:= ThisUser.UserID ;
End ;


procedure TdmcOrder.CngLOonLoad(const LoadNo, NewLONo : Integer) ;
Begin
 sp_CngLOonLoad.ParamByName('@LoadNo').AsInteger   := LoadNo ;
 sp_CngLOonLoad.ParamByName('@NewLONo').AsInteger  := NewLONo ;
 Try
 sp_CngLOonLoad.ExecProc ;
 except
  On E: Exception do
  Begin
// dmsSystem.FDoLog(E.Message) ;
   ShowMessage(E.Message);
   Raise ;
  End ;
 end;
End ;

function TdmcOrder.ValidLO(const LONo : Integer) : Boolean ;
Var SupplierNo : Integer ;
Begin
 if ThisUser.CompanyNo = 741 then
  SupplierNo:= cdsLoadsForLO_forVWSupplierNo.AsInteger
  else
   SupplierNo := cdsLoadsForLOSupplierNo.AsInteger ;

 sq_ValidLONr.ParamByName('LONo').AsInteger       := LONo ;
 if ThisUser.CompanyNo = 741 then
  sq_ValidLONr.ParamByName('SupplierNo').AsInteger := SupplierNo
  else
   sq_ValidLONr.ParamByName('SupplierNo').AsInteger       := SupplierNo ;
 sq_ValidLONr.ParamByName('ProductNo').AsInteger          := cdsSawmillLoadOrdersProductNo.AsInteger ;
 sq_ValidLONr.ParamByName('LoadingLocationNo').AsInteger  := cdsSawmillLoadOrdersLoadingLocationNo.AsInteger ;

 sq_ValidLONr.Open ;
 Try
 if (not sq_ValidLONr.Eof) and (sq_ValidLONrShippingPlanNo.AsInteger > 0) then
  Begin
   if (sq_ValidLONrSupplierNo.AsInteger = SupplierNo)
   and (sq_ValidLONrLoadingLocationNo.AsInteger = cdsSawmillLoadOrdersLoadingLocationNo.AsInteger) then
   Result:= True
   else
   Result:= False ;
  End
   else
    Result := False ;
 Finally
  sq_ValidLONr.Close ;
 End ;
End ;

function TdmcOrder.OrderTypeOrderType(const SupplierNo, LONo : Integer) : Integer ;
Begin
 sq_OrderType.ParamByName('SupplierNo').AsInteger := SupplierNo ;
 sq_OrderType.ParamByName('LONo').AsInteger       := LONo ;
 sq_OrderType.Open ;
 Try
  if not sq_OrderType.Eof then
   Result:= sq_OrderTypeOrderType.AsInteger
    else
     Result:= -1 ;
 Finally
  sq_OrderType.Close ;
 End ;
End ;

procedure TdmcOrder.provBookingGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'Booking' ;
end;

function TdmcOrder.LO_LoadingLocationIsLegoLoadingLocation(const LONo, LoggedInCompanyNo : Integer) : Boolean ;
Begin
 sq_LegoHasLL.ParamByName('LoggedInCompanyNo').AsInteger  := LoggedInCompanyNo ;
 sq_LegoHasLL.ParamByName('LONo').AsInteger               := LONo ;
 sq_LegoHasLL.Open ;
 Try
  if not sq_LegoHasLL.Eof then
   Result:= True
    else
     Result:= False ;
 Finally
  sq_LegoHasLL.Close ;
 End ;
End ;

procedure TdmcOrder.dsp_LOListHHGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
 TableName  := 'LOListHH' ;
end;

Function TdmcOrder.CheckIfChangeToPrefix_BH1(const PkgNo, InventoryOwner, UserCompanyLoggedOn, LONo : Integer;const Prefix : string3) : string3 ;
//InventoryOwner = Supplier på LO
function Does_BTH_Exist_In_Inventory_And_As_Product_In_LO : Boolean ;
Begin
  sq_BTHExistInLager.ParamByName('PkgNo').AsInteger                := PkgNo;
  sq_BTHExistInLager.ParamByName('InvOwner').AsInteger             := InventoryOwner ;
  sq_BTHExistInLager.ParamByName('UserCompanyLoggedOn').AsInteger  := UserCompanyLoggedOn ;
  sq_BTHExistInLager.ParamByName('LONo').AsInteger                 := LONo ;
  sq_BTHExistInLager.ParamByName('Prefix').AsString                := Prefix ;
  sq_BTHExistInLager.ParamByName('SupplierNo').AsInteger           := InventoryOwner ;
  sq_BTHExistInLager.Open ;
  if not sq_BTHExistInLager.Eof then
   Result := True
    else
     Result := False ;
End ;

Begin
 if Does_BTH_Exist_In_Inventory_And_As_Product_In_LO then
  Result := 'BTH'
   else
    Result := 'BH1' ;
End ;

Function TdmcOrder.GetTheLO_SupplierNo(const SupplierNo, LONo : Integer) : Integer ;
//            OM BTH eller BTB och båda finns i LO then fråga vem som är leverantör
var fSelectBTHorBTB: TfSelectBTHorBTB;
Begin
 Try
 sq_CheckSupplierNo.ParamByName('LONo').AsInteger := LONo ;
 sq_CheckSupplierNo.Open ;
 if ((not sq_CheckSupplierNo.Eof) and (sq_CheckSupplierNoNoOfSuppliers.AsInteger > 1) and ((SupplierNo = 2878) or (SupplierNo = 172))) then
 Begin
   fSelectBTHorBTB:= TfSelectBTHorBTB.Create(nil) ;
   try
     fSelectBTHorBTB.ShowModal ;
     if fSelectBTHorBTB.cgSelectSupplier.ItemIndex = 0 then
      Result := 172
       else
        Result := 2878 ;
   finally
    FreeAndNil(fSelectBTHorBTB) ;
   end;
 End
 else
  Result  := SupplierNo ;
 Finally
  sq_CheckSupplierNo.Close ;
 End ;
End ;

Function TdmcOrder.LoadStatusOK : Boolean ;
Begin
 Result := True ;
 if ThisUser.CompanyNo = 741 then
 Begin
  cdsLoadsForLO_forVW.First ;
  While not cdsLoadsForLO_forVW.Eof do
  Begin
   if cdsLoadsForLO_forVWSenderLoadStatus.AsInteger = 0 then
    Result := False ;
   cdsLoadsForLO_forVW.Next ;
  End ;
  if cdsLoadsForLO_forVW.RecordCount = 0 then
  Result  := False ;
 End
 else
 Begin
  cdsLoadsForLO.First ;
  While not cdsLoadsForLO.Eof do
  Begin
   if cdsLoadsForLOSenderLoadStatus.AsInteger = 0 then
    Result := False ;
   cdsLoadsForLO.Next ;
  End ;
  if cdsLoadsForLO.RecordCount = 0 then
  Result  := False ;
 End ;
End ;

Function TdmcOrder.FindLoadRecord(const LoadNo : Integer) : Boolean ;
Begin
 Result := False ;
 if ThisUser.CompanyNo = 741 then
 Begin
  if cdsLoadsForLO_forVW.Active then
  if cdsLoadsForLO_forVW.Locate('LoadNo', LoadNo,[]) then
   Result := True ;
 End
 else
 Begin
  if cdsLoadsForLO.Active then
  if cdsLoadsForLO.Locate('LoadNo', LoadNo,[]) then
   Result := True ;
 End ;
End ;

Function TdmcOrder.PkgStatus(const SupplierNo, PackageNo : Integer;const prefix : String) : Boolean ;
Begin
 Try
 sq_PkgStatus.ParamByName('SupplierNo').AsInteger   := SupplierNo ;
 sq_PkgStatus.ParamByName('PackageNo').AsInteger    := PackageNo ;
 sq_PkgStatus.ParamByName('SupplierCode').AsString  := Prefix ;
 sq_PkgStatus.Open ;
 if not sq_PkgStatus.Eof then
  Result  := sq_PkgStatusStatus.AsInteger = 1
   else
    Result  := False ;
 Finally
  sq_PkgStatus.Close ;
 End ;
End ;

procedure TdmcOrder.cdsSawmillLoadOrdersBeforePost(DataSet: TDataSet);
begin
 if cdsSawmillLoadOrdersPackageWidth.AsInteger * cdsSawmillLoadOrdersPackageHeight.AsInteger > 0 then
 cdsSawmillLoadOrdersPcsPerPkg.AsInteger    := cdsSawmillLoadOrdersPackageWidth.AsInteger * cdsSawmillLoadOrdersPackageHeight.AsInteger ;
 cdsSawmillLoadOrdersModifiedUser.AsInteger := ThisUser.UserID ;
 
end;

procedure TdmcOrder.cdsBookingAfterInsert(DataSet: TDataSet);
begin
   cdsBookingBookingNo.AsInteger        := dmsConnector.NextMaxNo('Booking') ;
   cdsBookingShippingPlanNo.AsInteger   := cdsSawmillLoadOrdersLONumber.AsInteger ;
   cdsBookingLOText.AsVariant           := dm_Booking.cdsAvropInfoLOText.AsVariant ;
   cdsBookingInvoiceText.AsVariant      := dm_Booking.cdsAvropInfoInvoiceText.AsVariant ;
   cdsBookingNoteForLoadSheet.AsVariant := dm_Booking.cdsAvropInfoNoteForLoadSheet.AsVariant ;
   cdsBookingVoyageNo.AsInteger         := cdsBookingBookingNo.AsInteger ;
 {
 with dm_Booking do
 Begin
  cdsAvropInfo.Active:= False ;
  cdsAvropInfo.ParamByName('ShippingPlanNo').AsInteger:= cdsSawmillLoadOrdersLONumber.AsInteger ;
  cdsAvropInfo.Active:= True ;
//   OrderType := cdsAvropInfoOrderType.AsInteger ;

   if cdsVoyage.Active = False then
    cdsVoyage.Active:= True ;
   cdsVoyage.Insert ;
   cdsVoyageVoyageNo.AsInteger          := cdsBookingBookingNo.AsInteger ;
   cdsVoyageCarrierNo.AsInteger         := 0 ;
   cdsVoyageCreatedUser.AsInteger       := ThisUser.UserID ;
   cdsVoyageModifiedUser.AsInteger      := ThisUser.UserID ;
   cdsVoyageDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
   cdsVoyage.Post ;
  End ;

 dm_Booking.cdsAvropInfo.Active:= False ;}
end;

procedure TdmcOrder.cds_PPNoAfterInsert(DataSet: TDataSet);
begin
 cds_PPNoPkgCodePPNo.AsInteger        := dmsConnector.NextMaxNo('Packagecode_printparams') ;
 cds_PPNoPublished.AsInteger          := 1 ;
 cds_PPNoPackageCode.AsString         := cds_PPNoPkgCodePPNo.AsString ;

 cds_PPNoSizeFormat.AsInteger         := 1 ;
 cds_PPNoLengthFormat.AsInteger       := 1 ;
 cds_PPNoVolumeFormat.AsInteger       := 1 ;
 cds_PPNoCreatedUser.AsInteger        := ThisUser.UserID ;
 cds_PPNoModifiedUser.AsInteger       := ThisUser.UserID ;
 cds_PPNoActive.AsInteger             := 1 ;
 cds_PPNoModifiedDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_PPNoCreatedDate.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(Now) ;
 cds_PPNoTagNo.AsInteger              := 0 ;

end;

procedure TdmcOrder.cds_ELOLengthsAfterInsert(DataSet: TDataSet);
begin
 cds_ELOLengthsSupplierShipPlanObjectNo.AsInteger:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
end;

procedure TdmcOrder.cds_ELOLengthsBeforePost(DataSet: TDataSet);
begin
 ModifiedTheUserOnLO ;
end;

procedure TdmcOrder.cds_LOLengthsAfterInsert(DataSet: TDataSet);
begin
 cds_LOLengthsSupplierShipPlanObjectNo.AsInteger:=  cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
end;

procedure TdmcOrder.cds_LOLengthsBeforePost(DataSet: TDataSet);
begin
 ModifiedTheUserOnLO ;
end;

procedure TdmcOrder.cds_PkgOwnerAfterInsert(DataSet: TDataSet);
begin
 cds_PkgOwnerPkgCodePPNo.AsInteger      := cds_PPNoPkgCodePPNo.AsInteger ;
 cds_PkgOwnerClientNo.AsInteger         := 741 ;
 cds_PkgOwnerCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_PkgOwnerDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmcOrder.cds_ELOLayoutAfterInsert(DataSet: TDataSet);
begin
 cds_ELOLayoutSupplierShipPlanObjectNo.AsInteger:= cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger ;
end;

procedure TdmcOrder.cds_PkgCodeOAfterInsert(DataSet: TDataSet);
begin
 cds_PkgCodeOPkgCodePPNo.AsInteger       := cds_PPNoPkgCodePPNo.AsInteger ;
 cds_PkgCodeOPackageCodeNo.AsString      := cds_PPNoPkgCodePPNo.AsString ;
 cds_PkgCodeOPackageTypeNo.AsInteger     := cds_PPNoPackageTypeNo.AsInteger ;
 cds_PkgCodeOCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_PkgCodeOModifiedUser.AsInteger      := ThisUser.UserID ;
 cds_PkgCodeODateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
 cds_PkgCodeOMarketRegionNo.AsInteger    := 0 ;
end;

procedure TdmcOrder.cds_LOListHHAfterInsert(DataSet: TDataSet);
begin
 cds_LOListHHCreatedUser.AsInteger      := ThisUser.UserID ;
 cds_LOListHHDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now) ;
end;

procedure TdmcOrder.cds_PropsVerkNoChange(Sender: TField);
begin
 RefreshOrter ;
end;

procedure TdmcOrder.RefreshOrter ;
begin
 if dmcOrder.cds_PropsVerkNo.AsInteger > 0 then
 Begin
 if dmcOrder.SupplierNo <> dmcOrder.cds_PropsVerkNo.AsInteger then
  dmcOrder.SupplierNo := dmcOrder.cds_PropsVerkNo.AsInteger ;

  sq_City.Active  := False ;
  sq_City.ParamByName('OwnerNo').AsInteger  := dmcOrder.cds_PropsVerkNo.AsInteger ;
  sq_City.Active  := True ;
 End ;
end;

procedure TdmcOrder.cds_PropsAfterInsert(DataSet: TDataSet);
begin
 cds_PropsUserID.AsInteger := ThisUser.UserID ;
end;

procedure TdmcOrder.cdsSawmillLoadOrdersBeforeScroll(DataSet: TDataSet);
begin
 With dmcOrder do
 Begin
  if dm_Booking.cdsVoyage.State in [dsEdit, dsInsert] then
   dm_Booking.cdsVoyage.Post ;

  if cdsBooking.State in [dsEdit, dsInsert] then
   cdsBooking.Post ;
//  if cdsSawmillLoadOrders.State = dsEdit then
//   cdsSawmillLoadOrders.Post ;

  if dm_Booking.cdsVoyage.ChangeCount > 0 then
  Begin
   dm_Booking.cdsVoyage.ApplyUpdates(0)  ;
   dm_Booking.cdsVoyage.CommitUpdates ;
  End ;
//  if cdsSawmillLoadOrders.ChangeCount > 0 then
//   cdsSawmillLoadOrders.ApplyUpdates(0)  ;
  if cdsBooking.ChangeCount > 0 then
  Begin
   cdsBooking.ApplyUpdates(0) ;
   cdsBooking.CommitUpdates ;
  End ;
 End ;
end;

procedure TdmcOrder.cdsSawmillLoadOrdersPreliminaryRequestedPeriodChange(
  Sender: TField);
begin
 SaveToBooking ;
end;

procedure TdmcOrder.cds_PropsOrderTypeNoChange(Sender: TField);
begin
{ if cbShowAll.Checked then
 Begin
  dmcOrder.Shipping:= dmcOrder.cds_PropsOrderTypeNo.AsInteger ;
  OrderTypeChanged:= True ;
  atRefreshExecute(Sender) ;
 End
 else
  Begin }
   dmcOrder.Shipping                    := dmcOrder.cds_PropsOrderTypeNo.AsInteger ;
   dmcOrder.cdsSawmillLoadOrders.Active := False ;
   dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
//  End ;
end;

procedure TdmcOrder.SaveToBooking ;
Begin
 if(cdsBooking.Active) and (cdsBooking.RecordCount > 0) then
 Begin
  if cdsBooking.State in [dsBrowse] then
  cdsBooking.Edit ;
  cdsBookingPreliminaryRequestedPeriod.AsString := cdsSawmillLoadOrdersPreliminaryRequestedPeriod.AsString ;
  cdsBooking.Post ;
 End
 else
 Begin
  cdsBooking.Insert ;
  cdsBookingPreliminaryRequestedPeriod.AsString := cdsSawmillLoadOrdersPreliminaryRequestedPeriod.AsString ;
  cdsBooking.Post ;
 End ;
End;

end.
