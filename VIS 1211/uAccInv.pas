unit uAccInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, DBClient, Provider, SqlExpr, cxLabel,
  cxCalc, dxBar, dxBarExtItems, ActnList, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxSplitter, cxSSheet, Menus, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPSBaseGridLnk,

  dxPScxCommon, dxPScxSSLnk, StdCtrls, cxLookAndFeels,
  cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxContainer, cxTextEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsdxRibbonPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, System.Actions, siComp, siLngLnk;

type
  TfAccInv = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    ActionList1: TActionList;
    acRefresh: TAction;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acPrint: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    acClose: TAction;
    dxBarDockControl2: TdxBarDockControl;
    ssAccLager: TcxSpreadSheetBook;
    acParametrar: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    acExportToExcel: TAction;
    SaveDialog1: TSaveDialog;
    dxBarLargeButton5: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    StngF121: TMenuItem;
    ExporteraexcelF101: TMenuItem;
    ParametrarF111: TMenuItem;
    Uppdatera1: TMenuItem;
    SkrivutF81: TMenuItem;
    UppdateraF61: TMenuItem;
    dxComponentPrinter1: TdxComponentPrinter;
    cds_ExportTyp1: TFDQuery;
    cds_ExportTyp1PackageNo: TStringField;
    cds_ExportTyp1NomThick: TFloatField;
    cds_ExportTyp1NomWidth: TFloatField;
    cds_ExportTyp1MAXLENGTH: TFloatField;
    cds_ExportTyp1MINLENGTH: TFloatField;
    cds_ExportTyp1Pcs: TIntegerField;
    cds_ExportTyp1Mark: TStringField;
    cds_ExportTyp1PEFC: TStringField;
    cds_ExportTyp1SHIPPINGPLANNO: TIntegerField;
    cds_ExportTyp1AM3: TFloatField;
    acEmailaFile: TAction;
    teInvoiceNo: TcxTextEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    sp_ExportInvoiceData: TFDStoredProc;
    siLangLinked_fAccInv: TsiLangLinked;
    dxComponentPrinter1Link1: TdxSpreadSheetBookReportLink;
    sp_ExpInvContData: TFDStoredProc;
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acEmailaFileExecute(Sender: TObject);
  private
    { Private declarations }
    CurRow: Integer;
    FirstSumRow: Integer;
    procedure SetKolumnTitlesIII ;
    procedure WritePackageToSheetIII ;
    procedure AddPkgDataToSheetContainer ;
    procedure SetCellTextNormalFont2(ACol, ARow: Integer; AText: String;
      const AA: variant);
    procedure EmailExportFile(const Pdf: String);
    procedure SetCellTextBold(ACol, ARow: Integer; AText: String);
    procedure WritePackageToSheet;
    procedure SetKolumnTitles;
    procedure AddPkgDataToSheet;

    procedure WritePackageToSheetII;
    procedure SetKolumnTitlesII;
    procedure AddPkgDataToSheetII;

    procedure SetCellTextNormalFont(ACol, ARow: Integer; AText: String);

  public
    { Public declarations }
    CustomerNo, AgentNo, IntInvNo, ExportNo: Integer;
  end;

  // var fAccInv: TfAccInv;

implementation

uses dmsDataConn, dmsVidaContact, dmsVidaSystem, uSendMapiMail, VidaUser,
  udmLanguage;

{$R *.dfm}

procedure TfAccInv.SetCellTextNormalFont(ACol, ARow: Integer; AText: String);
begin
  // get a cell object for the request col and row
  with ssAccLager.ActiveSheet.GetCellObject(ACol, ARow) do
  begin
    try
      Text := AText;
      Style.Font.Style := []; // .Format := $18;
    finally
      Free; // and free it (important!)
    end;
  end;
end;

procedure TfAccInv.SetCellTextNormalFont2(ACol, ARow: Integer; AText: String;
  const AA: variant);
begin
  // get a cell object for the request col and row
  with ssAccLager.ActiveSheet.GetCellObject(ACol, ARow) do
  begin
    try
      Text := AText;
      Style.Font.Style := []; // .Format := $18;
      Style.Format := AA;
    finally
      Free; // and free it (important!)
    end;
  end;
end;

procedure TfAccInv.SetCellTextBold(ACol, ARow: Integer; AText: String);
begin
  // get a cell object for the request col and row
  with ssAccLager.ActiveSheet.GetCellObject(ACol, ARow) do
  begin
    try
      Text := AText;
      Style.Font.Style := [fsBold]; // .Format := $18;
    finally
      Free; // and free it (important!)
    end;
  end;
end;

