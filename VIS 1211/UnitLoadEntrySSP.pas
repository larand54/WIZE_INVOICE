unit UnitLoadEntrySSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar,

  VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ActnList, cxGraphics, cxLabel,
  cxImageComboBox, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  dxBarExtItems, Menus, cxLookAndFeelPainters, DateUtils, cxButtons,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, siComp, siLngLnk;

type
  TfLoadEntrySSP = class(TForm)
    dxBarManager1: TdxBarManager;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    lbReValidateAllPkgs: TdxBarLargeButton;
    lbPackageEntry: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbValidatePkg: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    lbDeleteLoad: TdxBarLargeButton;
    pmLONumber: TdxBarPopupMenu;
    lbSetDefaultMatchAllPkg: TdxBarLargeButton;
    tsLoadNote: TcxTabSheet;
    ImageList1: TImageList;
    images1616: TImageList;
    siPrint: TdxBarSubItem;
    lbFS: TdxBarLargeButton;
    lbHyvelOrder: TdxBarLargeButton;
    lbLastOrderAllaVerk: TdxBarLargeButton;
    lbLastOrderErtVerk: TdxBarLargeButton;
    lbSpecAllaLasterLO: TdxBarLargeButton;
    lbDeletePkg: TdxBarLargeButton;
    lbRemoveAllPkgs: TdxBarLargeButton;
    lbDeleteALLPkgs: TdxBarLargeButton;
    lbUndo: TdxBarLargeButton;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    ppmenuLO_Lines: TdxBarPopupMenu;
    bbTally_Ver2: TdxBarButton;
    bbConnectPkgsToLO: TdxBarButton;
    bbPickPkgNos: TdxBarButton;
    lbStartBarCodeReading: TdxBarLargeButton;
    bbAddPkgPerPkgCode: TdxBarButton;
    bbRemovePkgsPerPkgCode: TdxBarButton;
    ActionList1: TActionList;
    acValidatePkg: TAction;
    acValidateAllPkgs: TAction;
    acInsertPkgToInventory: TAction;
    acInsertAllPkgsToInventory: TAction;
    acRemovePkgFromSystem: TAction;
    acRemoveAllPkgsFromSystem: TAction;
    acUndoPkgOperation: TAction;
    acSetDefaultMatchOnAllPkgs: TAction;
    acPkgInfo: TAction;
    acAddPkgByPkgCode: TAction;
    detLoaded: TcxDBDateEdit;
    acPickPkgNos: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    PanelLORows: TPanel;
    Panel1: TPanel;
    PanelPackages: TPanel;
    Panel2: TPanel;
    acSaveLoad: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    imgcbStatus: TcxDBImageComboBox;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acPrintTallyUSNote: TAction;
    grdPkgsLevel1: TcxGridLevel;
    grdPkgs: TcxGrid;
    grdPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PackageOK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    grdLORowsLevel1: TcxGridLevel;
    grdLORows: TcxGrid;
    grdLORowsDBBandedTableView1: TcxGridDBBandedTableView;
    grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo
      : TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn;
    grdAddressDBTableView1: TcxGridDBTableView;
    grdAddressLevel1: TcxGridLevel;
    grdAddress: TcxGrid;
    grdAddressDBTableView1Address: TcxGridDBColumn;
    grdAddressDBTableView1Destination: TcxGridDBColumn;
    grdAddressDBTableView1Reference: TcxGridDBColumn;
    grdLODBTableView1: TcxGridDBTableView;
    grdLOLevel1: TcxGridLevel;
    grdLO: TcxGrid;
    grdLODBTableView1LoadNo: TcxGridDBColumn;
    grdLODBTableView1SupplierNo: TcxGridDBColumn;
    grdLODBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdLODBTableView1CUSTOMER: TcxGridDBColumn;
    grdLODBTableView1SHIPPER: TcxGridDBColumn;
    grdLODBTableView1READYDATE: TcxGridDBColumn;
    grdLODBTableView1VESSEL: TcxGridDBColumn;
    grdLODBTableView1ETD: TcxGridDBColumn;
    grdLODBTableView1ETA: TcxGridDBColumn;
    grdLODBTableView1SHIPPER_REF: TcxGridDBColumn;
    grdLODBTableView1SHIPPERID: TcxGridDBColumn;
    grdLODBTableView1SHIPPERS_SHIPDATE: TcxGridDBColumn;
    grdLODBTableView1SHIPPERS_SHIPTIME: TcxGridDBColumn;
    grdLODBTableView1ORDERNO: TcxGridDBColumn;
    grdLODBTableView1ORDERTYPE: TcxGridDBColumn;
    grdLODBTableView1CreatedUser: TcxGridDBColumn;
    grdLODBTableView1ModifiedUser: TcxGridDBColumn;
    grdLODBTableView1DateCreated: TcxGridDBColumn;
    grdLODBTableView1CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1Avrop_CustomerNo: TcxGridDBColumn;
    grdLODBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLODBTableView1Shipping: TcxGridDBColumn;
    grdLODBTableView1SUPPLIER: TcxGridDBColumn;
    grdLODBTableView1LOC_CUST: TcxGridDBColumn;
    grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn;
    grdLODBTableView1SHIP_TO: TcxGridDBColumn;
    teLoadID: TcxDBTextEdit;
    teFS: TcxDBTextEdit;
    lcLocalShipper: TcxDBLookupComboBox;
    lcFrom: TcxDBLookupComboBox;
    lcTo: TcxDBLookupComboBox;
    eLoadNo: TcxDBTextEdit;
    meInternalNote: TcxDBMemo;
    grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn;
    acKopplaPaketMotLOManuellt: TAction;
    acDeleteLoad: TAction;
    acPrintFS: TAction;
    acPrintHyvelOrder: TAction;
    acLOAllaVerk: TAction;
    acPrintLOErtVerk: TAction;
    acPrintSpecAllaLasterLO: TAction;
    acPkgEntry: TAction;
    acStreckKodsinlasning: TAction;
    acPktNrSerie: TAction;
    acTaBortPaketPerPaketKod: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleSilver: TcxStyle;
    grdPkgsDBBandedTableView1Defsspno: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn;
    acImportPackages: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    acCreateInternLO: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    acOpenLOForm: TAction;
    dxBarButton2: TdxBarButton;
    acClose: TAction;
    acSaveAndOK: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acPrintMeny: TAction;
    pmPrint: TdxBarPopupMenu;
    PopupMenu1: TPopupMenu;
    Lggtillpaketperpaketkod1: TMenuItem;
    StngF121: TMenuItem;
    AutoLO1: TMenuItem;
    abortlastF51: TMenuItem;
    Importpaket1: TMenuItem;
    Lggallapakettilllagret1: TMenuItem;
    Lggmarkeradepakettillbakstilllager1: TMenuItem;
    KopplamarkeradepaketmotLOmanuellt1: TMenuItem;
    Lastorderallaverk1: TMenuItem;
    ppnaLO1: TMenuItem;
    Plockapaketnr1: TMenuItem;
    PktinmatF91: TMenuItem;
    Paketinformation1: TMenuItem;
    Pktnrserie1: TMenuItem;
    Fljesedel1: TMenuItem;
    Hyvelorder1: TMenuItem;
    Lastorderertverk1: TMenuItem;
    SkrivutF81: TMenuItem;
    SpecificationallalasterLO1: TMenuItem;
    FljesedelUSA1: TMenuItem;
    abortallapaketfrnsystemet1: TMenuItem;
    StatusOKSparaF101: TMenuItem;
    SparaF31: TMenuItem;
    Sttstandardmatchningpallapaket1: TMenuItem;
    Streckkod1: TMenuItem;
    abortpaketperpaketkod1: TMenuItem;
    ngra1: TMenuItem;
    ngratabort2: TMenuItem;
    Validerapaket1: TMenuItem;
    acPrintFSMisMatch: TAction;
    dxBarButton3: TdxBarButton;
    acDeleteNotCompletePkgs: TAction;
    acMailaFS: TAction;
    dxBarButton4: TdxBarButton;
    grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn;
    acSetStatusPrelandSave: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    acGetVPPackages: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    pmMenuOptions: TdxBarPopupMenu;
    dxBarLargeButton7: TdxBarLargeButton;
    mePackageNo: TcxMaskEdit;
    cxLabel3: TcxLabel;
    Timer1: TTimer;
    dxBarLargeButton8: TdxBarLargeButton;
    cxLabel4: TcxLabel;
    cxEditStyleControllerFileldLabels: TcxEditStyleController;
    cxEditStyleControllerEditControls: TcxEditStyleController;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxStyleHeader: TcxStyle;
    cxStyleContent: TcxStyle;
    cxStyleContentOdd: TcxStyle;
    dxBarLargeButton9: TdxBarLargeButton;
    acShowLoadHeader: TAction;
    cxButton1: TcxButton;
    acRaderaPaket: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    lcLIP: TcxDBLookupComboBox;
    lcPIP: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    Edit1: TEdit;
    dxBarLargeButton10: TdxBarLargeButton;
    acPrintCMR: TAction;
    dxBarLargeButton11: TdxBarLargeButton;
    acPrintFSandCMR: TAction;
    grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PkgDiff: TcxGridDBBandedColumn;
    cxStyleclSkyBlue: TcxStyle;
    cxStyleGreen: TcxStyle;
    cxStyleOrange: TcxStyle;
    cbKopplaEjMotDublett: TcxCheckBox;
    grdLORowsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Certfiering: TcxGridDBBandedColumn;
    siLangLinked_fLoadEntrySSP: TsiLangLinked;
    grdLORowsDBBandedTableView1ShippingPlanStatus: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KG: TcxGridDBBandedColumn;

    procedure lbRemovePackageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbTally_Ver2Click(Sender: TObject);

    procedure acValidatePkgExecute(Sender: TObject);
    procedure acValidateAllPkgsExecute(Sender: TObject);
    procedure acInsertPkgToInventoryExecute(Sender: TObject);
    procedure acInsertAllPkgsToInventoryExecute(Sender: TObject);
    procedure acRemovePkgFromSystemExecute(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemExecute(Sender: TObject);
    procedure acUndoPkgOperationExecute(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acValidatePkgUpdate(Sender: TObject);
    procedure acValidateAllPkgsUpdate(Sender: TObject);
    procedure acInsertPkgToInventoryUpdate(Sender: TObject);
    procedure acInsertAllPkgsToInventoryUpdate(Sender: TObject);
    procedure acRemovePkgFromSystemUpdate(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
    procedure acUndoPkgOperationUpdate(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acAddPkgByPkgCodeExecute(Sender: TObject);
    procedure acAddPkgByPkgCodeUpdate(Sender: TObject);
    procedure acPickPkgNosExecute(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
    procedure acSaveLoadExecute(Sender: TObject);

    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure grdLORowsDBBandedTableView1MATCHPropertiesChange(Sender: TObject);
    procedure acKopplaPaketMotLOManuelltExecute(Sender: TObject);
    procedure acSaveLoadUpdate(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acDeleteLoadUpdate(Sender: TObject);
    procedure acPrintFSExecute(Sender: TObject);
    procedure acPrintHyvelOrderExecute(Sender: TObject);
    procedure acLOAllaVerkExecute(Sender: TObject);
    procedure acPrintLOErtVerkExecute(Sender: TObject);
    procedure acPrintSpecAllaLasterLOExecute(Sender: TObject);
    procedure acPrintFSUpdate(Sender: TObject);
    procedure acPrintSpecAllaLasterLOUpdate(Sender: TObject);
    procedure acPrintLOErtVerkUpdate(Sender: TObject);
    procedure acLOAllaVerkUpdate(Sender: TObject);
    procedure acPrintHyvelOrderUpdate(Sender: TObject);
    procedure acPkgEntryExecute(Sender: TObject);
    procedure acPkgEntryUpdate(Sender: TObject);
    procedure acStreckKodsinlasningExecute(Sender: TObject);
    procedure acPktNrSerieExecute(Sender: TObject);
    procedure acPktNrSerieUpdate(Sender: TObject);
    procedure acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
    procedure acTaBortPaketPerPaketKodExecute(Sender: TObject);
    procedure acTaBortPaketPerPaketKodUpdate(Sender: TObject);
    procedure acStreckKodsinlasningUpdate(Sender: TObject);
    procedure grdLORowsDBBandedTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgsDBBandedTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure grdPkgsDBBandedTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acImportPackagesExecute(Sender: TObject);
    procedure acImportPackagesUpdate(Sender: TObject);
    procedure acCreateInternLOExecute(Sender: TObject);
    procedure acCreateInternLOUpdate(Sender: TObject);
    procedure acOpenLOFormExecute(Sender: TObject);
    procedure acOpenLOFormUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveAndOKExecute(Sender: TObject);
    procedure acSaveAndOKUpdate(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acPrintFSMisMatchExecute(Sender: TObject);
    procedure acDeleteNotCompletePkgsExecute(Sender: TObject);
    procedure acMailaFSExecute(Sender: TObject);
    procedure acSetStatusPrelandSaveExecute(Sender: TObject);
    procedure acSetStatusPrelandSaveUpdate(Sender: TObject);
    procedure acGetVPPackagesExecute(Sender: TObject);
    procedure acGetVPPackagesUpdate(Sender: TObject);
    procedure mePackageNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure acShowLoadHeaderExecute(Sender: TObject);
    procedure acRaderaPaketExecute(Sender: TObject);
    procedure acRaderaPaketUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acPrintCMRExecute(Sender: TObject);
    procedure acPrintFSandCMRExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure grdLORowsDBBandedTableView1CellClick
      (Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);

  private
    { Private declarations }
    // TempEditString  : String ;
    LoadEnabled, AddingPkgsFromPkgEntry: Boolean;

    Procedure GetLO_Records;
    procedure EnterLoadWeight(Sender: TObject);
    procedure PrintDirectCMR(Sender: TObject);
    procedure PRE_PreviewCMR(Sender: TObject);
    procedure PreviewCMR(Sender: TObject);
    procedure PrintDirectFS(Sender: TObject);
    procedure PreviewFS(Sender: TObject);
    function AddPkgTo_cds_LoadPackagesPkgSerieNo(Sender: TObject;
      const PkgNo: Integer; const PkgSupplierCode: String3): TEditAction;

    procedure GetpackageNoEntered(Sender: TObject; const PackageNo: String);
    function ControlInvDate: Boolean;
    procedure ValidateAllPkgs;

    Procedure Generate_LSP_Sales_SQL(const LoadNo: Integer);
    procedure UpdateInternLO;
    procedure CreateInternLO;
    procedure OpenInternLO(const LO: Integer);
    // procedure InsertImportedPkgs(Sender: TObject) ;
    procedure SetLoadEnabled;
    Procedure Get_LO_LookUp_SQL(const AVROP_CUSTOMERNO, Shipping, LO_NO,
      CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo,
      LO_ETT: Integer);
    function DataSaved: Boolean;
    procedure GetMarkedPkgs;
    procedure SetLoadRowToChanged;
    procedure InsertPkgNo(Sender: TObject);
    procedure CloseDataSets;

    function IdentifyPackageSupplier(const PkgNo, FSupplierNo: Integer;
      var PkgSupplierCode: String3; var PkgSupplierNo: Integer;
      Var ProductNo: Integer; Var Res_UserName: String;
      Var ProductLengthNo, NoOfLengths: Integer): TEditAction;

    function ValidatePkg(const PkgNo: Integer; const PkgSupplierCode: String3;
      const ProductNo, ProductLengthNo, NoOfLengths: Integer): Integer;
    Procedure GetLO_Records_AfterAddingLO_Number(LO_Number: Integer);
    function AddLoadDetailMatchByProductNo(Var CustcdsNo: Integer;
      const PkgNo: Integer; const SUPP_CODE: String3;
      const ProductNo, ProductLengthNo, NoOfLengths: Integer): Integer;
    procedure InsertPkgSerie(Sender: TObject);
    function ValidatePkgInSerie(Sender: TObject; PkgNo: Integer): TEditAction;
    procedure AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo,
      ShipToInvPointNo, LoadingLocationNo: Integer);

    function ValidatePackage_ver2(Var CustcdsNo: Integer; PkgSupplier: String3;
      PkgNo: Integer; var SuppShipPlanObjectNo: Integer; Var PkgLog: String;
      var LO_Number, OverrideRL: Integer; const ProductNo, ProductLengthNo,
      NoOfLengths: Integer): Integer;

    // Används när paket har plockats
    function AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
      const PkgNo: Integer; const PkgSupplierCode: String3): TEditAction;
    // Används när paket har plockats
    procedure ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject;
      const PkgNo: Integer; PkgSupplierCode: String3;
      const ProductNo, ProductLengthNo: Integer);
    // Används när paket har plockats
    function AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;
      const PkgNo: Integer; const PkgSupplierCode: String3;
      const ProductNo, ProductLengthNo, NoOfLengths: Integer): TEditAction;

    function AddPkgTo_cds_LoadPackages(Sender: TObject; const PkgNo: Integer;
      const PkgSupplierCode: String3): TEditAction;

    procedure InsertSelectedPkgNos(Sender: TObject);
    function IsPkgReserved(const PkgNo: Integer; var PkgSupplierCode: String3;
      Var Res_UserName: String): TEditAction;

    procedure ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
      PkgSupplierCode: String3; const ProductNo, ProductLengthNo: Integer);

    procedure InsertScannedPkgNo(Sender: TObject; const PkgNo: Integer;
      const PkgSupplierCode: String);
    procedure ShowPackages(Sender: TObject;
      const DeliveryMessageNumber: String);

  Protected
    procedure ResolvePkgNoAmbiguity(Sender: TObject; ADataSource: TDataSource;
      var Choice: String3; var SupplierNo: Integer; var ProductNo: Integer;
      Var ProductLengthNo: Integer; Var NoOfLengths: Integer);

  public
    { Public declarations }
    FOrderClientNo, FShipToInvPointNo, FLoadingLocationNo: Integer;

    procedure ExternSaveLoad;
    procedure SaveLoad;

    constructor CreateWithNewLoad(AOwner: TComponent;
      const LocalCustomerNo, LocalSupplierNo, LO_NO, ShipToInvPointNo,
      LoadingLocationNo, LoadNo, Shipping, OrderClientNo: Integer);
    // OrderClient är extern kund om shipping = 0 else orderclient = extern leverantör

    constructor CreateWithExistingLoad(AOwner: TComponent;
      const CustomerNo, LoadNo, Shipping, LLNo, OrderClientNo, SupplierNo,
      SPCustomerNo: Integer);

    destructor Destroy; override;
    function AfterAddedPkgNo(Sender: TObject; const PkgNo: Integer;
      const PkgSupplierCode: String3; const ProductNo, ProductLengthNo,
      NoOfLengths: Integer): TEditAction;
    procedure ScanningPkgNo(Sender: TObject; PkgNo: String);
    procedure ScanningEgnaPkgNo(Sender: TObject;
      PkgNo, EgenPkgSupplierCode: String);
  end;

var
  fLoadEntrySSP: TfLoadEntrySSP;

implementation

uses dmcLoadEntrySSP, VidaConst, dlgPickPkg,
  dmsVidaContact, UnitPackageEntry, dmsVidaProduct, // UnitSelectLO_NumberSSP,
  VidaUser, UnitCRViewReport, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcVidaSystem, uPickPkgNo,
  uScanLoadPkgNo, uEntryField, dmsDataConn, // dmsVidaPkg,
  // MainU, //uImportedPackages ,
  // dmc_ImportWoodx, dmcVidaLO, //uLOform ,
  UnitCRExportOneReport, uSendMapiMail, dmc_UserProps, VidaUtils,
  uPickVPPkgs, // uImportedPackages,
  fLoadOrder, uSelectPrintDevice, uconfirm, UnitCRPrintOneReport,
  uEnterLoadWeight, uSelectLORowInLoad, udmLanguage, uReport, uReportController,
  udmFR, uFastReports;

{$R *.dfm}
{ TfrmLoadEntry }

Procedure TfLoadEntrySSP.GetLO_Records;
Begin
  With dmLoadEntrySSP do
  Begin
    cdsLORows.DisableControls;
    Try
      cdsLORows.Active := False;
      cdsLORows.ParamByName('LoadNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger;
      cdsLORows.ParamByName('LanguageID').AsInteger := ThisUser.LanguageID ;
      cdsLORows.Active := True;

    Finally
      cdsLORows.EnableControls;
    End;
  End; // with
End;

procedure TfLoadEntrySSP.SetLoadEnabled;
Var
  LoadAR: Boolean;
Begin
  With dmLoadEntrySSP do
  Begin
    LoadAR := dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger);

    LoadEnabled := True;

    // if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0)
    if (LoadAR) or (cds_LoadHeadSenderLoadStatus.AsInteger = 2) then
    Begin
      if ThisUser.UserID = 8 then
      Begin
        LoadEnabled := True;
        if LoadAR then
          Caption := 'Lasten kan inte ändras för att den är ankomstregistrerad'
        else
          Caption := 'Lasten kan inte ändras för att status är "Avslutad"';

        grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible := True;
        grdPkgsDBBandedTableView1Defsspno.Visible := True;
        grdPkgsDBBandedTableView1Defsspno.Hidden := False;
      End
      else
      Begin
        MessageBeep(MB_ICONEXCLAMATION);

        if LoadAR then
          Caption := 'Lasten kan inte ändras för att den är ankomstregistrerad'
        else
          Caption := 'Lasten kan inte ändras för att status är "Avslutad"';

        LoadEnabled := False;
        cds_LoadHead.UpdateOptions.ReadOnly := True;
        grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly := True;
        cds_LSP.UpdateOptions.ReadOnly := True;
        cds_LoadPackages.UpdateOptions.ReadOnly := True;
      End;
    End // if LoadAR
    else
    Begin
      MessageBeep(MB_ICONEXCLAMATION);

      Caption := 'Lasten kan ändras.';

      LoadEnabled := True;
      cds_LoadHead.UpdateOptions.ReadOnly := False;
      grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly := False;
      cds_LSP.UpdateOptions.ReadOnly := False;
      cds_LoadPackages.UpdateOptions.ReadOnly := False;
    End;

    if ThisUser.UserID = 8 then
    Begin
      LoadEnabled := True;
      grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible := True;
      grdPkgsDBBandedTableView1Defsspno.Visible := True;
      grdPkgsDBBandedTableView1Defsspno.Hidden := False;
    End;

    // dmsSystem.sp_OneLoad.Close ;
  End; // with
  mePackageNo.Enabled := LoadEnabled;
End;

function TfLoadEntrySSP.DataSaved: Boolean;
Begin
  With dmLoadEntrySSP do
  Begin
    Result := True;
    if cds_LoadHead.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_LoadHead.ChangeCount > 0 then
      Result := False;

    if cds_LSP.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_LSP.ChangeCount > 0 then
      Result := False;

    if cds_LoadPackages.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_LoadPackages.ChangeCount > 0 then
      Result := False;
  End;
End;

Procedure TfLoadEntrySSP.Generate_LSP_Sales_SQL(const LoadNo: Integer);
Begin
  With dmLoadEntrySSP do
  Begin
    cds_LSP.SQL.Clear;
    cds_LSP.SQL.Add(' SELECT DISTINCT');
    cds_LSP.SQL.Add('0 AS Shipping,');
    cds_LSP.SQL.Add('LS.LoadNo,');
    cds_LSP.SQL.Add('SSP.SupplierNo,');
    cds_LSP.SQL.Add('LS.ShippingPlanNo,');
    cds_LSP.SQL.Add('C.ClientName AS CUSTOMER,');

    cds_LSP.SQL.Add('SC.ClientName					AS SHIPPER,');
    cds_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,' + QuotedStr(' ') +
      ')	AS READYDATE,');
    cds_LSP.SQL.Add('isNull(Cr.CarrierName,' + QuotedStr(' ') +
      ')			AS VESSEL,');
    cds_LSP.SQL.Add('Vg.ETD						AS ETD,');
    cds_LSP.SQL.Add('Vg.ETA						AS ETA,');

    cds_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,');
    cds_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,');
    cds_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,');
    cds_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,');
    cds_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,');
    cds_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then ' + QuotedStr('SALES'));
    cds_LSP.SQL.Add('ELSE ' + QuotedStr('PURCHASE'));
    cds_LSP.SQL.Add('END AS ORDERTYPE,');
    cds_LSP.SQL.Add('LS.CreatedUser,');
    cds_LSP.SQL.Add('LS.ModifiedUser,');
    cds_LSP.SQL.Add('LS.DateCreated,');
    cds_LSP.SQL.Add('SSP.CustomerNo,');
    cds_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,');
    cds_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,');
    cds_LSP.SQL.Add('SSP.ObjectType,');
    cds_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,');
    cds_LSP.SQL.Add('SSP.LoadingLocationNo,');
    cds_LSP.SQL.Add('SSP.ShipToInvPointNo,');
    cds_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,');
    cds_LSP.SQL.Add
      ('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

    cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS');
    cds_LSP.SQL.Add
      ('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo');

    cds_LSP.SQL.Add
      ('   Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo');
    cds_LSP.SQL.Add
      ('        						                        AND 	SSP.SupplierNo = L.SupplierNo');
    cds_LSP.SQL.Add
      ('                                            AND 	SSP.CustomerNo = L.CustomerNo');
    cds_LSP.SQL.Add
      ('                                            AND SSP.LoadingLocationNo = LS.LoadingLocationNo');
    cds_LSP.SQL.Add
      ('                                            AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo');

    cds_LSP.SQL.Add
      ('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo');
    cds_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.SupplierNo');

    cds_LSP.SQL.Add
      ('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo');
    cds_LSP.SQL.Add
      ('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo');

    cds_LSP.SQL.Add
      ('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
    cds_LSP.SQL.Add
      ('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo');

    cds_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH');
    cds_LSP.SQL.Add
      ('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo');
    cds_LSP.SQL.Add
      ('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo');
    cds_LSP.SQL.Add('  AND OH.OrderType = 0');
    cds_LSP.SQL.Add
      ('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo');

    cds_LSP.SQL.Add('  LEFT OUTER JOIN dbo.Booking		Bk');

    cds_LSP.SQL.Add
      ('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo');
    cds_LSP.SQL.Add
      ('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
    cds_LSP.SQL.Add
      ('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo');
    cds_LSP.SQL.Add
      ('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo');

    cds_LSP.SQL.Add('WHERE');
    cds_LSP.SQL.Add('LS.LoadNo = :LoadNo');
    cds_LSP.ParamByName('LoadNo').AsInteger := LoadNo; // +IntToStr(LoadNo)) ;
    // if ThisUser.UserID = 8 then cds_LSP.SQL.SaveToFile('Generate_LSP_Sales_SQL.txt') ;
  End;
End;

constructor TfLoadEntrySSP.CreateWithExistingLoad(AOwner: TComponent;
  const CustomerNo, LoadNo, Shipping, LLNo, OrderClientNo, SupplierNo,
  SPCustomerNo: Integer);
var
  Save_Cursor: TCursor;

  Procedure OpenLoadHead;
  Begin
    With dmLoadEntrySSP do
    Begin
      cds_LoadHead.Active := False;
      cds_LoadHead.ParamByName('LoadNo').AsInteger := LoadNo;
      cds_LoadHead.Open;
      cds_LoadHead.Active := True;
    End;
  End;

  Procedure Get_LoadPackages;
  Begin
    // dmLoadEntrySSP.GlobalLoadDetailNo :=  1 + dmLoadEntrySSP.GetMaxLoadDetailNoMaxLoadDetailNo(LoadNo) ;

    With dmLoadEntrySSP do
    Begin
      cds_LoadPackages.DisableControls;
      Try
        cds_LoadPackages.Active := False;
        cds_LoadPackages.ParamByName('LoadNo').AsInteger      := LoadNo;
        cds_LoadPackages.ParamByName('LanguageID').AsInteger  := ThisUser.LanguageID ;
        cds_LoadPackages.Active := True;
      Finally
        cds_LoadPackages.EnableControls;
      End;
    End; // with
  End;

  Procedure Generate_LSP_Purchase_SQL;
  Begin
    With dmLoadEntrySSP do
    Begin
      cds_LSP.SQL.Clear;
      cds_LSP.SQL.Add(' SELECT DISTINCT');
      cds_LSP.SQL.Add('1 AS Shipping,');
      cds_LSP.SQL.Add('LS.LoadNo,');
      cds_LSP.SQL.Add('SSP.SupplierNo,');
      cds_LSP.SQL.Add('LS.ShippingPlanNo,');
      cds_LSP.SQL.Add('C.ClientName AS CUSTOMER,');

      cds_LSP.SQL.Add('SC.ClientName					AS SHIPPER,');
      cds_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,' + QuotedStr(' ') +
        ')	AS READYDATE,');
      cds_LSP.SQL.Add('isNull(Cr.CarrierName,' + QuotedStr(' ') +
        ')			AS VESSEL,');
      cds_LSP.SQL.Add('Vg.ETD						AS ETD,');
      cds_LSP.SQL.Add('Vg.ETA						AS ETA,');

      cds_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,');
      cds_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,');
      cds_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,');
      cds_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,');
      cds_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,');
      cds_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then ' + QuotedStr('SALES'));
      cds_LSP.SQL.Add('ELSE ' + QuotedStr('PURCHASE'));
      cds_LSP.SQL.Add('END AS ORDERTYPE,');
      cds_LSP.SQL.Add('LS.CreatedUser,');
      cds_LSP.SQL.Add('LS.ModifiedUser,');
      cds_LSP.SQL.Add('LS.DateCreated,');
      cds_LSP.SQL.Add('SSP.CustomerNo,');
      cds_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,');
      cds_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,');
      cds_LSP.SQL.Add('SSP.ObjectType,');
      cds_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,');
      cds_LSP.SQL.Add('SSP.LoadingLocationNo,');
      cds_LSP.SQL.Add('SSP.ShipToInvPointNo,');
      cds_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,');
      cds_LSP.SQL.Add
        ('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS');
      cds_LSP.SQL.Add
        ('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo');
      cds_LSP.SQL.Add
        ('        Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo');
      cds_LSP.SQL.Add('        						AND 	SSP.SupplierNo = L.SupplierNo');
      cds_LSP.SQL.Add('    AND 	SSP.CustomerNo = L.CustomerNo');
      cds_LSP.SQL.Add
        ('                                                        AND SSP.LoadingLocationNo = LS.LoadingLocationNo');
      cds_LSP.SQL.Add
        ('                                                        AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo');

      cds_LSP.SQL.Add
        ('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo');
      cds_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.CustomerNo');

      cds_LSP.SQL.Add
        ('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo');
      cds_LSP.SQL.Add
        ('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo');

      cds_LSP.SQL.Add
        ('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      cds_LSP.SQL.Add
        ('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo');

      cds_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH');
      cds_LSP.SQL.Add
        ('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo');
      cds_LSP.SQL.Add
        ('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo');
      cds_LSP.SQL.Add('                                AND OH.OrderType = 1');
      cds_LSP.SQL.Add
        ('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo');

      cds_LSP.SQL.Add('       	LEFT OUTER JOIN dbo.Booking		Bk');
      // cds_LSP.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo') ;
      cds_LSP.SQL.Add
        ('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo');
      cds_LSP.SQL.Add
        ('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cds_LSP.SQL.Add
        ('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo');
      cds_LSP.SQL.Add
        ('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo');

      cds_LSP.SQL.Add('WHERE');

      cds_LSP.SQL.Add('LS.LoadNo = :LoadNo');
      cds_LSP.ParamByName('LoadNo').AsInteger := LoadNo; // +IntToStr(LoadNo)) ;

      // cds_LSP.SQL.Add('AND L.SupplierNo = '+IntToStr(FSupplierNo)) ;
      // cds_LSP.SQL.Add('AND L.CustomerNo = '+IntToStr(FCustomerNo)) ;

      // if ThisUser.UserID = 8 then cds_LSP.SQL.SaveToFile('Generate_LSP_Purchase_SQL.txt') ;
    End;
  End;

// Begin with procedure CreateWithExistingLoad(
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    CreateWithNewLoad(AOwner, SPCustomerNo,
      SupplierNo { Lars }{ CustomerNo } { supplierno } , 0, 0, LLNo, LoadNo,
      Shipping, -1 { orderClient } );
    dmLoadEntrySSP.FShipping := Shipping;
    With dmLoadEntrySSP do
    Begin
      ds_LoadPackages2.Enabled := False;
      OpenLoadHead;
      LoadStatus := cds_LoadHeadSenderLoadStatus.AsInteger;
      FCustomerNo := cds_LoadHeadCustomerNo.AsInteger;
      FSupplierNo := cds_LoadHeadSupplierNo.AsInteger;
      FOrderClientNo := OrderClientNo;

      dmsConnector.UpdateMaxSecByLoad(LoadNo);

      cds_LSP.Active := False;
      if Shipping = 0 then
        Generate_LSP_Sales_SQL(LoadNo)
      else
        Generate_LSP_Purchase_SQL;
      cds_LSP.Active := True;

      GetLO_Records;
      Get_LoadPackages;

      dmLoadEntrySSP.Get_LO_LinesMatched
        (dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger,
        dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString);

      dmLoadEntrySSP.csdUnit_OpenLagerLookup;
      cds_LoadHead.Refresh;

      SetLoadEnabled;
      ds_LoadPackages2.Enabled := True;
    End; // with

  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

constructor TfLoadEntrySSP.CreateWithNewLoad(AOwner: TComponent;
  const LocalCustomerNo, LocalSupplierNo, LO_NO, ShipToInvPointNo,
  LoadingLocationNo, LoadNo, Shipping, OrderClientNo: Integer);

// Var FLocalSupplierNo, x : Integer ;
Var
  ReservedByUser: String;
begin
  inherited Create(AOwner);
  dmLoadEntrySSP := TdmLoadEntrySSP.Create(Self);

  // CloseDataSets ;

  FShipToInvPointNo         := ShipToInvPointNo;
  FLoadingLocationNo        := LoadingLocationNo;
  dmLoadEntrySSP.FShipping  := Shipping;
  FOrderClientNo            := OrderClientNo;

  { if fShipping = 0 then
    grdLODBTableView1CUSTOMER.Caption:= 'KUND'
    else
    grdLODBTableView1CUSTOMER.Caption:= 'LEVERANTÖR' ; }

  grdPkgsDBBandedTableView1.OptionsView.NewItemRow := False;

  LoadEnabled := True;

  With dmLoadEntrySSP do
  Begin
    { cdsLORows.Active                         := False ;
      cdsLORows.ParamByName('LoadNo').AsInteger := -1 ;
      cdsLORows.Active                         := True ; }

    cds_LoadHead.UpdateOptions.ReadOnly       := False;
    cds_LSP.UpdateOptions.ReadOnly            := False;
    cds_LoadPackages.UpdateOptions.ReadOnly   := False;

    cds_LoadPackages.Active                   := True;

    dmsContact.cdsCities.Active               := False;
    dmsContact.cdsCities.ParamByName('@SalesRegionNo').AsInteger  :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
    dmsContact.cdsCities.Active               := True;
    dmsContact.cds_LocalShipper.Active        := True;

    cds_LoadHead.Active                       := True;

    if LoadNo < 1 then
    Begin
      cds_LoadHead.Insert;
      cds_LoadHeadSenderLoadStatus.AsInteger      := 0;
      cds_LoadHeadLoadedDate.AsSQLTimeStamp       := DateTimeToSQLTimeStamp(Now);
      cds_LoadHeadPIPNo.AsInteger                 := cds_LSPPIPNo.AsInteger;
      cds_LoadHeadLIPNo.AsInteger                 := cds_LSPLIPNo.AsInteger;

      cds_LoadHeadLocalLoadingLocation.AsInteger  := LoadingLocationNo;

      cds_LoadHeadLocalDestinationNo.AsInteger    := ShipToInvPointNo;

      cds_LoadHead.Post;

      ReservedByUser                              := dmsSystem.Load_Reserved(cds_LoadHeadLoadNo.AsInteger);

      if Length(ReservedByUser) > 0 then
      begin
        ShowMessage('Cannot create, Load is locked by user ' + ReservedByUser);
      end;
    End;

    if cds_LSP.Active then
    Begin
      cds_LSP.Active := False;
      cds_LSP.ParamByName('LoadNo').AsInteger := -10101; // +IntToStr(LoadNo)) ;
      cds_LSP.Active := True;
    End
    else
      cds_LSP.Active := True;
    if LO_NO > 0 then
    Begin
      AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo,
        ShipToInvPointNo, LoadingLocationNo);
    End;

    if FShipping = 0 then
      dm_UserProps.Refresh_cds_PIP2(LocalSupplierNo, LocalSupplierNo)
    else
      dm_UserProps.Refresh_cds_PIP2(LocalCustomerNo, LocalCustomerNo);

    if (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and
      (cds_LSP.ChangeCount > 0) then
      SaveLoad;
    SetLoadEnabled;

    GetLO_Records;

    // GetLO_Records_AfterAddingLO_Number(LO_NO) ;
  End; // with

end;

destructor TfLoadEntrySSP.Destroy;
begin
  CloseDataSets;
  // dmLoadEntrySSP.Free ;
  inherited
end;

procedure TfLoadEntrySSP.CloseDataSets;
begin
  With dmLoadEntrySSP do
  Begin
    cds_LoadHead.Active := False;
    cds_LoadHead.ParamByName('LoadNo').AsInteger := -100;
    cds_LoadPackages.Active := False;

    cdsLORows.Active := False;
    cdsLORows.ParamByName('LoadNo').AsInteger     := -100;
    cdsLORows.ParamByName('LanguageID').AsInteger := 1;
    cdsLORows.Active := True;

    dmsContact.cds_LocalShipper.Active := False;

    cds_LoadPackages.Active := False;
    cds_LoadPackages.ParamByName('LoadNo').AsInteger      := -100;
    cds_LoadPackages.ParamByName('LanguageID').AsInteger  := 1 ;
    cds_LoadPackages.Active := True;
  End;
end;

function TfLoadEntrySSP.AfterAddedPkgNo(Sender: TObject; const PkgNo: Integer;
  const PkgSupplierCode: String3; const ProductNo, ProductLengthNo,
  NoOfLengths: Integer): TEditAction;
var
  CustcdsNo, SuppShipPlanObjectNo: Integer;
  ValidPackage: Integer;
  PkgLog: String;
  LO_Number: Integer;
  OverrideRL: Integer;
Begin
  With dmLoadEntrySSP do
  Begin
    ds_LoadPackages2.OnDataChange := Nil;
    cds_LoadPackages.DisableControls;

    Try
      Result := eaACCEPT;
      if cds_LoadPackages.State = dsBrowse then
        cds_LoadPackages.Edit;

      Begin
        // Default LO number in case there is no match the LoadDetail must get a value
        dmLoadEntrySSP.cdsLORows.First;
        LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;

        // LOLine is SuppShipPlanObjectNo
        ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo,
          SuppShipPlanObjectNo, PkgLog, LO_Number, OverrideRL, ProductNo,
          ProductLengthNo, NoOfLengths);

        cds_LoadPackagesOverrideRL.AsInteger := OverrideRL;

        case ValidPackage of
          VP_LengthNotInLengthGroup:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_LengthNotInLengthGroup;
              cds_LoadPackagesProblemPackageLog.AsString :=
                'Längd matchar ej längdgruppen';
            End;
          ALL_OK:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := ALL_OK;
              cds_LoadPackagesProblemPackageLog.AsString := 'OK';
            End;
          BAD_PKG:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
              cds_LoadPackagesProblemPackageLog.AsString := 'BAD_PKG';
            End;
          { PKG_OK     : Begin
            cds_LoadPackagesPackageOK.AsInteger:= PKG_OK ;
            cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
            End ;
            NO_PRODUCT : Begin
            cds_LoadPackagesPackageOK.AsInteger:= NO_PRODUCT ;
            cds_LoadPackagesProblemPackageLog.AsString:= 'NO MATCHING LO';
            End ; }
          BAD_LENGTH:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := BAD_LENGTH;
              cds_LoadPackagesProblemPackageLog.AsString := 'BAD_LENGTH ';
            End;
          VP_BadThickness:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadThickness;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadWidth:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadWidth;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadGrade:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadGrade;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadSurfacing:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadSurfacing;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadSpecies:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadSpecies;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadIMP:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadIMP;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_NoLOConnection:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_NoLOConnection;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
        else
        end;

        if (ValidPackage = ALL_OK) or
          ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup) and
          (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
        Begin
          cds_LoadPackagesDefsspno.AsInteger := SuppShipPlanObjectNo;
          cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
          cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
        End
        else
        Begin
          if LO_Number > 0 then
            cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
          cds_LoadPackagesDefsspno.AsInteger := -1;
          cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
          cds_LoadPackagesOverrideRL.AsInteger := 0;
        End;

        Try
          if cds_LoadPackages.State in [dsEdit] then
            cds_LoadPackages.Post;
        Except
          on eDatabaseError do
          Begin
            Raise;
            ShowMessage('Package number is already assigned to the load.');
            cds_LoadPackages.Cancel;
          End;
        End; // Except
      end;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
      cds_LoadPackages.EnableControls;
    End;
  End; // with
end;

function TfLoadEntrySSP.IdentifyPackageSupplier(const PkgNo,
  FSupplierNo: Integer; var PkgSupplierCode: String3;
  var PkgSupplierNo: Integer; Var ProductNo: Integer; Var Res_UserName: String;
  Var ProductLengthNo, NoOfLengths: Integer): TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0';
  PACKAGE_NOT_IN_INVENTORY = 0;
begin
  // check that package is available in inventory and Get supplier code
  PkgSupplierCode := dmLoadEntrySSP.PkgNoToSuppCode(
    // Const
    PkgNo, FSupplierNo, dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger,
    // Var
    PkgSupplierNo, ProductNo, ProductLengthNo, NoOfLengths);

  if PkgSupplierCode = '' then
  Begin
    Result := eaREJECT;
  End
  else

    // check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(PkgNo, PkgSupplierCode, 'TfLoadEntrySSP',
      // Self.Name,
      Res_UserName) = ThisUser.UserName + '/' + 'TfLoadEntrySSP'
    // { NO_USER_HAS_THIS_PACKAGE_RESERVED }
    then
    begin
      Result := eaACCEPT;
    end
    else
    begin
      MessageBeep(MB_ICONEXCLAMATION);
      Result := eaReserved; // eaREJECT;
    end;

  // if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, PkgSupplierCode]) then
  // Begin
  // Result:= eaDuplicate ;
  // End
  // else
end;

function TfLoadEntrySSP.AddLoadDetailMatchByProductNo(Var CustcdsNo: Integer;
  const PkgNo: Integer; const SUPP_CODE: String3;
  const ProductNo, ProductLengthNo, NoOfLengths: Integer): Integer;
var
  fSelectLORowInLoad: TfSelectLORowInLoad;

  procedure FilterNO_Species;
  Begin

    With dmLoadEntrySSP do
    Begin
      // Specifikt träslag

      if NoOfLengths > 1 then
      Begin
        cdsLORows.Filter := 'ACT_THICK = ' +
          ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
          ' AND ACT_WIDTH = ' + ReplaceCommas
          (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
          cds_LoadPackagesMainGradeNo.AsString
        // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
          + ' AND ProductCategoryNo = ' +
          cds_LoadPackagesProductCategoryNo.AsString
        // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
          + ' AND ProductNo = ' + IntToStr(ProductNo) + ' AND ACT_LENGTH < 1';

        // TRy match on MainGrade only!
        if cdsLORows.RecordCount = 0 then
          cdsLORows.Filter := 'ACT_THICK = ' +
            ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
            ' AND ACT_WIDTH = ' + ReplaceCommas
            (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
            cds_LoadPackagesMainGradeNo.AsString
          // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
            + ' AND ProductCategoryNo = ' +
            cds_LoadPackagesProductCategoryNo.AsString
          // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
            + ' AND ACT_LENGTH < 1';
      End // if NoOfLengths > 1 then
      else
      Begin
        // Single lengths
        // Try match on pakettypnr
        if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
          cdsLORows.Filter := 'PackageTypeNo = ' +
            cds_LoadPackagesPackageTypeNo.AsString
        else
          cdsLORows.Filter := 'PackageTypeNo = -1';

        cdsLORows.Filtered := True;

        if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
        Begin
          // Try match on PcsPerPkg
          cdsLORows.Filter := 'ACT_THICK = ' +
            ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
            ' AND ACT_WIDTH = ' + ReplaceCommas
            (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
            cds_LoadPackagesMainGradeNo.AsString
          // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
            + ' AND ProductCategoryNo = ' +
            cds_LoadPackagesProductCategoryNo.AsString
          // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
            + ' AND ProductNo = ' + IntToStr(ProductNo) + ' AND ACT_LENGTH = ' +
            ReplaceCommas(cds_LoadPackagesALMM.AsString) + ' AND PCSPERPKG = ' +
            cds_LoadPackagesPCS.AsString;

          // Try on MainGrade and ProductNo
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
              + ' AND ProductNo = ' + IntToStr(ProductNo) + ' AND ACT_LENGTH = '
              + ReplaceCommas(cds_LoadPackagesALMM.AsString);

          // TRy match on MainGrade Only
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
              + ' AND ACT_LENGTH = ' +
              ReplaceCommas(cds_LoadPackagesALMM.AsString);

          // TRy match on RL med productNo
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
              + ' AND ProductNo = ' + IntToStr(ProductNo) +
              ' AND ACT_LENGTH < 1';

          // TRy match on RL utan productNo
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' +  cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
              + ' AND ACT_LENGTH < 1';
        End // Single lengths
        else
          cdsLORows.Filter := 'ACT_THICK = -1';
      End;
    End;
  End;

begin
  if AddingPkgsFromPkgEntry = False then
  Begin
    With dmLoadEntrySSP do
    Begin
      // if packages have multiple lengths then filter on random lengths LO's
      // else filter on fixed length LO
      // ProductLengthNo, NoOfLengths
      if cdsLORowsSpeciesNo.AsInteger = FuruGran then
      Begin
        if NoOfLengths > 1 then
        Begin
          cdsLORows.Filter := 'ACT_THICK = ' +
            ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
            ' AND ACT_WIDTH = ' + ReplaceCommas
            (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
            cds_LoadPackagesMainGradeNo.AsString
          // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
          // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
            + ' AND ProductNo = ' + IntToStr(ProductNo) +
            ' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.
            AsString + ' AND ACT_LENGTH < 1';

          // TRy match on MainGrade only!
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
              + ' AND ACT_LENGTH < 1';

        End // if NoOfLengths > 1 then
        else
        Begin
          // Single lengths
          // Try match on pakettypnr
          cdsLORows.Filter := 'PackageTypeNo = ' +
            cds_LoadPackagesPackageTypeNo.AsString;
          cdsLORows.Filtered := True;

          // Try match on PcsPerPkg
          cdsLORows.Filter := 'ACT_THICK = ' +
            ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
            ' AND ACT_WIDTH = ' + ReplaceCommas
            (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
            cds_LoadPackagesMainGradeNo.AsString
          // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
            + ' AND ProductCategoryNo = ' +
            cds_LoadPackagesProductCategoryNo.AsString
          // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
            + ' AND ProductNo = ' + IntToStr(ProductNo) + ' AND ACT_LENGTH = ' +
            cds_LoadPackagesALMM.AsString + ' AND PCSPERPKG = ' +
            ReplaceCommas(cds_LoadPackagesPCS.AsString);

          // Try on MainGrade and ProductNo
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
              + ' AND ProductNo = ' + IntToStr(ProductNo) + ' AND ACT_LENGTH = '
              + ReplaceCommas(cds_LoadPackagesALMM.AsString);
          // +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);

          // TRy match on MainGrade Only
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
              + ' AND ACT_LENGTH = ' + cds_LoadPackagesALMM.AsString;

          // TRy match on RL med productNo
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
              + ' AND ProductNo = ' + IntToStr(ProductNo) +
              ' AND ACT_LENGTH < 1';

          // TRy match on RL utan productNo
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' +
              cds_LoadPackagesProductCategoryNo.AsString
            // +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
              + ' AND ACT_LENGTH < 1';
        End;

      End
      else
      // Specifikt träslag
      Begin
        if NoOfLengths > 1 then
        Begin
          cdsLORows.Filter := 'ACT_THICK = ' +
            ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
            ' AND ACT_WIDTH = ' + ReplaceCommas
            (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
            cds_LoadPackagesMainGradeNo.AsString
          // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
            + ' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.
            AsString + ' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
            + ' AND ProductNo = ' + IntToStr(ProductNo) + ' AND ACT_LENGTH < 1';

          // TRy match on MainGrade only!
          if cdsLORows.RecordCount = 0 then
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.
              AsString + ' AND SpeciesNo = ' +
              cds_LoadPackagesSpeciesNo.AsString + ' AND ACT_LENGTH < 1';
        End // if NoOfLengths > 1 then
        else
        Begin
          // Single lengths
          // Try match on pakettypnr
          if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
            cdsLORows.Filter := 'PackageTypeNo = ' +
              cds_LoadPackagesPackageTypeNo.AsString
          else
            cdsLORows.Filter := 'PackageTypeNo = -1';

          cdsLORows.Filtered := True;

          if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
          Begin
            // Try match on PcsPerPkg
            cdsLORows.Filter := 'ACT_THICK = ' +
              ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
              ' AND ACT_WIDTH = ' + ReplaceCommas
              (cds_LoadPackagesActualWidthMM.AsString) + ' AND GradeNo = ' +
              cds_LoadPackagesMainGradeNo.AsString
            // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
              + ' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.
              AsString + ' AND SpeciesNo = ' +
              cds_LoadPackagesSpeciesNo.AsString + ' AND ProductNo = ' +
              IntToStr(ProductNo) + ' AND ACT_LENGTH = ' +
              ReplaceCommas(cds_LoadPackagesALMM.AsString) + ' AND PCSPERPKG = '
              + cds_LoadPackagesPCS.AsString;

            // Try on MainGrade and ProductNo
            if cdsLORows.RecordCount = 0 then
              cdsLORows.Filter := 'ACT_THICK = ' +
                ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
                ' AND ACT_WIDTH = ' +
                ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString) +
                ' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
              // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
                + ' AND ProductCategoryNo = ' +
                cds_LoadPackagesProductCategoryNo.AsString + ' AND SpeciesNo = '
                + cds_LoadPackagesSpeciesNo.AsString + ' AND ProductNo = ' +
                IntToStr(ProductNo) + ' AND ACT_LENGTH = ' +
                ReplaceCommas(cds_LoadPackagesALMM.AsString);

            // TRy match on MainGrade Only
            if cdsLORows.RecordCount = 0 then
              cdsLORows.Filter := 'ACT_THICK = ' +
                ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
                ' AND ACT_WIDTH = ' +
                ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString) +
                ' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
              // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
                + ' AND ProductCategoryNo = ' +
                cds_LoadPackagesProductCategoryNo.AsString + ' AND SpeciesNo = '
                + cds_LoadPackagesSpeciesNo.AsString + ' AND ACT_LENGTH = ' +
                ReplaceCommas(cds_LoadPackagesALMM.AsString);

            // TRy match on RL med productNo
            if cdsLORows.RecordCount = 0 then
              cdsLORows.Filter := 'ACT_THICK = ' +
                ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
                ' AND ACT_WIDTH = ' +
                ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString) +
                ' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
              // +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
                + ' AND ProductCategoryNo = ' +
                cds_LoadPackagesProductCategoryNo.AsString + ' AND SpeciesNo = '
                + cds_LoadPackagesSpeciesNo.AsString + ' AND ProductNo = ' +
                IntToStr(ProductNo) + ' AND ACT_LENGTH < 1';

            // TRy match on RL utan productNo
            if cdsLORows.RecordCount = 0 then
              cdsLORows.Filter := 'ACT_THICK = ' +
                ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString) +
                ' AND ACT_WIDTH = ' +
                ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString) +
                ' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
              // +' AND SurfacingNo = ' +  cds_LoadPackagesSurfacingNo.AsString
                + ' AND ProductCategoryNo = ' +
                cds_LoadPackagesProductCategoryNo.AsString + ' AND SpeciesNo = '
                + cds_LoadPackagesSpeciesNo.AsString + ' AND ACT_LENGTH < 1';
          End // Single lengths
          else
            cdsLORows.Filter := 'ACT_THICK = -1';
        End;

      End; // Specifikt träslag

      // Om ingen match prova matcha utan träslag i "FilterNO_Species"
      if cdsLORows.RecordCount = 0 then
        FilterNO_Species;

      cdsLORows.Filtered := True;
      cdsLORows.First;

      // if cdsLORows.RecordCount > 1 then Select LO Row from dialog

      if (cdsLORows.RecordCount > 1) and (not cbKopplaEjMotDublett.Checked) then
      Begin
        fSelectLORowInLoad := TfSelectLORowInLoad.Create(nil);
        Try
          fSelectLORowInLoad.PanelPaket.Caption := 'Paketnr = ' +
            cds_LoadPackagesPackageNo.AsString + ' ' +
            cds_LoadPackagesPRODUCT.AsString;
          fSelectLORowInLoad.ShowModal;
          Result := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
          CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger;
        Finally
          FreeAndNil(fSelectLORowInLoad);
        End;
      End
      else if cdsLORows.RecordCount = 1 then
      Begin
        Result := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger;
      End
      else
      Begin
        Result := -1;
        CustcdsNo := -1;
      End;

    End; // with

  End;
end;

// Check if a package in load detail is Valid
function TfLoadEntrySSP.ValidatePkg(const PkgNo: Integer;
  const PkgSupplierCode: String3; const ProductNo, ProductLengthNo,
  NoOfLengths: Integer): Integer;
var
  SuppShipPlanObjectNo, CustcdsNo: Integer;
  ValidPackage: Integer;
  PkgLog: String;
  LO_Number: Integer;
  OverrideRL: Integer;
begin
  SuppShipPlanObjectNo := -1;
  CustcdsNo := -1;
  LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;

  // LOLine is the SuppShipPlanObjectNo or SuppShipPlanObjectNo
  ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo,
    SuppShipPlanObjectNo, PkgLog, LO_Number, OverrideRL, ProductNo,
    ProductLengthNo, NoOfLengths);

  Result := ValidPackage;

  With dmLoadEntrySSP do
  Begin
    cds_LoadPackagesOverrideRL.AsInteger := OverrideRL;
    case ValidPackage of
      VP_LengthNotInLengthGroup:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_LengthNotInLengthGroup;
          cds_LoadPackagesProblemPackageLog.AsString :=
            'Längd matchar ej längdgruppen';
        End;
      ALL_OK:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := ALL_OK;
          cds_LoadPackagesProblemPackageLog.AsString := 'OK';
        End;
      BAD_PKG:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
          cds_LoadPackagesProblemPackageLog.AsString := 'BAD_PKG';
        End;
      BAD_LENGTH:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := BAD_LENGTH;
          cds_LoadPackagesProblemPackageLog.AsString := 'BAD_LENGTH';
        End;
      VP_BadThickness:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_BadThickness;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
      VP_BadWidth:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_BadWidth;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
      VP_BadGrade:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_BadGrade;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
      VP_BadSurfacing:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_BadSurfacing;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
      VP_BadSpecies:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_BadSpecies;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
      VP_BadIMP:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_BadIMP;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
      VP_NoLOConnection:
        Begin
          cds_LoadPackagesPackageOK.AsInteger := VP_NoLOConnection;
          cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
        End;
    else
    end;

    if (ValidPackage = ALL_OK) or
      ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup) and
      (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
      cds_LoadPackagesDefsspno.AsInteger := SuppShipPlanObjectNo;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
      cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
    End
    else
    Begin
      if LO_Number > 0 then
        cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
      cds_LoadPackagesDefsspno.AsInteger := -1;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
      cds_LoadPackagesOverrideRL.AsInteger := 0;
    End;
  End; // with
end;

procedure TfLoadEntrySSP.lbRemovePackageClick(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    dmLoadEntrySSP.ds_LoadPackages2.OnDataChange := NIL;

    if dmLoadEntrySSP.cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
      dmLoadEntrySSP.cds_LoadPackages.Delete
    else
    Begin
      if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
        dmLoadEntrySSP.cds_LoadPackages.Edit;
      dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger :=
        REMOVE_PKG_FROM_LOAD;
      dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger := 1;
      dmLoadEntrySSP.cds_LoadPackages.Post;
    End;

  Finally
    dmLoadEntrySSP.ds_LoadPackages2.OnDataChange :=
      dmLoadEntrySSP.ds_LoadPackages2DataChange;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

Procedure TfLoadEntrySSP.GetLO_Records_AfterAddingLO_Number(LO_Number: Integer);
Var
  x: Integer;
Begin
  With dmLoadEntrySSP do
  Begin
    cdsLORows.DisableControls;
    Try
      cdsLORows.Active := False;
      cdsLORows.Active := True;
      (* if cdsLORows.Active = False then
        cdsLORows.Active:= True ;



        sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger       := LO_Number ;
        sq_GetLO_Records.ParamByName('SupplierNo').AsInteger           := FSupplierNo ;
        sq_GetLO_Records.ParamByName('CustomerNo').AsInteger           := FCustomerNo ;
        sq_GetLO_Records.ParamByName('LoadingLocationNo').AsInteger    := cds_LSPLoadingLocationNo.AsInteger ;
        sq_GetLO_Records.ParamByName('ShipToInvPointNo').AsInteger     := cds_LSPShipToInvPointNo.AsInteger ;
        sq_GetLO_Records.Open ;
        While not sq_GetLO_Records.Eof do
        Begin
        cdsLORows.Insert ;
        Try
        For x := 0 to 34 do
        cdsLORows.Fields.Fields[x].AsVariant := sq_GetLO_Records.Fields.Fields[x].AsVariant ;

        cdsLORowsINCH_THICK.AsFloat           := StrToFloatDef(sq_GetLO_RecordsINCH_THICK.AsString,0) ;
        cdsLORowsINVCH_WIDTH.AsFloat          := StrToFloatDef(sq_GetLO_RecordsINVCH_WIDTH.AsString,0) ;
        cdsLORowsLoadNo.AsInteger             := cds_LoadHeadLoadNo.AsInteger ;
        cdsLORowsMATCH.AsInteger              := 0 ;
        cdsLORowsOverrideRL.AsInteger         := sq_GetLO_RecordsOverrideRL.AsInteger ;
        cdsLORowsProductCategoryNo.AsInteger  := sq_GetLO_RecordsProductCategoryNo.AsInteger ;
        cdsLORows.Post ;
        Except
        on eDatabaseError do
        Raise ;
        End ;
        sq_GetLO_Records.Next ;
        End ; //while
        sq_GetLO_Records.Close ; *)
    Finally
      cdsLORows.EnableControls;
    End;
  End; // with
End;

procedure TfLoadEntrySSP.FormCreate(Sender: TObject);
begin
  dmLoadEntrySSP.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry := False;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name,
    grdLODBTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLORows.Name,
    grdLORowsDBBandedTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name,
    grdPkgsDBBandedTableView1) = False then;

  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
    acImportPackages.Enabled := True
  else
    acImportPackages.Enabled := False;

  dmsSystem.GetPkgPos(ThisUser.CompanyNo);
end;

procedure TfLoadEntrySSP.ResolvePkgNoAmbiguity(Sender: TObject;
  ADataSource: TDataSource; var Choice: String3; var SupplierNo: Integer;
  var ProductNo: Integer; Var ProductLengthNo: Integer;
  Var NoOfLengths: Integer);
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker.Create(Self) do
    try
      DataSource := ADataSource;
      ShowModal;
      if ModalResult = mrOK then
      begin
        Choice := SupplierCodeForSelectedPkg;
        SupplierNo := SupplierNoForSelectedpkg;
        ProductNo := ProductNoForSelectedpkg;
        NoOfLengths := NoOfLengthsForSelectedpkg;
        ProductLengthNo := ProductLengthNoForSelectedpkg;
      end
      else
        Choice := '';
    finally
      free;
    end;
end;

procedure TfLoadEntrySSP.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  dResult: Integer;
begin
  if DataSaved = False then
  Begin
    dResult := MessageDlg('Do you want to save your changes?',
      mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  End
  else
    dResult := mrNo;

  if dResult = mrYes then
  Begin
    acSaveLoadExecute(Sender);
    CanClose := True;
  End
  else if dResult = mrNo then
  Begin
    CanClose := True;
  End
  else
    CanClose := False;

  // Remove entries in Pkgs_Res
  if CanClose = True then
  Begin
    With dmsSystem do
    Begin
      Delete_ReservedPkgs('TfLoadEntrySSP');
      dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name,
        grdLODBTableView1);
      dmsSystem.StoreGridLayout(ThisUser.UserID,
        Self.Name + '/' + grdLORows.Name, grdLORowsDBBandedTableView1);
      dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name,
        grdPkgsDBBandedTableView1);
      With dmLoadEntrySSP do
      Begin
        // frmVisTruckLoadOrder.RemoveTab(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger,
        // cds_LoadHeadLoadNo.AsInteger) ;
        // dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger) ;
      End;
    End;
  End;
end;

procedure TfLoadEntrySSP.InsertPkgSerie(Sender: TObject);
Var
  NoOfPkgsInSerie, PkgNo: Integer;
  ResultButton: Word;
  Save_Cursor: TCursor;
  frmPkgNoSeries: TfrmPkgNoSeries;
begin
  ResultButton := mrYes;
  With dmLoadEntrySSP do
  Begin
    cds_LoadPackages.DisableControls;
    frmPkgNoSeries := TfrmPkgNoSeries.Create(Nil);
    Try
      if frmPkgNoSeries.ShowModal = mrOK then
      Begin
        NoOfPkgsInSerie := StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) -
          StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text));

        if NoOfPkgsInSerie > 100 then
          ResultButton := MessageDlg(IntToStr(NoOfPkgsInSerie) +
            ' packages will be added to the load, continue?', mtConfirmation,
            [mbYes, mbNo, mbCancel], 0);

        if ResultButton = mrYes then
        Begin
          Save_Cursor := Screen.Cursor;
          Screen.Cursor := crSQLWait; { Show hourglass cursor }
          Try

            For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text))
              to StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
            Begin
              Try
                cds_LoadPackages.Insert;
                cds_LoadPackagesPackageNo.AsInteger := PkgNo;
                if ValidatePkgInSerie(Sender, PkgNo) <> eaACCEPT then
                  cds_LoadPackages.Cancel;
              Except
                on eDatabaseError do
                Begin
                  Raise;
                  cds_LoadPackages.Cancel;
                End;
              End;

            End; // For
            if cds_LoadPackages.State in [dsEdit, dsInsert] then
              cds_LoadPackages.Post;
          Finally
            Screen.Cursor := Save_Cursor; { Always restore to normal }
          End;
        End; // mrYes
      End;
    Finally
      FreeAndNil(frmPkgNoSeries); // .Free ;
      cds_LoadPackages.EnableControls;
    End;
  End; // with
