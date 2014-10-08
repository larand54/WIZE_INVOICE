unit uFreightExternLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, DB, SqlTimSt, Menus, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, // StBase,
  cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox, Buttons,
  ActnList, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, DateUtils,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxCurrencyEdit, cxLookAndFeels,
  cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxImageComboBox, cxMemo, cxDBEdit, cxDBLabel,
  cxCalc, cxButtons, cxPC, cxSplitter, Grids, DBGrids, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxBarPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxSSLnk,
  dxSkinsdxRibbonPainter, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxBarBuiltInMenu,
  System.Actions, siComp, siLngLnk;

type
  TfrmFreightExternLoad = class(TForm)
    dxBarManager1: TdxBarManager;
    bbRefresh: TdxBarLargeButton;
    bbExit: TdxBarLargeButton;
    imglistActions: TImageList;
    lbSaveToOld: TdxBarLargeButton;
    Panel1: TPanel;
    ActionList1: TActionList;
    Label2: TLabel;
    nfSearchFakturaNr: TcxTextEdit;
    LabelClient: TLabel;
    Label5: TLabel;
    acPrint: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    pmGrdLoads: TdxBarPopupMenu;
    deStart: TcxDateEdit;
    deEnd: TcxDateEdit;
    Label6: TLabel;
    cbDateFilter: TcxCheckBox;
    acRefreshGrid: TAction;
    acClose: TAction;
    PopupMenu2: TPopupMenu;
    ndraprispmarkeradelasterF101: TMenuItem;
    Skrivut1: TMenuItem;
    UppdateraF61: TMenuItem;
    SparanyF31: TMenuItem;
    ds_Props: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    lcSpeditor: TcxDBLookupComboBox;
    cds_PropsSpeditor: TStringField;
    cds_PropsAgent: TStringField;
    lcAgent: TcxDBLookupComboBox;
    acSaveGridLayout: TAction;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    acAttestSelectedRows: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    cxGridPopupMenu2: TcxGridPopupMenu;
    panek: TPanel;
    grdLoads: TcxGrid;
    grdLoadsDBBandedTableView1: TcxGridDBBandedTableView;
    grdLoadsDBBandedTableView1Kund: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Fakturanr: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1ShippingCompanyNo: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Varuvrde: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Fakturavrde: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1InternalInvoiceNo: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Utlastad: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Kommission_Percent: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Kommission_Sum: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Kommission_villkor: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1ValutaFaktura: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Agent: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1ConfirmKomm: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Komm: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1AM3: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1FraktValuta: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1FraktEnhet: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Fraktkostnad: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1ConfirmFrakt: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Fraktkostnad_sum: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Speditr: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1Frakt: TcxGridDBBandedColumn;
    grdLoadsLevel1: TcxGridLevel;
    lcMarknad: TcxDBLookupComboBox;
    Label3: TLabel;
    Timer1: TTimer;
    nSearchLONr: TcxTextEdit;
    Label1: TLabel;
    Timer2: TTimer;
    acDeleteAttest: TAction;
    acOpenInvoice: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    deStartPeriod: TcxDBDateEdit;
    mt_SelectedRows: TFDMemTable;
    mt_SelectedRowsInvoiceNo: TIntegerField;
    mt_SelectedRowsLONo: TIntegerField;
    acOpenAttestFrm: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    icAttesteraMot: TcxDBImageComboBox;
    Label7: TLabel;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    tsAttester: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel6: TPanel;
    cxButton1: TcxButton;
    grd_Att_Ext_ServicesII: TcxGrid;
    grd_Att_Ext_ServicesIIDBTableView1: TcxGridDBTableView;
    grd_Att_Ext_ServicesIIDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1SequensNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1Description: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1Supplier_InvoiceNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1Supplier_InvoiceDate: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1Amount: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1CurrencyNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1SupplierNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1Note: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1CreatedDate: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1CreatedUser: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1ModifiedDate: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1ModifiedUser: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1Quick_InvoiceNo: TcxGridDBColumn;
    grd_Att_Ext_ServicesIIDBTableView1AmountAttested: TcxGridDBColumn;
    grd_Att_Ext_ServicesIILevel1: TcxGridLevel;
    grdLoadsDBBandedTableView1ValutaNr: TcxGridDBBandedColumn;
    grdLoadsDBBandedTableView1EgenValuta: TcxGridDBBandedColumn;
    grd_Att_Ext_ServicesIIDBTableView1Valuta: TcxGridDBColumn;
    acGotoInvoiceNoSerachField: TAction;
    acGotoLOSearchField: TAction;
    acGotoInvoiceNoSerachField1: TMenuItem;
    acGotoLOSearchField1: TMenuItem;
    cxButton2: TcxButton;
    acSaveChanges: TAction;
    DataSource1: TDataSource;
    grd_Att_Ext_ServicesIIDBTableView1Klient: TcxGridDBColumn;
    siLangLinked_frmFreightExternLoad: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure nfSearchFakturaNrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acPrintExecute(Sender: TObject);
    procedure grdLoadsDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDateFilterPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acRefreshGridExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure cds_PropsAgentNoChange(Sender: TField);
    procedure acSaveGridLayoutExecute(Sender: TObject);
    procedure acAttestSelectedRowsExecute(Sender: TObject);
    procedure acAttestSelectedRowsUpdate(Sender: TObject);
    procedure grdLoadsDBBandedTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure nSearchLONrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure acDeleteAttestExecute(Sender: TObject);
    procedure acDeleteAttestUpdate(Sender: TObject);
    procedure acOpenInvoiceExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acOpenInvoiceUpdate(Sender: TObject);
    procedure acOpenAttestFrmExecute(Sender: TObject);
    procedure cds_PropsAutoColWidthChange(Sender: TField);
    procedure acGotoInvoiceNoSerachFieldExecute(Sender: TObject);
    procedure acGotoLOSearchFieldExecute(Sender: TObject);
    procedure acSaveChangesExecute(Sender: TObject);
    procedure acSaveChangesUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure InitStart;
    procedure EmptyGrid;
    procedure SetSelectedAsConfirmed;
    procedure OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst,
      DelKredit: Integer);
    Procedure SetSpeditorEllerAgentIDropListan;
    procedure ReLoadDataSets;
    procedure SetMemTableValues(const Supplier_InvoiceNo, Supplier_InvoiceDate,
      Note: String);
    Function CheckThatAllRowsAreSameInvoiceNo: Boolean;
    procedure AttestFrakt(Sender: TObject; const Beskrivning: String);
    procedure GetSelectedInvoiceAndLORows;
    procedure SaveFakturaNr(Sender: TObject);
    procedure HideAndShowColumns;
    procedure BuildExternaSQL(Const InvoiceNo, LONo: Integer);
    procedure SetMarkedRowsSelected;
    procedure SaveUserProps;
    procedure LoadUserProps;
  public
    { Public declarations }
    procedure CreateCo;
  end;

var
  frmFreightExternLoad: TfrmFreightExternLoad;

implementation

uses UnitdmModule1, dmsDataConn, VidaUser, dmsVidaContact,
  uMultiplaShippers, VidaUtils, UnitAvrakningar, VidaConst,
  uSelectShipper, uEntryField, dmsVidaSystem, uSelectLastStalleAndShipTo,
  uAttest_SetHdrInfo, dmcVidaInvoice, fInvoice, fAttestInvoice;

{$R *.dfm}

procedure TfrmFreightExternLoad.InitStart;
Var
  PropsAutoColWidth: Integer;
begin
  cds_PropsAutoColWidth.OnChange := nil;
  Try
    PropsAutoColWidth := cds_PropsAutoColWidth.AsInteger;
    cds_Props.Active := False;
    if PropsAutoColWidth >= c_Frakt then
    Begin
      dmsContact.Refresh_sp_AttLev(8);
      // cds_PropsAgent.LookupDataSet   := dmsContact.cds_ActShippers ;
      LabelClient.Caption := 'Speditör:';
    End
    else
    // if PropsAutoColWidth = c_Komm then
    Begin
      dmsContact.Refresh_sp_AttLev(3);
      // cds_PropsAgent.LookupDataSet   := dmsContact.sp_actAgents ;
      LabelClient.Caption := 'Agent:';
    End;

    cds_Props.Active := True;

    LoadUserProps;
    cds_Props.Edit;
    cds_PropsAutoColWidth.AsInteger := PropsAutoColWidth;
    cds_Props.Post;

    // EmptyGrid ;
    // acRefreshGridExecute(Sender) ;
  Finally
    cds_PropsAutoColWidth.OnChange := cds_PropsAutoColWidthChange;
  End;
