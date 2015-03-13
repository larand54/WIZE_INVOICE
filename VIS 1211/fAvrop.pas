unit fAvrop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  Math, StdCtrls,
  Menus, DB, DBCtrls, SqlTimSt, dxBar,
  Grids,
  DBGrids,

  Buttons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGraphics, cxMemo, cxRichEdit, cxDBRichEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel, cxCalc, cxImageComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, kbmMemTable,
  dxBarExtItems, cxCurrencyEdit, cxGridExportLink, cxLookAndFeelPainters,
  cxButtons, cxCheckBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, cxDBEdit, cxGroupBox, cxRadioGroup, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridCustomPopupMenu, cxGridPopupMenu, FireDAC.UI.Intf, FireDAC.VCLUI.Async,
  cxLookAndFeels, DBTables, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions, siComp,
  siLngLnk;

type
  TfrmAvrop = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    pLoadOrder: TPanel;
    pLoads: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    PanelAvropLoad: TPanel;
    ActionList1: TActionList;
    ac_Exit: TAction;
    ac_Booking: TAction;
    ac_MakeInvoice: TAction;
    ac_Refresh: TAction;
    imglistActions: TImageList;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbMakeInvoice: TdxBarLargeButton;
    lbBooking: TdxBarLargeButton;
    lbPrint: TdxBarLargeButton;
    ppmPrintReports: TdxBarPopupMenu;
    acPrintContract: TAction;
    acPrintLO: TAction;
    acPrintTrpOrder: TAction;
    Space: TdxBarStatic;
    bbPrintOrder: TdxBarButton;
    bbPrintLO: TdxBarButton;
    bbPrintLoad: TdxBarButton;
    bbPrintTrpOrder: TdxBarButton;
    bbTally_Ver2: TdxBarButton;
    Label1: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    eSearchLONr: TEdit;
    Label5: TLabel;
    LabelKlient: TLabel;
    pmShortCuts: TPopupMenu;
    Booking1: TMenuItem;
    Stng1: TMenuItem;
    Skapafaktura1: TMenuItem;
    Uppdatera1: TMenuItem;
    acOpenLoad: TAction;
    acNewLoad: TAction;
    acDeleteLoad: TAction;
    acChangeLoadLayout: TAction;
    Nylast1: TMenuItem;
    ppnalast1: TMenuItem;
    Label7: TLabel;
    ImageList1: TImageList;
    acPrintTallyUSNote: TAction;
    dxBarButton1: TdxBarButton;
    grdcxAvropLevel1: TcxGridLevel;
    grdcxAvrop: TcxGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    grdcxAvropDBBandedTableView1: TcxGridDBBandedTableView;
    grdcxAvropDBBandedTableView1LO: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1ORDERNUMBER: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1FROMWEEK: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1TOWEEK: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1CLIENT: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1AGENT: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1MARK: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1LENGTH: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1VOLUME: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1DESTINATION: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1KR_REF: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1ORDERNO: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1CLIENTNO: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1DESTINATIONNO: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1UNIQUERECORDNO: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1SALESREGIONNO: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1ORDERTYPE: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1STATUS: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1CurrencyNo: TcxGridDBBandedColumn;
    pmAvropGrid: TdxBarPopupMenu;
    acSetLOStatusToCancel: TAction;
    acSetLOStatusToAktiv: TAction;
    acSetLOStatusToComplete: TAction;
    acCustomizeAvropGrid: TAction;
    acAvropCollapseAll: TAction;
    acAvropExpandAll: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    acShowGroupByBox: TAction;
    dxBarButton8: TdxBarButton;
    acFitAllColumnsInAvropView: TAction;
    dxBarButton9: TdxBarButton;
    mtCompSelRows: TkbmMemTable;
    mtCompSelRowsSALESREGIONNO: TIntegerField;
    mtCompSelRowsLONo: TIntegerField;
    mtCompSelRowsClientNo: TIntegerField;
    mtCompSelRowsCurrencyNo: TIntegerField;
    acPrintFS: TAction;
    grdLoadDBTableView1: TcxGridDBTableView;
    grdLoadLevel1: TcxGridLevel;
    grdLoad: TcxGrid;
    grdLoadDBTableView1LO: TcxGridDBColumn;
    grdLoadDBTableView1LOADNO: TcxGridDBColumn;
    grdLoadDBTableView1FS: TcxGridDBColumn;
    grdLoadDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadDBTableView1INTERNAL_INVOICENO: TcxGridDBColumn;
    grdLoadDBTableView1ACT_M3: TcxGridDBColumn;
    grdLoadDBTableView1FOLJESEDEL: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleSilver: TcxStyle;
    cxStyleBlue: TcxStyle;
    grdLoadDBTableView1SenderLoadStatus: TcxGridDBColumn;
    images1616: TImageList;
    pmLoads: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    acLoadSummary: TAction;
    dxBarButton14: TdxBarButton;
    acFitAllColumnsInLoadView: TAction;
    dxBarButton15: TdxBarButton;
    acSetLoadStatusToPreliminary: TAction;
    acSetLoadStatusToComplete: TAction;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    acOpenInvoice: TAction;
    dxBarButton18: TdxBarButton;
    PanelNormalLO: TPanel;
    Panel3: TPanel;
    grdLODBTableView1: TcxGridDBTableView;
    grdLOLevel1: TcxGridLevel;
    grdLO: TcxGrid;
    grdLODBTableView1LO: TcxGridDBColumn;
    grdLODBTableView1UNIQUERECORDNO: TcxGridDBColumn;
    grdLODBTableView1SUPPLIER: TcxGridDBColumn;
    grdLODBTableView1STATUS: TcxGridDBColumn;
    grdLODBTableView1PRODUCT: TcxGridDBColumn;
    grdLODBTableView1LENGTH: TcxGridDBColumn;
    grdLODBTableView1M3: TcxGridDBColumn;
    grdLODBTableView1VOLUME: TcxGridDBColumn;
    grdLODBTableView1VOLUNIT: TcxGridDBColumn;
    grdLODBTableView1CURRENCY: TcxGridDBColumn;
    grdLODBTableView1PRICE: TcxGridDBColumn;
    grdLODBTableView1PRICEUNIT: TcxGridDBColumn;
    grdLODBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdLODBTableView1PKGCODE: TcxGridDBColumn;
    grdLODBTableView1FROMWEEK: TcxGridDBColumn;
    grdLODBTableView1TOWEEK: TcxGridDBColumn;
    grdLODBTableView1SHIPTO: TcxGridDBColumn;
    grdLODBTableView1DESTINATION: TcxGridDBColumn;
    grdLODBTableView1CUSTPLANOBJECTNO: TcxGridDBColumn;
    grdLODBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdLODBTableView1DELIVERED: TcxGridDBColumn;
    grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn;
    grdLODBTableView1KR_REF: TcxGridDBColumn;
    acPrintLastOrderDittVerk: TAction;
    acPrintLOAllaVerk: TAction;
    acChangeLOLayout: TAction;
    pmLO: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    PanelAddLO: TPanel;
    Panel2: TPanel;
    grdAddLODBTableView1: TcxGridDBTableView;
    grdAddLOLevel1: TcxGridLevel;
    grdAddLO: TcxGrid;
    grdAddLODBTableView1LO: TcxGridDBColumn;
    grdAddLODBTableView1UNIQUERECORDNO: TcxGridDBColumn;
    grdAddLODBTableView1SUPPLIER: TcxGridDBColumn;
    grdAddLODBTableView1STATUS: TcxGridDBColumn;
    grdAddLODBTableView1PRODUCT: TcxGridDBColumn;
    grdAddLODBTableView1LENGTH: TcxGridDBColumn;
    grdAddLODBTableView1M3: TcxGridDBColumn;
    grdAddLODBTableView1VOLUME: TcxGridDBColumn;
    grdAddLODBTableView1VOLUNIT: TcxGridDBColumn;
    grdAddLODBTableView1CURRENCY: TcxGridDBColumn;
    grdAddLODBTableView1PRICE: TcxGridDBColumn;
    grdAddLODBTableView1PRICEUNIT: TcxGridDBColumn;
    grdAddLODBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdAddLODBTableView1PKGCODE: TcxGridDBColumn;
    grdAddLODBTableView1FROMWEEK: TcxGridDBColumn;
    grdAddLODBTableView1TOWEEK: TcxGridDBColumn;
    grdAddLODBTableView1SHIPTO: TcxGridDBColumn;
    grdAddLODBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdAddLODBTableView1DELIVERED: TcxGridDBColumn;
    grdAddLODBTableView1CUSTOMER: TcxGridDBColumn;
    grdAddLODBTableView1KR_REF: TcxGridDBColumn;
    acFitAllColumnsInLOView: TAction;
    dxBarButton22: TdxBarButton;
    acFitAllColumnsInAddLOView: TAction;
    acPrintAddLODittVerk: TAction;
    acPrintAddLOAllaVerk: TAction;
    acChangeAddLOLayout: TAction;
    pmAddLO: TdxBarPopupMenu;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    acRefreshALL: TAction;
    acRefreshALLandNotInvoiced: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxStyleYellow: TcxStyle;
    mLog: TMemo;
    bLog: TButton;
    grdLoadDBTableView1NoOfPkgs: TcxGridDBColumn;
    grdcxAvropDBBandedTableView1LEV: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1REST: TcxGridDBBandedColumn;
    acGruppSummering: TAction;
    dxBarButton27: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    acExportToExcel: TAction;
    SaveDialog1: TSaveDialog;
    acEmailaTrpOrder: TAction;
    dxBarButton28: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    acEmailaFS: TAction;
    acEmailaLO: TAction;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    acEmailaFS_USA: TAction;
    dxBarButton31: TdxBarButton;
    Button1: TButton;
    cxlabelLoads: TcxLabel;
    ds_Props: TDataSource;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    acCopyLoadToSales: TAction;
    dxBarButton32: TdxBarButton;
    eSearchErReferens: TEdit;
    Label6: TLabel;
    acDeletePrelInvoice: TAction;
    dxBarButton33: TdxBarButton;
    acTrpOrderAvrop: TAction;
    acEmailaTrpOrderAvropDK: TAction;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    acPrintMeny: TAction;
    Skrivut1: TMenuItem;
    SkrivutlastorderAllaverk1: TMenuItem;
    Skrivutlastorderdittverk1: TMenuItem;
    LoadOrder1: TMenuItem;
    SkrivutlastorderAllaverk2: TMenuItem;
    FljesedelUSA1: TMenuItem;
    ransportOrder1: TMenuItem;
    Contract1: TMenuItem;
    ppnafaktura1: TMenuItem;
    UpdejfaktShiftF61: TMenuItem;
    grdcxAvropDBBandedTableView1Trading: TcxGridDBBandedColumn;
    grdcxAvropDBBandedTableView1SequenceNo: TcxGridDBBandedColumn;
    Timer1: TTimer;
    teSearchInvoiceNo: TcxTextEdit;
    Label8: TLabel;
    teSearchLoadNo: TcxTextEdit;
    acSetStatusToSkeppat: TAction;
    dxBarButton36: TdxBarButton;
    acChangeLOonLoad: TAction;
    dxBarButton37: TdxBarButton;
    acExpLoad: TAction;
    cxButton3: TcxButton;
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
    lcMarknad: TcxDBLookupComboBox;
    lcKund: TcxDBLookupComboBox;
    cds_PropsKund: TStringField;
    cds_PropsSR: TStringField;
    lcSR: TcxDBLookupComboBox;
    cds_PropsSaljgrupp: TStringField;
    cbNotInvoiced: TcxDBCheckBox;
    rgOrderTypeNo: TcxDBRadioGroup;
    icStatus: TcxDBImageComboBox;
    cbShowAll: TcxDBCheckBox;
    lcSaljgrupp: TcxDBLookupComboBox;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acGetPkgStatusOfHampen: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    grdcxAvropDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn;
    acNewDeliveryRequest: TAction;
    cxButton4: TcxButton;
    grdLoadDBTableView1PackageEntryOption: TcxGridDBColumn;
    cxStyleRed: TcxStyle;
    Timer2: TTimer;
    Timer3: TTimer;
    grdLoadDBTableView1INVOICE_NO: TcxGridDBColumn;
    grdLoadDBTableView1Prefix: TcxGridDBColumn;
    grdLoadDBTableView1InvoiceType: TcxGridDBColumn;
    DataSource1: TDataSource;
    cxRichEdit1: TcxRichEdit;
    DBRichEdit_InvoiceText: TDBRichEdit;
    mtOrders: TkbmMemTable;
    mtOrdersOrderNo: TIntegerField;
    cxButton5: TcxButton;
    acMovePkgsToInvAndDeleteLoad: TAction;
    siLangLinked_frmAvrop: TsiLangLinked;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure eSearchLONrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ac_ExitExecute(Sender: TObject);
    procedure ac_BookingExecute(Sender: TObject);
    procedure ac_RefreshExecute(Sender: TObject);
    procedure ac_MakeInvoiceExecute(Sender: TObject);
    procedure acPrintContractExecute(Sender: TObject);
    procedure acPrintLOExecute(Sender: TObject);
    procedure acPrintTrpOrderExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure acNewLoadExecute(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bLogClick(Sender: TObject);
    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure acSetLOStatusToCancelExecute(Sender: TObject);
    procedure acSetLOStatusToAktivExecute(Sender: TObject);
    procedure acSetLOStatusToCompleteExecute(Sender: TObject);
    procedure acCustomizeAvropGridExecute(Sender: TObject);
    procedure acAvropCollapseAllExecute(Sender: TObject);
    procedure acAvropExpandAllExecute(Sender: TObject);
    procedure acShowGroupByBoxExecute(Sender: TObject);
    procedure acFitAllColumnsInAvropViewExecute(Sender: TObject);
    procedure acSetLOStatusToCancelUpdate(Sender: TObject);
    procedure acSetLOStatusToAktivUpdate(Sender: TObject);
    procedure acSetLOStatusToCompleteUpdate(Sender: TObject);
    procedure ac_BookingUpdate(Sender: TObject);
    procedure ac_MakeInvoiceUpdate(Sender: TObject);
    procedure acPrintContractUpdate(Sender: TObject);
    procedure acPrintLOUpdate(Sender: TObject);
    procedure acPrintTrpOrderUpdate(Sender: TObject);
    procedure acPrintTallyUSNoteUpdate(Sender: TObject);
    procedure acPrintFSExecute(Sender: TObject);
    procedure acPrintFSUpdate(Sender: TObject);
    procedure grdLoadDBTableView1DblClick(Sender: TObject);
    procedure acLoadSummaryExecute(Sender: TObject);
    procedure acFitAllColumnsInLoadViewExecute(Sender: TObject);
    procedure acSetLoadStatusToPreliminaryExecute(Sender: TObject);
    procedure acSetLoadStatusToCompleteExecute(Sender: TObject);
    procedure acSetLoadStatusToPreliminaryUpdate(Sender: TObject);
    procedure acSetLoadStatusToCompleteUpdate(Sender: TObject);
    procedure acOpenInvoiceExecute(Sender: TObject);
    procedure acPrintLastOrderDittVerkExecute(Sender: TObject);
    procedure acPrintLOAllaVerkExecute(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure acFitAllColumnsInLOViewExecute(Sender: TObject);
    procedure acFitAllColumnsInAddLOViewExecute(Sender: TObject);
    procedure acPrintAddLODittVerkExecute(Sender: TObject);
    procedure acPrintAddLOAllaVerkExecute(Sender: TObject);
    procedure acChangeAddLOLayoutExecute(Sender: TObject);
    procedure acOpenLoadUpdate(Sender: TObject);
    procedure acOpenInvoiceUpdate(Sender: TObject);
    procedure grdcxAvropDBBandedTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acRefreshALLExecute(Sender: TObject);
    procedure acRefreshALLandNotInvoicedExecute(Sender: TObject);
    procedure acNewLoadUpdate(Sender: TObject);
    procedure acGruppSummeringExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acExportToExcelUpdate(Sender: TObject);
    procedure acEmailaTrpOrderExecute(Sender: TObject);
    procedure acEmailaFSExecute(Sender: TObject);
    procedure acEmailaLOExecute(Sender: TObject);
    procedure acEmailaFS_USAExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure acCopyLoadToSalesExecute(Sender: TObject);
    procedure acCopyLoadToSalesUpdate(Sender: TObject);
    procedure eSearchErReferensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acDeletePrelInvoiceExecute(Sender: TObject);
    procedure acDeletePrelInvoiceUpdate(Sender: TObject);
    procedure acTrpOrderAvropExecute(Sender: TObject);
    procedure acEmailaTrpOrderAvropDKExecute(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acEmailaLOUpdate(Sender: TObject);
    procedure acEmailaFSUpdate(Sender: TObject);
    procedure acEmailaFS_USAUpdate(Sender: TObject);
    procedure acEmailaTrpOrderUpdate(Sender: TObject);
    procedure acTrpOrderAvropUpdate(Sender: TObject);
    procedure acEmailaTrpOrderAvropDKUpdate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure teSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure teSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSetStatusToSkeppatExecute(Sender: TObject);
    procedure acChangeLOonLoadExecute(Sender: TObject);
    procedure acChangeLOonLoadUpdate(Sender: TObject);
(* LG    procedure acExpLoadExecute(Sender: TObject);
*)
    procedure acExpLoadUpdate(Sender: TObject);
    procedure cds_PropsOrderTypeNoChange(Sender: TField);
    procedure cds_PropsNewItemRowChange(Sender: TField);
    procedure acNewDeliveryRequestUpdate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure grdLoadDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acMovePkgsToInvAndDeleteLoadExecute(Sender: TObject);
    procedure acMovePkgsToInvAndDeleteLoadUpdate(Sender: TObject);
  private
    { Private declarations }
    GlobalLONo, CSDNO: Integer;
    GlobalLOErReferens, ExcelDir: String;

    // procedure OpenUtlastningsSpec ;
    procedure OpenNormalLoad;
    procedure DetermineIfInvoiceIsWithMoms;
    function CompareSelectedRows: Integer;
    function BackgroundColor(iStatus: Integer): TColor;
    Function ConvertFreightCostToCurrencyFromSEK( { Freight cost } FreightCost
      : Double; { Convert from } ToCurrencyNo: Integer): Double;
    Function ConvertFreightCostFromCurrencyToSEK( { Freight cost } FreightCost
      : Double; { Convert from } FromCurrencyNo: Integer): Double;
    procedure Summarize(Sender: TObject);
    procedure setStatus(const Value: Integer);
    // function  FindAvrop(Sender : TObject) : Boolean ;
    procedure MakeInvoice(Sender: TObject);
    procedure Refresh_Avrop(Sender: TObject; const LONo: String;
      const ErReferens: String);
    procedure BuildAvropSQL(const LONo: String; const ErReferens: String);
    procedure GetUserPrefs;
    procedure LoadUserProps(const Form: String);
    procedure SaveUserProps(const Form: String);
    function SelectAvropsNrAttSkapaSalesLoadMot(const POLONo: Integer): Integer;
    // Function  GetInvoiceDocTextByOrderNoLocal(const OrderNo : Integer) : Variant ;
  public
    { Public declarations }
    AppName: String;
    procedure CreateCo(CompanyNo: Integer);
  end;

var
  frmAvrop: TfrmAvrop;

implementation

{$R *.dfm}

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, UnitdmModule1, dmLM1, UnitBookingForm,
  UnitCRViewReport, dmcVidaInvoice, dmBooking,
  dmsVidaContact, dmcVidaSystem, UnitLoadEntryCSD, dmsVidaSystem,
  UnitCRExportOneReport, uSendMapiMail, uTradingLinkMult, uEntryField,
  uExportLoadPurpose, uWait, USelectLIPNo, uUnConnectedPackages, udmLanguage,
  udmFR, uReport, uReportController;

procedure TfrmAvrop.CreateCo(CompanyNo: Integer);
begin
  // Load column widths set last time.
  if dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdcxAvrop.Name, grdcxAvropDBBandedTableView1) = False
  then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoad.Name,
    grdLoadDBTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name,
    grdLODBTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdAddLO.Name,
    grdAddLODBTableView1) = False then;

  { dmsContact.LoadRegions(bcSalesRegions.Properties.Items);
    bcSalesRegions.Properties.Items.Insert(0,'ALLA');
    if bcSalesRegions.Properties.Items.Count > 0 then
    bcSalesRegions.ItemIndex:= 0 ;

    dmsContact.LoadMarketRegions(bcMarketRegions.Properties.Items) ;
    if bcMarketRegions.Properties.Items.Count > 0 then
    bcMarketRegions.ItemIndex:= 0 ;

    dmsContact.Load_SalesGroups(cbSalesGroup.Properties.Items) ;
    cbSalesGroup.Properties.Items.Insert(0,'ALLA') ;
    if cbSalesGroup.Properties.Items.Count > 0 then
    cbSalesGroup.ItemIndex:= 0 ; }

  // grdcxAvropDBBandedTableView1LO.SortOrder:= soAscending ;
  GetUserPrefs;
end;

procedure TfrmAvrop.LoadUserProps(const Form: String);
Var
  x: Integer;
  SalesGroup, ClientNo, MarknadNo, RegionNo: Integer;
Begin

  { ClientNo                    :=  ReadInteger ('Avrop', 'ClientNo', 0);
    MarknadNo                   :=  ReadInteger ('Avrop', 'MarknadNo', 0);
    RegionNo                    :=  ReadInteger ('Avrop', 'RegionNo', 0);
    rgOrderType.ItemIndex       :=  ReadInteger ('Avrop', 'OrderType', 0) ;
    cbFilter.Checked            :=  ReadBool ('Avrop', 'VisaAlla', False) ;
    cbLoadsNotInvoiced.Checked  :=  ReadBool ('Avrop', 'EjFakt', False) ;
    SalesGroup                  :=  ReadInteger ('Avrop', 'SalesGroup', 0); }


  dmsContact.cds_SR.Active := False ;
  dmsContact.cds_SR.ParamByName('SalesRegionNo').AsInteger  := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  dmsContact.cds_SR.Active := True ;

  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    if cds_PropsBookingTypeNo.AsInteger < 1 then
      pLoadOrder.Width := 560
    else
      pLoadOrder.Width := cds_PropsBookingTypeNo.AsInteger;
    cds_Props.Edit;
  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
    cds_PropsForm.AsString := Form;
    cds_PropsStatus.AsInteger := 1;
    cds_PropsOrderTypeNo.AsInteger := 0;
    // cds_Props.Insert ;
  End;
  // cds_PropsOrderTypeNo.AsInteger  := 0 ;
  // cds_PropsStatus.AsInteger       := 0 ;

  { SalesGroup            := cds_PropsSalesPersonNo.AsInteger ;
    ClientNo              := cds_PropsClientNo.AsInteger ;
    MarknadNo             := cds_PropsMarketRegionNo.AsInteger ;
    rgOrderType.ItemIndex := cds_PropsOrderTypeNo.AsInteger ;

    if cds_PropsNewItemRow.AsInteger = 0 then
    cbFilter.Checked:= False
    else
    cbFilter.Checked:= True ;

    RegionNo   := cds_PropsSalesRegionNo.AsInteger ;
  }

  {
    if cds_PropsVerkSupplierNo.AsInteger = 0 then
    cbLoadsNotInvoiced.Checked:= False
    else
    cbLoadsNotInvoiced.Checked:= True ;

    For x:= 0 to cbClient.Properties.Items.Count -1 do
    if integer(cbClient.Properties.Items.Objects[x]) = ClientNo then
    cbClient.ItemIndex:= x ;

    For x:= 0 to bcSalesRegions.Properties.Items.Count -1 do
    if integer(bcSalesRegions.Properties.Items.Objects[x]) = RegionNo then
    bcSalesRegions.ItemIndex:= x ;

    For x:= 0 to bcMarketRegions.Properties.Items.Count -1 do
    if integer(bcMarketRegions.Properties.Items.Objects[x]) = MarknadNo then
    bcMarketRegions.ItemIndex:= x ;

    For x:= 0 to cbSalesGroup.Properties.Items.Count -1 do
    if integer(cbSalesGroup.Properties.Items.Objects[x]) = SalesGroup then
    cbSalesGroup.ItemIndex:= x ; }
  // End ;
  // cds_Props.Active:= False ;
  Panel1.Height := Panel1.Height - 1;
  // frmAvrop.Invalidate ;
  // grdLoad.Repaint ;
End;

procedure TfrmAvrop.SaveUserProps(const Form: String);
Var
  x: Integer;
Begin
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_PropsForm.AsString := Form;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
  End
  else
    cds_Props.Edit;

  cds_PropsBookingTypeNo.AsInteger := pLoadOrder.Width;

  cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

procedure TfrmAvrop.Refresh_Avrop(Sender: TObject; const LONo: String;
  const ErReferens: String);
var
  Save_Cursor: TCursor;
begin
  With daMoLM1 do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cdsAvrop.DisableControls;
    Try
      // dsrcAvrop.OnDataChange   := nil ;
      try
        cdsAvrop.Active := False;
        BuildAvropSQL(LONo, ErReferens);
        cdsAvrop.Active := True;

        cdsNormalLO.Active := False;
        cdsNormalLO.Active := True;
        // r   if (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0) then
        RefreshLoadsAndLOs;

      Finally
        cdsAvrop.EnableControls;
      End;

    finally
      // dsrcAvrop.OnDataChange   := dsrcAvropDataChange ;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End; // with
end;

function TfrmAvrop.BackgroundColor(iStatus: Integer): TColor;
begin
  assert(iStatus in [STATUS_PRELIMINARY .. STATUS_COMPLETE], 'Invalid Status');
  case iStatus of
    { STATUS_PRELIMINARY : Result := ThisUser.clBackPreliminaryLO;
      STATUS_NEW         : Result := ThisUser.clBackNewLO;
      STATUS_REJECTED    : Result := ThisUser.clBackRejectedLO;
      STATUS_ACCEPTED    : Result := ThisUser.clBackAcceptedLO;
      STATUS_COMPLETE    : Result := ThisUser.clBackCompletedLO; }

    STATUS_PRELIMINARY:
      Result := ThisUser.clBackPreliminaryLO;
    STATUS_NEW:
      Result := $00BFFFFF;
    STATUS_REJECTED:
      Result := $00B0AAFB;
    STATUS_ACCEPTED:
      Result := $00EBFDEA;
    STATUS_COMPLETE:
      Result := $00C6FDCB;

  else
    Result := clWindow;
  end;
end;

function TfrmAvrop.CompareSelectedRows: Integer;
Var
  i, RecIDX: Integer;
  RecID: Variant;
  // BKMSafe : TBookmarkStr;
  ADATASET: TDATASET;
  Save_Cursor: TCursor;
  ClientNo, SalesRegionNo, CurrencyNo: Integer;
  ClientDiff, CurrencyDiff, SalesRegionDiff: Boolean;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  ClientDiff := False;
  CurrencyDiff := False;
  SalesRegionDiff := False;
  Result := 0;
  mtCompSelRows.Active := False;
  mtCompSelRows.Active := True;
  // with dmcOrder, dmArrivingLoads do
  Begin
    // Välj alla lastrader
    grdcxAvropDBBandedTableView1.BeginUpdate;
    grdcxAvropDBBandedTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdcxAvropDBBandedTableView1.DataController.
        DataSource.DataSet;
      // BKMSafe := ADataSet.Bookmark ;
      For i := 0 to grdcxAvropDBBandedTableView1.Controller.
        SelectedRecordCount - 1 do
      Begin
        RecIDX := grdcxAvropDBBandedTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        RecID := grdcxAvropDBBandedTableView1.DataController.
          GetRecordId(RecIDX);
        ADATASET.Locate('CustShipPlanDetailObjectNo', RecID, []);

        { ClientNo      := ADataSet.FieldByName('ClientNo').AsInteger ;
          CurrencyNo    := ADataSet.FieldByName('CurrencyNo').AsInteger ;
          SalesRegionNo := ADataSet.FieldByName('SalesRegionNo').AsInteger ; }

        if not mtCompSelRows.Locate('SalesRegionNo;LONo;ClientNo;CurrencyNo',
          VarArrayOf([ADATASET.FieldByName('SalesRegionNo').AsInteger,
          ADATASET.FieldByName('ShippingPlanNo').AsInteger,
          ADATASET.FieldByName('ClientNo').AsInteger,
          ADATASET.FieldByName('CurrencyNo').AsInteger]), []) then
        Begin
          mtCompSelRows.Insert;
          mtCompSelRowsSALESREGIONNO.AsInteger :=
            ADATASET.FieldByName('SalesRegionNo').AsInteger;
          mtCompSelRowsLONo.AsInteger := ADATASET.FieldByName('ShippingPlanNo')
            .AsInteger;
          mtCompSelRowsClientNo.AsInteger := ADATASET.FieldByName('ClientNo')
            .AsInteger;
          mtCompSelRowsCurrencyNo.AsInteger :=
            ADATASET.FieldByName('CurrencyNo').AsInteger;
          mtCompSelRows.Post;
        End;
      End; // For I...

      mtCompSelRows.First;
      ClientNo := mtCompSelRows.FieldByName('ClientNo').AsInteger;
      CurrencyNo := mtCompSelRows.FieldByName('CurrencyNo').AsInteger;
      SalesRegionNo := mtCompSelRows.FieldByName('SalesRegionNo').AsInteger;

      While not mtCompSelRows.Eof do
      Begin
        mtCompSelRows.Next;
        if ClientNo <> mtCompSelRows.FieldByName('ClientNo').AsInteger then
          ClientDiff := True;
        if CurrencyNo <> mtCompSelRows.FieldByName('CurrencyNo').AsInteger then
          CurrencyDiff := True;
        if SalesRegionNo <> mtCompSelRows.FieldByName('SalesRegionNo').AsInteger
        then
          SalesRegionDiff := True;
      End;
      Result := mtCompSelRows.RecordCount;

      if ClientDiff then
      Begin
        ShowMessage('Valda avrop måste ha samma kund/leverantör.');
        Result := -1;
      End;
      if CurrencyDiff then
      Begin
        ShowMessage('Valda avrop måste ha samma valuta.');
        Result := -1;
      End;
      if SalesRegionDiff then
      Begin
        ShowMessage('Valda avrop måste ha samma försäljningsregion.');
        Result := -1;
      End;

    Finally
      grdcxAvropDBBandedTableView1.DataController.EndLocate;
      grdcxAvropDBBandedTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
End;

procedure TfrmAvrop.MakeInvoice(Sender: TObject);
Var
  y, x: Integer;
  FreightCost: Double;
  SelectedRows, InternalInvoiceNo: Integer;
  CURRMisMatch, CustomerMisMatch, Save_Cursor: TCursor;
  DeleteTdmVidaInvoice: Boolean;
  frmInvoice: TfrmInvoice;
  cxDBRichEdit3: TDBRichEdit;
  OrderNos, LONos: TStringList;

  // For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads
  function GetTotalUnitsForLO(const FieldName: String): Double;
  Var
    NoOfUnits: Extended;
  Begin
    with dmVidaInvoice do
    begin
      Try
        Result := 0;
        NoOfUnits := 0;

        sq_GetInvoiceDetailData.Close;
        sq_GetInvoiceDetailData.ParamByName('CustomerNo').AsInteger :=
          cdsInvoiceHeadCustomerNo.AsInteger;
        // daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
        sq_GetInvoiceDetailData.ParamByName('ShippingPlanNo').AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger;
        sq_GetInvoiceDetailData.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        sq_GetInvoiceDetailData.Open;
        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            '3After sq_GetInvoiceDetailData.Open');
        While not sq_GetInvoiceDetailData.Eof do
        Begin
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              '3cdsInvoiceDetailNominalWidthINCH.AsString=' +
              cdsInvoiceDetailNominalWidthINCH.AsString);

          NoOfUnits := NoOfUnits + sq_GetInvoiceDetailData.FieldByName
            (FieldName).AsFloat;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After TempLineMet_ACT');

          sq_GetInvoiceDetailData.Next;
          y := Succ(y);
        End; // While not sq_GetInvoiceDetailData.Eof do
        sq_GetInvoiceDetailData.Close;

        Result := NoOfUnits;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    End; // with
  End;

