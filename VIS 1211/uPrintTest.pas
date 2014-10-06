unit uPrintTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TfPrintTest = class(TForm)
    lb_Name: TLabel;
    lbRPTFilePath: TLabel;
    lb_ReportOptions: TLabel;
    Label1: TLabel;
    lb_PrintSetUp: TLabel;
    lb_Parameters: TLabel;
    ServerName: TLabel;
    DatabaseName: TLabel;
    lbUserID: TLabel;
    lbPassword: TLabel;
    cxButton1: TcxButton;
    ed_ReportName: TEdit;
    edRPTFilePath: TEdit;
    rg_ReportOptions: TRadioGroup;
    edStorePath: TEdit;
    rg_PrintSetUp: TRadioGroup;
    lbx_Parameters: TListBox;
    edServerName: TEdit;
    edDBName: TEdit;
    edUserID: TEdit;
    edPassword: TEdit;
    bt_AddParams: TButton;
    bt_ClearParams: TButton;
    chkSecurity: TCheckBox;
    DelphiHostPanel: TPanel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_ClearParamsClick(Sender: TObject);
    procedure rg_PrintSetUpClick(Sender: TObject);
    procedure rg_ReportOptionsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    report_Name, report_Option, rpt_FilePath, store_Path, pdf_Name, print_Type,
      paramText: String;
    server_Name, database_Name, userID, password: String;
  end;

  // var fPrintTest: TfPrintTest;

implementation

{$R *.dfm}

uses PreviewForm, PrintUnit;

procedure TfPrintTest.bt_ClearParamsClick(Sender: TObject);
begin
  lbx_Parameters.DeleteSelected;
  bt_ClearParams.Enabled := false;
end;

procedure TfPrintTest.cxButton1Click(Sender: TObject);
var
  VarArray: Variant;
  safeArray: PVarArray;
  // param: string;
  // paramArray: array of string;
  i, paramCount: Integer;
  PreviewForm: TForm2;
  iSecurity: Boolean;
begin

  server_Name := edServerName.Text;
  database_Name := edDBName.Text;
  userID := edUserID.Text;
  password := edPassword.Text;
  iSecurity := chkSecurity.Checked;

  report_Option := IntToStr(rg_ReportOptions.ItemIndex);
  print_Type := IntToStr(rg_PrintSetUp.ItemIndex);

  if rg_ReportOptions.ItemIndex = -1 then
    ShowMessage('! Please select any one of the Report Option.')

  else if (rg_ReportOptions.ItemIndex = 1) And (rg_PrintSetUp.ItemIndex = -1)
  then
    ShowMessage('! Please select any one of the Print SetUp option.')

  else if lbx_Parameters.Items.Count = 0 then
    ShowMessage('! Please add the Parameter in the List.')

  else if (server_Name = '') And (database_Name = '') And (userID = '') And
    (password = '') then
    ShowMessage('! Please add the server details.')

  else
  begin
    report_Name := ed_ReportName.Text;
    rpt_FilePath := edRPTFilePath.Text;
    store_Path := edStorePath.Text;
    pdf_Name := ed_ReportName.Text;
    paramCount := lbx_Parameters.Items.Count;

    // SetLength(paramArray, paramCount);

    // param:= lbx_Parameters.Items[0];

    VarArray := VarArrayCreate([0, paramCount], varOleStr);

    // VarArray[0]:= param;

    for i := 0 to paramCount - 1 do
      VarArray[i] := lbx_Parameters.Items[i];

    safeArray := VarArrayAsPSafeArray(VarArray);

    if rg_ReportOptions.ItemIndex = 0 then
    Begin
      PreviewForm := TForm2.Create(nil);
      PreviewForm.Parent := DelphiHostPanel;
      PreviewForm.Show;
      PreviewForm.set_Print(report_Name, rpt_FilePath, report_Option,
        print_Type, store_Path, pdf_Name, safeArray, server_Name, database_Name,
        userID, password, iSecurity);
    End
    else
      PrintUnit.set_Print(report_Name, rpt_FilePath, report_Option, print_Type,
        store_Path, pdf_Name, safeArray, server_Name, database_Name, userID,
        password, iSecurity);

    { if HYModuleManager1.ModuleCount = 0 then
      begin
      HYModuleManager1.LoadModule(ExtractFilePath(Application.ExeName)+'CR_Plugin.dll');
      HYModuleManager1.CreateVisualPlugin('CrystalReport_Plugin.CR_Plugin', fVisualizer);
      end;
      with (fVisualizer as PluginInterface) do begin
      set_Print(report_Name, rpt_FilePath, report_Option, print_Type, store_Path, pdf_Name, safeArray, server_Name, database_Name, userID, password);
      end;
    }
    VarClear(VarArray);

  end;

end;

procedure TfPrintTest.FormShow(Sender: TObject);
begin
  lbx_Parameters.Items.Add('29820');
end;

procedure TfPrintTest.rg_PrintSetUpClick(Sender: TObject);
begin
  print_Type := IntToStr(rg_PrintSetUp.ItemIndex);
end;

procedure TfPrintTest.rg_ReportOptionsClick(Sender: TObject);
begin
  report_Option := IntToStr(rg_ReportOptions.ItemIndex);
end;

end.