end;

procedure TfrmFreightExternLoad.CreateCo;
begin
  cds_PropsAutoColWidth.OnChange := nil;
  cds_PropsAgentNo.OnChange := nil;
  Try

    LoadUserProps;

    cds_Props.Edit;
    // cds_PropsAutoColWidth.Clear ;
    cds_PropsAgentNo.Clear;
    cds_Props.Post;

    InitStart;

    HideAndShowColumns;
  Finally
    cds_PropsAgentNo.OnChange := cds_PropsAgentNoChange;
    cds_PropsAutoColWidth.OnChange := cds_PropsAutoColWidthChange;
  End;
end;

procedure TfrmFreightExternLoad.BuildExternaSQL(Const InvoiceNo, LONo: Integer);
Begin
  with dmModule1 do
  Begin
    { if (not cds_PropsAutoColWidth.IsNull)
      and (cds_PropsAutoColWidth.AsInteger > 0)
      and (not cds_PropsAgentNo.IsNull) then
      Begin
      if cbDateFilter.Checked then
      Begin
      deStart.Date  := RecodeHour(deStart.Date,0) ;
      deStart.Date  := RecodeMinute(deStart.Date,0) ;
      deStart.Date  := RecodeSecond(deStart.Date,0) ;

      deEnd.Date    := RecodeHour(deEnd.Date,23) ;
      deEnd.Date    := RecodeMinute(deEnd.Date,59) ;
      deEnd.Date    := RecodeSecond(deEnd.Date,59) ;
      End ; }

    if (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
    Begin
      if (InvoiceNo = -1) and (LONo = -1) then
      Begin
        sp_AttestFreightList.Active := False;
        sp_AttestFreightList.ParamByName('@InvoiceDate').AsSQLTimeStamp :=
          cds_PropsStartPeriod.AsSQLTimeStamp;
        // DateTimeToSQLTimeStamp(deStart.Date) ;
        sp_AttestFreightList.ParamByName('@ShippingCompanyNo').AsInteger :=
          cds_PropsAgentNo.AsInteger;
        if cds_PropsMarketRegionNo.AsInteger > 0 then
          sp_AttestFreightList.ParamByName('@MarketRegionNo').AsInteger :=
            cds_PropsMarketRegionNo.AsInteger
        else
          sp_AttestFreightList.ParamByName('@MarketRegionNo').Clear();
        sp_AttestFreightList.ParamByName('@Description').AsString :=
          icAttesteraMot.Properties.Items.Items[icAttesteraMot.ItemIndex]
          .Description;
        sp_AttestFreightList.Active := True;
      End
      else
      Begin
        if sp_AttestFreightList.Active then
          sp_AttestFreightList.Active := False;
        sp_LF.Active := False;
        if InvoiceNo > 0 then
          sp_LF.ParamByName('@InvoiceNo').AsInteger := InvoiceNo
        else
          sp_LF.ParamByName('@InvoiceNo').Clear();
        if LONo > 0 then
          sp_LF.ParamByName('@LONo').AsInteger := LONo
        else
          sp_LF.ParamByName('@LONo').Clear();
        sp_LF.Active := True;
      End;
    End
    else
    Begin
      if (InvoiceNo = -1) and (LONo = -1) then
      Begin
        sp_AttestKommList.Active := False;
        sp_AttestKommList.ParamByName('@InvoiceDate').AsSQLTimeStamp :=
          cds_PropsStartPeriod.AsSQLTimeStamp;
        // DateTimeToSQLTimeStamp(deStart.Date) ;
        sp_AttestKommList.ParamByName('@AgentNo').AsInteger :=
          cds_PropsAgentNo.AsInteger;
        if cds_PropsMarketRegionNo.AsInteger > 0 then
          sp_AttestKommList.ParamByName('@MarketRegionNo').AsInteger :=
            cds_PropsMarketRegionNo.AsInteger
        else
          sp_AttestKommList.ParamByName('@MarketRegionNo').Clear();
        sp_AttestKommList.Active := True;
      End
      else
      Begin
        sp_AttestKommListSingle.Active := False;
        if InvoiceNo > 0 then
          sp_AttestKommListSingle.ParamByName('@InvoiceNo').AsInteger :=
            InvoiceNo
        else
          sp_AttestKommListSingle.ParamByName('@InvoiceNo').Clear();
        if LONo > 0 then
          sp_AttestKommListSingle.ParamByName('@LONo').AsInteger := LONo
        else
          sp_AttestKommListSingle.ParamByName('@LONo').Clear();
        sp_AttestKommListSingle.Active := True;
      End;
    End;

    (*
      cds_LF.SQL.Clear ;
      cds_LF.SQL.Add('SELECT distinct IH.InvoiceType,') ;
      //  if cds_PropsAgentNo.IsNull then

      if (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
      Begin
      cds_LF.SQL.Add(' IL.ShippingPlanNo,') ;
      End
      else
      cds_LF.SQL.Add(' 0 AS ShippingPlanNo,') ;

      cds_LF.SQL.Add('inos.InvoiceNo AS Fakturanr,') ;
      cds_LF.SQL.Add('IH.InternalInvoiceNo,') ;

      //  if cds_PropsAgentNo.IsNull then
      CASE cds_PropsAutoColWidth.AsInteger of
      c_Frakt, c_FraktOthers : Begin
      cds_LF.SQL.Add('CuFrakt.CurrencyName AS FraktValuta,') ;
      cds_LF.SQL.Add('puFrakt.TemplateUnitName AS FraktEnhet,') ;
      cds_LF.SQL.Add('B.FreightCost AS Fraktkostnad,') ;
      cds_LF.SQL.Add('0 AS ConfirmFrakt,') ;
      cds_LF.SQL.Add('B.ShippingCompanyNo AS ShippingCompanyNo,') ;
      cds_LF.SQL.Add('shipper.clientname AS Speditör,') ;
      cds_LF.SQL.Add('CuFrakt.CurrencyNo AS FraktCurrencyNo,') ;
      End ;
      //  else
      c_Komm : Begin
      cds_LF.SQL.Add(QuotedStr('N/A') + ' AS FraktValuta,') ;
      cds_LF.SQL.Add(QuotedStr('N/A') + ' AS FraktEnhet,') ;
      cds_LF.SQL.Add('CAST(0.0 AS Float) AS Fraktkostnad,') ;
      cds_LF.SQL.Add('0 AS ConfirmFrakt,') ;
      cds_LF.SQL.Add('0 AS ShippingCompanyNo,') ;
      cds_LF.SQL.Add(QuotedStr('N/A') + ' AS Speditör,') ;
      cds_LF.SQL.Add('0 AS FraktCurrencyNo,') ;
      End ;
      End ;//Case

      if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
      Begin
      cds_LF.SQL.Add('(Select SUM(AttestHead.Amount) FROM') ;
      cds_LF.SQL.Add('dbo.Att_Ext_LO ALO') ;
      cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.SequensNo = ALO.SequensNo') ;
      cds_LF.SQL.Add('and ALO.InternalInvoiceNo = AttestHead.InternalInvoiceNo') ; //New
      cds_LF.SQL.Add('and ALO.ShippingPlanNo = AttestHead.ShippingPlanNo') ;
      cds_LF.SQL.Add('WHERE ALO.InternalInvoiceNo = IH.InternalInvoiceNo') ;
      cds_LF.SQL.Add('and ALO.ShippingPlanNo = IL.ShippingPlanNo') ;
      //  cds_LF.SQL.Add('AND ALO.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND (AttestHead.Description = ' + QuotedStr('Frakt')) ;
      cds_LF.SQL.Add('OR AttestHead.Description = ' + QuotedStr('Frakt övrigt') + ')) AS Frakt,') ;
      End
      else
      cds_LF.SQL.Add('CAST(0.0 AS Float) AS Frakt,') ;


      if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
      //  if cds_PropsAgentNo.IsNull then
      Begin
      cds_LF.SQL.Add('CASE WHEN B.FreightCostVolUnit = 3 THEN') ;
      cds_LF.SQL.Add('B.FreightCost *') ;
      cds_LF.SQL.Add('(Select SUM(invd.ActualNetM3) from dbo.InvoiceDetail invd') ;
      cds_LF.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
      cds_LF.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND invd.TypeOfRow = 1)') ;
      cds_LF.SQL.Add('ELSE') ;
      cds_LF.SQL.Add('B.FreightCost') ;
      cds_LF.SQL.Add('END') ;
      cds_LF.SQL.Add('AS Fraktkostnad_sum,') ;

      End
      else
      cds_LF.SQL.Add('CAST(0.0 AS Float) AS Fraktkostnad_sum,') ;



      cds_LF.SQL.Add('IH.InvoiceDate AS Utlastad,') ;
      //  cds_LF.SQL.Add('shipper.clientname AS Speditör,') ;


      //  if cds_PropsAgentNo.IsNull then
      if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
      Begin
      cds_LF.SQL.Add('(Select SUM(invd.ActualNetM3) from dbo.InvoiceDetail invd') ;
      cds_LF.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
      cds_LF.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND invd.TypeOfRow = 1) AS AM3,') ;
      End
      else
      cds_LF.SQL.Add('CAST(0.0 AS Float) AS AM3,') ;



      //  if not cds_PropsAgentNo.IsNull then
      if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
      Begin
      cds_LF.SQL.Add('IH.Total_Product_Value_No_Freight	AS Varuvärde,') ;
      cds_LF.SQL.Add('IH.Tot_Inv_Inc_Freight_Extras		AS Fakturavärde,') ;
      End
      else
      Begin
      //   cds_LF.SQL.Add('IH.Total_Product_Value_No_Freight	AS Varuvärde,') ;

      cds_LF.SQL.Add('(Select SUM(invd.ProductValueWOFreight) from dbo.InvoiceDetail invd') ;
      cds_LF.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
      //   cds_LF.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND invd.TypeOfRow <> 3) AS Varuvärde,') ;

      //   cds_LF.SQL.Add('IH.Tot_Inv_Inc_Freight_Extras		AS Fakturavärde,') ;

      cds_LF.SQL.Add('(Select SUM(invd.ProductValue) from dbo.InvoiceDetail invd') ;
      cds_LF.SQL.Add('WHERE invd.InternalInvoiceNo = ih.InternalInvoiceNo') ;
      //   cds_LF.SQL.Add('AND invd.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND invd.TypeOfRow <> 3) AS Fakturavärde,') ;

      End ;

      cds_LF.SQL.Add('IH.AgentCommission AS Kommission_Percent,') ;
      cds_LF.SQL.Add('IH.Commission AS Kommission_Sum,') ;
      cds_LF.SQL.Add('IH.FreightInCommission AS Kommission_villkor,') ;
      cds_LF.SQL.Add('IH.CurrencyName AS ValutaFaktura, IH.AgentName AS Agent, IH.AgentNo, IH.CustomerName AS Kund, 0 AS ConfirmKomm,') ;


      //  cds_LF.SQL.Add('AND AttestHead.Description = ' + QuotedStr('Komm') + ') AS Komm,') ;


      cds_LF.SQL.Add('(Select SUM(AttestHead.Amount) FROM') ;
      cds_LF.SQL.Add('dbo.Att_Ext_LO ALO') ;
      cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.SequensNo = ALO.SequensNo') ;
      cds_LF.SQL.Add('and ALO.InternalInvoiceNo = AttestHead.InternalInvoiceNo') ; //New
      cds_LF.SQL.Add('WHERE ALO.InternalInvoiceNo = IH.InternalInvoiceNo') ;
      //  cds_LF.SQL.Add('AND ALO.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND AttestHead.Description = ' + QuotedStr('Komm') + ') AS Komm,') ;

      cds_LF.SQL.Add('IH.CurrencyNo AS KommCurrencyNo, CuFrakt.CurrencyNo AS ValutaNr') ;

      cds_LF.SQL.Add('FROM dbo.Invoiceheader IH') ;
      cds_LF.SQL.Add('INNER JOIN dbo.InvoiceNos inos on inos.InternalInvoiceNo = IH.InternalInvoiceNo') ;
      cds_LF.SQL.Add('Inner Join dbo.InvoiceLO IL ON IL.InternalInvoiceNo = IH.InternalInvoiceNo') ;

      //  cds_LF.SQL.Add('Left Outer Join dbo.Att_Ext_LO ALO on ALO.InternalInvoiceNo = IH.InternalInvoiceNo') ;
      //  if not cds_PropsAgentNo.IsNull then
      //   cds_LF.SQL.Add('AND ALO.ShippingPlanNo = IL.ShippingPlanNo') ;

      cds_LF.SQL.Add('Inner join dbo.Client kund	on kund.clientno = IH.CustomerNo') ;
      //  cds_LF.SQL.Add('Left  outer join dbo.MarketRegion mr	on mr.MarketRegionNo = Kund.MarketRegionNo') ;

      cds_LF.SQL.Add('Left Outer Join dbo.Booking B') ;
      cds_LF.SQL.Add('Left Outer Join dbo.Currency CuFrakt on CuFrakt.CurrencyNo = B.FreightCostCurrency') ;
      cds_LF.SQL.Add('Left Outer Join dbo.PackUnit puFrakt on puFrakt.TemplateUnitNo = B.FreightCostVolUnit') ;
      cds_LF.SQL.Add('Left Outer join dbo.Client Shipper	on shipper.clientno = B.ShippingCompanyNo') ;
      cds_LF.SQL.Add('on B.ShippingPlanNo = IL.ShippingPlanNo') ;


      //  cds_LF.SQL.Add('where 1=1') ;
      //  if (LONo = -1) and (InvoiceNo = -1) and (cbDateFilter.Checked) then
      //   cds_LF.SQL.Add('IH.InvoiceDate BETWEEN ' + QuotedStr(DateToStr(cds_PropsStartPeriod.Date)) + ' AND ' + QuotedStr(DateToStr(deEnd.Date))) ;

      if (LONo = -11) and (InvoiceNo = -11) then
      cds_LF.SQL.Add('WHERE 1=2')
      else
      Begin
      if (LONo = -1) and (InvoiceNo = -1) then
      cds_LF.SQL.Add('WHERE IH.InvoiceDate >= ' + QuotedStr(DateTimeToStr(deStartPeriod.Date)) )
      else
      cds_LF.SQL.Add('WHERE 1=1')
      End ;


      if (LONo = -1) and (InvoiceNo = -1) and (cds_PropsAutoColWidth.AsInteger = c_Komm) then
      cds_LF.SQL.Add('AND IH.AgentNo = ' + cds_PropsAgentNo.AsString) ;

      //  if (LONo = -1) and (InvoiceNo = -1) and (cbDateFilter.Checked) then
      //   cds_LF.SQL.Add('AND IH.InvoiceDate BETWEEN ' + QuotedStr(DateToStr(deStart.Date)) + ' AND ' + QuotedStr(DateToStr(deEnd.Date))) ;



      if (LONo = -1) and (InvoiceNo = -1) and (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
      cds_LF.SQL.Add('AND B.ShippingCompanyNo = ' + cds_PropsAgentNo.AsString );

      if (LONo = -1) and (InvoiceNo = -1) and (cds_PropsAutoColWidth.AsInteger = c_Frakt) then
      Begin
      cds_LF.SQL.Add('AND IH.InternalInvoiceNo NOT IN (Select Attest.InternalInvoiceNo FROM dbo.Attestrow Attest') ;
      cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.SequensNo = Attest.SequensNo') ;
      cds_LF.SQL.Add('WHERE Attest.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND AttestHead.Description = ' + QuotedStr('Frakt') + ')') ;
      End
      else
      if (LONo = -1) and (InvoiceNo = -1) and (cds_PropsAutoColWidth.AsInteger = c_FraktOthers) then
      Begin
      cds_LF.SQL.Add('AND IH.InternalInvoiceNo NOT IN (Select Attest.InternalInvoiceNo FROM dbo.Attestrow Attest') ;
      //   cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.SequensNo = Attest.SequensNo') ;
      cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.InternalInvoiceNo = Attest.InternalInvoiceNo') ;
      cds_LF.SQL.Add('WHERE Attest.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('AND AttestHead.Description = ' + QuotedStr('Frakt övrigt') + ')') ;
      End
      else
      if (LONo = -1) and (InvoiceNo = -1) then
      Begin
      cds_LF.SQL.Add('AND IH.InternalInvoiceNo NOT IN (Select Attest.InternalInvoiceNo FROM dbo.Attestrow Attest') ;
      //   cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.SequensNo = Attest.SequensNo') ;
      //   cds_LF.SQL.Add('WHERE Attest.ShippingPlanNo = IL.ShippingPlanNo') ;
      cds_LF.SQL.Add('Inner Join dbo.Att_Ext_Services AttestHead on AttestHead.InternalInvoiceNo = Attest.InternalInvoiceNo') ;
      cds_LF.SQL.Add('WHERE AttestHead.Description = ' + QuotedStr('Komm') + ')') ;
      End ;

      if (LONo = -1) and (InvoiceNo = -1) and (not cds_PropsMarketRegionNo.IsNull) and (cds_PropsMarketRegionNo.AsInteger > 0) then
      cds_LF.SQL.Add('AND Kund.MarketRegionNo = ' + cds_PropsMarketRegionNo.AsString) ;

      if (InvoiceNo > -1) then
      cds_LF.SQL.Add('AND inos.InvoiceNo = ' + IntToStr(InvoiceNo)) ;

      if (LONo > -1) then
      cds_LF.SQL.Add('AND IL.ShippingPlanNo = ' + IntToStr(LONo)) ;





      {  cds_LF.SQL.Add('group by Shipper.clientname,') ;
      cds_LF.SQL.Add('FromPlace.CityName, ToPlace.CityName, B.FreightCost,') ;
      cds_LF.SQL.Add('B.FreightCostVolUnit, B.FreightCostCurrency, IH.CurrencyNo, IH.InvoiceDate, IH.InternalInvoiceNo,') ;
      cds_LF.SQL.Add('IH.InvoiceType, FromLIP.LogicalInventoryName, B.ShippingCompanyNo, Cu.CurrencyName, pu.TemplateUnitName,') ;
      cds_LF.SQL.Add('IH.Commission, IH.FreightInCommission, IH.CurrencyName, IH.AgentCommission, IH.AgentName, IH.CustomerName, inos.InvoiceNo') ;
      }
      if (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
      cds_LF.SQL.Add('Order By IL.ShippingPlanNo, IH.InternalInvoiceNo')
      else
      cds_LF.SQL.Add('Order By IH.InternalInvoiceNo') ;
      //  if ThisUser.UserID = 8 then cds_LF.SQL.SaveToFile('sqLoadExternaFC.TXT');
      End ;//if (not cds_PropsAutoColWidth.IsNull) and (not cds_PropsAgentNo.IsNull) then

    *)

  End; // With
End;

procedure TfrmFreightExternLoad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFreightExternLoad.FormDestroy(Sender: TObject);
begin
  frmFreightExternLoad := NIL;

  if dmsSystem.DeleteAssigned('TfrmFreightExternLoad', 'dmVidaInvoice') = True
  then
  Begin
    dmVidaInvoice.Free;
    dmVidaInvoice := Nil;
  End;
end;

procedure TfrmFreightExternLoad.nfSearchFakturaNrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  grdLoadsDBBandedTableView1.Controller.ClearSelection;
  with dmModule1 do
  Begin
    BuildExternaSQL(StrToIntDef(nfSearchFakturaNr.Text, -1), -1);

    if (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
      ds_LF.DataSet := sp_LF
    else
      ds_LF.DataSet := sp_AttestKommListSingle;

    ReLoadDataSets;
    SetSpeditorEllerAgentIDropListan;
    Timer1.Enabled := True;
  End;
end;

Procedure TfrmFreightExternLoad.SetSpeditorEllerAgentIDropListan;
Begin
  cds_PropsAgentNo.OnChange := nil;
  Try
    // if cds_PropsAgentNo.IsNull then
    if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
    Begin
      if cds_Props.State in [dsBrowse] then
        cds_Props.Edit;
      cds_PropsAgentNo.AsInteger := grdLoadsDBBandedTableView1.DataController.
        DataSet.FieldByName('ShippingCompanyNo').AsInteger;
      cds_Props.Post;
    End
    else if cds_PropsAutoColWidth.AsInteger = c_Komm then
    Begin
      if cds_Props.State in [dsBrowse] then
        cds_Props.Edit;
      cds_PropsAgentNo.AsInteger := grdLoadsDBBandedTableView1.DataController.
        DataSet.FieldByName('AgentNo').AsInteger;
      cds_Props.Post;
    End;
  Finally
    cds_PropsAgentNo.OnChange := cds_PropsAgentNoChange;
  End;
End;

procedure TfrmFreightExternLoad.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { if MessageDlg('Du har laster som är markerade! (ej sparade), Vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
    with dmModule1 do
    Begin
    cds_LF.Close ;
    End ;
    CanClose:= True ;

    End
    else
    CanClose:= False ; }
  if CanClose then
  Begin
    SaveUserProps;
  End;
end;

procedure TfrmFreightExternLoad.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

function ReplacePeriods(S: String): String;
begin
  { Convert commas to period }
  { while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
    Result:= S ; }

  { Convert period to commas }
  while Pos('.', S) > 0 do
    S[Pos('.', S)] := ',';
  Result := S;
end;

procedure TfrmFreightExternLoad.grdLoadsDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  // if Key = 32 then  SetMarkedRowsSelected ;
end;

procedure TfrmFreightExternLoad.SetMarkedRowsSelected;
Var
  OutputVal, ColIdx, i, RecIDX: Integer;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
  RecID: Variant;
  // NewPrice       : Double ;
begin
  // NewPrice:= 99 ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }

  with dmModule1 do
  Begin
    grdLoadsDBBandedTableView1.BeginUpdate;
    grdLoadsDBBandedTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLoadsDBBandedTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBBandedTableView1.Controller.
        SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBBandedTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        RecID := grdLoadsDBBandedTableView1.DataController.GetRecordId(RecIDX);
        ADATASET.Locate('InternalInvoiceNo;ShippingPlanNo', RecID, []);

        mt_SelectedRows.Insert;
        mt_SelectedRowsInvoiceNo.AsInteger :=
          ADATASET.FieldByName('InternalInvoiceNo').AsInteger;
        mt_SelectedRowsLONo.AsInteger := ADATASET.FieldByName('ShippingPlanNo')
          .AsInteger;
        mt_SelectedRows.Post;
      End;

    Finally
      grdLoadsDBBandedTableView1.DataController.EndLocate;
      grdLoadsDBBandedTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
end;

procedure TfrmFreightExternLoad.cbDateFilterPropertiesChange(Sender: TObject);
begin
  if cbDateFilter.Checked then
  Begin
    deStart.Enabled := True;
    deEnd.Enabled := True;
  End
  else
  Begin
    deStart.Enabled := False;
    deEnd.Enabled := False;
  End;
end;

procedure TfrmFreightExternLoad.FormShow(Sender: TObject);
begin
  deStart.Date := Date - 30;
  deEnd.Date := Date;
  // dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/' + grdLoadsDBBandedTableView1.Name, grdLoadsDBBandedTableView1) ;
end;

procedure TfrmFreightExternLoad.HideAndShowColumns;
Begin
  // if cds_PropsAgentNo.IsNull then
  if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
  Begin
    grdLoadsDBBandedTableView1.Bands.Items[1].Visible := False;
    grdLoadsDBBandedTableView1.Bands.Items[2].Visible := True;
    if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/Frakt',
      grdLoadsDBBandedTableView1) = False then;
    grdLoadsDBBandedTableView1ShippingPlanNo.Visible := True;
  End
  else
  Begin
    grdLoadsDBBandedTableView1.Bands.Items[1].Visible := True;
    grdLoadsDBBandedTableView1.Bands.Items[2].Visible := False;
    if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/Komm',
      grdLoadsDBBandedTableView1) = False then;
    grdLoadsDBBandedTableView1ShippingPlanNo.Visible := False;
  End;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name,
    grd_Att_Ext_ServicesIIDBTableView1) = False then;
End;

procedure TfrmFreightExternLoad.acRefreshGridExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  with dmModule1 do
  Begin
    grdLoadsDBBandedTableView1.DataController.DataSet.DisableControls;
    Try
      HideAndShowColumns;
      cds_Att_Ext_ServicesII.Active := False;
      cds_Att_Ext_ServicesII.Active := True;
      // grdLoadsDBBandedTableView1.DataController.DataSet.Active := False ;
      // grdLoadsDBBandedTableView1.DataController.KeyFieldNames  := 'Fakturanr' ;
      BuildExternaSQL(-1, -1);
      // cds_LF.ParamByName('SalesRegionNo').AsInteger     := integer(bcVerk.Properties.Items.Objects[bcVerk.ItemIndex]) ;
      // cds_LF.ParamByName('ShippingCompanyNo').AsInteger := integer(peShippers.Properties.Items.Objects[peShippers.ItemIndex]) ;
      // grdLoadsDBBandedTableView1.DataController.DataSet.Active := True ;

    Finally
      grdLoadsDBBandedTableView1.DataController.DataSet.EnableControls;
      Screen.Cursor := Save_Cursor;
    End;

    if (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
      ds_LF.DataSet := sp_AttestFreightList
    else
      ds_LF.DataSet := sp_AttestKommList;

    {
      if grdLoadsDBBandedTableView1.DataController.DataSet.RecordCount > 0 then
      Begin
      grdLoadsDBBandedTableView1.DataController.DataSet.Edit ;
      grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName('Frakt').AsFloat  := 1 ;
      grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName('Frakt').AsFloat  := 0 ;
      //     cds_LFFrakt.AsFloat  := 0 ;
      grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName('ConfirmFrakt').AsFloat  := 1 ;

      grdLoadsDBBandedTableView1.DataController.DataSet.Post ;
      End ;
    }
  End; // with
end;

procedure TfrmFreightExternLoad.ReLoadDataSets;
Var
  Save_Cursor: TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  with dmModule1 do
  Begin
    grdLoadsDBBandedTableView1.DataController.DataSet.DisableControls;
    Try
      HideAndShowColumns;
      cds_Att_Ext_ServicesII.Active := False;
      cds_Att_Ext_ServicesII.Active := True;
      // grdLoadsDBBandedTableView1.DataController.DataSet.Active := False ;
      // grdLoadsDBBandedTableView1.DataController.DataSet.Active := True ;
    Finally
      grdLoadsDBBandedTableView1.DataController.DataSet.EnableControls;
      Screen.Cursor := Save_Cursor;
    End;
  End; // with
end;

procedure TfrmFreightExternLoad.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFreightExternLoad.LoadUserProps;
Begin
  cds_Props.Active := False;
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := frmFreightExternLoad.Caption;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    if cds_PropsBookingTypeNo.AsInteger < 1 then;
    if (cds_PropsStartPeriod.IsNull) then
    // or (cds_PropsAutoColWidth.IsNull) then
    Begin
      cds_Props.Edit;
      if cds_PropsStartPeriod.IsNull then
        cds_PropsStartPeriod.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now - 30);

      // if cds_PropsAutoColWidth.IsNull then
      // cds_PropsAutoColWidth.AsInteger := 3 ;
      cds_Props.Post;
    End;
  End
  else
  Begin
    cds_Props.Insert;
    cds_PropsStartPeriod.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now - 30);
    // StrToSQLTimeStamp('2010-04-01') ;
    // cds_PropsAutoColWidth.AsInteger     := 3 ;
    cds_Props.Post;
  End;