End;

function TfLoadEntrySSP.AddPkgTo_cds_LoadPackagesPkgSerieNo(Sender: TObject;
  const PkgNo: Integer; const PkgSupplierCode: String3): TEditAction;
var
  SuppShipPlanObjectNo: Integer;
  LO_Number: Integer;
Begin
  With dmLoadEntrySSP do
  Begin
    ds_LoadPackages2.OnDataChange := Nil;

    Try
      Result := eaACCEPT;

      // if cds_LoadPackages.State = dsBrowse then
      // cds_LoadPackages.Insert ;

      // Default LO number in case there is no match the LoadDetail must get a value
      dmLoadEntrySSP.cdsLORows.First;
      LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;
      SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;

      cds_LoadPackagesOverrideRL.AsInteger := 0;
      cds_LoadPackagesDefsspno.AsInteger := -1;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
      sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger := PkgNo;
      sq_OnePkgDetailData.ParamByName('SupplierCode').AsString :=
        PkgSupplierCode;
      sq_OnePkgDetailData.ParamByName('LanguageID').AsInteger  := ThisUser.LanguageID ;
      sq_OnePkgDetailData.Open;
      if not sq_OnePkgDetailData.Eof then
      Begin
        cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
        cds_LoadPackagesProductNo.AsInteger :=
          sq_OnePkgDetailDataProductNo.AsInteger;
        cds_LoadPackagesPRODUCT.AsString := sq_OnePkgDetailDataPRODUCT.AsString;
        cds_LoadPackagesPackageNo.AsInteger :=
          sq_OnePkgDetailDataPackageNo.AsInteger;
        cds_LoadPackagesNoOfPackages.AsInteger := -1;
        cds_LoadPackagesPackageTypeNo.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;
        cds_LoadPackagesSupplierCode.AsString := Trim(PkgSupplierCode);
        cds_LoadPackagesM3_NET.AsFloat := sq_OnePkgDetailDataM3_NET.AsFloat;
        cds_LoadPackagesM3_NOM.AsFloat := sq_OnePkgDetailDataM3_NOM.AsFloat;
        cds_LoadPackagesKVM.AsFloat := sq_OnePkgDetailDataKVM.AsFloat;
        cds_LoadPackagesLopM.AsFloat := sq_OnePkgDetailDataLopM.AsFloat;
        cds_LoadPackagesPCS.AsInteger := sq_OnePkgDetailDataPCS.AsInteger;
        cds_LoadPackagesPCS_PER_LENGTH.AsString :=
          sq_OnePkgDetailDataPCS_PER_LENGTH.AsString;
        cds_LoadPackagesNoOfLengths.AsInteger :=
          sq_OnePkgDetailDataNoOfLengths.AsInteger;
        cds_LoadPackagesProductLengthNo.AsInteger :=
          sq_OnePkgDetailDataProductLengthNo.AsInteger;

        cds_LoadPackagesActualThicknessMM.AsFloat :=
          sq_OnePkgDetailDataActualThicknessMM.AsFloat;
        cds_LoadPackagesActualWidthMM.AsFloat :=
          sq_OnePkgDetailDataActualWidthMM.AsFloat;
        cds_LoadPackagesSurfacingNo.AsInteger :=
          sq_OnePkgDetailDataSurfacingNo.AsInteger;
        cds_LoadPackagesSpeciesNo.AsInteger :=
          sq_OnePkgDetailDataSpeciesNo.AsInteger;
        cds_LoadPackagesMainGradeNo.AsInteger :=
          sq_OnePkgDetailDataMainGradeNo.AsInteger;
        cds_LoadPackagesALMM.AsFloat := sq_OnePkgDetailDataALMM.AsFloat;
        cds_LoadPackagesLIPNo.AsInteger := sq_OnePkgDetailDataLIPNo.AsInteger;
        cds_LoadPackagesProductCategoryNo.AsInteger :=
          sq_OnePkgDetailDataProductCategoryNo.AsInteger;
        cds_LoadPackagesOLDPACKAGETYPENO.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;

        sq_OnePkgDetailData.Close;
      End;

      Try
        cds_LoadPackages.Post;
        { if cds_LoadPackages.ChangeCount > 0 then
          Begin
          cds_LoadPackages.ApplyUpdates(0) ;
          cds_LoadPackages.CommitUpdates ;
          End ; }
        // if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
      Except
        // On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
        on eDatabaseError do
        Begin
          Raise;
          ShowMessage('Package number is already assigned to the load.');
          cds_LoadPackages.Cancel;
        End;
      End;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
    End;
  End; // with
