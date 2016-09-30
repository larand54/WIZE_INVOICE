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
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

const
  Const_SupplierShippingPlan = 'SupplierShippingPlan';
  Const_Booking = 'Booking';

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
    sp_grade: TFDStoredProc;
    sp_validLONo: TFDStoredProc;
    cdsSawmillLoadOrdersShippingPlanStatus_1: TIntegerField;
    cdsSawmillLoadOrdersLOBNo: TIntegerField;
    sp_UserPerm: TFDStoredProc;
    sp_SetAvropStatus: TFDStoredProc;
    sp_MoveToAccept: TFDStoredProc;

    procedure provSawMillLoadOrdersGetTableName(Sender: TObject;
      DataSet: TDataSet; var TableName: String);
    procedure dsrcSawmillLoadOrdersDataChange(Sender: TObject; Field: TField);
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
    procedure cdsSawmillLoadOrdersPreliminaryRequestedPeriodChange
      (Sender: TField);

  private
    PackageCode_Layout: Array of array of variant;
    FLastLOChecked: Integer;
    FLoadOrdersAfterScroll: TDataSetNotifyEvent;
    procedure ShowLoadsForLO_II(const LONo, pSupplierNo: Integer);

   // procedure AddPkgTypeColumns(const PackageTypeNo, AntalStyck: Integer);

    procedure ModifiedTheUserOnLO;
  public

    SupplierNo: Integer;
    Shipping: Integer; // Deliver or Receiving selected by user in fLoadForm
    procedure SetAvropStatus(const LONo, Status : Integer) ;
    function  UserIsAllowedToSetStatusToActive(const LONo : Integer) : Boolean ;
    procedure SaveToBooking;
    Function FindLoadRecord(const LoadNo: Integer): Boolean;
    procedure RefreshOrter;
    Function PkgStatus(const SupplierNo, PackageNo: Integer;
      const prefix: String): Boolean;
    Function LoadStatusOK: Boolean;

 //   Function CheckIfChangeToPrefix_BH1(const PkgNo, InventoryOwner,
 //     UserCompanyLoggedOn, LONo: Integer; const prefix: string3): string3;

    function LO_LoadingLocationIsLegoLoadingLocation(const LONo,
      LoggedInCompanyNo: Integer): Boolean;

    function ValidLO(const LONo: Integer): Boolean;
    procedure CngLOonLoad(const LoadNo, NewLONo: Integer);
    procedure RefrehLOs(const Value: Integer);
    constructor Create(AOwner: TComponent); override;
    procedure ShowLoadsForLO(const LONo: Integer);
    procedure IsolateLoads; // disconnect LO afterscroll
    procedure ReConnectLoads; // reinstate LO afterscroll
    Procedure SetLOStatus(const sspNo, Status: Integer);
    Function GetLONoForLoadNo(const LoadNo: Integer): Integer;
    function Does_SearchedLONo_Have_ALO_Connected(const SupplierNo,
      LO_NO: Integer): Integer;

{
      procedure RemoveCodeFromZeroGroup(const PkgCodePPZeroGroupNo,
        PkgCodePPNo: Integer);
}
    procedure LoadUserProps(const Form: String);
    procedure SaveUserProps(const Form: String);
    function OrderTypeOrderType(const SupplierNo, LONo: Integer): Integer;
  end;

var
  dmcOrder: TdmcOrder;

implementation

{$R *.dfm}

uses
  Dialogs,
  recerror, // dlgReconcileConcurrencyError,
  dmsVidaContact,
  VidaConst, dmsDataConn, VidaUser, dmsVidaProduct, dmsVidaSystem,
  dmBooking, uSelectBTHorBTB;

Type

  TMatchRec = class
  private
    FMatch: Boolean;
    FObjNo: Integer;
  public
    constructor Create(ObjNoVal: Integer);
    property ObjNo: Integer read FObjNo write FObjNo;
    property Match: Boolean read FMatch write FMatch;
  end;

  { TMatchRec }

constructor TMatchRec.Create(ObjNoVal: Integer);
begin
  inherited Create;
  FMatch := TRUE;
  FObjNo := ObjNoVal;
end;