// Fraktkostnad per LO
  Function GetTotalFraktKostnadPerLO: Double;
  Var
    TemplateUnitName: String;
    TotalUnitsPerLO: Double;
  Begin
    with dmVidaInvoice do
    begin
      Try
        Result := 0;
        // TotalAM3PerLO  := GetTotalAM3PerLO ;
        sq_GetFreightCost.Close;
        sq_GetFreightCost.ParamByName('ShippingPlanNo').AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger;
        sq_GetFreightCost.Open;
        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            'After add freight cost sq_GetFreightCost.Open');
        if (not sq_GetFreightCost.Eof) and
          (sq_GetFreightCostFreightCost.AsFloat > 0) then
        Begin
          TemplateUnitName := sq_GetFreightCostTemplateUnitName.AsString;

          if sq_GetFreightCostFreightCostCurrency.AsInteger <>
            cdsInvoiceHeadCurrencyNo.AsInteger then
          Begin
            if cdsInvoiceHeadCurrencyNo.AsInteger = 10001 { SEK } then
            Begin
              FreightCost := ConvertFreightCostFromCurrencyToSEK
                ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                { Convert from } sq_GetFreightCostFreightCostCurrency.
                AsInteger);
              FreightCost := RoundTo(FreightCost, -2);
            End
            else
            Begin
              if sq_GetFreightCostFreightCostCurrency.AsInteger <> 10001 { SEK }
              then
              Begin
                FreightCost := ConvertFreightCostFromCurrencyToSEK
                  ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                  { Convert from } sq_GetFreightCostFreightCostCurrency.
                  AsInteger);
                FreightCost := ConvertFreightCostToCurrencyFromSEK
                  ( { Freight cost } FreightCost,
                  cdsInvoiceHeadCurrencyNo.AsInteger);
              End
              else
                FreightCost := ConvertFreightCostToCurrencyFromSEK
                  ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                  cdsInvoiceHeadCurrencyNo.AsInteger);
              FreightCost := RoundTo(FreightCost, -2);
            End;
          End
          else
            FreightCost := sq_GetFreightCostFreightCost.AsFloat;

          sq_GetFreightCost.Close;

          if TemplateUnitName = 'm3 aDxaL' then
          Begin
            TotalUnitsPerLO := GetTotalUnitsForLO('M3ACTUAL');
            Result := RoundTo(TotalUnitsPerLO * FreightCost, -3);
          End
          else if TemplateUnitName = 'm3 nDxnL' then
          Begin
            TotalUnitsPerLO := GetTotalUnitsForLO('M3NOMINAL');
            Result := RoundTo(TotalUnitsPerLO * FreightCost, -2);
          End
          else if TemplateUnitName = 'Stycketal' then
          Begin
            TotalUnitsPerLO := GetTotalUnitsForLO('NOOFPIECES');
            Result := RoundTo(TotalUnitsPerLO * FreightCost, -2);
          End
          else
          // SUM
          Begin
            Result := FreightCost;
          End;

          y := Succ(y);
        End;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

