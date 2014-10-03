unit uKontoLogik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, dxBar, cxLabel, cxRadioGroup,
  cxTextEdit, cxDBLookupComboBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxRibbonPainter;

Const
    CM_MOVEIT = WM_USER + 1;

type
  TfKontoLogik = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdKontoLogikDBTableView1: TcxGridDBTableView;
    grdKontoLogikLevel1: TcxGridLevel;
    grdKontoLogik: TcxGrid;
    grdKontoLogikDBTableView1SalesmangroupNo: TcxGridDBColumn;
    grdKontoLogikDBTableView1SalesregionNo: TcxGridDBColumn;
    grdKontoLogikDBTableView1CustomerCountryNo: TcxGridDBColumn;
    grdKontoLogikDBTableView1Trading: TcxGridDBColumn;
    grdKontoLogikDBTableView1PO_CountryNo: TcxGridDBColumn;
    grdKontoLogikDBTableView1VarugruppNo: TcxGridDBColumn;
    grdKontoLogikDBTableView1ForsaljningsKonto: TcxGridDBColumn;
    grdKontoLogikDBTableView1FraktKonto: TcxGridDBColumn;
    grdKontoLogikDBTableView1VatCode: TcxGridDBColumn;
    grdKontoLogikDBTableView1MomsKonto: TcxGridDBColumn;
    grdKontoLogikDBTableView1Salesgroup: TcxGridDBColumn;
    grdKontoLogikDBTableView1Salesregion: TcxGridDBColumn;
    grdKontoLogikDBTableView1SalesToCountry: TcxGridDBColumn;
    grdKontoLogikDBTableView1POFromCountry: TcxGridDBColumn;
    grdKontoLogikDBTableView1DateCreated: TcxGridDBColumn;
    grdKontoLogikDBTableView1DateModified: TcxGridDBColumn;
    grdKontoLogikDBTableView1CreatedUser: TcxGridDBColumn;
    grdKontoLogikDBTableView1ModifiedUser: TcxGridDBColumn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    ActionList1: TActionList;
    acExit: TAction;
    acSave: TAction;
    acDelete: TAction;
    acAdd: TAction;
    acPrint: TAction;
    acCancelChanges: TAction;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    grdKontoLogikDBBandedTableView1: TcxGridDBBandedTableView;
    grdKontoLogikDBBandedTableView1SalesmangroupNo: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1SalesregionNo: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1CustomerCountryNo: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1Trading: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1PO_CountryNo: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1ForsaljningsKonto: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1FraktKonto: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1VatCode: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1MomsKonto: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1Salesgroup: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1Salesregion: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1SalesToCountry: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1DateModified: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    grdKontoLogikDBBandedTableView1Moms: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1Artikel: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1VarugruppNo: TcxGridDBBandedColumn;
    grdKontoLogikDBBandedTableView1PO_Country: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    acAvdelning: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure acExitExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure acPrintUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdKontoLogikDBBandedTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acAvdelningExecute(Sender: TObject);
  private
    { Private declarations }
    function  DataSaved : Boolean ;
    procedure CMMoveIt(var Msg: TMessage); message CM_MOVEIT;
  public
    { Public declarations }
  end;

var  fKontoLogik: TfKontoLogik;

implementation

uses dmsDataConn, dmLM1, dmsVidaSystem, uAvdelning;

{$R *.dfm}

procedure TfKontoLogik.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
   AGoForward := Boolean(Msg.WParam);
   grdKontoLogikDBBandedTableView1.Controller.EditingController.HideEdit(True);
   grdKontoLogikDBBandedTableView1.Controller.FocusNextCell(AGoForward)
end;

procedure TfKontoLogik.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfKontoLogik.acSaveExecute(Sender: TObject);
begin
 With daMoLM1 do
 begin
  if cds_KontoLogik.State in [dsEdit, dsInsert] then
   cds_KontoLogik.Post ;
  if cds_KontoLogik.ChangeCount > 0 then
  Begin
   cds_KontoLogik.ApplyUpdates(0) ;
   cds_KontoLogik.CommitUpdates ;
  End ;
 End ;
