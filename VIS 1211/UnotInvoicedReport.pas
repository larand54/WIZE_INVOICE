unit UnotInvoicedReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls,
  ImgList, OleServer, Menus, Buttons, OleCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, DateUtils, ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGraphics,
  cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, SqlTimSt, cxClasses,
  cxImageComboBox,
  cxLookAndFeels, cxLookAndFeelPainters, cxLabel, CRAXDRT_TLB, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinsdxBarPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions, siComp,
//  siLngLnk, CrystalActiveXReportViewerLib11_5_TLB,
   siLngLnk, CrystalActiveXReportViewerLib11_TLB;

type
  TfnotInvoicedReport = class(TForm)
    ImageList1: TImageList;
    Application1: TApplication;
    CRViewer91: TCrystalActiveXReportViewer;
    ActionList1: TActionList;
    acRefresh: TAction;
    acClose: TAction;
    PopupMenu1: TPopupMenu;
    StngF121: TMenuItem;
    UppdateraF61: TMenuItem;
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
    cds_PropsVerk: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Panel122: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    deStartPeriod: TcxDBDateEdit;
    lcMarknad: TcxDBLookupComboBox;
    icOrderTypeNo: TcxDBImageComboBox;
    Label3: TLabel;
    cxLabel1: TcxLabel;
    siLangLinked_fnotInvoicedReport: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);

  private
    { Private declarations }
    report: IReport;
    procedure SaveUserProps(const Form: String);
    procedure LoadUserProps(const Form: String);
    function InitiateReport(const ReportName: String): Boolean;

  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject; CompanyNo: Integer);
  end;

var
  fnotInvoicedReport: TfnotInvoicedReport;

implementation

uses dmsDataConn, VidaUser, dmsVidaContact, VidaConst, dmcVidaSystem,
  dmsVidaSystem, dmc_UserProps, udmLanguage;

{$R *.dfm}

Procedure TfnotInvoicedReport.CreateCo(Sender: TObject; CompanyNo: Integer);
var
  Save_Cursor: TCursor;
  // x : Integer ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try

    cds_Props.Active := False;
    cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
    cds_Props.ParamByName('Form').AsString := Self.Name;
    cds_Props.Active := True;
    if cds_Props.Eof then
      cds_Props.Insert;

  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

function TfnotInvoicedReport.InitiateReport(const ReportName: String): Boolean;
var
  HostName, Database, UserName, Password, spath, ServiceUrl : String;
  Save_Cursor: TCursor;
  iSecurity: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try

    dmsSystem.GetLogonParams(HostName, Database, UserName, Password, spath, ServiceUrl);
    Result := True;
    if not(FileExists(spath + ReportName)) then
    Begin
      ShowMessage('Saknar crystal reports fil.  S�kv�g och filnamn : ' + spath +
        ReportName);
      Result := False;
      Exit;
    End;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    report := Application1.OpenReport(spath + ReportName,
      crOpenReportByTempCopy);
    report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName,
      Password);
    Caption := spath + ReportName;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
End;

procedure TfnotInvoicedReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfnotInvoicedReport.FormDestroy(Sender: TObject);
begin
  report := Nil;
  Application1 := Nil;
  fnotInvoicedReport := Nil;
end;

procedure TfnotInvoicedReport.acRefreshExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    if not cds_PropsMarketRegionNo.IsNull then
    Begin
      if not cds_PropsOrderTypeNo.IsNull then
      Begin
        if not InitiateReport('NotInv.RPT') then
          Exit;

        // de_TOM.Date:= RecodeHour(de_TOM.Date,23) ;
        // de_TOM.Date:= RecodeMinute(de_TOM.Date,59) ;
        // de_TOM.Date:= RecodeSecond(de_TOM.Date,59) ;

        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        report.ParameterFields.Item[1].AddCurrentValue
          (SQLTimeStampToDateTime(cds_PropsStartPeriod.AsSQLTimeStamp));
        report.ParameterFields.Item[2].AddCurrentValue
          (cds_PropsMarketRegionNo.AsInteger);
        report.ParameterFields.Item[3].AddCurrentValue
          (cds_PropsOrderTypeNo.AsInteger);

        CRViewer91.ReportSource := report;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        CRViewer91.ViewReport;
      End
      else
        ShowMessage('Please select order type.');
    End
    else
      ShowMessage('Please select a market.');
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfnotInvoicedReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  SaveUserProps(Self.Caption);
end;

procedure TfnotInvoicedReport.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsForm.AsString := Self.Name;
  cds_PropsUserID.AsInteger := ThisUser.UserID;
end;

procedure TfnotInvoicedReport.FormShow(Sender: TObject);
begin
  LoadUserProps(Self.Caption);
end;

procedure TfnotInvoicedReport.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfnotInvoicedReport.LoadUserProps(const Form: String);
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

  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if not cds_Props.Eof then
  Begin
    // if cds_PropsBookingTypeNo.AsInteger < 1 then
    // pLoadOrder.Width      := 560
    // else
    // pLoadOrder.Width      := cds_PropsBookingTypeNo.AsInteger ;

    cds_Props.Edit;

  End;
  // Panel1.Height  := Panel1.Height - 1 ;
End;

procedure TfnotInvoicedReport.SaveUserProps(const Form: String);
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

  // cds_PropsBookingTypeNo.AsInteger  := pLoadOrder.Width ;

  cds_Props.Post;
  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

end.