procedure TfAccInv.acRefreshExecute(Sender: TObject);
begin
  with ssAccLager.ActiveSheet.GetCellObject(0, 0) do
    try
      // Style.Format := $18;
    finally
      Free;
    end;
  if ExportNo = 1 then
    AddPkgDataToSheet
  else
    AddPkgDataToSheetII;
end;

procedure TfAccInv.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add
    ('Lagerförändring');
  // dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(' ') ;
  // dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;
  // dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add(lcPIPNAME.Text+'/'+lcLIPNAME.Text) ;

  dxComponentPrinter1Link1.PrinterPage.Orientation := poPortrait;
  dxComponentPrinter1Link1.ShrinkToPageWidth := True;
  // dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice;

  // dxComponentPrinter1
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfAccInv.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfAccInv.SetKolumnTitles;
Begin
  SetCellTextBold(0, CurRow, 'PackageNo');
  SetCellTextBold(1, CurRow, 'NomThick');
  SetCellTextBold(2, CurRow, 'NomWidth');

  SetCellTextBold(3, CurRow, 'MAXLENGTH');
  SetCellTextBold(4, CurRow, 'MINLENGTH');
  SetCellTextBold(5, CurRow, 'Pcs');
  SetCellTextBold(6, CurRow, 'm3');
End;

procedure TfAccInv.WritePackageToSheet;
Begin
  SetCellTextNormalFont2(0, CurRow, cds_ExportTyp1PackageNo.AsString, $01);
  SetCellTextNormalFont2(1, CurRow, cds_ExportTyp1NomThick.AsString, $00);
  SetCellTextNormalFont2(2, CurRow, cds_ExportTyp1NomWidth.AsString, $00);

  SetCellTextNormalFont2(3, CurRow, cds_ExportTyp1MAXLENGTH.AsString, $00);
  SetCellTextNormalFont2(4, CurRow, cds_ExportTyp1MINLENGTH.AsString, $00);
  SetCellTextNormalFont2(5, CurRow, cds_ExportTyp1Pcs.AsString, $00);
  SetCellTextNormalFont2(6, CurRow, cds_ExportTyp1AM3.AsString, $00);
  CurRow := succ(CurRow);
End;

procedure TfAccInv.AddPkgDataToSheet;
Var
  FirstRec: Boolean;
  Save_Cursor: TCursor;
  CurrentLONo: Integer;

  procedure Summa;
  Begin
    SetCellTextBold(6, CurRow, '=SUM(G' + inttostr(FirstSumRow) + ':G' +
      inttostr(CurRow) + ')');
    // SetCellTextBold(0,CurRow, 'SUMMA');
  End;

Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    CurRow := 0;

    SetKolumnTitles;
    CurRow := CurRow + 1;
    FirstSumRow := CurRow + 1;
    cds_ExportTyp1.Active := False;
    cds_ExportTyp1.ParamByName('CET').AsInteger := 0;
    cds_ExportTyp1.ParamByName('INTERNALINVOICENO').AsInteger := IntInvNo;
    cds_ExportTyp1.Active := True;
    cds_ExportTyp1.First;
    CurrentLONo := cds_ExportTyp1SHIPPINGPLANNO.AsInteger;
    While not cds_ExportTyp1.Eof do
    Begin
      if CurrentLONo <> cds_ExportTyp1SHIPPINGPLANNO.AsInteger then
      Begin
        Summa;
        CurRow := CurRow + 2;
        SetKolumnTitles;
        CurRow := CurRow + 1;
        FirstSumRow := CurRow + 1;
        CurrentLONo := cds_ExportTyp1SHIPPINGPLANNO.AsInteger;
      End;

      WritePackageToSheet;
      cds_ExportTyp1.Next;
      // CurRow  := succ(CurRow) ;
    End;

    // CurRow  := Pred(CurRow) ;
    Summa;

    cds_ExportTyp1.Active := False;
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
End;

procedure TfAccInv.SetKolumnTitlesIII ;
Var x : Integer ;
Begin
 for x := 0 to sp_ExpInvContData.Fields.Count - 1 do
 Begin
  SetCellTextBold(x,CurRow, sp_ExpInvContData.Fields.Fields[x].DisplayLabel);
 End;

 {
 SetCellTextBold(1,CurRow, 'NomThick');
 SetCellTextBold(2,CurRow, 'NomWidth');

 SetCellTextBold(3,CurRow, 'MAXLENGTH');
 SetCellTextBold(4,CurRow, 'MINLENGTH');
 SetCellTextBold(5,CurRow, 'Pcs');
 SetCellTextBold(6,CurRow, 'm3');  }
End ;


procedure TfAccInv.SetKolumnTitlesII;
Var
  x: Integer;