(*
  procedure GetInvoiceDocTextByOrderNoLocal(const OrderNo : Integer) ;
  Var oBS : TStream   ;
  oMS : TMemoryStream ;
  Begin
  with dmVidaInvoice do
  Begin
  oMS := TMemoryStream.Create;
  Try
  sq_GetInvTexts.Close ;
  sq_GetInvTexts.ParamByName('OrderNo').AsInteger  :=  OrderNo ;
  sq_GetInvTexts.Open ;
  Try
  sq_GetInvTexts.First ;

  While not sq_GetInvTexts.Eof do
  Begin
  oBS := sq_GetInvTexts.CreateBlobStream(sq_GetInvTexts.FieldByName('DocText'), bmRead);
  try
  ShowMessage('1 oMS.Size = ' + inttostr(oMS.Size)) ;


  oMS.CopyFrom(oBS, 0);
  ShowMessage(' oBS.ToString = ' + oBS.ToString) ;
  ShowMessage('2 oMS.Size = ' + inttostr(oMS.Size)) ;
  finally
  oBS.Free;
  end;
  sq_GetInvTexts.Next ;
  End;
  Finally
  sq_GetInvTexts.Close ;
  End ;

  //  oMS.SaveToFile('C:\test\streamTest.txt');

  // Write data, collected into oMS, into FDQuery2
  //  cdsInvoiceHead.Edit; already in edit mode
  oBS := cdsInvoiceHead.CreateBlobStream(cdsInvoiceHead.FieldByName('InvoiceText'), bmWrite);
  try
  ShowMessage('3 obS.Size = ' + inttostr(obS.Size)) ;
  oBS.CopyFrom(oMS, 0);
  ShowMessage('4 obS.Size = ' + inttostr(obS.Size)) ;
  finally
  oBS.Free;
  end;
  //  cdsInvoiceHead.Post;
  finally
  oMS.Free;
  end;

  End ;//With

  End ;



  procedure GetInvoiceDocTextByOrderNoLocal_OLD(const OrderNo : Integer) ;
  Var S : AnsiString ;
  I : Integer ;
  cxDBRichEditsq_GetInvTexts  : TcxDBRichEdit ;
  Begin
  with dmVidaInvoice do
  Begin

  Try
  cxRichEdit1.Clear ;

  // for I := 0 to cxRichEdit1.Lines.Count do
  // cxRichEdit1.Lines.Clear ;

  sq_GetInvTexts.Close ;
  sq_GetInvTexts.ParamByName('OrderNo').AsInteger  :=  OrderNo ;
  sq_GetInvTexts.Open ;
  Try

  cxDBRichEditsq_GetInvTexts            := TcxDBRichEdit.Create(self);
  cxDBRichEditsq_GetInvTexts.Parent     := self ;
  cxDBRichEditsq_GetInvTexts.DataBinding.DataSource := DataSource1 ;
  cxDBRichEditsq_GetInvTexts.DataBinding.DataField  := 'DocText' ;
  cxDBRichEditsq_GetInvTexts.Width      := 900 ;

  cxDBRichEditsq_GetInvTexts.Visible    := False ;


  sq_GetInvTexts.First ;


  // cxDBRichEditsq_GetInvTexts.DataBinding.DataSource  := DataSource1 ;

  cxDBRichEditsq_GetInvTexts.Invalidate ;



  // cxDBRichEditsq_GetInvTexts.

  // if not sq_GetInvTexts.Eof then
  //  cdsInvoiceHeadInvoiceText.AsVariant  := sq_GetInvTextsDocText.AsVariant ;
  //  sq_GetInvTexts.Next ;

  While not sq_GetInvTexts.Eof do
  Begin
  for I := 0 to cxDBRichEditsq_GetInvTexts.Lines.Count - 1 do
  cxRichEdit1.Lines.Add(cxDBRichEditsq_GetInvTexts.Lines.Strings[I]) ;

  //  cxRichEdit1.Text  := cxRichEdit1.Text + sq_GetInvTextsDocText.AsVariant ;
  //  cdsInvoiceHeadInvoiceText.AsVariant  := sq_GetInvTextsDocText.AsVariant +
  //  cdsInvoiceHeadInvoiceText.AsVariant ;
  sq_GetInvTexts.Next ;
  End;

  cdsInvoiceHeadInvoiceText.AsVariant  :=  cxRichEdit1.Text ;

  { While not sq_GetInvTexts.Eof do
  Begin
  S:= sq_GetInvTextsDocText.AsAnsiString ;
  cxDBRichEdit3.Lines.Add(S) ;
  sq_GetInvTexts.Next;
  End ; }



  //  ShowMessage('Hello cdsInvoiceHeadInvoiceText');

  except
  On E: Exception do
  Begin
  dmsSystem.FDoLog(E.Message) ;
  ShowMessage(E.Message);
  Raise ;
  End ;
  end;


  finally
  sq_GetInvTexts.Close ;
  cxDBRichEditsq_GetInvTexts.Free ;
  //   cxDBRichEditsq_GetInvTexts.DataBinding.DataSource  := nil ;
  End;


  End ;//With

  End ; //end OLD


  Function GetInvoiceDocTextByOrderNoLocal_II(const OrderNo : Integer) : Variant ;
  Var S : string ;
  rtfString : ansistring ;
  stream    : TMemoryStream ;
  x : integer ;
  const
  LF = #10;
  CR = #13;
  Begin

  with dmVidaInvoice do
  Begin
  Result:= '' ;
  DBRichEdit_InvoiceText.Lines.Clear ;
  DBRichEdit_InvoiceText.Clear ;
  sq_GetInvTexts.Disconnect();

  sq_GetInvTexts.Close ;
  sq_GetInvTexts.ParamByName('OrderNo').AsInteger:= -1 ;
  sq_GetInvTexts.Open ;

  sq_GetInvTexts.Disconnect();

  sq_GetInvTexts.Close ;
  sq_GetInvTexts.ParamByName('OrderNo').AsInteger:= OrderNo ;
  sq_GetInvTexts.Open ;

  sq_GetInvTexts.First ;
  While not sq_GetInvTexts.Eof do
  Begin

  //Get the data from the database as AnsiString
  rtfString := sq_GetInvTexts.FieldByName('doctext').AsAnsiString;

  //Write the string into a stream
  stream := TMemoryStream.Create;
  Try
  stream.Clear;
  stream.Write(PAnsiChar(rtfString)^, Length(rtfString));
  stream.Position := 0;

  //Load the stream into the RichEdit
  //RichEdit2.PlainText := False;
  cxRichEdit1.Lines.LoadFromStream(stream);

  //cxRichEdit1.PlainText := False ;

  for x  := 0 to cxRichEdit1.Lines.Count - 1  do
  cxDBRichEdit3.Lines.Add(cxRichEdit1.Lines.Strings[x]) ;

  cxDBRichEdit3.PlainText  := False ;

  Finally
  stream.Free;
  End;
  sq_GetInvTexts.Next;
  End ;
  // cdsInvoiceHeadInvoiceText.AsVariant := s ;
  // richedit2.Lines.Add(S) ;
  // sq_GetInvTexts.Close ;
  End ;

  End ;
*)

  Function GetInvoiceDocTextByOrderNoLocal_III(const OrderNos,
    LONos: String): Variant;
  Var
    S, L: string;
    rtfString: ansistring;
    stream: TMemoryStream;
    x: Integer;

  const
    LF = #10;
    CR = #13;
  Begin
    with dmVidaInvoice do
    Begin
      Result := '';
      DBRichEdit_InvoiceText.Lines.Clear;
      DBRichEdit_InvoiceText.Clear;
      sq_GetInvTexts.Disconnect();

      sq_GetInvTexts.Close;
      S := '(-1)';
      L := '(-1)';
      sq_GetInvTexts.SQL.Clear;
      sq_GetInvTexts.SQL.Add('Select DT.DocText FROM');
      sq_GetInvTexts.SQL.Add('dbo.DocumentText DT');
      sq_GetInvTexts.SQL.Add
        ('Inner Join dbo.DocTypeOrder DTO on DTO.OrderNo = DT.OrderNo');
      sq_GetInvTexts.SQL.Add('AND DTO.DocTextNo =DT.DocTextNo');

      sq_GetInvTexts.SQL.Add('WHERE');
      sq_GetInvTexts.SQL.Add('DT.OrderNo in ' + S);
      sq_GetInvTexts.SQL.Add('AND DTO.DocType = 2');
      sq_GetInvTexts.SQL.Add('AND DTO.PrintOut = 1');
      sq_GetInvTexts.SQL.Add('Order by DT.SortNo');
      sq_GetInvTexts.Open;

      sq_GetInvTexts.Disconnect();
      S := '(' + OrderNos + ')';
      L := '(' + LONos + ')';
      sq_GetInvTexts.Close;
      sq_GetInvTexts.SQL.Clear;
      sq_GetInvTexts.SQL.Add('Select DT.DocText FROM');
      sq_GetInvTexts.SQL.Add('dbo.DocumentText DT');
      sq_GetInvTexts.SQL.Add
        ('Inner Join dbo.DocTypeOrder DTO on DTO.OrderNo = DT.OrderNo');
      sq_GetInvTexts.SQL.Add('AND DTO.DocTextNo = DT.DocTextNo');

      sq_GetInvTexts.SQL.Add('WHERE');
      sq_GetInvTexts.SQL.Add('DT.OrderNo in ' + S);
      sq_GetInvTexts.SQL.Add('AND DTO.DocType = 2');
      sq_GetInvTexts.SQL.Add('AND DTO.PrintOut = 1');

      sq_GetInvTexts.SQL.Add('UNION ALL');

      sq_GetInvTexts.SQL.Add('Select DT.DocText FROM');
      sq_GetInvTexts.SQL.Add('dbo.DocumentText_Avrop DT');
      sq_GetInvTexts.SQL.Add
        ('Inner Join dbo.DocTypeOrder_Avrop DTO on DTO.LONo = DT.LONo');
      sq_GetInvTexts.SQL.Add('AND DTO.DocTextNo = DT.DocTextNo');

      sq_GetInvTexts.SQL.Add('WHERE');
      sq_GetInvTexts.SQL.Add('DT.LONo in ' + L);
      sq_GetInvTexts.SQL.Add('AND DTO.DocType = 2');
      sq_GetInvTexts.SQL.Add('AND DTO.PrintOut = 1');

      // sq_GetInvTexts.SQL.Add('Order by DT.SortNo') ;

      // sq_GetInvTexts.SQL.SaveToFile('sq_GetInvTexts.txt');

      sq_GetInvTexts.Open;

      sq_GetInvTexts.First;
      While not sq_GetInvTexts.Eof do
      Begin

        // Get the data from the database as AnsiString
        rtfString := sq_GetInvTexts.FieldByName('doctext').AsAnsiString;

        // Write the string into a stream
        stream := TMemoryStream.Create;
        Try
          stream.Clear;
          stream.Write(PAnsiChar(rtfString)^, Length(rtfString));
          stream.Position := 0;

          // Load the stream into the RichEdit
          // RichEdit2.PlainText := False;
          cxRichEdit1.Lines.LoadFromStream(stream);

          // cxRichEdit1.PlainText := False ;

          for x := 0 to cxRichEdit1.Lines.Count - 1 do
            cxDBRichEdit3.Lines.Add(cxRichEdit1.Lines.Strings[x]);

          cxDBRichEdit3.PlainText := False;

        Finally
          stream.Free;
        End;
        sq_GetInvTexts.Next;
      End;
      // cdsInvoiceHeadInvoiceText.AsVariant := s ;
      // richedit2.Lines.Add(S) ;
      // sq_GetInvTexts.Close ;
    End;

  End;

  Procedure AddInvoiceText;
  Begin
    with dmVidaInvoice do
    begin
      Try
        dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange := nil;
        Try

          if cdsInvoiceHead.State in [dsBrowse] then
            cdsInvoiceHead.Edit;

          GetInvoiceDocTextByOrderNoLocal_III(OrderNos.CommaText,
            LONos.CommaText);

        Finally
          dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange :=
            dmVidaInvoice.cdsInvoiceHeadResponsibleSellerChange;
        End;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

  function ControlData: Boolean;
  Begin
    Result := True;
    with dmVidaInvoice do
    Begin
      mtCompSelRows.First;
      // While not mtCompSelRows.eof do
      // Begin
      Try
        sq_GetInvoiceHeadData.Close;
        sq_GetInvoiceHeadData.ParamByName('ShippingPlanNo').AsInteger :=
          mtCompSelRowsLONo.AsInteger; // StrToInt(LO_String[x]) ;
        sq_GetInvoiceHeadData.ParamByName('CustomerNo').AsInteger :=
          mtCompSelRowsClientNo.AsInteger;
        // daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
        sq_GetInvoiceHeadData.Open;

        if sq_GetInvoiceHeadDataPaymentText.IsNull then
        Begin
          Result := False;
          ShowMessage('Betalningsinstruktion saknas, åtgärda och prova igen.');
        End;

      Finally
        sq_GetInvoiceHeadData.Close;
      End;
      // End;
    End;
  End;

  Procedure AddInvoiceHead;
  Begin
    with dmVidaInvoice do
    begin
      Try
        dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange := nil;
        Try
          if not sq_GetInvoiceHeadData.Eof then
          Begin
            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'Before cdsInvoiceHead.Insert');
            cdsInvoiceHead.Insert;
            cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger :=
              sq_GetInvoiceHeadDataFreightIncluded.AsInteger;
            cdsInvoiceHeadIntraStatCountryNo.AsInteger :=
              sq_GetInvoiceHeadDataIntraStatCountryNo.AsInteger;
            cdsInvoiceHeadDestinationText.AsString :=
              sq_GetInvoiceHeadDataDestinationText.AsString;
            cdsInvoiceHeadResponsibleSeller.AsInteger :=
              sq_GetInvoiceHeadDataResponsibleSeller.AsInteger;
            cdsInvoiceHeadTrading.AsInteger :=
              sq_GetInvoiceHeadDataTrading.AsInteger;
            cdsInvoiceHeadQuickInvoice.AsInteger := 0;
            cdsInvoiceHeadInternalInvoiceNo.AsInteger := InternalInvoiceNo;
            // dmsConnector.NextMaxNo('InvoiceHeader'); //dmsConnector.NextIDinTable('InvoiceHeader') ;

            { if Self.cds_PropsOrderTypeNo.AsInteger = 0 then
              cdsInvoiceHeadInvoiceType.AsInteger                           := 0  //Normal invoice as default
              else
              cdsInvoiceHeadInvoiceType.AsInteger                           := 3 ; //Purhcase invoice as
            }
            cdsInvoiceHeadInvoiceType.AsInteger :=
              GetInvoiceTypeFromBinding
              (sq_GetInvoiceHeadDataSalesRegionNo.AsInteger,
              sq_GetInvoiceHeadDataOrderType.AsInteger);

            cdsInvoiceHeadDebit_Credit.AsInteger := cDebit;
            // Debit invoice as default
            cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(now);
            cdsInvoiceHeadSupplierNo.AsInteger :=
              sq_GetInvoiceHeadDataSalesRegionNo.AsInteger;
            // daMoLM1.cdsAvropSALESREGIONNO.AsInteger ;//VIDA_WOOD_CLIENTNO ; //Vida Wood mars 16 2006
            cdsInvoiceHeadCustomerNo.AsInteger :=
              sq_GetInvoiceHeadDataCustomerNo.AsInteger;
            cdsInvoiceHeadAgentNo.AsInteger :=
              sq_GetInvoiceHeadDataAgentNo.AsInteger;
            cdsInvoiceHeadAgentCommission.AsFloat :=
              sq_GetInvoiceHeadDataAgentCommission.AsFloat;
            cdsInvoiceHeadPaymentTermsNo.AsInteger :=
              sq_GetInvoiceHeadDataPaymentTermsNo.AsInteger;
            cdsInvoiceHeadCommissionPaidByCustomer.AsInteger :=
              sq_GetInvoiceHeadDataCommissionPaidByCustomer.AsInteger;
            cdsInvoiceHeadFreightInDiscount.AsInteger :=
              sq_GetInvoiceHeadDataFreightInDiscount.AsInteger;
            cdsInvoiceHeadFreightInCommission.AsInteger :=
              sq_GetInvoiceHeadDataFreightInCommission.AsInteger;
            cdsInvoiceHeadDiscount1.AsFloat :=
              sq_GetInvoiceHeadDataDiscount1.AsFloat;
            cdsInvoiceHeadCurrencyName.AsString :=
              sq_GetInvoiceHeadDataCurrencyName.AsString;

            cdsInvoiceHeadDeliveryTermsNo.AsInteger :=
              sq_GetInvoiceHeadDataDeliveryTermsNo.AsInteger;
            cdsInvoiceHeadDestinationNo.AsInteger :=
              sq_GetInvoiceHeadDataDestinationNo.AsInteger;
            cdsInvoiceHeadStatus.AsInteger := 0;
            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'before cdsInvoiceHeadInvoiceText.AsVariant');

            // GetInvoiceDocTextByOrderNoLocal_II (sq_GetInvoiceHeadDataOrderNo.AsInteger) ;

            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'after cdsInvoiceHeadInvoiceText.AsVariant');

            cdsInvoiceHeadPaymentText.AsVariant :=
              sq_GetInvoiceHeadDataPaymentText.AsVariant;

            // ShowMessage('Hello cdsInvoiceHeadInvoiceText');

            if sq_GetInvoiceHeadDataCustomerNoOH.AsInteger =
              sq_GetInvoiceHeadDataCustomerNo.AsInteger then
            Begin
              cdsInvoiceHeadPaymentDescription.AsString :=
                sq_GetInvoiceHeadDataPayDescOH.AsString;
              cdsInvoiceHeadDeliveryTerm.AsString :=
                sq_GetInvoiceHeadDataDeliveryTermOH.AsString;
            End
            else
            Begin
              cdsInvoiceHeadPaymentDescription.AsString :=
                sq_GetInvoiceHeadDataPayDesc.AsString;
              cdsInvoiceHeadDeliveryTerm.AsString :=
                sq_GetInvoiceHeadDataDeliveryTerm.AsString;
            End;

            cdsInvoiceHeadCurrencyNo.AsInteger :=
              sq_GetInvoiceHeadDataCurrencyNo.AsInteger;
            cdsInvoiceHeadIncome_Account.AsString := '';
            cdsInvoiceHeadCustomerRecivablesAccount.AsString := '';
            cdsInvoiceHeadVAT_OnInvoice.AsInteger :=
              sq_GetInvoiceHeadDataVAT_ONINVOICE.AsInteger;
            if cdsInvoiceHeadVAT_OnInvoice.AsInteger = Null then
              cdsInvoiceHeadVAT_OnInvoice.AsInteger := 0;

            cdsInvoiceHeadDestinationNo.AsInteger :=
              sq_GetInvoiceHeadDataDestinationNo.AsInteger;
            cdsInvoiceHeadClientBillingAddressNo.AsInteger :=
              sq_GetInvoiceHeadDataClientBillingAddressNo.AsInteger;
            cdsInvoiceHeadAddressName.AsString :=
              sq_GetInvoiceHeadDataBILL_ADDRESS_NAME.AsString;
            cdsInvoiceHeadAddressLine1.AsString :=
              sq_GetInvoiceHeadDataAddressLine1.AsString;
            cdsInvoiceHeadAddressLine2.AsString :=
              sq_GetInvoiceHeadDataAddressLine2.AsString;
            cdsInvoiceHeadAddressLine3.AsString :=
              sq_GetInvoiceHeadDataAddressLine3.AsString;
            cdsInvoiceHeadAddressLine4.AsString :=
              sq_GetInvoiceHeadDataAddressLine4.AsString;
            cdsInvoiceHeadStateOrProvince.AsString :=
              sq_GetInvoiceHeadDataStateOrProvince.AsString;
            cdsInvoiceHeadPostalCode.AsString :=
              sq_GetInvoiceHeadDataPostalCode.AsString;
            cdsInvoiceHeadCityName.AsString :=
              sq_GetInvoiceHeadDataAddressCity.AsString;
            cdsInvoiceHeadCountryName.AsString :=
              sq_GetInvoiceHeadDataAddressCountry.AsString;

            cdsInvoiceHeadAgentName.AsString :=
              sq_GetInvoiceHeadDataAgentName.AsString;

            cdsInvoiceHeadCustomerName.AsString :=
              sq_GetInvoiceHeadDataCustomerName.AsString;
            cdsInvoiceHeadSearchName.AsString :=
              sq_GetInvoiceHeadDataSearchName.AsString;

            cdsInvoiceHeadLanguageCode.AsInteger :=
              sq_GetInvoiceHeadDataLanguageCode.AsInteger;
            cdsInvoiceHeadDestination.AsString :=
              sq_GetInvoiceHeadDataDestination.AsString;

            cdsInvoiceHeadCreatedUser.AsInteger := ThisUser.UserID;
            cdsInvoiceHeadModifiedUser.AsInteger := ThisUser.UserID;
            cdsInvoiceHeadDateCreated.AsSQLTimeStamp :=
              DateTimeToSQLTimeStamp(now);

            cdsInvoiceHeadST_AddressName.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESS_NAME.AsString;
            cdsInvoiceHeadST_AddressLine1.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE1.AsString;
            cdsInvoiceHeadST_AddressLine2.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE2.AsString;
            cdsInvoiceHeadST_AddressLine3.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE3.AsString;
            cdsInvoiceHeadST_AddressLine4.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_ADDRESSLINE4.AsString;
            cdsInvoiceHeadST_StateOrProvince.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_PROVINCE.AsString;
            cdsInvoiceHeadST_PostalCode.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_POSTALCODE.AsString;
            cdsInvoiceHeadST_CityName.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_CITY.AsString;
            cdsInvoiceHeadST_CountryName.AsString :=
              sq_GetInvoiceHeadDataAVROP_SHIPTO_COUNTRY.AsString;

            cdsInvoiceHeadAGENT_ADDRESS_NAME.AsString :=
              sq_GetInvoiceHeadDataAGENT_ADDRESS_NAME.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE1.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE2.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE3.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_ADDRESSLINE4.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_PROVINCE.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_POSTALCODE.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_CITY.AsString;
            cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString :=
              sq_GetInvoiceHeadDataAGENT_SHIPTO_COUNTRY.AsString;
            cdsInvoiceHeadVAT.AsString := sq_GetInvoiceHeadDataVAT.AsString;
            cdsInvoiceHeadSalesOrgNo.AsString :=
              sq_GetInvoiceHeadDataSalesOrgNo.AsString;
            cdsInvoiceHeadSpecialMoms.AsInteger :=
              sq_GetInvoiceHeadDataSpecialMoms.AsInteger;
            cdsInvoiceHeadInvoiced.AsInteger := 0;

            cdsInvoiceHeadBLDueDate.AsInteger :=
              sq_GetInvoiceHeadDataSetDueDateBlank.AsInteger;
            cdsInvoiceHeadFreeDelMonth.AsInteger :=
              sq_GetInvoiceHeadDataFreeDelMonth.AsInteger;

            cdsInvoiceHeadCountryNo.AsInteger :=
              sq_GetInvoiceHeadDataBillingCountryNo.AsInteger;
            cdsInvoiceHeadSalesGroupNo.AsInteger :=
              sq_GetInvoiceHeadDataSalesGroupNo.AsInteger;

            if (cdsInvoiceHeadFreeDelMonth.AsInteger = 1) or
              (cdsInvoiceHeadBLDueDate.AsInteger = 1) then
            Begin

            End
            else
              cdsInvoiceHeadDueDate.AsDateTime :=
                GetDueDate(Date,
                sq_GetInvoiceHeadDataNoOfDaysDiscount2.AsInteger,
                sq_GetInvoiceHeadDataSetDueDateBlank.AsInteger,
                sq_GetInvoiceHeadDataFreeDelMonth.AsInteger);

            DetermineIfInvoiceIsWithMoms;

            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'Before cdsInvoiceHead.Post');
            cdsInvoiceHead.Post;
            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'After cdsInvoiceHead.Post');
            if cdsInvoiceHead.ChangeCount > 0 then
            Begin
              cdsInvoiceHead.ApplyUpdates(0);
              cdsInvoiceHead.CommitUpdates;
            End;
            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'After cdsInvoiceHead.ApplyUpdates(-1)');

          End // while sq_GetInvoiceHeadData.
          else
          Begin
            ShowMessage('Inga laster att fakturera.');
          End;
        Finally
          dmVidaInvoice.cdsInvoiceHeadResponsibleSeller.OnChange :=
            dmVidaInvoice.cdsInvoiceHeadResponsibleSellerChange;
        End;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;
    End; // with
  End;

  procedure SetBookingSupplierReference;
  Begin
    with dm_Booking, dmVidaInvoice do
    Begin
      Try
        sq_GetLoadID.ParamByName('SupplierNo').AsInteger :=
          mtCompSelRowsSALESREGIONNO.AsInteger; // VIDA_WOOD_CLIENTNO ;
        sq_GetLoadID.ParamByName('ShippingPlanNo').AsInteger :=
          mtCompSelRowsLONo.AsInteger;
        sq_GetLoadID.ParamByName('CustomerNo').AsInteger :=
          mtCompSelRowsClientNo.AsInteger; // Avrop customerNo
        sq_GetLoadID.Open;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'sq_GetLoadID.Open');

      cdsBooking.Active := False;
      cdsBooking.ParamByName('ShippingPlanNo').AsInteger :=
        mtCompSelRowsLONo.AsInteger;
      // Juli 6 2006 daMoLM1.cdsAvropShippingPlanNo.AsInteger ;
      cdsBooking.Active := True;
      Try

        if (cdsBooking.RecordCount > 0) and (sq_GetLoadID.Active) and
          (sq_GetLoadID.RecordCount > 0) and
          (Length(sq_GetLoadIDLoadID.AsString) > 0) and
          (not sq_GetLoadIDLoadID.IsNull) then
        Begin
          cdsBooking.Edit;

          cdsBookingSupplierReference.AsString := sq_GetLoadIDLoadID.AsString;
          cdsBooking.Post;
          if cdsBooking.ChangeCount > 0 then
          Begin
            cdsBooking.ApplyUpdates(0);
            cdsBooking.CommitUpdates;
          End;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'cdsBooking.ApplyUpdates(0)');
        End; // if (cdsBooking.RecordCount > 0) and (sq_GetLoadID.Active)...

      Finally
        sq_GetLoadID.Close;
        cdsBooking.Active := False;
      End;
    End; // with dm_Booking
  End; // Proc

  procedure AddLOData;
  Begin
    with dmVidaInvoice do
    begin
      Try
        SetBookingSupplierReference;

        sq_GetLOData.Close;
        sq_GetLOData.ParamByName('ShippingPlanNo').AsInteger :=
          mtCompSelRowsLONo.AsInteger;
        sq_GetLOData.ParamByName('CustomerNo').AsInteger :=
          cdsInvoiceHeadCustomerNo.AsInteger;
        sq_GetLOData.Open;
        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'sq_GetLOData.Open');

        // Insert Invoice ShippingPlanNo
        if not sq_GetLOData.Eof then
        Begin
          cdsInvoiceLO.Insert;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After cdsInvoiceLO.Insert');

          cdsInvoiceLOInternalInvoiceNo.AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger;
          cdsInvoiceLOShippingPlanNo.AsInteger := mtCompSelRowsLONo.AsInteger;
          // StrToInt(LO_String[x]) ;
          cdsInvoiceLOOrderNoText.AsString := sq_GetLODataORDERNUMBER.AsString;
          cdsInvoiceLOReference.AsString := sq_GetLODataReference.AsString;
          cdsInvoiceLOOurReference.AsString :=
            sq_GetLODataOurReference.AsString;
          cdsInvoiceLOSalesMan.AsString := sq_GetLODataSalesMan.AsString;
          cdsInvoiceLOBookingNo.AsInteger := sq_GetLODataBookingNo.AsInteger;
          cdsInvoiceLOTotalFreightCost.AsFloat := 0; // Get total freight cost
          cdsInvoiceLOFreightCostPerUnit.AsFloat := 0;
          // Get freight cost per unit
          cdsInvoiceLOInvoiceAdditionAmount.AsFloat :=
            sq_GetLODataADDITION_AMOUNT.AsFloat;
          cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger :=
            sq_GetLODataADDITION_UNITNO.AsInteger;
          cdsInvoiceLOInvoiceAdditionDescription.AsString :=
            sq_GetLODataADDITION_DESC.AsString;
          cdsInvoiceLOCreatedUser.AsInteger := ThisUser.UserID;
          cdsInvoiceLOModifiedUser.AsInteger := ThisUser.UserID;
          cdsInvoiceLODateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);

          cdsInvoiceLOCarrierName.AsString := sq_GetLODataCarrierName.AsString;
          cdsInvoiceLOETD.AsSQLTimeStamp := sq_GetLODataETD.AsSQLTimeStamp;
          cdsInvoiceLOETA.AsSQLTimeStamp := sq_GetLODataETA.AsSQLTimeStamp;
          cdsInvoiceLOShipper.AsString := sq_GetLODataShipper.AsString;
          cdsInvoiceLOTrpID.AsString := sq_GetLODataTrpID.AsString;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'Before cdsInvoiceLO.Post');
          cdsInvoiceLO.Post;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After cdsInvoiceLO.Post');

          if OrderNos.IndexOf(sq_GetLODataOrderNo.AsString) = -1 then
            OrderNos.Add(sq_GetLODataOrderNo.AsString);

          if LONos.IndexOf(mtCompSelRowsLONo.AsString) = -1 then
            LONos.Add(mtCompSelRowsLONo.AsString);
        End;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

// Lägger till en fakturarad för fraktkostnad, frakten finns specificerad i bokningen för LO nr.
  Procedure AddFreigthCost;
  Var
    TotalUnitsPerLO: Double;
  Begin
    with dmVidaInvoice do
    begin
      Try
        // GetTotalAM3ForLO ;
        sq_GetFreightCost.Close;
        sq_GetFreightCost.ParamByName('ShippingPlanNo').AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger;
        sq_GetFreightCost.Open;
        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            'After add freight cost sq_GetFreightCost.Open');
        if (not sq_GetFreightCost.Eof) and
          (sq_GetFreightCostFreightCost.AsFloat > 0) then
        Begin
          cdsInvoiceDetail.Insert;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After add freight cdsInvoiceDetail.Insert');
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After cdsInvoiceDetail.Insert');

          cdsInvoiceDetailShippingPlanNo.AsInteger :=
            cdsInvoiceLOShippingPlanNo.AsInteger;

          // Fraktkostnaden inkluderad i pris om DeliveryTerms säger så
          if cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger = 1 then
          Begin
            cdsInvoiceDetailTypeOfRow.AsInteger := 3; // Freigth cost
            cdsInvoiceDetailInclInPrice.AsInteger := 1;
            cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 0;
          End
          else
          Begin
            cdsInvoiceDetailTypeOfRow.AsInteger := 2;
            // Freigth cost not inkluded in pris
            cdsInvoiceDetailInclInPrice.AsInteger := 0;
            cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 1;
          End;

          cdsInvoiceDetailProductDescription.AsString := 'Freight Cost';
          cdsInvoiceDetailPriceUnit.AsString :=
            sq_GetFreightCostTemplateUnitName.AsString;

          if sq_GetFreightCostFreightCostCurrency.AsInteger <>
            cdsInvoiceHeadCurrencyNo.AsInteger then
          Begin
            if cdsInvoiceHeadCurrencyNo.AsInteger = 10001 { SEK } then
            Begin
              FreightCost := ConvertFreightCostFromCurrencyToSEK
                ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                { Convert from } sq_GetFreightCostFreightCostCurrency.
                AsInteger);
              cdsInvoiceDetailPrice.AsFloat := RoundTo(FreightCost, -2);
            End
            else
            Begin
              if sq_GetFreightCostFreightCostCurrency.AsInteger <> 10001 { SEK }
              then
              Begin
                FreightCost := ConvertFreightCostFromCurrencyToSEK
                  ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                  { Convert from } sq_GetFreightCostFreightCostCurrency.
                  AsInteger);
                FreightCost := ConvertFreightCostToCurrencyFromSEK
                  ( { Freight cost } FreightCost,
                  cdsInvoiceHeadCurrencyNo.AsInteger);
              End
              else
                FreightCost := ConvertFreightCostToCurrencyFromSEK
                  ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                  cdsInvoiceHeadCurrencyNo.AsInteger);
              cdsInvoiceDetailPrice.AsFloat := RoundTo(FreightCost, -2);
            End;
          End
          else
            cdsInvoiceDetailPrice.AsFloat :=
              sq_GetFreightCostFreightCost.AsFloat;

          sq_GetFreightCost.Close;

          if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxaL' then
          Begin
            TotalUnitsPerLO := GetTotalUnitsForLO('M3ACTUAL');
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -3);
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
          Begin
            TotalUnitsPerLO := GetTotalUnitsForLO('M3NOMINAL');
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -2);
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
          Begin
            TotalUnitsPerLO := GetTotalUnitsForLO('NOOFPIECES');
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -2);
          End
          else
          Begin
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailPrice.AsFloat;
          End;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'Before add freight cost cdsInvoiceDetail.Post');

          if cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger = 1 then
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat * -1
          else
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat;

          cdsInvoiceDetailArticleNo.AsInteger :=
            dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger);
          // cdsInvoiceDetailInclInPrice.AsInteger               := 1 ;
          // cdsInvoiceDetailInclInInvoiceTotal.AsInteger        := 0 ;

          cdsInvoiceDetail.Post;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After add freight cost cdsInvoiceDetail.Post');
          y := Succ(y);
        End;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

// ADD INVOICE DETAIL for an Additional costs if such exist for current ShippingPlanNo Number
  procedure AddAdditionalCost;
  Var
    TempVal: Double;

    procedure GetVolumeForAddAdditionalCost;
    Begin
      with dmVidaInvoice do
      begin
        // sq_GetPkgType_Invoice.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
        sq_GetPkgType_Invoice.ParamByName('SupplierNo').AsInteger :=
          mtCompSelRowsSALESREGIONNO.AsInteger; // VIDA_WOOD_CLIENTNO ;
        sq_GetPkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger :=
          mtCompSelRowsLONo.AsInteger;
        sq_GetPkgType_Invoice.ParamByName('CustomerNo').AsInteger :=
          mtCompSelRowsClientNo.AsInteger; // Avrop customerNo
        Try
          sq_GetPkgType_Invoice.Open;

          if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxaL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAM3.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceNM3.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
          Begin
            TempVal := sq_GetPkgType_InvoicePcs.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxnL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAdNl.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxaL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceNdAl.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Kvm aB' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAM2AW.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Lopm a' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAM1.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Lopm n' then
          Begin
            TempVal := sq_GetPkgType_InvoiceNM1.AsFloat;
          End;

        Finally
          sq_GetPkgType_Invoice.Close;
        End;
      End; // With
    End;

  // main AddAdditionalCost ;
  Begin
    with dmVidaInvoice do
    begin
      Try
        TempVal := 0;
        if (cdsInvoiceLOInvoiceAdditionAmount.AsFloat > 0) or
          (cdsInvoiceLOInvoiceAdditionAmount.AsFloat < 0) then
        Begin
          cdsInvoiceDetail.Insert;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After add cost cdsInvoiceDetail.Insert ');
          cdsInvoiceDetailShippingPlanNo.AsInteger :=
            cdsInvoiceLOShippingPlanNo.AsInteger;
          cdsInvoiceDetailTypeOfRow.AsInteger := 2; // Additional cost
          cdsInvoiceDetailPriceUnit.AsString :=
            sq_GetLODataADDITION_PRICEUNIT.AsString;
          cdsInvoiceDetailProductDescription.AsString :=
            cdsInvoiceLOInvoiceAdditionDescription.AsString;
          cdsInvoiceDetailPrice.AsFloat :=
            cdsInvoiceLOInvoiceAdditionAmount.AsFloat;
          cdsInvoiceDetailVolumeUnit.AsString :=
            cdsInvoiceLOInvoiceAdditionUnitNo.AsString; // Get unit name ;

          GetVolumeForAddAdditionalCost;

          if cdsInvoiceDetailPriceUnit.AsString = 'SUM' then
          Begin
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(cdsInvoiceDetailPrice.AsFloat, -2);
          End
          else
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TempVal * cdsInvoiceDetailPrice.AsFloat, -2);

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'Before add cost cdsInvoiceDetail.Post ');

          cdsInvoiceDetailArticleNo.AsInteger :=
            dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger);

          cdsInvoiceDetailInclInPrice.AsInteger := 0;
          cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 1;

          cdsInvoiceDetail.Post;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After add cost cdsInvoiceDetail.Post ');
          y := Succ(y);
        End;
        sq_GetLOData.Close;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