end;

function TfLoadEntrySSP.ValidatePkgInSerie(Sender: TObject; PkgNo: Integer)
  : TEditAction;
var
  PkgSupplierCode: String3;
  PkgSupplierNo: Integer;
  Action: TEditAction;
  ProductNo: Integer;
  Save_Cursor: TCursor;
  Res_UserName: String;
  ProductLengthNo, NoOfLengths: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    { Do some lengthy operation }

    Action := IdentifyPackageSupplier(PkgNo, dmLoadEntrySSP.FSupplierNo,
      PkgSupplierCode, PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo,
      NoOfLengths);

    if Action = eaACCEPT then
    Begin
      AddPkgTo_cds_LoadPackagesPkgSerieNo(Sender, PkgNo, PkgSupplierCode);
      if AfterAddedPkgNo(Sender, PkgNo, PkgSupplierCode, ProductNo,
        ProductLengthNo, NoOfLengths) <> eaACCEPT then
      Begin
        ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exist.');
      End;
    End
    else if Action = eaREJECT then
    Begin
      dmLoadEntrySSP.cds_LoadPackages.Cancel;
      ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exist.');
    End
    else if Action = eaReserved then
    Begin
      dmLoadEntrySSP.cds_LoadPackages.Cancel;
      ShowMessage('Package number ' + IntToStr(PkgNo) + ' is reserved by ' +
        Res_UserName);
    End;

    Result := Action;
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo,
  ShipToInvPointNo, LoadingLocationNo: Integer);
Var
  Save_Cursor: TCursor;
begin
  With dmLoadEntrySSP do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    cds_LO_LookUp.Filtered := False;
    Try
      if cds_LO_LookUp.Active = False then
      Begin
        Get_LO_LookUp_SQL(FOrderClientNo { AVROP_CUSTOMERNO } , FShipping,
          LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo,
          LoadingLocationNo, 1);
        cds_LO_LookUp.Active := True;
        { if ThisUser.UserID = 8 then
          Begin
          sq_LO_LookUp.SQL.Add('-- cds_LO_LookUp.RecordCount = ' + IntToStr(cds_LO_LookUp.RecordCount)) ;
          dmsSystem.ShowMemo(sq_LO_LookUp.SQL) ;
          End ; }
      End;

      if cds_LO_LookUp.RecordCount > 0 then
      Begin
        cds_LSP.Insert;
        Try
          cds_LSPShippingPlanNo.AsInteger :=
            cds_LO_LookUpShippingPlanNo.AsInteger;
          cds_LSPCUSTOMER.AsString := cds_LO_LookUpCUSTOMER.AsString;
          cds_LSPOBJECTTYPE.AsInteger := cds_LO_LookUpOBJECTTYPE.AsInteger;
          cds_LSPAVROP_CUSTOMERNO.AsInteger :=
            cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger;
          cds_LSPSUPPLIER.AsString := cds_LO_LookUpSUPPLIER.AsString;
          cds_LSPLOC_CUST.AsString := cds_LO_LookUpLOCAL_CUST.AsString;
          cds_LSPLOADING_LOCATION.AsString :=
            cds_LO_LookUpLoadingLocation.AsString;
          cds_LSPSHIP_TO.AsString := cds_LO_LookUpSHIP_TO.AsString;
          cds_LSPPIPNo.AsInteger := cds_LO_LookUpPIPNo.AsInteger;
          cds_LSPLIPNo.AsInteger := cds_LO_LookUpLIPNo.AsInteger;

          if cds_LoadHead.State = dsBrowse then
            cds_LoadHead.Edit;
          cds_LoadHeadPIPNo.AsInteger := cds_LSPPIPNo.AsInteger;
          cds_LoadHeadLIPNo.AsInteger := dmsContact.GetMaxLIPNoOfPIPNo
            (cds_LSPPIPNo.AsInteger);
          cds_LoadHead.Post;

          sq_Booking_Data.Close;
          sq_Booking_Data.ParamByName('ShippingPlanNo').AsInteger :=
            cds_LO_LookUpShippingPlanNo.AsInteger;
          sq_Booking_Data.Open;
          if not sq_Booking_Data.Eof then
          Begin
            cds_LSPShipper.AsString := sq_Booking_DataShipper.AsString;
            cds_LSPREADYDATE.AsString := sq_Booking_DataREADYDATE.AsString;
            cds_LSPVESSEL.AsString := sq_Booking_DataVESSEL.AsString;
            cds_LSPETD.AsSQLTimeStamp := sq_Booking_DataETD.AsSQLTimeStamp;
            cds_LSPETA.AsSQLTimeStamp := sq_Booking_DataETA.AsSQLTimeStamp;
            cds_LSPSHIPPER_REF.AsString := sq_Booking_DataSHIPPER_REF.AsString;
            cds_LSPSHIPPERID.AsString := sq_Booking_DataSHIPPERID.AsString;
            cds_LSPSHIPPERS_SHIPDATE.AsSQLTimeStamp :=
              sq_Booking_DataSHIPPERS_SHIPDATE.AsSQLTimeStamp;
            cds_LSPSHIPPERS_SHIPTIME.AsSQLTimeStamp :=
              sq_Booking_DataSHIPPERS_SHIPTIME.AsSQLTimeStamp;
          End;
          cds_LSPORDERNO.AsString := cds_LO_LookUpORDERNO.AsString;
          cds_LSPORDERTYPE.AsString := cds_LO_LookUpORDERTYPE.AsString;
          cds_LSPShipping.AsInteger := cds_LO_LookUpShipping.AsInteger;

          FCustomerNo := cds_LO_LookUpCustomerNo.AsInteger;
          FSupplierNo := cds_LO_LookUpSupplierNo.AsInteger;
          cds_LSPCustomerNo.AsInteger := cds_LO_LookUpCustomerNo.AsInteger;
          cds_LSPSupplierNo.AsInteger := cds_LO_LookUpSupplierNo.AsInteger;
          cds_LSPShipToInvPointNo.AsInteger :=
            cds_LO_LookUpShipToInvPointNo.AsInteger;
          cds_LSPLoadingLocationNo.AsInteger :=
            cds_LO_LookUpLoadingLocationNo.AsInteger;

          cds_LSPFunction.AsInteger := 1; // New
          cds_LSP.Post;

          // LARS  GetLO_Records_AfterAddingLO_Number( cds_LO_LookUpShippingPlanNo.AsInteger) ;

        Except
          on eDatabaseError do
            Raise;
        End
      End
      else
        ShowMessage
          ('This load order is no longer available, perhaps LO status is not accept or the call off is no longer active?');
    Finally
      Screen.Cursor := Save_Cursor;
      sq_Booking_Data.Close;
      if cds_LO_LookUp.Active = True then
        cds_LO_LookUp.Active := False;
    End;
  End; // with
