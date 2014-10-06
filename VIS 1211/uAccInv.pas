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
  dxSkinOffice2013White, System.Actions;

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
    dxComponentPrinter1Link1: TdxSpreadSheetBookReportLink;
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
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acEmailaFileExecute(Sender: TObject);
  private
    { Private declarations }
    CurRow: Integer;
    FirstSumRow: Integer;
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
    // Function  GetSawProdTrimFactor : String ;
    // Function  GetInGoingInventory : String ;
    // procedure PopulateVW(const FirstRec : Boolean) ;
    // procedure PopulateVerk ;
    // procedure PopulateVerkFirst ;
    procedure SetCellTextNormalFont(ACol, ARow: Integer; AText: String);
    // procedure SetTitles ;
    // procedure StepThruData ;
  public
    { Public declarations }
    CustomerNo, AgentNo, IntInvNo, ExportNo: Integer;
  end;

  // var fAccInv: TfAccInv;

implementation

uses dmsDataConn, dmsVidaContact, dmsVidaSystem, uSendMapiMail, VidaUser;

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

(*
  procedure TfAccInv.StepThruData ;
  Var FirstRec    : Boolean ;
  Save_Cursor : TCursor;
  Begin
  Save_Cursor    := Screen.Cursor;
  Screen.Cursor  := crSQLWait;    { Show hourglass cursor }
  Try
  FirstRec := True ;
  CurRow := 3 ;
  cds_AccInv.DisableControls ;
  ssAccLager.BeginUpdate ;
  Try
  sq_StartPeriod.Open ;
  sq_InvWeeks.ParamByName('YearWeek').AsInteger  := sq_StartPeriodYearWeek.AsInteger ;
  sq_InvWeeks.Open ;
  sq_InvWeeks.First ;
  While not sq_InvWeeks.Eof do
  Begin
  FirstSumRow  := CurRow + 1 ;
  cds_AccInv.Active := False ;
  sq_AccInv.ParamByName('YearNo').AsInteger := sq_InvWeeksYearNo.AsInteger ;
  sq_AccInv.ParamByName('WeekNo').AsInteger := sq_InvWeeksWeekNo.AsInteger ;
  cds_AccInv.Active := True ;

  cds_AccInv.First ;
  While not cds_AccInv.Eof do
  Begin
  if cds_AccInvClientNo.AsInteger <> 741 then
  Begin
  if FirstRec then
  PopulateVerkFirst
  else
  PopulateVerk ;
  End
  else
  Begin
  SetCellText(0,CurRow, 'Totalt Sågverken');
  // SetCellText(2,CurRow,  '=SUM(C' + inttostr(4) +':C' + inttostr(CurRow) + ')');
  // SetCellText(3,CurRow,  '=SUM(D' + inttostr(4) +':D' + inttostr(CurRow) + ')');
  // SetCellText(4,CurRow,  '=SUM(E' + inttostr(4) +':E' + inttostr(CurRow) + ')');
  // SetCellText(5,CurRow,  '=SUM(F' + inttostr(4) +':F' + inttostr(CurRow) + ')');
  // SetCellText(6,CurRow,  '=SUM(G' + inttostr(4) +':F' + inttostr(CurRow) + ')');
  // SetCellText(7,CurRow,  '=SUM(H' + inttostr(4) +':H' + inttostr(CurRow) + ')');
  SetCellText(8,CurRow,  '=SUM(I' + inttostr(FirstSumRow) +':I' + inttostr(CurRow) + ')');
  SetCellText(9,CurRow,  '=SUM(J' + inttostr(FirstSumRow) +':J' + inttostr(CurRow) + ')');
  CurRow  := succ(CurRow) ;

  PopulateVW(FirstRec) ;
  End ;
  cds_AccInv.Next ;
  End ;
  FirstRec := False ;
  sq_InvWeeks.Next ;
  End ;
  sq_InvWeeks.Close ;
  Finally
  cds_AccInv.Active := False ;
  sq_StartPeriod.Close ;
  ssAccLager.EndUpdate ;
  cds_AccInv.EnableControls ;
  End ;
  Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
  End ;
*)