// ADD INVOICE DETAIL for an Additional costs if such exist for current ShippingPlanNo Number
  procedure AddAdditionalCost_From_ExtraCost_Table;
  Var
    TempVal, SekPrice: Double;

    procedure GetVolumeForAddAdditionalCost;
    Begin
      with dmVidaInvoice do
      begin
        // sq_GetPkgType_Invoice.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
        sq_GetPkgType_Invoice.ParamByName('SupplierNo').AsInteger :=
          mtCompSelRowsSALESREGIONNO.AsInteger; // VIDA_WOOD_CLIENTNO ;
        sq_GetPkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger :=
          mtCompSelRowsLONo.AsInteger;
        sq_GetPkgType_Invoice.ParamByName('CustomerNo').AsInteger :=
          mtCompSelRowsClientNo.AsInteger; // Avrop customerNo
        Try
          sq_GetPkgType_Invoice.Active := True;

          CASE cds_CSH_ExtraCostInvoiceAdditionUnitNo.AsInteger of
            2:
              TempVal := sq_GetPkgType_InvoicePcs.AsFloat;
            3:
              TempVal := sq_GetPkgType_InvoiceAM3.AsFloat;
            4:
              TempVal := sq_GetPkgType_InvoiceNM3.AsFloat;
            5:
              TempVal := sq_GetPkgType_InvoiceAdNl.AsFloat;
            6:
              TempVal := sq_GetPkgType_InvoiceNdAl.AsFloat;
            7:
              TempVal := sq_GetPkgType_InvoiceAM2AW.AsFloat;
            8:
              TempVal := sq_GetPkgType_InvoiceAM2AW.AsFloat;
            9:
              TempVal := sq_GetPkgType_InvoiceAM1.AsFloat;
            10:
              TempVal := 0;
            11:
              TempVal := 1;
            12:
              TempVal := sq_GetPkgType_InvoiceNM1.AsFloat;
          END;

        Finally
          sq_GetPkgType_Invoice.Active := False;
        End;
      End; // With
    End;

  // main AddAdditionalCost_From_ExtraCost_Table ;
  Begin
    with dmVidaInvoice do
    begin
      Try
        cds_CSH_ExtraCost.Active := False;
        cds_CSH_ExtraCost.ParamByName('LONo').AsInteger :=
          mtCompSelRowsLONo.AsInteger;
        cds_CSH_ExtraCost.Active := True;
        Try
          cds_CSH_ExtraCost.First;
          while not cds_CSH_ExtraCost.Eof do
          Begin
            cdsInvoiceDetail.Insert;
            cdsInvoiceDetailShippingPlanNo.AsInteger :=
              mtCompSelRowsLONo.AsInteger;
            cdsInvoiceDetailTypeOfRow.AsInteger := 2; // Additional cost
            cdsInvoiceDetailPriceUnit.AsString :=
              cds_CSH_ExtraCostPriceUnit.AsString;
            cdsInvoiceDetailProductDescription.AsString :=
              cds_CSH_ExtraCostInvoiceAdditionDescription.AsString;

            SekPrice := cds_CSH_ExtraCostInvoiceAdditionAmount.AsFloat *
              dmsSystem.GetExRate
              (cds_CSH_ExtraCostInvoiceAdditionCurrencyNo.AsInteger);

            cdsInvoiceDetailPrice.AsFloat := SekPrice /
              dmsSystem.GetExRate(cdsInvoiceHeadCurrencyNo.AsInteger);

            cdsInvoiceDetailVolumeUnit.AsString :=
              cds_CSH_ExtraCostPriceUnit.AsString; // Get unit name ;
            cdsInvoiceDetailArticleNo.AsInteger :=
              cds_CSH_ExtraCostArticleNo.AsInteger;
            cdsInvoiceDetailInclInPrice.AsInteger := 0;
            cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 1;
            TempVal := 0;
            // if (cdsInvoiceLOInvoiceAdditionAmount.AsFloat > 0) or (cdsInvoiceLOInvoiceAdditionAmount.AsFloat < 0) then
            // Begin

            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'After add cost cdsInvoiceDetail.Insert ');

            GetVolumeForAddAdditionalCost;
            // cdsInvoiceDetailProductValue.AsFloat                := RoundTo(TempVal * cdsInvoiceDetailPrice.AsFloat, -2) ;

            if cdsInvoiceDetailPriceUnit.AsString = 'SUM' then
            Begin
              cdsInvoiceDetailProductValue.AsFloat :=
                RoundTo(cdsInvoiceDetailPrice.AsFloat, -2);
            End
            else
              cdsInvoiceDetailProductValue.AsFloat :=
                RoundTo(TempVal * cdsInvoiceDetailPrice.AsFloat, -2);

            { if cdsInvoiceDetailPriceUnit.AsString = 'SUM' then
              Begin
              cdsInvoiceDetailProductValue.AsFloat:= RoundTo(cdsInvoiceDetailPrice.AsFloat, -2) ;
              End
              else


              if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Before add cost cdsInvoiceDetail.Post ') ;

              cdsInvoiceDetailArticleNo.AsInteger                 := dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger) ;
            }

            cdsInvoiceDetail.Post;

            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                'After add cost cdsInvoiceDetail.Post ');

            cds_CSH_ExtraCost.Next;
            // y:= Succ(y) ;
          End; // while not cds_CSH_ExtraCost.eof do
          // sq_GetLOData.Close ;

        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;

      Finally
        cds_CSH_ExtraCost.Active := False;
      End;

    End; // with
  End;

  function ReplaceCommas(S: String): String;
  begin
    Try
      { Convert period to commas }
      while Pos('.', S) > 0 do
        S[Pos('.', S)] := ',';
      Result := S;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
  end;

// For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads
  Procedure AddProductData;
  Var
    TotalFraktKostnadPerLO, TotalAM3LO, Temp_VOLUME_ORDERUNIT: Extended;
    // Temp_AM3,
    // Temp_NM3,
    // Temp_AM1   : Extended ;
    // NoOfPieces        : Integer ;
    ThicknessINCH, WidthINCH: String;
  Begin
    with dmVidaInvoice do
    begin
      Try

        // NoOfPieces := 0 ;
        // Temp_AM3   := 0 ;
        // Temp_NM3   := 0 ;
        // Temp_AM1   := 0 ;
        TotalFraktKostnadPerLO := GetTotalFraktKostnadPerLO;
        TotalAM3LO := GetTotalUnitsForLO('M3ACTUAL');

        sq_GetInvoiceDetailData.Close;
        sq_GetInvoiceDetailData.ParamByName('CustomerNo').AsInteger :=
          cdsInvoiceHeadCustomerNo.AsInteger;
        // daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
        sq_GetInvoiceDetailData.ParamByName('ShippingPlanNo').AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger;
        sq_GetInvoiceDetailData.ParamByName('InternalInvoiceNo').AsInteger :=
          InternalInvoiceNo;
        sq_GetInvoiceDetailData.Open;
        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            'After sq_GetInvoiceDetailData.Open');
        While not sq_GetInvoiceDetailData.Eof do
        Begin
          cdsInvoiceDetail.Insert;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After cdsInvoiceDetail.Insert');
          cdsInvoiceDetailCustShipPlanDetailObjectNo.AsInteger :=
            sq_GetInvoiceDetailDataCustShipPlanDetailObjectNo.AsInteger;
          cdsInvoiceDetailShippingPlanNo.AsInteger :=
            cdsInvoiceLOShippingPlanNo.AsInteger;
          cdsInvoiceDetailTypeOfRow.AsInteger := 1; // Product
          cdsInvoiceDetailOrderLineNo.AsInteger :=
            sq_GetInvoiceDetailDataORDERLINENO.AsInteger;
          cdsInvoiceDetailReference.AsString :=
            sq_GetInvoiceDetailDataREFERENCE.AsString;
          cdsInvoiceDetailProductDescription.AsString :=
            sq_GetInvoiceDetailDataPRODUCTDESCRIPTION.AsString;
          cdsInvoiceDetailProductNo.AsInteger :=
            sq_GetInvoiceDetailDataPRODUCTNO.AsInteger;
          cdsInvoiceDetailLengthDescription.AsString :=
            sq_GetInvoiceDetailDataLENGTHDESCRIPTION.AsString;
          cdsInvoiceDetailProductLengthNo.AsInteger :=
            sq_GetInvoiceDetailDataPRODUCTLENGTHNO.AsInteger;
          cdsInvoiceDetailPrice.AsFloat := sq_GetInvoiceDetailDataPRICE.AsFloat;
          cdsInvoiceDetailVolumeUnit.AsString :=
            sq_GetInvoiceDetailDataVOLUMEUNIT.AsString;
          cdsInvoiceDetailPriceUnit.AsString :=
            sq_GetInvoiceDetailDataPRICEUNIT.AsString;
          cdsInvoiceDetailActualThicknessMM.AsFloat :=
            sq_GetInvoiceDetailDataActualThicknessMM.AsFloat;
          cdsInvoiceDetailActualWidthMM.AsFloat :=
            sq_GetInvoiceDetailDataActualWidthMM.AsFloat;
          cdsInvoiceDetailNominalThicknessMM.AsFloat :=
            sq_GetInvoiceDetailDataNominalThicknessMM.AsFloat;
          cdsInvoiceDetailNominalWidthMM.AsFloat :=
            sq_GetInvoiceDetailDataNominalWidthMM.AsFloat;
          cdsInvoiceDetailNominalLengthMM.AsFloat :=
            sq_GetInvoiceDetailDataNominalLengthMM.AsFloat;
          cdsInvoiceDetailintNM3.AsFloat :=
            sq_GetInvoiceDetailDataintNM3.AsFloat;
          cdsInvoiceDetailArticleNo.AsInteger :=
            sq_GetInvoiceDetailDataArticleNo.AsInteger;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Before ThicknessINCH');

          ThicknessINCH := sq_GetInvoiceDetailDataNominalThicknessINCH.AsString;
          WidthINCH := sq_GetInvoiceDetailDataNominalWidthINCH.AsString;

          ThicknessINCH := ReplaceCommas(ThicknessINCH);
          WidthINCH := ReplaceCommas(WidthINCH);

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After ThicknessINCH=' +
              ThicknessINCH);
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After WidthINCH=' +
              WidthINCH);

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After ThicknessINCH');
          Try
            cdsInvoiceDetailNominalThicknessINCH.AsString := ThicknessINCH;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'cdsInvoiceDetailNominalThicknessINCH.AsString=' +
              cdsInvoiceDetailNominalThicknessINCH.AsString);
          Try
            cdsInvoiceDetailNominalWidthINCH.AsString := WidthINCH;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'cdsInvoiceDetailNominalWidthINCH.AsString=' +
              cdsInvoiceDetailNominalWidthINCH.AsString);

          // Temp_AM3      := RoundTo(sq_GetInvoiceDetailDataM3ACTUAL.AsFloat , -3) ;

          // Temp_NM3      := RoundTo(sq_GetInvoiceDetailDataM3NOMINAL.AsFloat , -3) ;
          // Temp_AM1      := RoundTo(sq_GetInvoiceDetailDataACTUAL_LINEALMETER.AsFloat , -3) ;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After Temp_AM1');

          cdsInvoiceDetailActualNetM3.AsFloat :=
            RoundTo(sq_GetInvoiceDetailDataM3ACTUAL.AsFloat, -3);
          // Temp_AM3 ; //sq_GetInvoiceDetailDataM3ACTUAL.AsFloat ;
          cdsInvoiceDetailLinealMeter.AsFloat :=
            RoundTo(sq_GetInvoiceDetailDataACTUAL_LINEALMETER.AsFloat, -3);
          // Temp_AM1 ; //sq_GetInvoiceDetailDataACTUAL_LINEALMETER.AsFloat ;
          cdsInvoiceDetailNominalM3.AsFloat :=
            RoundTo(sq_GetInvoiceDetailDataM3NOMINAL.AsFloat, -3);
          // Temp_NM3 ; //sq_GetInvoiceDetailDataM3NOMINAL.AsFloat ;

          cdsInvoiceDetailNoOfPieces.AsInteger :=
            sq_GetInvoiceDetailDataNOOFPIECES.AsInteger;
          cdsInvoiceDetailNoOfPkgs.AsInteger :=
            sq_GetInvoiceDetailDataNoOfPkgs.AsInteger;
          cdsInvoiceDetailOL_Reference.AsString :=
            sq_GetInvoiceDetailDataOL_Reference.AsString;

          Temp_VOLUME_ORDERUNIT :=
            RoundTo(sq_GetInvoiceDetailDataVOLUME_ORDERUNIT.AsFloat, -3);
          cdsInvoiceDetailVolume_OrderUnit.AsFloat := Temp_VOLUME_ORDERUNIT;

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After cdsInvoiceDetailVolume_OrderUnit.AsFloat');

          cdsInvoiceDetailProductValue.AsFloat :=
            RoundTo(Temp_VOLUME_ORDERUNIT *
            sq_GetInvoiceDetailDataPRICE.AsFloat, -2);

          if cdsInvoiceHeadMoms.AsInteger = 1 then
            cdsInvoiceDetailVatValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat * c_Moms
          else
            cdsInvoiceDetailVatValue.AsFloat := 0;

          // Räknar ut varuvärde, belopp - frakt
          { if TotalAM3LO > 0 then
            Begin
            if cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger = 1 then
            cdsInvoiceDetailProductValueWOFreight.AsFloat :=
            cdsInvoiceDetailProductValue.AsFloat -
            ((cdsInvoiceDetailActualNetM3.AsFloat / TotalAM3LO)
            * TotalFraktKostnadPerLO)
            else
            cdsInvoiceDetailProductValueWOFreight.AsFloat := cdsInvoiceDetailProductValue.AsFloat ;

            cdsInvoiceDetailFreightCostCurr.AsFloat  :=  cdsInvoiceDetailProductValue.AsFloat - cdsInvoiceDetailProductValueWOFreight.AsFloat
            End
            else
            cdsInvoiceDetailProductValueWOFreight.AsFloat := cdsInvoiceDetailProductValue.AsFloat ;
          }
          // NoOfPieces  := NoOfPieces + cdsInvoiceDetailNoOfPieces.AsInteger ;

          // Hämta netto och bruttopris
          cdsInvoiceDetailNettoSEKPerNM3.AsFloat :=
            dmVidaInvoice.GetNettoPris(sq_GetInvoiceDetailDataOrderNo.AsInteger,
            sq_GetInvoiceDetailDataORDERLINENO.AsInteger);
          cdsInvoiceDetailBruttoSEKPerNM3.AsFloat :=
            dmVidaInvoice.GetBruttoPris
            (sq_GetInvoiceDetailDataOrderNo.AsInteger,
            sq_GetInvoiceDetailDataORDERLINENO.AsInteger);

          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'Before cdsInvoiceDetail.Post ');
          cdsInvoiceDetail.Post;
          if ThisUser.UserID = 8 then
            mLog.Lines.Add(Datetimetostr(now) + ':  ' +
              'After cdsInvoiceDetail.Post ');
          sq_GetInvoiceDetailData.Next;
          y := Succ(y);
        End; // While not sq_GetInvoiceDetailData.Eof do
        sq_GetInvoiceDetailData.Close;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

  Function CheckThatPackagesAreConnectedToLORow: Boolean;
  var
    fUnConnectedPackages: TfUnConnectedPackages;
  Begin
    with dmVidaInvoice do
    Begin
      Result := False;
      mtCompSelRows.First;
      While not mtCompSelRows.Eof do
      Begin
        sp_LdConnCtrl.Active := False;
        sp_LdConnCtrl.ParamByName('@LONo').AsInteger :=
          mtCompSelRowsLONo.AsInteger;
        sp_LdConnCtrl.Active := True;
        if not sp_LdConnCtrl.Eof then
        Begin
          fUnConnectedPackages := TfUnConnectedPackages.Create(nil);
          Try
            fUnConnectedPackages.ShowModal;
            Result := True;
          Finally
            FreeAndNil(fUnConnectedPackages);
          End;
        End;
        mtCompSelRows.Next;
      End; // While
      sp_LdConnCtrl.Active := False;
    End; // With
  End;