procedure TdmcOrder.ShowLoadsForLO(const LONo: Integer);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    ShowLoadsForLO_II(cdsSawmillLoadOrdersLONumber.AsInteger,
      cdsSawmillLoadOrdersSupplier.AsInteger);
    FLastLOChecked := LONo;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TdmcOrder.ShowLoadsForLO_II(const LONo, pSupplierNo: Integer);
begin
  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
  Begin
    cdsLoadsForLO.Close;
    cdsLoadsForLO_forVW.Close;
    cdsLoadsForLO_forVW.ParamByName('@LONo').AsInteger :=
      cdsSawmillLoadOrdersLONumber.AsInteger; // LONo;
    cdsLoadsForLO_forVW.ParamByName('@SupplierNo').AsInteger :=
      cdsSawmillLoadOrdersSupplier.AsInteger; // SupplierNo ;
    cdsLoadsForLO_forVW.ParamByName('@Shipping').AsInteger :=
      cdsSawmillLoadOrdersORDERTYPE.AsInteger; // Shipping ;
    cdsLoadsForLO_forVW.Open;
    dsrcLoadsForLO.DataSet := cdsLoadsForLO_forVW;
  End
  else
  Begin
    cdsLoadsForLO_forVW.Close;
    cdsLoadsForLO.Close;
    cdsLoadsForLO.ParamByName('@LONo').AsInteger :=
      cdsSawmillLoadOrdersLONumber.AsInteger; // LONo;
    cdsLoadsForLO.ParamByName('@SupplierNo').AsInteger :=
      cdsSawmillLoadOrdersSupplier.AsInteger; // SupplierNo ;
    cdsLoadsForLO.ParamByName('@Shipping').AsInteger :=
      cdsSawmillLoadOrdersORDERTYPE.AsInteger; // Shipping ;
    cdsLoadsForLO.Open;
    dsrcLoadsForLO.DataSet := cdsLoadsForLO;
  End;

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
  TableName := 'SupplierShippingPlan';
end;

procedure TdmcOrder.RefrehLOs(const Value: Integer);
// Accessor method for SupplierNo property.
// Set by Load Orders form to ensure supplier shipping plans are retrieved
// for the appropriate supplier.
begin
  cdsSawmillLoadOrders.Close;
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
  if cdsSawmillLoadOrdersLONumber.AsInteger <> FLastLOChecked then
    ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);

  { if cdsBooking.RecordCount = 0 then
    cdsBooking.ReadOnly:= True
    else
    cdsBooking.ReadOnly:= False ;
  }
end;

