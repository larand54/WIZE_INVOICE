unit dmsVidaSystem;

interface

uses
  Classes,
  DB,
  SysUtils,
  VidaType, Controls, Dialogs, kbmMemTable,
  cxGridTableView, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, SqlTimSt, cxClasses,
  cxSchedulerStorage;

type
  TAmbiguityEvent = procedure(Sender: TObject; DataSource: TDataSource;
    var Choice: String3; var SupplierNo: Integer; var ProductNo: Integer)
    of object;

  TdmsSystem = class(TDataModule)
    dsrcBarCodes: TDataSource;
    dsrcGradeStamps: TDataSource;
    dsrcPaperWraps: TDataSource;
    dsrcPkgsByInvOwner: TDataSource;
    dsrcPkgsByInvOwner_II: TDataSource;
    ds_pkgLog: TDataSource;
    ds_PksByInventoryPlace: TDataSource;
    ds_Grade_SV: TDataSource;
    ds_Surfacing_SV: TDataSource;
    ds_PkgsByInventering: TDataSource;
    mtSelectedPkgNo: TkbmMemTable;
    mtSelectedPkgNoPAKETNR: TIntegerField;
    mtSelectedPkgNoLEVKOD: TStringField;
    mtSelectedPkgNoSTYCKPERLNGD: TStringField;
    mtSelectedPkgNoAM3: TFloatField;
    mtSelectedPkgNoSTYCK: TIntegerField;
    mtSelectedPkgNoREGISTRERAT: TSQLTimeStampField;
    mtSelectedPkgNoNOOFLENGTHS: TIntegerField;
    mtSelectedPkgNoMARKERAD: TIntegerField;
    mtSelectedPkgNoProductNo: TIntegerField;
    ds_LoadPlanDest: TDataSource;
    ds_Props: TDataSource;
    ds_PriceList: TDataSource;
    mtLengthFormat: TkbmMemTable;
    mtLengthFormatLengthFormatNo: TSmallintField;
    mtLengthFormatLengthFormat: TStringField;
    mtSizeFormat: TkbmMemTable;
    mtSizeFormatSizeFormatNo: TSmallintField;
    mtSizeFormatSizeFormat: TStringField;
    ds_SizeFormat: TDataSource;
    ds_LengthFormat: TDataSource;
    mtSelectedPkgNoProdukt: TStringField;
    ds_PkgImp: TDataSource;
    ds_FtpParam: TDataSource;
    dsLenaRapporter: TDataSource;
    dsClientPrefDocs: TDataSource;
    mtReportTypes: TkbmMemTable;
    mtReportTypesReportType: TStringField;
    mtReportTypesDocType: TIntegerField;
    dsRptNames: TDataSource;
    spAccessRights: TFDStoredProc;
    cds_Grade_SV: TFDQuery;
    cds_Grade_SVGradeNo: TIntegerField;
    cds_Grade_SVGradeName: TStringField;
    cds_Surfacing_SV: TFDQuery;
    cds_Surfacing_SVSurfacingNo: TIntegerField;
    cds_Surfacing_SVSurfacingName: TStringField;
    cds_Surfacing_SVLanguageCode: TIntegerField;
    cds_Surfacing_SVSequenceNo: TIntegerField;
    cds_Surfacing_SVCreatedUser: TSmallintField;
    cds_Surfacing_SVModifiedUser: TSmallintField;
    cds_Surfacing_SVDateCreated: TSQLTimeStampField;
    cds_Surfacing_SVAct: TIntegerField;
    cds_Surfacing_SVSurfacingCode: TStringField;
    cds_Surfacing_SVDKCode: TStringField;
    ds_Species_SV: TDataSource;
    cds_Species_SV: TFDQuery;
    cds_Species_SVSpeciesNo: TIntegerField;
    cds_Species_SVSpeciesName: TStringField;
    cds_Species_SVLanguageCode: TIntegerField;
    cds_Species_SVSequenceNo: TIntegerField;
    cds_Species_SVCreatedUser: TSmallintField;
    cds_Species_SVModifiedUser: TSmallintField;
    cds_Species_SVDateCreated: TSQLTimeStampField;
    cds_Species_SVAct: TIntegerField;
    cds_Species_SVSpeciesCode: TStringField;
    cds_Species_SVSpeciesShortName: TStringField;
    cds_Species_SVDKCode: TStringField;
    ds_grade: TDataSource;
    cds_grade: TFDQuery;
    cds_gradeGradeNo: TIntegerField;
    cds_gradeGradeName: TStringField;
    cds_gradeLanguageCode: TIntegerField;
    cds_gradeSequenceNo: TIntegerField;
    cds_gradeCreatedUser: TSmallintField;
    cds_gradeModifiedUser: TSmallintField;
    cds_gradeDateCreated: TSQLTimeStampField;
    cds_gradeMainGradeNo: TIntegerField;
    cds_gradeAct: TIntegerField;
    cds_gradeGradeCode: TStringField;
    cds_gradeDKCode: TStringField;
    cds_gradeGradeCodeName: TStringField;
    cds_gradeSPRAK: TStringField;
    sp_OneLoad: TFDStoredProc;
    sp_Delete_Res_Pkgs: TFDStoredProc;
    cdsBarCodes: TFDStoredProc;
    sp_Pkg_Res: TFDStoredProc;
    sp_DelUserResPkgs: TFDStoredProc;
    sp_CopyPOLoadToSales: TFDStoredProc;
    sp_lencolpcspkgtypeno: TFDStoredProc;
    sp_lencolm3pkgtypeno: TFDStoredProc;
    cds_GridSettings: TFDQuery;
    cds_GridSettingsViewName: TStringField;
    cds_GridSettingsUserID: TIntegerField;
    cds_GridSettingsSets: TBlobField;
    cdsPkgsByInvOwner: TFDQuery;
    cds_ProductLength: TFDQuery;
    sq_GetPkgPos: TFDQuery;
    sq_GetInventoryNo: TFDQuery;
    sq_GetInventoryNoPhysicalInventoryPointNo: TIntegerField;
    cdsGradeStamps: TFDStoredProc;
    cdsPaperWraps: TFDStoredProc;
    cdsPksByInvOwner_II: TFDQuery;
    cds_pkgLog: TFDStoredProc;
    cds_PksByInventoryPlace: TFDQuery;
    cds_PksByInventoryPlacePackageNo: TIntegerField;
    cds_PksByInventoryPlaceSupplierCode: TStringField;
    cds_PksByInventoryPlaceSupplierNo: TIntegerField;
    cds_PksByInventoryPlaceLengthDescription: TStringField;
    cds_PksByInventoryPlaceProductDisplayName: TStringField;
    cds_PksByInventoryPlaceProductNo: TIntegerField;
    sq_GetRPName: TFDQuery;
    cds_LastLoadNo: TFDQuery;
    sq_DelLastLoadUsed: TFDQuery;
    cds_LastLoadNoUserID: TIntegerField;
    cds_LastLoadNoLastLoadNo: TStringField;
    cds_Article: TFDQuery;
    cds_ArticleArticleNo: TIntegerField;
    cds_ArticleArticleName: TStringField;
    cds_GridSets: TFDQuery;
    cds_GridSetsViewName: TStringField;
    cds_GridSetsUserID: TIntegerField;
    cds_GridSetsSets: TBlobField;
    cds_GridSetsName: TStringField;
    cds_GridSetsForm: TStringField;
    cdsClientPrefDocs: TFDQuery;
    cdsClientPrefDocsClientNo: TIntegerField;
    cdsClientPrefDocsRoleType: TIntegerField;
    cdsClientPrefDocsDocType: TIntegerField;
    cdsClientPrefDocsNoOfCopy: TIntegerField;
    cdsClientPrefDocspromptUser: TIntegerField;
    cdsClientPrefDocscollated: TIntegerField;
    cdsClientPrefDocsPrinterSetup: TIntegerField;
    cdsClientPrefDocsReportNo: TIntegerField;
    cds_PkgsByInventering: TFDQuery;
    cds_PkgsByInventeringPackageNo: TIntegerField;
    cds_PkgsByInventeringSupplierCode: TStringField;
    cds_PkgsByInventeringSupplierNo: TIntegerField;
    cds_PkgsByInventeringLengthDescription: TStringField;
    cds_PkgsByInventeringProductDisplayName: TStringField;
    cds_PkgsByInventeringProductNo: TIntegerField;
    cds_LO_Lengths: TFDQuery;
    cds_LO_LengthsProductLengthNo: TIntegerField;
    cds_LO_LengthsActualLengthMM: TFloatField;
    cds_LO_LengthsNominalLengthMM: TFloatField;
    cdsLenaRapporter: TFDQuery;
    cdsLenaRapporterClientNo: TIntegerField;
    cdsLenaRapporterRoleType: TIntegerField;
    cdsLenaRapporterDocType: TIntegerField;
    cdsLenaRapporterNoOfCopy: TIntegerField;
    cdsLenaRapporterpromptUser: TIntegerField;
    cdsLenaRapportercollated: TIntegerField;
    cdsLenaRapporterPrinterSetup: TIntegerField;
    cdsLenaRapporterReportNo: TIntegerField;
    cdsLenaRapporterReportNo_1: TIntegerField;
    cdsLenaRapporterDocType_1: TIntegerField;
    cdsLenaRapporterReportName: TStringField;
    cdsLenaRapporterBeskrivning: TStringField;
    sq_GetXRate: TFDQuery;
    sq_GetXRateExchangeRate: TFloatField;
    sq_LastInvDate: TFDQuery;
    sq_LastInvDateMaxDatum: TSQLTimeStampField;
    sq_LastInvDateInventeringsdatum: TSQLTimeStampField;
    sq_LastInvDateIC_grpno: TIntegerField;
    sq_LastInvDateStatus: TIntegerField;
    sp_LoadAR: TFDStoredProc;
    cds_LoadPlanDest: TFDQuery;
    cds_LoadPlanDestStatus: TIntegerField;
    cds_LoadPlanDestLoadingNo: TIntegerField;
    cds_LoadPlanDestLoadPlanDestRowNo: TIntegerField;
    cds_LoadPlanDestFrsljningsregion: TStringField;
    cds_LoadPlanDestLAGER_DEST: TStringField;
    cds_LoadPlanDestLAGER: TStringField;
    cds_LoadPlanDestSalesRegionNo: TIntegerField;
    cds_LoadPlanDestBT: TStringField;
    cds_LoadPlanDestETD: TSQLTimeStampField;
    cds_LengthGroup: TFDQuery;
    cds_Language: TFDQuery;
    cds_LanguageLanguageNo: TIntegerField;
    cds_LanguageLanguageName: TStringField;
    cds_LanguageSequenceNo: TIntegerField;
    cds_LanguageDateCreated: TSQLTimeStampField;
    cds_LanguageCreatedUser: TSmallintField;
    cds_LanguageModifiedUser: TSmallintField;
    ds_Language: TDataSource;
    cds_LengthGroupGroupNo: TIntegerField;
    cds_LengthGroupGroupName: TStringField;
    cds_PkgImp: TFDQuery;
    cds_PkgImpPackageNo: TIntegerField;
    cds_PkgImpSupplierCode: TStringField;
    cds_PkgImpSupplierNo: TIntegerField;
    cds_PkgImpLengthDescription: TStringField;
    cds_PkgImpProductDisplayName: TStringField;
    cds_PkgImpProductNo: TIntegerField;
    cds_FtpParam: TFDQuery;
    cds_PriceList: TFDQuery;
    cds_PriceListtemplateno: TIntegerField;
    cds_PriceListPriceListName: TStringField;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsImportDir: TStringField;
    cds_PropsExportDir: TStringField;
    cds_PropsDeliveryMessageWood_XSD: TStringField;
    cds_PropsMyEmailAddress: TStringField;
    cds_PropsUserDir: TStringField;
    cds_PropsExcelDir: TStringField;
    cds_PropsLODir: TStringField;
    cds_PropsLastUsedLOTemplate: TStringField;
    cds_PropsLastUsedFragaAvropTemplate: TStringField;
    cds_PropsWoodXDir: TStringField;
    cds_PropsImportUSA_Faktura_Dir: TStringField;
    cds_PkgTypeLengths: TFDQuery;
    cds_PkgTypeLengthsProductLengthNo: TIntegerField;
    cds_PkgTypeLengthsALMM: TFloatField;
    qryExec: TFDQuery;
    sq_ConfirmedLoad: TFDQuery;
    sq_ConfirmedLoadNewLoadNo: TIntegerField;
    sq_ConfirmedLoadNewShippingPlanNo: TIntegerField;
    sq_dbProps: TFDQuery;
    sq_dbPropsHostName: TStringField;
    sq_dbPropsDatabas: TStringField;
    sq_dbPropsUserName: TStringField;
    sq_dbPropsPassword: TStringField;
    sq_dbPropsCRPath: TStringField;
    sq_GetLoadPlanPkgs: TFDQuery;
    sq_GetLoadPlanPkgsLoadingNo: TIntegerField;
    sq_GetLoadPlanPkgsPackageTypeNo: TIntegerField;
    sq_GetLoadPlanPkgsNoOfPkgsLoaded: TIntegerField;
    sq_GetLoadPlanPkgsPackageCodeNo: TStringField;
    sq_GetLoadPlanPkgsLoadPlanDestRowNo: TIntegerField;
    sq_GetLoadPlanPkgsLIPNo: TIntegerField;
    sq_GetLoadPlanPkgsLAGER: TStringField;
    cdsRptNames: TFDQuery;
    sq_DoLog: TFDQuery;
    cds_PkgImpNoLO: TFDQuery;
    sq_GetRPNameReportNo: TIntegerField;
    sq_GetRPNameDocType: TIntegerField;
    sq_GetRPNameReportName: TStringField;
    sq_GetRPNameBeskrivning: TStringField;
    sq_GetPkgPosClientCode: TStringField;
    sq_GetPkgPosPktNrLevKod: TStringField;
    sq_GetPkgPosPaketNoPos: TIntegerField;
    sq_GetPkgPosPaketNoLength: TIntegerField;
    sq_GetPkgPosSupplierCodePos: TIntegerField;
    sq_GetPkgPosSupplierCodeLength: TIntegerField;
    cds_ProdLength: TFDQuery;
    cds_ProdLengthNomLength: TFloatField;
    cds_ProductLengthProductLengthNo: TIntegerField;
    cds_ProductLengthActualLengthMM: TFloatField;
    cds_ProductLengthNominalLengthMM: TFloatField;
    cds_ProductLengthNominalLengthFEET: TFloatField;
    cds_ProductLengthActualLengthINCH: TStringField;
    cds_ProductLengthPET: TIntegerField;
    cds_ProductLengthFingerJoint: TIntegerField;
    cds_ProductLengthCreatedUser: TIntegerField;
    cds_ProductLengthModifiedUser: TIntegerField;
    cds_ProductLengthDateCreated: TSQLTimeStampField;
    cds_ProductLengthSequenceNo: TIntegerField;
    cds_ProductLengthProductLengthGroupNo: TIntegerField;
    cds_ProductLengthAct: TIntegerField;
    sp_LoadARLoadAR: TIntegerField;
    sp_OneLoadLoadNo: TIntegerField;
    sp_OneLoadLoadID: TStringField;
    sp_OneLoadSupplierNo: TIntegerField;
    sp_OneLoadSenderLoadStatus: TIntegerField;
    sp_OneLoadLoadedDate: TSQLTimeStampField;
    sp_OneLoadPackageEntryOption: TIntegerField;
    sp_OneLoadCreatedUser: TIntegerField;
    sp_OneLoadModifiedUser: TIntegerField;
    sp_OneLoadDateCreated: TSQLTimeStampField;
    sp_OneLoadLocalDestinationNo: TIntegerField;
    sp_OneLoadLocalShippingCompanyNo: TIntegerField;
    sp_OneLoadLocalLoadingLocation: TIntegerField;
    sp_OneLoadFS: TStringField;
    sp_OneLoadConfirmed: TIntegerField;
    sp_OneLoadInvoiced: TIntegerField;
    sp_OneLoadNotering: TMemoField;
    cds_FtpParamConnectionName: TStringField;
    cds_FtpParamConnectionNo: TIntegerField;
    cds_FtpParamHost: TStringField;
    cds_FtpParamPort: TIntegerField;
    cds_FtpParamUserName: TStringField;
    cds_FtpParamPassword: TStringField;
    cds_FtpParamStartDir: TStringField;
    cds_FtpParamPassiveMode: TIntegerField;
    cds_FtpParamAsciiMode: TIntegerField;
    cds_FtpParamCompanyNo: TIntegerField;
    cdsRptNamesReportNo: TIntegerField;
    cdsRptNamesDocType: TIntegerField;
    cdsRptNamesReportName: TStringField;
    cdsRptNamesBeskrivning: TStringField;
    cds_Currency: TFDQuery;
    cds_CurrencyCurrencyNo: TIntegerField;
    cds_CurrencyCurrencyName: TStringField;
    cds_CurrencyDateCreated: TSQLTimeStampField;
    cds_CurrencyCreatedUser: TSmallintField;
    cds_CurrencyModifiedUser: TSmallintField;
    cds_CurrencySequenceNo: TIntegerField;
    dsPaymentTerm: TDataSource;
    ds_PaymentText: TDataSource;
    cdsPaymentTerm: TFDQuery;
    cdsPaymentTermPaymentTermsNo: TIntegerField;
    cdsPaymentTermPaymentTermName: TStringField;
    cdsPaymentTermDiscount1: TFloatField;
    cdsPaymentTermFreightInDiscount: TSmallintField;
    cdsPaymentTermFreightInCommission: TSmallintField;
    cdsPaymentTermCommissionPaidByCustomer: TSmallintField;
    cdsPaymentTermDescription: TStringField;
    cdsPaymentTermLanguageCode: TIntegerField;
    cds_PaymentText: TFDQuery;
    cds_PaymentTextCurrencyNo: TIntegerField;
    cds_PaymentTextLanguageCode: TIntegerField;
    cds_PaymentTextPaymentText: TMemoField;
    cds_PaymentTextCreatedUser: TSmallintField;
    cds_PaymentTextModifiedUser: TSmallintField;
    cds_PaymentTextDateCreated: TSQLTimeStampField;
    cds_PaymentTextCountryNo: TIntegerField;
    ds_Currency: TDataSource;
    ds_ExchangeRate: TDataSource;
    cds_ExchangeRate: TFDQuery;
    cds_ExchangeRateCurrencyNo: TIntegerField;
    cds_ExchangeRateExchangeRateNo: TIntegerField;
    cds_ExchangeRateExchangeRate: TFloatField;
    cds_ExchangeRateValidFrom: TSQLTimeStampField;
    cds_ExchangeRateCreatedUser: TSmallintField;
    cds_ExchangeRateModifiedUser: TSmallintField;
    cds_ExchangeRateDateCreated: TSQLTimeStampField;
    cdsClientPrefDocsRapport: TStringField;
    cdsClientPrefDocsTYPAVRAPPORT: TStringField;
    cdsCarrier: TFDQuery;
    cdsCarrierCarrierNo: TIntegerField;
    cdsCarrierCarrierName: TStringField;
    cdsCarrierSequenceNo: TIntegerField;
    cdsCarrierCreatedUser: TSmallintField;
    cdsCarrierModifiedUser: TSmallintField;
    cdsCarrierDateCreated: TSQLTimeStampField;
    dsCarrier: TDataSource;
    dsBookingType: TDataSource;
    cdsBookingType: TFDQuery;
    cdsBookingTypeBookingTypeNo: TIntegerField;
    cdsBookingTypeBookingType: TStringField;
    cdsBookingTypeCreatedUser: TSmallintField;
    cdsBookingTypeModifiedUser: TSmallintField;
    cdsBookingTypeDateCreated: TSQLTimeStampField;
    cdsBookingTypeSequenceNo: TIntegerField;
    sq_PkgType_InvoiceByCSD: TFDQuery;
    sq_DelPkgType: TFDQuery;
    sq_PkgType_InvoiceByLO: TFDQuery;
    cds_FtpParamUserID: TIntegerField;
    cds_FtpParamLocalDir: TStringField;
    sq_GetPackagetypeTotalPcs: TFDQuery;
    sq_GetPackagetypeTotalPcsTotalNoOfPieces: TIntegerField;
    sq_GetPackagetypeTotalPcsPackageTypeNo: TIntegerField;
    sq_InsTempPkg: TFDQuery;
    sp_NewCSDLoad: TFDStoredProc;
    sq_DelTempPkg: TFDQuery;
    sq_InsLoad_Imp: TFDQuery;
    cds_Load_Imp: TFDQuery;
    cds_Load_ImpTempLoadNo: TIntegerField;
    cds_Load_ImpDateCreated: TSQLTimeStampField;
    cds_Load_ImpCreatedUser: TIntegerField;
    cds_Load_ImpLoadNo: TIntegerField;
    cds_Load_ImpLONo: TIntegerField;
    cds_Load_ImpAntalPaket: TIntegerField;
    ds_Load_Imp: TDataSource;
    cds_FtpParamStartDirUpload: TStringField;
    mtSelectedPkgNoHTFStatus: TStringField;
    sq_GetPackagetypeTotalPcsProductNo: TIntegerField;
    sq_GetPackagetypeTotalPcsALMM: TFloatField;
    sq_GetProductNoByProductCode: TFDQuery;
    sq_GetProductNoByProductCodeProductNo: TIntegerField;
    sq_SetMallAsStd: TFDQuery;
    cds_pkgLogOperationNo: TIntegerField;
    cds_pkgLogLIPNO: TIntegerField;
    cds_pkgLogDB_Bokfrd: TSQLTimeStampField;
    cds_pkgLogOperation: TStringField;
    cds_pkgLogMtpunkt: TStringField;
    cds_pkgLogAnvndare: TStringField;
    cds_pkgLogLager: TStringField;
    cds_pkgLoggare: TStringField;
    cds_pkgLogProdukt: TStringField;
    cds_pkgLogAntalperlngd: TStringField;
    cds_pkgLogAM3: TFloatField;
    cds_pkgLogStyck: TIntegerField;
    cds_pkgLogPackageTypeNo: TIntegerField;
    cds_pkgLogPktTypSkapad: TSQLTimeStampField;
    cds_pkgLogRegistrerad: TSQLTimeStampField;
    cdsRptNamesDocTypeName: TStringField;
    sp_PopLengthSpecII: TFDStoredProc;
    sp_Load_Res: TFDStoredProc;
    sp_DelLoad_Res: TFDStoredProc;
    cdsPaymentTermNoOfDaysDiscount2: TIntegerField;
    sq_Get_NoOfDaysDiscount2: TFDQuery;
    sq_Get_NoOfDaysDiscount2NoOfDaysDiscount2: TIntegerField;
    sp_Vis_Upd_ProdCodeInfo: TFDStoredProc;
    ds_LoadWeigth: TDataSource;
    cds_LoadWeigth: TFDQuery;
    cds_LoadWeigthLoadNo: TIntegerField;
    cds_LoadWeigthReference: TStringField;
    cds_LoadWeigthLoadWeightKG: TFloatField;
    sq_GenerateLoadWeight: TFDQuery;
    sp_MovePkgToInvFromLoad: TFDStoredProc;
    cds_pkgLogShiftNo: TIntegerField;
    sp_Kontraktsnr: TFDStoredProc;
    sp_GetOrderData: TFDStoredProc;
    mtSelectedPkgNoLagergrupp: TStringField;
    sq_dbPropsintsec: TIntegerField;
    sq_dbPropsLangPath: TStringField;
    sp_Lang: TFDStoredProc;
    ds_PackageSize: TDataSource;
    cds_PackageSize: TFDQuery;
    cds_PackageSizePackageSizeNo: TIntegerField;
    cds_PackageSizePackageSizeName: TStringField;
    cds_PackageSizeLanguageCode: TIntegerField;
    cds_PackageSizeDateCreated: TSQLTimeStampField;
    cds_PackageSizeCreatedUser: TIntegerField;
    cds_PackageSizeAct: TIntegerField;
    cxSchedulerStorage1: TcxSchedulerStorage;
    sp_IsLengthLengthGroup: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
    procedure mtSelectedPkgNoBeforePost(DataSet: TDataSet);
    procedure cds_ProductLengthAfterInsert(DataSet: TDataSet);
    procedure cdsClientPrefDocsAfterInsert(DataSet: TDataSet);
    procedure cds_FtpParamAfterInsert(DataSet: TDataSet);
    procedure cdsRptNamesAfterInsert(DataSet: TDataSet);
    procedure cds_PaymentTextAfterInsert(DataSet: TDataSet);
    procedure ds_CurrencyDataChange(Sender: TObject; Field: TField);
    procedure cds_ExchangeRateAfterInsert(DataSet: TDataSet);
    procedure cdsCarrierAfterInsert(DataSet: TDataSet);
    procedure cds_Load_ImpAfterInsert(DataSet: TDataSet);

  private
    { Private declarations }
    AssignedDM: TStrings;
    FOnAmbiguousPkgNo: TAmbiguityEvent;
    function SP_Pkg_Reserved(const PkgNo: Integer;
      const PkgSupplierCode: String3; const Modul: String;
      Var Res_UserName: String): String;
    procedure getPkgsByInvOwner(const PkgNo, InventoryOwner, UserCompanyLoggedOn
      : Integer);
    procedure getPkgsByInvOwner_II(PkgNo: Integer);
    procedure getPkgsByInventoryPlace(const PkgNo, InventoryPlaceNo,
      InventoryOwner: Integer);
    procedure getImportedPkgs(const PkgNo, InventoryOwner, UserCompanyLoggedOn,
      LONo: Integer);
    procedure getImportedPkgsNoLOMatch(const PkgNo, InventoryOwner,
      UserCompanyLoggedOn: Integer);

  Protected
    procedure ResolvePkgNoAmbiguity(Sender: TObject; ADataSource: TDataSource;
      var Choice: String3; var SupplierNo: Integer; var ProductNo: Integer);

  public
    DeliveryMessageNumber: String;
    ShippingPlanNo: Integer;
    LOG_ENABLE: Boolean;
    MarkedPkgs: Integer;
    PktNrPos, AntPosPktNr, LevKodPos, AntPosLevKod: Cardinal;
    function  IsLengthLengthGroup(const ProductLengthNo : Integer) : Boolean ;
    function  GetLanguageNo : Integer ;
    procedure SaveLanguage(const LanguageNo : Integer) ;
    procedure MovePkgToInvFromLoad(const LoadNo, LIPNo: Integer);
    procedure Close_cds_LoadWeigth;
    procedure Open_cds_LoadWeigth(const LoadNo: Integer);
    procedure GenerateLoadWeight(const LoadNo: Integer);
    procedure Generate_Vis_Upd_ProdCodeInfo(const InternalInvoiceNo,
      StatCodeIncl: Integer);
    Function Get_NoOfDaysDiscount2(const PaymentTermsNo: Integer): word;
    procedure DelLoad_Res(const LoadNo: Integer);
    function Load_Reserved(const LoadNo: Integer): String;
    function SP_Load_Reserved(const LoadNo: Integer): String;
    procedure RunLengthSpec;
    Function DeleteAssigned(const FormNamn, AssignedDMmodul: String): Boolean;
    // frmAvrop.Name, 'dmVidaInvoice'
    Function AssignDMToThisWork(const FormNamn, AssignedDMmodul: String)
      : Boolean; // frmAvrop.Name, 'dmVidaInvoice'
    function GetCarrierNo(const CarrierName: String): Integer;
    Procedure Set_SetMallAsStd(const Name, Form: String);
    Function GetProductNoByProductCode(const ProductCode: String): Integer;
    procedure InsLoad_Imp(const TempLoadNo, LoadNo, LONo, AntalPaket: Integer);
    Function NewLoad(const SupplierNo, UserID, LONo: Integer;
      const LoadID, FS: String): Integer;
    Function GetCurrentStyckInPackage(const PackageNo: Integer;
      const Prefix: String; Var PackageTypeNo, ProductNo: Integer;
      Var ALMM: Double): Integer;
    function IsLoadInvoiced(const LoadNo: Integer): Boolean;
    function IsLoadAR(const LoadNo: Integer): Boolean;
    function IsRegDateBeforeInvDate(const LIPNo: Integer;
      const RegDate: TDateTime; Var InvDate: TDateTime;
      Var MaxDateMsg: String): Integer;
    function IsRegDateBeforeMaxDate(const LIPNo: Integer;
      const RegDate: TDateTime; Var InvDate: TDateTime;
      Var MaxDateMsg: String): Integer;

    function GetExRate(const CurrencyNo: Integer): Double;
    function PkgNoToSuppCodeImportedPkg(const PkgNo, InventoryOwner,
      UserCompanyLoggedOn, LONo: Integer; var SupplierNo: Integer;
      Var ProductNo: Integer): String3;

    procedure Close_ClientPrefDocs;
    procedure Open_ClientPrefDocs;

    procedure FDoLog(s: string);
    procedure Email_Attachments(const Attach: array of String;
      const fMailToAddress, Subject, Stext: String);
    function Get_A_Value_From_UserDir(const Form, pFieldName: String): String;
    procedure Save_A_Value_To_UserDir(const Form, Value, Field: String);
    Function POLoadConfirmed(const POLoadNo: Integer;
      Var Sales_LONo: Integer): Integer;
    function DoesLOHaveLoadsConfirmed(const SupplierShipPlanObjectNo
      : Integer): Boolean;
    Function CopyPOLoadToSalesLoadAndSetPackagesAsNotAvailable(const OldLoadNo,
      NewLONo, OriginalLoadNo, Insert_Confirmed_Load: Integer): Integer;
    procedure ShowMemo(InfoList: TStrings);
    function DoesLOHaveNonInvoicedLoads(const LONo: Integer): Boolean;
    Function GetReportNameByReportNo(const ReportNo: Integer): String;
    function GetReportNameByDocTyp(const DocTyp: Integer): String;
    function GetLogonParams(var HostName, Database, UserName, Password,
      CRpath: String): Boolean;
    procedure SaveDir(const Value, Field: String);
    procedure GetLastUsedLoadNo(Strings: TStrings);
    procedure SaveLastUsedLoadNo(Strings: TStrings);
    function LoadGridLayout(const UserID: Integer; const ViewName: String;
      AGridView: TcxGridTableView): Boolean;
    function LoadGridLayout_Special(const UserID: Integer;
      const Form, ViewName: String; AGridView: TcxGridTableView): Boolean;
    procedure StoreGridLayout(const UserID: Integer; const ViewName: String;
      AGridView: TcxGridTableView);
    procedure StoreGridLayout_Special(const UserID: Integer;
      const Form, ViewName: String; AGridView: TcxGridTableView);

    procedure StoreGridSets(const UserID: Integer;
      const Name, Form, ViewName: String; AGridView: TcxGridTableView);

    function GetProductLengthNoByALMM(const ALMM: String): Integer;
    // Andvänds för medellängd
    function GetProductLengthNoByALMMandNLMM(const ALMM, NLMM: Double): Integer;
    // Internal
    function GetProductLengthNoByLengthRule(const ALMM: String;
      const NT: Double; const SurfacingNo: Integer): Integer;
    // External rutin för getting nom längd
    function GetNomLengthOfLengthRule(const ALMM, MinNTmm, MaxNTmm: Double;
      const ClientNo, SurfacingNo: Integer): Double; // Internal
    Function All_PkgLengths_In_LengthGroup(const PackageTypeNo,
      LO_ProductLengthGroupNo: Integer): Boolean;
    procedure AddPkgTypeColumns(const PackageTypeNo: Integer);
    function GetPkgPos(const ClientNo: Integer): String;
    function PkgNoToSuppCode(const PkgNo, InventoryOwner, UserCompanyLoggedOn
      : Integer; var SupplierNo: Integer; var ProductNo: Integer): String3;

    function PkgNoToSuppCode_II(const PkgNo: Integer; var SupplierNo: Integer;
      Var ProductNo: Integer): String3;

    function PkgNoToSuppCode_III(const PkgNo, InventoryPlaceNo,
      InventoryOwner: Integer; var SupplierNo: Integer;
      Var ProductNo: Integer): String3;

    function Pkg_Reserved(const PkgNo: Integer; const PkgSupplierCode: String3;
      const Modul: String; Var Res_UserName: String): String;

    procedure Delete_ReservedPkgs(const Modul: String);
    procedure Delete_UserReservedPkgs;

    function AccessRights(const UserName: String; const UserPswd: String)
      : TUserSpec;

    function LogOnToDatabase(HostName: string; Database: string;
      DBUserName: string; DBUserPswd: string): Boolean;

    procedure SaveUserDir(const UserID: Integer;
      const Form, ExportDir, ImportDir, DeliveryMessageWood_XSD: String);
    function GetUserExportDir(const ExportDir: Integer; const UserID: Integer;
      const Form: String): String;
    function Get_Dir(const pFieldName: String): String;
    function Get_SystemDir(const Form, pFieldName: String): String;
    function GetLangPath(): String;

    property OnAmbiguousPkgNo: TAmbiguityEvent read FOnAmbiguousPkgNo
      write FOnAmbiguousPkgNo;

  end;

