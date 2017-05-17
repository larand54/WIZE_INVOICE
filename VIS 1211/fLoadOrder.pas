unit fLoadOrder;

interface

uses
  // SyncObjs,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  fDBForm,
  ActnList,
  ImgList,
  ComCtrls,
  ExtCtrls,
  ToolWin,

  DBCtrls,
  StdCtrls,
  Menus,
  dxBar, dxBarExtItems,
  Buttons,

  SqlTimSt, DB, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxImageComboBox, cxTextEdit, dxPScxCommon,
  cxGridExportLink,
  cxExport, cxLabel, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxLookAndFeels, DBTables,
  cxCurrencyEdit, kbmMemTable, cxSplitter,
  cxShellBrowserDialog, ShlObj, cxShellCommon, cxShellListView,
  cxLookAndFeelPainters, cxButtons, cxPC, cxCalendar, cxDBEdit, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridCustomPopupMenu,
  cxGridPopupMenu,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, cxCheckComboBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter, cxCheckListBox,
  cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxBarBuiltInMenu,
  System.Actions, siComp, siLngLnk;

Const
  CM_MOVEIT = WM_USER + 1;

type
  TeFdate32 = (modD, creaD, accD);

type
  TfrmLoadOrder = class(TForm)

    pnlBottomGrid: TPanel;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbOpenLoad: TdxBarLargeButton;
    lbNewLoad: TdxBarLargeButton;
    bPrintHyvelOrder: TdxBarButton;
    bPrintLOAllVerk: TdxBarButton;
    bPrintLODittVerk: TdxBarButton;
    bAllaLasterPerLO: TdxBarButton;
    imglistActions: TImageList;
    ActionList_DBForm: TActionList;
    atRefresh: TAction;
    atAcceptLoadOrder: TAction;
    atRejectLoadOrder: TAction;
    atCompletedLoadOrder: TAction;
    atNewLoad: TAction;
    atSetToONHOLD: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    pmPrint: TdxBarPopupMenu;
    atProductionComplete: TAction;
    atPreliminary: TAction;
    images1616: TImageList;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    ImageList1: TImageList;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    acSetToNEW: TAction;
    lbNewLoadWithLO: TdxBarLargeButton;
    bbAvropVerk: TdxBarButton;
    ccShowAll: TdxBarControlContainerItem;
    bbTallyUSA: TdxBarButton;
    bbTallyVer2: TdxBarButton;
    bbTally_USA: TdxBarButton;
    bbAvrakningSpecVer2: TdxBarButton;
    bbChangeLayout: TdxBarButton;
    dxComponentPrinter1: TdxComponentPrinter;
    grdLODBTableView1: TcxGridDBTableView;
    grdLOLevel1: TcxGridLevel;
    grdLO: TcxGrid;
    acSamlingFS: TAction;
    dxBarButton1: TdxBarButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    acChangeLOLayout: TAction;
    acSaveChanges: TAction;
    acCancelChanges: TAction;
    grdLODBTableView1Supplier: TcxGridDBColumn;
    grdLODBTableView1ShippingPlanStatus: TcxGridDBColumn;
    grdLODBTableView1LONumber: TcxGridDBColumn;
    grdLODBTableView1PKGCode: TcxGridDBColumn;
    grdLODBTableView1Product: TcxGridDBColumn;
    grdLODBTableView1Length: TcxGridDBColumn;
    grdLODBTableView1FromWeek: TcxGridDBColumn;
    grdLODBTableView1ToWeek: TcxGridDBColumn;
    grdLODBTableView1Volume: TcxGridDBColumn;
    grdLODBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn;
    grdLODBTableView1ShipTo: TcxGridDBColumn;
    grdLODBTableView1OrderNo: TcxGridDBColumn;
    grdLODBTableView1UnitName: TcxGridDBColumn;
    grdLODBTableView1Destination: TcxGridDBColumn;
    grdLODBTableView1ClientName: TcxGridDBColumn;
    grdLODBTableView1SPCustomerNo: TcxGridDBColumn;
    grdLODBTableView1CustomerShowInGrid: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1CHCustomerNo: TcxGridDBColumn;
    grdLODBTableView1SUPP_NAME: TcxGridDBColumn;
    grdLODBTableView1OrderType: TcxGridDBColumn;
    grdLODBTableView1LOADING: TcxGridDBColumn;
    grdLODBTableView1LOCAL_CUST: TcxGridDBColumn;
    grdLODBTableView1Delivery_WeekNo: TcxGridDBColumn;
    grdLODBTableView1INITIALS: TcxGridDBColumn;
    grdLODBTableView1CSH_CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLODBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLODBTableView1READYDATE: TcxGridDBColumn;
    grdLODBTableView1ShippersShipDate: TcxGridDBColumn;
    grdLODBTableView1BarCode: TcxGridDBColumn;
    grdLODBTableView1REFERENS: TcxGridDBColumn;
    grdLODBTableView1SKAPAD: TcxGridDBColumn;
    grdLODBTableView1Reference: TcxGridDBColumn;
    grdLODBTableView1NT: TcxGridDBColumn;
    grdLODBTableView1NB: TcxGridDBColumn;
    grdLODBTableView1AT: TcxGridDBColumn;
    grdLODBTableView1AB: TcxGridDBColumn;
    grdLODBTableView1TT: TcxGridDBColumn;
    grdLODBTableView1TB: TcxGridDBColumn;
    grdLODBTableView1TS: TcxGridDBColumn;
    grdLODBTableView1UT: TcxGridDBColumn;
    grdLODBTableView1KV: TcxGridDBColumn;
    grdLODBTableView1PK: TcxGridDBColumn;
    pmLOGrid: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    acConfirmCancel: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    acShowLOGroupByBox: TAction;
    dxBarButton12: TdxBarButton;
    acChangeLoadLayout: TAction;
    pmLoadGrid: TdxBarPopupMenu;
    acNewLoadWithLO: TAction;
    acOpenLoad: TAction;
    acPrintLOWYSWYG: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    Panel2: TPanel;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    acExportToXLS: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    SaveDialog2: TSaveDialog;
    acSearchLoadNo: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    Ny1: TMenuItem;
    grdLODBTableView1INTLNGD: TcxGridDBColumn;
    grdLODBTableView1RADREFERENS: TcxGridDBColumn;
    bcLastLoadNoOpen: TdxBarCombo;
    bbGoToLoad: TdxBarButton;
    acAddToLastLoadList: TAction;
    dxBarButton16: TdxBarButton;
    acSpec_ALLA_Laster: TAction;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    grdLODBTableView1KONTRAKTSBESKRIVNING: TcxGridDBColumn;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    acClose: TAction;
    acBooking: TAction;
    pmShortcuts: TPopupMenu;
    Bokning1: TMenuItem;
    Stng1: TMenuItem;
    NyLastmotLOnr1: TMenuItem;
    ppnalast1: TMenuItem;
    WYSIWYG1: TMenuItem;
    Spara1: TMenuItem;
    Uppdatera1: TMenuItem;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbShowAll: TCheckBox;
    bbRefresh: TBitBtn;
    grdLODBTableView1MARKNAD: TcxGridDBColumn;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Timer1: TTimer;
    Timer2: TTimer;
    grdLODBTableView1Pris: TcxGridDBColumn;
    acShowPriceList: TAction;
    dxBarButton15: TdxBarButton;
    dxBarButton24: TdxBarButton;
    acPrintLOStatus: TAction;
    acPrintMarkedLOs: TAction;
    mtMarkedRows: TkbmMemTable;
    mtMarkedRowsKeyField: TIntegerField;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    grdLODBTableView1ShowInGrid: TcxGridDBColumn;
    grdLODBTableView1ProductGroupNo: TcxGridDBColumn;
    grdLODBTableView1PriceListName: TcxGridDBColumn;
    grdLODBTableView1PcsPerPkg: TcxGridDBColumn;
    grdLODBTableView1PackageWidth: TcxGridDBColumn;
    grdLODBTableView1PackageHeight: TcxGridDBColumn;
    grdLODBTableView1PkgCodePPNo: TcxGridDBColumn;
    acSkapaPaketKoder: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    grdLODBTableView1ProdInstruNo: TcxGridDBColumn;
    grdLODBTableView1ProductNo: TcxGridDBColumn;
    grdLODBTableView1ProductLengthNo: TcxGridDBColumn;
    grdLODBTableView1LanguageCode: TcxGridDBColumn;
    grdLODBTableView1ALMM: TcxGridDBColumn;
    grdLODBTableView1SequenceNo: TcxGridDBColumn;
    acLOLengths: TAction;
    dxBarButton27: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acLoadOrderListSetup: TAction;
    BitBtn3: TBitBtn;
    acNewLoadNoLo: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    cxSplitter1: TcxSplitter;
    grdLODBTableView1Lagergrupp: TcxGridDBColumn;
    acChangeLOonLoad: TAction;
    dxBarButton28: TdxBarButton;
    acAddLONrToSyncFile: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    acReadImportedPackages: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    acAddMarkedLOToSyncFile: TAction;
    acSelectFileToCreateLoad: TAction;
    mtImportedLoads: TkbmMemTable;
    mtImportedLoadsLoadNo: TIntegerField;
    mtImportedLoadsLONo: TIntegerField;
    pcLoadOrder: TcxPageControl;
    tsLoads: TcxTabSheet;
    PanelLoadDetail: TPanel;
    grdFS: TcxGrid;
    grdFSDBTableView1: TcxGridDBTableView;
    grdFSDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdFSDBTableView1LoadNo: TcxGridDBColumn;
    grdFSDBTableView1LoadID: TcxGridDBColumn;
    grdFSDBTableView1LoadedDate: TcxGridDBColumn;
    grdFSDBTableView1SenderLoadStatus: TcxGridDBColumn;
    grdFSDBTableView1Pcs: TcxGridDBColumn;
    grdFSDBTableView1ActualM3: TcxGridDBColumn;
    grdFSDBTableView1NominalM3: TcxGridDBColumn;
    grdFSDBTableView1LinealMeter: TcxGridDBColumn;
    grdFSDBTableView1MFBM: TcxGridDBColumn;
    grdFSDBTableView1FS: TcxGridDBColumn;
    grdFSDBTableView1VERK: TcxGridDBColumn;
    grdFSDBTableView1ANTPKT: TcxGridDBColumn;
    grdFSDBTableView1SupplierNo: TcxGridDBColumn;
    grdFSLevel1: TcxGridLevel;
    pnlLowerGridHdr: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    bbBookingForm: TBitBtn;
    bbSave: TBitBtn;
    acSaveBooking: TAction;
    deShippersShipDate: TcxDBDateEdit;
    ePreliminaryRequestedPeriod: TcxDBTextEdit;
    ePanic_Note: TcxDBTextEdit;
    eSupplierReference: TcxDBTextEdit;
    eShippingCompanyBookingID: TcxDBTextEdit;
    eCarrierName: TcxDBTextEdit;
    deETD: TcxDBDateEdit;
    eClientName: TcxDBTextEdit;
    acAngeSynkMappen: TAction;
    acPrintmeny: TAction;
    SkrivutF81: TMenuItem;
    SparaShiftF31: TMenuItem;
    SparaF31: TMenuItem;
    ngraF41: TMenuItem;
    ExptillXLSF111: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1clYellow: TcxStyle;
    acPrintFSMisMatch: TAction;
    acPrintFSMisMatch1: TMenuItem;
    dxBarButton29: TdxBarButton;
    teSearchLONo: TcxTextEdit;
    teSearchLoadNo: TcxTextEdit;
    acSearch: TAction;
    SkF71: TMenuItem;
    dxBarLargeButton9: TdxBarLargeButton;
    bTestLogg: TButton;
    bVaxlaBolag: TcxButton;
    acBytMellanBTBochBTH: TAction;
    grdFSDBTableView1AR: TcxGridDBColumn;
    mtImportedLoadsAntalPaket: TIntegerField;
    acImportPkgs: TAction;
    acOpenFS: TAction;
    acDeleteLoad_Imp: TAction;
    acSendLoadOrderNoToHH: TAction;
    acAddMarkedLONoToSendList: TAction;
    acAddLOnoToSendList: TAction;
    acPrintLOList: TAction;
    mtMarkedRowsSSPNo: TIntegerField;
    acRemoveLOHHRow: TAction;
    acRemoveALLLOHHRows: TAction;
    acDeleteALLLoad_Imp: TAction;
    Memo1: TMemo;
    acEmailaFS: TAction;
    dxBarButton30: TdxBarButton;
    lcVerk: TcxDBLookupComboBox;
    icStatus: TcxDBImageComboBox;
    icOrderTypeNo: TcxDBImageComboBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Button1: TButton;
    grdFSDBTableView1AR_AV: TcxGridDBColumn;
    grdFSDBTableView1LoadAR: TcxGridDBColumn;
    lcLaststlle: TcxDBLookupComboBox;
    lcDestination: TcxDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    acUtlastningsSpec: TAction;
    cxStyle1Red: TcxStyle;
    grdFSDBTableView1PackageEntryOption: TcxGridDBColumn;
    dxBarLargeButton10: TdxBarLargeButton;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    ccVarugrupp: TcxCheckComboBox;
    cxLabel29: TcxLabel;
    lbLO_To_Invoice: TListBox;
    eAT: TcxTextEdit;
    eAB: TcxTextEdit;
    eNT: TcxTextEdit;
    eNB: TcxTextEdit;
    cxLabel36: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    teFromWeek: TcxTextEdit;
    teToWeek: TcxTextEdit;
    ccbSU2: TcxCheckComboBox;
    ccbKV2: TcxCheckComboBox;
    ccLand: TcxCheckComboBox;
    cxLabel37: TcxLabel;
    ccKund: TcxCheckComboBox;
    cxLabel38: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    grdLODBTableView1Land: TcxGridDBColumn;
    teReferens: TcxTextEdit;
    Label15: TLabel;
    Timer3: TTimer;
    cxCheckListBox1: TcxCheckListBox;
    grdLODBTableView1Package_Size: TcxGridDBColumn;
    grdLODBTableView1PackageSizeName: TcxGridDBColumn;
    grdLODBTableView1PkgArticleNo: TcxGridDBColumn;
    grdLODBTableView1LOGroupNo: TcxGridDBColumn;
    grdLODBTableView1LOBuffertName: TcxGridDBColumn;
    grdLODBTableView1LoadedPkgs: TcxGridDBColumn;
    grdLODBTableView1LoadedNM3: TcxGridDBColumn;
    dxBarButton31: TdxBarButton;
    acSetKLU: TAction;
    cxButton1: TcxButton;
    acClearFilter: TAction;
    siLangLinked_frmLoadOrder: TsiLangLinked;
    dxBarLargeButton11: TdxBarLargeButton;
    acPkgsUsedByVidaPackaging: TAction;
    grdLODBTableView1ShippingPlanStatus_1: TcxGridDBColumn;
    grdLODBTableView1LOBNo: TcxGridDBColumn;
    acAllaLasterPerLO: TAction;

    procedure atAcceptLoadOrderExecute(Sender: TObject);
    procedure atRejectLoadOrderExecute(Sender: TObject);
    procedure atCompletedLoadOrderExecute(Sender: TObject);
    procedure atRefreshExecute(Sender: TObject);
    procedure atNewLoadExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure atSetToONHOLDExecute(Sender: TObject);
    procedure bPrintHyvelOrderClick(Sender: TObject);
    procedure bPrintLOAllVerkClick(Sender: TObject);
    procedure bPrintLODittVerkClick(Sender: TObject);
    procedure bAllaLasterPerLOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure atProductionCompleteExecute(Sender: TObject);
    procedure atPreliminaryExecute(Sender: TObject);
    procedure acSetToNEWExecute(Sender: TObject);
    procedure bbAvropVerkClick(Sender: TObject);
    procedure eRedoDagExit(Sender: TObject);
    procedure Visagrupperingsrutan1Click(Sender: TObject);
    procedure bbTallyVer2Click(Sender: TObject);
    procedure bbTally_USAClick(Sender: TObject);
    procedure bbAvrakningSpecVer2Click(Sender: TObject);
    procedure acSamlingFSExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure acSaveChangesExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acConfirmCancelExecute(Sender: TObject);
    procedure acShowLOGroupByBoxExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acNewLoadWithLOExecute(Sender: TObject);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure acPrintLOWYSWYGExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure acExportToXLSExecute(Sender: TObject);
    procedure acSearchLoadNoExecute(Sender: TObject);
    procedure acAddToLastLoadListExecute(Sender: TObject);
    procedure acSpec_ALLA_LasterExecute(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acBookingExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acNewLoadWithLOUpdate(Sender: TObject);
    procedure acOpenLoadUpdate(Sender: TObject);
    procedure acPrintLOWYSWYGUpdate(Sender: TObject);
    procedure acExportToXLSUpdate(Sender: TObject);
    procedure acSaveChangesUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acBookingUpdate(Sender: TObject);
    procedure acShowPriceListExecute(Sender: TObject);
    procedure acShowPriceListUpdate(Sender: TObject);
    procedure acPrintLOStatusExecute(Sender: TObject);
    procedure acPrintMarkedLOsExecute(Sender: TObject);
    procedure acLOLengthsExecute(Sender: TObject);
    procedure acLOLengthsUpdate(Sender: TObject);
    procedure acLoadOrderListSetupExecute(Sender: TObject);
    procedure grdLODBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure acPrintMarkedLOsUpdate(Sender: TObject);
    procedure acChangeLOonLoadExecute(Sender: TObject);
    procedure acChangeLOonLoadUpdate(Sender: TObject);
    procedure acAddLONrToSyncFileExecute(Sender: TObject);
    procedure acAddMarkedLOToSyncFileExecute(Sender: TObject);
    procedure cxShellListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure acSaveBookingExecute(Sender: TObject);
    procedure acSaveBookingUpdate(Sender: TObject);
    procedure acPrintmenyExecute(Sender: TObject);
    procedure grdFSDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acPrintFSMisMatchExecute(Sender: TObject);
    procedure teSearchLONoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure teSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSearchExecute(Sender: TObject);
    procedure bTestLoggClick(Sender: TObject);
    procedure acBytMellanBTBochBTHExecute(Sender: TObject);
    procedure acOpenFSExecute(Sender: TObject);
    procedure acPrintLOListExecute(Sender: TObject);
    procedure acAddLOnoToSendListExecute(Sender: TObject);
    procedure acAddLOnoToSendListUpdate(Sender: TObject);
    procedure acAddMarkedLONoToSendListUpdate(Sender: TObject);
    procedure acSendLoadOrderNoToHHUpdate(Sender: TObject);
    procedure acRemoveLOHHRowExecute(Sender: TObject);
    procedure acRemoveALLLOHHRowsExecute(Sender: TObject);
    procedure acRemoveLOHHRowUpdate(Sender: TObject);
    procedure acRemoveALLLOHHRowsUpdate(Sender: TObject);
    procedure acDeleteALLLoad_ImpExecute(Sender: TObject);
    procedure acDeleteLoad_ImpUpdate(Sender: TObject);
    procedure acDeleteALLLoad_ImpUpdate(Sender: TObject);
    procedure acOpenFSUpdate(Sender: TObject);
    procedure grdLoad_ImpDBTableView1CellDblClick
      (Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure acEmailaFSExecute(Sender: TObject);
    procedure grdLODBTableView1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure teReferensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer3Timer(Sender: TObject);
    procedure lcVerkPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acSetKLUExecute(Sender: TObject);
    procedure acClearFilterExecute(Sender: TObject);
    procedure acPkgsUsedByVidaPackagingExecute(Sender: TObject);
    procedure acAllaLasterPerLOExecute(Sender: TObject);

  private
    { Private declarations }
    LastUsedLOTemplate, FileName, ExcelDir, LODir: String;
    SearchOneLO: Boolean;
    SupplierShipPlanObjectNo: Integer;
    OrderTypeChanged: Boolean;
    procedure SetNEWAvropToActive(const LONo  : Integer;Sender: TObject) ;
    Function  GetSQLofComboFilter(const dType: Byte; const Kolumn: String;
      combo: TcxCheckComboBox): String;
    procedure SetCheckComboBoxes_Where_PktNrLevKod_Required
      (const VerkNo: Integer);
    // procedure OpenUtlastningsSpec(Sender: TObject);
    procedure OpenNormalLoad(Sender: TObject);
    procedure BuildVIDAWOODGetOne_LO_SQL(Sender: TObject);

    {
      procedure CreateLoadAndEntryTo_Load_Imp(const L_SupplierNo, LONo,
          TempLoadNo: Integer; const Fil, Mapp: String);
  }
    procedure AddMarkedLOToFile(Sender: TObject; const Mapp: String;
      const NewFile: Boolean);
    procedure GetLO(const LONo: Integer; Sender: TObject);
    procedure GetMarkedRows(Sender: TObject);
    procedure GetMarkedRows_II(Sender: TObject);
    procedure CloseDataSet;
    function DataSaved: Boolean;
    procedure ProtectTheData;
    procedure BuildLOSQL(Sender: TObject);
    procedure CheckIfChangesUnSaved(Sender: TObject);
    procedure RefreshLoadOrders(Sender: TObject);
    procedure GotoMyBookmark(Sender: TObject);
    procedure SetMyBookmark(Sender: TObject);
    procedure BuildGetOne_LO_SQL(Sender: TObject);
    procedure GetOneLO(Sender: TObject);
    procedure PrintSamlingsspecifikation(Sender: TObject;
      const SamLastNr: Integer);
    procedure PrintSamlingsspecifikationMedPktnr(Sender: TObject;
      const SamLastNr: Integer);
    procedure GenerateSamlingFS_2(Sender: TObject);
    procedure GenerateSamlingFS_MedPktNr(Sender: TObject);
    procedure SetLOStatus(Sender: TObject; Status: Integer);
    procedure SetShippingPlanStatus(const Status: Integer);
    // procedure AddLoadNoToList(const LoadNo, LONo : Integer);
    procedure Generate_samLastDataForMarkedLoads(Sender: TObject);
    procedure Generate_AllLoads_samLastData(Sender: TObject);
    procedure SPEC_ALLA_LASTER_VERK(Sender: TObject);
    procedure SPEC_ALLA_LASTER_VERK_MARKERADE(Sender: TObject);
    procedure SPEC_ALLA_LASTER_MARKERADE(Sender: TObject);
    procedure PrintLO(const ShippingPlanNo: Integer);
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
  protected

    procedure LoadUserPreferences;
    procedure SaveUserPreferences;

  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject; CompanyNo: Integer);
    procedure GoToLONo(Sender: TObject);
  end;

var

  frmLoadOrder: TfrmLoadOrder;
  OriginalPos: String;

implementation

{$R *.dfm}

uses
  // --LARS  DB,
  psAPI,
  FileCtrl,
  // hahFindFiles,
  recerror,
  dmcVidaOrder,
  VidaConst,
  VidaType,
  VidaUser,
  VidaUtils, UnitCRViewReport,
  UnitLoadEntrySSP, UnitBookingFormorg, dmsVidaContact, dmcVidaSystem,
  dmcLoadEntrySSP, dmc_ArrivingLoads, dmsDataConn, uEntryField,
  dmsVidaSystem, UnitCRPrintReport,
  //uLOLengths,
  uLoadOrderListSetup, uInScannedPkgs, dmBooking,
  uLoadOrderSearch, UnitCRExportOneReport, uSendMapiMail,
  uSelectFSFileName, dmc_UserProps, udmLanguage, uReportController, uReport,
  uPickVPPkgs, uFastReports, udmFR;

procedure TfrmLoadOrder.CMMoveIt(var Msg: TMessage);
var
  AGoForward: Boolean;
begin
  AGoForward := Boolean(Msg.WParam);
  grdLODBTableView1.Controller.EditingController.HideEdit(True);
  grdLODBTableView1.Controller.FocusNextCell(AGoForward)
end;

function TfrmLoadOrder.DataSaved: Boolean;
begin
  if (dmcOrder.cdsSawmillLoadOrders.Active) and
    (dmcOrder.cdsSawmillLoadOrders.RecordCount > 0) then
  Begin
    Result := True;
    if (dmcOrder.cdsBooking.Active = False) or
      (dmcOrder.cdsSawmillLoadOrders.Active = False) then
    Begin
      Result := False;
      Exit;
    End;
    if dmcOrder.cdsBooking.State in [dsEdit, dsInsert] then
      Result := False;
    if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
      Result := False;

    if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
      Result := False;
    if dmcOrder.cdsBooking.ChangeCount > 0 then
      Result := False;
  End
  else
    Result := True;
end;

Procedure TfrmLoadOrder.CreateCo(Sender: TObject; CompanyNo: Integer);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }

  dmcOrder.Shipping := 0;

  OrderTypeChanged := True;
  // cbSupplier.Properties.OnChange   := Nil ;
  // cbOrderType.Properties.OnChange  := NIL ;

  // cbOrderType.ItemIndex:= 0 ;
  Try
    { For x:= 0 to cbSupplier.Properties.Items.Count -1 do
      if ThisUser.CompanyNo = integer(cbSupplier.Properties.Items.Objects[x]) then
      Begin
      cbSupplier.ItemIndex:= x ;
      dmcOrder.SupplierNo:= integer(cbSupplier.Properties.Items.Objects[x]);
      End ; }

    if dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego then
      lcVerk.Properties.ReadOnly := True
    else
      lcVerk.Properties.ReadOnly := False;

    SupplierShipPlanObjectNo := 0;
    dmcOrder.cdsBooking.Active := True;

    if ThisUser.UserID = 8 then
    Begin
      bTestLogg.Visible := True;
      acSelectFileToCreateLoad.Enabled := True;
      acSelectFileToCreateLoad.Visible := True;
    End;

    dmsSystem.cds_Load_Imp.Active := False;
    dmsSystem.cds_Load_Imp.ParamByName('UserID').AsInteger := ThisUser.UserID;
    dmsSystem.cds_Load_Imp.Active := True;

    dmcOrder.cds_LOListHH.Active := False;
    dmcOrder.cds_LOListHH.ParamByName('UserID').AsInteger := ThisUser.UserID;
    dmcOrder.cds_LOListHH.Active := True;

  Finally
    // cbSupplier.Properties.OnChange  := cbSupplierPropertiesCloseUp ;
    // cbOrderType.Properties.OnChange := cbOrderTypePropertiesChange ;
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmLoadOrder.atRefreshExecute(Sender: TObject);
begin
  SetMyBookmark(Sender);
  CheckIfChangesUnSaved(Sender);
  // if cbShowAll.Checked then
  // Begin
  BuildLOSQL(Sender);
  RefreshLoadOrders(Sender);
  // End
  // else
  // if dmcOrder.cdsSawmillLoadOrders.Active then
  // RefreshLoadOrders(Sender);

  GotoMyBookmark(Sender);
  dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
  SearchOneLO := False;