// Main block MakeInvoice
BEGIN
  // DeleteTdmVidaInvoice:= False ;
  if (not Assigned(dmVidaInvoice)) then
    dmVidaInvoice := TdmVidaInvoice.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmAvropTdmVidaInvoice', 'dmVidaInvoice');
  Try

    SelectedRows := CompareSelectedRows;
    if SelectedRows > 0 then
    Begin
      if ControlData = False then
        Exit;

      Save_Cursor := Screen.Cursor;
      if ThisUser.UserID = 8 then
        mLog.Lines.Clear;

      Try
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            'if not Assigned(dmVidaInvoice) then');

        // if Assigned(cxDBRichEdit3) then
        // cxDBRichEdit3.Free ;

        cxDBRichEdit3 := TDBRichEdit.Create(Self);
        cxDBRichEdit3.Parent := Self;
        cxDBRichEdit3.DataSource := dmVidaInvoice.dsrcInvoiceHead;
        cxDBRichEdit3.DataField := 'InvoiceText';
        cxDBRichEdit3.Width := 900;

        cxDBRichEdit3.Visible := False;
        Application.ProcessMessages;

        if CheckThatPackagesAreConnectedToLORow = True then
          Exit;

        with dmVidaInvoice do
        Begin
          Try
            InternalInvoiceNo := dmsConnector.NextMaxNo('InvoiceHeader');
            // Get Next InternalInvoiceNo

            if ThisUser.UserID = 8 then
              mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'InternalInvoiceNo=' +
                inttostr(InternalInvoiceNo));
            mtCompSelRows.First;
            While not mtCompSelRows.Eof do
            Begin
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'Before open sq_AnyLoadsToInvoice.');
              // Check if there is some loads to invoice for these parameters
              Try
                sq_AnyLoadsToInvoice.Active := False;
                sq_AnyLoadsToInvoice.ParamByName('SupplierNo').AsInteger :=
                  mtCompSelRowsSALESREGIONNO.AsInteger; // VIDA_WOOD_CLIENTNO ;
                sq_AnyLoadsToInvoice.ParamByName('ShippingPlanNo').AsInteger :=
                  mtCompSelRowsLONo.AsInteger;
                sq_AnyLoadsToInvoice.ParamByName('CustomerNo').AsInteger :=
                  mtCompSelRowsClientNo.AsInteger; // Avrop customerNo
                sq_AnyLoadsToInvoice.Active := True;
              except
                On E: Exception do
                Begin
                  dmsSystem.FDoLog(E.Message);
                  // ShowMessage(E.Message);
                  Raise;
                End;
              end;

              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'After open sq_AnyLoadsToInvoice.');

              if sq_AnyLoadsToInvoice.Eof then
              Begin
                ShowMessage('Finns inga laster att fakturera.');
                sq_AnyLoadsToInvoice.Active := False;
                Exit;
              End
              else
                sq_AnyLoadsToInvoice.Active := False;

              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'After open sq_PkgType_Invoice.');
              Try
                sq_PkgType_Invoice.ParamByName('InternalInvoiceNo').AsInteger :=
                  InternalInvoiceNo;
                sq_PkgType_Invoice.ParamByName('SupplierNo').AsInteger :=
                  mtCompSelRowsSALESREGIONNO.AsInteger; // VIDA_WOOD_CLIENTNO ;
                sq_PkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger :=
                  mtCompSelRowsLONo.AsInteger;
                sq_PkgType_Invoice.ParamByName('CustomerNo').AsInteger :=
                  mtCompSelRowsClientNo.AsInteger; // Avrop customerNo
                sq_PkgType_Invoice.ExecSQL;

              except
                On E: Exception do
                Begin
                  dmsSystem.FDoLog(E.Message);
                  // ShowMessage(E.Message);
                  Raise;
                End;
              end;

              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'After open sq_PkgType_Invoice.');
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'sq_PkgType_Invoice.ExecSQL(False)');
              mtCompSelRows.Next;
            end; // While not mtCompSelRows.Eof...

            // Start Transaction
            dmsConnector.StartTransaction;
            Try
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'StartTransaction');

              if not cdsInvoiceHead.Active then
                cdsInvoiceHead.Active := False;
              cdsInvoiceHead.Disconnect();
              cdsInvoiceHead.Active := True;
              cdsInvoiceLO.Active := True;
              cdsInvoiceDetail.Active := True;
              cdsInvoiceDetail.UpdateOptions.Readonly := False;
              For x := 0 to cdsInvoiceDetail.FieldCount - 1 do
                cdsInvoiceDetail.Fields.Fields[x].Readonly := False;
              cdsInvoiceShipTo.Active := True;
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Active datasets');

              cdsInvoiceHead.EmptyDataSet;
              cdsInvoiceLO.EmptyDataSet;
              cdsInvoiceDetail.EmptyDataSet;
              cdsInvoiceShipTo.EmptyDataSet;
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'EmptyDataSet');

              x := 0;
              mtCompSelRows.First;
              While not mtCompSelRows.Eof do
              Begin
                Try
                  sq_GetInvoiceHeadData.Close;
                  sq_GetInvoiceHeadData.ParamByName('ShippingPlanNo').AsInteger
                    := mtCompSelRowsLONo.AsInteger; // StrToInt(LO_String[x]) ;
                  sq_GetInvoiceHeadData.ParamByName('CustomerNo').AsInteger :=
                    mtCompSelRowsClientNo.AsInteger;
                  // daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
                  sq_GetInvoiceHeadData.Open;

                except
                  On E: Exception do
                  Begin
                    dmsSystem.FDoLog(E.Message);
                    // ShowMessage(E.Message);
                    Raise;
                  End;
                end;

                if ThisUser.UserID = 8 then
                  mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                    'sq_GetInvoiceHeadData.Open');
                mtCompSelRows.Next;
              End;

              // Insert Invoice Head
              AddInvoiceHead;
              cds_IH_SpecLoad.Active := False;
              cds_IH_SpecLoad.Active := True;
              cds_IH_SpecLoad.Insert;
              cds_IH_SpecLoad.Post;

              Screen.Cursor := crSQLWait; { Show hourglass cursor }

              OrderNos := TStringList.Create;
              LONos := TStringList.Create;
              Try

                // Go through all ShippingPlanNo #, Get ShippingPlanNo data and insert to csdInvoiceLO
                mtCompSelRows.First;
                While not mtCompSelRows.Eof do
                Begin
                  AddLOData;
                  y := 1; // use this for InvoiceDetailNo
                  // ADD INVOICE DETAIL for an Additional costs if such exist for current ShippingPlanNo Number
                  // For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads

                  // ADD FREIGHT COST IN TO  INVOICE DETAIL if Booking exist for current ShippingPlanNo Number
                  AddFreigthCost;

                  AddProductData;

                  AddAdditionalCost_From_ExtraCost_Table;

                  // AddAdditionalCost ;

                  // Get and Insert ship to address
                  Try
                    sq_GetShipToAddress.ParamByName('ShippingPlanNo').AsInteger
                      := mtCompSelRowsLONo.AsInteger;
                    // StrToInt(LO_String[x]) ;
                    sq_GetShipToAddress.Open;

                  except
                    On E: Exception do
                    Begin
                      dmsSystem.FDoLog(E.Message);
                      // ShowMessage(E.Message);
                      Raise;
                    End;
                  end;

                  if ThisUser.UserID = 8 then
                    mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                      'After sq_GetShipToAddress.Open');
                  While not sq_GetShipToAddress.Eof do
                  Begin
                    cdsInvoiceShipTo.Insert;
                    cdsInvoiceShipToReference.AsString :=
                      sq_GetShipToAddressReference.AsString;
                    cdsInvoiceShipToInternalInvoiceNo.AsInteger :=
                      cdsInvoiceHeadInternalInvoiceNo.AsInteger;
                    cdsInvoiceShipToShippingPlanNo.AsInteger :=
                      sq_GetShipToAddressShippingPlanNo.AsInteger;
                    cdsInvoiceShipToAddressNo.AsInteger :=
                      sq_GetShipToAddressAddressNo.AsInteger;
                    cdsInvoiceShipTo.Post;
                    if ThisUser.UserID = 8 then
                      mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                        'After cdsInvoiceShipTo.Post');
                    sq_GetShipToAddress.Next;
                  End;

                  sq_GetShipToAddress.Close;

                  // ADD FREIGHT COST IN TO  INVOICE DETAIL if Booking exist for current ShippingPlanNo Number
                  // 25April2010   AddFreigthCost ;

                  // Insert loadNo and ShippingPlanNo to Invoice_Load table.
                  // the entry to Invoice_Load makes it impossible to invoice a load twice.

                  if ThisUser.UserID = 8 then
                    mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                      'Before sq_Invoiced_Load.ExecSQL(False)');
                  Try
                    sq_Invoiced_Load.ParamByName('InternalInvoiceNo').AsInteger
                      := cdsInvoiceHeadInternalInvoiceNo.AsInteger;
                    sq_Invoiced_Load.ParamByName('SupplierNo').AsInteger :=
                      daMoLM1.cdsAvropSALESREGIONNO.AsInteger;
                    // VIDA_WOOD_CLIENTNO ;
                    sq_Invoiced_Load.ParamByName('CustomerNo').AsInteger :=
                      daMoLM1.cdsAvropCLIENTNO.AsInteger; // Avrop customerNo
                    sq_Invoiced_Load.ParamByName('ShippingPlanNo').AsInteger :=
                      cdsInvoiceLOShippingPlanNo.AsInteger;
                    sq_Invoiced_Load.ExecSQL;
                  except
                    On E: Exception do
                    Begin
                      dmsSystem.FDoLog(E.Message);
                      // ShowMessage(E.Message);
                      Raise;
                    End;
                  end;

                  if ThisUser.UserID = 8 then
                    mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                      'After sq_Invoiced_Load.ExecSQL(False)');
                  mtCompSelRows.Next;

                End; // While not mtCompSelRows.eof

                // Update InvoiceText
                AddInvoiceText;

              Finally
                FreeAndNil(LONos);
                FreeAndNil(OrderNos);
              End;

              CalcAndUpdateNetProductValueInInvoiceDetail;
              sq_LONoInInvoice.Active := False;

              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'Before Summarize(Sender)');
              Summarize(Sender);
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'After Summarize(Sender)');

              if cdsInvoiceLO.ChangeCount > 0 then
              Begin
                cdsInvoiceLO.ApplyUpdates(0);
                cdsInvoiceLO.CommitUpdates;
              end;
              if cdsInvoiceDetail.ChangeCount > 0 then
              Begin
                cdsInvoiceDetail.ApplyUpdates(0);
                cdsInvoiceDetail.CommitUpdates;
              End;
              if cdsInvoiceShipTo.ChangeCount > 0 then
              Begin
                cdsInvoiceShipTo.ApplyUpdates(0);
                cdsInvoiceShipTo.CommitUpdates;
              End;
              if ThisUser.UserID = 8 then
                mLog.Lines.Add(Datetimetostr(now) + ':  ' +
                  'After Applyupdates');

              dmsConnector.Commit;
            Except
              dmsConnector.Rollback;
              dmsSystem.FDoLog('SQLConnection.Rollback');
              Raise;
              // Exit ;
            End;

            Screen.Cursor := crSQLWait; { Show hourglass cursor }
            frmInvoice := TfrmInvoice.Create(Nil);
            // LockWindowUpdate(0);
            Try
              mtCompSelRows.First;
              cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
                cdsInvoiceHeadInternalInvoiceNo.AsString +
                ' AND ShippingPlanNo = ' + mtCompSelRowsLONo.AsString;
              // LO_String[0] ;
              cdsInvoiceLO.Filtered := True;
              cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
                cdsInvoiceHeadInternalInvoiceNo.AsString +
                ' AND ShippingPlanNo = ' + mtCompSelRowsLONo.AsString;
              // LO_String[0] ;

              cdsInvoiceDetail.Filtered := True;

              frmInvoice.TabControl1.Tabs.Clear;

              mtCompSelRows.First;
              While not mtCompSelRows.Eof do
              Begin
                frmInvoice.TabControl1.Tabs.Add(mtCompSelRowsLONo.AsString);
                // := mtCompSelRowsLONo.AsS LO_String ;
                mtCompSelRows.Next;
              End;

              frmInvoice.NewInvoice := True;
              frmInvoice.ShowModal;
              Application.ProcessMessages;

            Finally
              FreeAndNil(frmInvoice);
            End;

          Finally
            if cdsInvoiceHead.Active then
              cdsInvoiceHead.EmptyDataSet;
            if cdsInvoiceLO.Active then
              cdsInvoiceLO.EmptyDataSet;
            if cdsInvoiceDetail.Active then
              cdsInvoiceDetail.EmptyDataSet;
            if cdsInvoiceShipTo.Active then
              cdsInvoiceShipTo.EmptyDataSet;

            cdsInvoiceHead.Active := False;

            cdsInvoiceDetail.Close;
            cdsInvoiceLO.Filtered := False;
            cdsInvoiceLO.Active := False;
            cdsInvoiceDetail.Filtered := False;
            cdsInvoiceDetail.Filter := '';
            cdsInvoiceDetail.Active := False;
            cdsInvoiceShipTo.Active := False;
            grdcxAvropDBBandedTableView1.Controller.ClearSelection;
            cxDBRichEdit3.Free;
          End;
        End; //

      Finally
        daMoLM1.RefreshAvropLoads;
        mtCompSelRows.Active := False;
        Screen.Cursor := Save_Cursor; { Always restore to normal }
      End; // Finally
    End // if CompareSelectedRows = 1 then
    else if SelectedRows <> -1 then
      ShowMessage('Inget avrop valt.');
  Finally
    if dmsSystem.DeleteAssigned('TfrmAvropTdmVidaInvoice', 'dmVidaInvoice') = True
    then
    Begin
      dmVidaInvoice.Free;
      dmVidaInvoice := Nil;
    End;
  End;
End;

// Kollar om fakturan är med moms och sätter fältet
// cdsInvoiceHeadMoms
procedure TfrmAvrop.DetermineIfInvoiceIsWithMoms;
Begin
  with dmVidaInvoice do
  Begin
    if cdsInvoiceHead.Active = False then
      Exit;

    if cdsInvoiceHead.State = dsBrowse then
      cdsInvoiceHead.Edit;

    // Calculate VAT if Country is SWEDEN and cbVAT (Skatteupplag) checked
    if ((Trim(cdsInvoiceHeadCountryName.AsString) = 'SWEDEN') and
      (cdsInvoiceHeadSupplierNo.AsInteger = VIDA_WOOD_COMPANY_NO) OR
      (Trim(cdsInvoiceHeadCountryName.AsString) = 'DENMARK') and
      (cdsInvoiceHeadSupplierNo.AsInteger = VIDA_DANMARK))

      OR (cdsInvoiceHeadSpecialMoms.AsInteger = 1) then
    Begin
      if (cdsInvoiceHeadVAT_OnInvoice.AsInteger = 0) or
        (cdsInvoiceHeadSpecialMoms.AsInteger = 1) then
      Begin
        cdsInvoiceHeadMoms.AsInteger := 1;
      End
      else
      Begin
        cdsInvoiceHeadMoms.AsInteger := 0;
      End;
    End
    else
      cdsInvoiceHeadMoms.AsInteger := 0;

    // Save to InvoiceHeader table
    // cdsInvoiceHead.Post ;
  End; // with
End;

procedure TfrmAvrop.Summarize(Sender: TObject);
Begin
  with dmVidaInvoice do
  Begin
    if ThisUser.UserID = 8 then
      mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Start summarize');

    Try

      // DetermineIfInvoiceIsWithMoms ;

      // Sätter kontonr
      SetKontonr;

      if cdsInvoiceHead.State = dsBrowse then
        cdsInvoiceHead.Edit;
      cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat := 0;
      cdsInvoiceHeadSUM_FreigthCost.AsFloat := 0;
      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After cdsInvoiceHeadSUM_FreigthCost.AsFloat:= 0 ;');

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString);

      cdsInvoiceDetail.Filtered := False;
      cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
        cdsInvoiceHeadInternalInvoiceNo.AsString;
      cdsInvoiceDetail.Filtered := True;
      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After cdsInvoiceDetail.Filtered:= True ;');

      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        // SUM Product details
        // if cdsInvoiceDetailTypeOfRow.AsInteger <> 3 then
        if ((cdsInvoiceDetailArticleNo.AsInteger = 1) or
          (cdsInvoiceDetailArticleNo.AsInteger = 3)) or
          (((cdsInvoiceDetailArticleNo.AsInteger = 2) or
          (cdsInvoiceDetailArticleNo.AsInteger = 4)) and
          (cdsInvoiceDetailInclInPrice.AsInteger = 0)) then
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat :=
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
            cdsInvoiceDetailProductValue.AsFloat;

        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            'After if cdsInvoiceDetailTypeOfRow.AsInteger <> 3 then');

        // SUM non product details as freight
        // if cdsInvoiceDetailTypeOfRow.AsInteger = 3 then
        if ((cdsInvoiceDetailArticleNo.AsInteger = 2) or
          (cdsInvoiceDetailArticleNo.AsInteger = 4)) then
          cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
            cdsInvoiceHeadSUM_FreigthCost.AsFloat +
            cdsInvoiceDetailProductValue.AsFloat;

        if ThisUser.UserID = 8 then
          mLog.Lines.Add(Datetimetostr(now) + ':  ' +
            'After if cdsInvoiceDetailTypeOfRow.AsInteger = 3 then');

        cdsInvoiceDetail.Next;
      End;
      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After While not cdsInvoiceDetail.Eof do');
      // Calculate
      cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat');

      // Calculate invoice value with no freight
      cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat :=
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
        cdsInvoiceHeadSUM_FreigthCost.AsFloat;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat:=');

      // if cdsInvoiceHeadFreightInDiscount.AsInteger  = 0 then
      if cdsInvoiceHeadFreightInDiscount.AsInteger = 0 then
      // if cbFreightInDiscount.Checked = False then
      Begin
        // Calculate Invoice value to be paid, Freight NOT included in discount calculation
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
          (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
          (cdsInvoiceHeadDiscount1.AsFloat / 100));

        cdsInvoiceHeadDiscount.AsFloat :=
          (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
          (cdsInvoiceHeadDiscount1.AsFloat / 100));
      End
      else
      Begin
        // Calculate Invoice value to be paid, Freight Included in discount calculation
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
          (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
          (cdsInvoiceHeadDiscount1.AsFloat / 100));

        cdsInvoiceHeadDiscount.AsFloat :=
          (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
          (cdsInvoiceHeadDiscount1.AsFloat / 100));
      End;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After if cdsInvoiceHeadFreightInDiscount.AsInteger  = 0 then');

      // if cbCommissionPaidByCustomer.Checked then
      if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then
      Begin
        if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
        // if cbFreightInComm.Checked = False then
        Begin
          // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          cdsInvoiceHeadCommission.AsFloat :=
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadAgentCommission.AsFloat / 100));
        End
        else
        Begin
          // Calculate Invoice value to be paid, Freight included in Commission calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadAgentCommission.AsFloat / 100));

          cdsInvoiceHeadCommission.AsFloat :=
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadAgentCommission.AsFloat / 100));
        End;
      End;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After  if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then');

      cdsInvoiceHeadCommission_and_Discount.AsFloat :=
        cdsInvoiceHeadCommission.AsFloat + cdsInvoiceHeadDiscount.AsFloat;
      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After  cdsInvoiceHeadCommission_and_Discount.AsFloat:=');
      cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat :=
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
        cdsInvoiceHeadCommission_and_Discount.AsFloat;
      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After  cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat:=');
      // if cbCommissionPaidByCustomer.Checked = False then
      if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then
      // Show commission VW is paying
      Begin
        if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
        // if cbFreightInComm.Checked = False then
        // if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
        // if cbFreightInComm.Checked = False then
        Begin
          // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
          // cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
          // (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
          cdsInvoiceHeadCommission.AsFloat :=
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadAgentCommission.AsFloat / 100));
        End
        else
        Begin
          // Calculate Invoice value to be paid, Freight included in Commission calculation
          // cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
          // (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;

          cdsInvoiceHeadCommission.AsFloat :=
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadAgentCommission.AsFloat / 100));
        End;
      End;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After  if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then');

      // Calculate VAT if Country is SWEDEN cbVAT  is checked
      if cdsInvoiceHeadMoms.AsInteger = 1 then
      Begin
        cdsInvoiceHeadVAT_Value.AsFloat :=
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * c_Moms;
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
          Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat +
          cdsInvoiceHeadVAT_Value.AsFloat);
        cdsInvoiceHeadVAT_Value.AsFloat :=
          cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * c_Moms;
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
          Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat +
          cdsInvoiceHeadVAT_Value.AsFloat);
      End
      else
      Begin
        cdsInvoiceHeadVAT_Value.AsFloat := 0;
        cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
          Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat);
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
          Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat);
      End;

      if ThisUser.UserID = 8 then
        mLog.Lines.Add(Datetimetostr(now) + ':  ' +
          'After   if Trim(cdsInvoiceHeadCountryName.AsString) = SWEDEN then');

      // Save to InvoiceHeader table
      cdsInvoiceHead.Post;
    Finally
      cdsInvoiceDetail.Filtered := False;
    End; // finally
  End; // with
End;

Function TfrmAvrop.ConvertFreightCostFromCurrencyToSEK
  ( { Freight cost } FreightCost: Double;
  { Convert from } FromCurrencyNo: Integer): Double;
Var
  ConvertFromXRate: Double;
Begin // us to sek for example or SEK to US
  // dmModule1.sq_GetXRate.ParamByName('CurrencyNo').AsInteger:= FromCurrencyNo ;
  // dmModule1.sq_GetXRate.Open ;
  ConvertFromXRate := dmsSystem.GetExRate(FromCurrencyNo);

  Result := FreightCost * ConvertFromXRate;
  // dmModule1.sq_GetXRate.Close ;
End;

Function TfrmAvrop.ConvertFreightCostToCurrencyFromSEK
  ( { Freight cost } FreightCost: Double;
  { Convert from } ToCurrencyNo: Integer): Double;
Var
  ConvertToXRate: Double;
Begin // us to sek for example or SEK to US
  Result := 0;
  // Try
  // dmModule1.sq_GetXRate.ParamByName('CurrencyNo').AsInteger:= ToCurrencyNo ;
  // dmModule1.sq_GetXRate.Open ;
  ConvertToXRate := dmsSystem.GetExRate(ToCurrencyNo);

  if ConvertToXRate > 0 then
    Result := FreightCost / ConvertToXRate;
  // Finally
  // dmModule1.sq_GetXRate.Close ;
  // End ;
End;

procedure TfrmAvrop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmAvrop.FormCreate(Sender: TObject);
begin
  if (not Assigned(daMoLM1)) then
    daMoLM1 := TdaMoLM1.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmAvropdaMoLM1', 'daMoLM1');

  if (not Assigned(dm_Booking)) then
    dm_Booking := Tdm_Booking.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmAvrop', 'dm_Booking');

  CSDNO := 0;
  // cbAvropStatus.ItemIndex:= 1 ;
  mLog.Visible := False;
  if ThisUser.UserID = 8 then
  Begin
    // mLog.Visible:= True ;
    bLog.Visible := True;
    Button1.Visible := True;
  End
  else
  Begin
    // mLog.Visible:= False ;
    bLog.Visible := False;
    Button1.Visible := False;
  End;
  if ThisUser.UserID = 4 then
    Button1.Visible := True;
end;

procedure TfrmAvrop.FormDestroy(Sender: TObject);
begin
  frmAvrop := NIL;
  if dmsSystem.DeleteAssigned('TfrmAvrop', 'dm_Booking') = True then
  Begin
    dm_Booking.Free;
    dm_Booking := Nil;
  End;

  if dmsSystem.DeleteAssigned('TfrmAvropdaMoLM1', 'daMoLM1') = True then
  Begin
    daMoLM1.Free;
    daMoLM1 := Nil;
  End;
end;

procedure TfrmAvrop.setStatus(const Value: Integer);
var
  SelectedLO: Integer;
  LOCol: Integer;
  Save_Cursor: TCursor;
begin
  With daMoLM1 do
  Begin
    SelectedLO := 0;
    if (Value = 1) or
      (dmsSystem.DoesLOHaveNonInvoicedLoads(cdsAvropShippingPlanNo.AsInteger)
      = False) then
    Begin
      if SetAvropStatus(cdsAvropShippingPlanNo.AsInteger, Value) then
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        SelectedLO := cdsAvropShippingPlanNo.AsInteger;
        // grdcxAvrop.d .FocusedNode.Values[LOCol];
        cdsAvrop.Filter := 'ShippingPlanNo = ' + inttostr(SelectedLO);
        cdsAvrop.Filtered := True;
        dsrcAvrop.OnDataChange := nil;
        Try
          cdsAvrop.First;
          While not cdsAvrop.Eof do
          Begin
            Try
              cdsAvrop.Edit;
              cdsAvropShippingPlanSTATUS.AsInteger := Value;
              cdsAvropSequenceNo.AsInteger := Value;
              cdsAvrop.Post;
            Except
            End;
            cdsAvrop.Next;
          End; // While

        Finally
          cdsAvrop.Filtered := False;
          dsrcAvrop.OnDataChange := dsrcAvropDataChange;
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;
        if SelectedLO > 0 then
          if cdsAvrop.Locate('ShippingPlanNo', SelectedLO, []) then;
      End;
      (*
        Save_Cursor           := Screen.Cursor;
        Screen.Cursor         := crSQLWait;    { Show hourglass cursor }
        SelectedLO            := cdsAvropShippingPlanNo.AsInteger ;// grdcxAvrop.d .FocusedNode.Values[LOCol];
        cdsAvrop.Filter       := 'ShippingPlanNo = '+inttostr(SelectedLO) ;
        cdsAvrop.Filtered     := True ;
        dsrcAvrop.OnDataChange:= nil ;
        Try
        cdsAvrop.First ;
        While not cdsAvrop.Eof do
        Begin
        Try
        cdsAvrop.Edit ;
        cdsAvropShippingPlanSTATUS.AsInteger  := Value ;
        cdsAvropSequenceNo.AsInteger          := Value ;
        cdsAvrop.Post ;
        Except
        End ;
        cdsAvrop.Next ;
        End ;//While
        if cdsAvrop.ChangeCount > 0 then
        if cdsAvrop.ApplyUpdates(0) = 0 then
        SetRowStatus(cdsAvropShippingPlanNo.AsInteger, Value);

        Finally
        cdsAvrop.Filtered        := False ;
        dsrcAvrop.OnDataChange   := dsrcAvropDataChange ;
        Screen.Cursor            := Save_Cursor;  { Always restore to normal }
        End ;
        if cdsAvrop.FindKey([SelectedLO]) then ;

      *)

    End
    else
      ShowMessage
        ('Kan inte avsluta eller annulera en LO som har ofakturerade laster!');
  End; // with
end;

procedure TfrmAvrop.eSearchLONrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  lx, Status: Integer;
  S: String;
begin
  if Key <> VK_RETURN then
  Begin
    GlobalLONo := -1;
    Exit;
  End;

  // if StrToIntDef(Trim(eSearchLONr.Text),0) < 10 then
  if Length(eSearchLONr.Text) = 0 then
  Begin
    GlobalLONo := -1;
    Exit;
  End
  else
  Begin
    lx := Length(eSearchLONr.Text);
    if Copy(eSearchLONr.Text, lx, 1) = ',' then
    Begin
      S := eSearchLONr.Text;
      System.Delete(S, lx, 1);
      eSearchLONr.Text := S;
      if Length(eSearchLONr.Text) = 0 then
      Begin
        GlobalLONo := -1;
        Exit;
      End;
    End;
  End;

  With daMoLM1 do
  Begin
    // Refresh_Avrop(Sender,  StrToIntDef(Trim(eSearchLONr.Text),0), '') ;
    Refresh_Avrop(Sender, Trim(eSearchLONr.Text), '');

    if cdsAvropORDERTYPE.AsInteger > -1 then
    Begin
      if cds_Props.State in [dsBrowse] then
        cds_Props.Edit;
      cds_PropsOrderTypeNo.AsInteger := cdsAvropORDERTYPE.AsInteger;
    End;

    Status := -1;

    sq_Get_CSH_Status.Close;
    sq_Get_CSH_Status.ParamByName('ShippingPlanNo').AsInteger :=
      StrToIntDef(Trim(eSearchLONr.Text), 0);
    sq_Get_CSH_Status.Open;
    if sq_Get_CSH_Status.Eof = False then
      Status := sq_Get_CSH_StatusShippingPlanStatus.AsInteger;
    sq_Get_CSH_Status.Close;

    if Status = -1 then
    Begin
      Timer1.Enabled := True;
      // ShowMessage('No match') ;
      // eSearchLONr.Text:= '' ;
      // eSearchLONr.SelectAll ;
      // eSearchLONr.SetFocus ;
      Exit;
    End
    else
    Begin
      if cds_Props.State in [dsBrowse] then
        cds_Props.Edit;
      cds_PropsStatus.AsInteger := Status;

      // eSearchLONr.SelectAll ;

      Timer1.Enabled := True;
    End;

    // eSearchLONr.SetFocus ;
  End; // with
end;

{ function TfrmAvrop.FindAvrop(Sender : TObject) : Boolean ;
  Var ShippingPlanNo : Integer ;
  Begin
  With daMoLM1 do
  if not cdsAvrop.FindKey([StrToIntDef(Trim(eSearchLONr.Text),0)])  then
  Begin
  Result:= False ;
  ShowMessage('No Match') ;
  End
  else
  Begin
  Result:= True ;
  ShippingPlanNo := cdsAvropLO.AsInteger ;
  While (ShippingPlanNo = cdsAvropLO.AsInteger) and
  (cdsAvrop.Eof = False) do
  Begin
  cdsAvrop.Next ;
  End ; //while
  //   if not cdsAvrop.Eof then
  cdsAvrop.Prior ;
  End ;
  End ; }

procedure TfrmAvrop.ac_ExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAvrop.ac_BookingExecute(Sender: TObject);
var
  FormBookingForm: TFormBookingForm;
begin
  if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
  Begin

    FormBookingForm := TFormBookingForm.Create(Nil);
    try
      FormBookingForm.CreateCo(grdcxAvropDBBandedTableView1.DataController.
        DataSet.FieldByName('ShippingPlanNo').AsInteger);
      FormBookingForm.ShowModal;
      Application.ProcessMessages;
    finally
      FreeAndNil(FormBookingForm);
    end;

  End;