End;

procedure TfrmFreightExternLoad.SaveUserProps;
Begin
  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;
  cds_Props.Active := False;
End;

procedure TfrmFreightExternLoad.SaveFakturaNr(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  with dmModule1 do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    Try
      dmsConnector.StartTransaction;
      try
        mtShippers.First;
        While not mtShippers.Eof do
        Begin

          if mtShippersAvrakningsNr.AsInteger <> -1 then
          Begin

          End
          else
            ShowMessage('Fel på avräkningsnr');
          mtShippers.Next;
        End; // While not mtShippers.

        dmsConnector.Commit;

      except
        dmsConnector.Rollback;
      end;

    Finally
      Screen.Cursor := Save_Cursor;
    End;

  End; // with
end;

procedure TfrmFreightExternLoad.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Self.Caption;
end;

procedure TfrmFreightExternLoad.cds_PropsAgentNoChange(Sender: TField);
begin
  HideAndShowColumns;
  acRefreshGridExecute(Sender);
end;

procedure TfrmFreightExternLoad.acSaveGridLayoutExecute(Sender: TObject);
begin
  // if cds_PropsAgentNo.IsNull then
  if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
  Begin
    grdLoadsDBBandedTableView1.Bands.Items[1].Visible := False;
    grdLoadsDBBandedTableView1.Bands.Items[2].Visible := True;
    dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/Frakt',
      grdLoadsDBBandedTableView1);
  End
  else
  Begin
    grdLoadsDBBandedTableView1.Bands.Items[1].Visible := True;
    grdLoadsDBBandedTableView1.Bands.Items[2].Visible := False;
    dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name + '/Komm',
      grdLoadsDBBandedTableView1);
  End;

  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name,
    grd_Att_Ext_ServicesIIDBTableView1);