end;

function TfLoadEntrySSP.ValidatePackage_ver2(Var CustcdsNo: Integer;
  PkgSupplier: String3; PkgNo: Integer; var SuppShipPlanObjectNo: Integer;
  var PkgLog: String; var LO_Number, OverrideRL: Integer;
  const ProductNo, ProductLengthNo, NoOfLengths: Integer): Integer;
var
  BadLength: Real;
  LOLineKey, CustcdsNoKey: Integer;

  // build list of references to SupplierShipPlanObjectNo to validate package against
  procedure BuildListOfLOLines;
  begin
    With dmLoadEntrySSP do
    Begin
      // if no match then add by productno automatically
      if not cdsLORows.FindKey([cds_LoadPackagesDefsspno.AsInteger]) then
      Begin
        // Koppla paket mot LO rader
        LOLineKey := AddLoadDetailMatchByProductNo(CustcdsNoKey, PkgNo,
          PkgSupplier, ProductNo, ProductLengthNo, NoOfLengths);
      End // if
      else
      Begin
        LOLineKey := cds_LoadPackagesDefsspno.AsInteger;
        CustcdsNoKey := cds_LoadPackagesDefaultCustShipObjectNo.AsInteger;
      End;
    End;
  end;

  function ValideraLength: Integer;
  Begin
    Result := BAD_LENGTH;
    With dmLoadEntrySSP do
    Begin
      if cdsLORowsACT_LENGTH.AsInteger = 0 then
      Begin
        SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        LO_Number := cdsLORowsShippingPlanNo.AsInteger;
        CustcdsNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        OverrideRL := cdsLORowsOverrideRL.AsInteger;

        if dmsSystem.All_PkgLengths_In_LengthGroup
          (cds_LoadPackagesPackageTypeNo.AsInteger,
          cdsLORowsProductLengthGroupNo.AsInteger) then
          Result := ALL_OK
        else
          Result := VP_LengthNotInLengthGroup;
      End
      else if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
      Begin
        if cdsLORowsACT_LENGTH.AsString = cds_LoadPackagesALMM.AsString then
        // if cds_LoadPackagesProductLengthNo.AsInteger = cdsLORowsProductLengthNo.AsInteger then
        Begin
          SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
          LO_Number := cdsLORowsShippingPlanNo.AsInteger;
          CustcdsNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
          Result := ALL_OK;
          OverrideRL := cdsLORowsOverrideRL.AsInteger;
        End
        else
        Begin
          PkgLog := Format(rs_BAD_LENGTH, [BadLength]);
          Result := BAD_LENGTH;
          OverrideRL := 0;
        End;
      End // if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
      else if cds_LoadPackagesNoOfLengths.AsInteger > 1 then
      Begin
        PkgLog := Format(rs_BAD_LENGTH, [BadLength]);
        Result := BAD_LENGTH;
        OverrideRL := 0;
      End
    End; // With
  End;

  function ValideraProduktAttribut: Integer;
  Begin
    // August 27 Matching LO to Pkgs
    With dmLoadEntrySSP do
    Begin
      if cds_LoadPackagesActualThicknessMM.AsFloat <> cdsLORowsACT_THICK.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Thick,
          [cds_LoadPackagesActualThicknessMM.AsFloat]);
        Result := VP_BadThickness;
        Exit;
      End
      else if cds_LoadPackagesActualWidthMM.AsFloat <> cdsLORowsACT_WIDTH.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Width, [cds_LoadPackagesActualWidthMM.AsFloat]);
        Result := VP_BadWidth;
        Exit;
      End
      else if cds_LoadPackagesMainGradeNo.AsInteger <> cdsLORowsGradeNo.AsInteger
      then
      Begin
        Result := VP_BadGrade;
        PkgLog := rs_NO_Grade;
        Exit;
      End

      { Validera utförande
        else
        if cds_LoadPackagesSurfacingNo.AsInteger <> cdsLORowsSurfacingNo.AsInteger then
        Begin
        Result  := VP_BadSurfacing ;
        PkgLog  := rs_NO_Surfacing ;
        Exit ;
        End }

      else if cds_LoadPackagesSpeciesNo.AsInteger <> cdsLORowsSpeciesNo.AsInteger
      then
      Begin
        Result := VP_BadSpecies;
        PkgLog := rs_NO_Species;
        Exit;
      End
      // LM måste fixas till med impregnerings kontrollen.
      else if cds_LoadPackagesProductCategoryNo.AsInteger <>
        cdsLORowsProductCategoryNo.AsInteger then
      Begin
        Result := VP_BadIMP;
        PkgLog := rs_NO_IMP;
        Exit;
      End;
      // if we get to here all attributes are OK.
      Result := ALL_OK;
    End; // With
  End;

  function ValideraDimension: Integer;
  Begin
    // August 27 Matching LO to Pkgs
    With dmLoadEntrySSP do
    Begin
      if cds_LoadPackagesActualThicknessMM.AsFloat <> cdsLORowsACT_THICK.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Thick,
          [cds_LoadPackagesActualThicknessMM.AsFloat]);
        Result := VP_BadThickness;
        Exit;
      End
      else if cds_LoadPackagesActualWidthMM.AsFloat <> cdsLORowsACT_WIDTH.AsFloat
      then
      Begin
        PkgLog := Format(rs_NO_Width, [cds_LoadPackagesActualWidthMM.AsFloat]);
        Result := VP_BadWidth;
        Exit;
      End;
      // if we get to here all attributes are OK.
      Result := ALL_OK;
    End; // With
  End;

begin
  // procedure ValidatePackage_ver2
  CustcdsNo := NO_MATCH; // Changed below if validation succeeds.
  BadLength := 0;
  SuppShipPlanObjectNo := NO_MATCH; // Changed below if validation succeeds.
  BuildListOfLOLines;
  SuppShipPlanObjectNo := LOLineKey;
  CustcdsNo := CustcdsNoKey;

  With dmLoadEntrySSP do
  Begin
    Try
      if SuppShipPlanObjectNo > 0 then
      Begin
        // Filtrera fram LO records på current LoadDetailMatch
        cdsLORows.Filter := 'SupplierShipPlanObjectNo = ' +
          IntToStr(SuppShipPlanObjectNo);
        // mtLoadDetailMatchSupplierShipPlanObjectNo.AsString ;
        cdsLORows.Filtered := True;

        if cds_LoadPackagesOverrideMatch.AsInteger = 0 then
        Begin
          Result := ValideraProduktAttribut;
          if Result = ALL_OK then
            Result := ValideraLength;
        End
        else
        Begin
          Result := ValideraDimension;
          if Result = ALL_OK then
            Result := ValideraLength;
        End;
      End
      else
      Begin
        Result := VP_NoLOConnection;
        PkgLog := rs_NO_LO_Connection;
      End;

      // Kolla om det finns en match på Dimension, träslag, utförande och huvudkvalitet mellan
      // LO och paket.
      // Om det inte matchar skall det rapporteras tillbaka till användaren vilken parameter
      // som inte matchade

      // Är det en successfull match på produkten skall paketlängden matchas mot LO längden.

    Finally
      cdsLORows.Filtered := False;
    End;
  End; // With
end;

function TfLoadEntrySSP.AddPkgTo_cds_LoadPackages(Sender: TObject;
  const PkgNo: Integer; const PkgSupplierCode: String3): TEditAction;
var
  SuppShipPlanObjectNo: Integer;
  LO_Number: Integer;
Begin
  With dmLoadEntrySSP do
  Begin
    ds_LoadPackages2.OnDataChange := Nil;

    Try
      Result := eaACCEPT;

      // if cds_LoadPackages.State = dsBrowse then
      cds_LoadPackages.Insert;

      // Default LO number in case there is no match the LoadDetail must get a value
      dmLoadEntrySSP.cdsLORows.First;
      LO_Number             := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;
      SuppShipPlanObjectNo  := cdsLORowsSupplierShipPlanObjectNo.AsInteger;

      cds_LoadPackagesOverrideRL.AsInteger                    := 0;
      cds_LoadPackagesDefsspno.AsInteger                      := -1;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger       := -1;

      sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger  := PkgNo;
      sq_OnePkgDetailData.ParamByName('SupplierCode').AsString :=
        PkgSupplierCode;
      sq_OnePkgDetailData.ParamByName('LanguageID').AsInteger  := ThisUser.LanguageID ;
      sq_OnePkgDetailData.Open;
      if not sq_OnePkgDetailData.Eof then
      Begin
        cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
        cds_LoadPackagesProductNo.AsInteger :=
          sq_OnePkgDetailDataProductNo.AsInteger;
        cds_LoadPackagesPRODUCT.AsString := sq_OnePkgDetailDataPRODUCT.AsString;
        cds_LoadPackagesPackageNo.AsInteger :=
          sq_OnePkgDetailDataPackageNo.AsInteger;
        cds_LoadPackagesNoOfPackages.AsInteger := -1;
        cds_LoadPackagesPackageTypeNo.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;
        cds_LoadPackagesSupplierCode.AsString := Trim(PkgSupplierCode);
        cds_LoadPackagesM3_NET.AsFloat := sq_OnePkgDetailDataM3_NET.AsFloat;
        cds_LoadPackagesM3_NOM.AsFloat := sq_OnePkgDetailDataM3_NOM.AsFloat;
        cds_LoadPackagesKVM.AsFloat := sq_OnePkgDetailDataKVM.AsFloat;
        cds_LoadPackagesLopM.AsFloat := sq_OnePkgDetailDataLopM.AsFloat;
        cds_LoadPackagesPCS.AsInteger := sq_OnePkgDetailDataPCS.AsInteger;
        cds_LoadPackagesPCS_PER_LENGTH.AsString :=
          sq_OnePkgDetailDataPCS_PER_LENGTH.AsString;
        cds_LoadPackagesNoOfLengths.AsInteger :=
          sq_OnePkgDetailDataNoOfLengths.AsInteger;
        cds_LoadPackagesProductLengthNo.AsInteger :=
          sq_OnePkgDetailDataProductLengthNo.AsInteger;

        cds_LoadPackagesActualThicknessMM.AsFloat :=
          sq_OnePkgDetailDataActualThicknessMM.AsFloat;
        cds_LoadPackagesActualWidthMM.AsFloat :=
          sq_OnePkgDetailDataActualWidthMM.AsFloat;
        cds_LoadPackagesSurfacingNo.AsInteger :=
          sq_OnePkgDetailDataSurfacingNo.AsInteger;
        cds_LoadPackagesSpeciesNo.AsInteger :=
          sq_OnePkgDetailDataSpeciesNo.AsInteger;
        cds_LoadPackagesMainGradeNo.AsInteger :=
          sq_OnePkgDetailDataMainGradeNo.AsInteger;
        cds_LoadPackagesALMM.AsFloat := sq_OnePkgDetailDataALMM.AsFloat;
        cds_LoadPackagesLIPNo.AsInteger := sq_OnePkgDetailDataLIPNo.AsInteger;
        cds_LoadPackagesProductCategoryNo.AsInteger :=
          sq_OnePkgDetailDataProductCategoryNo.AsInteger;
        cds_LoadPackagesOLDPACKAGETYPENO.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;

        sq_OnePkgDetailData.Close;
      End;

      Try
        cds_LoadPackages.Post;
        { if cds_LoadPackages.ChangeCount > 0 then
          Begin
          cds_LoadPackages.ApplyUpdates(0) ;
          cds_LoadPackages.CommitUpdates ;
          End ; }
        // if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
      Except
        // On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
        on eDatabaseError do
        Begin
          Raise;
          ShowMessage('Package number is already assigned to the load.');
          cds_LoadPackages.Cancel;
        End;
      End;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
    End;
  End; // with
end;

procedure TfLoadEntrySSP.bbTally_Ver2Click(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if uReportController.useFR then begin
      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
      RepNo := 55 // TALLY_INTERNAL_VER3_NOTE.fr3
    else Begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
      RepNo := 43;
    End;
    try
      Params := TCMParams.Create();
      Params.Add('@Language', ThisUser.LanguageID);
      Params.Add('@LoadNo', dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_DelPkgType.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;

      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
        FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT', A)
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
          dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
        except
          On E: Exception do Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
        FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT', A);
      End;

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_DelPkgType.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfLoadEntrySSP.InsertSelectedPkgNos(Sender: TObject);
Var
  SupplierShipPlanObjectNo: Integer;
begin
  With dmsSystem, dmLoadEntrySSP do
  Begin
    SupplierShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
    cds_LoadPackages.DisableControls;
    cdsLORows.DisableControls;
    mtSelectedPkgNo.Filter := 'MARKERAD = 1';
    mtSelectedPkgNo.Filtered := True;
    Try
      mtSelectedPkgNo.First;
      While not mtSelectedPkgNo.Eof do
      Begin
        Try
          cds_LoadPackages.Insert;
          cds_LoadPackagesPackageNo.AsInteger :=
            mtSelectedPkgNoPaketnr.AsInteger;
          cds_LoadPackagesSupplierCode.AsString :=
            mtSelectedPkgNoLevKod.AsString;
          cds_LoadPackagesDefsspno.AsInteger :=
            cdsLORowsSupplierShipPlanObjectNo.AsInteger;
          cds_LoadPackagesOverrideRL.AsInteger := cdsLORowsOverrideRL.AsInteger;

          ValidatePkgNoSuppCode_WhenPickPkgNo(Sender,
            mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
            mtSelectedPkgNoproductno.AsInteger,
            mtSelectedPkgNoNOOFLENGTHS.AsInteger);
          // if (cds_LoadPackagesPackageOK.AsInteger <> 0) AND (cds_LoadPackagesPackageOK.AsInteger <> 13) then
          // ValidatePkgNoSuppCode(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
          // mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
        Except
          on eDatabaseError do
          Begin
            Raise;
            cds_LoadPackages.Cancel;
          End;
        End;
        mtSelectedPkgNo.Next;
        cdsLORows.Locate('SupplierShipPlanObjectNo',
          SupplierShipPlanObjectNo, []);
      End; // While
      if cds_LoadPackages.State in [dsEdit, dsInsert] then
        cds_LoadPackages.Post;

    Finally
      mtSelectedPkgNo.Filtered := False;
      cds_LoadPackages.EnableControls;
      cdsLORows.EnableControls;
    End;
  End; // with
End;

procedure TfLoadEntrySSP.ValidatePkgNoSuppCode(Sender: TObject;
  const PkgNo: Integer; PkgSupplierCode: String3;
  const ProductNo, ProductLengthNo: Integer);
var
  // PkgSupplierNo: Integer ;
  Action: TEditAction;
  Save_Cursor: TCursor;
  Res_UserName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReserved(PkgNo, PkgSupplierCode, Res_UserName);

    if Action = eaACCEPT then
    Begin
      AddPkgTo_cds_LoadPackages(Sender, PkgNo, PkgSupplierCode);
      if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSupplierCode)])
      then

        if AfterAddedPkgNo(Sender, PkgNo, PkgSupplierCode, ProductNo,
          ProductLengthNo, 1 { NoOfLengths } ) <> eaACCEPT then
        Begin
          ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exists in inventory ' +
            Trim(lcPIP.Text) + '/' + ''); // Trim(bcLogicalInventory.Text)) ;
        End;
    End
    else if Action = eaREJECT then
    Begin
      ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exists in inventory ' +
        Trim(lcPIP.Text) + '/' + ''); // Trim(bcLogicalInventory.Text)) ;
    End
    else if Action = eaReserved then
    Begin
      ShowMessage('Package number ' + IntToStr(PkgNo) + ' is reserved by ' +
        Res_UserName);
    End
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

function TfLoadEntrySSP.IsPkgReserved(const PkgNo: Integer;
  var PkgSupplierCode: String3; Var Res_UserName: String): TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0;
begin
  // SSP.LogicalTransferInventoryNo:= fLIPNo ;
  if PkgSupplierCode = '' then
  Begin
    Result := eaREJECT;
  End
  else if dmsSystem.Pkg_Reserved(PkgNo, PkgSupplierCode, 'TfLoadEntrySSP',
    Res_UserName) = ThisUser.UserName + '/' +
    'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
  begin
    Result := eaACCEPT;
  end
  else

  begin
    MessageBeep(MB_ICONEXCLAMATION);
    Result := eaReserved; // eaREJECT;
  end;
end;

procedure TfLoadEntrySSP.ScanningEgnaPkgNo(Sender: TObject;
  PkgNo, EgenPkgSupplierCode: String);
const
  LF = #10;
var
  NewPkgNo: Integer;
  PktNrLevKod: String3; // Lev koden i paketnrsträngen
  PkgSupplierCode: String3;
  Action: TEditAction;
  // ProductNo : Integer ;
  Save_Cursor: TCursor;
  Res_UserName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    NewPkgNo := 0;
    if Length(Trim(PkgNo)) > 10 then
    Begin
      Try
        NewPkgNo := StrToInt(Copy(PkgNo, dmsSystem.PktNrPos,
          dmsSystem.AntPosPktNr));
      Except
        on E: EConvertError do
          ShowMessage(E.ClassName + LF + E.Message);
      End;
      if NewPkgNo < 1 then
        Exit;
      PktNrLevKod := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod);
      PkgSupplierCode := dmsContact.GetSuppliercodeByPktLevKod(PktNrLevKod);

      if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo,
        dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
        Action := eaACCEPT
      else
        Action := eaABANDON;

    End
    else // Length < 11
    Begin
      NewPkgNo := StrToIntDef(PkgNo, 0);
      PkgSupplierCode := EgenPkgSupplierCode;
      if NewPkgNo = 0 then
      Begin
        ShowMessage('The code could not be translated to a package number.');
        Exit;
      End;
    End;

    if dmLoadEntrySSP.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
    Begin
      Action := eaDuplicate;
    End
    else
      Action := eaACCEPT;

    if Action = eaACCEPT then
      if dmsSystem.Pkg_Reserved(NewPkgNo, PkgSupplierCode, 'TfLoadEntrySSP',
        Res_UserName) = ThisUser.UserName + '/' +
        'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
      begin
        Action := eaACCEPT;
      end
      else
        Action := eaReserved;

    if Action = eaACCEPT then
      InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
    else if Action = eaReserved then
      ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' is reserved by ' +
        Res_UserName)
    else
      ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' does not exist.');

    SaveLoad;

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.InsertScannedPkgNo(Sender: TObject;
  const PkgNo: Integer; const PkgSupplierCode: String);
Var
  SuppShipPlanObjectNo, CustcdsNo, LO_Number, OverrideRL: Integer;
begin
  With dmLoadEntrySSP do
  Begin
    Try
      dmLoadEntrySSP.cdsLORows.First;
      LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;
      SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;
      CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger;
      OverrideRL := cdsLORowsOverrideRL.AsInteger;

      sq_OnePkgDetailData.Close;
      sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger := PkgNo;
      sq_OnePkgDetailData.ParamByName('SupplierCode').AsString :=
        PkgSupplierCode;
      sq_OnePkgDetailData.ParamByName('LanguageID').AsInteger  := ThisUser.LanguageID ;
      sq_OnePkgDetailData.Open;
      if not sq_OnePkgDetailData.Eof then
      Begin
        cds_LoadPackages.Insert;
        cds_LoadPackagesDefsspno.AsInteger := SuppShipPlanObjectNo;
        cds_LoadPackagesOverrideRL.AsInteger := OverrideRL;
        cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
        cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
        cds_LoadPackagesProductNo.AsInteger :=
          sq_OnePkgDetailDataProductNo.AsInteger;
        cds_LoadPackagesPRODUCT.AsString := sq_OnePkgDetailDataPRODUCT.AsString;
        cds_LoadPackagesPackageNo.AsInteger :=
          sq_OnePkgDetailDataPackageNo.AsInteger;
        cds_LoadPackagesNoOfPackages.AsInteger := -1;
        cds_LoadPackagesPackageTypeNo.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;
        cds_LoadPackagesOLDPACKAGETYPENO.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;
        cds_LoadPackagesSupplierCode.AsString := Trim(PkgSupplierCode);
        cds_LoadPackagesM3_NET.AsFloat := sq_OnePkgDetailDataM3_NET.AsFloat;
        cds_LoadPackagesM3_NOM.AsFloat := sq_OnePkgDetailDataM3_NOM.AsFloat;
        cds_LoadPackagesKVM.AsFloat := sq_OnePkgDetailDataKVM.AsFloat;
        cds_LoadPackagesLopM.AsFloat := sq_OnePkgDetailDataLopM.AsFloat;
        cds_LoadPackagesPCS.AsInteger := sq_OnePkgDetailDataPCS.AsInteger;
        cds_LoadPackagesPCS_PER_LENGTH.AsString :=
          sq_OnePkgDetailDataPCS_PER_LENGTH.AsString;
        cds_LoadPackagesNoOfLengths.AsInteger :=
          sq_OnePkgDetailDataNoOfLengths.AsInteger;
        cds_LoadPackagesProductLengthNo.AsInteger :=
          sq_OnePkgDetailDataProductLengthNo.AsInteger;

        cds_LoadPackagesActualThicknessMM.AsFloat :=
          sq_OnePkgDetailDataActualThicknessMM.AsFloat;
        cds_LoadPackagesActualWidthMM.AsFloat :=
          sq_OnePkgDetailDataActualWidthMM.AsFloat;
        cds_LoadPackagesSurfacingNo.AsInteger :=
          sq_OnePkgDetailDataSurfacingNo.AsInteger;
        cds_LoadPackagesSpeciesNo.AsInteger :=
          sq_OnePkgDetailDataSpeciesNo.AsInteger;
        cds_LoadPackagesMainGradeNo.AsInteger :=
          sq_OnePkgDetailDataMainGradeNo.AsInteger;
        cds_LoadPackagesALMM.AsFloat := sq_OnePkgDetailDataALMM.AsFloat;
        cds_LoadPackagesLIPNo.AsInteger := sq_OnePkgDetailDataLIPNo.AsInteger;
        cds_LoadPackagesProductCategoryNo.AsInteger :=
          sq_OnePkgDetailDataProductCategoryNo.AsInteger;

        cds_LoadPackagesPkg_State.AsInteger := NEW_PACKAGE;
        cds_LoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD;
        cds_LoadPackagesChanged.AsInteger := 1;
        cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;

        sq_OnePkgDetailData.Close;
        cds_LoadPackages.Post;

        if AfterAddedPkgNo(Sender, cds_LoadPackagesPackageNo.AsInteger,
          cds_LoadPackagesSupplierCode.AsString,
          cds_LoadPackagesProductNo.AsInteger,
          cds_LoadPackagesProductLengthNo.AsInteger,
          cds_LoadPackagesNoOfLengths.AsInteger) <> eaACCEPT then
        Begin
          ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exist.');
        End;

      End
      else
        ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exist.');

    Except
      on eDatabaseError do
      Begin
        Raise;
        cds_LoadPackages.Cancel;
      End;
    End;

  End; // with
End;