end;

procedure TfrmAvrop.ac_RefreshExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  // Save_Cursor := Screen.Cursor;
  // Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  // try
  // SetMyBookMark(Sender) ;
  if cds_Props.State = dsBrowse then
    cds_Props.Edit;
  cds_PropsVerkSupplierNo.AsInteger := 0;
  cds_Props.Post;
  Refresh_Avrop(Sender, '', '');
  // GotoMyBookmark(Sender) ;
  // finally
  // Screen.Cursor := Save_Cursor;  { Always restore to normal }
  // end;
end;

procedure TfrmAvrop.ac_MakeInvoiceExecute(Sender: TObject);
begin
  MakeInvoice(Sender);
end;

procedure TfrmAvrop.acPrintContractExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if Length(daMoLM1.cdsAvropORDERNUMBER.AsString) <= 0 then
    Exit;
  if uReportController.useFR then begin

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      RepNo := 17   // CONTRACT.NOTE.fr3
    else
      RepNo := 19;  //INCONTRACT_NOTE.fr3
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ORDERNUMBER', daMoLM1.cdsAvropORDERNUMBER.AsString);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := daMoLM1.cdsAvropORDERNUMBER.AsString;

      if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
        FormCRViewReport.CreateCo('CONTRACT_NOTE.RPT', A)
      else
        FormCRViewReport.CreateCo('INCONTRACT_NOTE.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acPrintLOExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if daMoLM1.cdsAvropShippingPlanNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      RepNo := 20 // LASTORDER_NOTE_ver3.fr3
    else
      RepNo := 21; // LASTORDER_INKOP_NOTE_ver2.fr3;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvropShippingPlanNo.AsInteger);
      Params.Add('SupplierNo', -1);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := daMoLM1.cdsAvropShippingPlanNo.AsInteger;
      A[1] := -1;
      if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
        FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT', A)
      else
        FormCRViewReport.CreateCo('LASTORDER_INKOP_NOTE_ver2.RPT', A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acPrintTrpOrderExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if uReportController.useFR then begin
    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      RepNo := 22 // TRP_ORDER_NOTE.fr3
    else
      RepNo := 23; // TRP_ORDER_INKOP_NOTE.fr3;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvropShippingPlanNo.AsInteger);
      Params.Add('ORDERNUMBER', daMoLM1.cdsAvropORDERNUMBER.AsString);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := daMoLM1.cdsAvropShippingPlanNo.AsInteger;

      if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
        FormCRViewReport.CreateCo('TRP_ORDER_NOTE.RPT', A)
      else
        FormCRViewReport.CreateCo('TRP_ORDER_INKOP_NOTE.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.BuildAvropSQL(const LONo: String; const ErReferens: String);
Var
  intLONO: String;
  IntErReferens: String;

  Procedure AddLOFilter(const Value: string);
  var
    dx: Integer;
    ns: string;
    delimiter, txt: string;
    delta, x: Integer;
  begin
    delimiter := ',';
    x := 1;
    delta := Length(delimiter);
    txt := Value + delimiter;
    // sl.BeginUpdate;
    // sl.Clear;
    // try
    while Length(txt) > 0 do
    begin
      dx := Pos(delimiter, txt);
      ns := Copy(txt, 0, dx - 1);
      // sl.Add(ns) ;
      if x = 1 then
        daMoLM1.cdsAvrop.SQL.Add('AND (CSH.ShippingPlanNo = ' + ns)
      else
        daMoLM1.cdsAvrop.SQL.Add('OR CSH.ShippingPlanNo = ' + ns);

      txt := Copy(txt, dx + delta, MaxInt);
      x := Succ(x);
    end;
    daMoLM1.cdsAvrop.SQL.Add(')');
    // finally
    // sl.EndUpdate;
    // end;
    // SQL.Add('AND CSH.ShippingPlanNo = ' + IntToStr(IntLONo))
  end;

Begin
  intLONO := LONo;
  IntErReferens := ErReferens;
  { if cbFilter.Checked = True then
    IntLONo := -1
    else
    if LONo > -1 then
    IntLONo:= LONo
    else
    IntLONo:= -2 ; }
  With daMoLM1.cdsAvrop do
  Begin
    if cds_Props.State = dsBrowse then
      cds_Props.Edit;

    if Length(lcKund.Text) = 0 then
      cds_PropsClientNo.Clear;

    if Length(lcMarknad.Text) = 0 then
      cds_PropsMarketRegionNo.Clear;

    if Length(lcSR.Text) = 0 then
      cds_PropsSalesRegionNo.Clear;

    if Length(lcSaljgrupp.Text) = 0 then
      cds_PropsSalesPersonNo.Clear;

    if cds_Props.State in [dsEdit, dsInsert] then
      cds_Props.Post;

    SQL.Clear;
    SQL.Add('SELECT DISTINCT ');
    SQL.Add('OH.CurrencyNo,');
    SQL.Add('CSH.ShippingPlanStatus ,');
    SQL.Add('CSH.ShippingPlanNo 				,');
    SQL.Add('OH.OrderNoText					AS ORDERNUMBER,');
    SQL.Add('isNull(CSH.Reference,' + QuotedStr(' ') + ')			AS REFERENCE,');
    SQL.Add('isnull(CSH.ETDYearWeek,-1) 			AS FROMWEEK,');
    SQL.Add('isnull(CSH.ETDWeekEnd,-1) 			AS TOWEEK,');
    SQL.Add('C.ClientName 					AS CLIENT, ');
    SQL.Add('isNull(AG.ClientName,' + QuotedStr(' ') + ')			AS AGENT,');
    SQL.Add('isNull(CSD.Reference,' + QuotedStr(' ') + ')			AS MARK,');
    SQL.Add('OL.OrderLineDescription 			AS PRODUCT,');
    SQL.Add('CSD.LengthDescription 				AS LENGTH,');
    SQL.Add('isnull(CSD.NoOfUnits,0) 			AS VOLUME ,');

    SQL.Add('VU.VolumeUnitName				AS VOLUNIT,');

    SQL.Add('isNull(Cy.CityName,' + QuotedStr(' ') + ')			AS DESTINATION,');

    SQL.Add('CSH.OrderNo 					AS ORDERNO,');
    SQL.Add('CSH.CustomerNo					AS CLIENTNO,');
    SQL.Add('CSH.DestinationNo				AS DESTINATIONNO,');
    SQL.Add('CSD.CustShipPlanDetailObjectNo,');
    SQL.Add('OH.SalesRegionNo				AS SALESREGIONNO,');
    SQL.Add('OH.OrderType					AS ORDERTYPE,');
    SQL.Add('OL.Reference          AS KR_REF,');

    SQL.Add('isNull((Select DV.SHIP_KVANT from');
    SQL.Add('dbo.DelPerCSD_II DV WHERE 	DV.CSDNO = csd.CustShipPlanDetailObjectNo),0)  AS LEV, isNull(OH.Trading,0) AS Trading, CSD.SequenceNo,');

    SQL.Add('-1 AS LoadedPkgs');

    // SQL.Add('isNull((Select LP.LoadedPkgs from') ;
    // SQL.Add('dbo.LoadedCSDPkgs LP WHERE 	LP.CSDNO = csd.CustShipPlanDetailObjectNo),0)  AS LoadedPkgs') ;

    SQL.Add('FROM dbo.CustomerShippingPlanHeader CSH');
    SQL.Add('	INNER JOIN dbo.CustomerShippingPlanDetails CSD 	ON  	CSD.ShippingPlanNo 	= CSH.ShippingPlanNo');

    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (cds_PropsVerkSupplierNo.AsInteger = 1) then
    Begin
      SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP on LSP.ShippingPlanNo = CSH.ShippingPlanNo');
      SQL.Add('INNER JOIN dbo.Loads L on L.LoadNo = LSP.LoadNo');
    End;

    SQL.Add('	LEFT OUTER JOIN dbo.ShippingPlan_ShippingAddress SSAD');
    SQL.Add
      ('	INNER JOIN dbo.Address	ADDR			ON	ADDR.ADDRESSNO	= SSAD.ADDRESSNO');
    SQL.Add('	Left Outer JOIN dbo.City		Cy 		ON  	ADDR.CityNo	= Cy.CityNo');
    SQL.Add('								ON SSAD.ShippingPlanNo = CSD.ShippingPlanNo');
    SQL.Add('								AND SSAD.Reference	= CSD.REFERENCE');

    SQL.Add('	INNER JOIN dbo.Client 			C	ON 	C.ClientNo		= CSH.CustomerNo');
    SQL.Add('	INNER JOIN dbo.Orders 			OH	ON	OH.OrderNo 		= CSH.OrderNo');

    SQL.Add('Left Outer Join dbo.SalesManGroupRow smg ');
    SQL.Add('Inner Join dbo.SalesManGroup sm on sm.SalesGroupNo = smg.SalesGroupNo');
    SQL.Add('on smg.UserID = OH.ResponsibleSeller');

    SQL.Add('	INNER JOIN dbo.OrderLine 		OL	ON	OL.OrderNo 		= CSD.OrderNo');
    SQL.Add('							AND 	OL.OrderLineNo 		= CSD.OrderLineNo');
    SQL.Add
      ('	INNER JOIN dbo.UnitName 		VU	ON 	VU.VolumeUnit_No 	= OL.VolumeUnitNo');

    SQL.Add
      ('	LEFT  OUTER JOIN dbo.Client		AG	ON  	OH.AgentNo	       	= AG.ClientNo');

    SQL.Add('WHERE 1 = 1 ');
    // if cbFilter.Checked = False then
    // Begin

    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (cds_PropsVerkSupplierNo.AsInteger = 0) then
      SQL.Add('AND CSH.SHIPPINGPLANSTATUS = ' + cds_PropsStatus.AsString)
    else if Length(intLONO) > 0 then
      AddLOFilter(intLONO)
      // SQL.Add('AND CSH.ShippingPlanNo = ' + IntToStr(IntLONo))
    else if (Length(IntErReferens) > 0) then
      SQL.Add('AND CSH.Reference LIKE ' + '''' + '%' + IntErReferens +
        '%' + '''');
    // End

    // else
    // SQL.Add('CSH.SHIPPINGPLANSTATUS = '+IntToStr(bcStatus.ItemIndex)) ;

    if (cds_PropsSalesPersonNo.AsInteger > 0) and
      ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) then
      SQL.Add('AND smg.SalesGroupNo = ' + cds_PropsSalesPersonNo.AsString);

    // if (cbFilter.Checked = True) then
    // SQL.Add('AND OH.OrderType = '+IntToStr(rgOrderType.ItemIndex)) ;
    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (not cds_PropsOrderTypeNo.IsNull) then
      SQL.Add('AND OH.OrderType = ' + cds_PropsOrderTypeNo.AsString);

    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (cds_PropsSalesRegionNo.AsInteger > 0) then
      SQL.Add('AND OH.SalesRegionNo = ' + cds_PropsSalesRegionNo.AsString);

    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (cds_PropsMarketRegionNo.AsInteger > 0) then
      SQL.Add('AND C.MarketRegionNo = ' + cds_PropsMarketRegionNo.AsString);

    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (cds_PropsClientNo.AsInteger > 0) then
      SQL.Add('AND CSH.CustomerNo = ' + cds_PropsClientNo.AsString);

    if ((Length(intLONO) = 0) and (Length(IntErReferens) = 0)) and
      (cds_PropsVerkSupplierNo.AsInteger = 1) then
    Begin
      SQL.Add('AND ((LSP.ConfirmedByReciever = 1) OR (LSP.ConfirmedByReciever = 0 AND LSP.LoadingLocationNo is null))          ');
      SQL.Add('AND L.LoadedDate > ' + QuotedStr('2009-11-01'));
      SQL.Add('AND L.LoadNo NOT IN (Select IL.LoadNo');
      SQL.Add('FROM dbo.Invoiced_Load IL');
      SQL.Add('Inner Join dbo.InvoiceHeader ih on ih.InternalInvoiceNo = IL.InternalInvoiceNo');
      SQL.Add('WHERE L.LoadNo = IL.LoadNo AND IL.ShippingPlanNo = LSP.ShippingPlanNo)');

      SQL.Add('AND (Select count(PackageNo) from dbo.LoadDetail LD');
      SQL.Add('where LD.LoadNo = LSP.LoadNo');
      SQL.Add('AND LD.ShippingPlanNo = LSP.ShippingPlanNo) > 0');

      { SQL.Add('AND CSH.CustomerNo in (Select LNI.CustomerNo') ;
        SQL.Add('FROM dbo.VIS_LoadsNotInvoiced LNI') ;
        SQL.Add('WHERE LNI.ShippingPlanNo = CSH.ShippingPlanNo)') ; }
    End;

    // GlobalLONo         := IntLONo ;
    GlobalLOErReferens := IntErReferens;

    // if thisuser.UserID = 8 then SQL.SaveToFile('cdsAvrop.TXT');
    if ThisUser.UserID = 8 then
    Begin
      mLog.Clear;
      mLog.Text := SQL.Text;
    End;
  End; // with
end;

procedure TfrmAvrop.FormShow(Sender: TObject);
Var
  SalesGroup, ClientNo, MarknadNo, RegionNo, x: Integer;
begin
  LoadUserProps(Self.Name);

  { with TIniFile.Create(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName) do
    try
    ClientNo                    :=  ReadInteger ('Avrop', 'ClientNo', 0);
    MarknadNo                   :=  ReadInteger ('Avrop', 'MarknadNo', 0);
    RegionNo                    :=  ReadInteger ('Avrop', 'RegionNo', 0);
    rgOrderType.ItemIndex       :=  ReadInteger ('Avrop', 'OrderType', 0) ;
    cbFilter.Checked            :=  ReadBool ('Avrop', 'VisaAlla', False) ;
    cbLoadsNotInvoiced.Checked  :=  ReadBool ('Avrop', 'EjFakt', False) ;
    SalesGroup                  :=  ReadInteger ('Avrop', 'SalesGroup', 0);


    //Index of skulle vara bra
    For x:= 0 to cbClient.Properties.Items.Count -1 do
    if integer(cbClient.Properties.Items.Objects[x]) = ClientNo then
    cbClient.ItemIndex:= x ;

    For x:= 0 to bcSalesRegions.Properties.Items.Count -1 do
    if integer(bcSalesRegions.Properties.Items.Objects[x]) = RegionNo then
    bcSalesRegions.ItemIndex:= x ;

    For x:= 0 to bcMarketRegions.Properties.Items.Count -1 do
    if integer(bcMarketRegions.Properties.Items.Objects[x]) = MarknadNo then
    bcMarketRegions.ItemIndex:= x ;

    For x:= 0 to cbSalesGroup.Properties.Items.Count -1 do
    if integer(cbSalesGroup.Properties.Items.Objects[x]) = SalesGroup then
    cbSalesGroup.ItemIndex:= x ;


    Finally
    Free ;
    End ; }

  GlobalLONo := -1;
  GlobalLOErReferens := '';
end;

procedure TfrmAvrop.acOpenLoadExecute(Sender: TObject);
begin
  if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
  Begin
    { if grdLoadDBTableView1.DataController.DataSource.DataSet.FieldByName('PackageEntryOption').AsInteger = 1 then
      OpenUtlastningsSpec
      else }
    OpenNormalLoad;
  End;
end;

procedure TfrmAvrop.OpenNormalLoad;
Var
  LoadNo: Integer;
  ReservedByUser: String;
begin
  if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
  Begin
    LoadNo := daMoLM1.cdsLoadsLoadNo.AsInteger;

    ReservedByUser := dmsSystem.Load_Reserved(LoadNo);

    if Length(ReservedByUser) > 0 then
    begin
      ShowMessage('Cannot open, Load is locked by user ' + ReservedByUser);
      Exit;
    end;

    LockWindowUpdate(grdLoad.Handle);
    try
      try
        with TfLoadEntryCSD.CreateWithExistingLoad(Self,
          daMoLM1.cdsAvropCLIENTNO.AsInteger,

          grdLoadDBTableView1.DataController.DataSource.DataSet.FieldByName
          ('LoadNo').AsInteger, daMoLM1.cdsAvropSALESREGIONNO.AsInteger) do
          try
            ShowModal;
            Application.ProcessMessages;
          finally
            Free;
            daMoLM1.RefreshAvropLoads;
          end;
      finally
        try
        except
          on E: Exception do
            { Nothing };
        end;
      end;
    finally
      LockWindowUpdate(0);
    end;
    if daMoLM1.cdsLoads.Locate('LoadNo', LoadNo, []) then;
    // showmessage('load') ;
  End;
end;

(*
  procedure TfrmAvrop.OpenUtlastningsSpec ;
  Var LoadNo            : Integer ;
  ReservedByUser    : String ;
  begin
  if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
  Begin
  LoadNo:= daMoLM1.cdsLoadsLoadNo.AsInteger ;


  ReservedByUser := dmsSystem.Load_Reserved(LoadNo) ;

  if Length(ReservedByUser) > 0 then
  begin
  ShowMessage('Cannot open, Load is locked by user ' + ReservedByUser) ;
  Exit ;
  end;

  LockWindowUpdate(grdLoad.Handle);
  try
  try
  with TfLoadEntryCSDTemp.CreateWithExistingLoad(
  Self,
  daMoLM1.cdsAvropCLIENTNO.AsInteger,

  grdLoadDBTableView1.DataController.DataSource.DataSet.FieldByName('LoadNo').AsInteger,
  daMoLM1.cdsAvropSALESREGIONNO.AsInteger) do try
  ShowModal;
  Application.ProcessMessages ;
  finally
  Free ;
  daMoLM1.RefreshAvropLoads;
  end;
  finally
  try
  except
  on E:Exception do
  {Nothing};
  end;
  end;
  finally
  LockWindowUpdate(0);
  end;
  if daMoLM1.cdsLoads.Locate('LoadNo', LoadNo, []) then ; //showmessage('load') ;
  End ;
  end;
*)
procedure TfrmAvrop.acNewLoadExecute(Sender: TObject);
begin
  if (daMoLM1.cdsAvrop.Active) and (daMoLM1.cdsAvrop.RecordCount > 0) then
  Begin
    with TfLoadEntryCSD.CreateWithNewLoad(Self,
      daMoLM1.cdsAvropCLIENTNO.AsInteger,
      daMoLM1.cdsAvropSALESREGIONNO.AsInteger, -1 { LoadNo } ,
      grdcxAvropDBBandedTableView1.DataController.DataSet.FieldByName
      ('ShippingPlanNo').AsInteger) do
      try
        ShowModal;
        Application.ProcessMessages;
      finally
        daMoLM1.RefreshAvropLoads;
        Free
      end;
  End;
end;

procedure TfrmAvrop.acDeleteLoadExecute(Sender: TObject);
begin
  ShowMessage('Öppna lasten för att ta bort den.');
end;

procedure TfrmAvrop.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdLoad.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoad.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmAvrop.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Try
    dmsSystem.StoreGridLayout(ThisUser.UserID,
      Self.Name + '/' + grdcxAvrop.Name, grdcxAvropDBBandedTableView1);
    dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoad.Name,
      grdLoadDBTableView1);
    dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name,
      grdLODBTableView1);
    dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdAddLO.Name,
      grdAddLODBTableView1);
  Except
  End;

  SaveUserProps(Self.Name);

  { with TIniFile.Create(dmsConnector.InifilesMap+'VisAvrop'+'.'+ThisUser.UserName) do
    try

    if cbClient.Properties.Items.Count > 0 then
    WriteInteger ('Avrop', 'ClientNo', integer(cbClient.Properties.Items.Objects[cbClient.ItemIndex])) ;

    if bcMarketRegions.Properties.Items.Count > 0 then
    WriteInteger ('Avrop', 'MarknadNo', integer(bcMarketRegions.Properties.Items.Objects[bcMarketRegions.ItemIndex])) ;

    if bcSalesRegions.Properties.Items.Count > 0 then
    WriteInteger ('Avrop', 'RegionNo', integer(bcSalesRegions.Properties.Items.Objects[bcSalesRegions.ItemIndex])) ;

    WriteInteger ('Avrop', 'OrderType', rgOrderType.ItemIndex) ;
    WriteBool ('Avrop', 'VisaAlla', cbFilter.Checked) ;
    WriteBool ('Avrop', 'EjFakt', cbLoadsNotInvoiced.Checked) ;

    if cbSalesGroup.Properties.Items.Count > 0 then
    WriteInteger ('Avrop', 'SalesGroup', integer(cbSalesGroup.Properties.Items.Objects[cbSalesGroup.ItemIndex]));


    Finally
    Free ;
    End ; }

  if daMoLM1.cdsAvrop.Active = True then
  Begin
    // daMoLM1.cdsAvrop.EmptyDataSet ;
    daMoLM1.cdsAvrop.Active := False;
  End;
  if daMoLM1.cdsSetAvrop.ChangeCount > 0 then
  Begin
    daMoLM1.cdsSetAvrop.ApplyUpdates(0);
    daMoLM1.cdsSetAvrop.CommitUpdates;
  End;
  CanClose := True;
end;

procedure TfrmAvrop.bLogClick(Sender: TObject);
begin
  mLog.Visible := not mLog.Visible;
end;

procedure TfrmAvrop.acPrintTallyUSNoteExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if daMoLM1.cdsLoadsLoadNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin
    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      RepNo := 41 // TALLY_US_NOTE.fr3
    else
      RepNo := 41; // TALLY_US_NOTE.fr3;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('LoadNo', daMoLM1.cdsLoadsLoadNo.AsInteger);
      Params.Add('ORDERNUMBER', daMoLM1.cdsAvropORDERNUMBER.AsString);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try

      SetLength(A, 1);
      A[0] := daMoLM1.cdsLoadsLoadNo.AsInteger;

      dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger :=
        daMoLM1.cdsLoadsLoadNo.AsInteger;
      dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL;
      if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
        FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT', A)
      else
        FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
      dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
        daMoLM1.cdsLoadsLoadNo.AsInteger;
      dmsSystem.sq_DelPkgType.ExecSQL;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
End;

procedure TfrmAvrop.acSetLOStatusToCancelExecute(Sender: TObject);
begin
  setStatus(STATUS_LO_CANCEL);
end;

procedure TfrmAvrop.acSetLOStatusToAktivExecute(Sender: TObject);
begin
  setStatus(STATUS_LO_PROGRESS);
end;

procedure TfrmAvrop.acSetLOStatusToCompleteExecute(Sender: TObject);
begin
  setStatus(STATUS_LO_COMPLETE);
end;

procedure TfrmAvrop.acCustomizeAvropGridExecute(Sender: TObject);
begin
  if grdcxAvrop.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdcxAvrop.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmAvrop.acAvropCollapseAllExecute(Sender: TObject);
begin
  grdcxAvropDBBandedTableView1.ViewData.Collapse(True);
end;

procedure TfrmAvrop.acAvropExpandAllExecute(Sender: TObject);
begin
  grdcxAvropDBBandedTableView1.ViewData.Expand(True);
end;

procedure TfrmAvrop.acShowGroupByBoxExecute(Sender: TObject);
begin
  grdcxAvropDBBandedTableView1.OptionsView.GroupByBox :=
    not grdcxAvropDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfrmAvrop.acFitAllColumnsInAvropViewExecute(Sender: TObject);
begin
  grdcxAvropDBBandedTableView1.OptionsView.ColumnAutoWidth :=
    not grdcxAvropDBBandedTableView1.OptionsView.ColumnAutoWidth;
end;

