unit uCreditLimitAnalys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems,
  ImgList, ExtCtrls, StdCtrls, Mask,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridExportLink, ActnList, Menus,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxContainer, cxLabel, cxTextEdit,
  cxMaskEdit, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxNavigator, System.Actions;

type
  TfrmCreditLimitAnalys = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    ImageList1: TImageList;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    lbConfigGrid: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    lbExportToExcel: TdxBarLargeButton;
    Panel1: TPanel;
    dxBarControlContainerItem2: TdxBarControlContainerItem;
    dxBarStatic3: TdxBarStatic;
    grdKreditOverdueDBTableView1: TcxGridDBTableView;
    grdKreditOverdueLevel1: TcxGridLevel;
    grdKreditOverdue: TcxGrid;
    grdKreditOverdueDBTableView1KUND: TcxGridDBColumn;
    grdKreditOverdueDBTableView1clientno: TcxGridDBColumn;
    grdKreditOverdueDBTableView1CreditLimit: TcxGridDBColumn;
    grdKreditOverdueDBTableView1XOR: TcxGridDBColumn;
    grdKreditOverdueDBTableView1VIS: TcxGridDBColumn;
    grdKreditOverdueDBTableView1TOTALT: TcxGridDBColumn;
    grdKreditOverdueDBTableView1DIFFERENS: TcxGridDBColumn;
    grdKreditOverdueDBTableView1Note: TcxGridDBColumn;
    ActionList1: TActionList;
    acRefresh: TAction;
    acChangeLayout: TAction;
    acExport: TAction;
    acClose: TAction;
    PopupMenu1: TPopupMenu;
    Fltvljare1: TMenuItem;
    StngF121: TMenuItem;
    ExportF111: TMenuItem;
    UppdateraF61: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    MaskEdit2: TMaskEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    cxMaskEdit1: TcxMaskEdit;
    cbExlK2: TcxCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acRefreshExecute(Sender: TObject);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure acExportExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure cxMaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure BuildSQL;
  public
    { Public declarations }
  end;

var
  frmCreditLimitAnalys: TfrmCreditLimitAnalys;

implementation

uses dmcVidaInvoice, VidaUser, dmsDataConn, dmsVidaSystem, UnitdmModule1;

{$R *.dfm}

procedure TfrmCreditLimitAnalys.FormDestroy(Sender: TObject);
begin
  frmCreditLimitAnalys := Nil;
end;

procedure TfrmCreditLimitAnalys.FormCreate(Sender: TObject);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdKreditOverdueDBTableView1.Name,
    grdKreditOverdueDBTableView1);
end;

procedure TfrmCreditLimitAnalys.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCreditLimitAnalys.MaskEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  With dmModule1 do
  Begin
    if cds_CreditAnalys.Active = false then
      acRefreshExecute(Sender);
    cds_CreditAnalys.FindNearest([MaskEdit2.Text]);
  End; // with
end;

{ LARS
  procedure TfrmCreditLimitAnalys.grdCreditOverdueNoteCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  begin
  if Length(Trim(AText)) > 0 then
  AColor:= clYellow ;
  end; }

procedure TfrmCreditLimitAnalys.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID, grdKreditOverdueDBTableView1.Name,
    grdKreditOverdueDBTableView1);
  With dmModule1 do
  Begin
    cds_CreditAnalys.Active := false;
  End;
  CanClose := True;
end;

procedure TfrmCreditLimitAnalys.acRefreshExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    With dmModule1 do
    Begin
      cds_CreditAnalys.Active := false;
      // sq_CreditAnalys.ParamByName('Limit').AsFloat:= StrToFloatDef(Trim(MaskEdit1.Text),0) ;
      cds_CreditAnalys.ParamByName('Limit').AsFloat :=
        StrToFloatDef(Trim(cxMaskEdit1.Text), 0);
      // urval på fakturatyp
      cds_CreditAnalys.Active := True;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

