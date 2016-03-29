unit UnitLoadArrivals;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems,
  ImgList, StdCtrls, DB, Menus, SqlTimSt,
  DateUtils, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxSplitter, cxCalc, ActnList, cxImageComboBox,
  cxGridExportLink, cxExport, kbmMemTable, cxLookAndFeels, cxCheckBox,
  FMTBcd, cxDBEdit, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxLookAndFeelPainters, cxButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore,
  dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TfrmLoadArrivals = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    lbConfirmLoad: TdxBarLargeButton;
    lbPrintLoad: TdxBarLargeButton;
    lbUndoConfirm: TdxBarLargeButton;
    imglistActions: TImageList;
    DataSource1: TDataSource;
    lbPkgInfo: TdxBarLargeButton;
    lbExportToExcel: TdxBarLargeButton;
    bbCustomizeLayout: TdxBarButton;
    pmPrint: TdxBarPopupMenu;
    il_LastStatus: TImageList;
    bbSamlingsspecifikation: TdxBarButton;
    bbTally_Ver: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxSplitter1: TcxSplitter;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1LO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADNO: TcxGridDBColumn;
    grdLoadsDBTableView1LOADEDDATE: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_STATUS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_ID: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIER: TcxGridDBColumn;
    grdLoadsDBTableView1DESTINATION: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNO: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdLoadsDBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdLoadsDBTableView1ORDER_NO: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIERNO: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    grdLoadsDBTableView1INITIALS: TcxGridDBColumn;
    grdLoadsDBTableView1AVROP_CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1AVROP_CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1OrderType: TcxGridDBColumn;
    grdLoadsDBTableView1CountryCode: TcxGridDBColumn;
    grdLoadsDBTableView1LOINI: TcxGridDBColumn;
    grdLoadsDBTableView1LASTSTLLE: TcxGridDBColumn;
    ActionList1: TActionList;
    acFS: TAction;
    acFS_DK: TAction;
    acPrintSamLast: TAction;
    acPrintSamLastMedPktNr: TAction;
    acPkgInfo: TAction;
    pmPkgs: TdxBarPopupMenu;
    acChangeLoadLayout: TAction;
    acChangePkgLayout: TAction;
    dxBarButton3: TdxBarButton;
    pmLoads: TdxBarPopupMenu;
    acSetLoadToConfirmed: TAction;
    acConfirmedLoad: TAction;
    Panel1: TPanel;
    Panel2: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl3: TdxBarDockControl;
    bcConfirmed: TcxComboBox;
    acClose: TAction;
    acExportLoadsToExcel: TAction;
    acRefresh: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    acUndoAR: TAction;
    acShowGroupBox: TAction;
    dxBarButton4: TdxBarButton;
    acExpandAll: TAction;
    acCollapseAll: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    mtSelectedLoads: TkbmMemTable;
    mtSelectedLoadsLoadNo: TIntegerField;
    mtSelectedLoadsLONo: TIntegerField;
    mtSelectedLoadsLIPNo: TIntegerField;
    grdLoadsDBTableView1LipNo: TcxGridDBColumn;
    mtSelectedLoadsCustomerNo: TIntegerField;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_1: TcxStyle;
    cxStyle_0: TcxStyle;
    cxStyle_4: TcxStyle;
    cxLabel3: TcxLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    mtSelectedLoadsStatus: TIntegerField;
    cxStyle_Focus: TcxStyle;
    mtSelectedLoadsOBJECTTYPE: TIntegerField;
    mtSelectedLoadsOrderType: TIntegerField;
    grdLoadsDBTableView1TYP: TcxGridDBColumn;
    grdLoadsDBTableView1LOTYP: TcxGridDBColumn;
    acPrintTallyUSNote: TAction;
    acConfirmOneLoad: TAction;
    dxBarButton7: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    acPrintDirectFS: TAction;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    acPrintDirectFS_USA: TAction;
    acSamlingsFS_USA: TAction;
    dxBarButton11: TdxBarButton;
    Timer1: TTimer;
    Timer2: TTimer;
    acGetIntPrices: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    cbShowOnlyVWLoads: TcxDBCheckBox;
    grdLoadsDBTableView1Trading: TcxGridDBColumn;
    grdLoadsDBTableView1LoadAR: TcxGridDBColumn;
    cxStyleLoadAR: TcxStyle;
    PopupMenu1: TPopupMenu;
    ndralayout1: TMenuItem;
    ndralayout2: TMenuItem;
    StngF121: TMenuItem;
    Kollapsaallagrupper1: TMenuItem;
    AnkomstregistreraF101: TMenuItem;
    Ankomstregistrera1: TMenuItem;
    Expanderaallagrupper1: TMenuItem;
    ExportxlsF111: TMenuItem;
    Frhandsgranska1: TMenuItem;
    FljesedelDK1: TMenuItem;
    UpdintprisersF61: TMenuItem;
    Paketinformation1: TMenuItem;
    Skrivutmarkeradelaster1: TMenuItem;
    Skrivutmarkeradelaster2: TMenuItem;
    Samlingsfljesedel1: TMenuItem;
    Samlingsfljesedelmedpktnr1: TMenuItem;
    Frhandsgranska2: TMenuItem;
    SetLoadtoConfirmed1: TMenuItem;
    Grupperingsrutan1: TMenuItem;
    ngraF41: TMenuItem;
    UppdateraF61: TMenuItem;
    acPrint: TAction;
    SkrivutF81: TMenuItem;
    mtSelectedLoadsLoadAR: TIntegerField;
    grdLoadsDBTableView1ARtillLager: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
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
    ds_Props: TDataSource;
    lcVerk: TcxDBLookupComboBox;
    cds_PropsVerk: TStringField;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    cbAllaVerk: TcxDBCheckBox;
    grdLoadsDBTableView1ImpVerk: TcxGridDBColumn;
    mtSelectedLoadsImpOrt: TIntegerField;
    cxGridPopupMenu2: TcxGridPopupMenu;
    acSendLoadToHampen: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    lcInternKund: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    lcLaststlle: TcxDBLookupComboBox;
    lcDestination: TcxDBLookupComboBox;
    sq_City: TFDQuery;
    sq_CityOrt: TStringField;
    sq_CityCityNo: TIntegerField;
    cds_PropsLaststlle: TStringField;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cds_PropsDestination: TStringField;
    sq_Dest: TFDQuery;
    sq_DestOrt: TStringField;
    sq_DestCityNo: TIntegerField;
    lcSlutKund: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    cds_PropsSlutkund: TStringField;
    mtSelectedLoadsEGEN: TIntegerField;
    grdLoadsDBTableView1EGEN: TcxGridDBColumn;
    mtSelectedLoadsAvropCustomerNo: TIntegerField;
    cxStyleAvraknad: TcxStyle;
    grdLoadsDBTableView1intNM3: TcxGridDBColumn;
    grdLoadsDBTableView1AM3: TcxGridDBColumn;
    grdLoadsDBTableView1Pcs: TcxGridDBColumn;
    grdLoadsDBTableView1Pkgs: TcxGridDBColumn;
    dxBarButton12: TdxBarButton;
    acEmailFS: TAction;
    grdLoadsDBTableView1ClientName: TcxGridDBColumn;
    grdLoadsDBTableView1BookingType: TcxGridDBColumn;
    siLangLinked_frmLoadArrivals: TsiLangLinked;
    grdLoadsDBTableView1NoOfPackages: TcxGridDBColumn;
    grdLoadsDBTableView1PackagesConfirmed: TcxGridDBColumn;
    Panel5: TPanel;
    grdPkgs: TcxGrid;
    grdPkgsDBTableView1: TcxGridDBTableView;
    grdPkgsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdPkgsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdPkgsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdPkgsDBTableView1GS: TcxGridDBColumn;
    grdPkgsDBTableView1BC: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdPkgsDBTableView1PCS: TcxGridDBColumn;
    grdPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdPkgsDBTableView1MFBM: TcxGridDBColumn;
    grdPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdPkgsDBTableView1LO: TcxGridDBColumn;
    grdPkgsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdPkgsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdPkgsDBTableView1SubSum: TcxGridDBColumn;
    grdPkgsDBTableView1PRICE: TcxGridDBColumn;
    grdPkgsDBTableView1NLMM: TcxGridDBColumn;
    grdPkgsDBTableView1ALMM: TcxGridDBColumn;
    grdPkgsDBTableView1Used: TcxGridDBColumn;
    grdPkgsLevel1: TcxGridLevel;
    Panel6: TPanel;
    acSetPktStorlek: TAction;
    mtPkgNos: TkbmMemTable;
    mtPkgNosPackageNo: TIntegerField;
    mtPkgNosSupp_Code: TStringField;
    mtPkgNosOwnerNo: TIntegerField;
    mtPkgNosLIPNo: TIntegerField;
    mtPkgNosPIPNo: TIntegerField;
    mtPkgNosStatus: TIntegerField;
    mtPkgNosPackage_Size: TIntegerField;
    mtPkgNosCertNo: TIntegerField;
    cxButton1: TcxButton;
    grdPkgsDBTableView1Package_Size: TcxGridDBColumn;
    grdPkgsDBTableView1PackageSizeName: TcxGridDBColumn;
    mtSelectedLoadsLOTYP: TStringField;
    grdLoadsDBTableView1OriginalLO: TcxGridDBColumn;
    grdLoadsDBTableView1OriginalLoadNo: TcxGridDBColumn;
    mtSelectedLoadsTrading: TIntegerField;
    grdLoadsDBTableView1OriginalInvoiceNo: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acFSExecute(Sender: TObject);
    procedure acFS_DKExecute(Sender: TObject);
    procedure acPrintSamLastExecute(Sender: TObject);
    procedure acPrintSamLastMedPktNrExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acChangeLoadLayoutExecute(Sender: TObject);
    procedure acChangePkgLayoutExecute(Sender: TObject);
    procedure acSetLoadToConfirmedExecute(Sender: TObject);
    procedure acConfirmedLoadExecute(Sender: TObject);
    procedure acConfirmedLoadUpdate(Sender: TObject);
    procedure acPrintSamLastUpdate(Sender: TObject);
    procedure acPrintSamLastMedPktNrUpdate(Sender: TObject);
    procedure acFSUpdate(Sender: TObject);
    procedure acFS_DKUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure bcConfirmedPropertiesChange(Sender: TObject);
    procedure bcCompanyPropertiesChange(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportLoadsToExcelExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acExportLoadsToExcelUpdate(Sender: TObject);
    procedure acUndoARExecute(Sender: TObject);
    procedure acUndoARUpdate(Sender: TObject);
    procedure acShowGroupBoxExecute(Sender: TObject);
    procedure acExpandAllExecute(Sender: TObject);
    procedure acCollapseAllExecute(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure acConfirmOneLoadExecute(Sender: TObject);
    procedure acPrintDirectFSExecute(Sender: TObject);
    procedure acPrintDirectFS_USAExecute(Sender: TObject);
    procedure acSamlingsFS_USAExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure acGetIntPricesExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acConfirmOneLoadUpdate(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure grdPkgsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgsDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
      (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: String);
(* LG    procedure acSendLoadToHampenExecute(Sender: TObject);
    procedure acSendLoadToHampenUpdate(Sender: TObject);
*)
    procedure cds_PropsVerkNoChange(Sender: TField);
    procedure cds_PropsClientNoChange(Sender: TField);
    procedure acSamlingsFS_USAUpdate(Sender: TObject);
    procedure acPrintDirectFSUpdate(Sender: TObject);
    procedure acPrintDirectFS_USAUpdate(Sender: TObject);
    procedure acPrintTallyUSNoteUpdate(Sender: TObject);
    procedure acEmailFSExecute(Sender: TObject);
    procedure acSetPktStorlekExecute(Sender: TObject);

  private
    { Private declarations }
    procedure CopyLoadToOtherSalesRegion(const LoadNo, LONo  : Integer);
    Function  IsRegionToRegionLoadValid(LoadNo, ShippingPlanNo,
  ObjectType: Integer; Sender: TObject): Boolean;
    function  AreMarkedLoadsSameObjectTypeRegionToRegion: Boolean;
    procedure ConfirmManyLoadsRegionToRegion(Sender: TObject) ;
    procedure SelectedPkgsOfPkgNosTable ;
    function  AreMarkedLoadsSameObjectTypeAndNOTEGEN: Boolean;
    procedure ConfirmManyLoadsPurchasedFromVW(Sender: TObject);
    procedure EmptyGrid;
    procedure RefreshDest;
    procedure RefreshOrter;
    procedure SetLoadAs_AR(const LoadNo: Integer);
    procedure AR_TRADING_POLoads(Sender: TObject);
    procedure AR_PO_Loads(Sender: TObject);
    procedure AR_INTADDLoads(Sender: TObject);
    procedure AR_Sales_Loads(Sender: TObject);
    // procedure ConfirmManyINTADDLoads(Sender: TObject);
    // procedure ConfirmManySALESLoads(Sender: TObject);
    // procedure ConfirmManyPOLoads(Sender: TObject);
    // procedure ConfirmManyPOTRADINGLoads(Sender: TObject);
    Function IsLoadValid(LoadNo, ShippingPlanNo, ObjectType: Integer;
      Sender: TObject): Boolean;
    procedure RefreshLoads;
    procedure BuildARQuery(const LONo, LoadNo: Integer);
    function BackgroundColor(iObjectType: Integer): TColor;
    procedure SetConfirmed_Load_Table(Sender: TObject);

    procedure PrintSamlingsspecifikation(Sender: TObject;
      const SamLastNr: Integer);
    procedure PrintSamlingsspecifikation_USA(Sender: TObject;
      const SamLastNr: Integer);
    procedure PrintSamlingsspecifikationMedPktNr(Sender: TObject;
      const SamLastNr: Integer);
    procedure GetMarkedLoads(Sender: TObject);
    // procedure ConfirmedINTLoad(Sender: TObject);
    // procedure ConfirmedORDERLoad(Sender: TObject);
    procedure InsertMarkedLoadsToTempTable(Sender: TObject;
      const Status: Integer);
    procedure TaBortAnkomstRegistreradeLaster(const AR_Status: Integer);
    function AreMarkedLoadsSameObjectTypeAndNotNormalLOType: Boolean;
    function AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType: Boolean;
    procedure PrintDirectFS(Sender: TObject);
    procedure PrintDirectFS_USA(Sender: TObject);
    function AreMarkedLoadsSameTRADINGType: Boolean;
    function SelectAvropsNrAttSkapaSalesLoadMot(const POLONo: Integer): Integer;
  public
    { Public declarations }
    Procedure CreateCo(CompanyNo: Integer);
  end;

var
  frmLoadArrivals: TfrmLoadArrivals;

implementation

uses UnitCRViewReport, dmc_ArrivingLoads, VidaUtils,
  Vidauser, UnitPkgInfo, dmsVidaContact, // dmcVidaSystem,
  dmsDataConn,
  // fConfirmIntLoad,
  // fConfirmManyIntLoads,
  uSelectLIP, uAnkomstRegProgress, VidaConst,
  // fConfirmManyNormalLoad,
  UnitCRPrintOneReport, dmsVidaSystem, // dmc_Filter,
  uTradingLinkMult, dmc_UserProps, dmcVidaInvoice, uExportLoadPurpose,
  uWait, UnitCRExportOneReport, uSendMapiMail, udmLanguage, uReport,
  uReportController, URegionToRegionSelectLIPNo;

{$R *.dfm}

Procedure TfrmLoadArrivals.CreateCo(CompanyNo: Integer);
Var
  x: Integer;
begin
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoads.Name,
    grdLoadsDBTableView1) = False then;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name,
    grdPkgsDBTableView1) = False then;

  grdLoadsDBTableView1INVPOINTNO.Visible        := False;
  grdLoadsDBTableView1LipNo.Visible             := False;
  grdLoadsDBTableView1SUPPLIERNO.Visible        := False;
  grdLoadsDBTableView1OrderType.Visible         := False;
  grdLoadsDBTableView1AVROP_CUSTOMERNO.Visible  := False;
  grdLoadsDBTableView1CUSTOMERNO.Visible        := False;
  grdLoadsDBTableView1OBJECTTYPE.Visible        := False;
  grdLoadsDBTableView1ORDER_NO.Visible          := False;

  dmsContact.sp_Customers.Active := False;
  dmsContact.sp_Customers.Active := True;

  dmsContact.cds_verk.Active := False;
  dmsContact.cds_Verk.ParamByName('SalesRegionNo').AsInteger :=  dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  dmsContact.cds_verk.Active := True;

  { dmsContact.Load_Int_and_Lego(bcCompany.Properties.Items) ;
    if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
    bcCompany.Properties.ReadOnly:= False ;


    For x:= 0 to bcCompany.Properties.Items.Count -1 do
    if ThisUser.CompanyNo = integer(bcCompany.Properties.Items.Objects[x]) then
    Begin
    bcCompany.ItemIndex:= x ;
    fSupplierNo:= integer(bcCompany.Properties.Items.Objects[x]);
    End ;
  }





  // With dmArrivingLoads do
  // LoadUserProps (Self.Caption) ;

  { sq_City.Active  := False ;
    sq_City.ParamByName('OwnerNo').AsInteger  := 1 ;
    sq_City.Active  := True ; }

  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString    := Self.Name;
  cds_Props.Active := True;
  if cds_Props.Eof then
    cds_Props.Insert;

  if cds_PropsVerkNo.IsNull then
  Begin
    cds_Props.Edit;
    cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo;
    cds_Props.Post;
  End;

  cds_Props.Edit;
  cds_PropsNewItemRow.AsInteger := 0;
  cds_Props.Post;

    if cds_Props.State in [dsEdit, dsInsert] then
      cds_Props.Post ;
    if cds_Props.ChangeCount > 0 then
    Begin
      cds_Props.ApplyUpdates(0);
      cds_Props.CommitUpdates;
    End;

  if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then // = VIDA_WOOD_COMPANY_NO then
    lcVerk.Enabled := True
      else
        lcVerk.Enabled := False;

  RefreshOrter;
  RefreshDest;
  cds_Props.Refresh;

  dmArrivingLoads.cdsArrivingLoads.Active := True;
  if (ThisUser.UserID = 4) OR (ThisUser.UserID = 8) then
    acSetLoadToConfirmed.Enabled := True;
end;

procedure TfrmLoadArrivals.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLoadArrivals.FormDestroy(Sender: TObject);
begin
  frmLoadArrivals := NIL;

  if dmsSystem.DeleteAssigned('TfrmLoadArrivals', 'dmArrivingLoads') = True then
  Begin
    dmArrivingLoads.Free;
    dmArrivingLoads := Nil;
  End;
end;

procedure TfrmLoadArrivals.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmArrivingLoads)) then
  Begin
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  End;
  dmsSystem.AssignDMToThisWork('TfrmLoadArrivals', 'dmArrivingLoads');