procedure TfrmAvrop.acSetLOStatusToCancelUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acSetLOStatusToCancel.Enabled := (cdsAvrop.Active) and
      (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acSetLOStatusToAktivUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acSetLOStatusToAktiv.Enabled := (cdsAvrop.Active) and
      (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acSetLOStatusToCompleteUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acSetLOStatusToComplete.Enabled := (cdsAvrop.Active) and
      (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.ac_BookingUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    ac_Booking.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.ac_MakeInvoiceUpdate(Sender: TObject);
begin

  With daMoLM1 do
  Begin
    ac_MakeInvoice.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0)

    // and (AnyLoadsToInvoice)
      and (grdcxAvropDBBandedTableView1.Controller.SelectedRecordCount > 0);
  End;

end;

procedure TfrmAvrop.acPrintContractUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acPrintContract.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acPrintLOUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acPrintLO.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acPrintTrpOrderUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acPrintTrpOrder.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acPrintTallyUSNoteUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acPrintTallyUSNote.Enabled := (cdsLoads.Active) and
      (cdsLoads.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acPrintFSExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: Integer;
  Params: TCMParams;
begin
  if daMoLM1.cdsLoadsLoadNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin
    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      RepNo := 43 // TALLY_VER3_NOTE.fr3
    else
      RepNo := 39; // TALLY_VER2_INKOP_NOTE.fr3;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('LoadNo', daMoLM1.cdsLoadsLoadNo.AsInteger);
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvrop1ShippingPlanNo.AsInteger);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger :=
        daMoLM1.cdsLoadsLoadNo.AsInteger;
      dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL;
      Try

        SetLength(A, 1);
        A[0] := daMoLM1.cdsLoadsLoadNo.AsInteger;

        if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
          FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT', A)
        else
          FormCRViewReport.CreateCo('TALLY_VER2_INKOP_NOTE.RPT', A);

        if FormCRViewReport.ReportFound then Begin
          FormCRViewReport.ShowModal;
        End;

      Finally
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          daMoLM1.cdsLoadsLoadNo.AsInteger;
        dmsSystem.sq_DelPkgType.ExecSQL;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
End;

procedure TfrmAvrop.acPrintFSUpdate(Sender: TObject);
begin
  {
    With daMoLM1 do
    Begin
    acPrintFS.Enabled:=
    (grdLoadDBTableView1.DataController.DataSet.Active)
    and (grdLoadDBTableView1.DataController.DataSet.RecordCount > 0) ;
    End ;
  }
end;

procedure TfrmAvrop.grdLoadDBTableView1DblClick(Sender: TObject);
begin
  acOpenLoadExecute(Sender);
end;

procedure TfrmAvrop.grdLoadDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  PackageEntryOption, Intno, InvNo: Integer;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName
    ('INTERNAL_INVOICENO');
  Intno := ARecord.Values[AColumn.Index];

  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('INVOICE_NO');
  if ARecord.Values[AColumn.Index] <> Null then
    InvNo := ARecord.Values[AColumn.Index]
  else
    InvNo := -1;

  { AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PO_INVOICENO') ;
    PONo:= ARecord.Values[AColumn.Index] ;

    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('PROFORMA_INVOICENO') ;
    ProNo:= ARecord.Values[AColumn.Index] ; }

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('PackageEntryOption').Index] <> Null then
  Begin
    AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName
      ('PackageEntryOption');
    PackageEntryOption := ARecord.Values[AColumn.Index];
  End
  else
    PackageEntryOption := 0;

  // Set the color for this row, based on ShippingPlanNo status
  if (InvNo <> -1) then
    AStyle := cxStyleSilver
  else if Intno <> -1 then
    AStyle := cxStyleBlue
  else
    AStyle := cxStyleYellow;

  if PackageEntryOption > 0 then
    AStyle := cxStyleRed;
end;

procedure TfrmAvrop.acLoadSummaryExecute(Sender: TObject);
begin
  grdLoadDBTableView1.OptionsView.Footer :=
    not grdLoadDBTableView1.OptionsView.Footer;
end;

procedure TfrmAvrop.acMovePkgsToInvAndDeleteLoadExecute(Sender: TObject);
var
  fSelectLIPNo: TfSelectLIPNo;
begin
  // 1) Move alla packages to selected inventory
  // 2) Delete load
  if MessageDlg('Vill du flytta alla paket i lasten och makulera lasten?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) = mrYes then
  Begin
    fSelectLIPNo := TfSelectLIPNo.Create(nil);
    Try
      fSelectLIPNo.LONo := daMoLM1.cdsLoadsLO.AsInteger;
      fSelectLIPNo.OwnerNo := daMoLM1.cdsAvropSALESREGIONNO.AsInteger;
      if fSelectLIPNo.ShowModal = mrOK then
      Begin
        if (not fSelectLIPNo.mtPropsLIPNo.IsNull) and
          (fSelectLIPNo.mtPropsLIPNo.AsInteger > 0) then
        Begin
          dmsSystem.MovePkgToInvFromLoad(daMoLM1.cdsLoadsLoadNo.AsInteger,
            fSelectLIPNo.mtPropsLIPNo.AsInteger);
        End
        else
          ShowMessage
            ('Kan inte flytta paket pga att ingen lagergrupp är vald.');
      End;
    Finally
      fSelectLIPNo.mtProps.Active := False;
      fSelectLIPNo.cds_LO_LookUp.Active := False;
      FreeAndNil(fSelectLIPNo);
    End;
  End;
end;

procedure TfrmAvrop.acMovePkgsToInvAndDeleteLoadUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acMovePkgsToInvAndDeleteLoad.Enabled := (cdsLoads.Active) and
      (cdsLoadsINTERNAL_INVOICENO.AsInteger < 1) and (cdsLoads.RecordCount > 0);
  End; // daMoLM1
end;

procedure TfrmAvrop.acFitAllColumnsInLoadViewExecute(Sender: TObject);
begin
  grdLoadDBTableView1.OptionsView.ColumnAutoWidth :=
    not grdLoadDBTableView1.OptionsView.ColumnAutoWidth;
end;

procedure TfrmAvrop.acSetLoadStatusToPreliminaryExecute(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    cdsLoads.Edit;
    cdsLoadsSenderLoadStatus.AsInteger := 0;
    cdsLoads.Post;
    if cdsLoads.ChangeCount > 0 then
    Begin
      cdsLoads.ApplyUpdates(0);
      cdsLoads.CommitUpdates;
    End;
  End; // daMoLM1
end;

procedure TfrmAvrop.acSetLoadStatusToCompleteExecute(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    cdsLoads.Edit;
    cdsLoadsSenderLoadStatus.AsInteger := 2;
    cdsLoads.Post;
    if cdsLoads.ChangeCount > 0 then
    Begin
      cdsLoads.ApplyUpdates(0);
      cdsLoads.CommitUpdates;
    End;
  End; // daMoLM1
end;

procedure TfrmAvrop.acSetLoadStatusToPreliminaryUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acSetLoadStatusToPreliminary.Enabled := (cdsLoads.Active) and
      (cdsLoadsLoadOK.AsInteger <> 1) and (cdsLoads.RecordCount > 0) and
      (cdsLoadsINTERNAL_INVOICENO.AsInteger = -1);
  End; // daMoLM1
end;

procedure TfrmAvrop.acSetLoadStatusToCompleteUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acSetLoadStatusToComplete.Enabled := (cdsLoads.Active) and
      (cdsLoadsLoadOK.AsInteger <> 1) and (cdsLoads.RecordCount > 0) and
      (cdsLoadsINTERNAL_INVOICENO.AsInteger = -1);
  End; // daMoLM1
end;

procedure TfrmAvrop.acOpenInvoiceExecute(Sender: TObject);
Var
  frmInvoice: TfrmInvoice;
  DeleteTdmVidaInvoice: Boolean;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try

    if (not Assigned(dmVidaInvoice)) then
      dmVidaInvoice := TdmVidaInvoice.Create(nil);
    dmsSystem.AssignDMToThisWork('acOpenInvoiceExecute', 'dmVidaInvoice');

    { DeleteTdmVidaInvoice:= False ;
      if not Assigned(dmVidaInvoice) then
      Begin
      DeleteTdmVidaInvoice:= True ;
      dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
      End ;
    }
    with dmVidaInvoice, daMoLM1 do
    Begin
      frmInvoice := TfrmInvoice.Create(NIL);
      Try
        cdsInvoiceShipTo.Active := True;
        frmInvoice.TabControl1.Tabs.Clear;
        cdsInvoiceHead.Active := False;
        cdsInvoiceHead.Close;
        cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsLoadsINTERNAL_INVOICENO.AsInteger;
        cdsInvoiceHead.Open;
        cdsInvoiceHead.Active := True;
        cdsInvoiceLO.Close;
        cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsLoadsINTERNAL_INVOICENO.AsInteger;
        cdsInvoiceLO.Active := True;

        cds_PIP.Active := False;
        cds_PIP.ParamByName('OwnerNo').AsInteger :=
          cdsInvoiceHeadSupplierNo.AsInteger;
        cds_PIP.Active := True;

        cds_IH_SpecLoad.Active := False;
        cds_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsLoadsINTERNAL_INVOICENO.AsInteger;
        cds_IH_SpecLoad.Active := True;
        if cds_IH_SpecLoad.RecordCount = 0 then
        Begin
          cds_IH_SpecLoad.Insert;
          cds_IH_SpecLoad.Post;
        End;

        cdsInvoiceLO.First;
        While not cdsInvoiceLO.Eof do
        Begin
          frmInvoice.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString);
          cdsInvoiceLO.Next;
        End;

        cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
          frmInvoice.TabControl1.Tabs[0];
        cdsInvoiceLO.Filtered := True;

        cdsInvoiceDetail.Close;
        cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsLoadsINTERNAL_INVOICENO.AsInteger;
        // cdsInvoiceDetail.Active:= True ;
        // cdsInvoiceDetail.Active:= False ;
        cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
          frmInvoice.TabControl1.Tabs[0];
        cdsInvoiceDetail.Filtered := True;
        cdsInvoiceDetail.Active := True;

        frmInvoice.ShowModal;

        if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
          dmVidaInvoice.cds_IH_SpecLoad.Post;
        if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
        Begin
          dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0);
          dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates;
        End;

        cdsLoads.Active := False;
        cdsLoads.Active := True;

        { if (DeleteTdmVidaInvoice = False) and (cdsInvoiceList.Active) and (cdsInvoiceList.RecordCount > 0) then
          Begin
          cdsInvoiceList.Active:= False ;
          cdsInvoiceList.Active:= True ;
          End ; }

      Finally
        fInternalInvoiceNo := -1;

        cdsInvoiceLO.Filtered := False;
        cdsInvoiceLO.Active := False;
        cdsInvoiceDetail.Filtered := False;
        cdsInvoiceDetail.Filter := '';
        cdsInvoiceDetail.Active := False;
        cdsInvoiceShipTo.Active := False;
        frmInvoice.Free;

        if dmsSystem.DeleteAssigned('acOpenInvoiceExecute', 'dmVidaInvoice') = True
        then
        Begin
          dmVidaInvoice.Free;
          dmVidaInvoice := Nil;
        End;
        // if DeleteTdmVidaInvoice = True then
        // FreeAndNil(dmVidaInvoice) ;
      End;
    End; // with
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
End;

procedure TfrmAvrop.acPrintLastOrderDittVerkExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: integer;
  Params: TCMParams;
begin
  if grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
    ('ShippingPlanNo').AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin
    RepNo := 20; // LASTORDER_NOTE_ver3.fr3
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo',
        grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger);
      Params.Add('SupplierNo', grdLODBTableView1.DataController.DataSource.
        DataSet.FieldByName('SUPPLIERNO').AsInteger);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger;
      A[1] := grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('SUPPLIERNO').AsInteger;
      FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acPrintLOAllaVerkExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: integer;
  Params: TCMParams;
begin
  if grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
    ('SUPPLIERNO').AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin
    RepNo := 20; // LASTORDER_NOTE_ver3.fr3
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo',
        grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger);
      Params.Add('SupplierNo', -1);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger;
      A[1] := -1;
      FormCRViewReport.CreateCo('LASTORDER_NOTE_ver3.RPT', A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmAvrop.acFitAllColumnsInLOViewExecute(Sender: TObject);
begin
  grdLODBTableView1.OptionsView.ColumnAutoWidth :=
    not grdLODBTableView1.OptionsView.ColumnAutoWidth;
end;

procedure TfrmAvrop.acFitAllColumnsInAddLOViewExecute(Sender: TObject);
begin
  grdAddLODBTableView1.OptionsView.ColumnAutoWidth :=
    not grdAddLODBTableView1.OptionsView.ColumnAutoWidth;
end;

procedure TfrmAvrop.acPrintAddLODittVerkExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: integer;
  Params: TCMParams;
begin
  if grdAddLODBTableView1.DataController.DataSource.DataSet.FieldByName
    ('ShippingPlanNo').AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin
    RepNo := 289; // LASTORDER_VERK_NOTE_ver3.fr3 (578)((289-DocType=3))
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo',
        grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger);
      Params.Add('SupplierNo', grdLODBTableView1.DataController.DataSource.
        DataSet.FieldByName('SUPPLIERNO').AsInteger);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger;
      A[1] := grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('SUPPLIERNO').AsInteger;
      FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT', A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acPrintAddLOAllaVerkExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: integer;
  Params: TCMParams;
begin

  if grdAddLODBTableView1.DataController.DataSource.DataSet.FieldByName
    ('SUPPLIERNO').AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin
    RepNo := 289; // LASTORDER_VERK_NOTE_ver3.fr3 (578)((289-DocType=3))
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo',
        grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger);
      Params.Add('SupplierNo',-1);
      RC.RunReport(RepNo,Params,frPreview,0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 2);
      A[0] := grdLODBTableView1.DataController.DataSource.DataSet.FieldByName
        ('ShippingPlanNo').AsInteger;
      A[1] := -1;
      FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT', A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acChangeAddLOLayoutExecute(Sender: TObject);
begin
  if grdAddLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdAddLO.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmAvrop.acOpenLoadUpdate(Sender: TObject);
begin
  acOpenLoad.Enabled :=
    (grdLoadDBTableView1.DataController.DataSource.DataSet.Active) and
    (grdLoadDBTableView1.DataController.DataSource.DataSet.RecordCount > 0);
end;

procedure TfrmAvrop.acOpenInvoiceUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acOpenInvoice.Enabled := (cdsLoads.Active) and
      (cdsLoadsINTERNAL_INVOICENO.AsInteger <> -1) and
      (cdsLoads.RecordCount > 0);
  End; // daMoLM1
end;

procedure TfrmAvrop.grdcxAvropDBBandedTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  Status: Integer;

begin
  { AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ShippingPlanStatus') ;
    Status  := ARecord.Values[AColumn.Index] ;

    // Set the color for this row, based on ShippingPlanNo status
    if Status <> null then
    Begin
    if Status = 0 then
    AStyle := cxStyleSilver
    else
    if Status = 1 then
    AStyle := cxStyleBlue ;
    End ; }
end;

procedure TfrmAvrop.acRefreshALLExecute(Sender: TObject);
begin
  // cds_PropsNewItemRow.AsInteger      := 1 ;
  cds_PropsVerkSupplierNo.AsInteger := 0;
  // SetMyBookMark(Sender) ;
  Refresh_Avrop(Sender, '', '');
  // GotoMyBookmark(Sender) ;
end;

procedure TfrmAvrop.acRefreshALLandNotInvoicedExecute(Sender: TObject);
begin
  // cds_PropsNewItemRow.AsInteger  := 1 ;
  GlobalLONo := -1;
  eSearchLONr.Text := '';
  if cds_Props.State in [dsBrowse] then
    cds_Props.Edit;
  cds_PropsVerkSupplierNo.AsInteger := 1;
  // SetMyBookMark(Sender) ;
  Refresh_Avrop(Sender, '', '');
  // GotoMyBookmark(Sender) ;
end;

procedure TfrmAvrop.acNewLoadUpdate(Sender: TObject);
begin
  acNewLoad.Enabled :=
    (grdcxAvropDBBandedTableView1.DataController.DataSource.DataSet.Active) and
    (grdcxAvropDBBandedTableView1.DataController.DataSource.DataSet.
    RecordCount > 0);
end;

procedure TfrmAvrop.acGruppSummeringExecute(Sender: TObject);
begin
  grdcxAvropDBBandedTableView1.OptionsView.GroupFooters :=
    gfVisibleWhenExpanded;
end;

procedure TfrmAvrop.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
    SaveDialog1.DefaultExt := 'xls';
    SaveDialog1.InitialDir := ExcelDir;
    if SaveDialog1.Execute then
    Begin
      FileName := SaveDialog1.FileName;
      ExportGridToExcel(FileName, grdcxAvrop, False, False, True, 'xls');
      ShowMessage('Tabell exporterad till Excelfil ' + FileName);
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmAvrop.GetUserPrefs;
begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
end;

procedure TfrmAvrop.acExportToExcelUpdate(Sender: TObject);
begin
  acExportToExcel.Enabled := (daMoLM1.cdsAvrop.Active) and
    (daMoLM1.cdsAvrop.RecordCount > 0);
end;

procedure TfrmAvrop.acEmailaTrpOrderExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportFile: string;
begin
  MailToAddress := dmsContact.GetEmailAddressForSpeditorByLO
    (daMoLM1.cdsAvropShippingPlanNo.AsInteger);
  if Length(MailToAddress) = 0 then
  Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)');
  End;
  if Length(MailToAddress) > 0 then
  Begin
    // if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
    ExportFile := ExcelDir + 'LONo ' + daMoLM1.cdsAvropShippingPlanNo.AsString + '.pdf';
    if FileExists(ExportFile) then
      DeleteFile(ExportFile);

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      ReportType := cTrpOrder
    else
      ReportType := cTrpOrderInkop;
    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvropShippingPlanNo.AsInteger);

      RC := TCMReportController.Create;
      ClientNo := daMoLM1.cdsAvropCLIENTNO.AsInteger;
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
        A[0] := daMoLM1.cdsAvropShippingPlanNo.AsInteger;
        FormCRExportOneReport.CreateCo(daMoLM1.cdsAvropCLIENTNO.AsInteger,
          ReportType, A, ExcelDir + 'LONo ' +
          daMoLM1.cdsAvropShippingPlanNo.AsString);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'LONo ' + daMoLM1.cdsAvropShippingPlanNo.
      AsString + '.pdf';
    // Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Transportorder. LOnr: ' +
        daMoLM1.cdsAvropShippingPlanNo.AsString, 'Transportorder bifogad. ' + LF
        + '' + 'Transportorder attached. ' + LF + '' + LF + '' + LF +
        'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
        (ThisUser.UserID), dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
        Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

procedure TfrmAvrop.acEmailaFSExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportFile: string;
begin
  MailToAddress := dmsContact.GetEmailAddress
    (daMoLM1.cdsAvropCLIENTNO.AsInteger);
  if Length(MailToAddress) = 0 then Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)');
  End;
  if Length(MailToAddress) > 0 then Begin
    // if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
    dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger :=
      daMoLM1.cdsLoadsLoadNo.AsInteger;
    dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL;

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      ReportType := cFoljesedel           //TALLY_VER3_NOTE.fr3 (43)
    else
      ReportType := cFoljesedelInkop;     //TALLY_VER2_INKOP_NOTE.fr3 (39)

    ExportFile := ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString + '.pdf';
    if FileExists(ExportFile) then
      DeleteFile(ExportFile);

    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsLoadsLoadNo.AsInteger);

      RC := TCMReportController.Create;
      ClientNo := daMoLM1.cdsAvropCLIENTNO.AsInteger;
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
        A[0] := daMoLM1.cdsLoadsLoadNo.AsInteger;
        FormCRExportOneReport.CreateCo(daMoLM1.cdsAvropCLIENTNO.AsInteger,
          ReportType, A, ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString + '.pdf';
    // Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Följesedel. FSnr: ' +
        daMoLM1.cdsLoadsLoadNo.AsString, 'Följesedel bifogad. ' + LF + '' +
        'Load tally attached. ' + LF + '' + LF + '' + LF + 'MVH/Best Regards, '
        + LF + '' + dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

procedure TfrmAvrop.acEmailaLOExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportFile: string;
begin
  MailToAddress := dmsContact.GetEmailAddress
    (daMoLM1.cdsAvropCLIENTNO.AsInteger);
  if Length(MailToAddress) = 0 then Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)');
  End;
  if Length(MailToAddress) > 0 then Begin
    // if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
    ExportFile := ExcelDir + 'LO ' + daMoLM1.cdsAvropShippingPlanNo.
      AsString + '.pdf';
    if FileExists(ExportFile) then
      DeleteFile(ExportFile);

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      ReportType := cLastorder // LASTORDER_NOTE_ver3.fr3 (20)
    else Begin
      ReportType := cLastorderInkop // Lastorder_inkop_NOTE_ver2.fr3 (21),
                                    // LASTORDER_INKOP_NOTE_dk_ver2.fr3 (34)
                                    // Lastorder_inkop_NOTE_dk_eng_ver2.fr3 (38)
    End;

    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvropShippingPlanNo.AsInteger);
      Params.Add('SupplierNo', -1);

      RC := TCMReportController.Create;
      ClientNo := daMoLM1.cdsAvropCLIENTNO.AsInteger;
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
        SetLength(A, 2);
        A[0] := daMoLM1.cdsAvropShippingPlanNo.AsInteger;
        A[1] := -1;
        if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
          ReportType := cLastorder
        else
          ReportType := cLastorderInkop;
        FormCRExportOneReport.CreateCo(daMoLM1.cdsAvropCLIENTNO.AsInteger,
          ReportType, A, ExcelDir + 'LO ' +
          daMoLM1.cdsAvropShippingPlanNo.AsString);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'LO ' + daMoLM1.cdsAvropShippingPlanNo.
      AsString + '.pdf';
    // Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Lastorder. LOnr: ' +
        daMoLM1.cdsAvropShippingPlanNo.AsString, 'Lastorder bifogad. ' + LF + ''
        + 'Loadorder attached. ' + LF + '' + LF + '' + LF + 'MVH/Best Regards, '
        + LF + '' + dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