end;

procedure TfrmFreightExternLoad.acAttestSelectedRowsExecute(Sender: TObject);
begin
  // icAttesteraMot.Text .Properties.Items.Items.DisplayName
  AttestFrakt(Sender, icAttesteraMot.Text);
  // if cds_PropsAgentNo.IsNull then
  { if cds_PropsAutoColWidth.AsInteger = c_Frakt then
    AttestFrakt(Sender, 'Frakt')
    else
    if cds_PropsAutoColWidth.AsInteger = c_Komm then
    AttestFrakt(Sender, 'Komm') ; }
end;

Function TfrmFreightExternLoad.CheckThatAllRowsAreSameInvoiceNo: Boolean;
Var
  InternalInvoiceNo: Integer;
Begin
  With dmModule1 do
  Begin
    Result := True;
    FDmSelectedRows.First;
    InternalInvoiceNo := FDmSelectedRowsInternalInvoiceNo.AsInteger;
    While not FDmSelectedRows.Eof do
    Begin
      FDmSelectedRows.Next;
      if InternalInvoiceNo <> FDmSelectedRowsInternalInvoiceNo.AsInteger then
      Begin
        Result := False;
        ShowMessage
          ('Flera fakturanr är valda, endast en faktura kan attesteras åt gången.');
      End;
    End;
  End; // With