procedure TfLoadEntrySSP.InsertPkgNo(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    cds_LoadPackages.DisableControls;
    cdsLORows.DisableControls;
    Try

      mtPkgNos.First;
      While not mtPkgNos.Eof do
      Begin
        Try
          cds_LoadPackages.Insert;
          cds_LoadPackagesPackageNo.AsInteger := mtPkgNospackageno.AsInteger;
          cds_LoadPackagesSupplierCode.AsString :=
            mtPkgNosSuppliercode.AsString;
          ValidatePkgNoSuppCode(Sender, mtPkgNospackageno.AsInteger,
            mtPkgNosSuppliercode.AsString, mtPkgNosproductno.AsInteger,
            mtPkgNosproductlengthno.AsInteger);
        Except
          on eDatabaseError do
          Begin
            Raise;
            cds_LoadPackages.Cancel;
          End;
        End;
        mtPkgNos.Next;
      End; // While
      if cds_LoadPackages.State in [dsEdit, dsInsert] then
        cds_LoadPackages.Post;

    Finally
      cds_LoadPackages.EnableControls;
      cdsLORows.EnableControls;
    End;
  End; // with
End;

procedure TfLoadEntrySSP.ScanningPkgNo(Sender: TObject; PkgNo: String);
const
  LF = #10;
var
  NewPkgNo: Integer;
  PktNrLevKod: String3; // Lev koden i paketnrsträngen
  PkgSupplierCode: String3;
  Action: TEditAction;
  // ProductNo : Integer ;
  Save_Cursor: TCursor;
  Res_UserName: String;
  NoOfLengths, ProductLengthNo, ProductNo, PkgSupplierNo: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    NewPkgNo := 0;
    if Length(Trim(PkgNo)) > 10 then
    Begin // LÅNGA KODEN
      Try
        NewPkgNo := StrToInt(Copy(PkgNo, dmsSystem.PktNrPos,
          dmsSystem.AntPosPktNr));
      Except
        on E: EConvertError do
          ShowMessage(E.ClassName + LF + E.Message);
      End;
      if NewPkgNo < 1 then
        Exit;
      PktNrLevKod := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod);
      PkgSupplierCode := dmsContact.GetSuppliercodeByPktLevKod(PktNrLevKod);

      if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo,
        dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
        Action := eaACCEPT
      else
        Action := eaABANDON;

    End
    else // Length < 11
    Begin
      NewPkgNo := StrToIntDef(PkgNo, 0);
      if NewPkgNo = 0 then
      Begin
        ShowMessage('The code could not be translated to a package number.');
        Exit;
      End;

      Action := IdentifyPackageSupplier(NewPkgNo, dmLoadEntrySSP.FSupplierNo,
        PkgSupplierCode, PkgSupplierNo, ProductNo, Res_UserName,
        ProductLengthNo, NoOfLengths);
    End;

    if dmLoadEntrySSP.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
    Begin
      Action := eaDuplicate;
    End
    else if Action = eaACCEPT then
      Action := eaACCEPT;

    if Action = eaACCEPT then
      if dmsSystem.Pkg_Reserved(NewPkgNo, PkgSupplierCode, 'TfLoadEntrySSP',
        Res_UserName) = ThisUser.UserName + '/' +
        'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED } then
      begin
        Action := eaACCEPT;
      end
      else
        Action := eaReserved;

    if Action = eaACCEPT then
      InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
    else if Action = eaReserved then
      ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' is reserved by ' +
        Res_UserName)
    else
      ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' does not exist.');

    SaveLoad;

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.acValidatePkgExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Try
    if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
    Begin
      dmLoadEntrySSP.cds_LoadPackages.Edit;
      Try
        ValidatePkg(dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger,
          dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString,
          dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
          dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger,
          dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger);

        dmLoadEntrySSP.cds_LoadPackages.Post;
      Except
        on eDatabaseError do
          Raise;
      End;

    End
    else
      ShowMessage
        ('The package row is in edit mode, please press arrow key up or down.');

  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSP.acValidateAllPkgsExecute(Sender: TObject);
begin
  ValidateAllPkgs;

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.ValidateAllPkgs;
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  With dmLoadEntrySSP do
  Begin
    ds_LoadPackages2.DataSet := Nil;
    cds_LoadPackages.DisableControls;
    Try
      cds_LoadPackages.First;
      While not cds_LoadPackages.Eof do
      Begin
        // if cds_LoadPackagesPackageOK.AsInteger <> ALL_OK then
        // Begin
        cds_LoadPackages.Edit;
        Try
          ValidatePkg(dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString,
            dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger);
          cds_LoadPackages.Post;
        Except
          on eDatabaseError do
            Raise;
        End;
        // End ;//if
        cds_LoadPackages.Next;
      End; // while

    Finally
      ds_LoadPackages2.DataSet := cds_LoadPackages;
      cds_LoadPackages.EnableControls;
      Screen.Cursor := Save_Cursor;
    End;
  End; // with
end;

procedure TfLoadEntrySSP.acInsertPkgToInventoryExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  With dmLoadEntrySSP do
  Begin

    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    mtLoadPackages.Active := True;
    GetMarkedPkgs;

    cds_LoadPackages.DisableControls;
    try
      ds_LoadPackages2.OnDataChange := NIL;

      mtLoadPackages.First;
      While not mtLoadPackages.Eof do
      Begin
        if cds_LoadPackages.Locate('LoadNo;LoadDetailNo',
          VarArrayOf([cds_LoadHeadLoadNo.AsInteger,
          mtLoadPackagesLoadDetailNo.AsInteger]), []) then
        Begin
          if cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
            cds_LoadPackages.Delete
          else
          Begin
            if cds_LoadPackages.State = dsBrowse then
              cds_LoadPackages.Edit;
            cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD;
            cds_LoadPackagesChanged.AsInteger := 1;
            cds_LoadPackages.Post;
          End;
        End;
        mtLoadPackages.Next;
      End;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
      mtLoadPackages.Active := False;
      cds_LoadPackages.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
end;

procedure TfLoadEntrySSP.acInsertAllPkgsToInventoryExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  dmLoadEntrySSP.cds_LoadPackages.DisableControls;
  Try
    dmLoadEntrySSP.ds_LoadPackages2.OnDataChange := NIL;
    dmLoadEntrySSP.cds_LoadPackages.First;
    While not dmLoadEntrySSP.cds_LoadPackages.Eof do
    Begin
      dmLoadEntrySSP.cds_LoadPackages.Edit;
      dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger :=
        REMOVE_PKG_FROM_LOAD;
      dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger := 1;
      dmLoadEntrySSP.cds_LoadPackages.Post;
      dmLoadEntrySSP.cds_LoadPackages.Next;
      // April 22 2004
      Application.ProcessMessages;
    End;
  Finally
    dmLoadEntrySSP.ds_LoadPackages2.OnDataChange :=
      dmLoadEntrySSP.ds_LoadPackages2DataChange;
    dmLoadEntrySSP.cds_LoadPackages.EnableControls;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TfLoadEntrySSP.acRemovePkgFromSystemExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  if MessageDlg
    ('Are  you sure, selected package will be completly deleted from the system.',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    With dmLoadEntrySSP do
    Begin
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      mtLoadPackages.Active := True;
      GetMarkedPkgs;
      Try
        dmLoadEntrySSP.ds_LoadPackages2.OnDataChange := NIL;

        mtLoadPackages.First;
        While not mtLoadPackages.Eof do
        Begin
          if cds_LoadPackages.Locate('LoadNo;LoadDetailNo',
            VarArrayOf([cds_LoadHeadLoadNo.AsInteger,
            mtLoadPackagesLoadDetailNo.AsInteger]), []) then
          Begin
            dmLoadEntrySSP.cds_LoadPackages.Edit;
            dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger := DELETE_PKG;
            dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger := 1;
            dmLoadEntrySSP.cds_LoadPackages.Post;
          End;
          mtLoadPackages.Next;
        End; // While..

      Finally
        dmLoadEntrySSP.ds_LoadPackages2.OnDataChange :=
          dmLoadEntrySSP.ds_LoadPackages2DataChange;
        Screen.Cursor := Save_Cursor; { Always restore to normal }
      End;
    End; // With..
end;

procedure TfLoadEntrySSP.acRemoveAllPkgsFromSystemExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  if MessageDlg('Are  you sure, selected package will be completly deleted from the system.',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    dmLoadEntrySSP.cds_LoadPackages.DisableControls;
    Try
      dmLoadEntrySSP.ds_LoadPackages2.OnDataChange := NIL;

      dmLoadEntrySSP.cds_LoadPackages.First;
      While not dmLoadEntrySSP.cds_LoadPackages.Eof do
      Begin
        dmLoadEntrySSP.cds_LoadPackages.Edit;
        dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger := DELETE_PKG;
        dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger := 1;
        dmLoadEntrySSP.cds_LoadPackages.Post;
        dmLoadEntrySSP.cds_LoadPackages.Next;
      End;

    Finally
      dmLoadEntrySSP.ds_LoadPackages2.OnDataChange :=
        dmLoadEntrySSP.ds_LoadPackages2DataChange;
      dmLoadEntrySSP.cds_LoadPackages.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // if
end;

procedure TfLoadEntrySSP.acUndoPkgOperationExecute(Sender: TObject);
begin
  // Undo
  Try
    dmLoadEntrySSP.ds_LoadPackages2.OnDataChange := NIL;

    Case dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger of
      DELETE_PKG:
        Begin
          dmLoadEntrySSP.cds_LoadPackages.Edit;
          dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger :=
            ADD_PKG_TO_LOAD;
          dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger := 0;
          dmLoadEntrySSP.cds_LoadPackages.Post;
        End;
      REMOVE_PKG_FROM_LOAD:
        Begin
          dmLoadEntrySSP.cds_LoadPackages.Edit;
          dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger :=
            ADD_PKG_TO_LOAD;
          dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger := 0;
          dmLoadEntrySSP.cds_LoadPackages.Post;
        End;
    End; // case
  Finally
    dmLoadEntrySSP.ds_LoadPackages2.OnDataChange :=
      dmLoadEntrySSP.ds_LoadPackages2DataChange;
  End;
end;

procedure TfLoadEntrySSP.acSetDefaultMatchOnAllPkgsExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  CustcdsNo, SSPObjectNo: Integer;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  With dmLoadEntrySSP do
  Begin

    try
      cds_LoadPackages.DisableControls;
      cdsLORows.DisableControls;
      cds_LoadPackages.First;
      While not cds_LoadPackages.Eof do
      Begin
        SSPObjectNo := AddLoadDetailMatchByProductNo(CustcdsNo,
          cds_LoadPackagesPackageNo.AsInteger,
          cds_LoadPackagesSupplierCode.AsString,
          cds_LoadPackagesProductNo.AsInteger,
          cds_LoadPackagesProductLengthNo.AsInteger,
          cds_LoadPackagesNoOfLengths.AsInteger);

        cds_LoadPackages.Edit;
        cds_LoadPackagesDefsspno.AsInteger := SSPObjectNo;
        cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
        cds_LoadPackagesChanged.AsInteger := 1;
        cds_LoadPackages.Post;
        cds_LoadPackages.Next;
      End;

    finally
      cds_LoadPackages.EnableControls;
      cdsLORows.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End; // With
end;

procedure TfLoadEntrySSP.acPkgInfoExecute(Sender: TObject);
var
  frmPkgInfo: TfrmPkgInfo;
begin
  frmPkgInfo := TfrmPkgInfo.Create(Nil);
  Try
    frmPkgInfo.PackageNo := dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger;
    frmPkgInfo.SupplierCode :=
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString;
    frmPkgInfo.ShowModal;
  Finally
    FreeAndNil(frmPkgInfo);
  End;
end;

procedure TfLoadEntrySSP.acValidatePkgUpdate(Sender: TObject);
begin
  acValidatePkg.Enabled := (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and
    (LoadEnabled);
end;

procedure TfLoadEntrySSP.acValidateAllPkgsUpdate(Sender: TObject);
begin
  acValidateAllPkgs.Enabled := (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0)
    and (LoadEnabled);

end;

procedure TfLoadEntrySSP.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
  acInsertPkgToInventory.Enabled := (dmLoadEntrySSP.cds_LoadPackages.RecordCount
    > 0) and (LoadEnabled);
end;

procedure TfLoadEntrySSP.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
  acInsertAllPkgsToInventory.Enabled :=
    (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled);
end;

procedure TfLoadEntrySSP.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
  acRemovePkgFromSystem.Enabled := False;
  // (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
begin
  acRemoveAllPkgsFromSystem.Enabled := False;
  // (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSP.acUndoPkgOperationUpdate(Sender: TObject);
begin
  acUndoPkgOperation.Enabled := (dmLoadEntrySSP.cds_LoadPackages.RecordCount >
    0) and (LoadEnabled);
end;

procedure TfLoadEntrySSP.acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
begin
  acSetDefaultMatchOnAllPkgs.Enabled :=
    (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled);
end;

procedure TfLoadEntrySSP.acPkgInfoUpdate(Sender: TObject);
begin
  acPkgInfo.Enabled := dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0;
end;

procedure TfLoadEntrySSP.acAddPkgByPkgCodeExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
  noofpkgs: Integer;
  fEntryField: TfEntryField;
begin
  // Add pkgs by package code
  // ta coden från lo rad
  // mata in antal paket
  // hämta paket från lagret, äldsta paketnr först
  With dmLoadEntrySSP do
  Begin
    if cds_LoadHeadLoadNo.AsInteger > 0 then
    Begin
      noofpkgs := 0;

      if cds_LoadPackages.State in [dsEdit, dsInsert] then
        Try
          cds_LoadPackages.Post;
        Except
          cds_LoadPackages.Cancel;
        End;

      fEntryField := TfEntryField.Create(Nil);
      mtPkgNos.Active := True;
      Try
        if fEntryField.ShowModal = mrOK then
        Begin
          if StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0) > 0 then
          Begin
            Save_Cursor := Screen.Cursor;
            Screen.Cursor := crSQLWait; { Show hourglass cursor }

            Try
              noofpkgs := GetPkgsNos(cdsLORowsPKGCODE.AsString,
                StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0),
                cds_LoadHeadLIPNo.AsInteger);
              if noofpkgs <> 0 then
              Begin
                if noofpkgs <> StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0)
                then
                Begin
                  if MessageDlg('You asked for ' + Trim(fEntryField.eNoofpkgs.Text)
                    + ' packages but there are only ' + IntToStr(noofpkgs) +
                    ' available. Do you want to add ' + IntToStr(noofpkgs) +
                    ' packages to the load?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                  then
                    InsertPkgNo(Sender);
                End
                else
                  InsertPkgNo(Sender);
              End
              else
                ShowMessage('There is no packages availabel with package code ' +
                  Trim(cdsLORowsPKGCODE.AsString) + ' in inventory ' +
                  Trim(lcPIP.Text) + '/' + Trim(lcLIP.Text));
            Finally
              Screen.Cursor := Save_Cursor; { Always restore to normal }
            End;
          End;
        End;

      Finally
        FreeAndNil(fEntryField); // .Free ;
        mtPkgNos.Active := False;
      End;

      SaveLoad;
    End
    else
      ShowMessage('Save the load first.');
  End; // with
end;

procedure TfLoadEntrySSP.acAddPkgByPkgCodeUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acAddPkgByPkgCode.Enabled := (cdsLORows.RecordCount > 0) and (LoadEnabled);
  End;
end;

procedure TfLoadEntrySSP.acPickPkgNosExecute(Sender: TObject);
var
  fPickPkgNo: TfPickPkgNo;
begin
  if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
  Begin
    ShowMessage('Save the load first..');
    Exit;
  End;

  With dmsSystem do
    Delete_ReservedPkgs('TfLoadEntrySSP');

  With dmLoadEntrySSP do
  Begin
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
      Try
        cds_LoadPackages.Post;
      Except
        cds_LoadPackages.Cancel;
      End;

    fPickPkgNo := TfPickPkgNo.Create(Nil);
    Try
      fPickPkgNo.ProductNo := cdsLORowsProductNo.AsInteger;
      fPickPkgNo.ProductLengthNo := cdsLORowsProductLengthNo.AsInteger;
      fPickPkgNo.ALMM := cdsLORowsACT_LENGTH.AsString;
      fPickPkgNo.PIPNo := dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger;
      fPickPkgNo.LONo := cdsLORowsShippingPlanNo.AsInteger;
      fPickPkgNo.LabelProduct.Caption := cdsLORowsINTERNPRODDESC.AsString;
      // cdsLORowsPRODUCTDESCRIPTION.AsString ;
      fPickPkgNo.LabelLength.Caption := cdsLORowsLENGTHDESC.AsString;
      fPickPkgNo.LabelPIPName.Caption := lcPIP.Text;
      fPickPkgNo.LabelOwner.Caption := cds_LSPSUPPLIER.AsString;
      fPickPkgNo.LabelLONr.Caption := cdsLORowsShippingPlanNo.AsString;
      fPickPkgNo.ObjectType := cds_LSPOBJECTTYPE.AsInteger;
      if fPickPkgNo.ShowModal = mrOK then
      Begin
        Application.ProcessMessages;
        InsertSelectedPkgNos(Sender);
      End;

      SaveLoad;
    Finally
      FreeAndNil(fPickPkgNo); // .Free ;
    End;
  End; // with
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
End;

procedure TfLoadEntrySSP.acPickPkgNosUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acPickPkgNos.Enabled := (cdsLORows.RecordCount > 0) and (LoadEnabled);
  End;
end;

procedure TfLoadEntrySSP.acSaveLoadExecute(Sender: TObject);
Begin
  SaveLoad;
end;

function TfLoadEntrySSP.ControlInvDate: Boolean;
const
  LF = #10;
Var
  LastInvNr: Integer;
  InvDate: TDateTime;
  MaxDateMsg: String;
Begin
  With dmLoadEntrySSP do
  Begin
    cds_LoadPackages.DisableControls;
    Try
      if cds_LoadPackages.State in [dsEdit, dsInsert] then
        cds_LoadPackages.Post;
      Result := True;
      cds_LoadPackages.First;
      While not cds_LoadPackages.Eof do
      Begin
        LastInvNr := dmsSystem.IsRegDateBeforeInvDate
          (cds_LoadPackagesLIPNo.AsInteger,
          SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp),
          InvDate, MaxDateMsg);
        if LastInvNr > -1 then
        Begin
          cds_LoadPackages.Edit;
          cds_LoadPackagesInvNr.AsInteger := LastInvNr;
          cds_LoadPackages.Post;
          Result := False;
        End;
        cds_LoadPackages.Next;
      End;
    Finally
      cds_LoadPackages.EnableControls;
    End;
  End; // With
end;

procedure TfLoadEntrySSP.SaveLoad;
var
  Save_Cursor: TCursor;
  LastInvNr: Integer;
  InvDate: TDateTime;
  MaxDateMsg: String;
Begin
  With dmLoadEntrySSP do
  Begin
    if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) <= Now then
    Begin

      if cds_LoadHead.State in [dsEdit, dsInsert] then
        cds_LoadHead.Post;
      if cds_LoadPackages.State in [dsEdit, dsInsert] then
        cds_LoadPackages.Post;
      cds_LoadPackages.DisableControls;
      cds_LSP.DisableControls;
      // cdsLORows.DisableControls ;
      cds_LoadHead.DisableControls;
      ValidateAllPkgs;
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      try
        if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
          SaveLOData(cds_LoadHeadLoadNo.AsInteger)
        else
          ShowMessage('Add at least one LO.');
        if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and
          (cds_LoadPackages.RecordCount > 0) then
        Begin
          ShowMessage
            ('All package does not match therefore cannot set load to complete.');
        End;
        // else
        // if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (cds_LoadPackages.RecordCount > 0) then
        // Refresh_PkgList(cds_LoadHeadLoadNo.AsInteger) ;
      finally
        cds_LoadPackages.EnableControls;
        cds_LSP.EnableControls;
        // cdsLORows.EnableControls ;
        cds_LoadHead.EnableControls;
        Screen.Cursor := Save_Cursor; { Always restore to normal }
      end;

    End // if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) < Date then
    else
      ShowMessage
        ('Loading date is not allowed to be greater than current date and time, please adjust.');

    if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (not ControlInvDate)
    then
    Begin
      if cds_LoadHead.State in [dsBrowse] then
        cds_LoadHead.Edit;
      cds_LoadHeadSenderLoadStatus.AsInteger := 0;
      cds_LoadHead.Post;
      if cds_LoadHead.ChangeCount > 0 then
      Begin
        cds_LoadHead.ApplyUpdates(0);
        cds_LoadHead.CommitUpdates;
      End;

      ShowMessage
        ('The load cannot be set to complete because loading date is either before inventory count date or max date were the inventory group is present.');