var
  dmsSystem: TdmsSystem;

implementation

{$R *.dfm}

uses
  dmsDataConn,
  VidaConst, VidaUser,
  dlgPickPkg_II,
  // recerror ,
  uShowMemo, dmsVidaContact, uSendMapiMail;

{ TdmsSystem }

procedure TdmsSystem.MovePkgToInvFromLoad(const LoadNo, LIPNo: Integer);
Begin
  Try
    sp_MovePkgToInvFromLoad.ParamByName('@LoadNo').AsInteger := LoadNo;
    sp_MovePkgToInvFromLoad.ParamByName('@LIPNo').AsInteger := LIPNo;
    sp_MovePkgToInvFromLoad.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_MovePkgToInvFromLoad.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function GetFileSize(sFileName: string): Int64;
var
  f: Cardinal;
begin
  f := FileOpen(sFileName, fmOpenRead);
  Result := FileSeek(f, 0, 2);
  FileClose(f);
  {
    with TFileStream.Create(sFileName, fmOpenRead) do
    try
    Result := Size;
    finally
    Free;
    end;
  }
end;

procedure TdmsSystem.FDoLog(s: string);
var
  sName: string;
  f: Text;
begin
  if LOG_ENABLE then
  Begin
    // sName := dmsConnector.DriveLetter + 'VIS\TEMP\'  + Application.Title + '.log' ;
    sName := dmsConnector.DriveLetter + 'VIS\TEMP\' + 'VIS' + '.log';
    AssignFile(f, sName);
    if not FileExists(sName) then
      Rewrite(f)
    else
    begin
      Append(f);
    end;
    Writeln(f, FormatDateTime('yyyy.mm.dd hh:nn:ss zzz    ', now) + s);
    CloseFile(f);
    if GetFileSize(sName) >= 512 * 1024 then
      RenameFile(sName, sName + FormatDateTime('.yyyy.mm.dd_hh.nn.ss.zzz', now))
  End