end;

procedure TfrmLoadArrivals.RefreshLoads;
var
  Save_Cursor: TCursor;
  LoadNo: Integer;
begin
  Save_Cursor := Screen.Cursor;
  With dmArrivingLoads do
  Begin
    lcSlutKund.PostEditValue;
    lcDestination.PostEditValue;
    lcInternKund.PostEditValue;
    lcLaststlle.PostEditValue;
    lcVerk.PostEditValue;
    bcConfirmed.PostEditValue;

    if cds_Props.State = dsBrowse then
      cds_Props.Edit;

    if Length(lcSlutKund.Text) = 0 then
      cds_PropsOwnerNo.Clear;

    if Length(lcDestination.Text) = 0 then
      cds_PropsBookingTypeNo.Clear;

    if Length(lcInternKund.Text) = 0 then
      cds_PropsClientNo.Clear;

    if Length(lcLaststlle.Text) = 0 then
      cds_PropsLoadingLocationNo.Clear;

    if Length(lcVerk.Text) = 0 then
      cds_PropsVerkNo.Clear;

    if cds_Props.State in [dsEdit, dsInsert] then
      cds_Props.Post;

    cdsArrivingLoads.DisableControls;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    try
      dsrcArrivingLoads.DataSet := Nil;
      Try
        // if cds_PropsVerkNo.AsInteger > 0 then
        // Begin
        LoadNo := cdsArrivingLoadsLoadNo.AsInteger;
        cdsArrivingLoads.Active := False;
        BuildARQuery(-1, -1);
        cdsArrivingLoads.Active := True;
        // cdsArrivingLoads.LogChanges  := False ;
        cdsArrivingLoads.FindKey([LoadNo]);
        RefreshArrivingPackages;
        // end ;
      finally
        dsrcArrivingLoads.DataSet := cdsArrivingLoads;
      end;
    finally
      cdsArrivingLoads.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End;
end;

Function TfrmLoadArrivals.IsLoadValid(LoadNo, ShippingPlanNo,
  ObjectType: Integer; Sender: TObject): Boolean;
begin
  Result := False;
  With dmArrivingLoads do
  Begin
    // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;

    cdsArrivingLoads.Filter := 'LoadNo = ' + IntToStr(LoadNo);
    cdsArrivingLoads.Filtered := True;
    cdsArrivingLoads.First;
    Try
      While Not cdsArrivingLoads.Eof do
      Begin
        if cdsArrivingLoadsObjectType.AsInteger < 2 then
        Begin
          sq_Check_CDS_Link.Close;
          sq_Check_CDS_Link.ParamByName('LoadNo').AsInteger :=
            cdsArrivingLoadsLoadNo.AsInteger;
          sq_Check_CDS_Link.ParamByName('ShippingPlanNo').AsInteger :=
            cdsArrivingLoadsLO.AsInteger;
          sq_Check_CDS_Link.Open;
          if sq_Check_CDS_Link.Eof then
            Result := True
          else
            ShowMessage('The load cannot be confirmed. Problem with the LO#. ' +
              cdsArrivingLoadsLO.AsString +
              ' Please check that the load is OK.');
          sq_Check_CDS_Link.Close;
        End;
        if cdsArrivingLoadsObjectType.AsInteger >= 2 then
        Begin
          sq_CheckObject2Link.Close;
          sq_CheckObject2Link.ParamByName('LoadNo').AsInteger :=
            cdsArrivingLoadsLoadNo.AsInteger;
          sq_CheckObject2Link.ParamByName('ShippingPlanNo').AsInteger :=
            cdsArrivingLoadsLO.AsInteger;
          sq_CheckObject2Link.Open;
          if sq_CheckObject2Link.Eof then
            Result := True
          else
            ShowMessage('The load cannot be confirmed. Problem with the LO#. ' +
              cdsArrivingLoadsLO.AsString +
              ' Please check that the load is OK.');
          sq_CheckObject2Link.Close;
        End;
        cdsArrivingLoads.Next;
      End; // While
      cdsArrivingLoads.Filtered := False;
      if not cdsArrivingLoads.FindKey([LoadNo]) then
        Result := False;
    Finally
      // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
    End;
  End; // With
End;

(* procedure TfrmLoadArrivals.grdLoadHeadCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var
  iObjectTypeColumn: integer;
  iObjectType: integer;
  iObjectTypeColumn2: integer;
  iObjectType2: integer;
  begin
  { if ColumnIsGrouped(AColumn, grdLoadHead) then
  Exit;

  iObjectTypeColumn2 := grdLoadHead.ColumnByName('grdLoadHeadOBJECTTYPE').Index;
  iObjectType2 := ANode.Values[iObjectTypeColumn2];

  iObjectTypeColumn := grdLoadHead.ColumnByName('grdLoadHeadORDERTYPE').Index;
  iObjectType := ANode.Values[iObjectTypeColumn];

  if ANode.Values[iObjectTypeColumn] <> null then
  Begin
  // Set the color for this row, based on LO status
  if iObjectType2 = 1 then
  iObjectType := 4 ;
  if AColor <> clOlive then
  AColor := BackgroundColor(iObjectType);
  End ; }
  end; *)

function TfrmLoadArrivals.BackgroundColor(iObjectType: Integer): TColor;
begin
  if iObjectType = 1 then
  Begin
    Result := $00E6FFFF;
  End
  else if iObjectType = 0 then
  Begin
    Result := $00FFEEDD;
  End
  else if iObjectType = 4 then
  Begin
    Result := $0095FFFF;
  End
  else
    Result := clWindow
end;

procedure TfrmLoadArrivals.BuildARQuery(const LONo, LoadNo: Integer);
Begin
  with dmArrivingLoads do
  Begin
    if cds_PropsNewItemRow.AsInteger = 0 then
    Begin
      cdsArrivingLoads.SQL.Clear;
      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');
      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add
        ('IsNull(CSH.CustomerNo,0)	AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			  AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');

      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');

      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo') ;

        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan SP on SP.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;
        cdsArrivingLoads.SQL.Add('and SP.LoadingLocationNo = LSP.LoadingLocationNo') ;
      //  cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on sp.SupplierShipPlanObjectNo = ld.Defsspno');

        if (LONo = -1) and (LoadNo = -1) then
          if bcConfirmed.ItemIndex > 0 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');


      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
        cdsArrivingLoads.SQL.Add('and OH.OrderType = 1');

      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add
        ('					ON    CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN ShippingPlan_ShippingAddress ST');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
      cdsArrivingLoads.SQL.Add
        ('							AND	ST.Reference		= CSD.Reference');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');


      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + Inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);
          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End
      else
        cdsArrivingLoads.SQL.Add('1=1');

      cdsArrivingLoads.SQL.Add('AND LSP.ConfirmedByReciever = 0') ;


        if (LONo = -1) and (LoadNo = -1) then
          if bcConfirmed.ItemIndex > 0 then
          Begin
            cdsArrivingLoads.SQL.Add('AND exists (select * from dbo.Confirmed_Load cl') ;
            cdsArrivingLoads.SQL.Add('WHERE') ;
            cdsArrivingLoads.SQL.Add('cl.Confirmed_LoadNo = L.LoadNo)') ;
          End;


      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

//      cdsArrivingLoads.SQL.Add('AND SP.ObjectType <> 1');

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType IN (2)');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmed.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmed.ItemIndex = 1 then

        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin
//            cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss', DateTimeToSQLTimeStamp(deStartPeriod.Date))));
//            cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss', DateTimeToSQLTimeStamp(deEndPeriod.Date))));

              cdsArrivingLoads.SQL.Add('AND L.LoadedDate >= ' +
                QuotedStr(DateTimeToStr(deStartPeriod.Date)));
              cdsArrivingLoads.SQL.Add('AND L.LoadedDate <= ' +
                QuotedStr(DateTimeToStr(deEndPeriod.Date)));

          End;
        End
        else
          // Mina AR
          if bcConfirmed.ItemIndex = 2 then // lbConfirmLoad.Enabled = True then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
            cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' + IntToStr(ThisUser.UserID));
            cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss', DateTimeToSQLTimeStamp(deStartPeriod.Date))));
            cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' + QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss', DateTimeToSQLTimeStamp(deEndPeriod.Date))));
          End;
      End; // if(LONo = -1) and (LoadNo = -1) then

      // UNION
      cdsArrivingLoads.SQL.Add('UNION');


      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('L.LoadAR,');

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
      cdsArrivingLoads.SQL.Add
        ('Mill.ClientCode                         AS      SUPPCODE,');
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
      cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
      cdsArrivingLoads.SQL.Add
        ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');

      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
        ')		AS	INVPOINTNAME,');
      cdsArrivingLoads.SQL.Add
        ('SP.CustomerNo                           AS      CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add
        ('Cust.ClientCode                         AS      CUSTOMER,');
      cdsArrivingLoads.SQL.Add
        ('SP.SupplierNo                           AS      SUPPLIERNO,');
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
      cdsArrivingLoads.SQL.Add('SP.OBJECTTYPE,');

      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load CL');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,');
      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
        QuotedStr('LO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
        QuotedStr('ADD'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
        QuotedStr('INT'));
      cdsArrivingLoads.SQL.Add('END AS LOTYP,');

      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS ');
      cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
      cdsArrivingLoads.SQL.Add
        ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
      cdsArrivingLoads.SQL.Add(' AS LOINI,');
      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
      cdsArrivingLoads.SQL.Add('isNull(SP.LipNo,-1) AS LipNo,');
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') +
        ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

     cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
     cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
     cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
     cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo') ;


        cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
        cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadNo = L.LoadNo');
 //       cdsArrivingLoads.SQL.Add('inner join dbo.loaddetail ld on ld.LoadNo = lsp.LoadNo and ld.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('inner join dbo.SupplierShippingPlan       SP on SP.shippingplanno = LSP.shippingplanno');
        cdsArrivingLoads.SQL.Add('and SP.SupplierNo = L.SupplierNo') ;
        cdsArrivingLoads.SQL.Add('and SP.LoadingLocationNo = LSP.LoadingLocationNo') ;
        if (LONo = -1) and (LoadNo = -1) then
        Begin
          if bcConfirmed.ItemIndex > 0 then
          Begin
            cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Confirmed_Load cl on ');
            cdsArrivingLoads.SQL.Add
              ('cl.Confirmed_LoadNo = lsp.LoadNo AND cl.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
          End;
        End;


        cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP');
        cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity			ON	PIPCity.CityNo = PIP.PhyInvPointNameNo');
        cdsArrivingLoads.SQL.Add('on LIP.LogicalInventoryPointNo = SP.LIPNo');

        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SP.ShipToInvPointNo');
        cdsArrivingLoads.SQL.Add('inner JOIN dbo.City Loading			ON	Loading.CityNo = SP.LoadingLocationNo');



      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.CustomerShippingPlanHeader CSH');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Orders	OH			ON OH.OrderNo = CSH.OrderNo');
      cdsArrivingLoads.SQL.Add
        ('INNER JOIN dbo.Client AV_CUST			ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
      cdsArrivingLoads.SQL.Add('						ON CSH.ShippingPlanNo = SP.LO_No');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Address 		ST_ADR');
      cdsArrivingLoads.SQL.Add
        ('Inner JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
      cdsArrivingLoads.SQL.Add
        ('Inner  JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
      cdsArrivingLoads.SQL.Add
        ('							ON	ST_ADR.AddressNo	= OH.DestinationNo');

      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

      cdsArrivingLoads.SQL.Add
        ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
      cdsArrivingLoads.SQL.Add
        ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
        // if cbAllaVerk.Checked then
        if (cds_PropsVerkNo.IsNull) or (cds_PropsVerkNo.AsInteger < 1) then
        Begin
          cdsArrivingLoads.SQL.Add
            ('(L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End
        else
        Begin
          if dmsContact.ThisUserIsRoleType(ThisUser.CompanyNo, cSalesRegion) then
            cdsArrivingLoads.SQL.Add('(SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString + ' OR SP.CustomerNo = ' + inttostr(ThisUser.CompanyNo) + ')')
          else
            cdsArrivingLoads.SQL.Add('SP.CustomerNo = ' +
              cds_PropsVerkNo.AsString);

          cdsArrivingLoads.SQL.Add
            ('AND (L.SenderLoadStatus = 1 or L.SenderLoadStatus = 2)');
        End;
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND SP.ShipToInvPointNo = ' +
            cds_PropsBookingTypeNo.AsString);

        if (not cds_PropsLoadingLocationNo.IsNull) and
          (cds_PropsLoadingLocationNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
            cds_PropsLoadingLocationNo.AsString);
      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
            cds_PropsClientNo.AsString);

      cdsArrivingLoads.SQL.Add('AND SP.ObjectType in (0, 1)');

 //     cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 3');

      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmed.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmed.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          if (LONo = -1) and (LoadNo = -1) then
          Begin

              cdsArrivingLoads.SQL.Add('AND L.LoadedDate >= ' +
                QuotedStr(DateTimeToStr(deStartPeriod.Date)));
              cdsArrivingLoads.SQL.Add('AND L.LoadedDate <= ' +
                QuotedStr(DateTimeToStr(deEndPeriod.Date)));


{
              cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
                QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
                DateTimeToSQLTimeStamp(deStartPeriod.Date))));
              cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
                QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
                DateTimeToSQLTimeStamp(deEndPeriod.Date))));
}
          End;
        End
        else if bcConfirmed.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deStartPeriod.Date))));
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deEndPeriod.Date))));
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then

      cdsArrivingLoads.SQL.Add('UNION');
 // START REGION To REGION AR query
      cdsArrivingLoads.SQL.Add('SELECT distinct  0 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;
      cdsArrivingLoads.SQL.Add('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo ') ;

      cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,') ;

      cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,') ;
      cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,') ;
      cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,') ;
      cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,') ;
      cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,') ;
      cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,') ;
      cdsArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
      cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,') ;
      cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,') ;
      cdsArrivingLoads.SQL.Add('2				AS	OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('isNull(CSH.ShipToCityNo,-1)		AS	INVPOINTNO,') ;
      cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') + ')		AS	INVPOINTNAME,') ;// -- Leverera till
      cdsArrivingLoads.SQL.Add('OH.CustomerNo                           AS      CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('Cust.ClientCode                         AS      CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add('OH.SalesRegionNo                           AS      SUPPLIERNO,') ;
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,') ;
      cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,') ;
      cdsArrivingLoads.SQL.Add(' 2 AS OBJECTTYPE,') ;
      cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,') ;

      cdsArrivingLoads.SQL.Add('CASE');
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
        QuotedStr('SALES'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
        QuotedStr('PO'));
      cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
        QuotedStr('INTERN'));
      cdsArrivingLoads.SQL.Add('End AS TYP,') ;

      cdsArrivingLoads.SQL.Add(QuotedStr('RtR') + ' AS LOTYP,') ;
      cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS') ;
      cdsArrivingLoads.SQL.Add('From dbo.CustomerShippingPlanHeader sp2') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser') ;
      cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = CSH.ShippingPlanNo)') ;
      cdsArrivingLoads.SQL.Add(' AS LOINI,') ;

      cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE,') ;
      cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,') ;
      cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,') ;
 //     cdsArrivingLoads.SQL.Add(,isNull(PIPCity.CityName,'/')+'/' +	LIP.LogicalInventoryName	AS	ARtillLager,

      cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+' + QuotedStr('/') +
        ' +	LIP.LogicalInventoryName	AS	ARtillLager,');

      cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,') ;
      cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs') ;
      cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,') ;
      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
      cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
      cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
      cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo') ;