Procedure TdmcOrder.SetLOStatus(const sspNo, Status: Integer);
Begin

  Try
    sp_SetLOStatus.ParamByName('@sspNo').AsInteger  := sspNo;
    sp_SetLOStatus.ParamByName('@Status').AsInteger := Status;
    sp_SetLOStatus.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;

  { Try
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
End;

Function TdmcOrder.GetLONoForLoadNo(const LoadNo: Integer): Integer;
Begin
  sq_FindLONo.ParamByName('LoadNo').AsInteger := LoadNo;
  Try
    sq_FindLONo.Open;
    if not sq_FindLONo.Eof then
      Result := sq_FindLONoLONo.AsInteger
    else
      Result := -1;
  Finally
    sq_FindLONo.Close;
  End;
End;

function TdmcOrder.Does_SearchedLONo_Have_ALO_Connected(const SupplierNo,
  LO_NO: Integer): Integer;
Begin
  sq_SearchALOByMainLO.ParamByName('SupplierNo').AsInteger := SupplierNo;
  sq_SearchALOByMainLO.ParamByName('LO_NO').AsInteger := LO_NO;
  sq_SearchALOByMainLO.Open;
  Result := sq_SearchALOByMainLOShippingPlanNo.AsInteger;
  sq_SearchALOByMainLO.Close;
End;

procedure TdmcOrder.mtPkgLengthsAfterInsert(DataSet: TDataSet);
begin
  mtPkgLengthsStatus.AsInteger := 1; // 1 = ny inmatning
end;

procedure TdmcOrder.SaveUserProps(const Form: String);
Var
  x: Integer;
Begin
  // if mtProps.State in [dsEdit, dsInsert] then
  // mtProps.Post ;
  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;
End;

procedure TdmcOrder.LoadUserProps(const Form: String);
Var
  VerkNo: Integer;
Begin
  // mtProps.Active:= True ;
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := TRUE;
  if not cds_Props.Eof then
  Begin
    cds_Props.Edit;
    VerkNo := cds_PropsVerkNo.AsInteger;
    cds_PropsVerkNo.AsInteger := VerkNo;
    cds_Props.Post;

  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo;
    cds_PropsForm.AsString := Form;


    cds_PropsInputOption.AsInteger := 0;
    cds_PropsRegDate.AsDateTime := Now;
    cds_PropsCopyPcs.AsInteger := 1;
    cds_PropsRunNo.AsInteger := -1;
    cds_PropsProducerNo.AsInteger := ThisUser.CompanyNo;
    cds_PropsAutoColWidth.AsInteger := 1;
    cds_PropsSupplierCode.AsString := dmsContact.GetClientCode
      (ThisUser.CompanyNo);
    cds_PropsLengthGroupNo.AsInteger := -1;
    cds_Props.Post;
  End;
  // cds_Props.Active:= False ;
End;

procedure TdmcOrder.ModifiedTheUserOnLO;
Begin
  if cdsSawmillLoadOrders.State in [dsBrowse] then
    cdsSawmillLoadOrders.Edit;
  cdsSawmillLoadOrdersModifiedUser.AsInteger := ThisUser.UserID;
End;

procedure TdmcOrder.CngLOonLoad(const LoadNo, NewLONo: Integer);
Begin
  sp_CngLOonLoad.ParamByName('@LoadNo').AsInteger := LoadNo;
  sp_CngLOonLoad.ParamByName('@NewLONo').AsInteger := NewLONo;
  Try
    sp_CngLOonLoad.ExecProc;
  except
    On E: Exception do
    Begin
      // dmsSystem.FDoLog(E.Message) ;
      ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmcOrder.ValidLO(const LONo: Integer): Boolean;
Var
  SupplierNo: Integer;
Begin
  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
    SupplierNo := cdsLoadsForLO_forVWSupplierNo.AsInteger
  else
    SupplierNo := cdsLoadsForLOSupplierNo.AsInteger;

  sp_ValidLONo.ParamByName('@LONo').AsInteger := LONo;
  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
    sp_ValidLONo.ParamByName('@SupplierNo').AsInteger := SupplierNo
  else
    sp_ValidLONo.ParamByName('@SupplierNo').AsInteger := SupplierNo;
  sp_ValidLONo.ParamByName('@ProductNo').AsInteger :=
    cdsSawmillLoadOrdersProductNo.AsInteger;
  sp_ValidLONo.ParamByName('@LoadingLocationNo').AsInteger :=
    cdsSawmillLoadOrdersLoadingLocationNo.AsInteger;

  sp_ValidLONo.Open;
  Try
    if (not sp_ValidLONo.Eof) and (sp_ValidLONo.FieldByName('ShippingPlanNo').AsInteger > 0)
    then
    Begin
      if (sp_ValidLONo.FieldByName('SupplierNo').AsInteger = SupplierNo) and
        (sp_ValidLONo.FieldByName('LoadingLocationNo').AsInteger =
        cdsSawmillLoadOrdersLoadingLocationNo.AsInteger) then
        Result := TRUE
      else
        Result := False;
    End
    else
      Result := False;
  Finally
    sp_ValidLONo.Close;
  End;
End;

function TdmcOrder.OrderTypeOrderType(const SupplierNo, LONo: Integer): Integer;
Begin
  sq_OrderType.ParamByName('SupplierNo').AsInteger := SupplierNo;
  sq_OrderType.ParamByName('LONo').AsInteger := LONo;
  sq_OrderType.Open;
  Try
    if not sq_OrderType.Eof then
      Result := sq_OrderTypeOrderType.AsInteger
    else
      Result := -1;
  Finally
    sq_OrderType.Close;
  End;
End;

procedure TdmcOrder.provBookingGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName := 'Booking';
end;

function TdmcOrder.LO_LoadingLocationIsLegoLoadingLocation(const LONo,
  LoggedInCompanyNo: Integer): Boolean;
Begin
  sq_LegoHasLL.ParamByName('LoggedInCompanyNo').AsInteger := LoggedInCompanyNo;
  sq_LegoHasLL.ParamByName('LONo').AsInteger := LONo;
  sq_LegoHasLL.Open;
  Try
    if not sq_LegoHasLL.Eof then
      Result := TRUE
    else
      Result := False;
  Finally
    sq_LegoHasLL.Close;
  End;
End;

procedure TdmcOrder.dsp_LOListHHGetTableName(Sender: TObject; DataSet: TDataSet;
  var TableName: String);
begin
  TableName := 'LOListHH';
end;

{
  Function TdmcOrder.CheckIfChangeToPrefix_BH1(const PkgNo, InventoryOwner,
    UserCompanyLoggedOn, LONo: Integer; const prefix: string3): string3;
  // InventoryOwner = Supplier på LO
    function Does_BTH_Exist_In_Inventory_And_As_Product_In_LO: Boolean;
    Begin
      sq_BTHExistInLager.ParamByName('PkgNo').AsInteger := PkgNo;
      sq_BTHExistInLager.ParamByName('InvOwner').AsInteger := InventoryOwner;
      sq_BTHExistInLager.ParamByName('UserCompanyLoggedOn').AsInteger :=
        UserCompanyLoggedOn;
      sq_BTHExistInLager.ParamByName('LONo').AsInteger := LONo;
      sq_BTHExistInLager.ParamByName('Prefix').AsString := prefix;
      sq_BTHExistInLager.ParamByName('SupplierNo').AsInteger := InventoryOwner;
      sq_BTHExistInLager.Open;
      if not sq_BTHExistInLager.Eof then
        Result := TRUE
      else
        Result := False;
    End;

  Begin
    if Does_BTH_Exist_In_Inventory_And_As_Product_In_LO then
      Result := 'BTH'
    else
      Result := 'BH1';
  End;
}


Function TdmcOrder.LoadStatusOK: Boolean;
Begin
  Result := TRUE;
  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
  Begin
    cdsLoadsForLO_forVW.First;
    While not cdsLoadsForLO_forVW.Eof do
    Begin
      if cdsLoadsForLO_forVWSenderLoadStatus.AsInteger = 0 then
        Result := False;
      cdsLoadsForLO_forVW.Next;
    End;
    if cdsLoadsForLO_forVW.RecordCount = 0 then
      Result := False;
  End
  else
  Begin
    cdsLoadsForLO.First;
    While not cdsLoadsForLO.Eof do
    Begin
      if cdsLoadsForLOSenderLoadStatus.AsInteger = 0 then
        Result := False;
      cdsLoadsForLO.Next;
    End;
    if cdsLoadsForLO.RecordCount = 0 then
      Result := False;
  End;
End;

Function TdmcOrder.FindLoadRecord(const LoadNo: Integer): Boolean;
Begin
  Result := False;
  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
  Begin
    if cdsLoadsForLO_forVW.Active then
      if cdsLoadsForLO_forVW.Locate('LoadNo', LoadNo, []) then
        Result := TRUE;
  End
  else
  Begin
    if cdsLoadsForLO.Active then
      if cdsLoadsForLO.Locate('LoadNo', LoadNo, []) then
        Result := TRUE;
  End;
End;

Function TdmcOrder.PkgStatus(const SupplierNo, PackageNo: Integer;
  const prefix: String): Boolean;
Begin
  Try
    sq_PkgStatus.ParamByName('SupplierNo').AsInteger := SupplierNo;
    sq_PkgStatus.ParamByName('PackageNo').AsInteger := PackageNo;
    sq_PkgStatus.ParamByName('SupplierCode').AsString := prefix;
    sq_PkgStatus.Open;
    if not sq_PkgStatus.Eof then
      Result := sq_PkgStatusStatus.AsInteger = 1
    else
      Result := False;
  Finally
    sq_PkgStatus.Close;
  End;
End;

procedure TdmcOrder.cdsSawmillLoadOrdersBeforePost(DataSet: TDataSet);
begin
  if cdsSawmillLoadOrdersPackageWidth.AsInteger *
    cdsSawmillLoadOrdersPackageHeight.AsInteger > 0 then
    cdsSawmillLoadOrdersPcsPerPkg.AsInteger :=
      cdsSawmillLoadOrdersPackageWidth.AsInteger *
      cdsSawmillLoadOrdersPackageHeight.AsInteger;
  cdsSawmillLoadOrdersModifiedUser.AsInteger := ThisUser.UserID;

end;

procedure TdmcOrder.cdsBookingAfterInsert(DataSet: TDataSet);
begin
  cdsBookingBookingNo.AsInteger := dmsConnector.NextMaxNo('Booking');
  cdsBookingShippingPlanNo.AsInteger := cdsSawmillLoadOrdersLONumber.AsInteger;
  cdsBookingLOText.AsVariant := dm_Booking.cdsAvropInfoLOText.AsVariant;
  cdsBookingInvoiceText.AsVariant :=
    dm_Booking.cdsAvropInfoInvoiceText.AsVariant;
  cdsBookingNoteForLoadSheet.AsVariant :=
    dm_Booking.cdsAvropInfoNoteForLoadSheet.AsVariant;
  cdsBookingVoyageNo.AsInteger := cdsBookingBookingNo.AsInteger;
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

    dm_Booking.cdsAvropInfo.Active:= False ; }