(*
  Function TfAccInv.GetInGoingInventory : String ;
  Begin
  Try
  sq_AccInvParam.ParamByName('ClientNo').AsInteger := cds_AccInvClientNo.AsInteger ;
  sq_AccInvParam.Open ;
  if not sq_AccInvParam.Eof then
  Result  := sq_AccInvParamIngoingInv.AsString
  else
  Result := '0' ;
  Finally
  sq_AccInvParam.Close ;
  End  ;
  End ;

  Function TfAccInv.GetSawProdTrimFactor : String ;
  Var TrimFactor  : Double ;
  Begin
  Try
  sq_AccInvParam.ParamByName('ClientNo').AsInteger := cds_AccInvClientNo.AsInteger ;
  sq_AccInvParam.Open ;
  if not sq_AccInvParam.Eof then
  TrimFactor  := sq_AccInvParamTrimFactor.AsFloat
  else
  TrimFactor := 1 ;
  Result  := FloatToStr(TrimFactor) ;
  Finally
  sq_AccInvParam.Close ;
  End  ;
  End ;

  procedure TfAccInv.PopulateVerkFirst ;
  Begin
  SetCellText(0,CurRow,  cds_AccInvClientName.AsString);
  SetCellText(1,CurRow,  cds_AccInvPeriod.AsString);
  SetCellText(2,CurRow,  '=' + cds_AccInvSawProd.AsString + '*' + GetSawProdTrimFactor);

  SetCellText(3,CurRow,  cds_AccInvIntInDel.AsString);
  SetCellText(4,CurRow,  cds_AccInvExtInDel.AsString);
  SetCellText(5,CurRow,  '=D' + IntToStr(CurRow+1) + '+E' + IntToStr(CurRow+1) );
  SetCellText(6,CurRow,  cds_AccInvExtUtlev.AsString);
  SetCellText(7,CurRow,  cds_AccInvInvoicedCust.AsString);
  SetCellText(8,CurRow,  '=C' + IntToStr(CurRow+1) + '+F' + IntToStr(CurRow+1) + '+G' + IntToStr(CurRow+1) );
  SetCellText(9,CurRow,  '=' + GetInGoingInventory + '+I' + IntToStr(CurRow+1));

  SetCellText(10,CurRow,  '=I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow+1,  '=I' + IntToStr(CurRow+2));
  SetCellText(10,CurRow+2,  '=I' + IntToStr(CurRow+3));
  //  SetCellText(10,CurRow, cds_AccInvTotalInvMill.AsString);
  //  SetCellText(11,CurRow, cds_AccInvBolag.AsString);

  CurRow  := succ(CurRow) ;
  End ;

  //procedure TfAccInv.SetCellText(ACol, ARow : Integer; AText : String);
  procedure TfAccInv.PopulateVerk ;
  Begin
  SetCellText(0,CurRow,  cds_AccInvClientName.AsString);
  SetCellText(1,CurRow,  cds_AccInvPeriod.AsString);
  //  SetCellText(2,CurRow,  cds_AccInvSawProd.AsString);
  SetCellText(2,CurRow,  '=' + cds_AccInvSawProd.AsString + '*' + GetSawProdTrimFactor);
  SetCellText(3,CurRow,  cds_AccInvIntInDel.AsString);
  SetCellText(4,CurRow,  cds_AccInvExtInDel.AsString);
  SetCellText(5,CurRow,  '=D' + IntToStr(CurRow+1) + '+E' + IntToStr(CurRow+1) );
  SetCellText(6,CurRow,  cds_AccInvExtUtlev.AsString);
  SetCellText(7,CurRow,  cds_AccInvInvoicedCust.AsString);
  SetCellText(8,CurRow,  '=C' + IntToStr(CurRow+1) + '+F' + IntToStr(CurRow+1) + '+G' + IntToStr(CurRow+1) );
  SetCellText(9,CurRow,  '=J' + IntToStr(CurRow - 12) + '+I' + IntToStr(CurRow+1));
  SetCellText(10,CurRow,  '=K' + IntToStr(CurRow - 12) + '+I' + IntToStr(CurRow+1));

  SetCellText(10,CurRow+1,  '=K' + IntToStr(CurRow - 11) + '+I' + IntToStr(CurRow+2));
  SetCellText(10,CurRow+2,  '=K' + IntToStr(CurRow - 10) + '+I' + IntToStr(CurRow+3));
  //  SetCellText(10,CurRow, cds_AccInvTotalInvChangeMill.AsString);
  //  SetCellText(11,CurRow, cds_AccInvTotalInvMill.AsString);
  //  SetCellText(11,CurRow, cds_AccInvBolag.AsString);

  CurRow  := succ(CurRow) ;
  End ;

  procedure TfAccInv.PopulateVW (const FirstRec : Boolean) ;
  Begin
  // cds_AccInv.First ;
  // While not cds_AccInv.Eof do
  // Begin
  SetCellText(0,CurRow,  cds_AccInvClientName.AsString);
  SetCellText(1,CurRow,  cds_AccInvPeriod.AsString);
  //  SetCellText(2,CurRow,  cds_AccInvSawProd.AsString);
  //  SetCellText(3,CurRow,  cds_AccInvIntInDel.AsString);
  SetCellText(4,CurRow,  cds_AccInvExtInDel.AsString);
  //  SetCellText(5,CurRow,  cds_AccInvTotal_inkp.AsString);
  //  SetCellText(6,CurRow,  cds_AccInvExtUtlev.AsString);
  SetCellText(7,CurRow,  cds_AccInvInvoicedCust.AsString);
  SetCellText(8,CurRow,  '=C' + IntToStr(CurRow+2) + '+E' + IntToStr(CurRow+2) + '+H' + IntToStr(CurRow+2) + '-I' + IntToStr(CurRow));
  // =C15+E15+H15-I12);
  if FirstRec then
  SetCellText(9,CurRow,  '=' + GetInGoingInventory)
  else
  SetCellText(9,CurRow,  '=I' + IntToStr(CurRow+1) + '+J' + IntToStr(CurRow-12));
  //  =I27+J14

  //  SetCellText(9,CurRow,  cds_AccInvTotalInvChangeMill.AsString);
  //  SetCellText(10,CurRow,  cds_AccInvTotalInvMill.AsString);
  //  SetCellText(11,CurRow,  cds_AccInvBolag.AsString);
  //  cds_AccInv.Next ;
  CurRow  := succ(CurRow) ;
  // End ;

  SetCellText(0,CurRow, 'Totalt');
  SetCellText(2,CurRow,  '=SUM(C' + inttostr(FirstSumRow) +':C' + inttostr(CurRow) + ')');
  SetCellText(3,CurRow,  '=SUM(D' + inttostr(FirstSumRow) +':D' + inttostr(CurRow) + ')');
  SetCellText(4,CurRow,  '=SUM(E' + inttostr(FirstSumRow) +':E' + inttostr(CurRow) + ')');
  SetCellText(5,CurRow,  '=SUM(F' + inttostr(FirstSumRow) +':F' + inttostr(CurRow) + ')');
  SetCellText(6,CurRow,  '=SUM(G' + inttostr(FirstSumRow) +':G' + inttostr(CurRow) + ')');
  SetCellText(7,CurRow,  '=SUM(H' + inttostr(FirstSumRow) +':H' + inttostr(CurRow) + ')');
  //=I26+I27
  SetCellText(8,CurRow,  '=I' + IntToStr(CurRow-1) + '+I' + IntToStr(CurRow));
  SetCellText(9,CurRow,  '=J' + IntToStr(CurRow-1) + '+J' + IntToStr(CurRow));


  CurRow  := succ(CurRow) ;
  if FirstRec = False then
  Begin
  SetCellText(0,CurRow, 'Ackumelerad lagerminskning/ökning');
  // =I15+I28
  SetCellText(8,CurRow,  '=I' + IntToStr(CurRow) + '+I' + IntToStr(CurRow-12));
  End
  else
  SetCellText(8,CurRow,  '=I14');
  // else
  // SetCellText(0,CurRow, '--');


  CurRow  := succ(CurRow) ;
  CurRow  := succ(CurRow) ;
  End ;

  procedure TfAccInv.SetTitles ;
  Var x, CurRow : Integer ;
  Begin
  CurRow := 1 ;
  SetCellText(2,CurRow, 'Sågprod');
  SetCellText(3,CurRow, 'Int/Inköp');
  SetCellText(4,CurRow, 'Ext/Inköp');
  SetCellText(5,CurRow, 'Total/Inköp');
  SetCellText(6,CurRow, 'Utleveranser');
  SetCellText(7,CurRow, 'Fakturerat kund');
  SetCellText(8,CurRow, 'Lagerförändring');
  SetCellText(9,CurRow, 'Tot Lager');

  SetCellText(10,CurRow, 'Lagerförändring per enhet totalt');

  CurRow := 2 ;
  SetCellText(0,CurRow, 'Verk');
  SetCellText(1,CurRow, 'Vecka');

  For x := 2 to 10 do
  SetCellText(x,CurRow, 'NM3');
  End ;

  procedure TfAccInv.acParametrarExecute(Sender: TObject);
  var fAccParams: TfAccParams;
  begin
  fAccParams:= TfAccParams.Create(nil) ;
  try
  fAccParams.ShowModal ;
  ssAccLager.Recalc ;
  finally
  FreeAndNil(fAccParams) ;
  end;
  end;

*)

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