procedure TfrmAvrop.acEmailaFS_USAExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportFile: string;
begin
  MailToAddress := dmsContact.GetEmailAddress
    (daMoLM1.cdsAvropCLIENTNO.AsInteger);
  if Length(MailToAddress) = 0 then Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)');
  End;
  if Length(MailToAddress) > 0 then Begin
    // if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;
    dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger :=
      daMoLM1.cdsLoadsLoadNo.AsInteger;
    dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL;

    ExportFile := ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString + '.pdf';
    if FileExists(ExportFile) then
      DeleteFile(ExportFile);

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      ReportType := cFoljesedelUSA     //TALLY_US_NOTE.RPT (41)
    else
      ReportType := cFoljesedelUSA;

    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvropShippingPlanNo.AsInteger);

      RC := TCMReportController.Create;
      ClientNo := daMoLM1.cdsAvropCLIENTNO.AsInteger;
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
        A[0] := daMoLM1.cdsLoadsLoadNo.AsInteger;
        FormCRExportOneReport.CreateCo(daMoLM1.cdsAvropCLIENTNO.AsInteger,
          ReportType, A, ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;

    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString + '.pdf';
    // Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Följesedel. FSnr: ' +
        daMoLM1.cdsLoadsLoadNo.AsString, 'Följesedel bifogad. ' + LF + '' +
        'Load tally attached. ' + LF + '' + LF + '' + LF + 'MVH/Best Regards, '
        + LF + '' + dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

procedure TfrmAvrop.Button1Click(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
begin
  MailToAddress := 'lars.makiaho@gmail.com';
  if Length(MailToAddress) > 0 then
  Begin
    // if dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger < 1 then exit ;

    daMoLM1.cdsAvrop.SQL.SaveToFile(ExcelDir + 'Avrop_ErrorLog.TXT');

    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'Avrop_ErrorLog.TXT';
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Avrop errorlog, LONr: ' +
        daMoLM1.cdsAvropShippingPlanNo.AsString, 'MVH/Best Regards, ' + LF + ''
        + dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

function TfrmAvrop.SelectAvropsNrAttSkapaSalesLoadMot
  (const POLONo: Integer): Integer;
var
  fTradingLinkMult: TfTradingLinkMult;
Begin
  // With dmArrivingLoads do
  Begin
    fTradingLinkMult := TfTradingLinkMult.Create(nil);
    try
      fTradingLinkMult.POShippingPlanNo := POLONo;
      if fTradingLinkMult.ShowModal = mrOK then
        Result := fTradingLinkMult.cds_AvropLinkAvropsnr.AsInteger
      else
        Result := -1;
    finally
      FreeAndNil(fTradingLinkMult);
    end;
  End;
End;

procedure TfrmAvrop.acCopyLoadToSalesExecute(Sender: TObject);
Var
  Sales_LONo, NewLoadNo: Integer;
begin

  // ToDo ! Gör en kontroll att avropen matchar med orderlineno!!

  With daMoLM1 do
  Begin
    NewLoadNo := dmsSystem.POLoadConfirmed(cdsLoadsLoadNo.AsInteger,
      Sales_LONo);
    if NewLoadNo = 0 then
    Begin
      Sales_LONo := SelectAvropsNrAttSkapaSalesLoadMot
        (cdsAvropShippingPlanNo.AsInteger);
      if Sales_LONo > 0 then
      Begin
        NewLoadNo := dmsSystem.CopyPOLoadToSalesLoadAndSetPackagesAsNotAvailable
          (cdsLoadsLoadNo.AsInteger, Sales_LONo, cdsLoadsLoadNo.AsInteger, 1);
        if NewLoadNo > 0 then
          ShowMessage('Inköpslasten kopierad till försäljningsavrop ' +
            inttostr(Sales_LONo) + ', lastnr ' + inttostr(NewLoadNo));
      End;
    End
    else
      ShowMessage('Inköpslasten är redan kopierad till försäljningsavrop ' +
        inttostr(Sales_LONo) + ', lastnr ' + inttostr(NewLoadNo));
  End;
end;

procedure TfrmAvrop.acCopyLoadToSalesUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acCopyLoadToSales.Enabled := (cdsAvrop.Active) and
      (cdsAvrop.RecordCount > 0) and (cdsAvropORDERTYPE.AsInteger = 1) and
      (cdsAvropTrading.AsInteger = 1) and (cdsLoads.Active) and
      (cdsLoads.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.eSearchErReferensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Status: Integer;
begin
  if Key <> VK_RETURN then
    Exit;
  if Length(eSearchErReferens.Text) = 0 then
    Exit;

  if cds_Props.State in [dsBrowse] then
    cds_Props.Edit;
  cds_PropsVerkSupplierNo.AsInteger := 0;

  With daMoLM1 do
  Begin
    Refresh_Avrop(Sender, '', eSearchErReferens.Text);

    cdsAvrop.DisableControls;
    Try

      if cdsAvropORDERTYPE.AsInteger > -1 then
      Begin
        if cds_Props.State in [dsBrowse] then
          cds_Props.Edit;
        cds_PropsOrderTypeNo.AsInteger := cdsAvropORDERTYPE.AsInteger;
      End;

      Status := -1;

      if (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0) then
      Begin
        sq_Get_CSH_Status.Close;
        sq_Get_CSH_Status.ParamByName('ShippingPlanNo').AsInteger :=
          cdsAvropShippingPlanNo.AsInteger;
        sq_Get_CSH_Status.Open;
        if sq_Get_CSH_Status.Eof = False then
          Status := sq_Get_CSH_StatusShippingPlanStatus.AsInteger;
        sq_Get_CSH_Status.Close;

        if Status = -1 then
        Begin
          ShowMessage('No match');
          eSearchErReferens.Text := '';
          eSearchErReferens.SetFocus;
          Exit;
        End
        else
        Begin
          if cds_Props.State in [dsBrowse] then
            cds_Props.Edit;
          cds_PropsStatus.AsInteger := Status;
        End;

      End // if (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0) then
      else if Status = -1 then
      Begin
        ShowMessage('No match');
        eSearchErReferens.Text := '';
        eSearchErReferens.SetFocus;
        Exit;
      End;

      Timer2.Enabled := True;

    Finally
      cdsAvrop.EnableControls;
    End;
  End; // with

end;

procedure TfrmAvrop.acDeletePrelInvoiceExecute(Sender: TObject);
Var
  DeleteTdmVidaInvoice: Boolean;
begin
  if MessageDlg
    ('Attester gjorda mot fakturan försvinner om fakturan tas bort, vill du fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    With dmVidaInvoice, daMoLM1 do
    Begin
      // Begin
      // DeleteTdmVidaInvoice := True ;

      { if not Assigned(dmVidaInvoice) then
        Begin
        dmVidaInvoice        := TdmVidaInvoice.Create(Nil) ;
        DeleteTdmVidaInvoice := True ;
        End ;
      }

      if (not Assigned(dmVidaInvoice)) then
        dmVidaInvoice := TdmVidaInvoice.Create(nil);
      dmsSystem.AssignDMToThisWork('acDeletePrelInvoiceExecute',
        'dmVidaInvoice');

      Try

        if MessageDlg('Är du säker på att du vill ta bort fakturan?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
          cdsInvoiceNumber.Active := True;
          if not cdsInvoiceNumber.Locate('InternalInvoiceNo',
            cdsLoadsINTERNAL_INVOICENO.AsInteger, []) then
          Begin
            dmsConnector.StartTransaction;
            Try
              // taken care of by Invoiced_Load     sq_SetLSInvoicedStatus.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceListInternalInvoiceNo.AsInteger ;
              // sq_SetLSInvoicedStatus.ExecSQL(false) ;
              sq_DeleteInvoice.ParamByName('InternalInvoiceNo').AsInteger :=
                cdsLoadsINTERNAL_INVOICENO.AsInteger;
              sq_DeleteInvoice.ExecSQL;
              dmsConnector.Commit;
              cdsLoads.Active := False;
              cdsLoads.Active := True;
              // RemoveInvoiceFromList (cdsInvoiceListINT_INVNO.AsInteger)
            Except
              dmsConnector.Rollback;
            End;
            // cdsInvoiceList.Active:= False ;
            // cdsInvoiceList.Active:= True ;
          End
          else
            ShowMessage('Cannot delete, Invoice number assigned!');
        End;
      Finally
        cdsInvoiceNumber.Active := False;
        // if DeleteTdmVidaInvoice = True then
        // FreeAndNil(dmVidaInvoice) ;//.Free ;

        if dmsSystem.DeleteAssigned('acDeletePrelInvoiceExecute',
          'dmVidaInvoice') = True then
        Begin
          dmVidaInvoice.Free;
          dmVidaInvoice := Nil;
        End;

      End;
    End; // With
end;

procedure TfrmAvrop.acDeletePrelInvoiceUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acDeletePrelInvoice.Enabled := (cdsLoads.Active) and
      (cdsLoads.RecordCount > 0) and (cdsLoadsINTERNAL_INVOICENO.AsInteger > -1)
      and (cdsLoadsINVOICE_NO.AsInteger = -1);
  End; // With
end;

procedure TfrmAvrop.acTrpOrderAvropExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  RepNo: integer;
  Params: TCMParams;
begin
  if uReportController.useFR then begin
    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      RepNo := 11 // TRP_AVROPSORDER_NOTE_dk.fr3
    else begin
      ShowMessage('N/A');
      Exit;
    end;
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo',daMoLM1.cdsAvropShippingPlanNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := daMoLM1.cdsAvropShippingPlanNo.AsInteger;

      if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
        FormCRViewReport.CreateCo('TRP_AVROPSORDER_NOTE_dk.RPT', A)
      else
        ShowMessage('N/A');
      // FormCRViewReport.CreateCo('TRP_ORDER_INKOP_NOTE.RPT') ;

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmAvrop.acEmailaTrpOrderAvropDKExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportFile: string;
begin
  MailToAddress := dmsContact.GetEmailAddressForSpeditorByLO
    (daMoLM1.cdsAvropShippingPlanNo.AsInteger);
  if Length(MailToAddress) = 0 then
  Begin
    MailToAddress := 'ange@adress.nu';
    ShowMessage
      ('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)');
  End;
  if Length(MailToAddress) > 0 then
  Begin
    ExportFile := ExcelDir + 'FS ' + daMoLM1.cdsLoadsLoadNo.AsString + '.pdf';
    if FileExists(ExportFile) then
      DeleteFile(ExportFile);

    if daMoLM1.cdsAvropORDERTYPE.AsInteger = 0 then
      ReportType := cTrpOrderAvrop    // TRP_AVROPSORDER_NOTE_STATUS.fr3 (69)
    else Begin
      ShowMessage('N/A');
      Exit;
    End;

    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('ShippingPlanNo', daMoLM1.cdsAvropShippingPlanNo.AsInteger);

      RC := TCMReportController.Create;
      ClientNo := daMoLM1.cdsAvropCLIENTNO.AsInteger;
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
        A[0] := daMoLM1.cdsAvropShippingPlanNo.AsInteger;
        // ReportType := cTrpOrderInkop ;
        FormCRExportOneReport.CreateCo(daMoLM1.cdsAvropCLIENTNO.AsInteger,
          ReportType, A, ExcelDir + 'LONo ' +
          daMoLM1.cdsAvropShippingPlanNo.AsString);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'LONo ' + daMoLM1.cdsAvropShippingPlanNo.
      AsString + '.pdf';
    // Attach[1]        := ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Transportorder. LOnr: ' +
        daMoLM1.cdsAvropShippingPlanNo.AsString, 'Transportorder bifogad. ' + LF
        + '' + 'Transportorder attached. ' + LF + '' + LF + '' + LF +
        'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
        (ThisUser.UserID), dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
        Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

procedure TfrmAvrop.acPrintMenyExecute(Sender: TObject);
begin
  ppmPrintReports.Popup(500, 200);
end;

procedure TfrmAvrop.acEmailaLOUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acEmailaLO.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acEmailaFSUpdate(Sender: TObject);
begin
  { With daMoLM1 do
    Begin
    acEmailaFS.Enabled:=
    (grdLoadDBTableView1.DataController.DataSet.Active)
    and (grdLoadDBTableView1.DataController.DataSet.RecordCount > 0) ;
    End ; }
end;

procedure TfrmAvrop.acEmailaFS_USAUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acEmailaFS_USA.Enabled := (cdsLoads.Active) and (cdsLoads.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acEmailaTrpOrderUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acEmailaTrpOrder.Enabled := (cdsAvrop.Active) and
      (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acTrpOrderAvropUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acTrpOrderAvrop.Enabled := (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.acEmailaTrpOrderAvropDKUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acEmailaTrpOrderAvropDK.Enabled := (cdsAvrop.Active) and
      (cdsAvrop.RecordCount > 0);
  End;
end;

procedure TfrmAvrop.Timer1Timer(Sender: TObject);
begin
  eSearchLONr.SelectAll;
  eSearchLONr.SetFocus;
  Timer1.Enabled := False;
end;

procedure TfrmAvrop.teSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  InternalInvoiceNo, Status: Integer;
  LONo: String;
begin
  if Key <> VK_RETURN then
    Exit;

  InternalInvoiceNo := 0;
  if StrToIntDef(Trim(teSearchInvoiceNo.Text), 0) < 10 then
    Exit;
  // cds_PropsNewItemRow.AsInteger      := 0 ;
  if cds_Props.State in [dsBrowse] then
    cds_Props.Edit;
  cds_PropsVerkSupplierNo.AsInteger := 0;

  With daMoLM1 do
  Begin
    dsrcAvrop.OnDataChange := nil;
    Try
      LONo := inttostr(GetLOByInvNo(StrToIntDef(Trim(teSearchInvoiceNo.Text),
        0), InternalInvoiceNo));
      if Length(LONo) > 0 then
      Begin
        Refresh_Avrop(Sender, LONo, '');

        if not cdsLoads.Locate('INTERNAL_INVOICENO', InternalInvoiceNo, [])
        then;

        if cdsAvropORDERTYPE.AsInteger > -1 then
        Begin
          if cds_Props.State in [dsBrowse] then
            cds_Props.Edit;
          cds_PropsOrderTypeNo.AsInteger := cdsAvropORDERTYPE.AsInteger;
        End;
        Status := -1;
        sq_Get_CSH_Status.Close;
        sq_Get_CSH_Status.ParamByName('ShippingPlanNo').AsInteger :=
          StrToInt(LONo);
        sq_Get_CSH_Status.Open;
        if sq_Get_CSH_Status.Eof = False then
          Status := sq_Get_CSH_StatusShippingPlanStatus.AsInteger;
        sq_Get_CSH_Status.Close;

        if Status = -1 then
        Begin
          ShowMessage('No match');
          teSearchInvoiceNo.Text := '';
          teSearchInvoiceNo.SetFocus;
          Exit;
        End
        else
        Begin
          if cds_Props.State in [dsBrowse] then
            cds_Props.Edit;
          cds_PropsStatus.AsInteger := Status;
        End;

        teSearchInvoiceNo.Text := '';
        teSearchInvoiceNo.SetFocus;
      End; // if LONo > -1 then
    Finally
      dsrcAvrop.OnDataChange := dsrcAvropDataChange;
    End;
    if (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0) then
      RefreshLoadsAndLOs;
  End; // with
end;

procedure TfrmAvrop.teSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Status: Integer;
  LONo: String;
begin
  if Key <> VK_RETURN then
    Exit;

  if StrToIntDef(Trim(teSearchLoadNo.Text), 0) < 10 then
    Exit;
  // cds_PropsNewItemRow.AsInteger      := 0 ;

  if cds_Props.State in [dsBrowse] then
    cds_Props.Edit;
  cds_PropsVerkSupplierNo.AsInteger := 0;;

  With daMoLM1 do
  Begin
    dsrcAvrop.OnDataChange := nil;
    Try
      LONo := inttostr
        (GetLONoForLoadNo(StrToIntDef(Trim(teSearchLoadNo.Text), 0)));
      if Length(LONo) > 0 then
      Begin
        Refresh_Avrop(Sender, LONo, '');

        if not cdsLoads.Locate('LoadNo', StrToIntDef(Trim(teSearchLoadNo.Text),
          0), []) then
          if not cdsLoads.Locate('FOLJESEDEL',
            StrToIntDef(Trim(teSearchLoadNo.Text), 0), []) then;

        if cdsAvropORDERTYPE.AsInteger > -1 then
        Begin
          if cds_Props.State = dsBrowse then
            cds_Props.Edit;
          cds_PropsOrderTypeNo.AsInteger := cdsAvropORDERTYPE.AsInteger;
        End;
        Status := -1;
        sq_Get_CSH_Status.Close;
        sq_Get_CSH_Status.ParamByName('ShippingPlanNo').AsInteger :=
          StrToInt(LONo);
        sq_Get_CSH_Status.Open;
        if sq_Get_CSH_Status.Eof = False then
          Status := sq_Get_CSH_StatusShippingPlanStatus.AsInteger;
        sq_Get_CSH_Status.Close;

        if Status = -1 then
        Begin
          ShowMessage('No match');
          teSearchLoadNo.Text := '';
          teSearchLoadNo.SetFocus;
          Exit;
        End
        else
        Begin
          if cds_Props.State = dsBrowse then
            cds_Props.Edit;
          cds_PropsStatus.AsInteger := Status;
        End;

        // teSearchLoadNo.Text:= '' ;
        // teSearchLoadNo.SetFocus ;
        Timer3.Enabled := True;
      End; // if LONo > -1 then
    Finally
      dsrcAvrop.OnDataChange := dsrcAvropDataChange;
    End;
    if (cdsAvrop.Active) and (cdsAvrop.RecordCount > 0) then
      RefreshLoadsAndLOs;
  End; // with
end;

procedure TfrmAvrop.acSetStatusToSkeppatExecute(Sender: TObject);
begin
  setStatus(STATUS_LO_SKEPPAT);
end;

procedure TfrmAvrop.acChangeLOonLoadExecute(Sender: TObject);
var
  fEntryField: TfEntryField;
  LoadNo: Integer;
begin
  // Ändra LO nummer på last
  // Vill du byta LO på lasten till LOnr x?
  LoadNo := grdLoadDBTableView1.DataController.DataSet.FieldByName('LoadNo')
    .AsInteger;
  fEntryField := TfEntryField.Create(Nil);
  Try
    fEntryField.Caption := 'Ange LO nummer att byta till';
    fEntryField.Label1.Caption := 'LO Nr:';
    if fEntryField.ShowModal = mrOK then
    Begin
      if (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0) > 0) then
        if daMoLM1.ValidLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0))
        then
        Begin
          Try
            daMoLM1.CngLOonLoad
              (grdLoadDBTableView1.DataController.DataSet.FieldByName('LoadNo')
              .AsInteger, StrToIntDef(Trim(fEntryField.eNoofpkgs.Text), 0));

            // GetLO(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0), Sender) ;

            daMoLM1.cdsLoads.Active := False;
            daMoLM1.cdsLoads.Active := True;
            ShowMessage
              ('LOnr ändrat. Nu Måste du öppna och kontrollera LO-kopplingar i lasten!');
            // if daMoLM1.cdsLoadsForLO.Locate('LoadNo', LoadNo, []) then
            // acOpenLoadExecute(Sender) ;
          Except
          End;
        End
        else
          ShowMessage('LOnr ' + fEntryField.eNoofpkgs.Text +
            ' finns ej eller så skiljer sig leverantör eller lastställe från det LOnr lasten har.');
    End;
  Finally
    FreeAndNil(fEntryField);
  End;
end;

procedure TfrmAvrop.acChangeLOonLoadUpdate(Sender: TObject);
begin
  With daMoLM1 do
  Begin
    acChangeLOonLoad.Enabled := (cdsLoads.Active) and (cdsLoads.RecordCount > 0)
      and (cdsLoadsINTERNAL_INVOICENO.AsInteger = -1);
  End; // daMoLM1
end;

(* LG
procedure TfrmAvrop.acExpLoadExecute(Sender: TObject);
Var
  DeleteTdmVidaInvoice: Boolean;
  fExportLoadPurpose: TfExportLoadPurpose;
  fWait: TfWait;
begin
  fExportLoadPurpose := TfExportLoadPurpose.Create(Nil);
  Try
    if (fExportLoadPurpose.ShowModal = mrOK) and
      (fExportLoadPurpose.rgPurpose.ItemIndex <> -1) then
    Begin
      fWait := TfWait.Create(nil);
      Try
        fWait.cxLabel1.Caption := 'Vänta, exporterar lasten...';

        fWait.Show;
        Application.ProcessMessages;
        Try
          Try
            if (not Assigned(dmVidaInvoice)) then
              dmVidaInvoice := TdmVidaInvoice.Create(nil);
            dmsSystem.AssignDMToThisWork('acExpLoadExecute', 'dmVidaInvoice');

            { if not Assigned(dmVidaInvoice) then
              Begin
              DeleteTdmVidaInvoice:= True ;
              dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
              End ; }

            dmVidaInvoice.ExportTypSoftSet
              (grdLoadDBTableView1.DataController.DataSet.FieldByName('LoadNo')
              .AsInteger, grdLoadDBTableView1.DataController.DataSet.FieldByName
              ('LO').AsInteger, 4 { RecordType } , 'LO',
              fExportLoadPurpose.rgPurpose.ItemIndex);
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;

        Finally
          // if DeleteTdmVidaInvoice = True then
          // FreeAndNil(dmVidaInvoice) ;//.Free ;
          if dmsSystem.DeleteAssigned('acExpLoadExecute', 'dmVidaInvoice') = True
          then
          Begin
            dmVidaInvoice.Free;
            dmVidaInvoice := Nil;
          End;
          // Screen.Cursor := Save_Cursor;  { Always restore to normal }
        End; // Finally

      Finally
        FreeAndNil(fWait);
      End;
    End // if fExportLoadPurpose.ShowModal = mrOK then
    else
    Begin
      if fExportLoadPurpose.rgPurpose.ItemIndex = -1 then
        ShowMessage('Ingen indlagring valdes, operation ej utförd.');
    End;
  Finally
    FreeAndNil(fExportLoadPurpose);
  End;
end;

LG *)

procedure TfrmAvrop.acExpLoadUpdate(Sender: TObject);
begin
  acExpLoad.Enabled := (daMoLM1.cdsAvrop.Active) and
    (daMoLM1.cdsAvrop.RecordCount > 0) and
    (daMoLM1.cdsAvropORDERTYPE.AsInteger = 1) and
    ((daMoLM1.cdsAvropTrading.AsInteger = 0) or (daMoLM1.cdsAvropTrading.IsNull)
    ) and (grdLoadDBTableView1.DataController.DataSource.DataSet.Active) and
    (grdLoadDBTableView1.DataController.DataSource.DataSet.RecordCount > 0) and
    (daMoLM1.cdsLoadsINTERNAL_INVOICENO.AsInteger > 0);
end;

procedure TfrmAvrop.cds_PropsOrderTypeNoChange(Sender: TField);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  // LockWindowUpdate(frmAvrop.Handle);
  Try
    if cds_PropsOrderTypeNo.AsInteger = 0 then
    Begin
      cxlabelLoads.Caption := 'UTLEVERANSER';
      grdcxAvropDBBandedTableView1CLIENT.Caption := 'KUND';
      LabelKlient.Caption := 'Kund:';

      // cbClient.Properties.Items.Clear ;
      // dmsContact.LoadClients(cbClient.Properties.Items, 1);
      // cbClient.Properties.Items.Insert(0,'ALLA');
      // if cbClient.Properties.Items.Count > 0 then
      // cbClient.ItemIndex:= 0 ;
    End
    else
    Begin
      grdcxAvropDBBandedTableView1CLIENT.Caption := 'LEVERANTÖR';
      cxlabelLoads.Caption := 'INLEVERANSER';

      LabelKlient.Caption := 'Leverantör:';
      // cbClient.Properties.Items.Clear ;
      // dmsContact.LoadClients(cbClient.Properties.Items, 2);
      // cbClient.Properties.Items.Insert(0,'ALLA');
      // if cbClient.Properties.Items.Count > 0 then
      // cbClient.ItemIndex:= 0 ;
    End;
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
    // LockWindowUpdate(0);
  end;
end;

procedure TfrmAvrop.cds_PropsNewItemRowChange(Sender: TField);
begin
  { With daMoLM1 do
    Begin
    if cds_PropsNewItemRow.AsInteger = 1 then
    Begin
    //   cdsAvrop.Filtered:= True ;
    GlobalLONo         := -1 ;
    GlobalLOErReferens := '' ;
    End ;
    //   else
    //    cdsAvrop.Filtered:= False ;
    End ; }
end;

procedure TfrmAvrop.acNewDeliveryRequestUpdate(Sender: TObject);
begin
  acNewDeliveryRequest.Enabled :=
    (grdcxAvropDBBandedTableView1.DataController.DataSource.DataSet.Active) and
    (grdcxAvropDBBandedTableView1.DataController.DataSource.DataSet.
    RecordCount > 0);
end;

procedure TfrmAvrop.Timer2Timer(Sender: TObject);
begin
  eSearchErReferens.SelectAll;
  eSearchErReferens.SetFocus;
  Timer2.Enabled := False;
end;

procedure TfrmAvrop.Timer3Timer(Sender: TObject);
begin
  teSearchLoadNo.SelectAll;
  teSearchLoadNo.SetFocus;
  Timer3.Enabled := False;
end;

End.