End;

procedure TfrmFreightExternLoad.AttestFrakt(Sender: TObject;
  const Beskrivning: String);
var
  fAttest_SetHdrInfo: TfAttest_SetHdrInfo;
begin
  dmModule1.FDmSelectedRows.Active := True;
  Try
    if grdLoadsDBBandedTableView1.DataController.DataSet.State in [dsEdit] then
      grdLoadsDBBandedTableView1.DataController.DataSet.Post;

    GetSelectedInvoiceAndLORows;

    // if CheckThatAllRowsAreSameInvoiceNo then
    if dmModule1.FDmSelectedRows.RecordCount > 0 then
    Begin
      fAttest_SetHdrInfo := TfAttest_SetHdrInfo.Create(nil);
      Try
        fAttest_SetHdrInfo.MemSped.Active := True;
        fAttest_SetHdrInfo.MemSped.Insert;
        fAttest_SetHdrInfo.MemSpedShipperNO.AsInteger :=
          dmModule1.FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger;
        fAttest_SetHdrInfo.MemSped.Post;
        fAttest_SetHdrInfo.labelAmount.Caption :=
          dmModule1.FDmSelectedRowsTotalAmount.AsString;
        if fAttest_SetHdrInfo.ShowModal = mrOK then
        Begin
          if dmModule1.FDmSelectedRows.State in [dsBrowse] then
            dmModule1.FDmSelectedRows.Edit;
          dmModule1.FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger :=
            fAttest_SetHdrInfo.MemSpedShipperNO.AsInteger;
          dmModule1.FDmSelectedRows.Post;
          SetMemTableValues(fAttest_SetHdrInfo.teSupplier_InvoiceNo.Text,
            fAttest_SetHdrInfo.meSupplier_InvoiceDate.Text,
            fAttest_SetHdrInfo.memoNote.Text);

          // Create attest records for selected rows
          Try
            dmModule1.InsertAttestHeader(Beskrivning);
            acRefreshGridExecute(Sender);
            ShowMessage('Attest registrerad.');
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
            End;
          end;
        End;
      Finally
        fAttest_SetHdrInfo.MemSped.Active := False;
        FreeAndNil(fAttest_SetHdrInfo);
      End;
    End
    else
      ShowMessage('Inga markerade rader..');
  Finally
    dmModule1.FDmSelectedRows.Active := False;
  End;
end;

