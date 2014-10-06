unit uTradingAnalyze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseListForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, ActnList, dxBar,
  cxClasses, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxGridBandedTableView, cxGridDBBandedTableView, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  SqlTimSt, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridExportLink,
  cxExport, cxCalc, cxCurrencyEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxRibbonPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, System.Actions;

type
  TfTradingAnalyze = class(TfBaseListForm)
    grdTradingAnalyzeLevel1: TcxGridLevel;
    grdTradingAnalyze: TcxGrid;
    grdTradingAnalyzeDBBandedTableView1: TcxGridDBBandedTableView;
    grdTradingAnalyzeDBBandedTableView1Lev: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Kontraktnr: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Fakturanr: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Fakturadatum: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Belopp_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_Belopp_SEK: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_ProduktVrde_Valuta
      : TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1PO_AM3: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Valuta: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_ProduktVrde_Valuta
      : TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_AM3: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Belopp_Valuta
      : TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Belopp_SEK: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Kund: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Fakturanr: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Sales_Fakturadatum
      : TcxGridDBBandedColumn;
    deStartPeriod: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    deEndPeriod: TcxDBDateEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxLabel2: TcxLabel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    grdTradingAnalyzeDBBandedTableView1POPrefix: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1Diff_SEK: TcxGridDBBandedColumn;
    acSaveLayout: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    acOpenPOInvoice: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    grdTradingAnalyzeDBBandedTableView1POIntInvNo: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1SalesIntInvNo: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1FR: TcxGridDBBandedColumn;
    grdTradingAnalyzeDBBandedTableView1DiffOfSales: TcxGridDBBandedColumn;
    acOpenSalesInvoice: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure acRefreshExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
    procedure acExportXLSExecute(Sender: TObject);
    procedure acSaveLayoutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acOpenPOInvoiceExecute(Sender: TObject);
    procedure acOpenSalesInvoiceExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acOpenPOInvoiceUpdate(Sender: TObject);
    procedure acOpenSalesInvoiceUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst,
      DelKredit: Integer);
  public
    { Public declarations }
  end;

var
  fTradingAnalyze: TfTradingAnalyze;

implementation

uses UnitdmModule1, VidaUser, dmsVidaSystem, dmcVidaInvoice, fInvoice;

{$R *.dfm}

procedure TfTradingAnalyze.acRefreshExecute(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    sp_Vis_GenTradingAnalyze.Close;
    sp_Vis_GenTradingAnalyze.ParamByName('@StartDate').AsSQLTimeStamp :=
      DateTimeToSQLTimeStamp(cds_PropsStartPeriod.AsDateTime);
    sp_Vis_GenTradingAnalyze.ParamByName('@EndDate').AsSQLTimeStamp :=
      DateTimeToSQLTimeStamp(cds_PropsEndPeriod.AsDateTime);
    sp_Vis_GenTradingAnalyze.Open;
  End;
end;

procedure TfTradingAnalyze.acPrintExecute(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.ShrinkToPageWidth := True;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Trading');

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add
    ('Period: ' + deStartPeriod.Text + ' - ' + deEndPeriod.Text);

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfTradingAnalyze.FormDestroy(Sender: TObject);
begin
  inherited;
  fTradingAnalyze := NIL;

  if dmsSystem.DeleteAssigned('TfTradingAnalyze', 'dmVidaInvoice') = True then
  Begin
    dmVidaInvoice.Free;
    dmVidaInvoice := Nil;
  End;
end;

procedure TfTradingAnalyze.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Self.Name;
end;

procedure TfTradingAnalyze.acExportXLSExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  ExcelDir, FileName: String;
begin
  inherited;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  ExcelDir := dmsSystem.Get_Dir('ExcelDir');
  Try
    SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
    SaveDialog1.DefaultExt := 'xls';
    SaveDialog1.InitialDir := ExcelDir;
    if SaveDialog1.Execute then
    Begin
      FileName := SaveDialog1.FileName;
      Try
        ExportGridToExcel(FileName, grdTradingAnalyze, False, False,
          True, 'xls');
        ShowMessage('Tabell exporterad till Excel fil ' + FileName);
      Except
      End;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfTradingAnalyze.acSaveLayoutExecute(Sender: TObject);
begin
  inherited;
  dmsSystem.StoreGridLayout(ThisUser.UserID, grdTradingAnalyze.Name,
    grdTradingAnalyzeDBBandedTableView1);
end;

procedure TfTradingAnalyze.FormShow(Sender: TObject);
begin
  inherited;
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdTradingAnalyze.Name,
    grdTradingAnalyzeDBBandedTableView1);
end;

procedure TfTradingAnalyze.acOpenPOInvoiceExecute(Sender: TObject);
begin
  inherited;
  with dmModule1 do
  Begin
    OpenInvoice(grdTradingAnalyzeDBBandedTableView1.DataController.DataSet.
      FieldByName('POIntInvNo').AsInteger, -1, -1);
  End;
end;

procedure TfTradingAnalyze.OpenInvoice(const IntInvNo, IntInvNoToAttestAgainst,
  DelKredit: Integer);
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

procedure TfTradingAnalyze.acOpenSalesInvoiceExecute(Sender: TObject);
begin
  inherited;
  with dmModule1 do
  Begin
    OpenInvoice(grdTradingAnalyzeDBBandedTableView1.DataController.DataSet.
      FieldByName('SalesIntInvNo').AsInteger, -1, -1);
  End;
end;

procedure TfTradingAnalyze.FormCreate(Sender: TObject);
begin
  inherited;
  if (not Assigned(dmVidaInvoice)) then
    dmVidaInvoice := TdmVidaInvoice.Create(nil);
  dmsSystem.AssignDMToThisWork('TfTradingAnalyze', 'dmVidaInvoice');
end;

procedure TfTradingAnalyze.acOpenPOInvoiceUpdate(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    acOpenPOInvoice.Enabled :=
      (grdTradingAnalyzeDBBandedTableView1.DataController.DataSet.Active) and
      (grdTradingAnalyzeDBBandedTableView1.DataController.DataSet.
      RecordCount > 0);
  End;
end;

procedure TfTradingAnalyze.acOpenSalesInvoiceUpdate(Sender: TObject);
begin
  inherited;
  With dmModule1 do
  Begin
    acOpenSalesInvoice.Enabled :=
      (grdTradingAnalyzeDBBandedTableView1.DataController.DataSet.Active) and
      (grdTradingAnalyzeDBBandedTableView1.DataController.DataSet.
      RecordCount > 0);
  End;
end;

end.