//Lasten kan inte sätta Status till OK pga att utlastningsdatum är före
//inventerings eller maxdatum i en inventering där lagergruppen ingår');
    End;

    cdsLORows.Active := False;
    cdsLORows.ParamByName('LoadNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger;
    cdsLORows.ParamByName('LanguageID').AsInteger := ThisUser.LanguageID ;
    cdsLORows.Active := True;

    dmLoadEntrySSP.Get_LO_LinesMatched
      (dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString);

  End; // With
end;

procedure TfLoadEntrySSP.SetLoadRowToChanged;
Begin
  With dmLoadEntrySSP do
  Begin
    if cds_LoadPackages.State = dsBrowse then
      cds_LoadPackages.Edit;
    cds_LoadPackagesChanged.AsInteger := 1;
    cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
    cds_LoadPackages.Post;
  End;
End;

procedure TfLoadEntrySSP.acPrintTallyUSNoteExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  Edit1.SetFocus;
  if uReportController.useFR then begin

    if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
      RepNo := 638 // TALLY_INTERNAL_USA_VER2_NOTE.fr3
    else Begin
      RepNo := 41; // TALLY_US_NOTE.fr3
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    End;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('@Language', ThisUser.LanguageID);
      Params.Add('@LoadNo', dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_DelPkgType.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;

      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
        FormCRViewReport.CreateCo('TALLY_INTERNAL_USA_VER2_NOTE.RPT', A)
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
          dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
        except
          On E: Exception do Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
        FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT', A);
      End;

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_DelPkgType.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1MATCHPropertiesChange
  (Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    Try
      ds_LoadPackages2.OnDataChange := nil;
      if cds_LoadPackages.State = dsBrowse then
        cds_LoadPackages.Edit;
      cds_LoadPackagesChanged.AsInteger := 1;
      cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;

      if cdsLORowsMatch.AsInteger = 1 then
      Begin
        cds_LoadPackagesDefsspno.AsInteger :=
          cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
        cds_LoadPackagesOverrideRL.AsInteger := cdsLORowsOverrideRL.AsInteger;
      End
      else
      Begin
        cds_LoadPackagesDefsspno.AsInteger := -1;
        cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
        cds_LoadPackagesOverrideRL.AsInteger := 0;
      End;
      cds_LoadPackages.Post;

      Get_LO_LinesMatched(cds_LoadPackagesPackageNo.AsInteger,
        Trim(cds_LoadPackagesSupplierCode.AsString));
    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
    End;
  End; // with
end;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  Diff: Double;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PkgDiff').
    Index] <> null then
    Diff := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PkgDiff').Index];
  if Diff > 0 then
    AStyle := cxStyleOrange
  else if Diff < 0 then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleGreen;
end;

procedure TfLoadEntrySSP.GetMarkedPkgs;
Var
  LoadDetailNo, i, RecIDX, ColIdx: Integer;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  With dmLoadEntrySSP do
  Begin
    grdPkgsDBBandedTableView1.BeginUpdate;
    grdPkgsDBBandedTableView1.DataController.BeginLocate;
    ds_LoadPackages2.OnDataChange := nil;
    Try
      For i := 0 to grdPkgsDBBandedTableView1.Controller.
        SelectedRecordCount - 1 do
      Begin
        RecIDX := grdPkgsDBBandedTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdPkgsDBBandedTableView1.DataController.GetItemByFieldName
          ('LoadDetailNo').Index;
        LoadDetailNo := grdPkgsDBBandedTableView1.DataController.Values
          [RecIDX, ColIdx];

        mtLoadPackages.Insert;
        mtLoadPackagesLoadDetailNo.AsInteger := LoadDetailNo;
        mtLoadPackagesSupplierShipPlanObjectNo.AsInteger :=
          cdsLORowsSupplierShipPlanObjectNo.AsInteger;
        mtLoadPackagesCustcdsNo.AsInteger :=
          cdsLORowsCustShipPlanDetailObjectNo.AsInteger;
        mtLoadPackages.Post;
      End; // for

    Finally
      grdPkgsDBBandedTableView1.DataController.EndLocate;
      grdPkgsDBBandedTableView1.EndUpdate;
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
end;

procedure TfLoadEntrySSP.acKopplaPaketMotLOManuelltExecute(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    mtLoadPackages.Active := True;
    GetMarkedPkgs;
    ds_LoadPackages2.OnDataChange := nil;
    Try
      mtLoadPackages.First;
      While not mtLoadPackages.Eof do
      Begin
        if cds_LoadPackages.Locate('LoadNo;LoadDetailNo',
          VarArrayOf([cds_LoadHeadLoadNo.AsInteger,
          mtLoadPackagesLoadDetailNo.AsInteger]), []) then
        Begin
          cds_LoadPackages.Edit;
          cds_LoadPackagesDefsspno.AsInteger :=
            mtLoadPackagesSupplierShipPlanObjectNo.AsInteger;
          cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
          cds_LoadPackagesOverrideRL.AsInteger := 0;
          cds_LoadPackagesChanged.AsInteger := 1;
          cds_LoadPackagesOverrideMatch.AsInteger := 1;
          cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
          cds_LoadPackagesProblemPackageLog.AsString := 'Manuell koppling';
          // Validera varje paket som har manuell koppling
          ValidatePkg(dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString,
            dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger,
            dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger);
          cds_LoadPackages.Post;
        End;
        mtLoadPackages.Next;
      End;
      Get_LO_LinesMatched(cds_LoadPackagesPackageNo.AsInteger,
        cds_LoadPackagesSupplierCode.AsString);
    Finally
      mtLoadPackages.Active := False;
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
    End;
  End; // With..
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.acSaveLoadUpdate(Sender: TObject);
begin
  acSaveLoad.Enabled := (not DataSaved) and (LoadEnabled);
end;

procedure TfLoadEntrySSP.acDeleteLoadExecute(Sender: TObject);
Var
  LONo, LoadNo: Integer;
begin
  LoadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
  LONo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
  if dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0 then
  Begin
    ShowMessage('Remove all packages from the load first.');
  End
  else
  Begin
    if MessageDlg('Are you sure?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Try
        dmLoadEntrySSP.DeleteOneLoad
          (dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
        // frmVisTruckLoadOrder.RemoveTab(LONo, LoadNo) ;
        // dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger) ;
        Close;
      Except
        on E: eDatabaseError do
        Begin
          ShowMessage(E.Message);
        End;
      End;
  End;
end;

procedure TfLoadEntrySSP.acDeleteLoadUpdate(Sender: TObject);
begin
  acDeleteLoad.Enabled := (DataSaved) and (LoadEnabled) and
    (dmLoadEntrySSP.cds_LoadPackages.Active) and
    (dmLoadEntrySSP.cds_LoadPackages.RecordCount = 0);
end;

procedure TfLoadEntrySSP.acPrintFSExecute(Sender: TObject);
Var
  Val: Integer;
  Avsluta: Boolean;
begin
  Avsluta := False;
  Val := TfSelectPrintDevice.Execute;
  if Val > 0 then
  Begin
    if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
      if TfConfirm.Execute('Avsluta lasten') = mrYes then
        Avsluta := True;
    if Val = 2 then
      PreviewFS(Sender)
    else if Val = 1 then
      PrintDirectFS(Sender);
    if Avsluta then
    Begin
      if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
        acSaveAndOKExecute(Sender);
    End;
  End;

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
End;

procedure TfLoadEntrySSP.PrintDirectFS(Sender: TObject);
var
  FormCRPrintOneReport: TFormCRPrintOneReport;
  A: array of variant;
  FR: TFastreports;
  lang,
  loadNo,
  ReportType: integer;

begin
  dmFR.SaveCursor;
  try
  loadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
  if loadNo < 1 then
    Exit;
  if uReportController.useFR then begin
    FR := TFastReports.createForPrint(false);
    try
    lang := ThisUser.LanguageID;
      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
        ReportType := cFoljesedelIntern
      else
        ReportType := cFoljesedel;

      FR.Tally_Pkg_Matched(loadNo, ReportType, lang, '', '', '', 0);
    finally
      FR.Free;
    end;
  end
  else begin
    FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
    Try
      // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

      SetLength(A, 1);
      A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
        FormCRPrintOneReport.CreateCo(dmcOrder.cds_PropsCopyPcs.AsInteger,
          False, False, A, 'TALLY_INTERNAL_VER3_NOTE.RPT')
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
          dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
        except
          On E: Exception do Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
        FormCRPrintOneReport.CreateCo(dmcOrder.cds_PropsCopyPcs.AsInteger,
          False, False, A, 'TALLY_VER3_NOTE.RPT');
      End;

      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
        dmsSystem.sq_DelPkgType.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    Finally
      FreeAndNil(FormCRPrintOneReport);
    End;
  end;
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfLoadEntrySSP.PreviewFS(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;

  FR: TFastreports;
  lang,
  loadNo,
  ReportType: integer;

begin
  Edit1.SetFocus;
  dmFR.SaveCursor;
  try
  loadNo := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    if LoadNo < 1 then
      Exit;

    if uReportController.useFR then
    begin
      FR := TFastreports.Create;
      try
        lang := ThisUser.LanguageID;
        if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
          ReportType := cFoljesedelIntern
        else
          ReportType := cFoljesedel;

        FR.Tally_Pkg_Matched(LoadNo, ReportType, lang, '', '', '', 0);
      finally
        FR.free;
      end;
    end
    else
    begin
      FormCRViewReport := TFormCRViewReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;

        if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
          FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT', A)
        else
        Begin
          Try
            dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
              dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
            dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;
          FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT', A);
        End;
        if FormCRViewReport.ReportFound then
        Begin
          FormCRViewReport.ShowModal;
        End;
        Try
          dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
            dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
          dmsSystem.sq_DelPkgType.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      Finally
        FreeAndNil(FormCRViewReport);
      End;
    end;
  finally
    dmFR.RestoreCursor;
  end;
end;

procedure TfLoadEntrySSP.acPrintHyvelOrderExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  Edit1.SetFocus;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;

    FormCRViewReport.CreateCo('HYVEL_ORDER.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLoadEntrySSP.acLOAllaVerkExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  Edit1.SetFocus;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
    A[1] := -1;

    FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver2.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLoadEntrySSP.acPrintLOErtVerkExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  Edit1.SetFocus;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
    A[1] := dmLoadEntrySSP.cds_LSPSupplierNo.AsInteger;
    FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver2.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLoadEntrySSP.acPrintSpecAllaLasterLOExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  Edit1.SetFocus;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger;
    A[1] := dmLoadEntrySSP.cds_LSPSupplierNo.AsInteger;
    FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT', A);

    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLoadEntrySSP.acPrintFSUpdate(Sender: TObject);
begin
  acPrintFS.Enabled := DataSaved;
end;

procedure TfLoadEntrySSP.acPrintSpecAllaLasterLOUpdate(Sender: TObject);
begin
  acPrintSpecAllaLasterLO.Enabled := DataSaved;
end;

procedure TfLoadEntrySSP.acPrintLOErtVerkUpdate(Sender: TObject);
begin
  acPrintLOErtVerk.Enabled := DataSaved;
end;

procedure TfLoadEntrySSP.acLOAllaVerkUpdate(Sender: TObject);
begin
  acLOAllaVerk.Enabled := DataSaved;
end;

procedure TfLoadEntrySSP.acPrintHyvelOrderUpdate(Sender: TObject);
begin
  acPrintHyvelOrder.Enabled := DataSaved;
end;

procedure TfLoadEntrySSP.acPkgEntryExecute(Sender: TObject);
Var
  x, LocalSupplierNo  : Integer;
  frmPackageEntry     : TfrmPackageEntry;
begin
  LocalSupplierNo := dmsContact.GetLocalSupplierNo
    (dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger);
  if LocalSupplierNo > 0 then
  Begin
    if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
    Begin
      if (Length(lcPIP.Text) > 0) and (Length(lcLIP.Text) > 0) and
        (dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0) and
        (dmLoadEntrySSP.cds_LoadHeadLIPNo.IsNull = False) then
      Begin
        if dmLoadEntrySSP.cdsLORows.RecordCount > 0 then
        Begin
          Try
            dmsProduct := TdmsProduct.Create(NIL);
            dmsProduct.CSD := 2;

            // if dmLoadEntrySSP.FAvrop_CustomerNo <> -1 then
            if dmLoadEntrySSP.FShipping = 1 then
            Begin // Purchase packages get external supplier SupplierCode

              dmsProduct.SupplierNo := FOrderClientNo;
              // dmLoadEntrySSP.FAvrop_CustomerNo ;
              dmsProduct.SupplierCode :=
              // dmsContact.GetSupplierCode(dmLoadEntrySSP.mtLoadShippingPlanLoadingLocationNo.AsInteger) ;
                dmsContact.GetClientCode(FOrderClientNo);
              // dmLoadEntrySSP.FAvrop_CustomerNo) ;

              dmsProduct.OrderType := c_Purchase;
              dmsProduct.InventoryOwnerNo := dmLoadEntrySSP.FCustomerNo;
              // dmLoadEntrySSP.FSupplierNo ;

              if dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger > 0 then
                dmsProduct.InventoryNo := dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger;

              if dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0 then
                dmsProduct.LIPNo := dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger;
            End
            else
            Begin
              dmsProduct.OrderType := c_Sales;
              dmsProduct.InventoryNo :=
                dmLoadEntrySSP.cds_LSPShipToInvPointNo.AsInteger;

              dmsProduct.SupplierNo := LocalSupplierNo;

              { if dmsContact.IsClientLego(ThisUser.CompanyNo) = 6 then
                dmsProduct.SupplierNo  :=  ThisUser.CompanyNo
                else
                dmsProduct.SupplierNo       := dmLoadEntrySSP.FSupplierNo ; }

              dmsProduct.SupplierCode := dmsContact.GetClientCode
                (LocalSupplierNo);

              // dmsProduct.SupplierCode:= dmsContact.GetClientCode(dmLoadEntrySSP.FSupplierNo) ;
              // dmsProduct.SupplierCode     := dmsContact.GetSupplierCode(dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger) ;

              dmsProduct.InventoryOwnerNo := dmLoadEntrySSP.FSupplierNo;

              if dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger > 0 then
                dmsProduct.InventoryNo :=
                  dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger;

              if dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0 then
                dmsProduct.LIPNo := dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger;
            End;

            dmsProduct.mtLO_Records.Active := True;
            dmLoadEntrySSP.cdsLORows.First;
            While not dmLoadEntrySSP.cdsLORows.Eof do
            Begin
              dmsProduct.mtLO_Records.Insert;
              Try
                For x := 0 to 27 do
                  dmsProduct.mtLO_Records.Fields.Fields[x].AsVariant :=
                    dmLoadEntrySSP.cdsLORows.Fields.Fields[x].AsVariant;
                dmsProduct.mtLO_RecordsMATCH.AsInteger := 0;
                dmsProduct.mtLO_RecordsINCH_THICK.AsFloat :=
                  StrToFloatDef(dmLoadEntrySSP.cdsLORowsINCH_THICK.AsString, 0);
                dmsProduct.mtLO_RecordsINCH_WIDTH.AsFloat :=
                  StrToFloatDef
                  (dmLoadEntrySSP.cdsLORowsINVCH_WIDTH.AsString, 0);
                dmsProduct.mtLO_RecordsOverrideRL.AsInteger :=
                  dmLoadEntrySSP.cdsLORowsOverrideRL.AsInteger;
                dmsProduct.mtLO_Records.Post;
              Except
                on eDatabaseError do
                  Raise;
              End;
              dmLoadEntrySSP.cdsLORows.Next;
            End; // while

            frmPackageEntry := TfrmPackageEntry.Create(Nil);
            Try
              if dmLoadEntrySSP.cds_LoadHeadSupplierNo.AsInteger =
                dmLoadEntrySSP.cds_LoadHeadCustomerNo.AsInteger then
                frmPackageEntry.cbSaveToProdLogg.Checked := True;
              frmPackageEntry.ShowModal;

              if frmPackageEntry.SavePkgs = True then
                acValidateAllPkgsExecute(Sender);

              SaveLoad;

            Finally
              dmsProduct.mtpackages.Active := False;
              FreeAndNil(frmPackageEntry); // .Free ;// .FreeANDNIL ;
            End;

          Finally
            FreeAndNil(dmsProduct); // .Free ;
          End;

        End
        else
          ShowMessage('Add LO first.');
      End // if (dmLoadEntrySSP.cds_LoadHeadLIPNo.AsInteger > 0) and (dmLoadEntrySSP.cds_LoadHeadLIPNo.IsNull = False) then
      else
        ShowMessage('Select inventory place and group.');
    End
    else
      ShowMessage('Save the load first.');

    if mePackageNo.Enabled then
      mePackageNo.SetFocus;
  End; // if LocalSupplierNo > 0 then
end;

procedure TfLoadEntrySSP.acPkgEntryUpdate(Sender: TObject);
begin
  acPkgEntry.Enabled := (DataSaved) and (LoadEnabled);
end;

procedure TfLoadEntrySSP.acStreckKodsinlasningExecute(Sender: TObject);
var
  fScanLoadPkgNo: TfScanLoadPkgNo;
begin
  fScanLoadPkgNo := TfScanLoadPkgNo.Create(Nil);
  Try
    fScanLoadPkgNo.EgenPkgSupplierCode :=
      dmsSystem.GetPkgPos(ThisUser.CompanyNo);
    fScanLoadPkgNo.cbEgenLevKod.Caption :=
      'Scanna endast in paket med leverantörskod ' +
      fScanLoadPkgNo.EgenPkgSupplierCode;
    fScanLoadPkgNo.ShowModal;
    acValidateAllPkgsExecute(Sender);
    // acSaveLoad.Enabled:= True ;
    SaveLoad;
  Finally
    fScanLoadPkgNo.free;
  End;
end;

procedure TfLoadEntrySSP.acPktNrSerieExecute(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    if cds_LoadPackages.State <> dsBrowse then
      Try
        cds_LoadPackages.Post;
      Except
        on eDatabaseError do
        Begin
          Raise;
        End;
      End;
    InsertPkgSerie(Sender);

    SaveLoad;
  End;

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.acPktNrSerieUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acPktNrSerie.Enabled := (cds_LoadHeadLoadNo.AsInteger > 0) AND
      (cdsLORows.RecordCount > 0) and (LoadEnabled);
  End;
end;

procedure TfLoadEntrySSP.acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acKopplaPaketMotLOManuellt.Enabled := (cds_LoadPackages.RecordCount > 0) and
      (LoadEnabled);
  End;
end;

procedure TfLoadEntrySSP.acTaBortPaketPerPaketKodExecute(Sender: TObject);
Var
  x: Integer;
  Save_Cursor: TCursor;
  fEntryField: TfEntryField;
begin
  With dmLoadEntrySSP do
  Begin
    x := 0;
    fEntryField := TfEntryField.Create(Nil);
    Try
      if fEntryField.ShowModal = mrOK then
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        Try
          cds_LoadPackages.Filter := 'packagecodeno = ' +
            QuotedStr(cdsLORowsPKGCODE.AsString);
          cds_LoadPackages.Filtered := True;
          cds_LoadPackages.Last;
          While (not cds_LoadPackages.Bof) and
            (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0) > x) do
          begin
            if dmLoadEntrySSP.cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE
            then
              lbRemovePackageClick(Sender)
            else
            Begin
              lbRemovePackageClick(Sender);
              cds_LoadPackages.Prior;
            End;
            x := succ(x);
          end;

        Finally
          cds_LoadPackages.Filtered := False;
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;
      End;
    Finally
      FreeAndNil(fEntryField); // .Free ;
    End;
  End;
end;

procedure TfLoadEntrySSP.acTaBortPaketPerPaketKodUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acAddPkgByPkgCode.Enabled := (cds_LoadPackages.RecordCount > 0) and
      (cdsLORows.RecordCount > 0) and (LoadEnabled);
  End;
end;

procedure TfLoadEntrySSP.acStreckKodsinlasningUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acStreckKodsinlasning.Enabled := (cds_LoadHeadLoadNo.AsInteger > 0) AND
      (cdsLORows.RecordCount > 0) and (LoadEnabled);
  End;
end;

procedure TfLoadEntrySSP.Get_LO_LookUp_SQL(const AVROP_CUSTOMERNO, Shipping,
  LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo,
  LO_ETT: Integer);
Begin
  With dmLoadEntrySSP.cds_LO_LookUp.SQL do
  Begin
    Clear;
    // SALES normal LO
    if Shipping = 0 then
    Begin
      Add('SELECT DISTINCT SSP.ShippingPlanStatus,');
      Add('0                         AS SHIPPING,');
      Add('SSP.ShippingPlanNo,');
      Add('SSP.CustomerNo,');
      Add('C.ClientName              AS CUSTOMER,');
      Add('OH.OrderNoText					  AS ORDERNO,');
      Add('CASE');
      Add('WHEN OH.OrderType = 1 then ' + QuotedStr('PURCHASE'));
      Add('WHEN OH.OrderType = 0 then ' + QuotedStr('SALES'));
      Add('ELSE ' + QuotedStr(''));
      Add('END AS ORDERTYPE,');
      Add('SSP.SupplierNo,');
      Add('Supp.ClientName           AS SUPPLIER,');
      Add('Cust.ClientName           AS LOCAL_CUST,');
      Add('IName.CityName            AS LoadingLocation,');
      Add('STo.CityName              AS SHIP_TO,');
      Add('SSP.OBJECTTYPE,');
      Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,');
      Add('SSP.LoadingLocationNo,');
      Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      Add('FROM dbo.SupplierShippingPlan SSP');
      Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('	AND PIP.OwnerNo = SSP.SupplierNo');

      Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo');
      Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('                                              AND CLL.ClientNo          = SSP.SupplierNo');

      Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo');
      Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo');

      Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH');
      Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo');
      Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo');
      Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo');

      Add('WHERE');
      Add('((SSP.ShippingPlanStatus > 0');
      Add('AND SSP.ShippingPlanStatus < 4');
      Add('AND SSP.ShippingPlanStatus <> 2)');
      Add('OR SSP.ShippingPlanStatus = 6)');
      // Add('SSP.ShippingPlanStatus = 1') ;
      if LO_ETT = -1 then
        Add('AND SSP.ShippingPlanNo > 1');

      Add('AND CSH.ShippingPlanStatus = 1');
      Add('AND SSP.ObjectType = 2');
      Add('AND OH.OrderType = 0');

      if LoadingLocationNo <> -1 then
        Add('AND SSP.LoadingLocationNo = ' + IntToStr(LoadingLocationNo));
      if ShipToInvPointNo <> -1 then
        Add('AND SSP.ShipToInvPointNo = ' + IntToStr(ShipToInvPointNo));
      if SupplierNo <> -1 then
        Add('AND SSP.SupplierNo = ' + IntToStr(SupplierNo));
      if LO_NO <> -1 then
        Add('AND SSP.ShippingPlanNo = ' + IntToStr(LO_NO));

      if CustomerNo <> -1 then
        Add('AND SSP.CustomerNo = ' + IntToStr(CustomerNo));

      // UNION
      Add('UNION');

      // Add och interna LO
      Add('SELECT DISTINCT SSP.ShippingPlanStatus,');
      Add('0                         AS SHIPPING,');
      Add('SSP.ShippingPlanNo,');
      Add('SSP.CustomerNo,');
      Add(QuotedStr('') + '  AS CUSTOMER,');
      Add(QuotedStr('') + '  AS ORDERNO,');
      Add(QuotedStr('SALES') + ' AS ORDERTYPE,');
      Add('SSP.SupplierNo,');
      Add('Supp.ClientName           AS SUPPLIER,');
      Add('Cust.ClientName           AS LOCAL_CUST,');
      Add('IName.CityName            AS LoadingLocation,');
      Add('STo.CityName              AS SHIP_TO,');
      Add('SSP.OBJECTTYPE,');
      Add('-1 AS AVROP_CUSTOMERNO,');
      Add('SSP.LoadingLocationNo,');
      Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      Add('FROM dbo.SupplierShippingPlan SSP');
      Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('	AND PIP.OwnerNo = SSP.SupplierNo');

      Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo');
      Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('                                              AND CLL.ClientNo          = SSP.SupplierNo');
      Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo');
      Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo');

      Add('WHERE');
      Add('((SSP.ShippingPlanStatus > 0');
      Add('AND SSP.ShippingPlanStatus < 4');
      Add('AND SSP.ShippingPlanStatus <> 2)');
      Add('OR SSP.ShippingPlanStatus = 6)');

      // Add('SSP.ShippingPlanStatus = 1') ;
      if LO_ETT = -1 then
        Add('AND SSP.ShippingPlanNo > 1');
      Add('AND SSP.ObjectType < 2');

      if LoadingLocationNo <> -1 then
        Add('AND SSP.LoadingLocationNo = ' + IntToStr(LoadingLocationNo));
      if ShipToInvPointNo <> -1 then
        Add('AND SSP.ShipToInvPointNo = ' + IntToStr(ShipToInvPointNo));
      if SupplierNo <> -1 then
        Add('AND SSP.SupplierNo = ' + IntToStr(SupplierNo));
      if LO_NO <> -1 then
        Add('AND SSP.ShippingPlanNo = ' + IntToStr(LO_NO));

      if CustomerNo <> -1 then
        Add('AND SSP.CustomerNo = ' + IntToStr(CustomerNo));
    End
    else

      if Shipping = 1 then
    Begin
      // UNION
      // Add('UNION') ;

      Add('SELECT DISTINCT SSP.ShippingPlanStatus,');
      Add('1                         AS SHIPPING,');
      Add('SSP.ShippingPlanNo,');
      Add('SSP.CustomerNo,');
      Add('C.ClientName              AS CUSTOMER,');
      Add('OH.OrderNoText					  AS ORDERNO,');
      Add('CASE');
      Add('WHEN OH.OrderType = 1 then ' + QuotedStr('PURCHASE'));
      Add('WHEN OH.OrderType = 0 then ' + QuotedStr('SALES'));
      Add('ELSE ' + QuotedStr(''));
      Add('END AS ORDERTYPE,');
      Add('SSP.SupplierNo,');
      Add('Supp.ClientName           AS SUPPLIER,');
      Add('Cust.ClientName           AS LOCAL_CUST,');
      Add('IName.CityName            AS LoadingLocation,');
      Add('STo.CityName              AS SHIP_TO,');
      Add('SSP.OBJECTTYPE,');
      Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,');
      Add('SSP.LoadingLocationNo,');
      Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      Add('FROM dbo.SupplierShippingPlan SSP');
      Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo');
      Add('	AND PIP.OwnerNo = SSP.CustomerNo');
      Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo');
      Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('                                              AND CLL.ClientNo          = SSP.SupplierNo');
      Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo');
      Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo');

      Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH');
      Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo');
      Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo');
      Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo');

      Add('WHERE');
      Add('((SSP.ShippingPlanStatus > 0');
      Add('AND SSP.ShippingPlanStatus < 4');
      Add('AND SSP.ShippingPlanStatus <> 2)');
      Add('OR SSP.ShippingPlanStatus = 6)');

      // Add('SSP.ShippingPlanStatus = 1') ;
      if LO_ETT = -1 then
        Add('AND SSP.ShippingPlanNo > 1');

      Add('AND CSH.ShippingPlanStatus = 1');
      Add('AND SSP.ObjectType = 2');
      Add('AND OH.OrderType = 1');

      if LO_NO <> -1 then
        Add('AND SSP.ShippingPlanNo = ' + IntToStr(LO_NO));

      if AVROP_CUSTOMERNO <> -1 then
        Add('AND CSH.CustomerNo = ' + IntToStr(AVROP_CUSTOMERNO));

      if CustomerNo <> -1 then
        Add('AND SSP.CustomerNo = ' + IntToStr(CustomerNo));
    End
    else if Shipping = -1 then
    Begin
      Add('SELECT DISTINCT SSP.ShippingPlanStatus,');
      Add('0                         AS SHIPPING,');
      Add('SSP.ShippingPlanNo,');
      Add('SSP.CustomerNo,');
      Add('C.ClientName              AS CUSTOMER,');
      Add('OH.OrderNoText					  AS ORDERNO,');
      Add('CASE');
      Add('WHEN OH.OrderType = 1 then ' + QuotedStr('PURCHASE'));
      Add('WHEN OH.OrderType = 0 then ' + QuotedStr('SALES'));
      Add('ELSE ' + QuotedStr(''));
      Add('END AS ORDERTYPE,');
      Add('SSP.SupplierNo,');
      Add('Supp.ClientName           AS SUPPLIER,');
      Add('Cust.ClientName           AS LOCAL_CUST,');
      Add('IName.CityName            AS LoadingLocation,');
      Add('STo.CityName              AS SHIP_TO,');
      Add('SSP.OBJECTTYPE,');
      Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,');
      Add('SSP.LoadingLocationNo,');
      Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      Add('FROM dbo.SupplierShippingPlan SSP');
      Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('	AND PIP.OwnerNo = SSP.SupplierNo');
      Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo');
      Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('                                              AND CLL.ClientNo          = SSP.SupplierNo');
      Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo');
      Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo');

      Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH');
      Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo');
      Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo');
      Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo');

      Add('WHERE');
      Add('((SSP.ShippingPlanStatus > 0');
      Add('AND SSP.ShippingPlanStatus < 4');
      Add('AND SSP.ShippingPlanStatus <> 2)');
      Add('OR SSP.ShippingPlanStatus = 6)');

      // Add('SSP.ShippingPlanStatus = 1') ;
      if LO_ETT = -1 then
        Add('AND SSP.ShippingPlanNo > 1');

      Add('AND CSH.ShippingPlanStatus = 1');
      Add('AND SSP.ObjectType = 2');
      Add('AND OH.OrderType = 0');

      if LoadingLocationNo <> -1 then
        Add('AND SSP.LoadingLocationNo = ' + IntToStr(LoadingLocationNo));
      if ShipToInvPointNo <> -1 then
        Add('AND SSP.ShipToInvPointNo = ' + IntToStr(ShipToInvPointNo));
      if SupplierNo <> -1 then
        Add('AND SSP.SupplierNo = ' + IntToStr(SupplierNo));
      if LO_NO <> -1 then
        Add('AND SSP.ShippingPlanNo = ' + IntToStr(LO_NO));

      if CustomerNo <> -1 then
        Add('AND SSP.CustomerNo = ' + IntToStr(CustomerNo));

      // UNION
      Add('UNION');

      // Add och interna LO
      Add('SELECT DISTINCT SSP.ShippingPlanStatus,');
      Add('0                         AS SHIPPING,');
      Add('SSP.ShippingPlanNo,');
      Add('SSP.CustomerNo,');
      Add(QuotedStr('') + '  AS CUSTOMER,');
      Add(QuotedStr('') + '  AS ORDERNO,');
      Add(QuotedStr('SALES') + ' AS ORDERTYPE,');
      Add('SSP.SupplierNo,');
      Add('Supp.ClientName           AS SUPPLIER,');
      Add('Cust.ClientName           AS LOCAL_CUST,');
      Add('IName.CityName            AS LoadingLocation,');
      Add('STo.CityName              AS SHIP_TO,');
      Add('SSP.OBJECTTYPE,');
      Add('-1 AS AVROP_CUSTOMERNO,');
      Add('SSP.LoadingLocationNo,');
      Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      Add('FROM dbo.SupplierShippingPlan SSP');
      Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('	AND PIP.OwnerNo = SSP.SupplierNo');
      Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo');
      Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('                                              AND CLL.ClientNo          = SSP.SupplierNo');
      Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo');
      Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo');

      Add('WHERE');
      Add('((SSP.ShippingPlanStatus > 0');
      Add('AND SSP.ShippingPlanStatus < 4');
      Add('AND SSP.ShippingPlanStatus <> 2)');
      Add('OR SSP.ShippingPlanStatus = 6)');

      // Add('SSP.ShippingPlanStatus = 1') ;
      if LO_ETT = -1 then
        Add('AND SSP.ShippingPlanNo > 1');
      Add('AND SSP.ObjectType < 2');

      if LoadingLocationNo <> -1 then
        Add('AND SSP.LoadingLocationNo = ' + IntToStr(LoadingLocationNo));
      if ShipToInvPointNo <> -1 then
        Add('AND SSP.ShipToInvPointNo = ' + IntToStr(ShipToInvPointNo));
      if SupplierNo <> -1 then
        Add('AND SSP.SupplierNo = ' + IntToStr(SupplierNo));
      if LO_NO <> -1 then
        Add('AND SSP.ShippingPlanNo = ' + IntToStr(LO_NO));

      if CustomerNo <> -1 then
        Add('AND SSP.CustomerNo = ' + IntToStr(CustomerNo));

      // UNION
      Add('UNION');

      Add('SELECT DISTINCT SSP.ShippingPlanStatus,');
      Add('1                         AS SHIPPING,');
      Add('SSP.ShippingPlanNo,');
      Add('SSP.CustomerNo,');
      Add('C.ClientName              AS CUSTOMER,');
      Add('OH.OrderNoText					  AS ORDERNO,');
      Add('CASE');
      Add('WHEN OH.OrderType = 1 then ' + QuotedStr('PURCHASE'));
      Add('WHEN OH.OrderType = 0 then ' + QuotedStr('SALES'));
      Add('ELSE ' + QuotedStr(''));
      Add('END AS ORDERTYPE,');
      Add('SSP.SupplierNo,');
      Add('Supp.ClientName           AS SUPPLIER,');
      Add('Cust.ClientName           AS LOCAL_CUST,');
      Add('IName.CityName            AS LoadingLocation,');
      Add('STo.CityName              AS SHIP_TO,');
      Add('SSP.OBJECTTYPE,');
      Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,');
      Add('SSP.LoadingLocationNo,');
      Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo');

      Add('FROM dbo.SupplierShippingPlan SSP');
      Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo');
      Add('	AND PIP.OwnerNo = SSP.CustomerNo');
      Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo');
      Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo');
      Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo');
      Add('                                              AND CLL.ClientNo          = SSP.SupplierNo');
      Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo');
      Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo');

      Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH');
      Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo');
      Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo');
      Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo');

      Add('WHERE');
      Add('((SSP.ShippingPlanStatus > 0');
      Add('AND SSP.ShippingPlanStatus < 4');
      Add('AND SSP.ShippingPlanStatus <> 2)');
      Add('OR SSP.ShippingPlanStatus = 6)');

      // Add('SSP.ShippingPlanStatus = 1') ;
      if LO_ETT = -1 then
        Add('AND SSP.ShippingPlanNo > 1');

      Add('AND CSH.ShippingPlanStatus = 1');
      Add('AND SSP.ObjectType = 2');
      Add('AND OH.OrderType = 1');

      if LO_NO <> -1 then
        Add('AND SSP.ShippingPlanNo = ' + IntToStr(LO_NO));

      if AVROP_CUSTOMERNO <> -1 then
        Add('AND CSH.CustomerNo = ' + IntToStr(AVROP_CUSTOMERNO));

      if CustomerNo <> -1 then
        Add('AND SSP.CustomerNo = ' + IntToStr(CustomerNo));
    End;

    // if ThisUser.UserID = 8 then SaveToFile('sq_LO_LookUp.TXT') ;

    {
      Add('-- AVROP_CUSTOMERNO, ' + inttostr(AVROP_CUSTOMERNO)) ;
      Add('-- Shipping, ' + inttostr(Shipping)) ;
      Add('-- LO_NO, ' + inttostr(LO_NO)) ;
      Add('-- CustomerNo, ' + inttostr(CustomerNo)) ;
      Add('-- SupplierNo, ' + inttostr(SupplierNo)) ;
      Add('-- ShipToInvPointNo, ' + inttostr(SupplierNo)) ;
      Add('-- LoadingLocationNo, ' + inttostr(LoadingLocationNo)) ;
      Add('-- LO_ETT ' + inttostr(LO_ETT)) ;
    }

    { Order by SSP.ShippingPlanStatus, SSP.ShippingPlanNo }
  End; // with
End;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  // AColumn: TcxCustomGridTableItem;
  Match: Integer;
  Diff: Double;
begin

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PkgDiff').
    Index] <> null then
    Diff := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PkgDiff').Index];
  if Diff > 0 then
    AStyle := cxStyleOrange
  else if Diff < 0 then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleGreen;

  { if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] <> null then
    Match:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] ;
    if Match = 1 then
    AStyle := cxStyleclSkyBlue ;
  }
end;

procedure TfLoadEntrySSP.grdPkgsDBBandedTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  PackageOK, Pkg_Function, OverrideRL: Integer;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('OverrideRL').Index] <> null then
    OverrideRL := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('OverrideRL').Index];

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK')
    .Index] <> null then
    PackageOK := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PackageOK').Index];
  Case PackageOK of
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
      AStyle := cxStyleRed;
    VP_LengthNotInLengthGroup:
      Begin
        if OverrideRL = 1 then
          AStyle := cxStyleYellow
        else
          AStyle := cxStyleRed;
      End;
  End;

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('Pkg_Function').Index] <> null then
    Pkg_Function := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('Pkg_Function').Index];
  Case Pkg_Function of
    REMOVE_PKG_FROM_LOAD:
      AStyle := cxStyleBlue;
    DELETE_PKG:
      AStyle := cxStyleAqua;
  End;