end;

procedure TfrmLoadOrder.atAcceptLoadOrderExecute(Sender: TObject);
begin

  if (dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus_1.AsInteger = 5) then
   SetNEWAvropToActive(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger, Sender)
    else
     SetLOStatus(Sender, STATUS_ACCEPTED);

end;

procedure TfrmLoadOrder.SetNEWAvropToActive(const LONo  : Integer;Sender: TObject) ;
Begin
 with dmcOrder do
 Begin
  if UserIsAllowedToSetStatusToActive(ThisUser.UserID) then
  Begin
//        SetLOStatus(Sender, STATUS_ACCEPTED);

   //     UpdateLORowsWhenMovingToAccept(LONo) ;


    dmcOrder.SetAvropStatus(LONo, 5) ;
    atRefreshExecute(Sender) ;

  End
   else
    ShowMessage('Not allowed to set status to accept!') ;
 End;//with
End ;

procedure TfrmLoadOrder.atRejectLoadOrderExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_REJECTED);
end;

procedure TfrmLoadOrder.atCompletedLoadOrderExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_COMPLETE);
end;

procedure TfrmLoadOrder.CloseDataSet;
Begin
  With dmcOrder do
  Begin
    if cdsSawmillLoadOrders.Active then
      cdsSawmillLoadOrders.Close;
    if cdsLoadsForLO.Active then
      cdsLoadsForLO.Close;
    if cdsLoadsForLO_forVW.Active then
      cdsLoadsForLO_forVW.Close;
    if cdsBooking.Active then
      cdsBooking.Active := False;
  End; // with
End;

procedure TfrmLoadOrder.LoadUserPreferences;
begin
  // Hämtas centralt
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  LODir := dmsSystem.Get_Dir('LODir');
  LastUsedLOTemplate := dmsSystem.Get_Dir('LastUsedLOTemplate');
  // dmsSystem.GetLastUsedLoadNo(cbLastOpenLoads.Properties.Items) ;

  // if cbLastOpenLoads.Properties.Items.Count > 0 then
  // cbLastOpenLoads.ItemIndex:= 0 ;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name,
    grdLODBTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFS.Name,
    grdFSDBTableView1) = False then;

  // Load position of horizontal split between the two grids.
  pnlBottomGrid.Height := ThisUser.fLoadOrderHSplit;

  grdLODBTableView1Supplier.Visible := False;
  grdLODBTableView1OrderNo.Visible := False;
  grdLODBTableView1CustomerShowInGrid.Visible := False;
  grdLODBTableView1Delivery_WeekNo.Visible := False;
  grdLODBTableView1CSH_CustomerNo.Visible := False;
  grdLODBTableView1ShipToInvPointNo.Visible := False;
  grdLODBTableView1LoadingLocationNo.Visible := False;
  grdLODBTableView1CHCustomerNo.Visible := False;
  grdLODBTableView1SPCustomerNo.Visible := False;
  grdLODBTableView1OrderType.Visible := False;

  if (ThisUser.CompanyNo = 172) or (ThisUser.CompanyNo = 2878) then
    acBytMellanBTBochBTH.Visible := True
  else
    acBytMellanBTBochBTH.Visible := False;
end;

procedure TfrmLoadOrder.SaveUserPreferences;
begin
  dmsSystem.SaveDir(LastUsedLOTemplate, 'LastUsedLOTemplate');
  // dmsSystem.SaveLastUsedLoadNo(cbLastOpenLoads.Properties.Items) ;

  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name,
    grdLODBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdFS.Name,
    grdFSDBTableView1);
end;

procedure TfrmLoadOrder.ProtectTheData;
begin
  if ThisUser.CanModify[dcEditLoadOrder] = False then
  begin
    atAcceptLoadOrder.Enabled := False;
    atAcceptLoadOrder.Enabled := False;
    atRejectLoadOrder.Enabled := False;
    atCompletedLoadOrder.Enabled := False;
    atSetToONHOLD.Enabled := False;
    atSetToONHOLD.Enabled := False;
    atPreliminary.Enabled := False;
    acSetToNEW.Enabled := False;
    acConfirmCancel.Enabled := False;
    atProductionComplete.Enabled := False;
  End;
end;

procedure TfrmLoadOrder.atNewLoadExecute(Sender: TObject);
begin
  with TfLoadEntrySSP.CreateWithNewLoad(NIL, 920, 0, 0, 0, 0, -1 { LoadNo } ,
    -1 { OrderType (is unknown in this case) } , -1 { CSH_CustomerNo } ) do
    try
      ShowModal;
      Application.ProcessMessages;

      // if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
      // AddLoadNoToList(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger,
      // dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger);

      dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
    finally
      Free
    end;
end;

procedure TfrmLoadOrder.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // If any threads are still running, make sure they don't try and call us when they
  // terminate - we won't be here any more.
  // It is OK to do this because the only reason we were interested in when they
  // finished was so this form could update its display, and as we are closing the
  // form we won't need to do that.

  // With dmcOrder do
  // Begin
  // if mtProps.State = dsBrowse then
  // mtProps.Edit ;
  // mtPropsNewItemRow.AsInteger := PanelLoadDetail.Width ;
  // mtProps.Post ;
  // End ;

  CheckIfChangesUnSaved(Sender);
  SaveUserPreferences;
  dmcOrder.SaveUserProps(Self.Name);
  CloseDataSet;
  // FreeAndNil(dmcOrder) ;//.free ;
  CanClose := True;
end;

procedure TfrmLoadOrder.FormCreate(Sender: TObject);
begin
  dmcOrder := TdmcOrder.Create(Nil);

  if (not Assigned(dmArrivingLoads)) then
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmLoadOrder', 'dmArrivingLoads');

  if (not Assigned(dm_Booking)) then
    dm_Booking := Tdm_Booking.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmLoadOrder1', 'dm_Booking');

  dmcOrder.LoadUserProps(Self.Name);
  dmcOrder.RefreshOrter;
  // dmcOrder.sq_City.Refresh ;
  // bcStatus.ItemIndex:= 1 ;
  Caption := 'Testing';
  SearchOneLO := False;

  LoadUserPreferences;

  // Populate the combo box with names of suppliers from the database
  // dmsContact.Load_Int_and_Lego(cbSupplier.Properties.Items) ;
  // if cbSupplier.Properties.Items.Count > 0 then
  // cbSupplier.ItemIndex:= 0 ;

  // Set the supplier to be the company with which this user is associated
  ProtectTheData;
end;

procedure TfrmLoadOrder.atSetToONHOLDExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_ONHOLD);
end;