// Gjorde detta för att exkludera K2 men la på is.
procedure TfrmCreditLimitAnalys.BuildSQL;
Begin
  With dmModule1.cds_CreditAnalys do
  Begin
    if not cbExlK2.Checked then
    Begin
      SQL.Add('Select distinct CG.Name AS KUND, CG.Note, cg.grpNo AS ClientNo, CREDIT_LIMIT_SEK AS CreditLimit,');

      SQL.Add('ROUND(CAST((  XTS.XOR     ) As decimal(18,3)),2) AS XOR,');
      SQL.Add('ROUND(CAST((  SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS VIS,');
      SQL.Add('ROUND(CAST((  XTS.XOR+SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS TOTALT,');
      SQL.Add('ROUND(CAST((  CRS.CREDIT_LIMIT_SEK - (XTS.XOR+SUM(isnull(SEK_VALUE,0)))     ) As decimal(18,3)),2) AS DIFFERENS');

      SQL.Add('FROM');
      SQL.Add('dbo.Creditgrp CG');
      SQL.Add('Inner Join dbo.XOR_TotalSaldo_ALVE XTS ON XTS.grpNo = CG.grpNo');

      SQL.Add('Left Outer Join dbo.InvoiceValueCust_ALVE ivc ON ivc.grpNo = CG.grpNo');
      SQL.Add('Inner Join dbo.CreditLimitSEK CRS ON CRS.grpNo = CG.grpNo');

      SQL.Add('Group By  CG.Name,  cg.grpNo, XTS.XOR,');
      SQL.Add('CRS.CREDIT_LIMIT_SEK, CG.Note');

      SQL.Add('having (CRS.CREDIT_LIMIT_SEK -  (XTS.XOR+SUM(isnull(SEK_VALUE,0)))) < :Limit');

      SQL.Add('UNION');

      SQL.Add('Select distinct C.ClientName AS KUND,');
      SQL.Add(QuotedStr('EJ FÖRSÄKRAD') + ' AS Note,');
      SQL.Add('C.ClientNo AS ClientNo,');
      SQL.Add('0.0 AS CreditLimit,');

      SQL.Add('ROUND(CAST((  XTS.XOR     ) As decimal(18,3)),2) AS XOR,');
      SQL.Add('ROUND(CAST((  SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS VIS,');
      SQL.Add('ROUND(CAST((  XTS.XOR+SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS TOTALT,');
      SQL.Add('ROUND(CAST((  0.0 - (XTS.XOR+SUM(isnull(SEK_VALUE,0)))     ) As decimal(18,3)),2) AS DIFFERENS');

      SQL.Add('FROM');
      SQL.Add('dbo.Client C');
      SQL.Add('Inner Join dbo.XOR_TotalSaldo_ALVE_NoInsurance XTS ON XTS.ClientNo = C.ClientNo');

      SQL.Add('Left Outer Join dbo.InvoiceValueCust_ALVE_NoInsurance ivc ON ivc.ClientNo = C.ClientNo');

      SQL.Add('WHERE');
      SQL.Add('C.ClientNo not in (Select cgc.ClientNo from dbo.CreditGrpClients cgc');
      SQL.Add('Inner Join dbo.Creditgrp CG on cg.grpNo = cgc.grpNo');
      SQL.Add('where Cgc.ClientNo = C.ClientNo)');

      SQL.Add('Group By  C.ClientName,  C.ClientNo, XTS.XOR');

      SQL.Add('having (0.0 -  (XTS.XOR+SUM(isnull(SEK_VALUE,0)))) < 0');
    End
    else if cbExlK2.Checked then
    Begin
      SQL.Add('Select distinct CG.Name AS KUND, CG.Note, cg.grpNo AS ClientNo, CREDIT_LIMIT_SEK AS CreditLimit,');

      SQL.Add('ROUND(CAST((  XTS.XOR     ) As decimal(18,3)),2) AS XOR,');
      SQL.Add('ROUND(CAST((  SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS VIS,');
      SQL.Add('ROUND(CAST((  XTS.XOR+SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS TOTALT,');
      SQL.Add('ROUND(CAST((  CRS.CREDIT_LIMIT_SEK - (XTS.XOR+SUM(isnull(SEK_VALUE,0)))     ) As decimal(18,3)),2) AS DIFFERENS');

      SQL.Add('FROM');
      SQL.Add('dbo.Creditgrp CG');
      SQL.Add('Inner Join dbo.XOR_TotalSaldo_ALVE XTS ON XTS.grpNo = CG.grpNo');

      SQL.Add('Left Outer Join dbo.InvoiceValueCust_ALVE_NotK2 ivc ON ivc.grpNo = CG.grpNo');
      SQL.Add('Inner Join dbo.CreditLimitSEK CRS ON CRS.grpNo = CG.grpNo');

      SQL.Add('Group By  CG.Name,  cg.grpNo, XTS.XOR,');
      SQL.Add('CRS.CREDIT_LIMIT_SEK, CG.Note');

      SQL.Add('having (CRS.CREDIT_LIMIT_SEK -  (XTS.XOR+SUM(isnull(SEK_VALUE,0)))) < :Limit');

      SQL.Add('UNION');

      SQL.Add('Select distinct C.ClientName AS KUND,');
      SQL.Add(QuotedStr('EJ FÖRSÄKRAD') + ' AS Note,');
      SQL.Add('C.ClientNo AS ClientNo,');
      SQL.Add('0.0 AS CreditLimit,');

      SQL.Add('ROUND(CAST((  XTS.XOR     ) As decimal(18,3)),2) AS XOR,');
      SQL.Add('ROUND(CAST((  SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS VIS,');
      SQL.Add('ROUND(CAST((  XTS.XOR+SUM(isnull(SEK_VALUE,0))     ) As decimal(18,3)),2) AS TOTALT,');
      SQL.Add('ROUND(CAST((  0.0 - (XTS.XOR+SUM(isnull(SEK_VALUE,0)))     ) As decimal(18,3)),2) AS DIFFERENS');

      SQL.Add('FROM');
      SQL.Add('dbo.Client C');
      SQL.Add('Inner Join dbo.XOR_TotalSaldo_ALVE_NoInsurance XTS ON XTS.ClientNo = C.ClientNo');

      SQL.Add('Left Outer Join dbo.InvoiceValueCust_ALVE_NoInsurance ivc ON ivc.ClientNo = C.ClientNo');

      SQL.Add('WHERE');
      SQL.Add('C.ClientNo not in (Select cgc.ClientNo from dbo.CreditGrpClients cgc');
      SQL.Add('Inner Join dbo.Creditgrp CG on cg.grpNo = cgc.grpNo');
      SQL.Add('where Cgc.ClientNo = C.ClientNo)');

      SQL.Add('Group By  C.ClientName,  C.ClientNo, XTS.XOR');

      SQL.Add('having (0.0 -  (XTS.XOR+SUM(isnull(SEK_VALUE,0)))) < 0');
    End;
  End; // With
End; // Proc

procedure TfrmCreditLimitAnalys.acChangeLayoutExecute(Sender: TObject);
begin
  if grdKreditOverdue.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController
      (grdKreditOverdue.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmCreditLimitAnalys.acExportExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
    SaveDialog1.DefaultExt := 'xls';
    SaveDialog1.InitialDir := dmsSystem.Get_Dir('ExcelDir');
    // dmsSystem.GetSystemProp('ExcelDir') ;
    if SaveDialog1.Execute then
    Begin
      FileName := SaveDialog1.FileName;
      ExportGridToExcel(FileName, grdKreditOverdue, false, false, True, 'xls');
      ShowMessage('Table exported to Excel file ' + FileName);
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;

end;

procedure TfrmCreditLimitAnalys.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCreditLimitAnalys.cxMaskEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit
  else
    acRefreshExecute(Sender);
end;

end.