end;

procedure TfLoadEntrySSP.grdPkgsDBBandedTableView1Editing
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  if grdPkgsDBBandedTableView1.OptionsView.NewItemRow then
    AAllow := grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused
  else
    AAllow := True;
end;

procedure TfLoadEntrySSP.grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  With dmLoadEntrySSP do
  Begin
    if Key = VK_DOWN then
    Begin
      if grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused then
        if cds_LoadPackages.State in [dsInsert, dsEdit] then
          // cds_LoadPackages.Post ;
          cds_LoadPackages.Insert;
    End
    else if Key = VK_RETURN then
      if cds_LoadPackages.State in [dsInsert] then;
  End; // with
end;

procedure TfLoadEntrySSP.acImportPackagesExecute(Sender: TObject);
// Var DeliveryMessageNumber : String ;
begin
  { XMLImportExport:= TXMLImportExport.Create(nil);
    try
    XMLImportExport.tsExport.TabVisible:= False ;
    dmsSystem.ShippingPlanNo := dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger ;
    XMLImportExport.ShowModal ;
    Application.ProcessMessages ;
    if XMLImportExport.ImportOfPkgsOK then //ShowModal = mrOK then
    Begin
    DeliveryMessageNumber:= dmsSystem.DeliveryMessageNumber ;
    ShowPackages (Sender, DeliveryMessageNumber);
    End ;
    finally
    FreeAndNil(XMLImportExport) ;
    end; }
end;

procedure TfLoadEntrySSP.ShowPackages(Sender: TObject;
  const DeliveryMessageNumber: String);
// var fImportedPackages: TfImportedPackages;
Begin
  // LMX1
  {
    dmsProduct:= TdmsProduct.Create(Nil);
    Try
    fImportedPackages:= TfImportedPackages.Create(nil);
    try
    fImportedPackages.DeliveryMessageNumber                               := DeliveryMessageNumber ;
    dmsSystem.DeliveryMessageNumber                                  := DeliveryMessageNumber ;
    dm_ImportWoodx.OrderSupplierNo                                        := FOrderClientNo ;
    dmsProduct.SupplierNo                                                 := FOrderClientNo ;
    dmsProduct.SupplierCode                                               := dmsContact.GetClientCode(FOrderClientNo) ;

    dmsProduct.OrderType                                                  := c_Purchase ;


    //Lars 2 Aug 2007
    //  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSP.FSupplierNo ;
    dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSP.FCustomerNo ;

    dmsSystem.sq_GetInventoryNo.Close ;
    dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := dmLoadEntrySSP.FCustomerNo ;//dmLoadEntrySSP.FSupplierNo ;
    dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger ;
    dmsSystem.sq_GetInventoryNo.Open ;
    dmsProduct.InventoryNo                                                := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
    dmsSystem.sq_GetInventoryNo.Close ;


    dm_ImportWoodx.mtLoadProducts.Active:= True ;
    dmLoadEntrySSP.cdsLORows.First ;
    While not dmLoadEntrySSP.cdsLORows.Eof do
    Begin
    dm_ImportWoodx.mtLoadProducts.Insert ;
    dm_ImportWoodx.mtLoadProductsProductDisplayName.AsString := dmLoadEntrySSP.cdsLORowsPRODUCTDESCRIPTION.AsString ;
    dm_ImportWoodx.mtLoadProductsProductNo.AsInteger         := dmLoadEntrySSP.cdsLORowsPRODUCTNo.AsInteger ;
    dm_ImportWoodx.mtLoadProducts.Post ;
    dmLoadEntrySSP.cdsLORows.Next ;
    End ;

    fImportedPackages.ShowModal ;
    Application.ProcessMessages ;
    if fImportedPackages.SavedImportedPkgsOK then
    Begin
    InsertImportedPkgs(Sender) ;
    SaveLoad ;
    End ;

    finally
    FreeAndNil(fImportedPackages) ;
    end;
    Finally
    FreeAndNil(dmsProduct) ;
    End ;
  }
End;

{ procedure TfLoadEntrySSP.InsertImportedPkgs(Sender: TObject) ;
  Var Save_Cursor : TCursor;
  begin
  With dmLoadEntrySSP, dm_ImportWoodx do
  Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;
  Try
  cds_ImpProdMap.DisableControls ;
  Try
  cds_ImpProdMap.First ;
  While not cds_ImpProdMap.Eof do
  Begin
  ScanningEgnaPkgNo(Sender, cds_ImpProdMapIdentifier.AsString, Trim(cds_ImpProdMapClientCode.AsString)) ;
  cds_ImpProdMap.Next ;
  End ;//While

  acValidateAllPkgsExecute(Sender) ;

  Finally
  cds_ImpProdMap.EnableControls ;
  End ;
  Finally
  Screen.Cursor := Save_Cursor;
  End ;
  End ; // with
  End ; }

procedure TfLoadEntrySSP.acImportPackagesUpdate(Sender: TObject);
begin
  // acImportPackages.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

function TfLoadEntrySSP.AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
  const PkgNo: Integer; const PkgSupplierCode: String3): TEditAction;
var
  SuppShipPlanObjectNo: Integer;
  LO_Number: Integer;
Begin
  With dmLoadEntrySSP do
  Begin
    ds_LoadPackages2.OnDataChange := Nil;

    Try
      Result := eaACCEPT;

      if cds_LoadPackages.State = dsBrowse then
        cds_LoadPackages.Edit;

      // Default LO number in case there is no match the LoadDetail must get a value
      // dmLoadEntrySSP.cdsLORows.First ;
      LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;
      SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger;

      sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger := PkgNo;
      sq_OnePkgDetailData.ParamByName('SupplierCode').AsString :=
        PkgSupplierCode;
      sq_OnePkgDetailData.ParamByName('LanguageID').AsInteger  := ThisUser.LanguageID ;
      sq_OnePkgDetailData.Open;
      if not sq_OnePkgDetailData.Eof then
      Begin
        cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
        cds_LoadPackagesProductNo.AsInteger :=
          sq_OnePkgDetailDataProductNo.AsInteger;
        cds_LoadPackagesPRODUCT.AsString := sq_OnePkgDetailDataPRODUCT.AsString;
        cds_LoadPackagesPackageNo.AsInteger :=
          sq_OnePkgDetailDataPackageNo.AsInteger;
        cds_LoadPackagesNoOfPackages.AsInteger := -1;
        cds_LoadPackagesPackageTypeNo.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;
        cds_LoadPackagesOLDPACKAGETYPENO.AsInteger :=
          sq_OnePkgDetailDataPackageTypeNo.AsInteger;
        cds_LoadPackagesSupplierCode.AsString := Trim(PkgSupplierCode);
        cds_LoadPackagesM3_NET.AsFloat := sq_OnePkgDetailDataM3_NET.AsFloat;
        cds_LoadPackagesM3_NOM.AsFloat := sq_OnePkgDetailDataM3_NOM.AsFloat;
        cds_LoadPackagesKVM.AsFloat := sq_OnePkgDetailDataKVM.AsFloat;
        cds_LoadPackagesLopM.AsFloat := sq_OnePkgDetailDataLopM.AsFloat;
        cds_LoadPackagesPCS.AsInteger := sq_OnePkgDetailDataPCS.AsInteger;
        cds_LoadPackagesPCS_PER_LENGTH.AsString :=
          sq_OnePkgDetailDataPCS_PER_LENGTH.AsString;
        cds_LoadPackagesNoOfLengths.AsInteger :=
          sq_OnePkgDetailDataNoOfLengths.AsInteger;
        cds_LoadPackagesProductLengthNo.AsInteger :=
          sq_OnePkgDetailDataProductLengthNo.AsInteger;

        cds_LoadPackagesActualThicknessMM.AsFloat :=
          sq_OnePkgDetailDataActualThicknessMM.AsFloat;
        cds_LoadPackagesActualWidthMM.AsFloat :=
          sq_OnePkgDetailDataActualWidthMM.AsFloat;
        cds_LoadPackagesSurfacingNo.AsInteger :=
          sq_OnePkgDetailDataSurfacingNo.AsInteger;
        cds_LoadPackagesSpeciesNo.AsInteger :=
          sq_OnePkgDetailDataSpeciesNo.AsInteger;
        cds_LoadPackagesMainGradeNo.AsInteger :=
          sq_OnePkgDetailDataMainGradeNo.AsInteger;
        cds_LoadPackagesALMM.AsFloat := sq_OnePkgDetailDataALMM.AsFloat;
        cds_LoadPackagesLIPNo.AsInteger := sq_OnePkgDetailDataLIPNo.AsInteger;
        cds_LoadPackagesProductCategoryNo.AsInteger :=
          sq_OnePkgDetailDataProductCategoryNo.AsInteger;

        sq_OnePkgDetailData.Close;
      End;

      Try
        // LM    cds_LoadPackages.Post ;
        // if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
      Except
        // On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
        on eDatabaseError do
        Begin
          Raise;
          ShowMessage('The Package number is already assigned to the load.');
          cds_LoadPackages.Cancel;
        End;
      End;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
    End;
  End; // with
end;

procedure TfLoadEntrySSP.ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject;
  const PkgNo: Integer; PkgSupplierCode: String3;
  const ProductNo, ProductLengthNo: Integer);
var
  Action: TEditAction;
  Save_Cursor: TCursor;
  Res_UserName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReserved(PkgNo, PkgSupplierCode, Res_UserName);

    if Action = eaACCEPT then
    Begin
      AddSelectedPkgDataTo_cds_LoadPackages(Sender, PkgNo, PkgSupplierCode);
      if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSupplierCode)])
      then

        if AfterAddedPkgNo_WhenPickPkgNo(Sender, PkgNo, PkgSupplierCode,
          ProductNo, ProductLengthNo, 1 { NoOfLengths } ) <> eaACCEPT then
        Begin
          ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exist in inventory ' +
            Trim(lcPIP.Text) + '/' + ''); // Trim(lcLIP.Text)) ;
        End;
    End
    else if Action = eaREJECT then
    Begin
      ShowMessage('Package number ' + IntToStr(PkgNo) + ' does not exist in inventory ' +
        Trim(lcPIP.Text) + '/' + ''); // Trim(lcLIP.Text)) ;
    End
    else if Action = eaReserved then
    Begin
      ShowMessage('Package number ' + IntToStr(PkgNo) + ' is reserved by ' +
        Res_UserName);
    End
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

function TfLoadEntrySSP.AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;
  const PkgNo: Integer; const PkgSupplierCode: String3;
  const ProductNo, ProductLengthNo, NoOfLengths: Integer): TEditAction;
var
  CustcdsNo, SuppShipPlanObjectNo: Integer;
  ValidPackage: Integer;
  PkgLog: String;
  LO_Number: Integer;
  OverrideRL: Integer;
Begin
  With dmLoadEntrySSP do
  Begin
    ds_LoadPackages2.OnDataChange := Nil;
    cds_LoadPackages.DisableControls;

    Try
      Result := eaACCEPT;
      if cds_LoadPackages.State = dsBrowse then
        cds_LoadPackages.Edit;

      Begin
        // Default LO number in case there is no match the LoadDetail must get a value
        // dmLoadEntrySSP.cdsLORows.First ;
        LO_Number := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger;

        // LOLine is SuppShipPlanObjectNo
        ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo,
          SuppShipPlanObjectNo, PkgLog, LO_Number, OverrideRL, ProductNo,
          ProductLengthNo, NoOfLengths);

        cds_LoadPackagesOverrideRL.AsInteger := OverrideRL;

        case ValidPackage of
          VP_LengthNotInLengthGroup:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_LengthNotInLengthGroup;
              cds_LoadPackagesProblemPackageLog.AsString :=
                'Längd matchar ej längdgruppen';
            End;
          ALL_OK:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := ALL_OK;
              cds_LoadPackagesProblemPackageLog.AsString := 'OK';
            End;
          BAD_PKG:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := BAD_PKG;
              cds_LoadPackagesProblemPackageLog.AsString := 'BAD_PKG';
            End;
          { PKG_OK     : Begin
            cds_LoadPackagesPackageOK.AsInteger:= PKG_OK ;
            cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
            End ;
            NO_PRODUCT : Begin
            cds_LoadPackagesPackageOK.AsInteger:= NO_PRODUCT ;
            cds_LoadPackagesProblemPackageLog.AsString:= 'NO MATCHING LO';
            End ; }
          BAD_LENGTH:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := BAD_LENGTH;
              cds_LoadPackagesProblemPackageLog.AsString := 'BAD_LENGTH ';
            End;
          VP_BadThickness:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadThickness;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadWidth:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadWidth;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadGrade:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadGrade;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadSurfacing:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadSurfacing;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadSpecies:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadSpecies;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_BadIMP:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_BadIMP;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
          VP_NoLOConnection:
            Begin
              cds_LoadPackagesPackageOK.AsInteger := VP_NoLOConnection;
              cds_LoadPackagesProblemPackageLog.AsString := PkgLog;
            End;
        else
        end;

        if (ValidPackage = ALL_OK) or
          ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
          // and (dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2)) then
          // and (cdsLORowsOverrideRL.AsInteger = 1)) then
          and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
        // if ValidPackage <> BAD_PKG then
        Begin
          cds_LoadPackagesDefsspno.AsInteger := SuppShipPlanObjectNo;
          cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
          cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
          // cds_LoadPackagesOverrideRL.AsInteger                 := cdsLORowsOverrideRL.AsInteger ;
        End
        else
        Begin
          if LO_Number > 0 then
            cds_LoadPackagesShippingPlanNo.AsInteger := LO_Number;
          cds_LoadPackagesDefsspno.AsInteger := -1;
          cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1;
          cds_LoadPackagesOverrideRL.AsInteger := 0;
        End;

        Try
          // cds_LoadPackages.Post ;
        Except
          // On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
          on eDatabaseError do
          Begin
            Raise;
            ShowMessage('Package number is already assigned to the load.');
            cds_LoadPackages.Cancel;
          End;
        End; // Except
      end;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
      cds_LoadPackages.EnableControls;
    End;
  End; // with
end;

procedure TfLoadEntrySSP.acCreateInternLOExecute(Sender: TObject);
Var
  LONo: Integer;