end;

(* procedure TdmsSystem.FDoLog(s: string);
  begin
  if LOG_ENABLE then
  Begin
  Try
  sq_DoLog.ParamByName('ProgramName').AsString := Application.Title ;
  sq_DoLog.ParamByName('UserID').AsInteger     := ThisUser.UserID ;
  sq_DoLog.ParamByName('LogText').AsString     := S ;
  sq_DoLog.ExecSQL(False) ;
  except
  On E: Exception do
  Begin
  //       dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  //       Raise ;
  End ;
  end;
  End
  end; *)

Function TdmsSystem.AssignDMToThisWork(const FormNamn, AssignedDMmodul: String)
  : Boolean; // frmAvrop.Name, 'dmVidaInvoice'
Begin
  AssignedDM.AddObject(FormNamn, TObject(AssignedDMmodul));
End;

Function TdmsSystem.DeleteAssigned(const FormNamn, AssignedDMmodul: String)
  : Boolean; // frmAvrop.Name, 'dmVidaInvoice'
Var
  x, i, AntalInstanser: Integer;
Begin
  Result := False;
  AntalInstanser := 0;
  For x := 0 to AssignedDM.Count - 1 do
  Begin
    if (String(AssignedDM.Objects[x]) = AssignedDMmodul) then
      AntalInstanser := succ(AntalInstanser);
  End;

  if AntalInstanser = 1 then
  Begin
    For x := 0 to AssignedDM.Count - 1 do
    Begin
      if (String(AssignedDM.Objects[x]) = AssignedDMmodul) and
        (AssignedDM.Strings[x] = FormNamn) then
      Begin
        // if AntalInstanser = 1 then
        Result := True;
        AssignedDM.Delete(x);
        Break;
      End;
    End; // For x := 0 to AssignedDM.Count - 1 do
  End // if AntalInstanser = 1 then
  else
  Begin
    Result := False;
    i := AssignedDM.IndexOf(FormNamn);
    AssignedDM.Delete(i);
  End;
End;

function TdmsSystem.GetReportNameByDocTyp(const DocTyp: Integer): String;
Begin
  Case DocTyp of
    LastOrderVerk:
      Result := GetReportNameByReportNo(LastOrderVerkReportNo);
  End;
End;

Function TdmsSystem.GetReportNameByReportNo(const ReportNo: Integer): String;
Begin
  sq_GetRPName.ParamByName('ReportNo').AsInteger := ReportNo;
  sq_GetRPName.Open;
  Try
    if not sq_GetRPName.Eof then
      Result := sq_GetRPNameReportName.AsString
    else
      Result := '';
  Finally
    sq_GetRPName.Close;
  End;