//* ===================== FROM ==================== */
      cdsArrivingLoads.SQL.Add('FROM  dbo.CustomerShippingPlanDetails CSD') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo') ;



      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo') ;
      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo') ;

      cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName ON	IName.CityNo = PIP.PhyInvPointNameNo') ;
      cdsArrivingLoads.SQL.Add('LEFT JOIN dbo.City Loading ON	Loading.CityNo = CSH.LoadingLocationNo') ;// -- SP.LoadingLocationNo

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = CSH.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= OH.CustomerNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= OH.SalesRegionNo') ;
      cdsArrivingLoads.SQL.Add('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo') ;
      cdsArrivingLoads.SQL.Add('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo') ;
      cdsArrivingLoads.SQL.Add('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('							AND	ST.Reference		= CSD.Reference') ;
    //  cdsArrivingLoads.SQL.Add('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo
      cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk') ;
      cdsArrivingLoads.SQL.Add('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
      cdsArrivingLoads.SQL.Add('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo') ;
      cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo') ;

      cdsArrivingLoads.SQL.Add('WHERE');
      if (LONo = -1) and (LoadNo = -1) then
      Begin
       if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = ' + cds_PropsVerkNo.AsString)
         else
          cdsArrivingLoads.SQL.Add('OH.SalesRegionNo = -1');
      End // if (LONo = -1) and (LoadNo = -1) then
      else
        cdsArrivingLoads.SQL.Add('1=1');

{
        cdsArrivingLoads.SQL.Add('AND Not exists (select * from dbo.Confirmed_Load cl') ;
        cdsArrivingLoads.SQL.Add('WHERE') ;
        cdsArrivingLoads.SQL.Add('cl.NewLoadNo = L.LoadNo)') ;
}


      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND csh.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));

      if (LONo = -1) and (LoadNo = -1) then
      Begin  //cds_PropsBookingTypeNo = LevereraTill
        if (not cds_PropsBookingTypeNo.IsNull) and
          (cds_PropsBookingTypeNo.AsInteger > 0) then
          cdsArrivingLoads.SQL.Add('AND PIP.PhyInvPointNameNo = ' +
            cds_PropsBookingTypeNo.AsString);

      End;

      if (LONo = -1) and (LoadNo = -1) then
        if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0)
        then
          cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
            cds_PropsOwnerNo.AsString);





      if (LONo = -1) and (LoadNo = -1) then
      Begin
        if bcConfirmed.ItemIndex = 0 then // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 0');
        End
        else if bcConfirmed.ItemIndex = 1 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2') ;
          cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo') ;
          cdsArrivingLoads.SQL.Add('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)') ;


          if (LONo = -1) and (LoadNo = -1) then
          Begin
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate >= ' +
              QuotedStr(DateTimeToStr(deStartPeriod.Date)));
            cdsArrivingLoads.SQL.Add('AND L.LoadedDate <= ' +
              QuotedStr(DateTimeToStr(deEndPeriod.Date)));
          End;
        End
        else if bcConfirmed.ItemIndex = 2 then
        // lbConfirmLoad.Enabled = True then
        Begin
          cdsArrivingLoads.SQL.Add('AND L.LoadAR = 1');
          cdsArrivingLoads.SQL.Add('AND cl.CreatedUser = ' +
            IntToStr(ThisUser.UserID));
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated >= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deStartPeriod.Date))));
          cdsArrivingLoads.SQL.Add('AND cl.DateCreated <= ' +
            QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',
            DateTimeToSQLTimeStamp(deEndPeriod.Date))));
        End;
      End; // if(LONo = -1) and (LoadNo = -1) then


 // END REGION To REGION AR query


      cdsArrivingLoads.SQL.Add('UNION');

    End // if cds_PropsNewItemRow.AsInteger = 0 then
    else
      cdsArrivingLoads.SQL.Clear;

      cdsArrivingLoads.SQL.Add('SELECT DISTINCT  1 AS EGEN,') ;
      cdsArrivingLoads.SQL.Add('(Select SalesShippingPlanNo FROM dbo.CSHTradingLink ctl') ;
      cdsArrivingLoads.SQL.Add('where ctl.POShippingPlanNo = CSH.ShippingPlanNo) as OriginalLO,') ;
      cdsArrivingLoads.SQL.Add('(select cl2.Confirmed_LoadNo from dbo.Confirmed_Load cl2') ;
      cdsArrivingLoads.SQL.Add('where cl2.NewLoadNo = L.LoadNo) AS OriginalLoadNo,') ;


    cdsArrivingLoads.SQL.Add
      ('IsNull((Select Top 1 cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2');
    cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo),0) AS LoadAR,');

    cdsArrivingLoads.SQL.Add('ST_AdrCtry.CountryCode,');

    cdsArrivingLoads.SQL.Add('LSP.ShippingPlanNo			AS	LO,');
    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	LOADNO,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOADEDDATE,');
    cdsArrivingLoads.SQL.Add('L.SenderLoadStatus			AS	LOAD_STATUS,');
    cdsArrivingLoads.SQL.Add('L.LoadID				AS	LOAD_ID,');
    cdsArrivingLoads.SQL.Add('Mill.ClientName				AS 	SUPPLIER,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add('ST_AdrCY.CityName			AS	DESTINATION,');
    cdsArrivingLoads.SQL.Add('OH.OrderNoText				AS 	ORDER_NO,');
    cdsArrivingLoads.SQL.Add('SP.ObjectType				AS	OBJECTTYPE,');
    cdsArrivingLoads.SQL.Add
      ('isNull(SP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');
    cdsArrivingLoads.SQL.Add
      ('SP.CustomerNo                           AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('SP.SupplierNo                           AS      SUPPLIERNO,');
    cdsArrivingLoads.SQL.Add('CSH.CustomerNo				AS	AVROP_CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add('AV_CUST.ClientName			AS	AVROP_CUSTOMER,');
    cdsArrivingLoads.SQL.Add(' SP.OBJECTTYPE,');

    cdsArrivingLoads.SQL.Add('(SELECT Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('FROM dbo.Confirmed_Load_EXT CL');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users	US on US.UserID = cl.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo) AS INITIALS,');

    cdsArrivingLoads.SQL.Add('isNull(OH.OrderType,-1) AS ORDERTYPE,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 0 THEN ' +
      QuotedStr('SALES'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = 1 THEN ' +
      QuotedStr('PO'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(OH.OrderType,-1) = -1 THEN ' +
      QuotedStr('INTERN'));
    cdsArrivingLoads.SQL.Add('End AS TYP,');
    cdsArrivingLoads.SQL.Add('CASE');
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) >= 2 THEN ' +
      QuotedStr('LO'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 1 THEN ' +
      QuotedStr('ADD'));
    cdsArrivingLoads.SQL.Add('WHEN isNull(SP.ObjectType,-1) = 0 THEN ' +
      QuotedStr('INT'));
    cdsArrivingLoads.SQL.Add('END AS LOTYP,');

    cdsArrivingLoads.SQL.Add('(Select Top 1 US.INITIALS');
    cdsArrivingLoads.SQL.Add('From dbo.SupplierShippingPlan sp2');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.Users US on US.UserID = SP2.CreatedUser');
    cdsArrivingLoads.SQL.Add('WHERE SP2.ShippingPlanNo = SP.ShippingPlanNo)');
    cdsArrivingLoads.SQL.Add(' AS LOINI,');

    cdsArrivingLoads.SQL.Add('Loading.CityName AS LASTSTÄLLE, ');
    cdsArrivingLoads.SQL.Add('CSH.ShipToLIPNo AS LipNo,');
    cdsArrivingLoads.SQL.Add('isNull(OH.Trading,0) AS Trading,');
    cdsArrivingLoads.SQL.Add('isNull(PIPCity.CityName,' + QuotedStr('/') + ')+'
      + QuotedStr('/') + ' +	LIP.LogicalInventoryName	AS	ARtillLager,');
    cdsArrivingLoads.SQL.Add('IsNull(IName.ImpVerk,0) AS ImpVerk,');

    cdsArrivingLoads.SQL.Add('LV.intNM3, LV.AM3, LV.Pcs, LV.Pkgs');
    cdsArrivingLoads.SQL.Add(',SC.ClientName, Bt.BookingType,');

   cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.LoadDetail LD') ;
   cdsArrivingLoads.SQL.Add('WHERE LD.LoadNo = L.LoadNo) AS NoOfPackages,') ;
   cdsArrivingLoads.SQL.Add('(Select Count(*) FROM dbo.PackageARConfirmed PC') ;
   cdsArrivingLoads.SQL.Add('WHERE PC.LoadNo = L.LoadNo) AS PackagesConfirmed,') ;

      cdsArrivingLoads.SQL.Add('(Select inos.InvoiceNo FROM  dbo.Confirmed_Load cl') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.Invoiced_Load il on il.LoadNo = cl.Confirmed_LoadNo') ;
      cdsArrivingLoads.SQL.Add('inner join dbo.InvoiceNos inos on inos.InternalInvoiceNo = il.InternalInvoiceNo') ;
      cdsArrivingLoads.SQL.Add('WHERE cl.NewLoadNo = L.LoadNo) AS OriginalInvoiceNo') ;


    cdsArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SP');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.CustomerShippingPlanDetails CSD');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.CustomerShippingPlanHeader CSH	ON CSH.ShippingPlanNo = CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Orders	OH ON OH.OrderNo = CSH.OrderNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client AV_CUST ON	AV_CUST.ClientNo 	=	CSH.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('ON CSD.CustShipPlanDetailObjectNo = SP.CustShipPlanDetailObjectNo');

    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.LogicalInventoryPoint LIP on LIP.LogicalInventoryPointNo = CSH.ShipToLIPNo');

    // 2 new rows
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.PhysicalInventoryPoint PIP on PIP.PhysicalInventoryPointNo = LIP.PhysicalInventoryPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City PIPCity ON PIPCity.CityNo = PIP.PhyInvPointNameNo');

    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName ON	IName.CityNo = SP.ShipToInvPointNo');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City Loading ON	Loading.CityNo = SP.LoadingLocationNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.ShippingPlanNo = SP.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('AND LSP.LoadingLocationNo = SP.LoadingLocationNo');


    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Loads L ON	LSP.LoadNo 		= L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND     L.supplierno 		= SP.SUPPLIERno');
    cdsArrivingLoads.SQL.Add('AND     L.CustomerNo 		= SP.CustomerNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.VIS_LoadVolumes LV on LV.LoadNo = L.LoadNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SP.SupplierNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SP.CustomerNo');

    cdsArrivingLoads.SQL.Add
      ('	INNER JOIN dbo.ShippingPlan_ShippingAddress ST');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Address 		ST_ADR		ON	ST_ADR.AddressNo	= ST.AddressNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= ST_ADR.CityNo');
    cdsArrivingLoads.SQL.Add
      ('	LEFT OUTER JOIN dbo.Country		ST_AdrCtry	ON	ST_AdrCtry.CountryNo 	= ST_ADR.CountryNo');
    cdsArrivingLoads.SQL.Add
      ('							ON	ST.ShippingPlanNo	= CSD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('							AND	ST.Reference		= CSD.Reference');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.UserArrivalPoint uap on uap.PhyInvPointNameNo = PIPCity.CityNo');

    cdsArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.Booking		Bk');

    cdsArrivingLoads.SQL.Add
      ('Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.BookingType		Bt	ON	Bt.BookingTypeNo	= Bk.BookingTypeNo');
    cdsArrivingLoads.SQL.Add('ON  	Bk.ShippingPlanNo = CSH.ShippingPlanNo');
    // ST_ADR.CityNo') ;

    cdsArrivingLoads.SQL.Add('WHERE');

    if (not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0) then
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = ' + cds_PropsVerkNo.AsString)
    else
      cdsArrivingLoads.SQL.Add('CSH.CustomerNo = -1');

    cdsArrivingLoads.SQL.Add(' AND  L.SupplierNo = CSH.CustomerNo') ;

    cdsArrivingLoads.SQL.Add('AND SP.ObjectType <= 2');

    cdsArrivingLoads.SQL.Add('AND (L.SenderLoadStatus = 2)');

    if cds_PropsVerkNo.AsInteger = VIDA_PACKAGING_NO then
      cdsArrivingLoads.SQL.Add('and OH.OrderType = 0');

    if (LONo = -1) and (LoadNo = -1) then
      if (not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0)
      then
        cdsArrivingLoads.SQL.Add('AND SP.SupplierNo = ' +
          cds_PropsClientNo.AsString);

    cdsArrivingLoads.SQL.Add('AND uap.UserID = ' + IntToStr(ThisUser.UserID));

    if (LONo > -1) or (LoadNo > -1) then
    Begin
      if LONo > -1 then
        cdsArrivingLoads.SQL.Add('AND SP.ShippingPlanNo = ' + IntToStr(LONo));
      if LoadNo > -1 then
        cdsArrivingLoads.SQL.Add('AND L.LoadNo = ' + IntToStr(LoadNo));
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if cds_PropsBookingTypeNo.AsInteger > 0 then
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = ' +
          cds_PropsBookingTypeNo.AsString) // Destination, leverera till ort
      else
        cdsArrivingLoads.SQL.Add('AND PIPCity.CityNo = -99');

      if (not cds_PropsLoadingLocationNo.IsNull) and
        (cds_PropsLoadingLocationNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND	SP.LoadingLocationNo = ' +
          cds_PropsLoadingLocationNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if (not cds_PropsOwnerNo.IsNull) and (cds_PropsOwnerNo.AsInteger > 0) then
        cdsArrivingLoads.SQL.Add('AND CSH.CustomerNo = ' +
          cds_PropsOwnerNo.AsString);
    End;

    if (LONo = -1) and (LoadNo = -1) then
    Begin
      if bcConfirmed.ItemIndex = 0 then
        cdsArrivingLoads.SQL.Add
          ('AND Not Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ')
      else
        cdsArrivingLoads.SQL.Add
          ('AND Exists (Select cl2.Confirmed_LoadNo FROM dbo.Confirmed_Load_EXT cl2 ');

      cdsArrivingLoads.SQL.Add('WHERE cl2.Confirmed_LoadNo = LSP.LoadNo');
      cdsArrivingLoads.SQL.Add
        ('AND cl2.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo)');
    End;

   //if thisuser.UserID = 258 then   cdsArrivingLoads.SQL.SaveToFile('cdsArrivingLoads.TXT');
  End;
End;

// make an entry for the load that is confirmed
procedure TfrmLoadArrivals.SetConfirmed_Load_Table(Sender: TObject);
Begin
  if MessageDlg
    ('This Confirmation does only insert a record in the Confirmed_Load table, Continue?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    with dmArrivingLoads do
    Begin
      Try
        cdsConfirmed_Load.Active := True;
        cdsArrivingLoads.Filter := 'LOADNO = ' +
          cdsArrivingLoadsLoadNo.AsString;
        cdsArrivingLoads.Filtered := True;
        While not cdsArrivingLoads.Eof do
        Begin
          cdsConfirmed_Load.Insert;
          cdsConfirmed_LoadConfirmed_LoadNo.AsInteger :=
            cdsArrivingLoadsLoadNo.AsInteger;
          cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger :=
            cdsArrivingLoadsLO.AsInteger;
          cdsConfirmed_LoadNewLoadNo.AsInteger :=
            cdsArrivingLoadsLoadNo.AsInteger;
          cdsConfirmed_LoadNewShippingPlanNo.AsInteger :=
            cdsArrivingLoadsLO.AsInteger;
          cdsConfirmed_LoadDateCreated.AsSQLTimeStamp :=
            DateTimeToSQLTimeStamp(Now);
          cdsConfirmed_LoadCreatedUser.AsInteger := ThisUser.UserID;
          cdsConfirmed_LoadModifiedUser.AsInteger := ThisUser.UserID;
          cdsConfirmed_Load.Post;
          cdsArrivingLoads.Next;
        End;
        if cdsConfirmed_Load.ChangeCount > 0 then
          if cdsConfirmed_Load.ApplyUpdates(0) > 0 then
            ShowMessage
              ('Error applying confirmed load to database, contact support referring LO and Load #')
          else
          Begin
            cdsArrivingLoads.Refresh;
            cdsArrivingLoads.Last;
          End;

      Finally
        cdsArrivingLoads.Filtered := False;
        cdsConfirmed_Load.Active := False;
      End;
    End; // with
  End;
End;

procedure TfrmLoadArrivals.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var // ShippingPlanNo : Integer ;
  Save_Cursor: TCursor;
begin
  if Key <> VK_RETURN then
    Exit;
  grdLoadsDBTableView1.Controller.ClearSelection;
  With dmArrivingLoads do
  Begin
    cdsArrivingLoads.IndexName := 'cdsArrivingLoadsIndex2';
    Save_Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      // if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text),0)]) then
      // Begin
      cdsArrivingLoads.Active := False;
      BuildARQuery(StrToIntDef(Trim(Edit1.Text), 0), -1);
      cdsArrivingLoads.Active := True;
      // cdsArrivingLoads.LogChanges:= False ;
      if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit1.Text), 0)]) then
      Begin
        ShowMessage('No match');
      End
      else
        Timer1.Enabled := True;
      // End
      // else
      // Timer1.Enabled:= True ;
      { else
        Begin
        ShippingPlanNo := cdsArrivingLoadsLO.AsInteger ;
        While (ShippingPlanNo = cdsArrivingLoadsLO.AsInteger) and
        (cdsArrivingLoads.Eof = False) do
        Begin
        cdsArrivingLoads.Next ;
        End ; //while
        if not cdsArrivingLoads.Eof then
        cdsArrivingLoads.Prior ;
        End ; }

      // Edit1.Text:= '' ;
      // Edit1.SetFocus ;
      // Timer1.Enabled:= True ;

    Finally
      cdsArrivingLoads.IndexName := 'cdsArrivingLoadsIndex1';
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadArrivals.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var // LoadNo : Integer ;
  Save_Cursor: TCursor;