end;

procedure TdmcOrder.cds_PPNoAfterInsert(DataSet: TDataSet);
begin
  cds_PPNoPkgCodePPNo.AsInteger := dmsConnector.NextMaxNo
    ('Packagecode_printparams');
  cds_PPNoPublished.AsInteger := 1;
  cds_PPNoPackageCode.AsString := cds_PPNoPkgCodePPNo.AsString;

  cds_PPNoSizeFormat.AsInteger := 1;
  cds_PPNoLengthFormat.AsInteger := 1;
  cds_PPNoVolumeFormat.AsInteger := 1;
  cds_PPNoCreatedUser.AsInteger := ThisUser.UserID;
  cds_PPNoModifiedUser.AsInteger := ThisUser.UserID;
  cds_PPNoActive.AsInteger := 1;
  cds_PPNoModifiedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_PPNoCreatedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_PPNoTagNo.AsInteger := 0;

end;

procedure TdmcOrder.cds_ELOLengthsAfterInsert(DataSet: TDataSet);
begin
  cds_ELOLengthsSupplierShipPlanObjectNo.AsInteger :=
    cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger;
end;

procedure TdmcOrder.cds_ELOLengthsBeforePost(DataSet: TDataSet);
begin
  ModifiedTheUserOnLO;
end;

procedure TdmcOrder.cds_LOLengthsAfterInsert(DataSet: TDataSet);
begin
  cds_LOLengthsSupplierShipPlanObjectNo.AsInteger :=
    cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger;