End;

function TdmsSystem.GetLogonParams(var HostName, Database, UserName, Password,
  CRpath: String): Boolean;
Begin
  sq_dbProps.Open;
  if not sq_dbProps.Eof then
  Begin
    HostName := sq_dbPropsHostName.AsString;
    Database := sq_dbPropsDatabas.AsString;
    UserName := sq_dbPropsUserName.AsString;
    Password := sq_dbPropsPassword.AsString;
    CRpath := sq_dbPropsCRPath.AsString;
//    intsec := sq_dbPropsintsec.AsInteger;
    Result := True;
  End
  else
    Result := False;
  sq_dbProps.Close;
End;

function TdmsSystem.GetLangPath: String;
begin
  sq_dbProps.Open;
  Try
    if not sq_dbProps.Eof then
    Begin
      Result := sq_dbPropsLangPath.AsString;
    End
    else
      Result := '';
  Finally
    sq_dbProps.Close;
  End;
end;

procedure TdmsSystem.GetLastUsedLoadNo(Strings: TStrings);
Begin
  cds_LastLoadNo.Active := False;
  cds_LastLoadNo.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_LastLoadNo.Active := True;

  cds_LastLoadNo.First;
  while not cds_LastLoadNo.Eof do
  begin
    Strings.Add(cds_LastLoadNo.FieldByName('LastLoadNo').AsString);
    // Strings.AddObject(cds_LastLoadNo.FieldByName('LastLoadNo').AsString,
    // TObject(cds_LastLoadNo.FieldByName('LastLoadNo').AsInteger));
    cds_LastLoadNo.Next
  end;
  cds_LastLoadNo.Active := False;
End;

procedure TdmsSystem.SaveLastUsedLoadNo(Strings: TStrings);
Var
  x: Integer;
Begin
  cds_LastLoadNo.ParamByName('UserID').AsInteger := -1;
  cds_LastLoadNo.Active := True;
  Try
    sq_DelLastLoadUsed.ParamByName('UserID').AsInteger := ThisUser.UserID;
    sq_DelLastLoadUsed.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;

  For x := 0 to Strings.Count - 1 do
  Begin
    cds_LastLoadNo.Insert;
    cds_LastLoadNoUserID.AsInteger := ThisUser.UserID;
    cds_LastLoadNoLastLoadNo.AsString := Strings.Strings[x];
    cds_LastLoadNo.Post;
  End;
  if cds_LastLoadNo.ChangeCount > 0 then
  Begin
    cds_LastLoadNo.ApplyUpdates(0);
    cds_LastLoadNo.CommitUpdates;
  End;
  cds_LastLoadNo.Active := False;
End;

procedure TdmsSystem.SaveDir(const Value, Field: String);
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := 'Global';
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    cds_Props.Edit;
    cds_Props.FieldByName(Field).AsString := Value;
    cds_Props.Post;
  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
    cds_PropsForm.AsString := 'Global';
    cds_Props.FieldByName(Field).AsString := Value;
    cds_Props.Post;
  End;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

procedure TdmsSystem.SaveUserDir(const UserID: Integer;
  const Form, ExportDir, ImportDir, DeliveryMessageWood_XSD: String);
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    cds_Props.Edit;
    cds_PropsForm.AsString := Form;
    cds_PropsImportDir.AsString := ImportDir;
    cds_PropsExportDir.AsString := ExportDir;
    cds_PropsDeliveryMessageWood_XSD.AsString := DeliveryMessageWood_XSD;
    cds_Props.Post;
  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsUserID.AsInteger := UserID;
    cds_PropsForm.AsString := Form;
    cds_PropsImportDir.AsString := ImportDir;
    cds_PropsExportDir.AsString := ExportDir;
    cds_PropsDeliveryMessageWood_XSD.AsString := DeliveryMessageWood_XSD;
    cds_Props.Post;
  End;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

function TdmsSystem.GetUserExportDir(const ExportDir: Integer;
  const UserID: Integer; const Form: String): String;
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    if ExportDir = 0 then
      Result := cds_PropsExportDir.AsString
    else if ExportDir = 1 then
      Result := cds_PropsImportDir.AsString
    else if ExportDir = 2 then
      Result := cds_PropsDeliveryMessageWood_XSD.AsString
    else if ExportDir = 3 then
      Result := cds_PropsWoodXDir.AsString;

  End;
  cds_Props.Active := False;
End;

function TdmsSystem.Get_Dir(const pFieldName: String): String;
Begin
  {$IFDEF DEBUG}
    if copy(GetEnvironmentVariable('COMPUTERNAME'),0,6) = 'CARMAK' then begin
      if AnsiUpperCase(pFieldName) = 'EXCELDIR' then
        Result := dmsConnector.DriveLetter+'VIS\TEMP\EXCEL\'
      else if pFieldName = 'MyEmailAddress' then
        if GetEnvironmentVariable('COMPUTERNAME') = 'CARMAK-FASTER' then
           Result := 'larand54@gmail.com'
      else
        result := dmsConnector.DriveLetter+'VIS\TEMP\';
      exit;
    end;
  {$ENDIF}
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := 'Global';
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    Result := cds_Props.FieldByName(pFieldName).AsString;
  End
  else
    Result := 'C:\';
  if GetEnvironmentVariable('COMPUTERNAME') = 'CARMAK-FASTER' then result := 'C:\VIS\TEMP\';
  cds_Props.Active := False;
End;

function TdmsSystem.Get_SystemDir(const Form, pFieldName: String): String;
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := -1;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    Result := cds_Props.FieldByName(pFieldName).AsString;
  End
  else
    Result := 'C:\';
  cds_Props.Active := False;
End;

procedure TdmsSystem.AddPkgTypeColumns(const PackageTypeNo: Integer);
Begin
  // Om längdgrupper ändras justeras pakettypskolumner där, här läggs pakettypen upp för de längdgrupper som finns för tillfället
  Try
    sp_lencolm3pkgtypeno.ParamByName('@SearchPackageTypeNo').AsInteger :=
      PackageTypeNo;
    sp_lencolm3pkgtypeno.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;
  Try
    sp_lencolpcspkgtypeno.ParamByName('@SearchPackageTypeNo').AsInteger :=
      PackageTypeNo;
    sp_lencolpcspkgtypeno.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmsSystem.AccessRights(const UserName: String; const UserPswd: String)
  : TUserSpec;