procedure TfrmLoadOrder.bPrintHyvelOrderClick(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
      .AsInteger;
    A[1] := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
      .AsInteger;
    FormCRViewReport.CreateCo('HYVEL_ORDER.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;

end;

procedure TfrmLoadOrder.bPrintLOAllVerkClick(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  RepNo: Integer;
  lang: integer;
  Params: TCMParams;
  FR: TFastReports;
  LO, ReportType, OrderType, ObjectType: integer;
begin
  LO := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
  OrderType := dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger;
  ObjectType := dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger;
  lang := ThisUser.LanguageID;
  if LO < 1 then
    Exit;

  if uReportController.useFR then begin
    FR := TFastReports.Create;
    try
      if (OrderType = 1) and (ObjectType = 2) then ReportType := cLastOrderInkop
      else if ObjectType = 2 then ReportType := cLastOrder
      else ReportType := cLastorder_verk;
      FR.LO(LO,-1,ReportType,lang,'','','',false);
    finally
      FR.Free;
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
        .AsInteger;
      A[1] := -1;

      if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
        (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
        FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_ver2.RPT', A)
      else Begin
        if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
          FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT', A)
        else
          FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT', A);
      End;

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmLoadOrder.bPrintLODittVerkClick(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  FR: TFastReports;
  LO, supplier, lang, ReportType, OrderType, ObjectType: integer;
begin
  LO := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
  OrderType := dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger;
  ObjectType := dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger;
  lang := ThisUser.LanguageID;
  Supplier := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger;
  if LO < 1 then
    Exit;

  if uReportController.useFR then begin
    FR := TFastReports.Create;
    try
      if (OrderType = 1) and (ObjectType = 2) then ReportType := cLastOrderInkop
      else if ObjectType = 2 then ReportType := cLastOrder
      else ReportType := cLastorder_verk;
      FR.LO(LO,Supplier,ReportType,lang,'','','',false);
    finally
      FR.Free;
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try

      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
        .AsInteger;
      A[1] := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
        .AsInteger;

      if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
        (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
        FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_ver2.RPT', A)
      else Begin
        if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
          FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT', A)
        else
          FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT', A);
      End;

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmLoadOrder.bAllaLasterPerLOClick(Sender: TObject);
begin
  // Generate_AllLoads_samLastData(Sender);
  // gammal rapport
  Generate_AllLoads_samLastData(Sender);
  SPEC_ALLA_LASTER_VERK(Sender);
end;

procedure TfrmLoadOrder.Generate_AllLoads_samLastData(Sender: TObject);
Var
  i, RecIDX: Integer;
  RecID: variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  with dmcOrder, dmArrivingLoads do
  Begin
    // Välj alla lastrader
    grdFSDBTableView1.Controller.SelectAll;
    Try
      sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
      sq_deleteSamLaster.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

    grdFSDBTableView1.BeginUpdate;
    grdFSDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdFSDBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdFSDBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('LoadNo', RecID, []);

        Try
          sq_samLast.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
          sq_samLast.ParamByName('LoadNo').AsInteger :=
            ADATASET.FieldByName('LoadNo').AsInteger;
          // sq_samLast.ParamByName('Reference').AsString  := '' ;
          sq_samLast.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;

      // if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
      // ADataSet.Bookmark:= BkmSafe ;

      // PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;

    Finally
      grdFSDBTableView1.DataController.EndLocate;
      grdFSDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadOrder.RefreshLoadOrders(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  LockWindowUpdate(grdFS.Handle);
  try
    if dmcOrder.cds_PropsVerkNo.AsInteger < 1 then
      Exit;

    try
      dmcOrder.SupplierNo := dmcOrder.cds_PropsVerkNo.AsInteger;
      dmcOrder.RefrehLOs(dmcOrder.SupplierNo);

    except
      on EStringListError do
      begin
        // Nothing
      end;
    end;

  finally
    LockWindowUpdate(0);
    Screen.Cursor := Save_Cursor;
  end;

  dmcOrder.cdsBooking.Active := False;
  dmcOrder.cdsBooking.Active := True;
end;

procedure TfrmLoadOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLoadOrder.atProductionCompleteExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_PRODUCTION_COMPLETE);
end;

procedure TfrmLoadOrder.atPreliminaryExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_PRELIMINARY);
end;

Function TfrmLoadOrder.GetSQLofComboFilter(const dType: Byte;
  const Kolumn: String; combo: TcxCheckComboBox): String;
Var
  APCheckStates: ^TcxCheckStates;
  AddORToSQL: Boolean;
  x: Integer;
Begin
  // För att inte ett VP företag skall se alla lager VP har skall alla synliga items checkas om man tittar på alla
  // I annat fall får man också med lager som är på andra orter.
  // if (ThisUser.CompanyNo = cVidaPackaging) or
  // (ThisUser.CompanyNo = cOsterlovsta) then
  // CheckAllItems ;

  AddORToSQL := False;
  Result := '';
  New(APCheckStates);
  try
    with combo do
    begin
      CalculateCheckStates(Value, Properties.Items, Properties.EditValueFormat,
        APCheckStates^);
      if Properties.Items.Count > 0 then
      Begin
        for x := 0 to Properties.Items.Count - 1 do
        Begin
          if APCheckStates^[x] = cbsChecked then
          Begin
            if AddORToSQL then
              Result := Result + ' OR '
            else
              Result := ' AND (';
            if dType = 0 then
              Result := Result + ' ' + Kolumn + ' = ' +
                QuotedStr(Properties.Items[x].ShortDescription)
            else
              Result := Result + ' ' + Kolumn + ' = ' +
                ReplaceCommas(Properties.Items[x].ShortDescription);

            AddORToSQL := True;
          End; // if..
        End; // for..
        if Length(Result) > 0 then
          Result := Result + ' ) ';
      End;
    end; // With
  finally
    Dispose(APCheckStates)
  end;
End;

procedure TfrmLoadOrder.BuildLOSQL(Sender: TObject);
// Local proc
  Procedure AddFilter;
  Begin
    With dmcOrder do
    Begin
      if cds_Props.State = dsBrowse then
        cds_Props.Edit;

      if Length(lcLaststlle.Text) = 0 then
        cds_PropsLoadingLocationNo.Clear;

      if Length(lcDestination.Text) = 0 then
        cds_PropsLengthGroupNo.Clear;

      if cds_Props.State in [dsEdit, dsInsert] then
        cds_Props.Post;

      if (cds_PropsLoadingLocationNo.AsInteger > 0) And
        (not cds_PropsLoadingLocationNo.IsNull) then
        cdsSawmillLoadOrders.SQL.Add('AND SP.LoadingLocationNo = ' +
          cds_PropsLoadingLocationNo.AsString);

      if (cds_PropsLengthGroupNo.AsInteger > 0) And
        (not cds_PropsLengthGroupNo.IsNull) then
        cdsSawmillLoadOrders.SQL.Add('AND SP.ShipToInvPointNo = ' +
          cds_PropsLengthGroupNo.AsString);

      if Length(teFromWeek.Text) > 0 then
        cdsSawmillLoadOrders.SQL.Add('AND SP.StartETDYearWeek >= ' +
          teFromWeek.Text);
      if Length(teToWeek.Text) > 0 then
        cdsSawmillLoadOrders.SQL.Add('AND SP.EndETDYearWeek <= ' +
          teToWeek.Text);

      cdsSawmillLoadOrders.SQL.Add(GetSQLofComboFilter(0, 'pli.GradeCode',
        ccbKV2));
      cdsSawmillLoadOrders.SQL.Add(GetSQLofComboFilter(0, 'pli.SurfacingCode',
        ccbSU2));
      cdsSawmillLoadOrders.SQL.Add(GetSQLofComboFilter(0, 'pli.VaruGruppNo',
        ccVarugrupp));
      // cdsSawmillLoadOrders.SQL.Add(GetSQLofComboFilter(0, 'imp.ImpCode', ccbIMP)) ;
      cdsSawmillLoadOrders.SQL.Add(GetSQLofComboFilter(0,
        'od.IntraStatCountryNo', ccLand));
      cdsSawmillLoadOrders.SQL.Add(GetSQLofComboFilter(0, 'CH.CustomerNo',
        ccKund));


      // AND SP.LoadingLocationNo = 70

      if Length(eAT.Text) > 0 then
        cdsSawmillLoadOrders.SQL.Add('AND pli.AT = ' + eAT.Text);
      if Length(eAB.Text) > 0 then
        cdsSawmillLoadOrders.SQL.Add('AND pli.AB = ' + eAB.Text);
      if Length(eNT.Text) > 0 then
        cdsSawmillLoadOrders.SQL.Add('AND pli.NT = ' + eNT.Text);
      if Length(eNB.Text) > 0 then
        cdsSawmillLoadOrders.SQL.Add('AND pli.NB = ' + eNB.Text);

      Case cds_PropsStatus.AsInteger of
        0:
          Begin // ALLA
            // sp_SawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus <> 4 ' ) ;
          End;
        1:
          Begin // all except complete, ALLA UTOM KLAR OCH ANNULERING BEKRÄFTAD
            cdsSawmillLoadOrders.SQL.Add
              ('  AND SP.ShippingPlanStatus <> 0 AND SP.ShippingPlanStatus <> 4 AND SP.ShippingPlanStatus <> 8');
          End;

        2:
          Begin // complete KLAR OCH ANNULERING BEKRÄFTAD
            cdsSawmillLoadOrders.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 0 OR SP.ShippingPlanStatus = 4 OR SP.ShippingPlanStatus = 8)');
          End;

        3:
          Begin // NEW AND ANNULERAD
            cdsSawmillLoadOrders.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 0 OR SP.ShippingPlanStatus = 1 OR SP.ShippingPlanStatus = 10 OR SP.ShippingPlanStatus = 7) ');
          End;
        4:
          Begin // reject
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 2 ');
          End;
        5:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 3 ');
          End;
        6:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 5 ');
          End;
        7:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 6 ');
          End;

        8:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 0 ');
          End;
        9:
          Begin
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 7 ');
          End;
        10:
          Begin // ANNULERING BEKRÄFTAD
            cdsSawmillLoadOrders.SQL.Add('  AND SP.ShippingPlanStatus = 8 ');
          End;

        11:
          Begin // Prel, Ny och Accept
            cdsSawmillLoadOrders.SQL.Add
              ('  AND (SP.ShippingPlanStatus = 0 OR SP.ShippingPlanStatus = 1 OR SP.ShippingPlanStatus = 10 OR SP.ShippingPlanStatus = 3) ');
          End;

      End; // case
    End;
  End;

begin
  CheckIfChangesUnSaved(Sender);

  // icStatusChange(Sender) ;
  With dmcOrder do
  Begin
    cdsSawmillLoadOrders.SQL.Clear;

    cdsSawmillLoadOrders.SQL.Add
      ('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
    cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod,');
    cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ShippingPlanStatus,                           -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ShippingPlanNo           AS LONumber,         -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.PackageCode              AS PackageCode,          -- Char 10');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ProductDescription       AS Product,          -- Char 100');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.LengthDescription        AS Length,           -- Char 100');
    cdsSawmillLoadOrders.SQL.Add('SP.StartETDYearWeek,');
    cdsSawmillLoadOrders.SQL.Add('SP.EndETDYearWeek,');
    cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.SupplierShipPlanObjectNo,                     -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ShowInGrid,                                   -- SmallInt');

    cdsSawmillLoadOrders.SQL.Add
      ('Od.OrderNoText              AS OrderNoText,          -- VarChar 20');
    cdsSawmillLoadOrders.SQL.Add
      ('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
    cdsSawmillLoadOrders.SQL.Add
      ('Cy.CityName                 AS Destination,      -- VarChar 50');
    cdsSawmillLoadOrders.SQL.Add
      ('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
    cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

    cdsSawmillLoadOrders.SQL.Add
      ('CSD.Reference               AS Reference,       -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.SupplierNo               AS Supplier,        -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('CH.CustomerNo               AS CHCustomerNo,    -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.CustomerPrice,                               -- Float');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.CustomerShowInGrid,                           -- SmallInt');
    cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
    cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ObjectType,                                  -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
    cdsSawmillLoadOrders.SQL.Add
      ('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
    cdsSawmillLoadOrders.SQL.Add
      ('Loading.CityName                 AS LOADING,');
    cdsSawmillLoadOrders.SQL.Add
      ('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
    cdsSawmillLoadOrders.SQL.Add
      ('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
    cdsSawmillLoadOrders.SQL.Add
      ('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
    cdsSawmillLoadOrders.SQL.Add
      ('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
    Begin
      cdsSawmillLoadOrders.SQL.Add
        ('Case WHEN SP.Price > 0 then Cast((SP.Price');
      cdsSawmillLoadOrders.SQL.Add
        ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') +
        ' Else');
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
      cdsSawmillLoadOrders.SQL.Add
        ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr')
        + ' else');
      cdsSawmillLoadOrders.SQL.Add
        ('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
      cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');
    End
    else // Inköp
    Begin
      cdsSawmillLoadOrders.SQL.Add
        ('Case WHEN SP.Price > 0 then Cast((SP.Price');
      cdsSawmillLoadOrders.SQL.Add
        ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') +
        ' Else');
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
      cdsSawmillLoadOrders.SQL.Add
        ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr')
        + ' else');
      cdsSawmillLoadOrders.SQL.Add
        ('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
      cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');


      // cdsSawmillLoadOrders.SQL.Add('Case WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30))+'+QuotedStr('kr')+' Else') ;
      // cdsSawmillLoadOrders.SQL.Add('Case') ;
      // cdsSawmillLoadOrders.SQL.Add('WHEN OL.InternalPrice > 0 then Cast(OL.InternalPrice AS Varchar(30)) +'+QuotedStr('kr'));
      // cdsSawmillLoadOrders.SQL.Add('END END AS Pris,') ;

    End;
    cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthOL.PriceListName, ');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
    cdsSawmillLoadOrders.SQL.Add
      ('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd,');
    cdsSawmillLoadOrders.SQL.Add
      ('StatCtry.CountryName AS Land, SP.Package_Size, ps.PackageSizeName,');

    cdsSawmillLoadOrders.SQL.Add
      ('SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

    cdsSawmillLoadOrders.SQL.Add
      ('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
    cdsSawmillLoadOrders.SQL.Add
      ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
    cdsSawmillLoadOrders.SQL.Add
      ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
    cdsSawmillLoadOrders.SQL.Add
      ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

    cdsSawmillLoadOrders.SQL.Add
      ('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
    cdsSawmillLoadOrders.SQL.Add
      ('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
    cdsSawmillLoadOrders.SQL.Add
      ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
    cdsSawmillLoadOrders.SQL.Add
      ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
    cdsSawmillLoadOrders.SQL.Add
      ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

    cdsSawmillLoadOrders.SQL.Add('ch.ShippingPlanStatus, ch.LOBNo') ;

    cdsSawmillLoadOrders.SQL.Add('FROM dbo.SupplierShippingPlan       SP');
    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client_LoadingLocation       CLL   ON   CLL.PhyInvPointNameNo = SP.LoadingLocationNo')
    else
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client_LoadingLocation       CLL   ON  CLL.PhyInvPointNameNo = SP.ShipToInvPointNo');

    cdsSawmillLoadOrders.SQL.Add
      ('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size');
    cdsSawmillLoadOrders.SQL.Add('and ps.LanguageCode = 1');

    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

    cdsSawmillLoadOrders.SQL.Add
      ('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');
    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
    cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo');
    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');

    cdsSawmillLoadOrders.SQL.Add
      ('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
    cdsSawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');
    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

    cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
    cdsSawmillLoadOrders.SQL.Add
      ('Left Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
    cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Country StatCtry	ON StatCtry.CountryNo  = od.IntraStatCountryNo');

    cdsSawmillLoadOrders.SQL.Add('WHERE  CLL.ClientNo = ' +
      dmcOrder.cds_PropsVerkNo.AsString);
    cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');

    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 0')
    else
      cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 1');

    cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
    AddFilter;

    cdsSawmillLoadOrders.SQL.Add('UNION');

    cdsSawmillLoadOrders.SQL.Add('SELECT distinct ' + QuotedStr('NA') +
      ' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
    cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod,');

    cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ShippingPlanStatus,                           -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ShippingPlanNo           AS LONumber,         -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.PackageCode              AS PackageCode,      -- Char 10');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ProductDescription       AS Product,          -- Char 100');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.LengthDescription        AS Length,           -- Char 100');
    cdsSawmillLoadOrders.SQL.Add('SP.StartETDYearWeek,');
    cdsSawmillLoadOrders.SQL.Add('SP.EndETDYearWeek,');
    cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.SupplierShipPlanObjectNo,                     -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ShowInGrid,                                   -- SmallInt');

    cdsSawmillLoadOrders.SQL.Add
      ('''''           AS OrderNo,          -- VarChar 20');
    cdsSawmillLoadOrders.SQL.Add
      ('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
    cdsSawmillLoadOrders.SQL.Add
      ('''''              AS Destination,      -- VarChar 50');

    cdsSawmillLoadOrders.SQL.Add('CL.ClientName               AS ClientName,');
    cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');
    cdsSawmillLoadOrders.SQL.Add
      ('''''              AS Reference,       -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.SupplierNo               AS Supplier,        -- Integer');

    cdsSawmillLoadOrders.SQL.Add
      ('CH.CustomerNo               AS CHCustomerNo,');

    cdsSawmillLoadOrders.SQL.Add
      ('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.CustomerPrice,                               -- Float');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.CustomerShowInGrid,                           -- SmallInt');

    cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
    cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
    // cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.ObjectType,                                  -- Integer');

    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
    else
      cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

    cdsSawmillLoadOrders.SQL.Add
      ('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
    cdsSawmillLoadOrders.SQL.Add
      ('Loading.CityName                 AS LOADING,');
    cdsSawmillLoadOrders.SQL.Add
      ('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
    cdsSawmillLoadOrders.SQL.Add
      ('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
    cdsSawmillLoadOrders.SQL.Add
      ('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
    cdsSawmillLoadOrders.SQL.Add
      ('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

    // intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
    // Prislistan används inte på inköp!
    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
    Begin
      cdsSawmillLoadOrders.SQL.Add
        ('Case WHEN SP.Price > 0 then Cast((SP.Price');
      cdsSawmillLoadOrders.SQL.Add
        ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') +
        ' Else');
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
      cdsSawmillLoadOrders.SQL.Add
        ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr')
        + ' else');
      cdsSawmillLoadOrders.SQL.Add
        ('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
      cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');
    End
    else // Inköp
    Begin
      cdsSawmillLoadOrders.SQL.Add('Case');
      cdsSawmillLoadOrders.SQL.Add
        ('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))');
      cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr'));
      cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
    End;

    cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,');
    cdsSawmillLoadOrders.SQL.Add
      ('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
    cdsSawmillLoadOrders.SQL.Add
      ('sp.ProductNo, sp.ProductLengthNo, 1 AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd,');
    cdsSawmillLoadOrders.SQL.Add
      ('StatCtry.CountryName AS Land, SP.Package_Size, ps.PackageSizeName,');

    cdsSawmillLoadOrders.SQL.Add
      ('SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

    cdsSawmillLoadOrders.SQL.Add
      ('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
    cdsSawmillLoadOrders.SQL.Add
      ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
    cdsSawmillLoadOrders.SQL.Add
      ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
    cdsSawmillLoadOrders.SQL.Add
      ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

    cdsSawmillLoadOrders.SQL.Add
      ('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
    cdsSawmillLoadOrders.SQL.Add
      ('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
    cdsSawmillLoadOrders.SQL.Add
      ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
    cdsSawmillLoadOrders.SQL.Add
      ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
    cdsSawmillLoadOrders.SQL.Add
      ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

    cdsSawmillLoadOrders.SQL.Add('ch.ShippingPlanStatus, ch.LOBNo') ;

    cdsSawmillLoadOrders.SQL.Add('FROM   dbo.SupplierShippingPlan     SP');
    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');
    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client_LoadingLocation       CLL   ON   CLL.PhyInvPointNameNo = SP.LoadingLocationNo')
    else
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client_LoadingLocation       CLL   ON   CLL.PhyInvPointNameNo = SP.ShipToInvPointNo');

    cdsSawmillLoadOrders.SQL.Add
      ('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size');
    cdsSawmillLoadOrders.SQL.Add('and ps.LanguageCode = 1');

    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
    cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.Orders Od ON Od.OrderNo = SP.OrderNo');

    cdsSawmillLoadOrders.SQL.Add
      ('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

    // cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH');
    cdsSawmillLoadOrders.SQL.Add
      ('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
    cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No');
    cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3');

    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
    cdsSawmillLoadOrders.SQL.Add
      ('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

    cdsSawmillLoadOrders.SQL.Add
      ('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');

    cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
    cdsSawmillLoadOrders.SQL.Add
      ('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
    cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

    cdsSawmillLoadOrders.SQL.Add('Left join dbo.ClientPreference cp');
    cdsSawmillLoadOrders.SQL.Add
      ('left join dbo.Address FDr on FDr.AddressNo = cp.DefaultBillingAddressNo');
    cdsSawmillLoadOrders.SQL.Add
      ('INNER JOIN dbo.Country StatCtry	ON StatCtry.CountryNo  = FDr.CountryNo');
    cdsSawmillLoadOrders.SQL.Add
      ('on cp.ClientNo = cll.ClientNo and cp.Roletype = 9');

    cdsSawmillLoadOrders.SQL.Add('WHERE  CLL.ClientNo          =  ' +
      dmcOrder.cds_PropsVerkNo.AsString);
    // cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
    cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType in (0,1)');
    cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanNo > 1');
    AddFilter;
    // cdsSawmillLoadOrders.Prepared:= True ;

    // if ThisUser.UserID = 8 then cdsSawmillLoadOrders.SQL.SaveToFile('cdsSawmillLoadOrders.txt');
    OrderTypeChanged := False;
  End;
end;

procedure TfrmLoadOrder.CheckIfChangesUnSaved(Sender: TObject);
Begin
  if dmcOrder.cdsBooking.State = dsEdit then
    dmcOrder.cdsBooking.Post;
  if dmcOrder.cdsSawmillLoadOrders.State = dsEdit then
    dmcOrder.cdsSawmillLoadOrders.Post;

  if (dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0) OR
    (dmcOrder.cdsBooking.ChangeCount > 0) then
    if MessageDlg('Do you want to save the changes?', mtConfirmation, [mbYes, mbNo], 0)
      = mrYes then
      acSaveChangesExecute(Sender)
    else
      acCancelChangesExecute(Sender);
End;

procedure TfrmLoadOrder.SetMyBookmark(Sender: TObject);
begin
  SupplierShipPlanObjectNo :=
    dmcOrder.cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger;
end;

procedure TfrmLoadOrder.GotoMyBookmark(Sender: TObject);
begin
  if SupplierShipPlanObjectNo > 0 then
  Begin

    dmcOrder.cdsSawmillLoadOrders.IndexName := 'indexSupplierShipPlanObjectNo';
    try

      if dmcOrder.cdsSawmillLoadOrders.FindKey([SupplierShipPlanObjectNo]) then
      Begin
      End;

    finally
    end;
  End; // if
end;

procedure TfrmLoadOrder.acSetKLUExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_KLU);
end;

procedure TfrmLoadOrder.acSetToNEWExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_NEW);
end;

procedure TfrmLoadOrder.bbAvropVerkClick(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try

    SetLength(A, 1);
    A[0] := dmcOrder.SupplierNo;
    if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      FormCRViewReport.CreateCo('SOKAVROP_VERK_DIM.RPT', A)
    else
      FormCRViewReport.CreateCo('SOKAVROP_VERK_DIM_PO.RPT', A);

    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadOrder.GetOneLO(Sender: TObject);
Var
  ShippingPlanNo: Integer;
begin
  if (StrToIntDef(Trim(teSearchLONo.Text), 0) > 0) or
    (Length(Trim(teReferens.Text)) > 0) then
  Begin
    if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
      BuildVIDAWOODGetOne_LO_SQL(Sender)
    else
      BuildGetOne_LO_SQL(Sender);
  End
  else
    Exit;

  dmcOrder.cdsSawmillLoadOrders.Active := False;
  CheckIfChangesUnSaved(Sender);
  RefreshLoadOrders(Sender);
  if (dmcOrder.cdsSawmillLoadOrders.Active) and
    (dmcOrder.cdsSawmillLoadOrders.RecordCount = 0) then
  Begin
    ShippingPlanNo := dmcOrder.Does_SearchedLONo_Have_ALO_Connected
      (dmcOrder.cds_PropsVerkNo.AsInteger,
      StrToIntDef(Trim(teSearchLONo.Text), 0));
    if ShippingPlanNo > 1 then
      if MessageDlg('Did not find the LO number ' + Trim(teSearchLONo.Text) +
        ', altough there is a ADD LO number ' + IntToStr(ShippingPlanNo) +
        ' assigned to it, do you want to get it?', mtConfirmation, [mbYes, mbNo],
        0) = mrYes then
      Begin
        teSearchLONo.Text := IntToStr(ShippingPlanNo);
        dmcOrder.cdsSawmillLoadOrders.Active := False;

        if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
          BuildVIDAWOODGetOne_LO_SQL(Sender)
        else
          BuildGetOne_LO_SQL(Sender);

        RefreshLoadOrders(Sender);
      End;
    dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);
  End;

  SearchOneLO := True;
  teSearchLONo.Text := '';
end;

procedure TfrmLoadOrder.BuildGetOne_LO_SQL(Sender: TObject);
Var
  ClientNo, OrderType: Integer;
  LEGO: Boolean;
begin
  LEGO := False;
  // cbOrderType.Properties.OnChange:= nil ;
  Try
    CheckIfChangesUnSaved(Sender);
    // icStatusChange(Sender) ;
    With dmcOrder do
    Begin
      OrderType := OrderTypeOrderType(dmcOrder.cds_PropsVerkNo.AsInteger,
        StrToIntDef(teSearchLONo.Text, 0));
      if OrderType > -1 then
      Begin
        dmcOrder.cds_Props.Edit;
        dmcOrder.cds_PropsOrderTypeNo.AsInteger := OrderType;
        dmcOrder.cds_Props.Post;
      End;

      if (dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego) and
        (dmsContact.ClientInterVerk(ThisUser.CompanyNo) = False) then
      Begin
        if LO_LoadingLocationIsLegoLoadingLocation
          (StrToIntDef(teSearchLONo.Text, 0), ThisUser.CompanyNo) then
        Begin
          dmcOrder.cds_Props.Edit;
          dmcOrder.cds_PropsOrderTypeNo.AsInteger := 0;
          dmcOrder.cds_Props.Post;
        End
        else
        Begin
          dmcOrder.cds_Props.Edit;
          dmcOrder.cds_PropsOrderTypeNo.AsInteger := 1;
          dmcOrder.cds_Props.Post;
        End;
        ClientNo  := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
        LEGO      := True;
      End
      else if (dmsContact.ClientInterVerk(ThisUser.CompanyNo)) or
        (dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion)) then
        ClientNo := dmcOrder.cds_PropsVerkNo.AsInteger;

      cdsSawmillLoadOrders.SQL.Clear;

      cdsSawmillLoadOrders.SQL.Add
        ('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PackageCode              AS PackageCode,      -- Char 10');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.StartETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.EndETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add
        ('Od.OrderNoText              AS OrderNoText,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add
        ('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add
        ('Cy.CityName                 AS Destination,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add
        ('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add
        ('CSD.Reference               AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add
        ('CH.CustomerNo               AS CHCustomerNo,    -- Integer');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ObjectType,                                  -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
      cdsSawmillLoadOrders.SQL.Add
        ('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add
        ('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add
        ('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
      cdsSawmillLoadOrders.SQL.Add
        ('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add
        ('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN SP.Price > 0 then Cast((SP.Price');
        cdsSawmillLoadOrders.SQL.Add
          ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') +
          ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
        cdsSawmillLoadOrders.SQL.Add
          ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr')
          + ' else');
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');
      End
      else // Inköp
      Begin
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30))+' +
          QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN OL.InternalPrice > 0 then Cast(OL.InternalPrice AS Varchar(30)) +'
          + QuotedStr('kr'));
        cdsSawmillLoadOrders.SQL.Add('END END AS Pris,');
      End;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthOL.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd,');
      cdsSawmillLoadOrders.SQL.Add
        ('StatCtry.CountryName AS Land, SP.Package_Size, ps.PackageSizeName,');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('ch.ShippingPlanStatus, ch.LOBNo') ;

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');

      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
      else
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size');
      cdsSawmillLoadOrders.SQL.Add('and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
      cdsSawmillLoadOrders.SQL.Add
        ('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Country StatCtry	ON StatCtry.CountryNo  = od.IntraStatCountryNo');

      if Length(Trim(teReferens.Text)) > 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add('WHERE SP.Reference = ' +
          QuotedStr(teReferens.Text));
      End
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' +
          teSearchLONo.Text);

      if LEGO then
      Begin
        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
          cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' +
            IntToStr(ClientNo))
        else
          cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' +
            IntToStr(ClientNo));
      End
      else
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  ' +
          IntToStr(ClientNo));

      // cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
      // cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3');
      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');

      { if cbOrderType.ItemIndex = 0 then
        cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 0')
        else
        cdsSawmillLoadOrders.SQL.Add('AND OD.OrderType = 1') ; }

      cdsSawmillLoadOrders.SQL.Add('UNION');
      cdsSawmillLoadOrders.SQL.Add('SELECT distinct ' + QuotedStr('NA') +
        ' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PackageCode              AS PackageCode,    -- Char 10');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.StartETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.EndETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add
        ('''''           AS OrderNo,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add
        ('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add
        ('''''              AS Destination,      -- VarChar 50');

      // cdsSawmillLoadOrders.SQL.Add('''''               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add
        ('CL.ClientName               AS ClientName,');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add
        ('''''              AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add
        ('CH.CustomerNo               AS CHCustomerNo,');
      // cdsSawmillLoadOrders.SQL.Add('-1              AS CHCustomerNo,');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
      // cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ObjectType,                                  -- Integer');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
      else
        cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

      cdsSawmillLoadOrders.SQL.Add
        ('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add
        ('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add
        ('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo, SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add
        ('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

      // intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
      // Prislistan används inte på inköp!
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30)) +' +
          QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END');
        cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
      End
      else // Inköp
      Begin
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr'));
        // cdsSawmillLoadOrders.SQL.Add('Case') ;
        // cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
        // cdsSawmillLoadOrders.SQL.Add('END') ;
        cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
      End;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd,');
      cdsSawmillLoadOrders.SQL.Add
        ('StatCtry.CountryName AS Land, SP.Package_Size, ps.PackageSizeName,');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('ch.ShippingPlanStatus, ch.LOBNo') ;

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
      else
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size');
      cdsSawmillLoadOrders.SQL.Add('and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

      // cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No');
      cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      cdsSawmillLoadOrders.SQL.Add('Left join dbo.ClientPreference cp');
      cdsSawmillLoadOrders.SQL.Add
        ('left join dbo.Address FDr on FDr.AddressNo = cp.DefaultBillingAddressNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Country StatCtry	ON StatCtry.CountryNo  = FDr.CountryNo');
      cdsSawmillLoadOrders.SQL.Add
        ('on cp.ClientNo = cll.ClientNo and cp.Roletype = 9');


      // if Lego then supplier or customer = SP
      // if verk or vw then CLL.ClientNo

      if Length(Trim(teReferens.Text)) > 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add('WHERE SP.Reference = ' +
          QuotedStr(teReferens.Text));
      End
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' +
          teSearchLONo.Text);

      if LEGO then
      Begin
        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
          cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' +
            IntToStr(ClientNo))
        else
          cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' +
            IntToStr(ClientNo));
      End
      else
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo =  ' +
          IntToStr(ClientNo));

      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');


      // if ThisUser.UserID = 8 then cdsSawmillLoadOrders.SQL.SaveToFile('BuildGetOne_LO_SQL.txt');

      OrderTypeChanged := False;
    End;
  Finally
    // cbOrderType.Properties.OnChange:= cbOrderTypePropertiesChange ;
  End;
end;

procedure TfrmLoadOrder.BuildVIDAWOODGetOne_LO_SQL(Sender: TObject);
Var
  LEGO: Boolean;
begin
  LEGO := False;
  // cbOrderType.Properties.OnChange:= nil ;
  Try
    CheckIfChangesUnSaved(Sender);
    // icStatusChange(Sender) ;
    With dmcOrder do
    Begin
      { OrderType := OrderTypeOrderType(dmcOrder.cds_PropsVerkNo.AsInteger, StrToIntDef(teSearchLONo.Text,0) );
        if OrderType > -1 then
        Begin }
      dmcOrder.cds_Props.Edit;
      dmcOrder.cds_PropsOrderTypeNo.AsInteger := 0; // OrderType ;
      dmcOrder.cds_Props.Post;
      // End ;



      cdsSawmillLoadOrders.SQL.Clear;

      cdsSawmillLoadOrders.SQL.Add
        ('SELECT distinct OL.OrderLineDescription AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PackageCode              AS PackageCode,      -- Char 10');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.StartETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.EndETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add
        ('Od.OrderNoText              AS OrderNoText,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add
        ('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add
        ('Cy.CityName                 AS Destination,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add
        ('CL.ClientName               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add
        ('CSD.Reference               AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add
        ('CH.CustomerNo               AS CHCustomerNo,    -- Integer');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ObjectType,                                  -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('CASE WHEN OD.OrderType = 1 then 1	ELSE 0	END AS ORDERTYPE,');
      cdsSawmillLoadOrders.SQL.Add
        ('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add
        ('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add
        ('IsNull(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,              ');
      cdsSawmillLoadOrders.SQL.Add
        ('CH.CustomerNo AS CSH_CustomerNo, SP.ShipToInvPointNo,SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add
        ('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN SP.Price > 0 then Cast((SP.Price');
        cdsSawmillLoadOrders.SQL.Add
          ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') +
          ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
        cdsSawmillLoadOrders.SQL.Add
          ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr')
          + ' else');
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');
      End
      else // Inköp
      Begin
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30))+' +
          QuotedStr('kr') + ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN OL.InternalPrice > 0 then Cast(OL.InternalPrice AS Varchar(30)) +'
          + QuotedStr('kr'));
        cdsSawmillLoadOrders.SQL.Add('END END AS Pris,');
      End;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthOL.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd,');
      cdsSawmillLoadOrders.SQL.Add
        ('StatCtry.CountryName AS Land, SP.Package_Size, ps.PackageSizeName,');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('ch.ShippingPlanStatus, ch.LOBNo') ;

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
      else
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size');
      cdsSawmillLoadOrders.SQL.Add('and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanHeader CH   ON  SP.ShippingPlanNo          = CH.ShippingPlanNo      -- LARS');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.Client                     CL   ON  CH.CustomerNo              = CL.ClientNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanDetails CSD   ON  SP.CustShipPlanDetailObjectNo = CSD.CustShipPlanDetailObjectNo      -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Address 		             ST_ADR     ON ST_ADR.AddressNo	     = ST.AddressNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.CITY                     CY         ON CY.CityNo 	           = ST_ADR.CityNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Country		               ST_AdrCtry	ON ST_AdrCtry.CountryNo  = ST_ADR.CountryNo');
      cdsSawmillLoadOrders.SQL.Add
        ('ON	ST.ShippingPlanNo	   = CSD.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('AND	ST.Reference		     = CSD.Reference');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Country StatCtry	ON StatCtry.CountryNo  = od.IntraStatCountryNo');

      if Length(Trim(teReferens.Text)) > 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add('WHERE SP.Reference = ' +
          QuotedStr(teReferens.Text));
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo = ' +
          dmcOrder.cds_PropsVerkNo.AsString);
      End
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' +
          teSearchLONo.Text);

      { if LEGO then
        Begin
        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' + IntToStr(ClientNo))
        else
        cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' + IntToStr(ClientNo)) ;
        End
        else
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  '+IntToStr(ClientNo)) ;
      }

      // cdsSawmillLoadOrders.SQL.Add('AND SP.ShippingPlanStatus <> 0');
      // cdsSawmillLoadOrders.SQL.Add('AND CH.ShippingPlanStatus <> 3');
      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType = 2');

      cdsSawmillLoadOrders.SQL.Add('UNION');
      cdsSawmillLoadOrders.SQL.Add('SELECT distinct ' + QuotedStr('NA') +
        ' AS KONTRAKTSBESKRIVNING, bk.ShippersShipDate,');
      cdsSawmillLoadOrders.SQL.Add('bk.PreliminaryRequestedPeriod,');

      cdsSawmillLoadOrders.SQL.Add('USR.INITIALS,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanStatus,                           -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShippingPlanNo           AS LONumber,         -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PackageCode              AS PackageCode,    -- Char 10');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ProductDescription       AS Product,          -- Char 100');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.LengthDescription        AS Length,           -- Char 100');
      cdsSawmillLoadOrders.SQL.Add('SP.StartETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.EndETDYearWeek,');
      cdsSawmillLoadOrders.SQL.Add('SP.NoOfUnits,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierShipPlanObjectNo,                     -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ShowInGrid,                                   -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add
        ('''''           AS OrderNo,          -- VarChar 20');
      cdsSawmillLoadOrders.SQL.Add
        ('UN.VolumeUnitName           AS UnitName,         -- VarChar 10');
      cdsSawmillLoadOrders.SQL.Add
        ('''''              AS Destination,      -- VarChar 50');

      // cdsSawmillLoadOrders.SQL.Add('''''               AS ClientName,       -- LARS VarChar 80');
      cdsSawmillLoadOrders.SQL.Add
        ('CL.ClientName               AS ClientName,');
      cdsSawmillLoadOrders.SQL.Add('mr.MarketRegionName         AS MARKNAD,');

      cdsSawmillLoadOrders.SQL.Add
        ('''''              AS Reference,       -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.SupplierNo               AS Supplier,        -- Integer');

      cdsSawmillLoadOrders.SQL.Add
        ('CH.CustomerNo               AS CHCustomerNo,');
      // cdsSawmillLoadOrders.SQL.Add('-1              AS CHCustomerNo,');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerNo               AS SPCustomerNO,    -- Integer');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerPrice,                               -- Float');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.CustomerShowInGrid,                           -- SmallInt');

      cdsSawmillLoadOrders.SQL.Add('SUPP.ClientName				AS SUPP_NAME,');
      cdsSawmillLoadOrders.SQL.Add('CUST.ClientName				AS LOCAL_CUST,');
      // cdsSawmillLoadOrders.SQL.Add('SC.ClientName                           AS SHIPPER,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.ObjectType,                                  -- Integer');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('0 AS ORDERTYPE,')
      else
        cdsSawmillLoadOrders.SQL.Add('1 AS ORDERTYPE,');

      cdsSawmillLoadOrders.SQL.Add
        ('ShipTo.CityName                 AS SHIPTO,      -- VarChar 50');
      cdsSawmillLoadOrders.SQL.Add
        ('Loading.CityName                 AS LOADING,');
      cdsSawmillLoadOrders.SQL.Add
        ('ISNULL(SP.Delivery_WeekNo,-1) AS Delivery_WeekNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('-1 AS CSH_CustomerNo, SP.ShipToInvPointNo, SP.LoadingLocationNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('BC.BarCode, CH.Reference AS REFERENS, SP.DateCreated AS SKAPAD,');
      cdsSawmillLoadOrders.SQL.Add
        ('pli.NT, pli.NB, pli.AT, pli.AB, pli.TT, pli.TB, pli.TS, pli.UT, pli.KV, pli.PK, SP.lengthtyp AS INTLÄNGD, SP.Reference AS RADREFERENS,');

      // intern, add LO's, om prislista vald dras vwcost och priskorr av, om direktpris dras inget av eller läggs till?!
      // Prislistan används inte på inköp!
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN SP.Price > 0 then Cast((SP.Price');
        cdsSawmillLoadOrders.SQL.Add
          ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30))+' + QuotedStr('kr') +
          ' Else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo ) else');
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN OL.InternalPrice > 0 then Cast((OL.InternalPrice');
        cdsSawmillLoadOrders.SQL.Add
          ('+isnull((Select vwcost From dbo.vwcost vwc WHERE   GetDate() BETWEEN vwc.Fom AND vwc.Tom),0.0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr')
          + ' else');
        cdsSawmillLoadOrders.SQL.Add
          ('Case WHEN ol.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), ol.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )');
        cdsSawmillLoadOrders.SQL.Add('END END END END AS Pris,');

        { cdsSawmillLoadOrders.SQL.Add('Case') ;
          cdsSawmillLoadOrders.SQL.Add('WHEN SP.Price > 0 then Cast(SP.Price AS Varchar(30)) +'+QuotedStr('kr')+' Else') ;
          cdsSawmillLoadOrders.SQL.Add('Case') ;
          cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
          cdsSawmillLoadOrders.SQL.Add('END') ;
          cdsSawmillLoadOrders.SQL.Add('End AS Pris,') ;
        }
      End
      else // Inköp
      Begin
        cdsSawmillLoadOrders.SQL.Add('Case');
        cdsSawmillLoadOrders.SQL.Add
          ('WHEN SP.Price > 0 then Cast((SP.Price + isnull(SP.InternKundFrakt,0))');
        cdsSawmillLoadOrders.SQL.Add('AS Varchar(30)) +' + QuotedStr('kr'));
        // cdsSawmillLoadOrders.SQL.Add('Case') ;
        // cdsSawmillLoadOrders.SQL.Add('WHEN SP.PriceListNo > 0 then dbo.VIS_GetPrice( GetDate(), sp.PriceListNo, SP.ProductNo, SP.ProductLengthNo, SP.SupplierNo )') ;
        // cdsSawmillLoadOrders.SQL.Add('END') ;
        cdsSawmillLoadOrders.SQL.Add('End AS Pris,');
      End;

      cdsSawmillLoadOrders.SQL.Add('SP.ProductGroupNo, pthLO.PriceListName,');
      cdsSawmillLoadOrders.SQL.Add
        ('SP.PcsPerPkg, SP.PackageWidth, SP.PackageHeight, SP.PkgCodePPNo, PIS.ProdInstruNo,');
      cdsSawmillLoadOrders.SQL.Add
        ('sp.ProductNo, sp.ProductLengthNo, Od.LanguageCode AS LanguageCode, PL.ActualLengthMM AS ALMM, SP.SequenceNo, SP.OrderLineNo, SP.OrderNo, SP.ModifiedUser, LIP.LogicalInventoryName AS Lagergrupp, SP.LengthSpec AS Längd,');
      cdsSawmillLoadOrders.SQL.Add
        ('StatCtry.CountryName AS Land, SP.Package_Size, ps.PackageSizeName,');

      cdsSawmillLoadOrders.SQL.Add
        ('SP.PkgArticleNo, SP.LOGroupNo, LOB.LOBuffertName,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select COUNT(LD.PackageNo) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo)) AS LoadedPkgs,');

      cdsSawmillLoadOrders.SQL.Add
        ('(Select SUM(pt.Totalm3Nominal) FROM dbo.SupplierShippingPlan SP2');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Loaddetail LD ON LD.Defsspno = SP2.SupplierShipPlanObjectNo');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.PackageType pt on pt.PackageTypeNo = LD.PackageTypeNo');
      cdsSawmillLoadOrders.SQL.Add
        ('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add
        ('AND (SP2.OLO  = SP.SupplierShipPlanObjectNo)');
      cdsSawmillLoadOrders.SQL.Add
        ('OR (SP2.SupplierShipPlanObjectNo = SP.SupplierShipPlanObjectNo) ) AS LoadedNM3,');

      cdsSawmillLoadOrders.SQL.Add('ch.ShippingPlanStatus, ch.LOBNo') ;

      cdsSawmillLoadOrders.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
      if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.LoadingLocationNo       = CLL.PhyInvPointNameNo')
      else
        cdsSawmillLoadOrders.SQL.Add
          ('INNER JOIN dbo.SupplierShippingPlan       SP   ON  SP.ShipToInvPointNo       = CLL.PhyInvPointNameNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LOBuffertParams LOB on LOB.LOBuffertNo = SP.Delivery_WeekNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT Join dbo.PackageSize ps on ps.PackageSizeNo = SP.Package_Size');
      cdsSawmillLoadOrders.SQL.Add('and ps.LanguageCode = 1');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.OrderLine    OL   ON  OL.OrderNo = SP.OrderNo');
      cdsSawmillLoadOrders.SQL.Add('AND OL.OrderLineNo = SP.OrderLineNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = SP.LIPNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.Orders                     Od   ON  SP.OrderNo                 = Od.OrderNo');

      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.ProductLength PL on PL.ProductLengthNo = SP.ProductLengthNo');

      // cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.PriceTemplateHeader pthol on pthol.templateno = ol.PriceListNo') ;
      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.PriceTemplateHeader pthLO on pthLO.templateno = sp.PriceListNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.PRODLIST_II pli ON pli.ProductNo = sp.ProductNo');

      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CH');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner JOIN dbo.Client                     CL   ON  CL.ClientNo = CH.CustomerNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.MarketRegion mr on mr.MarketRegionNo = cl.MarketRegionNo');
      cdsSawmillLoadOrders.SQL.Add('ON  CH.ShippingPlanNo          = SP.LO_No');
      cdsSawmillLoadOrders.SQL.Add('  AND CH.ShippingPlanStatus <> 3');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Users USR			ON USR.UserID = SP.ModifiedUser');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     SUPP   ON  SUPP.ClientNo            = SP.SupplierNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Client                     CUST   ON  CUST.ClientNo            = SP.CustomerNo            -- LARS');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Shipto         ON ShipTo.CityNo 	           = SP.ShipToInvPointNo');
      cdsSawmillLoadOrders.SQL.Add
        ('LEFT OUTER JOIN dbo.CITY                     Loading         ON Loading.CityNo 	           = SP.LoadingLocationNo');

      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.UnitName                   UN   ON  SP.VolumeUnitNo            = UN.VolumeUnit_No');

      cdsSawmillLoadOrders.SQL.Add
        ('Left Outer Join dbo.Booking Bk On BK.ShippingPlanNo = SP.ShippingPlanNo');
      cdsSawmillLoadOrders.SQL.Add('Left Outer Join dbo.ProdInstru PIS');
      cdsSawmillLoadOrders.SQL.Add
        ('Inner Join dbo.Barcode BC ON BC.BarCodeNo = PIS.BarCodeID');
      cdsSawmillLoadOrders.SQL.Add('ON PIS.ProdInstruNo = SP.ProdInstructNo');

      cdsSawmillLoadOrders.SQL.Add('Left join dbo.ClientPreference cp');
      cdsSawmillLoadOrders.SQL.Add
        ('left join dbo.Address FDr on FDr.AddressNo = cp.DefaultBillingAddressNo');
      cdsSawmillLoadOrders.SQL.Add
        ('INNER JOIN dbo.Country StatCtry	ON StatCtry.CountryNo  = FDr.CountryNo');
      cdsSawmillLoadOrders.SQL.Add
        ('on cp.ClientNo = sp.SupplierNo and cp.Roletype = 9');

      // if Lego then supplier or customer = SP
      // if verk or vw then CLL.ClientNo

      // cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' + teSearchLONo.Text);
      if Length(Trim(teReferens.Text)) > 0 then
      Begin
        cdsSawmillLoadOrders.SQL.Add('WHERE SP.Reference = ' +
          QuotedStr(teReferens.Text));
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo = ' +
          dmcOrder.cds_PropsVerkNo.AsString);
      End
      else
        cdsSawmillLoadOrders.SQL.Add('WHERE  SP.ShippingPlanNo = ' +
          teSearchLONo.Text);

      // cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  '+IntToStr(integer(cbSupplier.Properties.Items.Objects[cbSupplier.ItemIndex])));

      { if LEGO then
        Begin
        if dmcOrder.cds_PropsOrderTypeNo.AsInteger = 0 then
        cdsSawmillLoadOrders.SQL.Add('AND SP.SupplierNo =  ' + IntToStr(ClientNo))
        else
        cdsSawmillLoadOrders.SQL.Add('AND SP.CustomerNo =  ' + IntToStr(ClientNo)) ;
        End
        else
        cdsSawmillLoadOrders.SQL.Add('AND  CLL.ClientNo          =  '+IntToStr(ClientNo)) ;
      }

      cdsSawmillLoadOrders.SQL.Add('AND SP.ObjectType < 2');

      // if ThisUser.UserID = 8 then  cdsSawmillLoadOrders.SQL.SaveToFile('BuildVIDAWOODGetOne_LO_SQL_BuildGetOne_LO_SQL.txt');
      OrderTypeChanged := False;
    End;
  Finally
    // cbOrderType.Properties.OnChange:= cbOrderTypePropertiesChange ;
  End;
end;

procedure TfrmLoadOrder.eRedoDagExit(Sender: TObject);
begin
  (* With dmcOrder do
    Begin
    SetMyBookmark(Sender) ;
    //  cdsSawmillLoadOrders.DisableControls ;
    dmcOrder.cdsSawmillLoadOrders.Filter:= 'LONumber = '+dmcOrder.cdsSawmillLoadOrdersLONumber.AsString ;
    dmcOrder.cdsSawmillLoadOrders.Filtered:= True ;
    IsolateLoads;
    Try
    dmcOrder.cdsSawmillLoadOrders.First ;
    While not dmcOrder.cdsSawmillLoadOrders.Eof do
    Begin
    if dmcOrder.cdsSawmillLoadOrders.State in [dsBrowse] then
    dmcOrder.cdsSawmillLoadOrders.Edit ;
    dmcOrder.cdsSawmillLoadOrdersReadyDate.AsString:= dxDBEdit2.Text ;
    dmcOrder.cdsSawmillLoadOrders.Post ;
    dmcOrder.cdsSawmillLoadOrders.Next ;
    End ;
    Finally
    dmcOrder.cdsSawmillLoadOrders.Filtered:= False ;
    GotoMyBookmark(Sender) ;
    //   cdsSawmillLoadOrders.EnableControls ;
    ReConnectLoads;
    End ;
    End ; *)
end;

procedure TfrmLoadOrder.Visagrupperingsrutan1Click(Sender: TObject);
begin
  { if grdLO1.ShowGroupPanel = False then
    grdLO1.ShowGroupPanel:= True
    else
    grdLO1.ShowGroupPanel:= False ; }
end;

procedure TfrmLoadOrder.bbTallyVer2Click(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;

  FR: TFastreports;
  lang,
  ClientNo,
  loadNo,
  ReportType: integer;
begin
  dmFR.SaveCursor;
  try
    loadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
      .AsInteger;
    if loadNo < 1
    then
      Exit;

    if uReportController.useFR then
    begin
      FR := TFastReports.Create;
      try
        ClientNo := dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger;
        lang := dmsContact.Client_Language(ClientNo);
        if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
          .AsInteger <> 2 then
          ReportType := cFoljesedelIntern
        else
          ReportType := cFoljesedel;

        FR.Tally_Pkg_Matched(loadNo, ReportType, lang, '', '', '', 0);
      finally
        FR.Free;
      end;
    end

    else
    begin
      FormCRViewReport := TFormCRViewReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;

        if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
          .AsInteger <> 2 then
          FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT', A)
        else
        Begin
          Try
            dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
              grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
              .AsInteger;
            dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;
          if dmsContact.Client_Language
            (dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger) = cSwedish
          then
            FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT', A)
          else
            FormCRViewReport.CreateCo('TALLY_eng_VER3_NOTE.RPT', A);
        End;

        if FormCRViewReport.ReportFound then
        Begin
          FormCRViewReport.ShowModal;
        End;
        Try
          dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
            grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
            .AsInteger;
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

procedure TfrmLoadOrder.bbTally_USAClick(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1
  then
    Exit;

  if uReportController.useFR then begin

    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
      .AsInteger <> 2 then
      RepNo := 637 // TALLY_INT_USA.fr3
    else Begin
      RepNo := 41; // TALLY_US_NOTE.fr3
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;
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
      Params.Add('@Language', dmsContact.Client_Language
        (dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger));
      Params.Add('@LoadNo',
        grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
        .AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;
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
      A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
        .AsInteger;

      if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
        .AsInteger <> 2 then
        FormCRViewReport.CreateCo('TALLY_INT_USA.RPT', A)
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
            .AsInteger;
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
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;
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

procedure TfrmLoadOrder.PrintSamlingsspecifikation(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  // if dmcOrder.cdsLoadsForLOLoadNo.AsInteger < 1 then exit ;
  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1
  then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := SamLastNr;
    FormCRViewReport.CreateCo('SAM_LAST.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadOrder.PrintSamlingsspecifikationMedPktnr(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  // if dmcOrder.cdsLoadsForLOLoadNo.AsInteger < 1 then exit ;
  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1
  then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := SamLastNr;
    FormCRViewReport.CreateCo('SAM_LAST_PKTNR.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadOrder.bbAvrakningSpecVer2Click(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1
  then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
      .AsInteger;
    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
      .AsInteger <> 2 then
      FormCRViewReport.CreateCo('AVR_SPEC_TALLY_INTERNAL_VER2.RPT', A)
    else
    Begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

      FormCRViewReport.CreateCo('AVR_SPEC_TALLY_VER2.RPT', A)
    End;

    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
    Try
      dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
        grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
        .AsInteger;
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

procedure TfrmLoadOrder.acSamlingFSExecute(Sender: TObject);
begin
  GenerateSamlingFS_2(Sender);
end;

procedure TfrmLoadOrder.GenerateSamlingFS_2(Sender: TObject);
Var
  i, RecIDX: Integer;
  RecID: variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  with dmcOrder, dmArrivingLoads do
  Begin
    // samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
    Try
      sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
      sq_deleteSamLaster.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

    grdFSDBTableView1.BeginUpdate;
    grdFSDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdFSDBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdFSDBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('LoadNo', RecID, []);

        Try
          sq_samLast.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
          sq_samLast.ParamByName('LoadNo').AsInteger :=
            ADATASET.FieldByName('LoadNo').AsInteger;
          // sq_samLast.ParamByName('Reference').AsString          := '' ;
          sq_samLast.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;

      // if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
      // ADataSet.Bookmark:= BkmSafe ;

      PrintSamlingsspecifikation(Sender, ThisUser.UserID);

    Finally
      grdFSDBTableView1.DataController.EndLocate;
      grdFSDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadOrder.SetLOStatus(Sender: TObject; Status: Integer);
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  lbLO_To_Invoice.Items.Clear;
  with dmcOrder do
  Begin
    grdLODBTableView1.BeginUpdate;
    grdLODBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLODBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdLODBTableView1.DataController.GetRecordId(RecIDX);
        // ADataSet.Locate('SupplierShipPlanObjectNo',RecID,[]) ;

        lbLO_To_Invoice.Items.Add(IntToStr(RecID));

        { ADataSet.Edit ;
          ADataSet.FieldByName('ShippingPlanStatus').AsInteger:= Status ;
          ADataSet.Post ; }

        dmcOrder.SetLOStatus(RecID, Status);

        {
          if dmcOrder.cdsSawmillLoadOrders.FindKey([RecID]) then
          Begin
          dmcOrder.cdsSawmillLoadOrders.Edit ;
          dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus.AsInteger:= Status ;
          dmcOrder.cdsSawmillLoadOrders.Post ;
          End ; }
      End;

      // if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
      // ADataSet.Bookmark:= BkmSafe ;

    Finally
      grdLODBTableView1.DataController.EndLocate;
      grdLODBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

    SetShippingPlanStatus(Status);
    // atRefreshExecute(Sender) ;

  End; // with
end;

procedure TfrmLoadOrder.SetShippingPlanStatus(const Status: Integer);
Var
  x: Integer;
  Save_Cursor: TCursor;
begin
  Try
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'indexSupplierShipPlanObjectNo';
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    dmcOrder.cdsSawmillLoadOrders.DisableControls;
    Try
      For x := 0 to lbLO_To_Invoice.Items.Count - 1 do
      Begin
        if dmcOrder.cdsSawmillLoadOrders.FindKey([lbLO_To_Invoice.Items[x]])
        then
        Begin
          if (Status = STATUS_COMPLETE) and (dmcOrder.LoadStatusOK = False) then
          Begin
            ShowMessage
              ('Cannot finish LO because there are loads not set to complete, or there are no loads at all.');
          End
          else
          Begin
            dmcOrder.cdsSawmillLoadOrders.Edit;
            dmcOrder.cdsSawmillLoadOrdersShippingPlanStatus.AsInteger := Status;
            dmcOrder.cdsSawmillLoadOrders.Post;
          End;
        End;
      End;

    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    End;

  Finally
    dmcOrder.cdsSawmillLoadOrders.EnableControls;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;

end;

procedure TfrmLoadOrder.Button2Click(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_ACCEPTED);
end;

procedure TfrmLoadOrder.Button3Click(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_NEW);
end;

procedure TfrmLoadOrder.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmLoadOrder.acSaveChangesExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    // acSkapaPaketKoderExecute(Sender) ;

    if dm_Booking.cdsVoyage.State = dsEdit then
      dm_Booking.cdsVoyage.Post;

    if cdsBooking.State = dsEdit then
      cdsBooking.Post;
    if cdsSawmillLoadOrders.State = dsEdit then
      cdsSawmillLoadOrders.Post;

    if dm_Booking.cdsVoyage.ChangeCount > 0 then
    Begin
      dm_Booking.cdsVoyage.ApplyUpdates(0);
      dm_Booking.cdsVoyage.CommitUpdates;
    End;

    if cdsSawmillLoadOrders.ChangeCount > 0 then
    Begin
      cdsSawmillLoadOrders.ApplyUpdates(0);
      cdsSawmillLoadOrders.CommitUpdates;
    End;

    if cdsBooking.ChangeCount > 0 then
    Begin
      cdsBooking.ApplyUpdates(0);
      cdsBooking.CommitUpdates;
    End;
  End;
end;

procedure TfrmLoadOrder.acCancelChangesExecute(Sender: TObject);
begin
  if dmcOrder.cdsSawmillLoadOrders.ChangeCount > 0 then
    dmcOrder.cdsSawmillLoadOrders.CancelUpdates;
  if dmcOrder.cdsBooking.ChangeCount > 0 then
    dmcOrder.cdsBooking.CancelUpdates;
end;

procedure TfrmLoadOrder.acConfirmCancelExecute(Sender: TObject);
begin
  SetLOStatus(Sender, STATUS_ANNULERAD_BEKRAFTAD);
end;

procedure TfrmLoadOrder.acShowLOGroupByBoxExecute(Sender: TObject);
begin
  if grdLODBTableView1.OptionsView.GroupByBox then
    grdLODBTableView1.OptionsView.GroupByBox := False
  else
    grdLODBTableView1.OptionsView.GroupByBox := True;
end;

procedure TfrmLoadOrder.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdFS.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdFS.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmLoadOrder.acNewLoadWithLOExecute(Sender: TObject);
begin
  // if not dmsConnector.FDMoniFlatFileClientLink1.Tracing then
  // Begin
  // dmsConnector.FDConnection1.Params.Values['MonitorBy'] := 'FlatFile';
  // dmsConnector.FDMoniFlatFileClientLink1.Tracing  := True ;
  // End ;
  // Try
  with TfLoadEntrySSP.CreateWithNewLoad(NIL,
    dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger, // SSP customer
    dmcOrder.cdsSawmillLoadOrdersSupplier.AsInteger, // SSP supplier
    dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger, // LO
    dmcOrder.cdsSawmillLoadOrdersShipToInvPointNo.AsInteger,
    dmcOrder.cdsSawmillLoadOrdersLoadingLocationNo.AsInteger, -1 { LoadNo } ,
    grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
    grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo')
    .AsInteger

    ) do
    try
      ShowModal;
      Application.ProcessMessages;

      // if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
      // AddLoadNoToList(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger,
      // dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger) ;

      dmcOrder.ShowLoadsForLO(dmcOrder.cdsSawmillLoadOrdersLONumber.AsInteger);

      if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
        // if dmcOrder.cdsLoadsForLO.Locate('LoadNo', dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger, []) then ;
        if dmcOrder.FindLoadRecord(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger)
        then;
    finally
      Free
    end;

  // Finally
  // dmsConnector.FDMoniFlatFileClientLink1.Tracing  := False ;
  // dmsConnector.FDConnection1.Params.Values['MonitorBy'] := '';
  // End ;
end;

procedure TfrmLoadOrder.acOpenLoadExecute(Sender: TObject);
begin
  { if grdFSDBTableView1.DataController.DataSource.DataSet.FieldByName('PackageEntryOption').AsInteger = 1 then
    OpenUtlastningsSpec(Sender)
    else }

  OpenNormalLoad(Sender);
end;

(*
  procedure TfrmLoadOrder.AddLoadNoToList(const LoadNo, LONo : Integer);
  Var y, x : Integer ;
  Add : Boolean ;
  Begin
  Add:= True ;
  For x := 0 to cbLastOpenLoads.Properties.Items.Count - 1 do
  Begin
  if IntToStr(LoadNo)+' / '+IntToStr(LONo) =      cbLastOpenLoads.Properties.Items[x] then
  Begin
  Add := False ;
  y := x ;
  End ;
  End ;
  if Add = True then
  Begin
  //  bcLastLoadNoOpen.Items.Delete(7);
  if cbLastOpenLoads.Properties.Items.Count > 7 then
  cbLastOpenLoads.Properties.Items.Delete(7) ;
  cbLastOpenLoads.Properties.Items.Insert(0,IntToStr(LoadNo)+' / '+IntToStr(LONo)) ;
  //  bcLastLoadNoOpen.Items.Insert(0,IntToStr(LoadNo)+' / '+IntToStr(LONo)) ;
  End
  else
  cbLastOpenLoads.Properties.Items.Move(y,0);
  //   bcLastLoadNoOpen.Items.Move(y,0);
  // bcLastLoadNoOpen.ItemIndex:= 0 ;
  cbLastOpenLoads.ItemIndex:= 0 ;
  End ;
*)

procedure TfrmLoadOrder.acPrintLOWYSWYGExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2);
end;

procedure TfrmLoadOrder.acExpandAllExecute(Sender: TObject);
begin
  grdLODBTableView1.ViewData.Expand(True);
end;

procedure TfrmLoadOrder.acCollapseAllExecute(Sender: TObject);
begin
  grdLODBTableView1.ViewData.Collapse(True);
end;

procedure TfrmLoadOrder.acExportToXLSExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog2.Filter := 'Excel files (*.xlsx)|*.xlsx';
    SaveDialog2.DefaultExt := 'xlsx';
    SaveDialog2.InitialDir := ExcelDir;
    if SaveDialog2.Execute then
    Begin
      FileName := SaveDialog2.FileName;

      Try
       // ExportGridToExcel(FileName, grdLO, False, False, True, 'xls');
        ExportGridToXLSX(FileName, grdLO, true,true,true,'xlsx');
        ShowMessage('Table exported to Excel file ' + FileName);
      Except
      End;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmLoadOrder.acSearchLoadNoExecute(Sender: TObject);
Var
  LONo: Integer;
  fEntryField: TfEntryField;
begin
  With dmcOrder do
  Begin
    LONo := 0;
    fEntryField := TfEntryField.Create(Nil);
    fEntryField.Caption := 'Ange LastNr';
    fEntryField.Label1.Caption := 'LastNr:';
    Try
      if fEntryField.ShowModal = mrOK then
      Begin
        LONo := GetLONoForLoadNo
          (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0));
        if LONo > 0 then
        Begin
          teSearchLONo.Text := IntToStr(LONo);

          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            BuildVIDAWOODGetOne_LO_SQL(Sender)
          else
            BuildGetOne_LO_SQL(Sender);

          dmcOrder.cdsSawmillLoadOrders.Active := False;
          CheckIfChangesUnSaved(Sender);
          RefreshLoadOrders(Sender);
          SearchOneLO := True;
          ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);

          // cdsLoadsForLO.Locate('LoadNo', StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0),[]) ;

          if dmcOrder.FindLoadRecord
            (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0)) then;

          grdFS.SetFocus;
          // teSearchLONo.Text:= '' ;
          // teSearchLONo.SetFocus ;
        End;

      End;
    Finally
      FreeAndNil(fEntryField); // .Free ;
    End;
  End;
end;

procedure TfrmLoadOrder.acAddToLastLoadListExecute(Sender: TObject);
begin
  // AddLoadNoToList(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
  // grdFSDBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger);
end;

procedure TfrmLoadOrder.acAllaLasterPerLOExecute(Sender: TObject);
begin
  // Generate_AllLoads_samLastData(Sender);
  // gammal rapport
  Generate_AllLoads_samLastData(Sender);
  SPEC_ALLA_LASTER_VERK(Sender);
end;

procedure TfrmLoadOrder.acSpec_ALLA_LasterExecute(Sender: TObject);
begin
  GenerateSamlingFS_MedPktNr(Sender);
end;

procedure TfrmLoadOrder.GenerateSamlingFS_MedPktNr(Sender: TObject);
Var
  i, RecIDX: Integer;
  RecID: variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  with dmcOrder, dmArrivingLoads do
  Begin
    // samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
    Try
      sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
      sq_deleteSamLaster.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

    grdFSDBTableView1.BeginUpdate;
    grdFSDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdFSDBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdFSDBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('LoadNo', RecID, []);

        Try
          sq_samLast.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
          sq_samLast.ParamByName('LoadNo').AsInteger :=
            ADATASET.FieldByName('LoadNo').AsInteger;
          // sq_samLast.ParamByName('Reference').AsString    := '' ;
          sq_samLast.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;

      // if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
      // ADataSet.Bookmark:= BkmSafe ;

      PrintSamlingsspecifikationMedPktnr(Sender, ThisUser.UserID);

    Finally
      grdFSDBTableView1.DataController.EndLocate;
      grdFSDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadOrder.dxBarButton18Click(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1
  then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
      .AsInteger;

    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
      .AsInteger <> 2 then
      FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT', A)
    else
    Begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
      FormCRViewReport.CreateCo('TALLY_VER2_NOTE_dk.RPT', A);
    End;
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
    Try
      dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
        grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
        .AsInteger;
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

procedure TfrmLoadOrder.dxBarButton19Click(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
      .AsInteger;
    A[1] := -1;
    if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
      (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
      FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_dk_ver2.RPT', A)
    else
    Begin
      if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
        FormCRViewReport.CreateCo('LASTORDER_NOTE_dk_ver2.RPT', A)
      else
        FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_dk_ver2.RPT', A);
    End;

    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadOrder.dxBarButton20Click(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
      .AsInteger;
    A[1] := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
      .AsInteger;
    FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_dk.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

// Lägg in poster i SamLastReport tabell
procedure TfrmLoadOrder.Generate_samLastDataForMarkedLoads(Sender: TObject);
Var
  i, RecIDX: Integer;
  RecID: variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  with dmcOrder, dmArrivingLoads do
  Begin
    // samLastnr := ThisUser.UserID ; //dmsConnector.NextMaxNo('SamLastReport') ;
    Try
      sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
      sq_deleteSamLaster.ExecSQL;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;

    grdFSDBTableView1.BeginUpdate;
    grdFSDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdFSDBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdFSDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdFSDBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdFSDBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('LoadNo', RecID, []);

        Try
          sq_samLast.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
          sq_samLast.ParamByName('LoadNo').AsInteger :=
            ADATASET.FieldByName('LoadNo').AsInteger;
          // sq_samLast.ParamByName('Reference').AsString      := '' ;
          sq_samLast.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;

      // if ADataSet.BookmarkValid(TBookmark(BkmSafe)) then
      // ADataSet.Bookmark:= BkmSafe ;

      // PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID) ;

    Finally
      grdFSDBTableView1.DataController.EndLocate;
      grdFSDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

// Markerade laster
procedure TfrmLoadOrder.dxBarButton21Click(Sender: TObject);
begin
  Generate_samLastDataForMarkedLoads(Sender);
  // Ny rapport SPEC_ALLA_LASTER_VERK_II med parameter för UserID
  SPEC_ALLA_LASTER_VERK_MARKERADE(Sender);
end;

procedure TfrmLoadOrder.SPEC_ALLA_LASTER_VERK_MARKERADE(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 3);
    A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
      .AsInteger;
    A[1] := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
      .AsInteger;
    A[2] := ThisUser.UserID ;

    FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT', A);

    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

// Per LO
procedure TfrmLoadOrder.SPEC_ALLA_LASTER_MARKERADE(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin
    RC := TCMReportController.Create;
    RepNo := 623; // SPEC_ALLA_LASTER_III.fr3 (623)
    try
      Params := TCMParams.Create();
      Params.Add('@Language', ThisUser.LanguageID);
      Params.Add('@ShippingPlanNo',
        grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
        .AsInteger);
      Params.Add('@UserId', ThisUser.UserID);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end
  end
  else begin
{
     if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger < 1 then exit ;

     FormCRViewReport:= TFormCRViewReport.Create(Nil);
     Try
     FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_III.RPT') ;

     if FormCRViewReport.ReportFound then
     Begin
      FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger);
    //  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger);
      FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(ThisUser.UserID);
      FormCRViewReport.CrystalActiveXReportViewer1.ReportSource:= FormCRViewReport.Report ;
      FormCRViewReport.CrystalActiveXReportViewer1.ViewReport ;
      FormCRViewReport.ShowModal ;
     End ;
     Finally
        FreeAndNil(FormCRViewReport)  ;
     End ;
}



      FormCRViewReport := TFormCRViewReport.Create(Nil);
      Try
        SetLength(A, 2);
        A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger ;
        A[1] := ThisUser.UserID ;

        FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_III.RPT', A);

        if FormCRViewReport.ReportFound then Begin

          FormCRViewReport.ShowModal;
        End;
      Finally
        FreeAndNil(FormCRViewReport);
      End;

  end;
end;

procedure TfrmLoadOrder.SPEC_ALLA_LASTER_VERK(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
    .AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin
    RC := TCMReportController.Create;
    RepNo := 625; // SPEC_ALLA_LASTER_VERK_III.fr3 (625)
    try
      Params := TCMParams.Create();
      Params.Add('@Language', ThisUser.LanguageID);
      Params.Add('@ShippingPlanNo',
        grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
        .AsInteger);
      Params.Add('@SupplierNo',
        grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
        .AsInteger);
      Params.Add('@UserId', ThisUser.UserID);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 3);
      A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
        .AsInteger;
      A[1] := grdLODBTableView1.DataController.DataSet.FieldByName('Supplier')
        .AsInteger;
      A[2] := ThisUser.UserID;
      FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmLoadOrder.dxBarButton22Click(Sender: TObject);
begin
  // generera för markerade laster
  Generate_samLastDataForMarkedLoads(Sender);
  SPEC_ALLA_LASTER_MARKERADE(Sender);
end;

procedure TfrmLoadOrder.dxBarButton23Click(Sender: TObject);
begin
  // generera för alla laster
  Generate_AllLoads_samLastData(Sender);
  SPEC_ALLA_LASTER_MARKERADE(Sender);
end;

procedure TfrmLoadOrder.acClearFilterExecute(Sender: TObject);
begin
  eAT.Text := '';
  eAB.Text := '';
  eNT.Text := '';
  eNB.Text := '';
  ccbKV2.Clear;
  ccbSU2.Clear;
  ccVarugrupp.Clear;
  ccLand.Clear;
  ccKund.Clear;
  teFromWeek.Text := '';
  teToWeek.Text := '';
  teSearchLONo.Text := '';
  teSearchLoadNo.Text := '';
  teReferens.Text := '';
end;

procedure TfrmLoadOrder.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmLoadOrder.acBookingExecute(Sender: TObject);
var
  FormBookingForm: TFormBookingFormorg;
begin
  FormBookingForm := TFormBookingFormorg.Create(Nil);
  try

    FormBookingForm.CreateCo(grdLODBTableView1.DataController.DataSet.
      FieldByName('LONumber').AsInteger);
    FormBookingForm.ShowModal;
    dmcOrder.cdsBooking.Active := False;
    dmcOrder.cdsBooking.Active := True;

  finally
    FreeAndNil(FormBookingForm);
  end;

end;

procedure TfrmLoadOrder.FormDestroy(Sender: TObject);
begin
  frmLoadOrder := Nil;

  if dmsSystem.DeleteAssigned('TfrmLoadOrder', 'dmArrivingLoads') = True then
  Begin
    dmArrivingLoads.Free;
    dmArrivingLoads := Nil;
  End;

  if dmsSystem.DeleteAssigned('TfrmLoadOrder1', 'dm_Booking') = True then
  Begin
    dm_Booking.Free;
    dm_Booking := Nil;
  End;

  FreeAndNil(dmcOrder); // .free ;
end;

procedure TfrmLoadOrder.FormShow(Sender: TObject);
begin
  SetCheckComboBoxes_Where_PktNrLevKod_Required
    (dmcOrder.cds_PropsVerkNo.AsInteger);
end;

procedure TfrmLoadOrder.Timer1Timer(Sender: TObject);
begin
  teSearchLONo.SetFocus;
  Timer1.Enabled := False;
end;

procedure TfrmLoadOrder.Timer2Timer(Sender: TObject);
begin
  teSearchLoadNo.SetFocus;
  Timer2.Enabled := False;
end;

procedure TfrmLoadOrder.Timer3Timer(Sender: TObject);
begin
  teReferens.SetFocus;
  Timer3.Enabled := False;
end;

procedure TfrmLoadOrder.acNewLoadWithLOUpdate(Sender: TObject);
begin
  acNewLoadWithLO.Enabled := (dmcOrder.cdsSawmillLoadOrders.Active) and
    (dmcOrder.cdsSawmillLoadOrders.RecordCount > 0);
end;

procedure TfrmLoadOrder.acOpenLoadUpdate(Sender: TObject);
begin
  acOpenLoad.Enabled := (grdFSDBTableView1.DataController.DataSet.Active) and
    (grdFSDBTableView1.DataController.DataSet.RecordCount > 0);
end;

procedure TfrmLoadOrder.acPrintLOWYSWYGUpdate(Sender: TObject);
begin
  acPrintLOWYSWYG.Enabled := (grdLODBTableView1.DataController.DataSet.Active)
    and (grdLODBTableView1.DataController.DataSet.RecordCount > 0);
end;

procedure TfrmLoadOrder.acExportToXLSUpdate(Sender: TObject);
begin
  acExportToXLS.Enabled := (grdLODBTableView1.DataController.DataSet.Active) and
    (grdLODBTableView1.DataController.DataSet.RecordCount > 0);
end;

procedure TfrmLoadOrder.acSaveChangesUpdate(Sender: TObject);
begin
  acSaveChanges.Enabled := not DataSaved;
end;

procedure TfrmLoadOrder.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved;
end;

procedure TfrmLoadOrder.acBookingUpdate(Sender: TObject);
begin
  acBooking.Enabled := (grdLODBTableView1.DataController.DataSet.Active) and
    (grdLODBTableView1.DataController.DataSet.RecordCount > 0);
end;

procedure TfrmLoadOrder.acShowPriceListExecute(Sender: TObject);
// var fPriceList : TfPriceList;
// ArrayIndex : Integer ;
begin
  { dm_marketprice:= Tdm_marketprice.Create(nil);
    fPriceList:= TfPriceList.Create(nil);
    try
    fPriceList.FilterPriceHdr(dmcOrder.cdsSawmillLoadOrdersPriceListName.AsString) ;
    ArrayIndex:= dm_marketprice.Get_ArrayIndexOfProductGroupNoArray(dmcOrder.cdsSawmillLoadOrdersProductGroupNo.AsInteger) ;
    if ArrayIndex > -1 then
    Begin
    dm_marketprice.ArrayIndex:= ArrayIndex-1 ;
    fPriceList.ProductGroupChange ;
    fPriceList.GetLastPriceListInDateIntervall ;
    End ;
    fPriceList.ShowModal ;
    finally
    FreeAndNil(fPriceList) ;
    FreeAndNil(dm_marketprice) ;
    end; }
end;

procedure TfrmLoadOrder.acShowPriceListUpdate(Sender: TObject);
begin
  acShowPriceList.Enabled := (dmcOrder.cdsSawmillLoadOrders.Active) and
    (Length(dmcOrder.cdsSawmillLoadOrdersPriceListName.AsString) > 0);
end;

procedure TfrmLoadOrder.acPrintLOStatusExecute(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  FR: TFastReports;
  LO, supplier, lang, ReportType, OrderType, ObjectType: integer;
begin
  LO := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber').AsInteger;
  OrderType := dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger;
  ObjectType := dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger;
  lang := ThisUser.LanguageID;
  Supplier := -1;
  if LO < 1 then
    Exit;

  if uReportController.useFR then begin
    FR := TFastReports.Create;
    try
      if (OrderType = 1) and (ObjectType = 2) then ReportType := cLastOrderInkop
      else if ObjectType = 2 then ReportType := cLastOrder
      else ReportType := cLastorder_verk;
      FR.LO(LO,Supplier,ReportType,lang,'','','',true);
    finally
      FR.Free;
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSet.FieldByName('LONumber')
        .AsInteger;
      A[1] := -1;

      if (dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 1) and
        (dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2) then
        FormCRViewReport.CreateCo('Lastorder_inkop_NOTE_STATUS_ver2.RPT.RPT', A)
      else Begin
        if dmcOrder.cdsSawmillLoadOrdersObjectType.AsInteger = 2 then
          FormCRViewReport.CreateCo('LASTORDER_NOTE_STATUS_ver3.RPT', A)
        else
          FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_STATUS_ver3.RPT', A);
      End;

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmLoadOrder.PrintLO(const ShippingPlanNo: Integer);
Var
  LOReport: Integer;
  Save_Cursor: TCursor;
  FormCRPrintReport: TFormCRPrintReport;
  A: array of variant;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  if uReportController.useFR then begin

    Params := TCMParams.Create();
    Params.Add('@Language', ThisUser.LanguageID);
    Params.Add('@ShippingPlanNo', ShippingPlanNo);
    Params.Add('@SupplierNo', -1);

    RC := TCMReportController.Create;
    ClientNo := -1;

    Try
      if dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 0 then Begin
        RoleType := 1;
        DocTyp := cLastOrder  // LASTORDER_NOTE_ver3.fr3 (20)
      End
      else begin
        RoleType := 2;
        DocTyp := cLastOrderInkop   // Lastorder_inkop_NOTE_ver2.fr3 (21)
      end;
      RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPrint);
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  end
  else begin
    FormCRPrintReport := TFormCRPrintReport.Create(Nil);
    Try
      if dmcOrder.cdsSawmillLoadOrdersOrderType.AsInteger = 0 then Begin
        LOReport := -1;
        RoleType := 1;
        SetLength(A, 2);
        A[0] := ShippingPlanNo;
        A[1] := -1;
        FormCRPrintReport.CreateCo(0, LOReport, RoleType, cLastOrder, A);
      End
      else Begin
        LOReport := -1;
        RoleType := 2;
        SetLength(A, 2);
        A[0] := ShippingPlanNo;
        A[1] := -1;
        FormCRPrintReport.CreateCo(0, LOReport, RoleType, cLastOrderInkop, A);
      End;

    Finally
      FreeAndNil(FormCRPrintReport);
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  end;
end;

procedure TfrmLoadOrder.acPrintMarkedLOsExecute(Sender: TObject);
begin
  GetMarkedRows(Sender);
  mtMarkedRows.First;
  While not mtMarkedRows.Eof do
  Begin
    PrintLO(mtMarkedRowsKeyField.AsInteger);
    mtMarkedRows.Next;
  End;
  mtMarkedRows.Active := False;
end;

// Lägg in poster i SamLastReport tabell
procedure TfrmLoadOrder.GetMarkedRows(Sender: TObject);
Var
  i, RecIDX: Integer;
  RecID: variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  with dmcOrder, dmArrivingLoads do
  Begin
    mtMarkedRows.Active := False;
    mtMarkedRows.Active := True;

    grdLODBTableView1.BeginUpdate;
    grdLODBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLODBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdLODBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('SupplierShipPlanObjectNo', RecID, []);

        if not mtMarkedRows.Locate('KeyField', ADATASET.FieldByName('LONumber')
          .AsInteger, []) then
        Begin
          mtMarkedRows.Insert;
          mtMarkedRowsKeyField.AsInteger := ADATASET.FieldByName('LONumber')
            .AsInteger;
          mtMarkedRowsSSPNo.AsInteger :=
            ADATASET.FieldByName('SupplierShipPlanObjectNo').AsInteger;
          mtMarkedRows.Post;
        End;
      End;

    Finally
      grdLODBTableView1.DataController.EndLocate;
      grdLODBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadOrder.GetMarkedRows_II(Sender: TObject);
Var
  i, RecIDX: Integer;
  RecID: variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  with dmcOrder, dmArrivingLoads do
  Begin
    mtMarkedRows.Active := False;
    mtMarkedRows.Active := True;

    grdLODBTableView1.BeginUpdate;
    grdLODBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLODBTableView1.DataController.DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdLODBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLODBTableView1.Controller.SelectedRecords[i].RecordIndex;
        RecID := grdLODBTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('SupplierShipPlanObjectNo', RecID, []);

        if not mtMarkedRows.Locate('SSPNo',
          ADATASET.FieldByName('SupplierShipPlanObjectNo').AsInteger, []) then
        Begin
          mtMarkedRows.Insert;
          mtMarkedRowsKeyField.AsInteger := ADATASET.FieldByName('LONumber')
            .AsInteger;
          mtMarkedRowsSSPNo.AsInteger :=
            ADATASET.FieldByName('SupplierShipPlanObjectNo').AsInteger;
          mtMarkedRows.Post;
        End;
      End;

    Finally
      grdLODBTableView1.DataController.EndLocate;
      grdLODBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadOrder.acLOLengthsExecute(Sender: TObject);
{
  var
    fLOLengths: TfLOLengths;
}
begin
{
    With dmcOrder do
    Begin
      fLOLengths := TfLOLengths.Create(nil);
      Try
        fLOLengths.PkgCodePPZeroGroupNo :=
          cdsSawmillLoadOrdersPkgCodePPNo.AsInteger;
        cds_LOLengths.Active := False;
        cds_LOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger :=
          cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger;
        cds_LOLengths.Active := True;
        // cds_LOLengths.Filter:= 'SupplierShipPlanObjectNo = ' + cds_LOSupplierShipPlanObjectNo.AsString ;
        fLOLengths.ShowModal;
        if cds_LOLengths.State in [dsEdit, dsInsert] then
          cds_LOLengths.Post;
        if cds_LOLengths.ChangeCount > 0 then
        Begin
          cds_LOLengths.ApplyUpdates(0);
          cds_LOLengths.CommitUpdates;
        End;
      Finally
        cds_LOLengths.Active := False;
        // FreeAndNil(fLOLengths) ;
      End;
    End;
}
end;

procedure TfrmLoadOrder.acLOLengthsUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acLOLengths.Enabled := (cdsSawmillLoadOrders.Active) and
      (cdsSawmillLoadOrders.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acLoadOrderListSetupExecute(Sender: TObject);
begin
  TfLoadOrderListSetup.Execute;
end;

procedure TfrmLoadOrder.grdLODBTableView1EditKeyDown
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  Try
    if AEdit is TcxCustomTextEdit then
      with TcxCustomTextEdit(AEdit) do
      begin
        if (Key = VK_RIGHT) and
          (CursorPos = Length(TcxCustomTextEdit(AEdit).Text)) then
          PostMessage(Self.Handle, CM_MOVEIT, Integer(True), 0)
        else if (Key = VK_LEFT) and (CursorPos = 0) then
          PostMessage(Self.Handle, CM_MOVEIT, Integer(False), 0);
      end;
  Except
  End;
end;

procedure TfrmLoadOrder.lcVerkPropertiesCloseUp(Sender: TObject);
begin
  SetCheckComboBoxes_Where_PktNrLevKod_Required
    (dmcOrder.cds_PropsVerkNo.AsInteger);
end;

procedure TfrmLoadOrder.acPrintMarkedLOsUpdate(Sender: TObject);
begin
  acPrintMarkedLOs.Enabled := grdLODBTableView1.Controller.
    SelectedRecordCount > 0;
end;

procedure TfrmLoadOrder.acChangeLOonLoadExecute(Sender: TObject);
var
  fEntryField: TfEntryField;
  LoadNo: Integer;
begin
  // Ändra LO nummer på last
  // Vill du byta LO på lasten till LOnr x?
  LoadNo := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
    .AsInteger;
  fEntryField := TfEntryField.Create(Nil);
  Try
    fEntryField.Caption := 'Ange LO nummer att byta till';
    fEntryField.Label1.Caption := 'LO Nr:';
    if fEntryField.ShowModal = mrOK then
    Begin
      if (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0) > 0) then
        if dmcOrder.ValidLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0))
        then
        Begin
          Try
            dmcOrder.CngLOonLoad
              (grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
              .AsInteger, StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0));

            GetLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0), Sender);
            ShowMessage('LO number changed in the load.');
            // if dmcOrder.cdsLoadsForLO.Locate('LoadNo', LoadNo, []) then
            if dmcOrder.FindLoadRecord(LoadNo) then
              acOpenLoadExecute(Sender);
          Except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          End;
        End // if dmcOrder.ValidLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)) then
        else
          ShowMessage('LO number ' + fEntryField.eNoofpkgs.Text +
            ' does not seem to exist.');
    End;
  Finally
    FreeAndNil(fEntryField);
  End;
end;

procedure TfrmLoadOrder.acChangeLOonLoadUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acChangeLOonLoad.Enabled := (ThisUser.CompanyNo = 741) and
      (grdFSDBTableView1.DataController.DataSet.FieldByName('LoadAR')
      .AsInteger <> 1);
    // (cdsLoadsForLOLoadAR.AsInteger <> 1) ;
  End; // With dmcOrder do
end;

procedure TfrmLoadOrder.GetLO(const LONo: Integer; Sender: TObject);
Begin
  With dmcOrder do
  Begin
    teSearchLONo.Text := IntToStr(LONo);
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    Try
      GetOneLO(Sender);
      // Timer1.Enabled:= True ;
      teSearchLONo.Text := '';
    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName :=
        'indexSupplierShipPlanObjectNo';
    End;
  End; // with
End;

procedure TfrmLoadOrder.acAddLONrToSyncFileExecute(Sender: TObject);
Var
  Mapp: String;
begin
  // Lägg markerade LOnr till filen LastOrder.txt
  Mapp := dmsSystem.Get_A_Value_From_UserDir('LastOrder.txt', 'ExportDir');
  if Mapp = '**' then
  Begin
    if cxShellBrowserDialog1.Execute then
    Begin
      Mapp := IncludeTrailingBackslash(cxShellBrowserDialog1.Path);
      dmsSystem.Save_A_Value_To_UserDir('LastOrder.txt', Mapp, 'ExportDir');
    End
    else
      Mapp := '**';
  End;
  if Mapp <> '**' then
    AddMarkedLOToFile(Sender, Mapp, True);
end;

procedure TfrmLoadOrder.AddMarkedLOToFile(Sender: TObject; const Mapp: String;
  const NewFile: Boolean);
Var
  S: TStringList;
Begin
  S := TStringList.Create;
  Try
    if NewFile = False then
      S.LoadFromFile(Mapp + 'Lastorder.TXT');
    S.Sorted := True;
    GetMarkedRows(Sender);
    mtMarkedRows.First;
    While not mtMarkedRows.Eof do
    Begin
      // PrintLO(mtMarkedRowsKeyField.AsInteger) ;
      S.Add(mtMarkedRowsKeyField.AsString);
      mtMarkedRows.Next;
    End;
    if S.Count > 0 then
      S.SaveToFile(Mapp + 'Lastorder.TXT');
  Finally
    S.Free;
  End;
End;

procedure TfrmLoadOrder.acAddMarkedLOToSyncFileExecute(Sender: TObject);
Var
  Mapp: String;
begin
  // Lägg markerade LOnr till filen LastOrder.txt
  Mapp := dmsSystem.Get_A_Value_From_UserDir('LastOrder.txt', 'ExportDir');
  if Mapp = '**' then
  Begin
    if cxShellBrowserDialog1.Execute then
    Begin
      Mapp := IncludeTrailingBackslash(cxShellBrowserDialog1.Path);
      dmsSystem.Save_A_Value_To_UserDir('LastOrder.txt', Mapp, 'ExportDir');
    End
    else
      Mapp := '**';
  End;
  if Mapp <> '**' then
    AddMarkedLOToFile(Sender, Mapp, False);
end;

procedure TfrmLoadOrder.cxShellListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  // FileNamePath:= Item.Caption ;
  if (Selected) and (Item <> nil) then
  Begin
    FileName := Item.Caption;
    if Pos('txt', FileName) = 0 then
      FileName := FileName + '.txt';
  End;
end;

procedure TfrmLoadOrder.teReferensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  With dmcOrder do
  Begin
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    Try
      // teSearchLONo.Text:= IntToStr(dmcOrder.GetLONoForLoadNo (StrToIntDef(Trim(teSearchLoadNo.Text),0))) ;
      GetOneLO(Sender);
      // cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[])
      if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text), 0))
      then;
      Timer3.Enabled := True;
    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName :=
        'indexSupplierShipPlanObjectNo';
      teReferens.Text := '';
    End;
  End; // with

end;

procedure TfrmLoadOrder.GoToLONo(Sender: TObject);
Begin
  With dmcOrder do
  Begin
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    Try
      teSearchLONo.Text := mtImportedLoadsLONo.AsString;
      teSearchLoadNo.Text := mtImportedLoadsLoadNo.AsString;
      GetOneLO(Sender);
      ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);
      // if cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[]) then
      if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text), 0)) then
        acOpenLoadExecute(Sender);
      teSearchLONo.Text := '';
      teSearchLoadNo.Text := '';
    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName :=
        'indexSupplierShipPlanObjectNo';
    End;
  End; // with
End;

procedure TfrmLoadOrder.acSaveBookingExecute(Sender: TObject);
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

procedure TfrmLoadOrder.acSaveBookingUpdate(Sender: TObject);
begin
  acSaveBooking.Enabled := not DataSaved;
end;

procedure TfrmLoadOrder.acPrintmenyExecute(Sender: TObject);
begin
  pmPrint.Popup(300, 200);
end;

procedure TfrmLoadOrder.grdFSDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  LoadAR, PackageEntryOption: Integer;
  AColumn: TcxCustomGridTableItem;
begin
  // LoadAR
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('LoadAR');
  LoadAR := ARecord.Values[AColumn.Index];

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('PackageEntryOption').Index] <> null then
  Begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName
      ('PackageEntryOption');
    PackageEntryOption := ARecord.Values[AColumn.Index];
  End
  else
    PackageEntryOption := 0;

  // Set the color to Yellow if AR
  if (LoadAR = 1) then
    AStyle := cxStyle1clYellow;

  if PackageEntryOption > 0 then
    AStyle := cxStyle1Red;
end;

procedure TfrmLoadOrder.acPkgsUsedByVidaPackagingExecute(Sender: TObject);
var
  fPickVPPkgs: TfPickVPPkgs;
begin
  With dmcOrder do
  Begin
    fPickVPPkgs := TfPickVPPkgs.Create(Nil);
    Try
     if (cdsSawmillLoadOrders.Active) and (cdsSawmillLoadOrders.RecordCount > 0)
     and (cdsSawmillLoadOrdersSupplier.AsInteger > 0) then
      Begin
        fPickVPPkgs.VerkNo            := cdsSawmillLoadOrdersSupplier.AsInteger ;
        fPickVPPkgs.LONo              := cdsSawmillLoadOrdersLONumber.AsInteger;
        fPickVPPkgs.LabelLONr.Caption := cdsSawmillLoadOrdersLONumber.AsString;
      End
       else
        fPickVPPkgs.VerkNo  := ThisUser.CompanyNo ;

      if fPickVPPkgs.ShowModal = mrOK then
      Begin
        Application.ProcessMessages;
//        InsertSelectedPkgNos(Sender);
//        acSaveLoadExecute(Sender);
      End;
    Finally
      FreeAndNil(fPickVPPkgs); // .Free ;
    End;
  End; // with

//  if mePackageNo.Enabled then
//    mePackageNo.SetFocus;
end;

procedure TfrmLoadOrder.acPrintFSMisMatchExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
  Save_Cursor: TCursor;
begin
  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1
  then
    Exit;
  if uReportController.useFR then begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }

    Params := TCMParams.Create();
    Params.Add('@Language', ThisUser.LanguageID);
    Params.Add('@LoadNo',
      grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger);

    RC := TCMReportController.Create;

    Try
      RepNo := 655; // TALLY_VER3_NOTE_MM.fr3 (655)
      RC.RunReport(RepNo, Params, frPreview, 0);
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
        .AsInteger;
      FormCRViewReport.CreateCo('TALLY_VER3_NOTE_MM.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger;
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

procedure TfrmLoadOrder.teSearchLONoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  With dmcOrder do
  Begin
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    Try
      GetOneLO(Sender);
      Timer1.Enabled := True;
      teSearchLONo.Text := '';
    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName :=
        'indexSupplierShipPlanObjectNo';
    End;
  End; // with
end;

procedure TfrmLoadOrder.teSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  With dmcOrder do
  Begin
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    Try
      teSearchLONo.Text :=
        IntToStr(dmcOrder.GetLONoForLoadNo
        (StrToIntDef(Trim(teSearchLoadNo.Text), 0)));
      GetOneLO(Sender);
      // cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[])
      if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text), 0))
      then;
      Timer2.Enabled := True;
    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName :=
        'indexSupplierShipPlanObjectNo';
      teSearchLoadNo.Text := '';
    End;
  End; // with
end;

procedure TfrmLoadOrder.acSearchExecute(Sender: TObject);
Var
  LONr: Integer;
begin
  LONr := 0;
  OpenLoadOrderSearch(LONr);
  Application.ProcessMessages;
  if LONr > 0 then
  Begin
    teSearchLONo.Text := IntToStr(LONr);
    GetOneLO(Sender);
  End;
end;

procedure TfrmLoadOrder.bTestLoggClick(Sender: TObject);
begin
  dmsSystem.FDoLog('Fel');
end;

procedure TfrmLoadOrder.acBytMellanBTBochBTHExecute(Sender: TObject);
Var
  NewNo: Integer;
begin
  if (dmcOrder.cds_PropsVerkNo.AsInteger = 172) OR
    (dmcOrder.cds_PropsVerkNo.AsInteger = 2878) then
  Begin
    if (dmcOrder.cds_PropsVerkNo.AsInteger = 172) then
      NewNo := 2878
    else
      NewNo := 172;

    // cbSupplier.Properties.OnChange:= Nil ;
    // Try

    dmcOrder.cds_Props.Edit;
    dmcOrder.cds_PropsVerkNo.AsInteger := NewNo;
    dmcOrder.cds_Props.Post;

    { For x:= 0 to cbSupplier.Properties.Items.Count -1 do
      if NewNo = integer(cbSupplier.Properties.Items.Objects[x]) then
      Begin
      cbSupplier.ItemIndex:= x ;
      dmcOrder.SupplierNo:= integer(cbSupplier.Properties.Items.Objects[x]);
      End ;
      Finally
      cbSupplier.Properties.OnChange  := cbSupplierPropertiesCloseUp ;
      End ; }
  End; // if..
end;

// Läser in en fil och skapar en last
{
  procedure TfrmLoadOrder.CreateLoadAndEntryTo_Load_Imp(const L_SupplierNo, LONo,
    TempLoadNo: Integer; const Fil, Mapp: String);
  Var
    S: TStringList;
    SPN, EgnaPaket, LoadID, FS, Prefix: String;
    x, PkgNo, NewLoadNo, SupplierNo, ProductNo: Integer;
    AntalPaket: Integer;

    procedure DeleteTempPkg;
    Begin
      with dmsSystem do
      Begin
        Try
          sq_DelTempPkg.ParamByName('UserID').AsInteger := ThisUser.UserID;
          sq_DelTempPkg.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;
    End;

    procedure AddPkgToTempTable;
    Begin
      with dmsSystem do
      Begin
        Try
          if dmcOrder.PkgStatus(L_SupplierNo, PkgNo, Prefix) = False then
            Prefix := '???';

          sq_InsTempPkg.ParamByName('UserID').AsInteger := ThisUser.UserID;
          sq_InsTempPkg.ParamByName('PackageNo').AsInteger := PkgNo;
          sq_InsTempPkg.ParamByName('SupplierCode').AsString := Prefix;
          // sq_InsTempPkg.ParamByName('SupplierNo').AsInteger   := L_SupplierNo ;
          sq_InsTempPkg.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
      End;
    End;

  // CreateLoadAndEntryTo_Load_Imp
  Begin
    // Mapp := dmsSystem.Get_A_Value_From_UserDir('LastOrder.txt', 'ExportDir') ;
    S := TStringList.Create;

    Try
      DeleteTempPkg;
      S.LoadFromFile(Mapp + Fil);
      if S.Count > 0 then
        EgnaPaket := S.Strings[0];
      if S.Count > 1 then
        LoadID := S.Strings[1];
      if S.Count > 2 then
        FS := S.Strings[2];
      AntalPaket := S.Count - 3;
      For x := 3 to S.Count - 1 do
      Begin
        if Length(S.Strings[x]) > 10 then
        Begin
          Prefix := dmsContact.GetSuppliercodeByPktLevKod
            (Copy(S.Strings[x], 12, 2));
          PkgNo := StrToIntDef(Copy(S.Strings[x], 14, 6), 0);
          if Prefix = 'BTH' then
          Begin
            // Om "BTH" inte finns i lagret som en produkt i LO then använd "BH1"
            Prefix := dmcOrder.CheckIfChangeToPrefix_BH1(PkgNo, L_SupplierNo,
              L_SupplierNo, LONo, Prefix);
          End;
        End // if Length(S.Strings[x]) > 10 then
        else
        Begin
          SPN := '';
          SPN := S.Strings[x];
          if Length(SPN) = 8 then // Första 2 siffror är prefixet.
          Begin
            Prefix := dmsContact.GetSuppliercodeByPktLevKod(Copy(SPN, 1, 2));
            PkgNo := StrToIntDef(Copy(SPN, 3, 6), 0);
            // Prefix := dmcOrder.CheckIfChangeToPrefix_BH1(PkgNo, L_SupplierNo, L_SupplierNo, LONo, Prefix) ;
          End
          else
          Begin
            PkgNo := StrToIntDef(SPN, 0);
            // Paket produkt måste finnas i LO rad
            Prefix := dmsSystem.PkgNoToSuppCodeImportedPkg(PkgNo, L_SupplierNo,
              L_SupplierNo, LONo, SupplierNo, ProductNo);
            // Om inte Paket produkt finns i LO rad then hämta in paketnr som matchar.
            if Length(Prefix) = 0 then
              Prefix := dmsSystem.PkgNoToSuppCodeImportedPkg(PkgNo, L_SupplierNo,
                L_SupplierNo, -1, SupplierNo, ProductNo);
            // Prefix := dmsContact.GetClientCode(L_SupplierNo) ;
          End;
          // if EgnaPaket = '1' then
          // Prefix:= dmsContact.GetPrefixByClientNo(L_SupplierNo)
          // else
        End; // Else
        if Length(Prefix) = 0 then
          Prefix := '???';
        if (PkgNo > 0) AND (Length(Prefix) > 0) then
          AddPkgToTempTable;
      End; // For x

      dmsConnector.StartTransaction;
      try
        NewLoadNo := dmsSystem.NewLoad(L_SupplierNo, ThisUser.UserID, LONo,
          LoadID, FS);
        dmsSystem.InsLoad_Imp(TempLoadNo, NewLoadNo, LONo, AntalPaket);


        dmsConnector.Commit;
      except
        dmsConnector.Rollback;
        raise;
      end;

      dmsSystem.cds_Load_Imp.Active := False;
      dmsSystem.cds_Load_Imp.ParamByName('UserID').AsInteger := ThisUser.UserID;
      dmsSystem.cds_Load_Imp.Active := True;

    Finally
      S.Free;
    End;
  End;
}

procedure TfrmLoadOrder.acOpenFSExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    dmcOrder.cdsSawmillLoadOrders.IndexName := 'cdsSawmillLoadOrdersLONo';
    Try
      teSearchLONo.Text := dmsSystem.cds_Load_ImpLONo.AsString;
      teSearchLoadNo.Text := dmsSystem.cds_Load_ImpLoadNo.AsString;
      GetOneLO(Sender);
      ShowLoadsForLO(cdsSawmillLoadOrdersLONumber.AsInteger);
      // if cdsLoadsForLO.Locate('LoadNo',StrToIntDef(Trim(teSearchLoadNo.Text),0),[]) then
      if dmcOrder.FindLoadRecord(StrToIntDef(Trim(teSearchLoadNo.Text), 0)) then
        acOpenLoadExecute(Sender)
      else
        ShowMessage('Load number ' + teSearchLoadNo.Text + ' cannot be found.');
      teSearchLONo.Text := '';
      teSearchLoadNo.Text := '';
    Finally
      dmcOrder.cdsSawmillLoadOrders.IndexName :=
        'indexSupplierShipPlanObjectNo';
    End;
  End; // with
end;

procedure TfrmLoadOrder.acPrintLOListExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 2);
    A[0] := -1;
    A[1] := ThisUser.UserID;
    FormCRViewReport.CreateCo('LO_HH.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadOrder.acAddLOnoToSendListExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    cds_LOListHH.Insert;
    cds_LOListHHSSPNo.AsInteger :=
      cdsSawmillLoadOrdersSupplierShipPlanObjectNo.AsInteger;
    cds_LOListHHLONo.AsInteger := cdsSawmillLoadOrdersLONumber.AsInteger;
    cds_LOListHH.Post;
    if cds_LOListHH.State in [dsEdit, dsInsert] then
      cds_LOListHH.Post;
    if cds_LOListHH.ChangeCount > 0 then
    Begin
      cds_LOListHH.ApplyUpdates(0);
      cds_LOListHH.CommitUpdates;
    End;
  End;
end;

procedure TfrmLoadOrder.acAddLOnoToSendListUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acAddLOnoToSendList.Enabled := (cdsSawmillLoadOrders.Active) and
      (cdsSawmillLoadOrders.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acAddMarkedLONoToSendListUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acAddMarkedLONoToSendList.Enabled := (cdsSawmillLoadOrders.Active) and
      (cdsSawmillLoadOrders.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acSendLoadOrderNoToHHUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acSendLoadOrderNoToHH.Enabled := (cds_LOListHH.Active) and
      (cds_LOListHH.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acRemoveLOHHRowExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    cds_LOListHH.Delete;
    if cds_LOListHH.State in [dsEdit, dsInsert] then
      cds_LOListHH.Post;
    if cds_LOListHH.ChangeCount > 0 then
    Begin
      cds_LOListHH.ApplyUpdates(0);
      cds_LOListHH.CommitUpdates;
    End;
  End;
end;

procedure TfrmLoadOrder.acRemoveALLLOHHRowsExecute(Sender: TObject);
begin
  With dmcOrder do
  Begin
    cds_LOListHH.First;
    While not cds_LOListHH.Eof do
      cds_LOListHH.Delete;

    if cds_LOListHH.ChangeCount > 0 then
    Begin
      cds_LOListHH.ApplyUpdates(0);
      cds_LOListHH.CommitUpdates;
    End;
  End;
end;

procedure TfrmLoadOrder.acRemoveLOHHRowUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acRemoveLOHHRow.Enabled := (cds_LOListHH.Active) and
      (cds_LOListHH.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acRemoveALLLOHHRowsUpdate(Sender: TObject);
begin
  With dmcOrder do
  Begin
    acRemoveALLLOHHRows.Enabled := (cds_LOListHH.Active) and
      (cds_LOListHH.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acDeleteALLLoad_ImpExecute(Sender: TObject);
begin
  if MessageDlg('Vill du ta alla rader?', mtConfirmation,
    [mbYes, mbNo, mbCancel], 0) = mrYes then
    With dmsSystem do
    Begin
      While not cds_Load_Imp.Eof do
        cds_Load_Imp.Delete;
      if cds_Load_Imp.ChangeCount > 0 then
      Begin
        cds_Load_Imp.ApplyUpdates(0);
        cds_Load_Imp.CommitUpdates;
      End;
    End;
end;

procedure TfrmLoadOrder.acDeleteLoad_ImpUpdate(Sender: TObject);
begin
  With dmsSystem do
  Begin
    acDeleteLoad_Imp.Enabled := (cds_Load_Imp.Active) and
      (cds_Load_Imp.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acDeleteALLLoad_ImpUpdate(Sender: TObject);
begin
  With dmsSystem do
  Begin
    acDeleteALLLoad_Imp.Enabled := (cds_Load_Imp.Active) and
      (cds_Load_Imp.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.acOpenFSUpdate(Sender: TObject);
begin
  With dmsSystem do
  Begin
    acOpenFS.Enabled := (cds_Load_Imp.Active) and
      (cds_Load_Imp.RecordCount > 0);
  End;
end;

procedure TfrmLoadOrder.grdLoad_ImpDBTableView1CellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  acOpenFSExecute(Sender);
end;

procedure TfrmLoadOrder.acEmailaFSExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
  ExportFile: string;
  Lang: integer;
begin
  Lang := dmsContact.Client_Language
        (dmcOrder.cdsSawmillLoadOrdersCSH_CustomerNo.AsInteger);
  if (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger > 0) and
    (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.IsNull = False) then
    MailToAddress := dmsContact.GetEmailAddress
      (dmcOrder.cdsSawmillLoadOrdersCHCustomerNo.AsInteger)
  else
    MailToAddress := dmsContact.GetEmailAddress
      (dmcOrder.cdsSawmillLoadOrdersSPCustomerNo.AsInteger);
  if Length(MailToAddress) = 0 then Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Email address is missing, please enter the address direct in the mail(outlook)');
  End;
  if Length(MailToAddress) > 0 then begin
    if grdLODBTableView1.DataController.DataSet.FieldByName('ObjectType')
      .AsInteger <> 2 then
      ReportType := cFoljesedelIntern // TALLY_INTERNAL_VER3_NOTE.fr3 (55)
    else Begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger; // dmcOrder.cdsLoadsForLOLoadNo.AsInteger ;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
      if Lang = cSwedish then
        ReportType := cFoljesedel // TALLY_VER3_NOTE.fr3 (43)
      else
        ReportType := cFoljesedel_eng; // TALLY_eng_VER3_NOTE.fr3 (56)
    end;


    if uReportController.useFR then begin
      ExportFile := ExcelDir + 'FS ' + grdFSDBTableView1.DataController.DataSet.
          FieldByName('LoadNo').AsString;
      Params := TCMParams.Create();
      Params.Add('@Language', Lang);
      Params.Add('@LoadNo',
        grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
        .AsInteger);
      // dmcOrder.cdsLoadsForLOLoadNo.AsInteger ;

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
    else begin
      FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
          .AsInteger; // dmcOrder.cdsLoadsForLOLoadNo.AsInteger ;

        FormCRExportOneReport.CreateCo(1, ReportType, A,
          ExcelDir + 'FS ' + grdFSDBTableView1.DataController.DataSet.
          FieldByName('LoadNo').AsString);
        // dmcOrder.cdsLoadsForLOLoadNo.AsString) ;

        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    End;
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'FS ' + grdFSDBTableView1.DataController.DataSet.
      FieldByName('LoadNo').AsString + '.pdf';
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Följesedel. FSnr: ' +
        grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsString,
        'Följesedel bifogad. ' + LF + '' + 'Load tally attached. ' + LF + '' +
        LF + '' + LF + 'MVH/Best Regards, ' + LF + '' +
        dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Email address is missing.');
end;

procedure TfrmLoadOrder.grdLODBTableView1DblClick(Sender: TObject);
begin
  acPrintLOStatusExecute(Sender);
end;

procedure TfrmLoadOrder.Button1Click(Sender: TObject);
begin
  With dmcOrder do
  Begin

    if cdsSawmillLoadOrders.ChangeCount > 0 then
    Begin
      cdsSawmillLoadOrders.ApplyUpdates(0);
      cdsSawmillLoadOrders.CommitUpdates;
    End;
  End;
end;

procedure TfrmLoadOrder.OpenNormalLoad(Sender: TObject);
Var
  LSupplierNo: Integer;
  ReservedByUser: String;
begin
  if (grdFSDBTableView1.DataController.DataSet.Active) and
    (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) then
  Begin
    // dmcOrder.SupplierNo är valt företag i droplistan
    // Endast vidawood användare kan välja ett annat än sitt eget företag
    // Väljer en vida wood användare ett annat företag används LO.supplierNo som supplier till last form.
    if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then // = VIDA_WOOD_COMPANY_NO then
      LSupplierNo := grdLODBTableView1.DataController.DataSet.FieldByName
        ('Supplier').AsInteger
    else // dmcOrder.SupplierNo kan vara tex en lego
      LSupplierNo := dmcOrder.SupplierNo;

    if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo')
      .AsInteger < 1 then
      Exit;
    // LM CheckIfChangesUnSaved(Sender) ;

    // TfLoadEntrySSP.Guid := dmsSystem.CreateGuid ;

    // LM ReservedByUser := dmsSystem.Load_Reserved(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger) ;

    if Length(ReservedByUser) > 0 then
    begin
      ShowMessage('Cannot open, Load is locked by user ' + ReservedByUser);
      Exit;
    end;

    LockWindowUpdate(grdFS.Handle);
    try
      // LoadBM := grdLoads.DataSource.DataSet.Bookmark;
      try
        with TfLoadEntrySSP.CreateWithExistingLoad(Self,
          // om användaren är vida wood skall supplierno vara LOens supplierno
          // då är det ingen risk att fel lager väljs
          // dmcOrder.SupplierNo,
          LSupplierNo, grdFSDBTableView1.DataController.DataSet.FieldByName
          ('LoadNo').AsInteger,
          grdLODBTableView1.DataController.DataSet.FieldByName('OrderType')
          .AsInteger, grdLODBTableView1.DataController.DataSet.FieldByName
          ('LoadingLocationNo').AsInteger,
          grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo')
          .AsInteger, grdFSDBTableView1.DataController.DataSet.FieldByName
          ('SupplierNo').AsInteger,
          grdLODBTableView1.DataController.DataSet.FieldByName('SPCustomerNo')
          .AsInteger) do
          try
            ShowModal;
            Application.ProcessMessages;
            // AddLoadNoToList(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
            // grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger);

            dmcOrder.ShowLoadsForLO
              (grdLODBTableView1.DataController.DataSet.FieldByName
              ('ShippingPlanNo').AsInteger);
          finally
            Free
          end;
      finally
        try
          // grdLoads.DataSource.DataSet.Bookmark := LoadBM;
        except
          on E: Exception do
            { Nothing };
        end;
      end;
    finally
      LockWindowUpdate(0);
    end;
  End; // if..
end;

(*

  procedure TfrmLoadOrder.OpenNormalLoad(Sender: TObject);
  Var LSupplierNo     : Integer ;
  ReservedByUser  : String ;
  begin
  if (grdFSDBTableView1.DataController.DataSet.Active) and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) then
  Begin
  //dmcOrder.SupplierNo är valt företag i droplistan
  //Endast vidawood användare kan välja ett annat än sitt eget företag
  //Väljer en vida wood användare ett annat företag används LO.supplierNo som supplier till last form.
  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
  LSupplierNo:= grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger
  else //dmcOrder.SupplierNo kan vara tex en lego
  LSupplierNo:= dmcOrder.SupplierNo ;

  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then
  Exit ;
  //LM CheckIfChangesUnSaved(Sender) ;

  // TfLoadEntrySSP.Guid := dmsSystem.CreateGuid ;

  //LM ReservedByUser := dmsSystem.Load_Reserved(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger) ;

  if Length(ReservedByUser) > 0 then
  begin
  ShowMessage('Cannot open, Load is locked by user ' + ReservedByUser) ;
  Exit ;
  end;


  LockWindowUpdate(grdFS.Handle);
  try
  //    LoadBM := grdLoads.DataSource.DataSet.Bookmark;
  try
  with TfLoadEntrySSP.CreateWithExistingLoad(
  Self,
  //om användaren är vida wood skall supplierno vara LOens supplierno
  //då är det ingen risk att fel lager väljs
  //dmcOrder.SupplierNo,
  LSupplierNo,
  grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('LoadingLocationNo').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo').AsInteger,
  grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('SPCustomerNo').AsInteger
  ) do try
  ShowModal;
  Application.ProcessMessages ;
  //       AddLoadNoToList(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
  //       grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger);

  //LM       dmcOrder.ShowLoadsForLO(grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger) ;
  finally
  Free
  end;
  finally
  try
  //        grdLoads.DataSource.DataSet.Bookmark := LoadBM;
  except
  on E:Exception do
  {Nothing};
  end;
  end;
  finally
  LockWindowUpdate(0);
  end;
  End ;//if..
  end;

*)

(*
  procedure TfrmLoadOrder.OpenUtlastningsSpec(Sender: TObject);
  Var LSupplierNo     : Integer ;
  ReservedByUser  : String ;
  begin
  if (grdFSDBTableView1.DataController.DataSet.Active) and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) then
  Begin
  //dmcOrder.SupplierNo är valt företag i droplistan
  //Endast vidawood användare kan välja ett annat än sitt eget företag
  //Väljer en vida wood användare ett annat företag används LO.supplierNo som supplier till last form.
  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
  LSupplierNo:= grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger
  else //dmcOrder.SupplierNo kan vara tex en lego
  LSupplierNo:= dmcOrder.SupplierNo ;

  if grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger < 1 then
  Exit ;
  CheckIfChangesUnSaved(Sender) ;

  ReservedByUser := dmsSystem.Load_Reserved(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger) ;

  if Length(ReservedByUser) > 0 then
  begin
  ShowMessage('Cannot open, Load is locked by user ' + ReservedByUser) ;
  Exit ;
  end;

  LockWindowUpdate(grdFS.Handle);
  try
  //    LoadBM := grdLoads.DataSource.DataSet.Bookmark;
  try
  with TfLoadEntrySSPTemp.CreateWithExistingLoad(
  Self,
  //om användaren är vida wood skall supplierno vara LOens supplierno
  //då är det ingen risk att fel lager väljs
  //dmcOrder.SupplierNo,
  LSupplierNo,
  grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('LoadingLocationNo').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('CSH_CustomerNo').AsInteger,
  grdFSDBTableView1.DataController.DataSet.FieldByName('SupplierNo').AsInteger,
  grdLODBTableView1.DataController.DataSet.FieldByName('SPCustomerNo').AsInteger
  ) do try
  ShowModal;
  Application.ProcessMessages ;
  //       AddLoadNoToList(grdFSDBTableView1.DataController.DataSet.FieldByName('LoadNo').AsInteger,
  //       grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger);
  //       dmcOrder.ShowLoadsForLO(grdLODBTableView1.DataController.DataSet.FieldByName('ShippingPlanNo').AsInteger) ;
  finally
  Free
  end;
  finally
  try
  //        grdLoads.DataSource.DataSet.Bookmark := LoadBM;
  except
  on E:Exception do
  {Nothing};
  end;
  end;
  finally
  LockWindowUpdate(0);
  end;
  End ;//if..
  end;
*)
procedure TfrmLoadOrder.SetCheckComboBoxes_Where_PktNrLevKod_Required
  (const VerkNo: Integer);
Begin
  With dmcOrder do
  Begin
    ccbKV2.Properties.Items.Clear;
    sp_grade.ParamByName('@VerkNo').AsInteger        := VerkNo ;
    sp_grade.ParamByName('@LanguageCode').AsInteger  := ThisUser.LanguageID ;
    sp_grade.Active := True;
    While not sp_grade.Eof do
    Begin
      ccbKV2.Properties.Items.AddCheckItem(sp_grade.FieldByName('gradeName')
        .AsString, sp_grade.FieldByName('gradecode').AsString);
      sp_grade.Next;
    End;
    sp_grade.Active := False;

    ccbSU2.Properties.Items.Clear;
    sq_Surfacing.ParamByName('VerkNo').AsInteger        := VerkNo;
    sq_Surfacing.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
    sq_Surfacing.Open;
    While not sq_Surfacing.Eof do
    Begin
      ccbSU2.Properties.Items.AddCheckItem
        (sq_Surfacing.FieldByName('SurfacingName').AsString,
        sq_Surfacing.FieldByName('SurfacingCode').AsString);
      sq_Surfacing.Next;
    End;
    sq_Surfacing.Close;

    { ccbIMP.Properties.Items.Clear ;
      ccbIMP.Properties.BeginUpdate ;
      Try
      sq_PC2.ParamByName('VerkNo').AsString  := VerkNo ;
      sq_PC2.Active := True ;
      sq_PC2.First ;
      While not sq_PC2.Eof do
      Begin
      //   ccbIMP.Properties.Items.Add.Description  := sq_PC2.FieldByName('ProductCategoryName').AsString ;
      ccbIMP.Properties.Items.AddCheckItem(sq_PC2.FieldByName('ProductCategoryName').AsString, sq_PC2.FieldByName('ImpCode').AsString) ;
      sq_PC2.Next ;
      End ;
      sq_PC2.Active := False ;
      Finally
      ccbIMP.Properties.EndUpdate ;
      End ; }

    ccKund.Properties.Items.Clear;
    sq_Kund.ParamByName('VerkNo').AsInteger := VerkNo;
    sq_Kund.Open;
    While not sq_Kund.Eof do
    Begin
      ccKund.Properties.Items.AddCheckItem(sq_Kund.FieldByName('ClientName')
        .AsString, sq_Kund.FieldByName('ClientNo').AsString);
      sq_Kund.Next;
    End;
    sq_Kund.Close;

    ccLand.Properties.Items.Clear;
    sq_Land.ParamByName('VerkNo').AsInteger := VerkNo;
    sq_Land.Open;
    While not sq_Land.Eof do
    Begin
      ccLand.Properties.Items.AddCheckItem(sq_Land.FieldByName('CountryName')
        .AsString, sq_Land.FieldByName('CountryNo').AsString);
      sq_Land.Next;
    End;
    sq_Land.Close;

    ccVarugrupp.Properties.Items.Clear;
    sq_varugrupp.ParamByName('LanguageCode').AsInteger  := ThisUser.LanguageID ;
    sq_varugrupp.Open;
    While not sq_varugrupp.Eof do
    Begin
      ccVarugrupp.Properties.Items.AddCheckItem
        (sq_varugrupp.FieldByName('varugruppnamn').AsString,
        sq_varugrupp.FieldByName('varugruppno').AsString);
      sq_varugrupp.Next;
    End;
    sq_varugrupp.Close;

  End; // With
End;

End.