end;

procedure TdmcOrder.cds_LOLengthsBeforePost(DataSet: TDataSet);
begin
  ModifiedTheUserOnLO;
end;

procedure TdmcOrder.cds_PkgOwnerAfterInsert(DataSet: TDataSet);
begin
{
    cds_PkgOwnerPkgCodePPNo.AsInteger       := cds_PPNoPkgCodePPNo.AsInteger;
    cds_PkgOwnerClientNo.AsInteger          := 7 4 1;
    cds_PkgOwnerCreatedUser.AsInteger       := ThisUser.UserID;
    cds_PkgOwnerDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now);
}
end;

procedure TdmcOrder.cds_ELOLayoutAfterInsert(DataSet: TDataSet);
begin
  cds_ELOLayoutSupplierShipPlanObjectNo.AsInteger :=
    cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger;
end;

procedure TdmcOrder.cds_PkgCodeOAfterInsert(DataSet: TDataSet);
begin
  cds_PkgCodeOPkgCodePPNo.AsInteger := cds_PPNoPkgCodePPNo.AsInteger;
  cds_PkgCodeOPackageCodeNo.AsString := cds_PPNoPkgCodePPNo.AsString;
  cds_PkgCodeOPackageTypeNo.AsInteger := cds_PPNoPackageTypeNo.AsInteger;
  cds_PkgCodeOCreatedUser.AsInteger := ThisUser.UserID;
  cds_PkgCodeOModifiedUser.AsInteger := ThisUser.UserID;
  cds_PkgCodeODateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
  cds_PkgCodeOMarketRegionNo.AsInteger := 0;
end;

procedure TdmcOrder.cds_LOListHHAfterInsert(DataSet: TDataSet);
begin
  cds_LOListHHCreatedUser.AsInteger := ThisUser.UserID;
  cds_LOListHHDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
end;

procedure TdmcOrder.cds_PropsVerkNoChange(Sender: TField);
begin
  RefreshOrter;