end;

procedure TfKontoLogik.acDeleteExecute(Sender: TObject);
begin
 With daMoLM1 do
 begin
  cds_KontoLogik.Delete ;
 End ;
end;

procedure TfKontoLogik.acAddExecute(Sender: TObject);
begin
 With daMoLM1 do
 begin
  cds_KontoLogik.Insert ;
 End ;
end;

procedure TfKontoLogik.acPrintExecute(Sender: TObject);
begin
// dxComponentPrinter1.PrintTitle:= 'AvräkningNr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Avräkningsnr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Avräknad: '+SQLTimeStampToStr('yyyy-mm-dd',cds_LoadFreightCostHeader2AvrakningsDate.AsSQLTimeStamp)) ;
//  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Fakturanr: '+cds_LoadFreightCostHeader2ShippersInvoiceNo.AsString) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add('Konton') ;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfKontoLogik.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled := not DataSaved ;
end;

function TfKontoLogik.DataSaved : Boolean ;
begin
 With daMoLM1 do
 begin
  Result  := True ;
  if cds_KontoLogik.State in [dsEdit, dsInsert] then
   Result := False ;
  if cds_KontoLogik.ChangeCount > 0 then
   Result := False ;
 End ;
end;


procedure TfKontoLogik.acAvdelningExecute(Sender: TObject);
var fAvdelning: TfAvdelning;
begin
  fAvdelning:= TfAvdelning.Create(nil) ;
  Try
   fAvdelning.ShowModal ;
  Finally
    FreeAndNil(fAvdelning) ;
  End;
end;

procedure TfKontoLogik.acCancelChangesExecute(Sender: TObject);
begin
 With daMoLM1 do
 begin
  if cds_KontoLogik.State in [dsEdit, dsInsert] then
   cds_KontoLogik.Cancel ;
  if cds_KontoLogik.ChangeCount > 0 then
  Begin
   cds_KontoLogik.CancelUpdates ;
  End ;
 End ;
end;

procedure TfKontoLogik.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved ;
end;

procedure TfKontoLogik.acDeleteUpdate(Sender: TObject);
begin
 With daMoLM1 do
 begin
  acDelete.Enabled  := (cds_KontoLogik.Active) and ((cds_KontoLogik.RecordCount > 0)
  or (cds_KontoLogik.State in [dsEdit, dsInsert])) ;
 End ;
end;

procedure TfKontoLogik.acPrintUpdate(Sender: TObject);
begin
 With daMoLM1 do
 begin
  acPrint.Enabled  := (cds_KontoLogik.Active) and ((cds_KontoLogik.RecordCount > 0)
  or (cds_KontoLogik.State in [dsEdit, dsInsert])) ;
 End ;
end;

procedure TfKontoLogik.FormCreate(Sender: TObject);
begin
 if (not Assigned(daMoLM1)) then
 daMoLM1  := TdaMoLM1.Create(nil);
 dmsSystem.AssignDMToThisWork('TfKontoLogik', 'daMoLM1') ;

 With daMoLM1 do
 begin
  cds_KontoLogik.Active := True ;
 End ;
end;

procedure TfKontoLogik.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 With daMoLM1 do
 begin
  if not DataSaved then
  Begin
   if MessageDlg('Data är inte sparad, vill du stänga?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    CanClose := True ;
    cds_KontoLogik.Active := False ;
   End
    else
     CanClose  := False ;
  End
   else
    CanClose := True ;
 End ;
end;

procedure TfKontoLogik.grdKontoLogikDBBandedTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfKontoLogik.FormDestroy(Sender: TObject);
begin
 fKontoLogik  := nil ;

  if dmsSystem.DeleteAssigned('TfKontoLogik', 'daMoLM1') = True then
  Begin
   daMoLM1.Free ;
   daMoLM1 := Nil ;
  End ;
end;

procedure TfKontoLogik.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree ;
end;

end.