procedure TfrmFreightExternLoad.GetSelectedInvoiceAndLORows;
Var
  OutputVal, ColIdx, i, RecIDX, IntInvNo, LONo: Integer;
  // ADATASET      : TDATASET;
  Save_Cursor: TCursor;
  TotalAmount: Double;

  Function GetTotalAmount: Double;
  Begin
    with dmModule1 do
    Begin
      Result := 0;
      grdLoadsDBBandedTableView1.DataController.DataSet.First;
      // cds_LF.First ;
      While not grdLoadsDBBandedTableView1.DataController.DataSet.Eof do
      Begin
        // if cds_PropsAgentNo.IsNull then
        if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
          Result := Result + grdLoadsDBBandedTableView1.DataController.DataSet.
            FieldByName('Frakt').AsFloat
        else
          Result := Result + grdLoadsDBBandedTableView1.DataController.DataSet.
            FieldByName('Komm').AsFloat;
        grdLoadsDBBandedTableView1.DataController.DataSet.Next;
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
      Try
        // if cds_PropsAgentNo.IsNull then
        if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
          grdLoadsDBBandedTableView1.DataController.DataSet.Filter :=
            'ConfirmFrakt = 1'
          // cds_LF.Filter   := 'ConfirmFrakt = 1'
        else
          grdLoadsDBBandedTableView1.DataController.DataSet.Filter :=
            'ConfirmKomm = 1';
        // cds_LF.Filter   := 'ConfirmKomm = 1' ;
        grdLoadsDBBandedTableView1.DataController.DataSet.Filtered := True;
        TotalAmount := GetTotalAmount;
        grdLoadsDBBandedTableView1.DataController.DataSet.First;
        While not grdLoadsDBBandedTableView1.DataController.DataSet.Eof do
        Begin
          FDmSelectedRows.Insert;
          FDmSelectedRowsInternalInvoiceNo.AsInteger :=
            grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
            ('InternalInvoiceNo').AsInteger;
          FDmSelectedRowsLONo.AsInteger :=
            grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
            ('ShippingPlanNo').AsInteger;
          // if cds_PropsAgentNo.IsNull then
          if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
            FDmSelectedRowsAmount.AsFloat :=
              grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
              ('Frakt').AsFloat
          else
            FDmSelectedRowsAmount.AsFloat :=
              grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
              ('Komm').AsFloat;

          // if cds_PropsAgentNo.IsNull then
          if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
          Begin
            FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger :=
              cds_PropsAgentNo.AsInteger;
            FDmSelectedRowsCURRENCYNO.AsInteger :=
              grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
              ('ValutaNr').AsInteger;
          End
          else
          Begin
            FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger :=
              cds_PropsAgentNo.AsInteger;
            FDmSelectedRowsCURRENCYNO.AsInteger :=
              grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
              ('ValutaNr').AsInteger;
          End;

          FDmSelectedRowsTotalAmount.AsFloat := TotalAmount;
          FDmSelectedRows.Post;
          grdLoadsDBBandedTableView1.DataController.DataSet.Next;
        End; // cds_LF
      Finally
        grdLoadsDBBandedTableView1.DataController.DataSet.Filtered := False;
      End;
    End;

    (*
      with dmModule1  do
      Begin

      grdLoadsDBBandedTableView1.BeginUpdate ;
      grdLoadsDBBandedTableView1.DataController.BeginLocate ;
      Try
      //   ADataSet := grdLoadsDBBandedTableView1.DataController.DataSource.DataSet ;
      For I := 0 to grdLoadsDBBandedTableView1.Controller.SelectedRecordCount - 1 do
      Begin
      RecIDx    := grdLoadsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
      ColIdx    := grdLoadsDBBandedTableView1.DataController.GetItemByFieldName('ShippingPlanNo').Index;
      LONo      := grdLoadsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

      RecIDx    := grdLoadsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
      ColIdx    := grdLoadsDBBandedTableView1.DataController.GetItemByFieldName('InternalInvoiceNo').Index;
      IntInvNo  := grdLoadsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

      FDmSelectedRows.Insert ;
      FDmSelectedRowsInternalInvoiceNo.AsInteger      := IntInvNo ;
      FDmSelectedRowsLONo.AsInteger                   := LONo ;
      FDmSelectedRows.Post ;

      End ;

    *)

  Finally
    // grdLoadsDBBandedTableView1.DataController.EndLocate ;
    // grdLoadsDBBandedTableView1.EndUpdate ;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;

  // End ;//with
end;

procedure TfrmFreightExternLoad.acAttestSelectedRowsUpdate(Sender: TObject);
begin
  acAttestSelectedRows.Enabled := grdLoadsDBBandedTableView1.Controller.
    SelectedRecordCount > 0;
end;

procedure TfrmFreightExternLoad.SetMemTableValues(const Supplier_InvoiceNo,
  Supplier_InvoiceDate, Note: String);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    with dmModule1 do
    Begin
      FDmSelectedRows.First;
      While not FDmSelectedRows.Eof do
      Begin
        FDmSelectedRows.Edit;
        FDmSelectedRowsSupplier_InvoiceNo.AsString := Supplier_InvoiceNo;
        FDmSelectedRowsSupplier_InvoiceDate.AsDateTime :=
          StrToDateTime(Supplier_InvoiceDate);
        FDmSelectedRowsNote.AsString := Note;
        FDmSelectedRows.Post;
        FDmSelectedRows.Next;
      End; // While..
    End; // with

  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TfrmFreightExternLoad.grdLoadsDBBandedTableView1KeyDown
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then
  Begin
    mt_SelectedRows.Active := True;
    SetMarkedRowsSelected;
    SetSelectedAsConfirmed;
    mt_SelectedRows.Active := False;
  End;
  // GetSelectedInvoiceAndLORows ;
  { Begin
    with dmModule1  do
    Begin
    if cds_PropsAgentNo.IsNull then
    Begin
    if cds_LF.State in [dsBrowse] then
    cds_LF.Edit ;
    if cds_LFConfirmFrakt.AsInteger = 0 then
    cds_LFConfirmFrakt.AsInteger := 1
    else
    cds_LFConfirmFrakt.AsInteger := 0 ;
    if cds_LF.State in [dsEdit, dsInsert] then
    cds_LF.Post ;
    End
    else
    Begin
    if cds_LF.State in [dsBrowse] then
    cds_LF.Edit ;
    if cds_LFConfirmKomm.AsInteger = 0 then
    cds_LFConfirmKomm.AsInteger := 1
    else
    cds_LFConfirmKomm.AsInteger := 0 ;
    if cds_LF.State in [dsEdit, dsInsert] then
    cds_LF.Post ;
    End ;
    End ;//with dmModule1  do
    End ;
  }
end;

procedure TfrmFreightExternLoad.SetSelectedAsConfirmed;
begin
  // GetSelectedInvoiceAndLORows ;
  Begin
    with dmModule1 do
    Begin
      grdLoadsDBBandedTableView1.DataController.DataSet.DisableControls;
      Try
        mt_SelectedRows.First;
        While not mt_SelectedRows.Eof do
        Begin
          // if cds_PropsAgentNo.IsNull then
          if cds_PropsAutoColWidth.AsInteger >= c_Frakt then
          Begin
            if grdLoadsDBBandedTableView1.DataController.DataSet.Locate
              ('InternalInvoiceNo;ShippingPlanNo',
              VarArrayOf([mt_SelectedRowsInvoiceNo.AsInteger,
              mt_SelectedRowsLONo.AsInteger]), []) then
            // Locate('InternalInvoiceNo;ShippingPlanNo', VarArrayOf([mt_SelectedRowsInvoiceNo.AsInteger,
            // mt_SelectedRowsLONo.AsInteger]), []) then
            Begin
              if grdLoadsDBBandedTableView1.DataController.DataSet.State
                in [dsBrowse] then
                grdLoadsDBBandedTableView1.DataController.DataSet.Edit;
              if grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
                ('ConfirmFrakt').AsInteger = 0 then
                grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
                  ('ConfirmFrakt').AsInteger := 1
              else
                grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
                  ('ConfirmFrakt').AsInteger := 0;
              if grdLoadsDBBandedTableView1.DataController.DataSet.State
                in [dsEdit, dsInsert] then
                grdLoadsDBBandedTableView1.DataController.DataSet.Post;
            End;
          End
          else
          Begin
            if grdLoadsDBBandedTableView1.DataController.DataSet.Locate
              ('InternalInvoiceNo;ShippingPlanNo',
              VarArrayOf([mt_SelectedRowsInvoiceNo.AsInteger,
              mt_SelectedRowsLONo.AsInteger]), []) then
            // if cds_LF.Locate('InternalInvoiceNo;ShippingPlanNo', VarArrayOf([mt_SelectedRowsInvoiceNo.AsInteger,
            // mt_SelectedRowsLONo.AsInteger]), []) then
            Begin
              if grdLoadsDBBandedTableView1.DataController.DataSet.State
                in [dsBrowse] then
                grdLoadsDBBandedTableView1.DataController.DataSet.Edit;
              if grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
                ('ConfirmKomm').AsInteger = 0 then
                grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
                  ('ConfirmKomm').AsInteger := 1
              else
                grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
                  ('ConfirmKomm').AsInteger := 0;
              if grdLoadsDBBandedTableView1.DataController.DataSet.State
                in [dsEdit, dsInsert] then
                grdLoadsDBBandedTableView1.DataController.DataSet.Post;
            End;
          End;
          mt_SelectedRows.Next;
        End; // While not..
      Finally
        grdLoadsDBBandedTableView1.DataController.DataSet.EnableControls;
      End;
    End; // with dmModule1  do
  End;