begin
  With dmLoadEntrySSP do
  Begin
    if (cds_LSP.Active) and (cds_LSPShippingPlanNo.AsInteger = 1) then
      CreateInternLO
    else if (cds_LSP.Active) then
      UpdateInternLO;
    acValidateAllPkgsExecute(Sender);
    acSaveLoadExecute(Sender);
  End;

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.UpdateInternLO;
begin
  With dmLoadEntrySSP do
  Begin
    // Updatera Intern LO utifrån valda paket
    UpdateLO(cds_LoadHeadLoadNo.AsInteger);

    cds_LoadPackages.First;
    While not cds_LoadPackages.Eof do
    Begin
      cds_LoadPackages.Edit;
      cds_LoadPackagesShippingPlanNo.AsInteger :=
        cds_LSPShippingPlanNo.AsInteger;
      cds_LoadPackages.Post;
      cds_LoadPackages.Next;
    End;

    if cds_LoadPackages.ChangeCount > 0 then
      cds_LoadPackages.ApplyUpdates(0);

    cds_LSP.Active := False;
    Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger);
    cds_LSP.Active := True;

    cds_LoadHead.Edit;
    if cds_LoadHeadLocalLoadingLocation.IsNull then
      cds_LoadHeadLocalLoadingLocation.AsInteger :=
        cds_LSPLoadingLocationNo.AsInteger;
    if cds_LoadHeadLocalDestinationNo.IsNull then
      cds_LoadHeadLocalDestinationNo.AsInteger :=
        cds_LSPShipToInvPointNo.AsInteger;
    if cds_LoadHead.State in [dsEdit, dsInsert] then
      cds_LoadHead.Post;

    cdsLORows.Active := False;
    cdsLORows.ParamByName('LoadNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger;
    cdsLORows.ParamByName('LanguageID').AsInteger := ThisUser.LanguageID ;
    cdsLORows.Active := True;
    cdsLORows.Filter := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString;
    cdsLORows.Filtered := True;

  End;
end;

procedure TfLoadEntrySSP.CreateInternLO;
Var
  LONo: Integer;
begin
  With dmLoadEntrySSP do
  Begin
    // Skapa ny Intern LO utifrån valda paket
    // CreateLO(LoadNo, CustomerNo, DefaultShipToInvPointNo, SalesRegionNo, DefaultLIPNo, SupplierNo, Def_LoadingLocationNo  : Integer) : Integer ;
    LONo := CreateLO(cds_LoadHeadLoadNo.AsInteger,
      cds_LoadHeadCustomerNo.AsInteger, // ThisUser.CompanyNo, //CustomerNo
      // 1, //DefaultShipToInvPointNo
      dmsContact.GetSRByCompanyNo(cds_LoadHeadSupplierNo.AsInteger),
      // dmsContact.GetSRByCompanyNo(ThisUser.CompanyNo), //SalesRegionNo
      // 1, //DefaultLIPNo
      cds_LoadHeadSupplierNo.AsInteger); // ThisUser.CompanyNo, //SupplierNo
    // 1) ; //Def_LoadingLocationNo)  ;

    cds_LSP.Edit;
    cds_LSPShippingPlanNo.AsInteger := LONo;
    cds_LSP.Post;
    if cds_LSP.ChangeCount > 0 then
      cds_LSP.ApplyUpdates(0);


    cds_LoadPackages.First;
    While not cds_LoadPackages.Eof do
    Begin
      cds_LoadPackages.Edit;
      cds_LoadPackagesShippingPlanNo.AsInteger :=
        cds_LSPShippingPlanNo.AsInteger;
      cds_LoadPackages.Post;
      cds_LoadPackages.Next;
    End;

    if cds_LoadPackages.ChangeCount > 0 then
      cds_LoadPackages.ApplyUpdates(0);

    OpenInternLO(LONo);

    UpdateLSP(LONo);

    UpdateLoad(cds_LoadHeadLoadNo.AsInteger);

    cds_LSP.Active := False;
    Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger);
    cds_LSP.Active := True;

    cds_LoadHead.Edit;
    if cds_LoadHeadLocalLoadingLocation.IsNull then
      cds_LoadHeadLocalLoadingLocation.AsInteger :=
        cds_LSPLoadingLocationNo.AsInteger;
    if cds_LoadHeadLocalDestinationNo.IsNull then
      cds_LoadHeadLocalDestinationNo.AsInteger :=
        cds_LSPShipToInvPointNo.AsInteger;
    if cds_LoadHead.State in [dsEdit, dsInsert] then
      cds_LoadHead.Post;

    cdsLORows.Active := False;
    cdsLORows.ParamByName('LoadNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger;
    cdsLORows.ParamByName('LanguageID').AsInteger := ThisUser.LanguageID ;
    cdsLORows.Active := True;
    cdsLORows.Filter := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString;
    cdsLORows.Filtered := True;
    // Set
  End;
end;

procedure TfLoadEntrySSP.OpenInternLO(const LO: Integer);
begin
  { LMX1    fLOform := TfLOform.Create(Nil) ;
    Try
    dmcLO.cds_IntHdr.Active:= False ;
    dmcLO.sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= LO ;
    dmcLO.cds_IntHdr.Active:= True ;

    dmcLO.cds_LO.Active:= False ;
    dmcLO.cds_LO.Active:= True ;
    fLOform.ShowModal ;
    Finally
    FreeAndNil(fLOform) ;
    End ;
  }
end;

procedure TfLoadEntrySSP.acCreateInternLOUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acCreateInternLO.Enabled := (DataSaved) and (LoadEnabled) and
      (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and
      (cds_LSPOBJECTTYPE.AsInteger = 0) and
      ((cds_LoadPackages.Active) and (cds_LoadPackages.RecordCount > 0));
  End;
end;

// todo
// Använd längder från LO lengths för att validera
procedure TfLoadEntrySSP.acOpenLOFormExecute(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    OpenInternLO(cds_LSPShippingPlanNo.AsInteger);

    UpdateLSP(cds_LSPShippingPlanNo.AsInteger);

    UpdateLoad(cds_LoadHeadLoadNo.AsInteger);

    cds_LSP.Active := False;
    Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger);
    cds_LSP.Active := True;

    cds_LoadHead.Edit;
    if cds_LoadHeadLocalLoadingLocation.IsNull then
      cds_LoadHeadLocalLoadingLocation.AsInteger :=
        cds_LSPLoadingLocationNo.AsInteger;
    if cds_LoadHeadLocalDestinationNo.IsNull then
      cds_LoadHeadLocalDestinationNo.AsInteger :=
        cds_LSPShipToInvPointNo.AsInteger;
    if cds_LoadHead.State in [dsEdit, dsInsert] then
      cds_LoadHead.Post;

    cdsLORows.Active := False;
    cdsLORows.ParamByName('LoadNo').AsInteger     := cds_LoadHeadLoadNo.AsInteger;
    cdsLORows.ParamByName('LanguageID').AsInteger := ThisUser.LanguageID ;
    cdsLORows.Active := True;
    cdsLORows.Filter := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString;
    cdsLORows.Filtered := True;

    acSaveLoadExecute(Sender);
  End; // with
end;

procedure TfLoadEntrySSP.acOpenLOFormUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acOpenLOForm.Enabled := (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and
      (cds_LSPOBJECTTYPE.AsInteger = 0) and
      (cds_LSPShippingPlanNo.AsInteger > 1) and (DataSaved);
  End;
end;

procedure TfLoadEntrySSP.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfLoadEntrySSP.acSaveAndOKExecute(Sender: TObject);
Var
  DagensDag, UtlastningsDatum: Integer;
begin
  with dmLoadEntrySSP do
  Begin
    DagensDag := DayOfTheMonth(Date);
    UtlastningsDatum := DayOfTheMonth(cds_LoadHeadLoadedDate.AsDateTime);

    if DagensDag <> UtlastningsDatum then
    Begin
      if MessageDlg('Do you want to change to todays date?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
      begin
        if cds_LoadHead.State in [dsBrowse] then
          cds_LoadHead.Edit;
        cds_LoadHeadSenderLoadStatus.AsInteger := 2; // OK
        cds_LoadHeadLoadedDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
        cds_LoadHead.Post;
      End
      else
      Begin
        if cds_LoadHead.State in [dsBrowse] then
          cds_LoadHead.Edit;
        cds_LoadHeadSenderLoadStatus.AsInteger := 2; // OK
        cds_LoadHead.Post;
      End;
    end
    else
    Begin
      if cds_LoadHead.State in [dsBrowse] then
        cds_LoadHead.Edit;
      cds_LoadHeadSenderLoadStatus.AsInteger := 2; // OK
      cds_LoadHead.Post;
    End;

    SaveLoad;
    SetLoadEnabled;
  End;
end;

procedure TfLoadEntrySSP.acSaveAndOKUpdate(Sender: TObject);
begin
  with dmLoadEntrySSP do
  Begin
    acSaveAndOK.Enabled := // (not DataSaved) and (LoadEnabled) and
      (cds_LoadHeadSenderLoadStatus.AsInteger <> 2);
  End;
end;

procedure TfLoadEntrySSP.acPrintMenyExecute(Sender: TObject);
begin
  pmPrint.Popup(300, 200);
end;

procedure TfLoadEntrySSP.acPrintFSMisMatchExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  Edit1.SetFocus;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    FormCRViewReport.CreateCo('TALLY_VER2_NOTE_MM.RPT', A);
    // End ;
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;

  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLoadEntrySSP.acDeleteNotCompletePkgsExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  With dmLoadEntrySSP do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    mtLoadPackages.Active := True;
    GetMarkedPkgs;

    cds_LoadPackages.DisableControls;
    try
      ds_LoadPackages2.OnDataChange := NIL;

      mtLoadPackages.First;
      While not mtLoadPackages.Eof do
      Begin
        if cds_LoadPackages.Locate('LoadNo;LoadDetailNo',
          VarArrayOf([cds_LoadHeadLoadNo.AsInteger,
          mtLoadPackagesLoadDetailNo.AsInteger]), []) then
        Begin
          if cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
            cds_LoadPackages.Delete
          else
          Begin
            if cds_LoadPackages.State = dsBrowse then
              cds_LoadPackages.Edit;
            cds_LoadPackagesPkg_Function.AsInteger :=
              TA_BORT_EJ_COMPLETE_PKG_FROM_LOAD;
            cds_LoadPackagesChanged.AsInteger := 1;
            cds_LoadPackages.Post;
          End;
        End;
        mtLoadPackages.Next;
      End;

    Finally
      ds_LoadPackages2.OnDataChange := ds_LoadPackages2DataChange;
      mtLoadPackages.Active := False;
      cds_LoadPackages.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
end;

procedure TfLoadEntrySSP.acMailaFSExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  ExcelDir: String;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
  ExportFile: string;
begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  if (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger > 0) and
    (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.IsNull = False) then
    MailToAddress := dmsContact.GetEmailAddress
      (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger)
  else
    MailToAddress := dmsContact.GetEmailAddress
      (dmLoadEntrySSP.cds_LSPCustomerNo.AsInteger);
  if Length(MailToAddress) = 0 then Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Email address is missing, please enter the address direct in the mail(outlook)');
  End;
  if Length(MailToAddress) > 0 then Begin
    Try
      if dmLoadEntrySSP.cds_LSPOBJECTTYPE.AsInteger <> 2 then
        ReportType := cFoljesedelIntern  // TALLY_INTERNAL_VER3_NOTE.fr3 (55)
      else Begin

        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
          dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
        except
          On E: Exception do Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;

        if dmsContact.Client_Language
          (dmLoadEntrySSP.cds_LSPAVROP_CUSTOMERNO.AsInteger) = cSwedish then
          ReportType := cFoljesedel       // TALLY_VER3_NOTE.fr3 (43)
        else
          ReportType := cFoljesedel_eng;  //  TALLY_eng_VER3_NOTE.fr3 (56)
      End;

      ExportFile := ExcelDir + 'FS ' + dmLoadEntrySSP.cds_LoadHeadLoadNo.
        AsString + '.pdf';
      if uReportController.useFR then begin

        Params := TCMParams.Create();
        Params.Add('@Language', ThisUser.LanguageID);
        Params.Add('@LoadNo',
          dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);

        RC := TCMReportController.Create;
        ClientNo := 1;
        RoleType := -1;

        Try
          DocTyp := ReportType;
          RC.setExportFile(ExportFile);
          RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frFile);
        Finally
          FreeAndNil(Params);
          FreeAndNil(RC);
        End;
        if not FileExists(ExportFile) then
          Exit;
      end
      else
        try
          FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
          SetLength(A, 1);
          A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;

          FormCRExportOneReport.CreateCo(1, ReportType, A,
            ExcelDir + 'FS ' + dmLoadEntrySSP.cds_LoadHeadLoadNo.AsString);
          if FormCRExportOneReport.ReportFound = False then
            Exit;
        Finally
          FreeAndNil(FormCRExportOneReport); // .Free ;
        End;
    Finally

    End;
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'FS ' + dmLoadEntrySSP.cds_LoadHeadLoadNo.
      AsString + '.pdf';
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Följesedel. FSnr: ' +
        dmLoadEntrySSP.cds_LoadHeadLoadNo.AsString, 'Följesedel bifogad. ' + LF
        + '' + 'Load tally attached. ' + LF + '' + LF + '' + LF +
        'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
        (ThisUser.UserID), dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
        Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Email address missing.');
end;

procedure TfLoadEntrySSP.acSetStatusPrelandSaveExecute(Sender: TObject);
begin
  with dmLoadEntrySSP do Begin
    if not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) then
    Begin
      if cds_LoadPackages.UpdateOptions.ReadOnly then
        cds_LoadPackages.UpdateOptions.ReadOnly := False;
      if cds_LoadHead.UpdateOptions.ReadOnly then
        cds_LoadHead.UpdateOptions.ReadOnly := False;
      if cds_LoadHead.State in [dsBrowse] then
        cds_LoadHead.Edit;
      cds_LoadHeadSenderLoadStatus.AsInteger := 0; // Prel
      cds_LoadHead.Post;
      SaveLoad;
      SetLoadEnabled;

      if mePackageNo.Enabled then
        mePackageNo.SetFocus;

    End
    else
    Begin
      ShowMessage
        ('The cannot be set to preliminary because it is received at destination.');
      SetLoadEnabled;
    End;
  End;
end;

procedure TfLoadEntrySSP.acSetStatusPrelandSaveUpdate(Sender: TObject);
begin
  with dmLoadEntrySSP do
  Begin
    // acSetStatusPrelandSave.Enabled := not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;
  End;
end;

procedure TfLoadEntrySSP.acGetVPPackagesExecute(Sender: TObject);
var
  fPickVPPkgs: TfPickVPPkgs;
begin
  if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
  Begin
    ShowMessage('Save the load first.');
    Exit;
  End;

  With dmLoadEntrySSP do
  Begin
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
      Try
        cds_LoadPackages.Post;
      Except
        cds_LoadPackages.Cancel;
      End;

    fPickVPPkgs := TfPickVPPkgs.Create(Nil);
    Try
      fPickVPPkgs.VerkNo := cds_LoadHeadSupplierNo.AsInteger;
      fPickVPPkgs.LONo := cdsLORowsShippingPlanNo.AsInteger;
      fPickVPPkgs.LabelLONr.Caption := cdsLORowsShippingPlanNo.AsString;
      if fPickVPPkgs.ShowModal = mrOK then
      Begin
        Application.ProcessMessages;
        InsertSelectedPkgNos(Sender);
        acSaveLoadExecute(Sender);
      End;
    Finally
      FreeAndNil(fPickVPPkgs); // .Free ;
    End;
  End; // with

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.acGetVPPackagesUpdate(Sender: TObject);
begin
  With dmLoadEntrySSP do
  Begin
    acGetVPPackages.Enabled := (cds_LSP.Active) and
      (cds_LSPAVROP_CUSTOMERNO.AsInteger = 1879) and (cds_LoadHead.Active) and
      (cds_LoadHead.RecordCount > 0) and
      (cds_LoadHeadSupplierNo.AsInteger = 25);
  End; // With
end;

procedure TfLoadEntrySSP.GetpackageNoEntered(Sender: TObject;
  const PackageNo: String);
var
  PkgSupplierCode: String3;
  PkgSupplierNo: Integer;
  Action: TEditAction;
  ProductNo: Integer;
  Save_Cursor: TCursor;
  Res_UserName: String;
  ProductLengthNo: Integer;
  NoOfLengths: Integer;
  Error: Boolean;
  NewPkgNo: Integer;
  PktNrLevKod: String3; // Lev koden i paketnrsträngen
begin
  With dmLoadEntrySSP do
  Begin
    NewPkgNo := 0;

    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    try
      { Do some lengthy operation }
      if Length(Trim(PackageNo)) > 0 then
      Begin
        if Length(Trim(PackageNo)) > 10 then
        Begin // LÅNGA KODEN
          Try
            NewPkgNo := StrToInt(Copy(PackageNo, dmsSystem.PktNrPos,
              dmsSystem.AntPosPktNr));
          Except
            on E: EConvertError do
              ShowMessage(E.ClassName + E.Message);
          End;
          if NewPkgNo < 1 then
            Exit;
          PktNrLevKod := Copy(PackageNo, dmsSystem.LevKodPos,
            dmsSystem.AntPosLevKod);
          PkgSupplierCode := dmsContact.GetSuppliercodeByPktLevKod(PktNrLevKod);

          if dmLoadEntrySSP.PkgExistInInventory(NewPkgNo,
            dmLoadEntrySSP.cds_LoadHeadPIPNo.AsInteger, PkgSupplierCode) then
            Action := eaACCEPT
          else
            Action := eaABANDON;

        End
        else // Length < 11
        Begin
          NewPkgNo := StrToIntDef(PackageNo, 0);
          if NewPkgNo = 0 then
          Begin
            ShowMessage('The code could not translate into a package number.');
            Exit;
          End;

          Action := IdentifyPackageSupplier(NewPkgNo,
            dmLoadEntrySSP.FSupplierNo, PkgSupplierCode, PkgSupplierNo,
            ProductNo, Res_UserName, ProductLengthNo, NoOfLengths);
        End;
      End; // if StrToInt(Trim(PackageNo)) > 0 then

      if NewPkgNo > 0 then
      Begin

        // Får inte använda post själv, det gör rutinen automatiskt
        if Action = eaACCEPT then
        Begin
          AddPkgTo_cds_LoadPackages(Sender, NewPkgNo, PkgSupplierCode);
          // Långsamt här
          if AfterAddedPkgNo(Sender, NewPkgNo, PkgSupplierCode, ProductNo,
            ProductLengthNo, NoOfLengths) <> eaACCEPT then
          Begin
            ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' does not exists in inventory '
              + Trim(lcPIP.Text));
            Error := True;
          End
          else
          Begin
            Error := False;
          End;
        End
        else if Action = eaREJECT then
        Begin
          ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' does not exists in inventory ' +
            Trim(lcPIP.Text));
          Error := True;
        End
        else if Action = eaReserved then
        Begin
          ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' is reserved by ' +
            Res_UserName);
          Error := True;
        End
        else if Action = eaDuplicate then
        Begin
          ShowMessage('Package number ' + IntToStr(NewPkgNo) + ' är redan inmatat');
          Error := True;
        End;
      End
      else
      Begin
        ShowMessage('Package number missing.');
        Error := True;
      End;
    finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End; // With
end;

procedure TfLoadEntrySSP.mePackageNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if Length(mePackageNo.Text) > 0 then
    GetpackageNoEntered(Sender, mePackageNo.Text);
  Timer1.Enabled := True;
  mePackageNo.Text := '';
  SaveLoad;
end;

procedure TfLoadEntrySSP.Timer1Timer(Sender: TObject);
begin
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
  Timer1.Enabled := False;
end;

procedure TfLoadEntrySSP.ExternSaveLoad;
var
  Save_Cursor: TCursor;
  LastInvNr: Integer;
  InvDate: TDateTime;
  MaxDateMsg: String;
Begin
  With dmLoadEntrySSP do
  Begin
    if (cds_LoadHead.Active) and (not cds_LoadHead.UpdateOptions.ReadOnly) then
    Begin
      if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) <= Now
      then
      Begin

        if cds_LoadHead.State in [dsEdit, dsInsert] then
          cds_LoadHead.Post;
        if cds_LoadPackages.State in [dsEdit, dsInsert] then
          cds_LoadPackages.Post;

        cds_LoadPackages.DisableControls;
        cds_LSP.DisableControls;
        cdsLORows.DisableControls;
        cds_LoadHead.DisableControls;
        // ValidateAllPkgs ;
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crHourGlass;
        try
          if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
            SaveLOData(cds_LoadHeadLoadNo.AsInteger);
          // else
          // ShowMessage('Lägg till minst en LO.') ;
          // if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
          // Begin
          // ShowMessage('Alla paket matchar inte, status kan inte sättas till OK.') ;
          // End
          // else
          // if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (cds_LoadPackages.RecordCount > 0) then
          // Refresh_PkgList(cds_LoadHeadLoadNo.AsInteger) ;
        finally
          cds_LoadPackages.EnableControls;
          cds_LSP.EnableControls;
          cdsLORows.EnableControls;
          cds_LoadHead.EnableControls;
          Screen.Cursor := Save_Cursor;
        end;

      End // if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) < Date then
      else
        ShowMessage
          ('Loading date is not allowed to be greater than current date and time, please adjust.');

      if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (not ControlInvDate)
      then
      Begin
        if cds_LoadHead.State in [dsBrowse] then
          cds_LoadHead.Edit;
        cds_LoadHeadSenderLoadStatus.AsInteger := 0;
        cds_LoadHead.Post;
        if cds_LoadHead.ChangeCount > 0 then
        Begin
          cds_LoadHead.ApplyUpdates(0);
          cds_LoadHead.CommitUpdates;
        End;

        ShowMessage
          ('The load cannot be set to complete because loading date is either before inventory count date or max date were the inventory group is present.');
      End;

    End; // if not cds_LoadHead.UpdateOptions.ReadOnly then
  End; // With
end;

procedure TfLoadEntrySSP.acShowLoadHeaderExecute(Sender: TObject);
begin
  if dxPageControl1.Visible then
  Begin
    dxPageControl1.Visible := False;
    if mePackageNo.Enabled then
      mePackageNo.SetFocus;
  End
  else
    dxPageControl1.Visible := True;
end;

procedure TfLoadEntrySSP.acRaderaPaketExecute(Sender: TObject);
begin
{
    dmsConnector.FDMoniFlatFileClientLink1.Tracing  :=  True ;
    Try
}
    acInsertPkgToInventoryExecute(Sender);
    SaveLoad;
    if mePackageNo.Enabled then
      mePackageNo.SetFocus;
{
    Finally
      dmsConnector.FDMoniFlatFileClientLink1.Tracing  :=  False ;
    End;
}
end;

procedure TfLoadEntrySSP.acRaderaPaketUpdate(Sender: TObject);
begin
  acRaderaPaket.Enabled := (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and
    (LoadEnabled);
end;

procedure TfLoadEntrySSP.FormShow(Sender: TObject);
begin
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;

end;

procedure TfLoadEntrySSP.PrintDirectCMR(Sender: TObject);
var
  FormCRPrintOneReport: TFormCRPrintOneReport;
  A: array of variant;
begin
  if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
    Exit;
  FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
  Try
    // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

    SetLength(A, 1);
    A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    FormCRPrintOneReport.CreateCo(dmcOrder.cds_PropsCopyPcs.AsInteger, False,
      False, A, 'CMR.RPT');
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
    FreeAndNil(FormCRPrintOneReport);
  End;
end;

procedure TfLoadEntrySSP.PreviewCMR(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  Edit1.SetFocus;
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger;
    FormCRViewReport.CreateCo('CMR.RPT', A);

    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfLoadEntrySSP.acPrintCMRExecute(Sender: TObject);
var
  fEnterLoadWeight: TfEnterLoadWeight;
begin
  // Set KG
  fEnterLoadWeight := TfEnterLoadWeight.Create(nil);
  Try
    dmsSystem.GenerateLoadWeight(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
    dmsSystem.Open_cds_LoadWeigth(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
    fEnterLoadWeight.ShowModal;
    PRE_PreviewCMR(Sender);

  Finally
    dmsSystem.Close_cds_LoadWeigth;
    FreeAndNil(fEnterLoadWeight);
  End;

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.PRE_PreviewCMR(Sender: TObject);
Var
  Val: Integer;
  Avsluta: Boolean;
begin
  Avsluta := False;
  Val := TfSelectPrintDevice.Execute;
  if Val > 0 then
  Begin
    // if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
    // if TfConfirm.Execute ('Avsluta lasten') = mrYes then
    // Avsluta := True ;
    if Val = 2 then
      PreviewCMR(Sender)
    else if Val = 1 then
      PrintDirectCMR(Sender);
    // if Avsluta then
    // Begin
    // if dmLoadEntrySSP.cds_LoadHeadSenderLoadStatus.AsInteger <> 2 then
    // acSaveAndOKExecute(Sender) ;
    // End ;
  End;
End;

procedure TfLoadEntrySSP.acPrintFSandCMRExecute(Sender: TObject);
begin
  PrintDirectFS(Sender);
  EnterLoadWeight(Sender);
  PrintDirectCMR(Sender);

  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.EnterLoadWeight(Sender: TObject);
var
  fEnterLoadWeight: TfEnterLoadWeight;
begin
  // Set KG
  fEnterLoadWeight := TfEnterLoadWeight.Create(nil);
  Try
    dmsSystem.GenerateLoadWeight(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
    dmsSystem.Open_cds_LoadWeigth(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
    fEnterLoadWeight.ShowModal;
  Finally
    dmsSystem.Close_cds_LoadWeigth;
    FreeAndNil(fEnterLoadWeight);
  End;
end;

procedure TfLoadEntrySSP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  {
    if LoadEnabled then
    Begin
    if (Key = #13) and (Length(mePackageNo.Text) > 0) then
    Begin
    Try
    //    ScanningPkgNo(Sender, mePackageNo.Text) ;
    GetpackageNoEntered(Sender, mePackageNo.Text) ;
    SaveLoad ;
    mePackageNo.Text:= '' ;
    Except
    mePackageNo.Text:= '' ;
    End ;
    End//if (Key = #13) and (Length(mePackageNo.Text) > 0) then
    else
    if (Key = #8) and (Length(mePackageNo.Text) > 0) then
    Begin
    Try
    if Length(TempEditString) > 1 then
    TempEditString  := Copy(TempEditString, 1, Length(TempEditString) - 1)
    else
    TempEditString  := '' ;
    mePackageNo.Text  := TempEditString ;
    Except
    //    mePackageNo.Text:= '' ;
    End ;
    End//if (Key = #13) and (Length(mePackageNo.Text) > 0) then

    else
    Begin
    //    if (acStart.Caption = 'Stoppa inläsning med skanner F10') then
    if key in ['0','1','2','3','4','5','6','7','8','9'] then
    mePackageNo.Text:= mePackageNo.Text + Key ;
    End ;
    //  End ;//if sender
    End ;



    TempEditString := mePackageNo.Text ;
  }
end;

procedure TfLoadEntrySSP.FormActivate(Sender: TObject);
begin
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

procedure TfLoadEntrySSP.grdLORowsDBBandedTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if mePackageNo.Enabled then
    mePackageNo.SetFocus;
end;

end.