Begin
  for x := 0 to sp_ExportInvoiceData.Fields.Count - 1 do
  Begin
    SetCellTextBold(x, CurRow, sp_ExportInvoiceData.Fields.Fields[x]
      .DisplayLabel);
  End;

  {
    SetCellTextBold(1,CurRow, 'NomThick');
    SetCellTextBold(2,CurRow, 'NomWidth');

    SetCellTextBold(3,CurRow, 'MAXLENGTH');
    SetCellTextBold(4,CurRow, 'MINLENGTH');
    SetCellTextBold(5,CurRow, 'Pcs');
    SetCellTextBold(6,CurRow, 'm3'); }
End;

procedure TfAccInv.WritePackageToSheetIII ;
Var x : Integer ;
Begin
 for x := 0 to sp_ExpInvContData.Fields.Count - 1 do
 Begin
  SetCellTextNormalFont2(x,CurRow, sp_ExpInvContData.Fields.Fields[x].AsString, $00);
 End;
{
 SetCellTextNormalFont2(0,CurRow, cds_ExportTyp1PackageNo.AsString, $01);
 SetCellTextNormalFont2(1,CurRow, cds_ExportTyp1NomThick.AsString, $00);
 SetCellTextNormalFont2(2,CurRow, cds_ExportTyp1NomWidth.AsString, $00);

 SetCellTextNormalFont2(3,CurRow, cds_ExportTyp1MAXLENGTH.AsString, $00);
 SetCellTextNormalFont2(4,CurRow, cds_ExportTyp1MINLENGTH.AsString, $00);
 SetCellTextNormalFont2(5,CurRow, cds_ExportTyp1Pcs.AsString, $00);
 SetCellTextNormalFont2(6,CurRow, cds_ExportTyp1AM3.AsString, $00);
 }
 CurRow  := succ(CurRow) ;
End ;

procedure TfAccInv.AddPkgDataToSheetContainer  ;
Var FirstRec    : Boolean ;
    Save_Cursor : TCursor;
    CurrentLONo : Integer ;

procedure Summa ;
Begin
 SetCellTextBold(6,CurRow ,  '=SUM(G' + inttostr(FirstSumRow) +':G' + inttostr(CurRow) + ')');
// SetCellTextBold(0,CurRow, 'SUMMA');
End ;

Begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
 Try
 CurRow := 0 ;

 sp_ExpInvContData.ParamByName('@UserID').AsInteger  := ThisUser.UserID ;
 sp_ExpInvContData.Active  := True ;

 SetKolumnTitlesIII ;
 CurRow := CurRow + 1 ;
 FirstSumRow  := CurRow + 1 ;
{ cds_ExportTyp1.Active  := False ;
 cds_ExportTyp1.ParamByName('CET').AsInteger                := 0 ;
 cds_ExportTyp1.ParamByName('INTERNALINVOICENO').AsInteger  := IntInvNo ;
 cds_ExportTyp1.Active  := True ;   }
 sp_ExpInvContData.First ;
// CurrentLONo  := cds_ExportTyp1SHIPPINGPLANNO.AsInteger ;
 While not sp_ExpInvContData.Eof do
 Begin
 { if CurrentLONo <> cds_ExportTyp1SHIPPINGPLANNO.AsInteger then
  Begin
  // Summa ;
   CurRow := CurRow + 2 ;
   SetKolumnTitlesII ;
   CurRow := CurRow + 1 ;
   FirstSumRow  := CurRow + 1 ;
   CurrentLONo  := cds_ExportTyp1SHIPPINGPLANNO.AsInteger ;
  End ;         }



  WritePackageToSheetIII ;
  sp_ExpInvContData.Next ;
//  CurRow  := succ(CurRow) ;
 End ;

// CurRow  := Pred(CurRow) ;
// Summa ;

 sp_ExpInvContData.Active  := False ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfAccInv.WritePackageToSheetII;
Var
  x: Integer;
Begin
  for x := 0 to sp_ExportInvoiceData.Fields.Count - 1 do
  Begin
    SetCellTextNormalFont2(x, CurRow, sp_ExportInvoiceData.Fields.Fields[x]
      .AsString, $00);
  End;
  {
    SetCellTextNormalFont2(0,CurRow, cds_ExportTyp1PackageNo.AsString, $01);
    SetCellTextNormalFont2(1,CurRow, cds_ExportTyp1NomThick.AsString, $00);
    SetCellTextNormalFont2(2,CurRow, cds_ExportTyp1NomWidth.AsString, $00);

    SetCellTextNormalFont2(3,CurRow, cds_ExportTyp1MAXLENGTH.AsString, $00);
    SetCellTextNormalFont2(4,CurRow, cds_ExportTyp1MINLENGTH.AsString, $00);
    SetCellTextNormalFont2(5,CurRow, cds_ExportTyp1Pcs.AsString, $00);
    SetCellTextNormalFont2(6,CurRow, cds_ExportTyp1AM3.AsString, $00);
  }
  CurRow := succ(CurRow);