begin
  if Key <> VK_RETURN then
    Exit;
  grdLoadsDBTableView1.Controller.ClearSelection;
  With dmArrivingLoads do
  Begin
    // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;
    Save_Cursor := Screen.Cursor;
    Try
      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      // if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text),0)]) then
      // begin
      cdsArrivingLoads.Active := False;
      BuildARQuery(-1, StrToIntDef(Trim(Edit2.Text), 0));
      cdsArrivingLoads.Active := True;
      // cdsArrivingLoads.LogChanges:= False ;
      if not cdsArrivingLoads.FindKey([StrToIntDef(Trim(Edit2.Text), 0)]) then
      Begin
        ShowMessage('No match.');
      End
      else
        Timer2.Enabled := True;
      // End
      // else
      // Timer2.Enabled:= True ;
      { else
        Begin
        LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
        While (LoadNo = cdsArrivingLoadsLoadNo.AsInteger) and
        (cdsArrivingLoads.Eof = False) do
        Begin
        cdsArrivingLoads.Next ;
        End ; //while
        if not cdsArrivingLoads.Eof then
        cdsArrivingLoads.Prior ;
        End ; }

      // Edit2.Text:= '' ;
      // Edit2.SetFocus ;
      // Timer2.Enabled:= True ;
    Finally
      // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex3' ;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
end;

procedure TfrmLoadArrivals.PrintSamlingsspecifikation(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
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

procedure TfrmLoadArrivals.PrintSamlingsspecifikation_USA(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := SamLastNr;
    FormCRViewReport.CreateCo('SAM_LAST_USA.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadArrivals.PrintSamlingsspecifikationMedPktNr(Sender: TObject;
  const SamLastNr: Integer);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := SamLastNr;
    FormCRViewReport.CreateCo('SAM_LAST_PKTNR.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport);
  End;
end;

procedure TfrmLoadArrivals.GetMarkedLoads(Sender: TObject);
Var
  i, RecIDX: Integer;
  // RecID          : Variant ;
  Save_Cursor: TCursor;
  Duplicate: Boolean;
  SamLastNr, y, x: Integer;
  OutPutVal: Integer;
  ColIdx: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    // lbLO_To_Invoice.Items.Clear ;
    with dmArrivingLoads do
    Begin
      SamLastNr := ThisUser.UserID; // dmsConnector.NextMaxNo('SamLastReport') ;
      Try
        sq_deleteSamLaster.ParamByName('SamLastNr').AsInteger := SamLastNr;
        sq_deleteSamLaster.ExecSQL;
      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

      grdLoadsDBTableView1.BeginUpdate;
      grdLoadsDBTableView1.DataController.BeginLocate;
      Try
        For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
        Begin
          Duplicate := False;
          RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
            .RecordIndex;
          ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
            ('LOADNO').Index;
          OutPutVal := grdLoadsDBTableView1.DataController.Values
            [RecIDX, ColIdx];

          Try
            sq_samLast.ParamByName('SamLastNr').AsInteger := ThisUser.UserID;
            sq_samLast.ParamByName('LoadNo').AsInteger := OutPutVal;
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

          { For y := 0 to lbLO_To_Invoice.Items.Count - 1 do
            Begin
            if IntToStr(OutPutVal) = lbLO_To_Invoice.Items[y] then
            Duplicate := True ;
            End ;
            if Duplicate = False then
            Begin
            lbLO_To_Invoice.Items.Add(IntToStr(OutPutVal)) ;
            End ; }
        End; // for y

        { if lbLO_To_Invoice.Items.Count < 1 then
          Begin
          ShowMessage('Måste välja en last') ;
          Exit ;
          End ; }

        { For x:= 0 to lbLO_To_Invoice.Items.Count-1 do
          Begin
          Try
          sq_samLast.ParamByName('SamLastNr').AsInteger := samLastNr ;
          sq_samLast.ParamByName('LoadNo').AsInteger    := StrToInt(lbLO_To_Invoice.Items[x]) ;
          sq_samLast.ExecSQL ;
          except
          On E: Exception do
          Begin
          dmsSystem.FDoLog(E.Message) ;
          //      ShowMessage(E.Message);
          Raise ;
          End ;
          end;
          End ; }

      Finally
        grdLoadsDBTableView1.DataController.EndLocate;
        grdLoadsDBTableView1.EndUpdate;
      End;

    End; // with
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TfrmLoadArrivals.InsertMarkedLoadsToTempTable(Sender: TObject;
  const Status: Integer);
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  AvropCustomerNo, EGEN, ObjectType, ImpVerk, LoadAR, LIPNo, LoadNo, LONo,
  CustomerNo, LOAD_STATUS, Trading  : Integer;
begin
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active  := False;
  mtSelectedLoads.Active  := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LOADNO').Index;
        LoadNo := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LO').Index;
        LONo := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LoadAR').Index;
        LoadAR := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LIPNo').Index;
        if grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx] <> null
        then
          LIPNo := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('CUSTOMERNO').Index;
        CustomerNo := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LOAD_STATUS').Index;
        LOAD_STATUS := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('ImpVerk').Index;
        ImpVerk := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;
        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('EGEN').Index;
        EGEN := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('AVROP_CUSTOMERNO').Index;
        if grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx] <> null then
        AvropCustomerNo := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Trading').Index;
        Trading := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        // if not mtSelectedLoads.Locate('LoadNo;LONo', VarArrayOf([LoadNo, LONo]), []) then
        if (not mtSelectedLoads.Locate('LoadNo', LoadNo, [])) and
          (LOAD_STATUS = 2) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsLoadNo.AsInteger           := LoadNo;
          mtSelectedLoadsLONo.AsInteger             := LONo;
          mtSelectedLoadsLIPNo.AsInteger            := LIPNo;
          mtSelectedLoadsCustomerNo.AsInteger       := CustomerNo;
          mtSelectedLoadsAvropCustomerNo.AsInteger  := AvropCustomerNo;
          mtSelectedLoadsStatus.AsInteger           := Status;
          mtSelectedLoadsLoadAR.AsInteger           := LoadAR;
          mtSelectedLoadsImpOrt.AsInteger           := ImpVerk;
          mtSelectedLoadsOBJECTTYPE.AsInteger       := ObjectType;
          mtSelectedLoadsEGEN.AsInteger             := EGEN;
          mtSelectedLoadsTrading.AsInteger          := Trading ;
          mtSelectedLoads.Post;
        End;
      End; // for y

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadArrivals.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoads.Name,
    grdLoadsDBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name,
    grdPkgsDBTableView1);
  dmArrivingLoads.cdsArrivingLoads.Active := False;

  // With dmArrivingLoads do
  // LoadUserProps (Self.Caption) ;

  CanClose := True;
end;