end;

procedure TfrmFreightExternLoad.Timer1Timer(Sender: TObject);
begin
  nfSearchFakturaNr.SetFocus;
  nfSearchFakturaNr.SelectAll;
  Timer1.Enabled := False;
end;

procedure TfrmFreightExternLoad.nSearchLONrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  grdLoadsDBBandedTableView1.Controller.ClearSelection;
  with dmModule1 do
  Begin
    BuildExternaSQL(-1, StrToIntDef(nSearchLONr.Text, -1));

    if (cds_PropsAutoColWidth.AsInteger >= c_Frakt) then
      ds_LF.DataSet := sp_LF
    else
      ds_LF.DataSet := sp_AttestKommListSingle;

    ReLoadDataSets;
    SetSpeditorEllerAgentIDropListan;
    Timer2.Enabled := True;
  End;
end;

procedure TfrmFreightExternLoad.Timer2Timer(Sender: TObject);
begin
  nSearchLONr.SetFocus;
  nSearchLONr.SelectAll;
  Timer2.Enabled := False;
end;

procedure TfrmFreightExternLoad.acDeleteAttestExecute(Sender: TObject);
begin
  with dmModule1 do
  Begin
    if MessageDlg('Vill du ta bort attestnr ' +
      cds_Att_Ext_ServicesIISequensNo.AsString + '?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    Begin
      DeleteAttest(cds_Att_Ext_ServicesIISequensNo.AsInteger);
      ReLoadDataSets;
    End; // If
  End; // With..
end;

procedure TfrmFreightExternLoad.acDeleteAttestUpdate(Sender: TObject);
begin
  with dmModule1 do
  Begin
    acDeleteAttest.Enabled := (cds_Att_Ext_ServicesII.Active) and
      (cds_Att_Ext_ServicesII.RecordCount > 0);
  End; // With..
end;

procedure TfrmFreightExternLoad.acOpenInvoiceExecute(Sender: TObject);
begin
  with dmModule1 do
  Begin
    OpenInvoice(grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
      ('InternalInvoiceNo').AsInteger, -1, -1);
  End;
end;

procedure TfrmFreightExternLoad.OpenInvoice(const IntInvNo,
  IntInvNoToAttestAgainst, DelKredit: Integer);
Var
  frmInvoice: TfrmInvoice;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    with dmVidaInvoice do
    Begin
      frmInvoice := TfrmInvoice.Create(NIL);
      Try
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cdsInvoiceShipTo.Active := True;
        frmInvoice.TabControl1.Tabs.Clear;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cdsInvoiceHead.Active := False;
        cdsInvoiceHead.ParamByName('InternalInvoiceNo').AsInteger := IntInvNo;
        // cdsInvoiceHead.Open ;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cdsInvoiceHead.Active := True;

        if (IntInvNoToAttestAgainst > 0) and (DelKredit > 0) then
        Begin
          cdsInvoiceHead.Edit;
          cdsInvoiceHeadIntInvNoToAttestAgainst.AsInteger :=
            IntInvNoToAttestAgainst;
          cdsInvoiceHeadDelKredit.AsInteger := DelKredit;
          cdsInvoiceHead.Post;
        End;

        cdsInvoiceLO.Active := False;
        // sq_InvoiceLO.Close ;
        cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger := IntInvNo;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        // cdsInvoiceLO.Active:= False ;
        // cdsInvoiceLO.Filter:= 'InternalInvoiceNo = '+cdsInvoiceHeadInternalInvoiceNo.AsString ;
        // cdsInvoiceLO.Filtered:= True ;

        cdsInvoiceLO.Active := True;

        cds_PIP.Active := False;
        cds_PIP.ParamByName('OwnerNo').AsInteger :=
          cdsInvoiceHeadSupplierNo.AsInteger;
        cds_PIP.Active := True;

        cds_IH_SpecLoad.Active := False;
        cds_IH_SpecLoad.ParamByName('InternalInvoiceNo').AsInteger := IntInvNo;
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
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        if frmInvoice.TabControl1.Tabs.Count > 0 then
        Begin
          cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
            cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = '
            + frmInvoice.TabControl1.Tabs[0];
          cdsInvoiceLO.Filtered := True;
          cdsInvoiceDetail.Close;
          cdsInvoiceDetail.ParamByName('InternalInvoiceNo').AsInteger
            := IntInvNo;
          cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
            cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = '
            + frmInvoice.TabControl1.Tabs[0];
          cdsInvoiceDetail.Filtered := True;
          cdsInvoiceDetail.Active := True;
          Screen.Cursor := crSQLWait; { Show hourglass cursor }

          frmInvoice.ShowModal;

          if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
            dmVidaInvoice.cds_IH_SpecLoad.Post;
          if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
          Begin
            dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0);
            dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates;
          End;
        End
        else
        Begin
          Exit;
        End;

      Finally
        fInternalInvoiceNo := -1;
        cdsInvoiceDetail.Close;
        cdsInvoiceLO.Filtered := False;
        cdsInvoiceLO.Active := False;
        cdsInvoiceDetail.Filtered := False;
        cdsInvoiceDetail.Filter := '';
        cdsInvoiceDetail.Active := False;
        cdsInvoiceShipTo.Active := False;
        FreeAndNil(frmInvoice);
      End;
    End; // with
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
End;

procedure TfrmFreightExternLoad.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmVidaInvoice)) then
    dmVidaInvoice := TdmVidaInvoice.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmFreightExternLoad', 'dmVidaInvoice');
end;

procedure TfrmFreightExternLoad.acOpenInvoiceUpdate(Sender: TObject);
begin
  With dmModule1 do
  Begin
    acOpenInvoice.Enabled :=
      (grdLoadsDBBandedTableView1.DataController.DataSet.Active) and
      (grdLoadsDBBandedTableView1.DataController.DataSet.RecordCount > 0);
  End;
end;

(*
  procedure TfrmFreightExternLoad.GetSelectedInvoiceAndLORows ;
  Var  OutputVal,
  ColIdx,
  i,
  RecIDX,
  IntInvNo,
  LONo          : Integer ;
  //      ADATASET      : TDATASET;
  Save_Cursor   : TCursor;
  TotalAmount   : Double ;

  Function GetTotalAmount : Double ;
  Begin
  with dmModule1  do
  Begin
  Result  := 0 ;
  cds_LF.First ;
  While not cds_LF.Eof do
  Begin
  if cds_PropsAgentNo.IsNull then
  Result := Result + cds_LFFrakt.AsFloat
  else
  Result := Result + cds_LFKomm.AsFloat ;
  cds_LF.Next ;
  End ;//cds_LF
  End ;//With
  End ;

  //GetSelectedInvoiceAndLORows ;
  begin
  Save_Cursor    := Screen.Cursor;
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
  Try
  with dmModule1  do
  Begin
  Try
  //  TotalAmount := GetTotalAmount ;
  cds_LF.First ;
  While not cds_LF.Eof do
  Begin
  if cds_PropsAgentNo.IsNull then
  cds_LFConfirmFrakt.AsInteger := 1
  else
  cds_LFConfirmKomm.AsInteger  := 1 ;


  FDmSelectedRows.Insert ;
  FDmSelectedRowsInternalInvoiceNo.AsInteger       := cds_LFInternalInvoiceNo.AsInteger ;
  FDmSelectedRowsLONo.AsInteger                    := cds_LFShippingPlanNo.AsInteger ;
  if cds_PropsAgentNo.IsNull then
  FDmSelectedRowsAmount.AsFloat                    := cds_LFFrakt.AsFloat
  else
  FDmSelectedRowsAmount.AsFloat                    := cds_LFKomm.AsFloat ;

  if cds_PropsAgentNo.IsNull then
  Begin
  FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger       := cds_PropsShipperNo.AsInteger ;
  FDmSelectedRowsCURRENCYNO.AsInteger              := cds_LFFraktCurrencyNo.AsInteger ;
  End
  else
  Begin
  FDmSelectedRowsSHIPPINGCOMPANYNO.AsInteger       := cds_PropsAgentNo.AsInteger ;
  FDmSelectedRowsCURRENCYNO.AsInteger              := cds_LFKommCurrencyNo.AsInteger ;
  End ;


  FDmSelectedRowsTotalAmount.AsFloat               := TotalAmount ;
  FDmSelectedRows.Post ;
  cds_LF.Next ;
  End ;//cds_LF
  Finally
  cds_LF.Filtered := False ;
  End ;
  End ;
  Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  end;
*)
procedure TfrmFreightExternLoad.acOpenAttestFrmExecute(Sender: TObject);
Var
  x: Integer;
  Save_Cursor: TCursor;
  frmAttestInvoice: TfrmAttestInvoice;