begin
  Try
    spAccessRights.ParamByName('@UserName').AsString := UserName;
    spAccessRights.ParamByName('@UserPswd').AsString := UserPswd;
    spAccessRights.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;

  Result.UserID       := spAccessRights.ParamByName('@UserID').AsInteger;
  Result.CompanyNo    := spAccessRights.ParamByName('@Company').AsInteger;
  Result.LanguageID   := spAccessRights.ParamByName('@LanguageID').AsInteger;

  Result.AccessRights[dcProductSection] :=
    TAccessLevel(spAccessRights.ParamByName('@ProdSec').AsInteger);
  Result.AccessRights[dcClientSection] :=
    TAccessLevel(spAccessRights.ParamByName('@CliSec').AsInteger);
  Result.AccessRights[dcOrderSection] :=
    TAccessLevel(spAccessRights.ParamByName('@OrdSec').AsInteger);
  Result.AccessRights[dcInventorySection] :=
    TAccessLevel(spAccessRights.ParamByName('@InvSec').AsInteger);
  Result.AccessRights[dcBaseDataSection] :=
    TAccessLevel(spAccessRights.ParamByName('@BaseSec').AsInteger);
  Result.AccessRights[dcInternalOrderSection] :=
    TAccessLevel(spAccessRights.ParamByName('@IntOrdSec').AsInteger);

  Result.AccessRights[dcAvropSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fAvropSec').AsInteger);
  Result.AccessRights[dcARSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fARSec').AsInteger);
  Result.AccessRights[dcSkeppInstrSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fSkeppInstrSec').AsInteger);
  Result.AccessRights[dcKP_ListaSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fKP_ListaSec').AsInteger);
  Result.AccessRights[dcUtlastningSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fUtlastningSec').AsInteger);
  Result.AccessRights[dcFakturaSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fFakturaSec').AsInteger);
  Result.AccessRights[dcAvrakningSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fAvrakningSec').AsInteger);
  Result.AccessRights[dcFrakt_AvrakningSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fFrakt_AvrakningSec').AsInteger);

  Result.AccessRights[dcReport_AvropSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fReport_AvropSec').AsInteger);
  Result.AccessRights[dcEditLoadOrder] :=
    TAccessLevel(spAccessRights.ParamByName('@EditLoadOrder').AsInteger);
  Result.AccessRights[dcShowPrice] :=
    TAccessLevel(spAccessRights.ParamByName('@ShowPrice').AsInteger);
  Result.AccessRights[dcAdd_packagesSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fAdd_packagesSec').AsInteger);
  Result.AccessRights[dcAsk_packagesSec] :=
    TAccessLevel(spAccessRights.ParamByName('@fAsk_packagesSec').AsInteger);

end;

function TdmsSystem.LogOnToDatabase(HostName, Database, DBUserName,
  DBUserPswd: string): Boolean;
begin
  Result := dmsConnector.LogOnToDatabase(HostName, Database, DBUserName,
    DBUserPswd);
end;

procedure TdmsSystem.Delete_UserReservedPkgs;
Begin
  Try
    sp_DelUserResPkgs.Close;
    sp_DelUserResPkgs.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_DelUserResPkgs.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmsSystem.Delete_ReservedPkgs(const Modul: String);
Begin
  Try
    sp_Delete_Res_Pkgs.Close;
    sp_Delete_Res_Pkgs.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_Delete_Res_Pkgs.ParamByName('@Modul').AsString := Modul;
    sp_Delete_Res_Pkgs.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmsSystem.Pkg_Reserved(const PkgNo: Integer;
  const PkgSupplierCode: String3; const Modul: String;
  Var Res_UserName: String): String;
begin
  Result := SP_Pkg_Reserved(PkgNo, PkgSupplierCode, Modul, Res_UserName);
end;

// Check if package is reserved, if not then the sp reservs the package for user.
function TdmsSystem.SP_Pkg_Reserved(const PkgNo: Integer;
  const PkgSupplierCode: String3; const Modul: String;
  Var Res_UserName: String): String;
begin
  Try
    sp_Pkg_Res.Close;
    sp_Pkg_Res.ParamByName('@PackageNo').AsInteger := PkgNo;
    sp_Pkg_Res.ParamByName('@SupplierCode').AsString := PkgSupplierCode;
    sp_Pkg_Res.ParamByName('@Asking_Modul').AsString := Modul;
    sp_Pkg_Res.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_Pkg_Res.ParamByName('@Asking_UserName').AsString := ThisUser.UserName;
    sp_Pkg_Res.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
  Res_UserName := Trim(sp_Pkg_Res.ParamByName('@UserName').AsString) + '/' +
    Trim(sp_Pkg_Res.ParamByName('@Modul').AsString);
  Result := Res_UserName;
  sp_Pkg_Res.Close;
end;

function TdmsSystem.PkgNoToSuppCode(const PkgNo, InventoryOwner,
  UserCompanyLoggedOn: Integer; var SupplierNo: Integer;
  Var ProductNo: Integer): String3;
var
  SuppCode: String3;
begin
  cdsPkgsByInvOwner.Active := False;
  getPkgsByInvOwner(PkgNo, InventoryOwner, UserCompanyLoggedOn);
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
      end;
  else
    begin
      // More than one package in inventories owned by the specified owner has
      // the specified package number. (They must have different suppliers).
      // Allow the user to specify which one they want.
      if assigned(FOnAmbiguousPkgNo) then
        FOnAmbiguousPkgNo(Self, Self.dsrcPkgsByInvOwner, SuppCode, SupplierNo,
          ProductNo);
    end;
  end;

  Result := SuppCode;
end;

procedure TdmsSystem.getImportedPkgsNoLOMatch(const PkgNo, InventoryOwner,
  UserCompanyLoggedOn: Integer);
begin
  cds_PkgImpNoLO.ParamByName('PkgNo').AsInteger := PkgNo;
  cds_PkgImpNoLO.ParamByName('InvOwner').AsInteger := InventoryOwner;
  cds_PkgImpNoLO.ParamByName('UserCompanyLoggedOn').AsInteger :=
    UserCompanyLoggedOn;
end;

procedure TdmsSystem.getImportedPkgs(const PkgNo, InventoryOwner,
  UserCompanyLoggedOn, LONo: Integer);
begin
  cds_PkgImp.ParamByName('PkgNo').AsInteger := PkgNo;
  cds_PkgImp.ParamByName('InvOwner').AsInteger := InventoryOwner;
  cds_PkgImp.ParamByName('UserCompanyLoggedOn').AsInteger :=
    UserCompanyLoggedOn;
  cds_PkgImp.ParamByName('LONo').AsInteger := LONo;
end;

function TdmsSystem.PkgNoToSuppCodeImportedPkg(const PkgNo, InventoryOwner,
  UserCompanyLoggedOn, LONo: Integer; var SupplierNo: Integer;
  Var ProductNo: Integer): String3;
var
  SuppCode: String3;
begin
  cds_PkgImp.Active := False;
  if LONo > 0 then
  Begin
    // dsp_PkgImp.DataSet := sq_PkgImp ;
    ds_PkgImp.DataSet := cds_PkgImp;
    getImportedPkgs(PkgNo, InventoryOwner, UserCompanyLoggedOn, LONo);
  End
  else
  Begin
    // dsp_PkgImp.DataSet := sq_PkgImpNoLO ;
    ds_PkgImp.DataSet := cds_PkgImpNoLO;
    getImportedPkgsNoLOMatch(PkgNo, InventoryOwner, UserCompanyLoggedOn);
  End;

  cds_PkgImp.Active := True;
  case cds_PkgImp.RecordCount of

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
        SuppCode := cds_PkgImp.FieldByName('SupplierCode').AsString;
        SupplierNo := cds_PkgImp.FieldByName('SupplierNo').AsInteger;
        ProductNo := cds_PkgImp.FieldByName('ProductNo').AsInteger;
      end;
  else
    begin
      // More than one package in inventories owned by the specified owner has
      // the specified package number. (They must have different suppliers).
      // Allow the user to specify which one they want.
      if assigned(FOnAmbiguousPkgNo) then
        FOnAmbiguousPkgNo(Self, Self.ds_PkgImp, SuppCode, SupplierNo,
          ProductNo);
    end;
  end;

  Result := SuppCode;
end;

function TdmsSystem.PkgNoToSuppCode_III(const PkgNo, InventoryPlaceNo,
  InventoryOwner: Integer; var SupplierNo: Integer;
  Var ProductNo: Integer): String3;
var
  SuppCode: String3;
begin
  cds_PksByInventoryPlace.Active := False;

  getPkgsByInventoryPlace(PkgNo, InventoryPlaceNo, InventoryOwner);
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
        SupplierNo := cds_PksByInventoryPlace.FieldByName('SupplierNo')
          .AsInteger;
        ProductNo := cds_PksByInventoryPlace.FieldByName('ProductNo').AsInteger;
      end;
  else
    begin
      // More than one package in inventories owned by the specified owner has
      // the specified package number. (They must have different suppliers).
      // Allow the user to specify which one they want.
      if assigned(FOnAmbiguousPkgNo) then
        FOnAmbiguousPkgNo(Self, Self.ds_PksByInventoryPlace, SuppCode,
          SupplierNo, ProductNo);
    end;
  end;

  Result := SuppCode;
end;

procedure TdmsSystem.getPkgsByInvOwner(const PkgNo, InventoryOwner,
  UserCompanyLoggedOn: Integer);
begin
  cdsPkgsByInvOwner.ParamByName('PkgNo').AsInteger := PkgNo;
  cdsPkgsByInvOwner.ParamByName('InvOwner').AsInteger := InventoryOwner;
  cdsPkgsByInvOwner.ParamByName('UserCompanyLoggedOn').AsInteger :=
    UserCompanyLoggedOn;

  { cdsPkgsByInvOwner.Close;
    cdsPkgsByInvOwner.ParamByName('PkgNo').AsInteger    := PkgNo;
    cdsPkgsByInvOwner.ParamByName('InvOwner').AsInteger := InventoryOwner;
    cdsPkgsByInvOwner.ParamByName('UserCompanyLoggedOn').AsInteger := UserCompanyLoggedOn ;

    cdsPkgsByInvOwner.Open; }
end;

procedure TdmsSystem.getPkgsByInventoryPlace(const PkgNo, InventoryPlaceNo,
  InventoryOwner: Integer);
begin
  // sp_PksByInventoryPlace.Close;
  cds_PksByInventoryPlace.ParamByName('PkgNo').AsInteger := PkgNo;
  cds_PksByInventoryPlace.ParamByName('InvOwner').AsInteger := InventoryOwner;
  cds_PksByInventoryPlace.ParamByName('InventoryPlaceNo').AsInteger :=
    InventoryPlaceNo;
  // sp_PksByInventoryPlace.Open;
end;

function TdmsSystem.PkgNoToSuppCode_II(const PkgNo: Integer;
  var SupplierNo: Integer; Var ProductNo: Integer): String3;
var
  SuppCode: String3;
begin
  cdsPksByInvOwner_II.Active := False;
  getPkgsByInvOwner_II(PkgNo);
  // cdsPksByInvOwner_II.SetProvider(provPkgsByInvOwner_II);
  cdsPksByInvOwner_II.Active := True;
  case cdsPksByInvOwner_II.RecordCount of

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
        SuppCode := cdsPksByInvOwner_II.FieldByName('SupplierCode').AsString;
        SupplierNo := cdsPksByInvOwner_II.FieldByName('SupplierNo').AsInteger;
        ProductNo := cdsPksByInvOwner_II.FieldByName('ProductNo').AsInteger;
      end;
  else
    begin
      // More than one package in inventories owned by the specified owner has
      // the specified package number. (They must have different suppliers).
      // Allow the user to specify which one they want.
      if assigned(FOnAmbiguousPkgNo) then
        FOnAmbiguousPkgNo(Self, Self.dsrcPkgsByInvOwner_II, SuppCode,
          SupplierNo, ProductNo);
    end;
  end;

  Result := SuppCode;
end;

procedure TdmsSystem.getPkgsByInvOwner_II(PkgNo: Integer);
begin

  cdsPksByInvOwner_II.ParamByName('PkgNo').AsInteger := PkgNo;
  // cdsPksByInvOwner_II.Open;
end;

procedure TdmsSystem.ResolvePkgNoAmbiguity(Sender: TObject;
  ADataSource: TDataSource; var Choice: String3; var SupplierNo: Integer;
  var ProductNo: Integer);
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
        SupplierNo := SupplierNoForSelectedpkg;
        ProductNo := ProductNoForSelectedpkg;
      end
      else
        Choice := '';
    finally
      free;
    end;
end;

procedure TdmsSystem.DataModuleCreate(Sender: TObject);
begin
  AssignedDM := TStringList.Create;
  dmsSystem.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;

  mtLengthFormat.Active := True;
  mtLengthFormat.AppendRecord([0, 'AKT.MM']);
  mtLengthFormat.AppendRecord([1, 'NOM.MM']);
  mtLengthFormat.AppendRecord([2, 'FEET']);
  mtLengthFormat.AppendRecord([3, 'AKT.TUM']);
  mtLengthFormat.AppendRecord([4, 'AKT.M']);
  mtLengthFormat.AppendRecord([5, 'NOM.M']);
  mtLengthFormat.AppendRecord([6, 'AKT.TUM eller FEET']);

  // mtLengthFormat.AppendRecord([4,'EGEN']);

  mtSizeFormat.Active := True;
  mtSizeFormat.AppendRecord([0, 'AKT.MM']);
  mtSizeFormat.AppendRecord([1, 'NOM.MM']);
  mtSizeFormat.AppendRecord([3, 'NOM.MM (AKT.MM)']);
  mtSizeFormat.AppendRecord([2, 'TUM']);
  mtSizeFormat.AppendRecord([4, 'TUM (AKT.MM)']);

  LOG_ENABLE := True;

  mtReportTypes.Active := True;
  mtReportTypes.InsertRecord(['Kontrakt', 1]);
  mtReportTypes.InsertRecord(['Faktura', 2]);
  mtReportTypes.InsertRecord(['Lastorder', 3]);
  mtReportTypes.InsertRecord(['Följesedel', 4]);
  mtReportTypes.InsertRecord(['Transportorder', 6]);
  mtReportTypes.InsertRecord(['Paketspec', 7]);
  mtReportTypes.InsertRecord(['Lastorder inköp', 8]);
  mtReportTypes.InsertRecord(['Transportorder inköp', 9]);
  mtReportTypes.InsertRecord(['Följesedel inköp', 10]);
  mtReportTypes.InsertRecord(['Följesedel USA', 12]);
  mtReportTypes.InsertRecord(['Transportbrev', 13]);
  mtReportTypes.InsertRecord(['Transportorder avrop', 14]);
end;

function TdmsSystem.GetPkgPos(const ClientNo: Integer): String;
Begin
  sq_GetPkgPos.Close;
  sq_GetPkgPos.ParamByName('ClientNo').AsInteger := ClientNo;
  sq_GetPkgPos.Open;
  Try
    if not sq_GetPkgPos.Eof then
    Begin
      PktNrPos := sq_GetPkgPosPaketNoPos.AsInteger;
      AntPosPktNr := sq_GetPkgPosPaketNoLength.AsInteger;
      LevKodPos := sq_GetPkgPosSupplierCodePos.AsInteger;
      AntPosLevKod := sq_GetPkgPosSupplierCodeLength.AsInteger;
      Result := sq_GetPkgPosClientCode.AsString;
    End
    else
      Result := '';

  Finally
    sq_GetPkgPos.Close;
  End;
End;

Function TdmsSystem.All_PkgLengths_In_LengthGroup(const PackageTypeNo,
  LO_ProductLengthGroupNo: Integer): Boolean;
Var
  Match: Boolean;
Begin
  cds_LO_Lengths.Active := False;
  cds_LO_Lengths.ParamByName('ProductLengthGroupNo').AsInteger :=
    LO_ProductLengthGroupNo;
  cds_LO_Lengths.Active := True;

  cds_PkgTypeLengths.Active := False;
  cds_PkgTypeLengths.ParamByName('PackageTypeNo').AsInteger := PackageTypeNo;
  cds_PkgTypeLengths.Active := True;
  cds_PkgTypeLengths.First;
  Try
    While not cds_PkgTypeLengths.Eof do
    Begin
      Match := False;
      cds_LO_Lengths.First;
      While not cds_LO_Lengths.Eof do
      Begin
        // if cds_PkgTypeLengthsProductLengthNo.AsInteger = cds_LO_LengthsProductLengthNo.AsInteger then
        if cds_PkgTypeLengthsALMM.AsFloat = cds_LO_LengthsActualLengthMM.AsFloat
        then
          Match := True;
        cds_LO_Lengths.Next;
      End;

      if Match = False then
      Begin
        Result := False;
        // Var LengthCombination := cds_PkgTypeLengthsActualLengthMM.AsString+'/'+cds_PkgTypeLengthsNominalLengthMM.AsString
        Exit;
      End
      else
        Result := True;
      cds_PkgTypeLengths.Next;
    End;
  Finally
    cds_PkgTypeLengths.Active := False;
    cds_LO_Lengths.Active := False;
  End;
End;

procedure TdmsSystem.mtSelectedPkgNoAfterInsert(DataSet: TDataSet);
begin
  mtSelectedPkgNoMARKERAD.AsInteger := 0;
end;

procedure TdmsSystem.mtSelectedPkgNoBeforePost(DataSet: TDataSet);
begin
  if mtSelectedPkgNoMARKERAD.AsInteger = 1 then
    MarkedPkgs := succ(MarkedPkgs)
  else if MarkedPkgs > 0 then
    MarkedPkgs := Pred(MarkedPkgs);
end;

function TdmsSystem.GetNomLengthOfLengthRule(const ALMM, MinNTmm,
  MaxNTmm: Double; const ClientNo, SurfacingNo: Integer): Double;
Begin
  // cds_ProdLength.Active:= False ;
  cds_ProdLength.Close;
  cds_ProdLength.SQL.Clear;
  cds_ProdLength.SQL.Add('Select distinct LRR.NomLength');
  cds_ProdLength.SQL.Add('FROM dbo.LengthRuleRow LRR');
  cds_ProdLength.SQL.Add
    ('Inner Join dbo.LengthRuleGrp LRG ON LRG.LengthRuleNo = LRR.LengthRuleNo');
  cds_ProdLength.SQL.Add('                         AND LRG.SetNo = LRR.SetNo');
  cds_ProdLength.SQL.Add
    ('Inner Join dbo.LengthRuleSet LRS ON LRS.SetNo = LRG.SetNo');
  cds_ProdLength.SQL.Add
    ('Inner Join dbo.LengthRuleActive LRA ON LRA.SetNo = LRS.SetNo');
  cds_ProdLength.SQL.Add('WHERE');
  cds_ProdLength.SQL.Add('LRS.ClientNo = ' + inttostr(ClientNo));
  cds_ProdLength.SQL.Add('AND LRG.MinNTmm <= :MinNTmm');
  cds_ProdLength.SQL.Add('AND LRG.MaxNTmm >= :MaxNTmm');
  cds_ProdLength.SQL.Add('AND ((LRG.SurfacingNo = :SurfacingNo)');
  cds_ProdLength.SQL.Add('or ((LRG.SurfacingNo = 0)');
  cds_ProdLength.SQL.Add
    ('AND (:SurfacingNo not in (Select LRG2.SurfacingNo from dbo.LengthRuleGrp LRG2');
  cds_ProdLength.SQL.Add
    ('Inner Join dbo.LengthRuleRow LRR2 ON LRR2.LengthRuleNo = LRG2.LengthRuleNo');
  cds_ProdLength.SQL.Add
    ('Inner Join dbo.LengthRuleSet LRS2 ON LRS2.SetNo = LRG2.SetNo');
  cds_ProdLength.SQL.Add
    ('Inner Join dbo.LengthRuleActive LRA2 ON LRA2.SetNo = LRS2.SetNo');
  cds_ProdLength.SQL.Add('WHERE');
  cds_ProdLength.SQL.Add('LRS2.ClientNo = ' + inttostr(ClientNo));
  cds_ProdLength.SQL.Add('AND LRG2.MinNTmm <= :MinNTmm');
  cds_ProdLength.SQL.Add('AND LRG2.MaxNTmm >= :MaxNTmm )) ))');

  cds_ProdLength.SQL.Add('AND LRR.MinActLength <= :ALMM');
  cds_ProdLength.SQL.Add('AND LRR.MaxActLength >= :ALMM');
  // cds_ProdLength.SQL.Add('AND PL.ActualLengthMM = :ALMM') ;
  // cds_ProdLength.SQL.Add('AND PL.NominalLengthMM = LRR.NomLength') ;
  // cds_ProdLength.SQL.Add('AND PL.Act = 1') ;

  cds_ProdLength.ParamByName('MinNTmm').AsFloat := MinNTmm;
  cds_ProdLength.ParamByName('MaxNTmm').AsFloat := MaxNTmm;
  cds_ProdLength.ParamByName('SurfacingNo').AsFloat := SurfacingNo;
  cds_ProdLength.ParamByName('ALMM').AsFloat := ALMM;

  // if ThisUser.UserID = 8 then   cds_ProdLength.SQL.SaveToFile('cds_ProdLength.txt') ;
  cds_ProdLength.Open;
  // cds_ProdLength.Active:= True ;
  if not cds_ProdLength.Eof then
    Result := cds_ProdLength.FieldByName('NomLength').AsFloat
  else
  Begin
    if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
      Result := ALMM
    else
      Result := 0;
  End;
  cds_ProdLength.Close;
  // cds_ProdLength.Active:= False ;
End;

function ReplaceCommas(s: String): String;
begin
  { Convert period to commas }
  while Pos(',', s) > 0 do
    s[Pos(',', s)] := '.';
  Result := s;
end;

function TdmsSystem.GetProductLengthNoByLengthRule(const ALMM: String;
  const NT: Double; const SurfacingNo: Integer): Integer;
Var
  FALMM, NLMM: Double;
  SALMM: String;
begin
  Result := -1;
  // SALMM  := ReplaceCommas(ALMM) ;
  FALMM := StrToFloat(ALMM);
  // if UseLengthRules then
  Begin
    if FALMM > 0 then
    Begin
      NLMM := GetNomLengthOfLengthRule(FALMM, NT, NT, ThisUser.CompanyNo,
        SurfacingNo);
      if NLMM = 0 then
        NLMM := GetNomLengthOfLengthRule(FALMM, NT, NT, 741, SurfacingNo);
      Result := GetProductLengthNoByALMMandNLMM(FALMM, NLMM);
    End;
  End; // if UseLengthRules

  if Result < 0 then
  Begin
    // if MessageDlg('Längden '+FloatToStr(FALMM)+'/'+FloatToStr(NLMM)+' finns ej upplagd, vill du att den skall läggas till?',
    // mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    // Begin
    cds_ProductLength.Active := True;
    cds_ProductLength.Append;
    cds_ProductLengthActualLengthMM.AsFloat := FALMM;
    cds_ProductLengthNominalLengthMM.AsFloat := NLMM;
    cds_ProductLength.Post;
    if cds_ProductLength.ChangeCount > 0 then
    Begin
      cds_ProductLength.ApplyUpdates(0);
      cds_ProductLength.CommitUpdates;
    End;
    Result := cds_ProductLengthProductLengthNo.AsInteger;
    cds_ProductLength.Active := False;
    // End ;//if..
  End;
end;

function TdmsSystem.GetProductLengthNoByALMMandNLMM(const ALMM,
  NLMM: Double): Integer;
Begin
  cds_ProductLength.Close;
  cds_ProductLength.SQL.Clear;
  cds_ProductLength.SQL.Add('Select distinct * ');
  // cds_ProductLength.SQL.Add('PL.NominalLengthFEET, PL.ActualLengthINCH, PL.PET, PL.FingerJoint') ;

  cds_ProductLength.SQL.Add('FROM dbo.ProductLength PL');
  cds_ProductLength.SQL.Add('WHERE');
  cds_ProductLength.SQL.Add('PL.ActualLengthMM = ' +
    ReplaceCommas(FloatToStr(ALMM)));
  cds_ProductLength.SQL.Add('AND PL.NominalLengthMM = ' +
    ReplaceCommas(FloatToStr(NLMM)));
  cds_ProductLength.SQL.Add('AND PL.Act = 1');
  cds_ProductLength.Open;

  if not cds_ProductLength.Eof then
    Result := cds_ProductLength.FieldByName('ProductLengthNo').AsInteger
  else
    Result := -1;
  cds_ProductLength.Close;
  cds_ProductLength.SQL.Clear;
  cds_ProductLength.SQL.Add
    ('Select * FROM dbo.ProductLength where ProductLengthNo = -1');
End;

function TdmsSystem.GetProductLengthNoByALMM(const ALMM: String): Integer;
Var
  FALMM, NLMM: Double;
begin
  Result := -1;
  FALMM := StrToFloat(ReplaceCommas(ALMM));
  NLMM := FALMM;

  Result := GetProductLengthNoByALMMandNLMM(FALMM, NLMM);

  if Result < 0 then
  Begin
    // if MessageDlg('Längden '+FloatToStr(FALMM)+'/'+FloatToStr(NLMM)+' finns ej upplagd, vill du att den skall läggas till?',
    // mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    // Begin
    cds_ProductLength.Active := True;
    cds_ProductLength.Append;
    cds_ProductLengthActualLengthMM.AsFloat := FALMM;
    cds_ProductLengthNominalLengthMM.AsFloat := NLMM;
    cds_ProductLength.Post;
    if cds_ProductLength.ChangeCount > 0 then
    Begin
      cds_ProductLength.ApplyUpdates(0);
      cds_ProductLength.CommitUpdates;
    End;
    Result := cds_ProductLengthProductLengthNo.AsInteger;
    cds_ProductLength.Active := False;
    // End ;//if..
  End;
end;

procedure TdmsSystem.StoreGridLayout(const UserID: Integer;
  const ViewName: String; AGridView: TcxGridTableView);
var
  Stream: TMemoryStream;
begin
  With dmsSystem do
  Begin
    cds_GridSettings.ParamByName('ViewName').AsString := ViewName;
    cds_GridSettings.ParamByName('UserID').AsInteger := UserID;
    cds_GridSettings.Active := True;
    if not cds_GridSettings.Eof then
      cds_GridSettings.Edit
    else
    Begin
      cds_GridSettings.Insert;
      cds_GridSettingsViewName.AsString := ViewName;
      cds_GridSettingsUserID.AsInteger := UserID;
    End;
    if cds_GridSettings.State in [dsEdit, dsInsert] then
    begin
      Stream := TMemoryStream.Create;
      try
        AGridView.StoreToStream(Stream);
        Stream.Position := 0;
        cds_GridSettingsSets.LoadFromStream(Stream);
      finally
        Stream.free;
      end;
      cds_GridSettings.Post;
      if cds_GridSettings.ChangeCount > 0 then
      Begin
        cds_GridSettings.ApplyUpdates(0);
        cds_GridSettings.CommitUpdates;
      End;
    end;
    cds_GridSettings.Active := False;
  End;
end;

procedure TdmsSystem.StoreGridLayout_Special(const UserID: Integer;
  const Form, ViewName: String; AGridView: TcxGridTableView);
var
  Stream: TMemoryStream;
begin
  With dmsSystem do
  Begin
    cds_GridSets.ParamByName('ViewName').AsString := ViewName;
    cds_GridSets.ParamByName('UserID').AsInteger := UserID;
    cds_GridSets.ParamByName('Form').AsString := Form;

    cds_GridSets.Active := True;
    if not cds_GridSets.Eof then
      cds_GridSets.Edit
    else
    Begin
      cds_GridSets.Insert;
      cds_GridSetsViewName.AsString := ViewName;
      cds_GridSetsUserID.AsInteger := UserID;
      cds_GridSetsForm.AsString := Form;
    End;
    if cds_GridSets.State in [dsEdit, dsInsert] then
    begin
      Stream := TMemoryStream.Create;
      try
        AGridView.StoreToStream(Stream);
        Stream.Position := 0;
        cds_GridSetsSets.LoadFromStream(Stream);
      finally
        Stream.free;
      end;
      cds_GridSets.Post;
      if cds_GridSets.ChangeCount > 0 then
      Begin
        cds_GridSets.ApplyUpdates(0);
        cds_GridSets.CommitUpdates;
      End;
    end;
    cds_GridSets.Active := False;
  End;
end;

function TdmsSystem.LoadGridLayout(const UserID: Integer;
  const ViewName: String; AGridView: TcxGridTableView): Boolean;
var
  Stream: TMemoryStream;
begin
  Result := False;
  With dmsSystem do
  Begin
    cds_GridSettings.ParamByName('ViewName').AsString := ViewName;
    cds_GridSettings.ParamByName('UserID').AsInteger := UserID;
    cds_GridSettings.Active := True;
    if not cds_GridSettings.Eof then
    Begin
      Stream := TMemoryStream.Create;
      try
        cds_GridSettingsSets.SaveToStream(Stream);
        Stream.Position := 0;
        AGridView.RestoreFromStream(Stream);
        Result := True;
      finally
        Stream.free;
      end;
    End;
    cds_GridSettings.Active := False;
  End;
end;

function TdmsSystem.LoadGridLayout_Special(const UserID: Integer;
  const Form, ViewName: String; AGridView: TcxGridTableView): Boolean;
var
  Stream: TMemoryStream;
begin
  Result := False;
  With dmsSystem do
  Begin
    cds_GridSets.ParamByName('ViewName').AsString := ViewName;
    cds_GridSets.ParamByName('UserID').AsInteger := UserID;
    cds_GridSets.ParamByName('Form').AsString := Form;
    cds_GridSets.Active := True;
    if not cds_GridSets.Eof then
    Begin
      Stream := TMemoryStream.Create;
      try
        cds_GridSetsSets.SaveToStream(Stream);
        Stream.Position := 0;
        AGridView.RestoreFromStream(Stream);
        Result := True;
      finally
        Stream.free;
      end;
    End;
    cds_GridSets.Active := False;
  End;
end;

procedure TdmsSystem.StoreGridSets(const UserID: Integer;
  const Name, Form, ViewName: String; AGridView: TcxGridTableView);
var
  Stream: TMemoryStream;
begin
  With dmsSystem do
  Begin
    cds_GridSets.ParamByName('ViewName').AsString := ViewName;
    cds_GridSets.ParamByName('UserID').AsInteger := UserID;
    cds_GridSets.ParamByName('Form').AsString := Form;
    cds_GridSets.Active := True;
    if not cds_GridSets.Eof then
    Begin
      cds_GridSets.Edit;
      cds_GridSetsForm.AsString := Form;
      cds_GridSetsName.AsString := Name;
    End
    else
    Begin
      cds_GridSets.Insert;
      cds_GridSetsViewName.AsString := ViewName;
      cds_GridSetsUserID.AsInteger := UserID;
      cds_GridSetsForm.AsString := Form;
      cds_GridSetsName.AsString := Name;
    End;
    if cds_GridSets.State in [dsEdit, dsInsert] then
    begin
      Stream := TMemoryStream.Create;
      try
        AGridView.StoreToStream(Stream);
        Stream.Position := 0;
        cds_GridSetsSets.LoadFromStream(Stream);
      finally
        Stream.free;
      end;
      if cds_GridSets.State in [dsEdit, dsInsert] then
        cds_GridSets.Post;
      if cds_GridSets.ChangeCount > 0 then
      Begin
        cds_GridSets.ApplyUpdates(0);
        cds_GridSets.CommitUpdates;
      End;
    end;
    cds_GridSets.Active := False;
  End;
end;

function TdmsSystem.DoesLOHaveNonInvoicedLoads(const LONo: Integer): Boolean;
begin
  Try
    Result := False;
    qryExec.SQL.Clear;
    qryExec.SQL.Add('Select LSP.LoadNo AS productno');
    qryExec.SQL.Add('FROM dbo.LoadShippingPlan LSP');
    qryExec.SQL.Add('Inner Join dbo.Loads L on L.LoadNo = LSP.LoadNo');
    qryExec.SQL.Add
      ('Inner Join dbo.CustomerShippingPlanHeader CSH on CSH.ShippingPlanNo = LSP.ShippingPlanNo');
    qryExec.SQL.Add('AND CSH.CustomerNo = L.CustomerNo');

    qryExec.SQL.Add('WHERE LSP.ShippingPlanNo = ' + inttostr(LONo));
    qryExec.SQL.Add
      ('AND LSP.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceNumber invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add('WHERE inl.LoadNo = LSP.LoadNo');
    qryExec.SQL.Add('AND IH.InvoiceType = 0)');

    qryExec.SQL.Add
      ('AND LSP.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl');
    qryExec.SQL.Add
      ('Inner Join dbo.ProformaInvoiceNumber invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add('WHERE inl.LoadNo = LSP.LoadNo');
    qryExec.SQL.Add('AND IH.InvoiceType = 1)');

    qryExec.SQL.Add
      ('AND LSP.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl');
    qryExec.SQL.Add
      ('Inner Join dbo.ProformaInvoiceNumber invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add('WHERE inl.LoadNo = LSP.LoadNo');
    qryExec.SQL.Add('AND IH.InvoiceType = 2)');

    qryExec.SQL.Add
      ('AND LSP.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceNumber_AGENT invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add('WHERE inl.LoadNo = LSP.LoadNo');
    qryExec.SQL.Add('AND IH.InvoiceType = 6)');

    qryExec.SQL.Add
      ('AND LSP.LoadNo not in (Select inl.LoadNo FROM dbo.Invoiced_Load inl');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceNo_VTA invno on invno.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add
      ('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = inl.InternalInvoiceNo');
    qryExec.SQL.Add('WHERE inl.LoadNo = LSP.LoadNo');
    qryExec.SQL.Add('AND IH.InvoiceType = 7)');



    // qryExec.SQL.SaveToFile('qryExec.TXT') ;

    qryExec.Open;
    if not qryExec.Eof then // and qryExec.Bof) then
      Result := True
    else
      Result := False;
  Finally
    qryExec.Close;
  End;
End;

procedure TdmsSystem.ShowMemo(InfoList: TStrings);
var
  fShowMemo: TfShowMemo;
Begin
  fShowMemo := TfShowMemo.Create(nil);
  try
    fShowMemo.cxMemo1.Lines.AddStrings(InfoList);
    fShowMemo.ShowModal;
  finally
    FreeAndNil(fShowMemo);
  end;
End;

Function TdmsSystem.CopyPOLoadToSalesLoadAndSetPackagesAsNotAvailable
  (const OldLoadNo, NewLONo, OriginalLoadNo, Insert_Confirmed_Load
  : Integer): Integer;
Begin
  Try
    sp_CopyPOLoadToSales.ParamByName('@SrcLoadNo').AsInteger := OldLoadNo;
    sp_CopyPOLoadToSales.ParamByName('@NewLONo').AsInteger := NewLONo;
    sp_CopyPOLoadToSales.ParamByName('@CreateUser').AsInteger :=
      ThisUser.UserID;
    sp_CopyPOLoadToSales.ParamByName('@OriginalLoadNo').AsInteger :=
      OriginalLoadNo;
    sp_CopyPOLoadToSales.ParamByName('@Insert_Confirmed_Load').AsInteger :=
      Insert_Confirmed_Load;
    sp_CopyPOLoadToSales.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
  Result := sp_CopyPOLoadToSales.ParamByName('@NewLoadNo').AsInteger;
  sp_CopyPOLoadToSales.Close;
End;

function TdmsSystem.DoesLOHaveLoadsConfirmed(const SupplierShipPlanObjectNo
  : Integer): Boolean;
begin
  Try
    Result := True;
    qryExec.SQL.Clear;
    qryExec.SQL.Add
      ('select LD.DefsspNo AS productno from DBO.LoadDetail LD where LD.DefsspNo = '
      + inttostr(SupplierShipPlanObjectNo));
    qryExec.SQL.Add
      (' AND LD.LoadNo in (Select CL.Confirmed_LoadNo FROM dbo.Confirmed_Load CL WHERE CL.Confirmed_LoadNo = LD.LoadNo)');
    qryExec.Open;
    if not(qryExec.Eof and qryExec.Bof) then
      Exit;
    Result := False;
  Finally
    qryExec.Close;
  End;
end;

Function TdmsSystem.POLoadConfirmed(const POLoadNo: Integer;
  Var Sales_LONo: Integer): Integer;
Begin
  sq_ConfirmedLoad.ParamByName('LoadNo').AsInteger := POLoadNo;
  sq_ConfirmedLoad.Open;
  Try
    Sales_LONo := sq_ConfirmedLoadNewShippingPlanNo.AsInteger;
    Result := sq_ConfirmedLoadNewLoadNo.AsInteger;
  Finally
    sq_ConfirmedLoad.Close;
  End;
End;

function TdmsSystem.Get_A_Value_From_UserDir(const Form,
  pFieldName: String): String;
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    Result := cds_Props.FieldByName(pFieldName).AsString;
  End
  else
    Result := '**';
  cds_Props.Active := False;
End;

procedure TdmsSystem.Save_A_Value_To_UserDir(const Form, Value, Field: String);
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    cds_Props.Edit;
    cds_Props.FieldByName(Field).AsString := Value;
    cds_Props.Post;
  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
    cds_PropsForm.AsString := Form;
    cds_Props.FieldByName(Field).AsString := Value;
    cds_Props.Post;
  End;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

procedure TdmsSystem.Email_Attachments(const Attach: array of String;
  const fMailToAddress, Subject, Stext: String);
const
  LF = #10;
Var
  dm_SendMapiMail: Tdm_SendMapiMail;
  MailToAddress: String;
begin
  MailToAddress := fMailToAddress;
  if Length(MailToAddress) = 0 then
  Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Email address is missing for the client.');
  End;
  if Length(MailToAddress) > 0 then
  Begin
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail(Subject, Stext,
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);

      // const Subject, MessageText, MailFromAddress,  MailToAddress: String; const Attachments: array of String);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Email address is missing for the client.');
end;

procedure TdmsSystem.Open_ClientPrefDocs;
Begin
  // cdsRptNames.Active := False ;
  // cdsRptNames.Active := True ;
  cdsClientPrefDocs.Active := False;
  cdsClientPrefDocs.ParamByName('ClientNo').AsInteger := -2;
  cdsClientPrefDocs.ParamByName('RoleType').AsInteger := 1;
  cdsClientPrefDocs.Active := True;
End;

procedure TdmsSystem.Close_ClientPrefDocs;
Begin
  cdsClientPrefDocs.Active := False;
  cdsRptNames.Active := False;
End;

function TdmsSystem.GetExRate(const CurrencyNo: Integer): Double;
Begin
  Result := 0;
  sq_GetXRate.ParamByName('CurrencyNo').AsInteger := CurrencyNo;
  Try

    sq_GetXRate.Active := True;
    if not sq_GetXRate.Eof then
      Result := sq_GetXRateExchangeRate.AsFloat
    else
      Result := 1;
  Finally
    sq_GetXRate.Active := False;
  End;
End;

function TdmsSystem.IsRegDateBeforeMaxDate(const LIPNo: Integer;
  const RegDate: TDateTime; Var InvDate: TDateTime;
  Var MaxDateMsg: String): Integer;
Begin
  sq_LastInvDate.ParamByName('LIPNo').AsInteger := LIPNo;
  Try
    sq_LastInvDate.Open;
    if not sq_LastInvDate.Eof then
    Begin
      if (SQLTimeStampToDateTime(sq_LastInvDateMaxDatum.AsSQLTimeStamp) >
        RegDate) then
      Begin
        Result := sq_LastInvDateIC_grpno.AsInteger;
        InvDate := SQLTimeStampToDateTime
          (sq_LastInvDateInventeringsdatum.AsSQLTimeStamp);
        MaxDateMsg :=
          'Ej tillåtet att välja ett registreringsdatum som är före senaste maxdatumet i inventeringnr: '
          + inttostr(Result) + ', Inventeringsdatum: ' + DateTimeToStr(InvDate);
      End
      else
        Result := -1;
    End
    else
      Result := -1;
  Finally
    sq_LastInvDate.Close;
  End;
End;

function TdmsSystem.IsRegDateBeforeInvDate(const LIPNo: Integer;
  const RegDate: TDateTime; Var InvDate: TDateTime;
  Var MaxDateMsg: String): Integer;
Begin
  sq_LastInvDate.ParamByName('LIPNo').AsInteger := LIPNo;
  Try
    sq_LastInvDate.Open;
    if not sq_LastInvDate.Eof then
    Begin
      if (sq_LastInvDateStatus.AsInteger < 2) and
        (SQLTimeStampToDateTime(sq_LastInvDateInventeringsdatum.AsSQLTimeStamp)
        > RegDate) then
      Begin
        Result := sq_LastInvDateIC_grpno.AsInteger;
        InvDate := SQLTimeStampToDateTime
          (sq_LastInvDateInventeringsdatum.AsSQLTimeStamp);
        MaxDateMsg :=
          'Du har valt ett registreringsdatum som är före senaste inventeringsdatumet i inventeringnr: '
          + inttostr(Result) + ', Inventeringsdatum: ' + DateTimeToStr(InvDate)
          + ', ej tillåtet.';
      End
      else if (sq_LastInvDateStatus.AsInteger = 2) and
        (SQLTimeStampToDateTime(sq_LastInvDateMaxDatum.AsSQLTimeStamp) > RegDate)
      then
      Begin
        Result := sq_LastInvDateIC_grpno.AsInteger;
        InvDate := SQLTimeStampToDateTime
          (sq_LastInvDateInventeringsdatum.AsSQLTimeStamp);
        MaxDateMsg :=
          'Du har valt ett registreringsdatum som är före senaste maxdatumet i inventeringnr: '
          + inttostr(Result) + ', Inventeringsdatum: ' + DateTimeToStr(InvDate)
          + ', ej tillåtet.';
      End
      else
        Result := -1;
    End
    else
      Result := -1;
  Finally
    sq_LastInvDate.Close;
  End;
End;

function TdmsSystem.IsLoadAR(const LoadNo: Integer): Boolean;
Begin
  Try
    Result := False;
    sp_LoadAR.ParamByName('@LoadNo').AsInteger := LoadNo;
    sp_LoadAR.Open;
    Result := sp_LoadARLoadAR.AsInteger = 1;
  Finally
    sp_LoadAR.Close;
  End;
End;

function TdmsSystem.IsLoadInvoiced(const LoadNo: Integer): Boolean;
Begin
  Result := False;
  dmsSystem.sp_OneLoad.ParamByName('@LoadNo').AsInteger := LoadNo;
  dmsSystem.sp_OneLoad.Open;
  Try
    if (not sp_OneLoad.Eof) and (sp_OneLoadInvoiced.AsInteger > 0) then
      Result := True
    else
      Result := False;
  Finally
    dmsSystem.sp_OneLoad.Close;
  End;
End;

procedure TdmsSystem.cds_ProductLengthAfterInsert(DataSet: TDataSet);
begin
  cds_ProductLengthProductLengthNo.AsInteger :=
    dmsConnector.NextMaxNo('ProductLength');
  cds_ProductLengthCreatedUser.AsInteger := ThisUser.UserID;
  cds_ProductLengthModifiedUser.AsInteger := ThisUser.UserID;
  cds_ProductLengthDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
  cds_ProductLengthAct.AsInteger := 1;
end;

procedure TdmsSystem.cdsClientPrefDocsAfterInsert(DataSet: TDataSet);
begin
  cdsClientPrefDocsClientNo.AsInteger := -2;
  cdsClientPrefDocsRoleType.AsInteger := 1;
  cdsClientPrefDocsNoOfCopy.AsInteger := 1;
  cdsClientPrefDocscollated.AsInteger := 1;
  cdsClientPrefDocsPrinterSetup.AsInteger := 0;
  cdsClientPrefDocspromptUser.AsInteger := 0;
end;

procedure TdmsSystem.cds_FtpParamAfterInsert(DataSet: TDataSet);
begin
  cds_FtpParamConnectionNo.AsInteger := dmsConnector.NextMaxNo('FtpParam');
  cds_FtpParamCompanyNo.AsInteger := ThisUser.CompanyNo;
  cds_FtpParamUserID.AsInteger := ThisUser.UserID;
end;

procedure TdmsSystem.cdsRptNamesAfterInsert(DataSet: TDataSet);
begin
  cdsRptNamesReportNo.AsInteger := dmsConnector.NextMaxNo('ReportNames');
end;

procedure TdmsSystem.cds_PaymentTextAfterInsert(DataSet: TDataSet);
begin
  cds_PaymentTextCurrencyNo.AsInteger := cds_CurrencyCurrencyNo.AsInteger;
  cds_PaymentTextCreatedUser.AsInteger := ThisUser.UserID;
  cds_PaymentTextModifiedUser.AsInteger := ThisUser.UserID;
  cds_PaymentTextDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
end;

procedure TdmsSystem.ds_CurrencyDataChange(Sender: TObject; Field: TField);
begin
  cds_PaymentText.Active := False;
  cds_PaymentText.ParamByName('CurrencyNo').AsInteger :=
    cds_CurrencyCurrencyNo.AsInteger;
  cds_PaymentText.Active := True;

  cds_ExchangeRate.Active := False;
  cds_ExchangeRate.ParamByName('CurrencyNo').AsInteger :=
    cds_CurrencyCurrencyNo.AsInteger;
  cds_ExchangeRate.Active := True;
end;

procedure TdmsSystem.cds_ExchangeRateAfterInsert(DataSet: TDataSet);
begin
  cds_ExchangeRateExchangeRateNo.AsInteger :=
    dmsConnector.NextMaxNo('ExchangeRate');
  cds_ExchangeRateCreatedUser.AsInteger := ThisUser.UserID;
  cds_ExchangeRateModifiedUser.AsInteger := ThisUser.UserID;
  cds_ExchangeRateDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
  cds_ExchangeRateCurrencyNo.AsInteger := cds_CurrencyCurrencyNo.AsInteger;
end;

procedure TdmsSystem.cdsCarrierAfterInsert(DataSet: TDataSet);
begin
  cdsCarrierCarrierNo.AsInteger := dmsConnector.NextMaxNo('Carrier');
  cdsCarrierCreatedUser.AsInteger := ThisUser.UserID;
  cdsCarrierModifiedUser.AsInteger := ThisUser.UserID;
  cdsCarrierDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
end;

Function TdmsSystem.GetCurrentStyckInPackage(const PackageNo: Integer;
  const Prefix: String; Var PackageTypeNo, ProductNo: Integer;
  Var ALMM: Double): Integer;
Begin
  sq_GetPackagetypeTotalPcs.ParamByName('PackageNo').AsInteger := PackageNo;
  sq_GetPackagetypeTotalPcs.ParamByName('SupplierCode').AsString := Prefix;
  Try
    sq_GetPackagetypeTotalPcs.Open;
    if not sq_GetPackagetypeTotalPcs.Eof then
    Begin
      Result := sq_GetPackagetypeTotalPcsTotalNoOfPieces.AsInteger;
      PackageTypeNo := sq_GetPackagetypeTotalPcsPackageTypeNo.AsInteger;
      ProductNo := sq_GetPackagetypeTotalPcsProductNo.AsInteger;
      ALMM := sq_GetPackagetypeTotalPcsALMM.AsFloat;
    End
    else
    Begin
      Result := -1;
      PackageTypeNo := -1;
      ProductNo := -1;
      ALMM := -1;
    End;
  Finally
    sq_GetPackagetypeTotalPcs.Close;
  End;
End;

Function TdmsSystem.NewLoad(const SupplierNo, UserID, LONo: Integer;
  const LoadID, FS: String): Integer;
Begin
  Try
    sp_NewCSDLoad.ParamByName('@SupplierNo').AsInteger := SupplierNo;
    sp_NewCSDLoad.ParamByName('@UserID').AsInteger := UserID;
    sp_NewCSDLoad.ParamByName('@LONo').AsInteger := LONo;
    sp_NewCSDLoad.ParamByName('@LoadID').AsString := LoadID;
    sp_NewCSDLoad.ParamByName('@FS').AsString := FS;
    Try
      sp_NewCSDLoad.ExecProc;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
    Result := sp_NewCSDLoad.ParamByName('@LoadNo').AsInteger;
  Finally
    sp_NewCSDLoad.Close;
  End;
End;

procedure TdmsSystem.InsLoad_Imp(const TempLoadNo, LoadNo, LONo,
  AntalPaket: Integer);
Begin
  Try
    sq_InsLoad_Imp.ParamByName('TempLoadNo').AsInteger := TempLoadNo;
    sq_InsLoad_Imp.ParamByName('LoadNo').AsInteger := LoadNo;
    sq_InsLoad_Imp.ParamByName('LONo').AsInteger := LONo;
    sq_InsLoad_Imp.ParamByName('AntalPaket').AsInteger := AntalPaket;
    sq_InsLoad_Imp.ParamByName('CreatedUser').AsInteger := ThisUser.UserID;
    sq_InsLoad_Imp.ParamByName('DateCreated').AsSQLTimeStamp :=
      DateTimeToSQLTimeStamp(now);
    sq_InsLoad_Imp.ExecSQL;
  except
    On E: Exception do
    Begin
      // dmsSystem.FDoLog(E.Message) ;
      ShowMessage(E.Message);
      Raise;
    End;
  End;
End;

procedure TdmsSystem.cds_Load_ImpAfterInsert(DataSet: TDataSet);
begin
  cds_Load_ImpCreatedUser.AsInteger := ThisUser.UserID;
  cds_Load_ImpDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
end;

Function TdmsSystem.GetProductNoByProductCode(const ProductCode
  : String): Integer;
Begin
  Try
    sq_GetProductNoByProductCode.ParamByName('ProductCode').AsString :=
      ProductCode;
    sq_GetProductNoByProductCode.Active := True;
    if not sq_GetProductNoByProductCode.Eof then
      Result := sq_GetProductNoByProductCodeProductNo.AsInteger
    else
      Result := -1;
  Finally
    sq_GetProductNoByProductCode.Active := False;
  End;
End;

Procedure TdmsSystem.Set_SetMallAsStd(const Name, Form: String);
Begin
  Try
    sq_SetMallAsStd.ParamByName('Name').AsString := Name;
    sq_SetMallAsStd.ParamByName('Form').AsString := Form;
    sq_SetMallAsStd.ParamByName('UserID').AsInteger := ThisUser.UserID;
    sq_SetMallAsStd.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      Raise;
    End;
  end;
End;

function TdmsSystem.GetCarrierNo(const CarrierName: String): Integer;
begin
  if cdsCarrier.Locate('CarrierName', CarrierName, []) then
    Result := cdsCarrierCarrierNo.AsInteger
  else
  Begin
    cdsCarrier.Insert;
    cdsCarrierCarrierName.AsString := CarrierName;
    Result := cdsCarrierCarrierNo.AsInteger;
    cdsCarrier.Post;
    if cdsCarrier.ChangeCount > 0 then
    Begin
      cdsCarrier.ApplyUpdates(0);
      cdsCarrier.CommitUpdates;
    End;
  End;
end;

procedure TdmsSystem.RunLengthSpec;
Begin
  Try
    sp_PopLengthSpecII.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

function TdmsSystem.Load_Reserved(const LoadNo: Integer): String;
begin
  Result := SP_Load_Reserved(LoadNo);
end;

// Check if Load is reserved, if not then the sp reservs the Loade for user.
function TdmsSystem.SP_Load_Reserved(const LoadNo: Integer): String;
begin
  Try
    Try
      sp_Load_Res.Close;
      sp_Load_Res.ParamByName('@LoadNo').AsInteger := LoadNo;
      sp_Load_Res.ParamByName('@Asking_UserName').AsString := ThisUser.UserName;
      sp_Load_Res.ExecProc;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
    Result := Trim(sp_Load_Res.ParamByName('@ResUserName').AsString);
  Finally
    sp_Load_Res.Close;
  End;
end;

procedure TdmsSystem.DelLoad_Res(const LoadNo: Integer);
Begin
  Try
    sp_DelLoad_Res.ParamByName('@LoadNo').AsInteger := LoadNo;
    sp_DelLoad_Res.ParamByName('@ResUserName').AsString := ThisUser.UserName;
    sp_DelLoad_Res.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

Function TdmsSystem.Get_NoOfDaysDiscount2(const PaymentTermsNo: Integer): word;
Begin
  sq_Get_NoOfDaysDiscount2.ParamByName('PAYMENTTERMSNO').AsInteger :=
    PaymentTermsNo;
  sq_Get_NoOfDaysDiscount2.Open;
  try
    if not sq_Get_NoOfDaysDiscount2.Eof then
      Result := sq_Get_NoOfDaysDiscount2NoOfDaysDiscount2.AsInteger
    else
      Result := 0;
  finally
    sq_Get_NoOfDaysDiscount2.Close;
  end;
End;

procedure TdmsSystem.Generate_Vis_Upd_ProdCodeInfo(const InternalInvoiceNo,
  StatCodeIncl: Integer);
Begin
  Try
    sp_Vis_Upd_ProdCodeInfo.ParamByName('@InternalInvoiceNo').AsInteger :=
      InternalInvoiceNo;
    sp_Vis_Upd_ProdCodeInfo.ParamByName('@StatCodeIncl').AsInteger :=
      StatCodeIncl;
    sp_Vis_Upd_ProdCodeInfo.ExecProc;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmsSystem.GenerateLoadWeight(const LoadNo: Integer);
Begin
  sq_GenerateLoadWeight.ParamByName('LoadNo').AsInteger := LoadNo;
  Try
    sq_GenerateLoadWeight.ExecSQL;
  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;
End;

procedure TdmsSystem.Open_cds_LoadWeigth(const LoadNo: Integer);
Begin
  cds_LoadWeigth.Active := False;
  cds_LoadWeigth.ParamByName('LoadNo').AsInteger := LoadNo;
  cds_LoadWeigth.Active := True;
End;

procedure TdmsSystem.Close_cds_LoadWeigth;
Begin
  if cds_LoadWeigth.Active then
    cds_LoadWeigth.Active := False;
End;

procedure TdmsSystem.SaveLanguage(const LanguageNo : Integer) ;
Begin
  Try
  sp_Lang.Active  := False ;
  sp_Lang.ParamByName('@UseriD').AsInteger      :=  ThisUser.UserID ;
  sp_Lang.ParamByName('@LanguageNo').AsInteger  :=  LanguageNo ;
  sp_Lang.ExecProc ;
  Except
   On E: Exception do
   Begin
    ShowMessage('sp_Lang: ' + E.Message) ;
    Raise ;
   End
  End ;
End;

function TdmsSystem.GetLanguageNo : Integer ;
Begin
 Try
  Try
  sp_Lang.Active  := False ;
  sp_Lang.ParamByName('@UseriD').AsInteger      :=  ThisUser.UserID ;
  sp_Lang.ParamByName('@LanguageNo').AsInteger  :=  -1 ;//LanguageNo ;
  sp_Lang.Active  := True ;
  if sp_Lang.RecordCount > 0 then
   Result := sp_Lang.FieldByName('LanguageNo').AsInteger
    else
     Result := -1 ;
  Except
   On E: Exception do
   Begin
    ShowMessage('sp_Lang: ' + E.Message) ;
    Raise ;
   End
  End ;
 Finally
   sp_Lang.Active  := False ;
 End;
End;

function TdmsSystem.IsLengthLengthGroup(const ProductLengthNo : Integer) : Boolean ;
Begin
  sp_IsLengthLengthGroup.ParamByName('@ProductLengthNo').AsInteger  :=  ProductLengthNo ;
  sp_IsLengthLengthGroup.Active := True ;
  Try
  if not sp_IsLengthLengthGroup.Eof then
   Result := True
    else
     Result := False ;
  Finally
    sp_IsLengthLengthGroup.Active := False ;
  End;
End;

end.