procedure TfrmLoadArrivals.acFSExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin

    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
      RepNo := 55 // TALLY_INTERNAL_VER3_NOTE.fr3 (55)
    else Begin
      if dmsContact.Client_Language
        (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger) = cSwedish
      then
        RepNo := 43 // TALLY_VER3_NOTE.fr3 (43)
      else
        RepNo := 56; // TALLY_eng_VER3_NOTE.fr3 (56)
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
      Params.Add('@Language',  dmsContact.Client_Language
        (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger));
      Params.Add('@LoadNo', dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
      A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
      if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
        FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT', A)
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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

procedure TfrmLoadArrivals.acFS_DKExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
      FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_dk.RPT', A)
    else
    Begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
        dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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

procedure TfrmLoadArrivals.acPrintSamLastExecute(Sender: TObject);
begin
  GetMarkedLoads(Sender);
  // if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation(Sender, ThisUser.UserID);
end;

procedure TfrmLoadArrivals.acPrintSamLastMedPktNrExecute(Sender: TObject);
begin
  GetMarkedLoads(Sender);
  // if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikationMedPktNr(Sender, ThisUser.UserID);
end;

procedure TfrmLoadArrivals.acPkgInfoExecute(Sender: TObject);
Var
  frmPkgInfo: TfrmPkgInfo;
begin
  frmPkgInfo := TfrmPkgInfo.Create(Nil);
  Try
    frmPkgInfo.PackageNo :=
      dmArrivingLoads.cdsArrivingPackagesPACKAGE_NO.AsInteger;
    frmPkgInfo.SupplierCode :=
      dmArrivingLoads.cdsArrivingPackagesSupplierCode.AsString;
    frmPkgInfo.ShowModal;
  Finally
    FreeAndNil(frmPkgInfo);
  End;
end;

procedure TfrmLoadArrivals.acChangeLoadLayoutExecute(Sender: TObject);
begin
  if grdLoads.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLoads.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmLoadArrivals.acChangePkgLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmLoadArrivals.acSetLoadToConfirmedExecute(Sender: TObject);
begin
  SetConfirmed_Load_Table(Sender);
end;

procedure TfrmLoadArrivals.SelectedPkgsOfPkgNosTable ;
 Var i, RecIDX  : Integer ;
 RecID          : Variant ;
 ADATASET       : TDATASET;
 Save_Cursor    : TCursor;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 grdPkgsDBTableView1.BeginUpdate ;
 grdPkgsDBTableView1.DataController.BeginLocate ;
 Try
   ADataSet := grdPkgsDBTableView1.DataController.DataSource.DataSet ;
   For I    := 0 to grdPkgsDBTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx  := grdPkgsDBTableView1.Controller.SelectedRecords[i].RecordIndex ;
    RecID   := grdPkgsDBTableView1.DataController.GetRecordId(RecIdx) ;
    ADataSet.Locate('LOAD_DETAILNO;ProductLengthNo', RecID,[]) ;

    mtPkgNos.Insert ;
    mtPkgNosPackageNo.AsInteger := ADataSet.FieldByName('PACKAGE_NO').AsInteger ;
    mtPkgNosSupp_Code.AsString  := ADataSet.FieldByName('SUPPLIERCODE').AsString ;
{
      mtPkgNosOwnerNo.AsInteger   := cds_PropsOwnerNo.AsInteger ;
      mtPkgNosPIPNo.AsInteger     := ADataSet.FieldByName('PIPNo').AsInteger ;
      mtPkgNosLIPNo.AsInteger     := ADataSet.FieldByName('LIPNo').AsInteger ;
      mtPkgNosStatus.AsInteger    := 1 ;// ADataSet.FieldByName('Status').AsInteger ;
}
    mtPkgNos.Post ;
   End ;

 Finally
  grdPkgsDBTableView1.DataController.EndLocate ;
  grdPkgsDBTableView1.EndUpdate ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfrmLoadArrivals.acSetPktStorlekExecute(Sender: TObject);
Var Package_Size      : Integer ;
    PackageSizeName   : String ;
begin
 With dmArrivingLoads do
 Begin
  Package_Size  :=  GetNewPackage_Size(PackageSizeName) ;
  if Package_Size > -1 then
  Begin
    mtPkgNos.Active := True ;
    cdsArrivingPackages.DisableControls ;
    Try
    SelectedPkgsOfPkgNosTable ;
    mtPkgNos.First ;
    while not mtPkgNos.Eof do
    Begin
     if cdsArrivingPackages.Locate('PACKAGE_NO;SupplierCode',  VarArrayOf([mtPkgNosPackageNo.AsInteger, mtPkgNosSupp_Code.AsString]), []) then
     Begin
{      sp_invpivPkgDtl.Edit ;
      sp_invpivPkgDtl.FieldByName('Package_Size').AsInteger     := Package_Size ;
      sp_invpivPkgDtl.FieldByName('PackageSizeName').AsString   := PackageSizeName ;
      sp_invpivPkgDtl.Post ;   }

      CngArtNoByPkgSize(mtPkgNosPackageNo.AsInteger, Package_Size, mtPkgNosSupp_Code.AsString) ;
     End;
     mtPkgNos.Next ;
    End;
     cdsArrivingPackages.Refresh ;
    Finally
     cdsArrivingPackages.EnableControls ;
     mtPkgNos.Active := False ;
    End;
  End;
 End;
end;

procedure TfrmLoadArrivals.acConfirmedLoadExecute(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    if grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 then
    Begin
     if AreMarkedLoadsSameObjectTypeRegionToRegion then
     ConfirmManyLoadsRegionToRegion(Sender)
      else
      if AreMarkedLoadsSameObjectTypeAndNOTEGEN then
        // External customer AR loads purchased of VW
        ConfirmManyLoadsPurchasedFromVW(Sender)
      else
       if AreMarkedLoadsSameObjectTypeAndNotNormalLOType then
        AR_INTADDLoads(Sender)
         else if AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType then
          Begin
            if mtSelectedLoadsOrderType.AsInteger = 0 then
              AR_Sales_Loads(Sender)
            else
            Begin
              if AreMarkedLoadsSameTRADINGType then
              Begin
                if cdsArrivingLoadsTrading.AsInteger = 0 then
                  AR_PO_Loads(Sender);
                // else
                // ConfirmManyPOTRADINGLoads(Sender) ;
              End // if AreMarkedLoadsSameTRADINGType then
              else
                ShowMessage
                  ('All selected loads must either be trading or not.');
            End;
          End
      else
        ShowMessage
          ('Selected loads must be of same LO type, (LO, ADD LO or internal LO) and same order type (sales, PO or internal)');
    End;
    { else
      if cdsArrivingLoadsObjectType.AsInteger = 2 then
      ConfirmedORDERLoad(Sender)
      else
      ConfirmedINTLoad(Sender) ;
    }
    // End ;
  End; // with

  { With dmArrivingLoads do
    Begin
    if grdLoadsDBTableView1.Controller.SelectedRecordCount > 0 then
    Begin
    if AreMarkedLoadsSameObjectTypeAndNotNormalLOType then
    ConfirmManyINTADDLoads(Sender)
    else
    if AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType then
    Begin
    if mtSelectedLoadsOrderType.AsInteger = 0 then
    ConfirmManySALESLoads(Sender)
    else
    Begin
    if AreMarkedLoadsSameTRADINGType then
    Begin
    if cdsArrivingLoadsTrading.AsInteger = 0 then
    ConfirmManyPOLoads(Sender)
    else
    ConfirmManyPOTRADINGLoads(Sender) ;
    End //if AreMarkedLoadsSameTRADINGType then
    else
    ShowMessage('Alla markerade laster måste antingen vara trading eller inte.') ;
    End ;
    End
    else
    ShowMessage('Markerade laster måste vara av samma LO typ, (LO, add LO eller interna LO) och samma ordertyp (sales, PO eller interna)');
    End
    else
    if cdsArrivingLoadsObjectType.AsInteger = 2 then
    ConfirmedORDERLoad(Sender)
    else
    ConfirmedINTLoad(Sender) ;
    //     End ;
    End ; //with
  }
end;

procedure TfrmLoadArrivals.acConfirmedLoadUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acConfirmedLoad.Enabled := (bcConfirmed.ItemIndex = 0) and
      (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) and
      (cdsArrivingLoadsLoadAR.AsInteger = 0) and
      (cdsArrivingLoadsLOAD_STATUS.AsInteger = 2) and
      (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0);
  End;
end;

procedure TfrmLoadArrivals.acPrintSamLastUpdate(Sender: TObject);
begin
  acPrintSamLast.Enabled := grdLoadsDBTableView1.Controller.
    SelectedRecordCount > 0;
end;

procedure TfrmLoadArrivals.acPrintSamLastMedPktNrUpdate(Sender: TObject);
begin
  acPrintSamLastMedPktNr.Enabled :=
    grdLoadsDBTableView1.Controller.SelectedRecordCount > 0;
end;

procedure TfrmLoadArrivals.acFSUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acFS.Enabled := (cdsArrivingLoads.Active) and
      (cdsArrivingLoads.RecordCount > 0);
  End;
end;

procedure TfrmLoadArrivals.acFS_DKUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acFS_DK.Enabled := (cdsArrivingLoads.Active) and
      (cdsArrivingLoads.RecordCount > 0);
  End;
end;

procedure TfrmLoadArrivals.acPkgInfoUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acPkgInfo.Enabled := cdsArrivingPackages.RecordCount > 0;
  End;
end;

procedure TfrmLoadArrivals.bcConfirmedPropertiesChange(Sender: TObject);
begin
  if bcConfirmed.ItemIndex = 0 then
  Begin
    acConfirmedLoad.Enabled := True;
    acUndoAR.Enabled := False;
    // MittARDatum.Enabled:= False ;
    deStartPeriod.Enabled := False;
    deEndPeriod.Enabled := False;
  End
  else if bcConfirmed.ItemIndex = 1 then
  Begin
    acConfirmedLoad.Enabled := False;
    acUndoAR.Enabled := True;
    // MittARDatum.Enabled:= False ;
    deStartPeriod.Enabled := True;
    deEndPeriod.Enabled := True;
  End
  else
  Begin
    acConfirmedLoad.Enabled := False;
    acUndoAR.Enabled := True;
    // MittARDatum.Enabled:= True ;
    deStartPeriod.Enabled := True;
    deEndPeriod.Enabled := True;
  End;

  // acRefreshExecute(Sender) ;
  EmptyGrid;
end;

procedure TfrmLoadArrivals.bcCompanyPropertiesChange(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    cdsArrivingLoads.Active := False;
  End;
end;

procedure TfrmLoadArrivals.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmLoadArrivals.acExportLoadsToExcelExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName, ExcelDir: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try

    if MessageDlg('Do you want to export to excel?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    Begin
      ExcelDir := dmsSystem.Get_Dir('ExcelDir');

      SaveDialog1.Filter := 'Excel files (*.xlsx)|*.xlsx';
      SaveDialog1.DefaultExt := 'xlsx';
      SaveDialog1.InitialDir := ExcelDir;
      if SaveDialog1.Execute then
      Begin
        FileName := SaveDialog1.FileName;
    //    ExportGridToExcel(FileName, grdLoads, False, False, True, 'xls');
        ExportGridToXLSX(FileName, grdLoads, true,true,true,'xlsx');
        ShowMessage('Table exported to Excel file ' + FileName);
      End;
    End;

  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmLoadArrivals.acRefreshExecute(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  if bcConfirmed.ItemIndex > 1 then
  Begin
    DecodeDate(deStartPeriod.Date, Year, Month, Day);
    if IsValidDate(Year, Month, Day) = False then
    Begin
      ShowMessage('Enter a from date.');
      Exit;
    End;
    DecodeDate(deEndPeriod.Date, Year, Month, Day);
    if IsValidDate(Year, Month, Day) = False then
    Begin
      ShowMessage('Enter a to date.');
      Exit;
    End;
  End;

  RefreshLoads;
end;

procedure TfrmLoadArrivals.acExportLoadsToExcelUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acExportLoadsToExcel.Enabled := (cdsArrivingLoads.Active) and
      (cdsArrivingLoads.RecordCount > 0);
  End;
end;

procedure TfrmLoadArrivals.acUndoARExecute(Sender: TObject);
Var
  LoadNo: Integer;
  Save_Cursor: TCursor;
begin
  if MessageDlg('Do you want to cancel arrival registration on selected loads?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    with dmArrivingLoads do
    Begin
      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crSQLWait; { Show hourglass cursor }
      cdsArrivingLoads.DisableControls;
      Try
        InsertMarkedLoadsToTempTable(Sender, 1);
        mtSelectedLoads.First;
        While not mtSelectedLoads.Eof do
        Begin
          if cdsArrivingLoads.Locate('LoadNo;LO',
            VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
            mtSelectedLoadsLONo.AsInteger]), []) then
          Begin
            if mtSelectedLoadsEGEN.AsInteger = 0 then
            Begin
              if AR_ExternLoad(cdsArrivingLoadsLoadNo.AsInteger, 0 { Status } ,
                -1 { LIPNo not used when cancel AR } , ThisUser.UserID) then
              Begin
                mtSelectedLoads.Edit;
                mtSelectedLoadsStatus.AsInteger := 0;
                mtSelectedLoads.Post;
              End;
            End
            else
            Begin
              if UndoConfirmLoad(mtSelectedLoadsTrading.AsInteger) then
              Begin
                mtSelectedLoads.Edit;
                mtSelectedLoadsStatus.AsInteger := 0;
                mtSelectedLoads.Post;
              End; // if LoadConfirmedOK then
            End; // else

          End; // if cdsArrivingLoads.Locate...
          mtSelectedLoads.Next;
        End; // While not mtSelectedLoads.Eof do
        TaBortAnkomstRegistreradeLaster(0);
      Finally
        cdsArrivingLoads.EnableControls;
        Screen.Cursor := Save_Cursor; { Always restore to normal }
      End;
    End; // With
end;

procedure TfrmLoadArrivals.acUndoARUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acUndoAR.Enabled := (cdsArrivingLoads.Active) and
      (cdsArrivingLoads.RecordCount > 0) and
      (cdsArrivingLoadsLoadAR.AsInteger >= 1) and
      (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0);
  End;
end;


procedure TfrmLoadArrivals.acShowGroupBoxExecute(Sender: TObject);
begin
  if grdLoadsDBTableView1.OptionsView.GroupByBox then
    grdLoadsDBTableView1.OptionsView.GroupByBox := False
  else
    grdLoadsDBTableView1.OptionsView.GroupByBox := True;
end;

procedure TfrmLoadArrivals.acEmailFSExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of Variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  ExcelDir, MailToAddress2, MailToAddress: String;
  ReportType: Integer;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
  ExportFile: string;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  MailToAddress2 := '';
  MailToAddress := '';
  if (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger > 0) and
    (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.IsNull = False) then
    MailToAddress := dmsContact.GetEmailAddress_Utlastad
      (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger)
  else
    MailToAddress := dmsContact.GetEmailAddress_Utlastad
      (dmArrivingLoads.cdsArrivingLoadsCUSTOMERNO.AsInteger);
  if Length(MailToAddress) = 0 then Begin
    MailToAddress := 'ange@adress.nu;';
    ShowMessage
      ('Email address missing, enter the address direct in the mail(outlook)');
  End;

  MailToAddress2 := dmsContact.GetEmailAddressForSpeditorByLO
    (dmArrivingLoads.cdsArrivingLoadsLO.AsInteger);

  if Length(MailToAddress2) > 0 then Begin
    if MailToAddress = 'ange@adress.nu' then
      MailToAddress := MailToAddress2
    else
      MailToAddress := MailToAddress + MailToAddress2;
  End;

  if Length(MailToAddress) > 0 then Begin
    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
      ReportType := cFoljesedelIntern // TALLY_INTERNAL_VER3_NOTE.fr3 (55)
    else Begin
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
        // dmcOrder.cdsLoadsForLOLoadNo.AsInteger ;
        dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
      except
        On E: Exception do Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

      if dmsContact.Client_Language
        (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger) = cSwedish
      then
        ReportType := cFoljesedel // TALLY_VER3_NOTE.fr3 (43)
      else
        ReportType := cFoljesedel_eng; // TALLY_eng_VER3_NOTE.fr3 (56)
    End;

    ExportFile := ExcelDir + 'FS ' + dmArrivingLoads.cdsArrivingLoadsLoadNo.
      AsString + '.pdf';
    if uReportController.useFR then begin

      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      Params := TCMParams.Create();
      Params.Add('@Language',  dmsContact.Client_Language
        (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger));
      Params.Add('@LoadNo', dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger);
      // dmcOrder.cdsLoadsForLOLoadNo.AsInteger

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
        Screen.Cursor := Save_Cursor;
      End;
      if not FileExists(ExportFile) then
        Exit;
    end
    else
      try
        FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
        SetLength(A, 1);
        A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
        // dmcOrder.cdsLoadsForLOLoadNo.AsInteger ;
        FormCRExportOneReport.CreateCo(1, ReportType, A,
          ExcelDir + 'FS ' + dmArrivingLoads.cdsArrivingLoadsLoadNo.AsString);
        // dmcOrder.cdsLoadsForLOLoadNo.AsString) ;

        if FormCRExportOneReport.ReportFound = False then
          Exit;
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
{$IFDEF DEBUG}
{$IFDEF TEST_WITH_EMAIL}
{$ELSE}
    Exit;
{$ENDIF}
{$ENDIF}
    SetLength(Attach, 1);
    Attach[0] := ExcelDir + 'FS ' + dmArrivingLoads.cdsArrivingLoadsLoadNo.
      AsString + '.pdf';
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Följesedel. FSnr: ' +
        dmArrivingLoads.cdsArrivingLoadsLoadNo.AsString,
        'Följesedel bifogad. ' + LF + '' + 'Load tally attached. ' + LF + '' +
        LF + '' + LF + 'MVH/Best Regards, ' + LF + '' +
        dmsContact.GetFirstAndLastName(ThisUser.UserID),
        dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress, Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');
end;

procedure TfrmLoadArrivals.acExpandAllExecute(Sender: TObject);
begin
  grdLoadsDBTableView1.ViewData.Expand(True);
end;

procedure TfrmLoadArrivals.acCollapseAllExecute(Sender: TObject);
begin
  grdLoadsDBTableView1.ViewData.Collapse(True);
end;

function TfrmLoadArrivals.SelectAvropsNrAttSkapaSalesLoadMot
  (const POLONo: Integer): Integer;
var
  fTradingLinkMult: TfTradingLinkMult;
Begin
  With dmArrivingLoads do
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

procedure TfrmLoadArrivals.TaBortAnkomstRegistreradeLaster(const AR_Status
  : Integer);
Begin
  With dmArrivingLoads do
  Begin
    mtSelectedLoads.First;
    While not mtSelectedLoads.Eof do
    Begin
      // if mtSelectedLoadsStatus.AsInteger = 1 then
      // While cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) do
      if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, [])
      then
      Begin
        // cdsArrivingLoads.Delete ;
        cdsArrivingLoads.Edit;
        cdsArrivingLoadsLoadAR.AsInteger := mtSelectedLoadsStatus.AsInteger;
        // if mtSelectedLoadsLoadAR.AsInteger = 0 then
        // cdsArrivingLoadsLoadAR.AsInteger  := 1
        // else
        // cdsArrivingLoadsLoadAR.AsInteger  := 0 ;
        cdsArrivingLoads.Post;
      End; // if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) then
      mtSelectedLoads.Next;
    End; // while
  End; // with
End;

procedure TfrmLoadArrivals.grdLoadsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn: TcxCustomGridTableItem;
  iObjectType: Integer;
  iObjectType2: Integer;
  LoadAR: Integer;
begin
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('OBJECTTYPE');
  iObjectType := ARecord.Values[AColumn.Index];
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('ORDERTYPE');
  iObjectType2 := ARecord.Values[AColumn.Index];
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('LoadAR');
  if ARecord.Values[AColumn.Index] <> null then
    LoadAR := ARecord.Values[AColumn.Index]
  else
    LoadAR := -1;

  { iObjectTypeColumn2 := grdLoadHead.ColumnByName('grdLoadHeadOBJECTTYPE').Index;
    iObjectType2 := ANode.Values[iObjectTypeColumn2];

    iObjectTypeColumn := grdLoadHead.ColumnByName('grdLoadHeadORDERTYPE').Index;
    iObjectType := ANode.Values[iObjectTypeColumn]; }

  // if ANode.Values[iObjectTypeColumn] <> null then
  Begin
    // Set the color for this row, based on LO status
    if iObjectType2 = 1 then
      iObjectType := 4;

    // if AColor <> clOlive then
    // AColor :=
    Case iObjectType of
      0:
        AStyle := cxStyle_0;
      1:
        AStyle := cxStyle_1;
      4:
        AStyle := cxStyle_4;
    End;
    if LoadAR = 1 then
      AStyle := cxStyleLoadAR;
  End;
end;

function TfrmLoadArrivals.
  AreMarkedLoadsSameObjectTypeAndNotNormalLOType: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType: Integer;
  EGEN: Integer;
begin
  Result := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active := False;
  mtSelectedLoads.Active := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;
        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        if not mtSelectedLoads.Locate('OBJECTTYPE', ObjectType, []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType;
          mtSelectedLoads.Post;
        End;
      End; // for y
      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1)
      then
        Result := False
      else if mtSelectedLoadsOBJECTTYPE.AsInteger < 2 then
        Result := True
      else
        Result := False;
    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeAndNOTEGEN: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType: Integer;
  EGEN: Integer;
begin
  Result                  := False;
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active  := False;
  mtSelectedLoads.Active  := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;
        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('EGEN').Index;
        EGEN := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if not mtSelectedLoads.Locate('OBJECTTYPE;EGEN',
          VarArrayOf([ObjectType, EGEN]), []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType;
          mtSelectedLoadsEGEN.AsInteger       := EGEN;
          mtSelectedLoads.Post;
        End;
      End; // for y
      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1)
      then
        Result := False
      else if (mtSelectedLoadsOBJECTTYPE.AsInteger >= 2) and
        (mtSelectedLoadsEGEN.AsInteger = 0) then
        Result := True
      else
        Result := False;
    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

function TfrmLoadArrivals.
  AreMarkedLoadsSameObjectTypeAndNotIntORAddLOType: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType, OrderType, Trading  : Integer;
begin
  Result := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active := False;
  mtSelectedLoads.Active := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;
        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OrderType').Index;
        OrderType := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Trading').Index;
        Trading := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if ObjectType = 3 then
         ObjectType := 2 ;

        if not mtSelectedLoads.Locate('OBJECTTYPE;OrderType;Trading',
          VarArrayOf([ObjectType, OrderType, Trading]), []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType ;
          mtSelectedLoadsOrderType.AsInteger  := OrderType  ;
          mtSelectedLoadsTrading.AsInteger    := Trading  ;
          mtSelectedLoads.Post;
        End;
      End; // for y

      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1)
      then
        Result := False
      else if mtSelectedLoadsOBJECTTYPE.AsInteger >= 2 then
        Result := True
      else
        Result := False;
    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameTRADINGType: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType, Trading: Integer;
begin
  Result := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active := False;
  mtSelectedLoads.Active := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;
        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Trading').Index;
        Trading := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if not mtSelectedLoads.Locate('OrderType', Trading, []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType;
          mtSelectedLoadsOrderType.AsInteger := Trading;
          mtSelectedLoads.Post;
        End;
      End; // for y

      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1)
      then
        Result := False
      else if mtSelectedLoads.RecordCount = 1 then
        Result := True;

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmLoadArrivals.acPrintTallyUSNoteExecute(Sender: TObject);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of Variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin

    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
      RepNo := 637 // TALLY_INT_USA.fr3
    else Begin
      RepNo := 41; // TALLY_US_NOTE.fr3
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
      Params.Add('@LoadNo', dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
      A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
      if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
        FormCRViewReport.CreateCo('TALLY_INT_USA.RPT', A)
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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

procedure TfrmLoadArrivals.acConfirmOneLoadExecute(Sender: TObject);
begin
  { With dmArrivingLoads do
    Begin
    if cdsArrivingLoadsObjectType.AsInteger = 2 then
    ConfirmedORDERLoad(Sender)
    else
    ConfirmedINTLoad(Sender) ;
    End ;//with
  }
end;

procedure TfrmLoadArrivals.PrintDirectFS(Sender: TObject);
var
  FormCRPrintOneReport: TFormCRPrintOneReport;
  A: array of Variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin

    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
      RepNo := 55 // TALLY_INTERNAL_VER3_NOTE.fr3
    else Begin
      RepNo := 43; // TALLY_VER3_NOTE.fr3;
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
      Params.Add('@Language',  dmsContact.Client_Language
        (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger));
      Params.Add('@LoadNo', dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger);
      RC.RunReport(RepNo, Params, frPrint, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
    FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
    Try
      // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

      SetLength(A, 1);
      A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
      if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
        FormCRPrintOneReport.CreateCo(1, False, False, A,
          'TALLY_INTERNAL_VER3_NOTE.RPT')
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
          dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
        except
          On E: Exception do Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
        FormCRPrintOneReport.CreateCo(1, False, False, A,
          'TALLY_VER3_NOTE.RPT');
      End;

      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
end;

procedure TfrmLoadArrivals.acPrintDirectFSExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  with dmArrivingLoads do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cdsArrivingLoads.DisableControls;
    Try
      InsertMarkedLoadsToTempTable(Sender, 0);
      mtSelectedLoads.First;
      While not mtSelectedLoads.Eof do
      Begin
        if cdsArrivingLoads.Locate('LoadNo;LO',
          VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
          mtSelectedLoadsLONo.AsInteger]), []) then
        Begin
          PrintDirectFS(Sender);
        End; // if cdsArrivingLoads.Locate...
        mtSelectedLoads.Next;
      End; // While not mtSelectedLoads.Eof do
    Finally
      cdsArrivingLoads.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // With
end;

procedure TfrmLoadArrivals.PrintDirectFS_USA(Sender: TObject);
var
  FormCRPrintOneReport: TFormCRPrintOneReport;
  A: array of Variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin
    if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger < 2 then
      RepNo := 637 // TALLY_INT_USA.fr3')
    else Begin
      RepNo := 41; // TALLY_US_NOTE.fr3
      Try
        dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
      Params.Add('@Language',  dmsContact.Client_Language
        (dmArrivingLoads.cdsArrivingLoadsAVROP_CUSTOMERNO.AsInteger));
      Params.Add('@LoadNo', dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger);
      RC.RunReport(RepNo, Params, frPrint, 0);
      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
    FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
    Try
      // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

      SetLength(A, 1);
      A[0] := dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
      if dmArrivingLoads.cdsArrivingLoadsObjectType.AsInteger <> 2 then
        FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_INT_USA.RPT')
      else Begin
        Try
          dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger :=
            dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
          dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL;
        except
          On E: Exception do Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
        FormCRPrintOneReport.CreateCo(1, False, False, A, 'TALLY_US_NOTE.RPT');
      End;

      Try
        dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger :=
          dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
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
end;

procedure TfrmLoadArrivals.acPrintDirectFS_USAExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  with dmArrivingLoads do Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cdsArrivingLoads.DisableControls;
    Try
      InsertMarkedLoadsToTempTable(Sender, 0);
      mtSelectedLoads.First;
      While not mtSelectedLoads.Eof do
      Begin
        if cdsArrivingLoads.Locate('LoadNo;LO',
          VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
          mtSelectedLoadsLONo.AsInteger]), []) then
        Begin
          PrintDirectFS_USA(Sender);
        End; // if cdsArrivingLoads.Locate...
        mtSelectedLoads.Next;
      End; // While not mtSelectedLoads.Eof do
    Finally
      cdsArrivingLoads.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // With
end;

procedure TfrmLoadArrivals.acSamlingsFS_USAExecute(Sender: TObject);
begin
  GetMarkedLoads(Sender);
  // if lbLO_To_Invoice.Items.Count > 0 then
  PrintSamlingsspecifikation_USA(Sender, ThisUser.UserID);
end;

procedure TfrmLoadArrivals.Timer1Timer(Sender: TObject);
begin
  // grdLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
  // grdLoadsDBTableView1.DataController.SetFocus ;
  // grdLoads.SetFocus ;
  Edit1.SetFocus;
  Timer1.Enabled := False;
end;

procedure TfrmLoadArrivals.Timer2Timer(Sender: TObject);
begin
  // grdLoadsDBTableView1.Controller.FocusedRecord.Selected := True;
  // grdLoadsDBTableView1.DataController.SetFocus ;
  // grdLoads.SetFocus ;
  Edit2.SetFocus;
  Timer2.Enabled := False;
end;

procedure TfrmLoadArrivals.acGetIntPricesExecute(Sender: TObject);
begin
  with dmArrivingLoads do
  Begin
    InsertMarkedLoadsToTempTable(Sender, 0);
    mtSelectedLoads.First;
    While not mtSelectedLoads.Eof do
    Begin
    if IsLoadAvraknad(mtSelectedLoadsLoadNo.AsInteger) = False then
     GetIntPrice(False, -1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True);
    mtSelectedLoads.Next;
    End; // While not mtSelectedLoads.Eof do
    cdsArrivingPackages.Active := False;
    cdsArrivingPackages.Close;
    cdsArrivingPackages.ParamByName('LoadNo').AsInteger :=
      cdsArrivingLoadsLoadNo.AsInteger;
    cdsArrivingPackages.ParamByName('ShippingPlanNo').AsInteger :=
      cdsArrivingLoadsLO.AsInteger;
    cdsArrivingPackages.ParamByName('LanguageID').AsInteger :=
      ThisUser.LanguageID ;
    cdsArrivingPackages.Open;
    cdsArrivingPackages.Active := True;
  End;
end;

procedure TfrmLoadArrivals.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsForm.AsString          := Self.Name;
  cds_PropsUserID.AsInteger       := ThisUser.UserID;
  cds_PropsNewItemRow.AsInteger   := 0;
  cds_PropsVerkNo.AsInteger       := ThisUser.CompanyNo;
end;

procedure TfrmLoadArrivals.acConfirmOneLoadUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acConfirmOneLoad.Enabled := (bcConfirmed.ItemIndex = 0) and
      (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) and
      (cdsArrivingLoadsLoadAR.AsInteger = 0) and
      (cdsArrivingLoadsLOAD_STATUS.AsInteger = 2);
  End;
end;

procedure TfrmLoadArrivals.acPrintExecute(Sender: TObject);
begin
  pmPrint.Popup(300, 200);
end;

procedure TfrmLoadArrivals.grdPkgsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  PRICE: Double;
  Used: Integer;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRICE').
    Index] <> null then
    PRICE := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PRICE').Index];

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Used').
    Index] <> null then
    Used := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('Used').Index];

  if Used = 1 then
    AStyle := cxStyleAvraknad
  else
  Begin
    if (dmArrivingLoads.cdsArrivingLoadsCUSTOMERNO.AsInteger <>
      dmArrivingLoads.cdsArrivingLoadsSupplierNO.AsInteger) AND (PRICE = 0) then
      AStyle := cxStyleLoadAR;
  End;