End;

procedure TfAccInv.AddPkgDataToSheetII;
Var
  FirstRec: Boolean;
  Save_Cursor: TCursor;
  CurrentLONo: Integer;

  procedure Summa;
  Begin
    SetCellTextBold(6, CurRow, '=SUM(G' + inttostr(FirstSumRow) + ':G' +
      inttostr(CurRow) + ')');
    // SetCellTextBold(0,CurRow, 'SUMMA');
  End;

Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    CurRow := 0;

    sp_ExportInvoiceData.ParamByName('@UserID').AsInteger := ThisUser.UserID;
    sp_ExportInvoiceData.Active := True;

    SetKolumnTitlesII;
    CurRow := CurRow + 1;
    FirstSumRow := CurRow + 1;
    { cds_ExportTyp1.Active  := False ;
      cds_ExportTyp1.ParamByName('CET').AsInteger                := 0 ;
      cds_ExportTyp1.ParamByName('INTERNALINVOICENO').AsInteger  := IntInvNo ;
      cds_ExportTyp1.Active  := True ; }
    sp_ExportInvoiceData.First;
    // CurrentLONo  := cds_ExportTyp1SHIPPINGPLANNO.AsInteger ;
    While not sp_ExportInvoiceData.Eof do
    Begin
      { if CurrentLONo <> cds_ExportTyp1SHIPPINGPLANNO.AsInteger then
        Begin
        // Summa ;
        CurRow := CurRow + 2 ;
        SetKolumnTitlesII ;
        CurRow := CurRow + 1 ;
        FirstSumRow  := CurRow + 1 ;
        CurrentLONo  := cds_ExportTyp1SHIPPINGPLANNO.AsInteger ;
        End ; }

      WritePackageToSheetII;
      sp_ExportInvoiceData.Next;
      // CurRow  := succ(CurRow) ;
    End;

    // CurRow  := Pred(CurRow) ;
    // Summa ;

    sp_ExportInvoiceData.Active := False;
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
End;


procedure TfAccInv.acExportToExcelExecute(Sender: TObject);
Var
  FileName: String;
begin
  SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
  SaveDialog1.DefaultExt := 'xls';
  if SaveDialog1.Execute then
  Begin
    FileName := SaveDialog1.FileName;
    Try
      ssAccLager.SaveToFile(FileName);
      ShowMessage('Exporterad till excel fil ' + FileName);
    Except
    End;
  End;
end;

procedure TfAccInv.acEmailaFileExecute(Sender: TObject);
Var
  ExcelDir, FileName: String;
begin
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  // SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
  // SaveDialog1.DefaultExt:= 'xls';
  // if SaveDialog1.Execute then
  // Begin
  // FileName:= SaveDialog1.FileName ;
  Try
    FileName := ExcelDir + teInvoiceNo.Text + '.xls';
    ssAccLager.SaveToFile(FileName);
    EmailExportFile(FileName);
    // ShowMessage('Exporterad till excel fil ' + FileName);
  Except
  End;
end;

procedure TfAccInv.EmailExportFile(const Pdf: String);
const
  LF = #10;
Var
  A: array of variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddressAgent, MailToAddressKund, MailToAddress: String;
begin
  if (AgentNo > 0) then
    MailToAddressAgent := dmsContact.GetEmailAddress(AgentNo);

  MailToAddressKund := dmsContact.GetEmailAddress(CustomerNo);

  if (Length(MailToAddressAgent) > 0) and (Length(MailToAddressKund) > 0) then
    MailToAddress := MailToAddressAgent + MailToAddressKund
  else if (Length(MailToAddressAgent) > 0) then
    MailToAddress := MailToAddressAgent
  else if (Length(MailToAddressKund) > 0) then
    MailToAddress := MailToAddressKund;

  if Length(MailToAddress) = 0 then
  Begin
    MailToAddress := 'ange@adress.nu';
    // ShowMessage('Emailadress saknas för klienten, ange adressen i mailet(outlook)') ;
  End;

  if Length(MailToAddress) > 0 then
  Begin
    SetLength(Attach, 1);
    Attach[0] := Pdf;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: ' +
        teInvoiceNo.Text + ' - Invoice/package specification. InvoiceNo: ' +
        teInvoiceNo.Text, 'Exportfil paketspecifikation bifogad. ' + LF + '' +
        'Export file package specification attached. ' + LF + '' + LF + '' + LF
        + 'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
        (ThisUser.UserID), dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
        Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Emailadress saknas för klienten!');

end;

end.