begin
  with dmVidaInvoice do
  Begin
    mt_AttestRow.Active := False;
    mt_AttestRow.Active := True;
    mt_InvDtl_Att.Active := False;
    mt_InvDtl_Att.Active := True;

    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    // ta bort next och prior, ladda inte allt, går det att undvika
    frmAttestInvoice := TfrmAttestInvoice.Create(Nil);
    // cdsInvoiceShipToAddress.DataSource:= dsrcInvoiceHead_II ;
    Try
      if grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
        ('InvoiceType').AsInteger = 3 then
        frmAttestInvoice.LCustomer.Caption := 'Leverantör:'
      else
        frmAttestInvoice.LCustomer.Caption := 'Kund:';

      frmAttestInvoice.cbInvoiceType.ItemIndex :=
        grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
        ('InvoiceType').AsInteger;
      // frmAttestInvoice.cbInvoiceType.ReadOnly   := True ;
      mt_AttestRow.Active := True;
      mt_InvDtl_Att.Active := True;
      cdsInvoiceShipTo.Active := True;
      frmAttestInvoice.TabControl1.Tabs.Clear;

      cdsInvoiceHead_II.Active := False;
      OpenInvoiceHeaderForAttest
        (grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
        ('InternalInvoiceNo').AsInteger,
        grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
        ('InvoiceType').AsInteger);
      cdsInvoiceHead_II.Active := True;

      if cdsInvoiceHead_II.RecordCount > 0 then
      Begin
        cdsInvoiceLO.Close;
        cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;

        cdsInvoiceLO.Active := True;

        cdsInvoiceLO.First;
        While not cdsInvoiceLO.Eof do
        Begin
          frmAttestInvoice.TabControl1.Tabs.Add
            (cdsInvoiceLOShippingPlanNo.AsString);
          cdsInvoiceLO.Next;
        End;

        cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHead_IIInternalInvoiceNo.AsString + ' AND ShippingPlanNo = '
          + frmAttestInvoice.TabControl1.Tabs[0];
        cdsInvoiceLO.Filtered := True;

        dmVidaInvoice.cds_Att_Ext_ServicesII.Active := False;
        dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo')
          .AsInteger :=
          dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
        dmVidaInvoice.cds_Att_Ext_ServicesII.Active := True;

        dmVidaInvoice.cds_InvDtl_Att.Close;
        dmVidaInvoice.cds_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger
          := cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
        cds_InvDtl_Att.Active := True;
        While not cds_InvDtl_Att.Eof do
        Begin
          mt_InvDtl_Att.Insert;
          For x := 0 to 15 do
            mt_InvDtl_Att.Fields.Fields[x].AsVariant :=
              cds_InvDtl_Att.Fields.Fields[x].AsVariant;
          mt_InvDtl_AttSequensNo.AsInteger := 0;
          mt_InvDtl_AttChecked.AsInteger := 0;
          mt_InvDtl_Att.Post;
          cds_InvDtl_Att.Next;
        End;

        sq_GetAttestRow.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
        sq_GetAttestRow.Open;
        While not sq_GetAttestRow.Eof do
        Begin
          mt_AttestRow.Insert;
          For x := 0 to 3 do
            mt_AttestRow.Fields.Fields[x].AsVariant :=
              sq_GetAttestRow.Fields.Fields[x].AsVariant;
          mt_AttestRow.Post;
          sq_GetAttestRow.Next;
        End;

        sq_GetAttestRow.Close;

        frmAttestInvoice.ShowModal;

      End
      else
        ShowMessage('Kan inte fokusera internal fakturanr ' +
          grdLoadsDBBandedTableView1.DataController.DataSet.FieldByName
          ('InternalInvoiceNo').AsString);

    Finally
      fInternalInvoiceNo := -1;
      // cdsInvoiceShipToAddress.DataSource  := dsrcInvoiceHead ;

      cdsInvoiceLO.Filtered := False;
      cdsInvoiceLO.Active := False;
      cds_InvDtl_Att.Active := False;
      cdsInvoiceShipTo.Active := False;
      mt_InvDtl_Att.Active := False;
      mt_AttestRow.Active := False;
      FreeAndNil(frmAttestInvoice);
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with dmVidaInvoice do
end;

procedure TfrmFreightExternLoad.cds_PropsAutoColWidthChange(Sender: TField);
Var
  PropsAutoColWidth: Integer;
begin
  cds_PropsAutoColWidth.OnChange := nil;
  Try

    PropsAutoColWidth := cds_PropsAutoColWidth.AsInteger;
    cds_Props.Active := False;
    if PropsAutoColWidth >= c_Frakt then
    Begin
      dmsContact.Refresh_sp_AttLev(8);
      LabelClient.Caption := 'Speditör:';
      { cds_PropsAgent.LookupDataSet   := nil ;
        cds_PropsAgent.LookupDataSet   := dmsContact.cds_ActShippers ;

        dmsContact.cds_ActShippers.Active  := True ;
        dmsContact.sp_actAgents.Active  := False ; }
    End
    else if PropsAutoColWidth = c_Komm then
    Begin
      dmsContact.Refresh_sp_AttLev(3);

      { cds_PropsAgent.LookupDataSet   := nil ;
        cds_PropsAgent.LookupDataSet   := dmsContact.sp_actAgents ;
        LabelClient.Caption            := 'Agent:' ;
        dmsContact.cds_ActShippers.Active  := False ;
        dmsContact.sp_actAgents.Active  := True ; }
    End;

    cds_Props.Active := True;

    LoadUserProps;
    cds_Props.Edit;
    cds_PropsAutoColWidth.AsInteger := PropsAutoColWidth;
    cds_Props.Post;

    // EmptyGrid ;
    // acRefreshGridExecute(Sender) ;
  Finally
    cds_PropsAutoColWidth.OnChange := cds_PropsAutoColWidthChange;
  End;
end;

procedure TfrmFreightExternLoad.EmptyGrid;
Var
  Save_Cursor: TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  with dmModule1 do
  Begin
    grdLoadsDBBandedTableView1.DataController.DataSet.DisableControls;
    Try
      HideAndShowColumns;
      cds_Att_Ext_ServicesII.Active := False;
      cds_Att_Ext_ServicesII.Active := True;
      grdLoadsDBBandedTableView1.DataController.DataSet.Active := False;
      // grdLoadsDBBandedTableView1.DataController.KeyFieldNames  := 'Fakturanr' ;
      BuildExternaSQL(-11, -11);
      grdLoadsDBBandedTableView1.DataController.DataSet.Active := True;
    Finally
      grdLoadsDBBandedTableView1.DataController.DataSet.EnableControls;
      Screen.Cursor := Save_Cursor;
    End;
  End; // with
end;

procedure TfrmFreightExternLoad.acGotoInvoiceNoSerachFieldExecute
  (Sender: TObject);
begin
  nfSearchFakturaNr.SetFocus;
end;

procedure TfrmFreightExternLoad.acGotoLOSearchFieldExecute(Sender: TObject);
begin
  nSearchLONr.SetFocus;
end;

procedure TfrmFreightExternLoad.acSaveChangesExecute(Sender: TObject);
begin
  with dmModule1 do
  Begin
    if cds_Att_Ext_ServicesII.State in [dsEdit] then
      cds_Att_Ext_ServicesII.Post;
    if cds_Att_Ext_ServicesII.ChangeCount > 0 then
    Begin
      cds_Att_Ext_ServicesII.ApplyUpdates(0);
      cds_Att_Ext_ServicesII.CommitUpdates;
    End;
  End; // with
end;

procedure TfrmFreightExternLoad.acSaveChangesUpdate(Sender: TObject);
begin
  with dmModule1 do
  Begin
    acSaveChanges.Enabled := (cds_Att_Ext_ServicesII.Active) and
      ((cds_Att_Ext_ServicesII.State in [dsEdit]) or
      (cds_Att_Ext_ServicesII.ChangeCount > 0));
  End; // with
end;

end.