end;

procedure TfrmLoadArrivals.
  grdPkgsDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
  (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
  if (Assigned(dmArrivingLoads)) then
    With dmArrivingLoads do
      AText := IntToStr(GetNoOfPkgs);
end;

procedure TfrmLoadArrivals.AR_Sales_Loads(Sender: TObject);
Var
  LIPNo, NewLoadNo: Integer;
  // formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fAnkomstRegProgress: TfAnkomstRegProgress;
  Save_Cursor: TCursor;

begin
  if MessageDlg('Do you want to confirm the arrival on selected loads?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin

      InsertMarkedLoadsToTempTable(Sender, 0);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource := Nil;
        fAnkomstRegProgress.Show;
        mtSelectedLoads.Filter := 'LoadAR = 0';
        mtSelectedLoads.Filtered := True;
        Try
          mtSelectedLoads.First;
          Try
            While not mtSelectedLoads.Eof do
            Begin
              if cdsArrivingLoads.Locate('LoadNo;LO',
                VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
                mtSelectedLoadsLONo.AsInteger]), []) then
              Begin
                if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                  cdsArrivingLoadsLO.AsInteger,
                  cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
                Begin
                  ShowMessage('Load is not valid.');
                  Exit;
                End;

                if cdsArrivingLoadsLipNo.AsInteger = -1 then
                Begin
                  ShowMessage('LO missing inventory group.');
                  Exit;
                End;

                Try
                  sq_IsLoadConfirmed.Close;
                  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                    dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger :=
                    dmArrivingLoads.cdsArrivingLoadsLO.AsInteger;
                  sq_IsLoadConfirmed.Open;
                  if sq_IsLoadConfirmed.Eof then
                  Begin
                    if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                    Begin
                      // formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
                      Try

                        // LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
                        // LONo   := cdsArrivingLoadsLO.AsInteger ;
                        // formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                        // formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                        // Ändring. Nu tas LIPNo från lagergrupp angiven på LO för att den skall hamna i rätt lager i LagerBalansen.
                        // formConfirmanyNormalLoad.LIPNo              := cdsArrivingLoadsLipNo.AsInteger ;//isNull(SP.LipNo,-1)                     AS LipNo,

                        // formConfirmManyIntLoads.Show ;
                        fAnkomstRegProgress.Show;
                        Application.ProcessMessages;
                        // formConfirmanyNormalLoad.ConfirmThisLoad (0 {0 = Not Trading}, -1, -1) ;
                        // TformConfirmanyNormalLoad
                        // göra det här när alla laster är OK, med andra ord flyta till efter loopen!
                        NewLoadNo :=
                          ex_AR_SALES_Loads(mtSelectedLoadsLoadNo.AsInteger,
                          cdsArrivingLoadsLipNo.AsInteger);

                        if NewLoadNo > 0 then
                        Begin
                          // SetLoadAs_AR(mtSelectedLoadsLoadNo.AsInteger) ;
                          GetIntPrice(False, -1, 0, -1,
                            mtSelectedLoadsLoadNo.AsInteger, True);
                          mtSelectedLoads.Edit;
                          mtSelectedLoadsStatus.AsInteger := 1;
                          mtSelectedLoads.Post;


                            if mtSelectedLoadsTrading.AsInteger = 2 then
                                     Begin
                                       dmArrivingLoads.CopyRtR(mtSelectedLoadsLONo.AsInteger) ;

                                       CopyLoadToOtherSalesRegion(NewLoadNo, mtSelectedLoadsLONo.AsInteger) ;
                                     End;


                        End // if NewLoadNo > 0 then
                        else
                        Begin
                          mtSelectedLoads.Edit;
                          mtSelectedLoadsStatus.AsInteger := 0;
                          mtSelectedLoads.Post;
                          ShowMessage('Load# ' + mtSelectedLoadsLoadNo.AsString
                            + ' could not be confirmed because status has changed to preliminary.');
                        End;

                      Finally
                        // formConfirmanyNormalLoad.Close ;
                        // FreeAndNil(formConfirmanyNormalLoad) ;
                      End;
                    End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                    else
                      ShowMessage
                        ('Load status indicate problem with the load, cannot confirm the load.');
                  End // check IS load confirmed
                  else
                    ShowMessage('The load is already confirmed by ' +
                      Trim(sq_IsLoadConfirmedUserName.AsString) + ' at ' +
                      SqlTimeStampToStr('',
                      sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
                Finally
                  sq_IsLoadConfirmed.Close;
                End;

              End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
              mtSelectedLoads.Next;
            End; // While not mtSelectedLoads.Eof do

            TaBortAnkomstRegistreradeLaster(1);
            // End ;//if fSelectLIP.ShowModal = mrOK then

          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              ShowMessage
                ('Confirmation failed, please check the load.');
              // Raise ;
            End;
          end;

        Finally
          mtSelectedLoads.Filtered := False;
        End;

      Finally
        FreeAndNil(fAnkomstRegProgress);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;

    End; // with
end;

procedure TfrmLoadArrivals.AR_INTADDLoads(Sender: TObject);
Var
  LIPNo: Integer;
  fSelectLIP: TfSelectLIP;
  fAnkomstRegProgress: TfAnkomstRegProgress;
  Save_Cursor: TCursor;
  ChangeToIMPProduct: Integer;
  // ObjectType                : Integer ;
  LoadAROK: Boolean;
begin
  if MessageDlg('Do you want to confirm the arrival on selected loads?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin
      ChangeToIMPProduct := 0;

      // ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;

      InsertMarkedLoadsToTempTable(Sender, 0);
      fSelectLIP := TfSelectLIP.Create(nil);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource  := Nil;
        fSelectLIP.LIPNo                                := mtSelectedLoadsLIPNo.AsInteger;
        fSelectLIP.LO_CUSTOMERNO                        := mtSelectedLoadsCustomerNo.AsInteger;
        fSelectLIP.LoadDefaultLager;
        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo := fSelectLIP.LIPNo;
          if LIPNo < 1 then
          Begin
            ShowMessage('You did not select a inventory.');
            Exit;
          End ;

          Try
            fAnkomstRegProgress.Show;
            mtSelectedLoads.Filter := 'LoadAR = 0';
            mtSelectedLoads.Filtered := True;
            Try
              mtSelectedLoads.First;
              While not mtSelectedLoads.Eof do
              Begin
                if cdsArrivingLoads.Locate('LoadNo;LO',
                  VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
                  mtSelectedLoadsLONo.AsInteger]), []) then
                Begin
                  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                    cdsArrivingLoadsLO.AsInteger,
                    cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
                  Begin
                    ShowMessage('Load is not valid.');
                    Exit;
                  End;

                  Try
                    sq_IsLoadConfirmed.Close;
                    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                      dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger
                      := dmArrivingLoads.cdsArrivingLoadsLO.AsInteger;
                    sq_IsLoadConfirmed.Open;
                    if sq_IsLoadConfirmed.Eof then
                    Begin
                      if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      Begin
                        // formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
                        Try
                          // LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
                          // LONo   := cdsArrivingLoadsLO.AsInteger ;
                          // formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                          // formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                          // formConfirmManyIntLoads.LIPNo              := LIPNo ;

                          // formConfirmManyIntLoads.Show ;
                          fAnkomstRegProgress.Show;
                          Application.ProcessMessages;
                          // formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
                          // TformConfirmanyNormalLoad
                          // göra det här när alla laster är OK, med nadra ord flyta till efter loopen!

                          if (mtSelectedLoadsImpOrt.AsInteger = 1) or
                            (mtSelectedLoadsOBJECTTYPE.AsInteger = 1) then
                          Begin
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 0 then
                            Begin
                              if MessageDlg
                                ('Do you want to change the grade to grade + treated on all products in load number '
                                + mtSelectedLoadsLoadNo.AsString +
                                '? (otherwise the product stay as they are into the inventory)',
                                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                ChangeToIMPProduct := 2
                              else
                                ChangeToIMPProduct := 0;
                            End
                            else if mtSelectedLoadsOBJECTTYPE.AsInteger = 1 then
                            Begin
                              if MessageDlg
                                ('Do you want to change the grade to grade + treated on all products in load number '
                                + mtSelectedLoadsLoadNo.AsString +
                                '? ((otherwise the product stay as they are into the inventory)',
                                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                ChangeToIMPProduct := 1
                              else
                                ChangeToIMPProduct := 0;
                            End

                          End
                          else
                            ChangeToIMPProduct := 0;

                          LoadAROK :=
                            ARINTADDLOLoadToLager
                            (mtSelectedLoadsLoadNo.AsInteger, LIPNo,
                            ChangeToIMPProduct);
                          if LoadAROK then
                          Begin
                            GetIntPrice(False, -1, 0, -1,
                              mtSelectedLoadsLoadNo.AsInteger, True);
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 1;
                            mtSelectedLoads.Post;
                          End // if LoadAROK then
                          else
                          Begin
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 0;
                            mtSelectedLoads.Post;
                            ShowMessage
                              ('Load# ' + mtSelectedLoadsLoadNo.AsString +
                              ' could not be confirmed because status is set to preliminary.');
                          End;

                        Finally
                          // formConfirmManyIntLoads.Close ;
                          // FreeAndNil(formConfirmManyIntLoads) ;
                        End;
                      End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      else
                        ShowMessage
                          ('Load status indicate problem, load cannot be confirmed.');
                    End // check IS load confirmed
                    else
                      ShowMessage('The load is already confirmd by ' +
                        Trim(sq_IsLoadConfirmedUserName.AsString) + ' at ' +
                        SqlTimeStampToStr('',
                        sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
                  Finally
                    sq_IsLoadConfirmed.Close;
                  End;

                End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
                mtSelectedLoads.Next;
              End; // While not mtSelectedLoads.Eof do

              TaBortAnkomstRegistreradeLaster(1);

            except
              On E: Exception do
              Begin
                dmsSystem.FDoLog(E.Message);
                ShowMessage
                  ('Confirming failed, please check the load.');
                // Raise ;
              End;
            end;

          Finally
            mtSelectedLoads.Filtered := False;
          End;
        End; // if fSelectLIP.ShowModal = mrOK then

      Finally
        FreeAndNil(fAnkomstRegProgress);
        FreeAndNil(fSelectLIP);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;
    End; // with
end;

procedure TfrmLoadArrivals.AR_PO_Loads(Sender: TObject);
Var
  LIPNo, NewLoadNo: Integer;
  // formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP: TfSelectLIP;
  fAnkomstRegProgress: TfAnkomstRegProgress;
  Save_Cursor: TCursor;
begin
  if MessageDlg('Do you want to confirm arrival of selected loads?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin
      InsertMarkedLoadsToTempTable(Sender, 0);
      fSelectLIP := TfSelectLIP.Create(nil);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource := Nil;
        fSelectLIP.LIPNo := mtSelectedLoadsLIPNo.AsInteger;
        fSelectLIP.LO_CUSTOMERNO := mtSelectedLoadsCustomerNo.AsInteger;
        fSelectLIP.LoadDefaultLager;

        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo := fSelectLIP.LIPNo;
          if LIPNo < 1 then
          Begin
            ShowMessage('You did not select a inventory.');
            Exit;
          End;

          fAnkomstRegProgress.Show;
          mtSelectedLoads.Filter    := 'LoadAR = 0';
          mtSelectedLoads.Filtered  := True;
          Try
            mtSelectedLoads.First;
            While not mtSelectedLoads.Eof do
            Begin
              if cdsArrivingLoads.Locate('LoadNo;LO',
                VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
                mtSelectedLoadsLONo.AsInteger]), []) then
              Begin
                if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                  cdsArrivingLoadsLO.AsInteger,
                  cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
                Begin
                  ShowMessage('Load is not valid.');
                  Exit;
                End;

                Try
                  sq_IsLoadConfirmed.Close;
                  sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                    dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                  sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger :=
                    dmArrivingLoads.cdsArrivingLoadsLO.AsInteger;
                  sq_IsLoadConfirmed.Open;
                  if sq_IsLoadConfirmed.Eof then
                  Begin
                    if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                    Begin
                      // formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
                      Try
                        // formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                        // formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                        // formConfirmanyNormalLoad.LIPNo              := LIPNo ;

                        fAnkomstRegProgress.Show;
                        Application.ProcessMessages;
                        // formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
                        // TformConfirmanyNormalLoad
                        NewLoadNo :=
                          ex_AR_SALES_Loads
                          (mtSelectedLoadsLoadNo.AsInteger, LIPNo);
                        // göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
                        if NewLoadNo > 0 then
                        Begin
                          GetIntPrice(False, -1, 0, -1,
                            mtSelectedLoadsLoadNo.AsInteger, True);
                          mtSelectedLoads.Edit;
                          mtSelectedLoadsStatus.AsInteger := 1;
                          mtSelectedLoads.Post;
                        End // if NewLoadNo > 0 then
                        else
                        Begin
                          mtSelectedLoads.Edit;
                          mtSelectedLoadsStatus.AsInteger := 0;
                          mtSelectedLoads.Post;
                          ShowMessage('Load# ' + mtSelectedLoadsLoadNo.AsString
                            + ' could be confirmed cause status changed to preliminary.');
                        End;

                      Finally
                        // formConfirmanyNormalLoad.Close ;
                        // FreeAndNil(formConfirmanyNormalLoad) ;
                      End;
                    End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                    else
                      ShowMessage
                        ('Load status indicate problem, please check the load.');
                  End // check IS load confirmed
                  else
                    ShowMessage('The load is already confirmed by ' +
                      Trim(sq_IsLoadConfirmedUserName.AsString) + ' at ' +
                      SqlTimeStampToStr('',
                      sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
                Finally
                  sq_IsLoadConfirmed.Close;
                End;

              End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
              mtSelectedLoads.Next;
            End; // While not mtSelectedLoads.Eof do

            TaBortAnkomstRegistreradeLaster(1);
          Finally
            mtSelectedLoads.Filtered := False;
          End;
        End; // if fSelectLIP.ShowModal = mrOK then

      Finally
        FreeAndNil(fAnkomstRegProgress);
        FreeAndNil(fSelectLIP);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;

    End; // with
end;

procedure TfrmLoadArrivals.AR_TRADING_POLoads(Sender: TObject);
Var
  LIPNo, NewLoadNo, Sales_LONo: Integer;
  // formConfirmanyNormalLoad  : TformConfirmanyNormalLoad ;
  fSelectLIP: TfSelectLIP;
  fAnkomstRegProgress: TfAnkomstRegProgress;
  Save_Cursor: TCursor;
  LoadConfirmed: Boolean;
begin
  if MessageDlg('Do you want to confirm arrival of selected trading loads?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin
      InsertMarkedLoadsToTempTable(Sender, 0);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource := Nil;

        fAnkomstRegProgress.Show;
        mtSelectedLoads.Filter := 'LoadAR = 0';
        mtSelectedLoads.Filtered := True;
        Try
          mtSelectedLoads.First;
          While not mtSelectedLoads.Eof do
          Begin
            LIPNo := 10206; // GetSTDLIP!
            if cdsArrivingLoads.Locate('LoadNo;LO',
              VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
              mtSelectedLoadsLONo.AsInteger]), []) then
            Begin
              if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                cdsArrivingLoadsLO.AsInteger,
                cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
              Begin
                ShowMessage('Load is not valid.');
                Exit;
              End;

              Try
                sq_IsLoadConfirmed.Close;
                sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                  dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger :=
                  dmArrivingLoads.cdsArrivingLoadsLO.AsInteger;
                sq_IsLoadConfirmed.Open;
                if sq_IsLoadConfirmed.Eof then
                Begin
                  if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                  Begin
                    // formConfirmanyNormalLoad:= TformConfirmanyNormalLoad.Create(Nil);
                    Try
                      // formConfirmanyNormalLoad.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                      // formConfirmanyNormalLoad.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                      // formConfirmanyNormalLoad.LIPNo              := LIPNo ;

                      Sales_LONo := SelectAvropsNrAttSkapaSalesLoadMot
                        (cdsArrivingLoadsLO.AsInteger);

                      fAnkomstRegProgress.Show;
                      Application.ProcessMessages;
                      if Sales_LONo > 1 then
                      Begin
                        // formConfirmanyNormalLoad.ConfirmThisLoad(1 {1 = Trading}, Sales_LONo, mtSelectedLoadsLoadNo.AsInteger) ;
                        LoadConfirmed := AR_TRADING_PO_Loads(Sales_LONo,
                          mtSelectedLoadsLoadNo.AsInteger);
                        // TformConfirmanyNormalLoad

                        // göra det här när alla laster är OK, med nadra ord flyta till efter loopen!
                        if LoadConfirmed then
                        Begin
                          GetIntPrice(False, -1, 0, -1,
                            mtSelectedLoadsLoadNo.AsInteger, True);
                          mtSelectedLoads.Edit;
                          mtSelectedLoadsStatus.AsInteger := 1;
                          mtSelectedLoads.Post;
                        End; // if LoadConfirmedOK then
                      End // if Sales_LONO..
                      else
                      Begin
                        if Sales_LONo = -1 then
                          ShowMessage('cancel.')
                        else
                          ShowMessage
                            ('Cancelled, can not continue. restart and try again.');
                        (*
                          fSelectLIP:= TfSelectLIP.Create(nil);
                          Try
                          fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger ;
                          fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsCustomerNo.AsInteger ;
                          fSelectLIP.LoadDefaultLager ;

                          if fSelectLIP.ShowModal = mrOK then
                          Begin
                          LIPNo:= fSelectLIP.LIPNo ;
                          if LIPNo < 1 then
                          Begin
                          ShowMessage('Du måste välja ett lager!') ;
                          Exit ;
                          End ;
                          formConfirmanyNormalLoad.LIPNo              := LIPNo ;
                          formConfirmanyNormalLoad.ConfirmThisLoad(0 {0 = Not Trading}, -1, -1) ;
                          if LoadConfirmedOK then
                          Begin
                          GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
                          mtSelectedLoads.Edit ;
                          mtSelectedLoadsStatus.AsInteger    := 1 ;
                          mtSelectedLoads.Post ;
                          End ; //if LoadConfirmedOK then
                          End ;//if fSelectLIP.ShowModal = mrOK then
                          Finally
                          FreeAndNil(fSelectLIP) ;
                          End ; *)
                      End;

                    Finally
                      // formConfirmanyNormalLoad.Close ;
                      // FreeAndNil(formConfirmanyNormalLoad) ;
                    End;
                  End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                  else
                    ShowMessage
                      ('Load status indicate problem, please check the load.');
                End // check IS load confirmed
                else
                  ShowMessage('The load is already confirmed by ' +
                    Trim(sq_IsLoadConfirmedUserName.AsString) + ' at ' +
                    SqlTimeStampToStr('',
                    sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
              Finally
                sq_IsLoadConfirmed.Close;
              End;

            End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
            mtSelectedLoads.Next;
          End; // While not mtSelectedLoads.Eof do

          TaBortAnkomstRegistreradeLaster(1);

        Finally
          mtSelectedLoads.Filtered := False;
        End;

      Finally
        FreeAndNil(fAnkomstRegProgress);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;

    End; // with
end;

(* LG
procedure TfrmLoadArrivals.acSendLoadToHampenExecute(Sender: TObject);
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
        Application.ProcessMessages;
        Try
          Try
            if not Assigned(dmVidaInvoice) then
            Begin
              DeleteTdmVidaInvoice := True;
              dmVidaInvoice := TdmVidaInvoice.Create(Nil);
            End;
            dmVidaInvoice.ExportTypSoftSet
              (grdLoadsDBTableView1.DataController.DataSet.FieldByName('LoadNo')
              .AsInteger, grdLoadsDBTableView1.DataController.DataSet.
              FieldByName('LO').AsInteger, 4 { RecordType } ,
              grdLoadsDBTableView1.DataController.DataSet.FieldByName('LOTYP')
              .AsString, fExportLoadPurpose.rgPurpose.ItemIndex);
            ShowMessage('Lasten uppladdad till Hampen.');
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              ShowMessage(E.Message);
              Raise;
            End;
          end;

        Finally
          if DeleteTdmVidaInvoice = True then
            FreeAndNil(dmVidaInvoice); // .Free ;
          // Screen.Cursor := Save_Cursor;  { Always restore to normal }
        End; // Finally

      Finally
        FreeAndNil(fWait);
      End;
    End // if showmodal...
    else
    Begin
      if fExportLoadPurpose.rgPurpose.ItemIndex = -1 then
        ShowMessage('Ingen indlagring valdes, operation ej utförd.');
    End;
  Finally
    FreeAndNil(fExportLoadPurpose);
  End;
End;




procedure TfrmLoadArrivals.acSendLoadToHampenUpdate(Sender: TObject);
begin
  With dmArrivingLoads do
  Begin
    acSendLoadToHampen.Enabled := (cdsArrivingLoads.Active) and
      (cdsArrivingLoads.RecordCount > 0) and
      ((cdsArrivingLoads.FieldByName('OrderType').AsInteger = 1) or
      (cdsArrivingLoads.FieldByName('OrderType').AsInteger = -1));
  End;
  // acSendLoadToHampen.Enabled := (grdLoadsDBTableView1.DataController.DataSet.Active)
  // and (grdLoadsDBTableView1.DataController.DataSet.RecordCount > 0)
  // and ((grdLoadsDBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger = 1)
  // or (grdLoadsDBTableView1.DataController.DataSet.FieldByName('OrderType').AsInteger = -1)) ;
end;
LG *)

procedure TfrmLoadArrivals.SetLoadAs_AR(const LoadNo: Integer);
Begin
  With dmArrivingLoads do
  Begin
    if cdsArrivingLoads.Locate('LoadNo', LoadNo, []) then
    Begin
      cdsArrivingLoads.Edit;
      cdsArrivingLoadsLoadAR.AsInteger := 1;
      cdsArrivingLoads.Post;
    End; // if cdsArrivingLoads.Locate('LoadNo', mtSelectedLoadsLoadNo.AsInteger, []) then
  End; // with
End;

procedure TfrmLoadArrivals.RefreshOrter;
begin
  // if cds_PropsVerkNo.AsInteger > 0 then
  Begin
    // if SupplierNo <> dmcOrder.cds_PropsVerkNo.AsInteger then
    // SupplierNo := cds_PropsVerkNo.AsInteger ;

    sq_City.Active := False;
    if ((not cds_PropsClientNo.IsNull) and (cds_PropsClientNo.AsInteger > 0))
    then
      sq_City.ParamByName('OwnerNo').AsInteger := cds_PropsClientNo.AsInteger
    else
      sq_City.ParamByName('OwnerNo').AsInteger := 0;
    sq_City.Active := True;
  End;
end;

procedure TfrmLoadArrivals.RefreshDest;
begin
  // if cds_PropsVerkNo.AsInteger > 0 then
  Begin
    // if SupplierNo <> dmcOrder.cds_PropsVerkNo.AsInteger then
    // SupplierNo := cds_PropsVerkNo.AsInteger ;

    sq_Dest.Active := False;
    if ((not cds_PropsVerkNo.IsNull) and (cds_PropsVerkNo.AsInteger > 0)) then
    Begin
      sq_Dest.ParamByName('OwnerNo').AsInteger := cds_PropsVerkNo.AsInteger;
      sq_Dest.ParamByName('LegoOwnerNo').AsInteger := ThisUser.CompanyNo;
    end
    else
    Begin
      sq_Dest.ParamByName('OwnerNo').AsInteger := 0;
      sq_Dest.ParamByName('LegoOwnerNo').AsInteger := ThisUser.CompanyNo;
    End;
    sq_Dest.Active := True;
  End;
end;

procedure TfrmLoadArrivals.cds_PropsVerkNoChange(Sender: TField);
begin
  RefreshDest;
end;

procedure TfrmLoadArrivals.cds_PropsClientNoChange(Sender: TField);
begin
  RefreshOrter;
end;

procedure TfrmLoadArrivals.EmptyGrid;
var
  Save_Cursor: TCursor;
  LoadNo: Integer;
begin
  Save_Cursor := Screen.Cursor;
  With dmArrivingLoads do
  Begin
    lcSlutKund.PostEditValue;
    lcDestination.PostEditValue;
    lcInternKund.PostEditValue;
    lcLaststlle.PostEditValue;
    lcVerk.PostEditValue;
    bcConfirmed.PostEditValue;

    cdsArrivingLoads.DisableControls;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    try
      dsrcArrivingLoads.DataSet := Nil;
      Try
        // if cds_PropsVerkNo.AsInteger > 0 then
        // Begin
        // LoadNo                       := cdsArrivingLoadsLoadNo.AsInteger ;
        cdsArrivingLoads.Active := False;
        BuildARQuery(1, 1);
        cdsArrivingLoads.Active := True;
        // cdsArrivingLoads.FindKey([LoadNo]) ;
        RefreshArrivingPackages;
        // end ;
      finally
        dsrcArrivingLoads.DataSet := cdsArrivingLoads;
      end;
    finally
      cdsArrivingLoads.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    end;
  End;
end;

procedure TfrmLoadArrivals.ConfirmManyLoadsPurchasedFromVW(Sender: TObject);
Var
  LIPNo               : Integer;
  // formConfirmManyIntLoads   : TformConfirmManyIntLoads ;
  fSelectLIP          : TfSelectLIP;
  fAnkomstRegProgress : TfAnkomstRegProgress;
  Save_Cursor         : TCursor;
  // ChangeToIMPProduct        : Boolean ;
  ObjectType          : Integer;
  LoadAROK            : Boolean;
begin

  if MessageDlg('Do you want to confirm arrival of selected loads?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin
      // ChangeToIMPProduct:= 0 ;

      // ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;

      InsertMarkedLoadsToTempTable(Sender, 0);
      fSelectLIP := TfSelectLIP.Create(nil);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource := Nil;
        fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger;
        fSelectLIP.LO_CUSTOMERNO  := mtSelectedLoadsAvropCustomerNo.AsInteger;
        fSelectLIP.LoadDefaultLager;
        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo := fSelectLIP.LIPNo;
          if LIPNo < 1 then
          Begin
            ShowMessage('You did not select a inventory.');
            Exit;
          End;

          Try
            fAnkomstRegProgress.Show;
            mtSelectedLoads.Filter := 'LoadAR = 0';
            mtSelectedLoads.Filtered := True;
            Try
              mtSelectedLoads.First;
              While not mtSelectedLoads.Eof do
              Begin
                if cdsArrivingLoads.Locate('LoadNo;LO',
                  VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
                  mtSelectedLoadsLONo.AsInteger]), []) then
                Begin
                  if IsLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                    cdsArrivingLoadsLO.AsInteger,
                    cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
                  Begin
                    ShowMessage('Load is not valid.');
                    Exit;
                  End;

                  Try
                    sq_IsEXTLoadConfirmed.Close;
                    sq_IsEXTLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                      dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                    sq_IsEXTLoadConfirmed.ParamByName('ShippingPlanNo')
                      .AsInteger := dmArrivingLoads.cdsArrivingLoadsLO.
                      AsInteger;
                    sq_IsEXTLoadConfirmed.Open;
                    if sq_IsEXTLoadConfirmed.Eof then
                    Begin
                      if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      Begin
                        // formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
                        Try
                          // LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
                          // LONo   := cdsArrivingLoadsLO.AsInteger ;
                          // formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                          // formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                          // formConfirmManyIntLoads.LIPNo              := LIPNo ;

                          // formConfirmManyIntLoads.Show ;
                          fAnkomstRegProgress.Show;
                          Application.ProcessMessages;
                          // formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
                          // TformConfirmanyNormalLoad
                          // göra det här när alla laster är OK, med nadra ord flyta till efter loopen!

                          { if (mtSelectedLoadsImpOrt.AsInteger = 1) or (mtSelectedLoadsOBJECTTYPE.AsInteger = 1) then
                            Begin
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 0 then
                            Begin
                            if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            ChangeToIMPProduct:= 2
                            else
                            ChangeToIMPProduct:= 0 ;
                            End
                            else
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 1 then
                            Begin
                            if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            ChangeToIMPProduct:= 1
                            else
                            ChangeToIMPProduct:= 0 ;
                            End

                            End
                            else
                            ChangeToIMPProduct:= 0 ; }

                          // LoadAROK  := ARINTADDLOLoadToLager(mtSelectedLoadsLoadNo.AsInteger, LIPNo, ChangeToIMPProduct) ;

                          LoadAROK :=
                            AR_ExternLoad(mtSelectedLoadsLoadNo.AsInteger,
                            1 { Status } , LIPNo, ThisUser.UserID);

                          if LoadAROK then
                          Begin
                            // Obs, laster som AR av externa kunder skall inte generera internpris!!
                            // GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 1;
                            mtSelectedLoads.Post;
                          End // if LoadAROK then
                          else
                          Begin
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 0;
                            mtSelectedLoads.Post;
                            ShowMessage
                              ('Load# ' + mtSelectedLoadsLoadNo.AsString +
                              ' could not be confirmed cause status changed to preliminary.');
                          End;

                        Finally
                          // formConfirmManyIntLoads.Close ;
                          // FreeAndNil(formConfirmManyIntLoads) ;
                        End;
                      End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      else
                        ShowMessage
                          ('Load status indicate problem, please check the load.');
                    End // check IS load confirmed
                    else
                      ShowMessage('The load is already confirmed by ' +
                        Trim(sq_IsLoadConfirmedUserName.AsString) + ' at ' +
                        SqlTimeStampToStr('',
                        sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
                  Finally
                    sq_IsEXTLoadConfirmed.Close;
                  End;

                End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
                mtSelectedLoads.Next;
              End; // While not mtSelectedLoads.Eof do

              TaBortAnkomstRegistreradeLaster(1);

            except
              On E: Exception do
              Begin
                dmsSystem.FDoLog(E.Message);
                ShowMessage
                  ('Confirmation failed, please check the load.');
                // Raise ;
              End;
            end;

          Finally
            mtSelectedLoads.Filtered := False;
          End;
        End; // if fSelectLIP.ShowModal = mrOK then

      Finally
        FreeAndNil(fAnkomstRegProgress);
        FreeAndNil(fSelectLIP);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;
    End; // with
end;

procedure TfrmLoadArrivals.acSamlingsFS_USAUpdate(Sender: TObject);
begin
  acSamlingsFS_USA.Enabled := grdLoadsDBTableView1.Controller.
    SelectedRecordCount > 0;
end;

procedure TfrmLoadArrivals.acPrintDirectFSUpdate(Sender: TObject);
begin
  acPrintDirectFS.Enabled := grdLoadsDBTableView1.Controller.
    SelectedRecordCount > 0;
end;

procedure TfrmLoadArrivals.acPrintDirectFS_USAUpdate(Sender: TObject);
begin
  acPrintDirectFS_USA.Enabled := grdLoadsDBTableView1.Controller.
    SelectedRecordCount > 0;
end;

procedure TfrmLoadArrivals.acPrintTallyUSNoteUpdate(Sender: TObject);
begin
  acPrintTallyUSNote.Enabled := grdLoadsDBTableView1.Controller.
    SelectedRecordCount > 0;
end;


procedure TfrmLoadArrivals.CopyLoadToOtherSalesRegion(const LoadNo, LONo  : Integer);
Var
  PO_LONo, NewLoadNo: Integer;
begin

  // ToDo ! Gör en kontroll att avropen matchar med orderlineno!!

  With dmArrivingLoads do
  Begin
    NewLoadNo := dmsSystem.POLoadConfirmed(LoadNo,
      PO_LONo);
    if NewLoadNo = 0 then
    Begin
      PO_LONo := GetPOLoNoInRegionToRegion(LONo); // SelectAvropsNrAttSkapaSalesLoadMot

      if PO_LONo > 0 then
      Begin
        NewLoadNo := CopySalesLoadToPOLoadAndSetPackagesAsNotAvailable
          (LoadNo, PO_LONo, 1);
        if NewLoadNo > 0 then
          ShowMessage('The Load was copied to other sales region ' +
            inttostr(PO_LONo) + ', Load# ' + inttostr(NewLoadNo));
      End;
    End
    else
      ShowMessage('The load is already copied to other sales region ' +
        inttostr(PO_LONo) + ', Load# ' + inttostr(NewLoadNo));
  End;
end;

procedure TfrmLoadArrivals.ConfirmManyLoadsRegionToRegion(Sender: TObject) ;
Var
  LIPNo               : Integer;
  fSelectLIP          : TfRegionToRegionSelectLIPNo ;
  fAnkomstRegProgress : TfAnkomstRegProgress;
  ObjectType          : Integer;
  LoadAROK            : Boolean;
begin

  if MessageDlg('Do you want to confirm arrival of selected loads?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    With dmArrivingLoads do
    Begin
      // ChangeToIMPProduct:= 0 ;

      // ObjectType:= mtSelectedLoadsOBJECTTYPE.AsInteger ;

      InsertMarkedLoadsToTempTable(Sender, 0);
      fSelectLIP := TfRegionToRegionSelectLIPNo.Create(nil);
      fAnkomstRegProgress := TfAnkomstRegProgress.Create(nil);
      Try
        grdLoadsDBTableView1.DataController.DataSource := Nil;
 //       fSelectLIP.LIPNo          := mtSelectedLoadsLIPNo.AsInteger;
        fSelectLIP.OwnerNo        := cds_PropsVerkNo.AsInteger;
//        fSelectLIP.LoadDefaultLager;
        if fSelectLIP.ShowModal = mrOK then
        Begin
          LIPNo := fSelectLIP.LIPNo;
          if LIPNo < 1 then
          Begin
            ShowMessage('You did not select a inventory.');
            Exit;
          End;

          Try
            fAnkomstRegProgress.Show;
            mtSelectedLoads.Filter := 'LoadAR = 0';
            mtSelectedLoads.Filtered := True;
            Try
              mtSelectedLoads.First;
              While not mtSelectedLoads.Eof do
              Begin
                if cdsArrivingLoads.Locate('LoadNo;LO',
                  VarArrayOf([mtSelectedLoadsLoadNo.AsInteger,
                  mtSelectedLoadsLONo.AsInteger]), []) then
                Begin
                  if IsRegionToRegionLoadValid(cdsArrivingLoadsLoadNo.AsInteger,
                    cdsArrivingLoadsLO.AsInteger,
                    cdsArrivingLoadsObjectType.AsInteger, Sender) = False then
                  Begin
                    ShowMessage('Load is not valid.');
                    Exit;
                  End;

                  Try
                    sq_IsEXTLoadConfirmed.Close;
                    sq_IsEXTLoadConfirmed.ParamByName('LoadNo').AsInteger :=
                      dmArrivingLoads.cdsArrivingLoadsLoadNo.AsInteger;
                    sq_IsEXTLoadConfirmed.ParamByName('ShippingPlanNo')
                      .AsInteger := dmArrivingLoads.cdsArrivingLoadsLO.
                      AsInteger;
                    sq_IsEXTLoadConfirmed.Open;
                    if sq_IsEXTLoadConfirmed.Eof then
                    Begin
                      if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      Begin
                        // formConfirmManyIntLoads:= TformConfirmManyIntLoads.Create(Nil);
                        Try
                          // LoadNo := cdsArrivingLoadsLoadNo.AsInteger ;
                          // LONo   := cdsArrivingLoadsLO.AsInteger ;
                          // formConfirmManyIntLoads.LO_CUSTOMERNO      := cdsArrivingLoadsCUSTOMERNO.AsInteger ;
                          // formConfirmManyIntLoads.LoadNo             := cdsArrivingLoadsLOADNO.AsInteger ;
                          // formConfirmManyIntLoads.LIPNo              := LIPNo ;

                          // formConfirmManyIntLoads.Show ;
                          fAnkomstRegProgress.Show;
                          Application.ProcessMessages;
                          // formConfirmManyIntLoads.ConfirmThisLoad (ChangeToIMPProduct, ObjectType) ;
                          // TformConfirmanyNormalLoad
                          // göra det här när alla laster är OK, med nadra ord flyta till efter loopen!

                          { if (mtSelectedLoadsImpOrt.AsInteger = 1) or (mtSelectedLoadsOBJECTTYPE.AsInteger = 1) then
                            Begin
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 0 then
                            Begin
                            if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            ChangeToIMPProduct:= 2
                            else
                            ChangeToIMPProduct:= 0 ;
                            End
                            else
                            if mtSelectedLoadsOBJECTTYPE.AsInteger = 1 then
                            Begin
                            if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter i lastnr ' + mtSelectedLoadsLoadNo.AsString + '? (i annat fall går varorna till lagret som de är)',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                            ChangeToIMPProduct:= 1
                            else
                            ChangeToIMPProduct:= 0 ;
                            End

                            End
                            else
                            ChangeToIMPProduct:= 0 ; }

                          // LoadAROK  := ARINTADDLOLoadToLager(mtSelectedLoadsLoadNo.AsInteger, LIPNo, ChangeToIMPProduct) ;

                          LoadAROK :=
                            AR_ExternLoad(mtSelectedLoadsLoadNo.AsInteger,
                            1 { Status } , LIPNo, ThisUser.UserID);

                          if LoadAROK then
                          Begin
                            // Obs, laster som AR av externa kunder skall inte generera internpris!!
                            // GetIntPrice(-1, 0, -1, mtSelectedLoadsLoadNo.AsInteger, True) ;
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 1;
                            mtSelectedLoads.Post;


                          End // if LoadAROK then
                          else
                          Begin
                            mtSelectedLoads.Edit;
                            mtSelectedLoadsStatus.AsInteger := 0;
                            mtSelectedLoads.Post;
                            ShowMessage
                              ('Load# ' + mtSelectedLoadsLoadNo.AsString +
                              ' could be confirmed, please check the load.');
                          End;

                        Finally
                          // formConfirmManyIntLoads.Close ;
                          // FreeAndNil(formConfirmManyIntLoads) ;
                        End;
                      End // if cdsArrivingLoadsLOAD_STATUS.AsInteger = 2 then
                      else
                        ShowMessage
                          ('Load status indicate problem, please check the load.');
                    End // check IS load confirmed
                    else
                      ShowMessage('The load is already confirmed by ' +
                        Trim(sq_IsLoadConfirmedUserName.AsString) + ' at ' +
                        SqlTimeStampToStr('',
                        sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp));
                  Finally
                    sq_IsEXTLoadConfirmed.Close;
                  End;

                End; // if cdsArrivingLoads.Locate('LoadNo;LO', VarArrayOf([mtSelectedLoadsLoadNo.AsInteger, mtSelectedLoadsLONo.AsInteger]), []) then
                mtSelectedLoads.Next;
              End; // While not mtSelectedLoads.Eof do

              TaBortAnkomstRegistreradeLaster(1);

            except
              On E: Exception do
              Begin
                dmsSystem.FDoLog(E.Message);
                ShowMessage
                  ('Confirmation failed, please check the load.');
                // Raise ;
              End;
            end;

          Finally
            mtSelectedLoads.Filtered := False;
          End;
        End; // if fSelectLIP.ShowModal = mrOK then

      Finally
        FreeAndNil(fAnkomstRegProgress);
        FreeAndNil(fSelectLIP);
        grdLoadsDBTableView1.DataController.DataSource := dsrcArrivingLoads;
      End;
    End; // with
end;

function TfrmLoadArrivals.AreMarkedLoadsSameObjectTypeRegionToRegion: Boolean;
Var
  i, RecIDX: Integer;
  Save_Cursor: TCursor;
  ColIdx: Integer;
  ObjectType: Integer;
  EGEN: Integer;
  LOTYP : String ;
begin
  Result                  := False;
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crSQLWait; { Show hourglass cursor }
  mtSelectedLoads.Active  := False;
  mtSelectedLoads.Active  := True;
  with dmArrivingLoads do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('OBJECTTYPE').Index;

        ObjectType := grdLoadsDBTableView1.DataController.Values
          [RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('EGEN').Index;
        EGEN := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('LOTYP').Index;
        LOTYP := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];

        if not mtSelectedLoads.Locate('OBJECTTYPE;LOTYP',
          VarArrayOf([ObjectType, EGEN]), []) then
        Begin
          mtSelectedLoads.Insert;
          mtSelectedLoadsOBJECTTYPE.AsInteger := ObjectType;
          mtSelectedLoadsLOTYP.AsString       := LOTYP ;
 //         mtSelectedLoadsEGEN.AsInteger       := EGEN;
          mtSelectedLoads.Post;
        End;
      End; // for y
      // Är det fler än en record är valda laster av olika "sort"
      if (mtSelectedLoads.RecordCount = 0) or (mtSelectedLoads.RecordCount > 1)
      then
        Result := False
      else if (mtSelectedLoadsOBJECTTYPE.AsInteger >= 2) and
        (LOTYP = 'RtR') then
        Result := True
      else
        Result := False;
    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

Function TfrmLoadArrivals.IsRegionToRegionLoadValid(LoadNo, ShippingPlanNo,
  ObjectType: Integer; Sender: TObject): Boolean;
begin
  Result := False;
  With dmArrivingLoads do
  Begin
    // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex1' ;

    cdsArrivingLoads.Filter := 'LoadNo = ' + IntToStr(LoadNo);
    cdsArrivingLoads.Filtered := True;
    cdsArrivingLoads.First;
    Try
      While Not cdsArrivingLoads.Eof do
      Begin

        if cdsArrivingLoadsObjectType.AsInteger >= 2 then
        Begin
          sq_CheckObjectRegionToRegionLink.Close;
          sq_CheckObjectRegionToRegionLink.ParamByName('LoadNo').AsInteger :=
            cdsArrivingLoadsLoadNo.AsInteger;
          sq_CheckObjectRegionToRegionLink.ParamByName('ShippingPlanNo').AsInteger :=
            cdsArrivingLoadsLO.AsInteger;
          sq_CheckObjectRegionToRegionLink.Open;
          if sq_CheckObjectRegionToRegionLink.Eof then
            Result := True
          else
            ShowMessage('Cannot confirm the load.  LO# ' +
              cdsArrivingLoadsLO.AsString +
              '. Please check that load is OK');
          sq_CheckObjectRegionToRegionLink.Close;
        End;
        cdsArrivingLoads.Next;
      End; // While
      cdsArrivingLoads.Filtered := False;
      if not cdsArrivingLoads.FindKey([LoadNo]) then
        Result := False;
    Finally
      // cdsArrivingLoads.IndexName:= 'cdsArrivingLoadsIndex2' ;
    End;
  End; // With
End;

end.
