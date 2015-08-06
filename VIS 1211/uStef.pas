unit uStef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, ImgList, OleServer,
  CRAXDRT_TLB, OleCtrls,
  Menus, Buttons, ComCtrls,
  cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ActnList, cxClasses,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxCore, cxDateUtils,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, System.Actions, siComp,
  siLngLnk,
  CrystalActiveXReportViewerLib11_5_TLB ;

type
  TfStef = class(TForm)
    ImageList1: TImageList;
    Application1: TApplication;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    ActionList1: TActionList;
    acStefReport: TAction;
    acStefPerKontraktReport: TAction;
    acExit: TAction;
    Label1: TLabel;
    dtStart: TcxDateEdit;
    dtStop: TcxDateEdit;
    Label2: TLabel;
    acPEFCReport: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    StngF121: TMenuItem;
    GenereraorderstockF61: TMenuItem;
    InstrastatFaktnr1: TMenuItem;
    Instrastat1: TMenuItem;
    PEFC1: TMenuItem;
    OrderstockLand1: TMenuItem;
    Orderstock1: TMenuItem;
    StefKontrakt1: TMenuItem;
    Stef1: TMenuItem;
    dxBarLargeButton9: TdxBarLargeButton;
    acFSC: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    siLangLinked_fStef: TsiLangLinked;
    CRViewer91: TCrystalActiveXReportViewer;
    procedure lbExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbPkgNoReportClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acStefReportExecute(Sender: TObject);
    procedure acStefPerKontraktReportExecute(Sender: TObject);
    procedure acPEFCReportExecute(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure acFSCExecute(Sender: TObject);
  private
    { Private declarations }
    report: IReport;
    Vol_By_PkgCode, Vol_By_PkgNo, Vol_By_Length_Gen: Boolean;
    OLD_peLengthFormat: Integer;
    function InitiateReport(const ReportName: String): Boolean;
  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject; CompanyNo: Integer);
  end;

var
  fStef: TfStef;

implementation

uses dmsDataConn, VidaUser, dmsVidaContact, VidaConst, dmsVidaSystem,
  udmLanguage;

{$R *.dfm}

function TfStef.InitiateReport(const ReportName: String): Boolean;
var
  HostName, Database, UserName, Password, spath: String;
var
  iSecurity: Integer;
begin
  dmsSystem.GetLogonParams(HostName, Database, UserName, Password, spath);

  Result := True;
  if not(FileExists(spath + ReportName)) then
  Begin
    ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : ' + spath +
      ReportName);
    Result := False;
    Exit;
  End;

  report := Application1.OpenReport(spath + ReportName, crOpenReportByTempCopy);
  report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName,
    Password);
  Caption := spath + ReportName;
End;

Procedure TfStef.CreateCo(Sender: TObject; CompanyNo: Integer);
var
  Save_Cursor: TCursor;
  x: Integer;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfStef.lbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfStef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfStef.lbPkgNoReportClick(Sender: TObject);
begin
  if InitiateReport('INV_BY_PKGNo.RPT') then
  Begin
    report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
    CRViewer91.ReportSource := report;
    CRViewer91.ViewReport;
  End;
end;

procedure TfStef.FormDestroy(Sender: TObject);
begin
  fStef := Nil;
end;

procedure TfStef.FormShow(Sender: TObject);
begin
  dtStart.Date := Date;
  dtStop.Date := Date;
end;

procedure TfStef.acStefReportExecute(Sender: TObject);
begin
  if InitiateReport('STEF_I.RPT') then
  Begin
    report.ParameterFields.Item[1].AddCurrentValue(dtStart.Date);
    report.ParameterFields.Item[2].AddCurrentValue(dtStop.Date);
    CRViewer91.ReportSource := report;
    CRViewer91.ViewReport;
  End;
end;

procedure TfStef.acStefPerKontraktReportExecute(Sender: TObject);
begin
  if InitiateReport('STEF_Per_Kontrakt.RPT') then
  Begin
    report.ParameterFields.Item[1].AddCurrentValue(dtStart.Date);
    report.ParameterFields.Item[2].AddCurrentValue(dtStop.Date);
    CRViewer91.ReportSource := report;
    CRViewer91.ViewReport;
  End;
end;

procedure TfStef.acPEFCReportExecute(Sender: TObject);
var
  StartYear, StartMonth, StartDay: Word;
  EndYear, EndMonth, EndDay: Word;
begin
  DecodeDate(dtStart.Date, StartYear, StartMonth, StartDay);
  DecodeDate(dtStop.Date, EndYear, EndMonth, EndDay);
  if InitiateReport('PEFC_Statistik.rpt') then
  Begin
    report.ParameterFields.Item[1].AddCurrentValue(StartYear);
    report.ParameterFields.Item[2].AddCurrentValue(StartMonth);
    report.ParameterFields.Item[3].AddCurrentValue(EndYear);
    report.ParameterFields.Item[4].AddCurrentValue(EndMonth);
    CRViewer91.ReportSource := report;
    CRViewer91.ViewReport;
  End;
end;

procedure TfStef.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfStef.acFSCExecute(Sender: TObject);
var
  StartYear, StartMonth, StartDay: Word;
  EndYear, EndMonth, EndDay: Word;
begin
  DecodeDate(dtStart.Date, StartYear, StartMonth, StartDay);
  DecodeDate(dtStop.Date, EndYear, EndMonth, EndDay);
  if InitiateReport('FSC_Statistik.rpt') then
  Begin
    report.ParameterFields.Item[1].AddCurrentValue(StartYear);
    report.ParameterFields.Item[2].AddCurrentValue(StartMonth);
    report.ParameterFields.Item[3].AddCurrentValue(EndYear);
    report.ParameterFields.Item[4].AddCurrentValue(EndMonth);
    CRViewer91.ReportSource := report;
    CRViewer91.ViewReport;
  End;
end;

end.