end;

procedure TdmcOrder.RefreshOrter;
begin
  if dmcOrder.cds_PropsVerkNo.AsInteger > 0 then
  Begin
    if dmcOrder.SupplierNo <> dmcOrder.cds_PropsVerkNo.AsInteger then
      dmcOrder.SupplierNo := dmcOrder.cds_PropsVerkNo.AsInteger;

    sq_City.Active := False;
    sq_City.ParamByName('OwnerNo').AsInteger :=
      dmcOrder.cds_PropsVerkNo.AsInteger;
    sq_City.Active := TRUE;
  End;
end;

procedure TdmcOrder.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
end;

procedure TdmcOrder.cdsSawmillLoadOrdersBeforeScroll(DataSet: TDataSet);
begin
  With dmcOrder do
  Begin
    if dm_Booking.cdsVoyage.State in [dsEdit, dsInsert] then
      dm_Booking.cdsVoyage.Post;

    if cdsBooking.State in [dsEdit, dsInsert] then
      cdsBooking.Post;
    // if cdsSawmillLoadOrders.State = dsEdit then
    // cdsSawmillLoadOrders.Post ;

    if dm_Booking.cdsVoyage.ChangeCount > 0 then
    Begin
      dm_Booking.cdsVoyage.ApplyUpdates(0);
      dm_Booking.cdsVoyage.CommitUpdates;
    End;
    // if cdsSawmillLoadOrders.ChangeCount > 0 then
    // cdsSawmillLoadOrders.ApplyUpdates(0)  ;
    if cdsBooking.ChangeCount > 0 then
    Begin
      cdsBooking.ApplyUpdates(0);
      cdsBooking.CommitUpdates;
    End;
  End;
end;

procedure TdmcOrder.cdsSawmillLoadOrdersPreliminaryRequestedPeriodChange
  (Sender: TField);
begin
  SaveToBooking;
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
  dmcOrder.Shipping := dmcOrder.cds_PropsOrderTypeNo.AsInteger;
  dmcOrder.cdsSawmillLoadOrders.Active := False;
  dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
  // End ;
end;

procedure TdmcOrder.SaveToBooking;
Begin
  if (cdsBooking.Active) and (cdsBooking.RecordCount > 0) then
  Begin
    if cdsBooking.State in [dsBrowse] then
      cdsBooking.Edit;
    cdsBookingPreliminaryRequestedPeriod.AsString :=
      cdsSawmillLoadOrdersPreliminaryRequestedPeriod.AsString;
    cdsBooking.Post;
  End
  else
  Begin
    cdsBooking.Insert;
    cdsBookingPreliminaryRequestedPeriod.AsString :=
      cdsSawmillLoadOrdersPreliminaryRequestedPeriod.AsString;
    cdsBooking.Post;
  End;
End;

function TdmcOrder.UserIsAllowedToSetStatusToActive(const LONo : Integer) : Boolean ;
Begin
  sp_UserPerm.ParamByName('@UserID').AsInteger :=  LONo  ;
  sp_UserPerm.Active := True ;
  Try
  if not sp_UserPerm.Eof then
  Begin
   if sp_UserPerm.FieldByName('AllowedSetCOActive').AsInteger = 1 then
    Result := True
     else
      Result  := False ;
  End
    else
     Result := False ;
  Finally
    sp_UserPerm.Active := False ;
  End;
End;

procedure TdmcOrder.SetAvropStatus(const LONo, Status : Integer) ;
Begin
  Try
  sp_MoveToAccept.ParamByName('@LONo').AsInteger    :=  LONo ;
  sp_MoveToAccept.ParamByName('@UserID').AsInteger  :=  ThisUser.UserID ;
  sp_MoveToAccept.ExecProc ;
  Except
   On E: Exception do
   Begin
    ShowMessage(E.Message+' :sp_MoveToAccept.ExecProc') ;
    Raise ;
   End ;
  End;
  Try
  sp_SetAvropStatus.ParamByName('@LONo').AsInteger          :=  LONo ;
  sp_SetAvropStatus.ParamByName('@AvropStatus').AsInteger   :=  Status ;
  sp_SetAvropStatus.ParamByName('@UserID').AsInteger        :=  Status ;
  sp_SetAvropStatus.ExecProc ;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

end.
