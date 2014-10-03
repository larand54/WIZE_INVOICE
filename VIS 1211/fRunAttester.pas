unit fRunAttester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ExtCtrls, ActnList,
  ImgList, ComCtrls, ToolWin, Menus,
  StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxImageComboBox,
  cxCalendar, cxTextEdit, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxCalc, dxBar, dxBarExtItems,
  cxGridExportLink, cxSplitter, cxContainer, cxMaskEdit,
  cxDropDownEdit, Buttons, SqlTimSt, cxCurrencyEdit, cxLookAndFeelPainters,
  cxButtons ;

type
  TfrmRunAttester = class(TForm)
    PopupMenu1: TPopupMenu;
    Paymentrecieved1: TMenuItem;
    Progress1: TMenuItem;
    ImageList1: TImageList;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Panel3: TPanel;
    Panel1: TPanel;
    grdAvrRows: TcxGrid;
    grdAvrRowsDBTableView1: TcxGridDBTableView;
    grdAvrRowsLevel1: TcxGridLevel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    ActionList1: TActionList;
    acSpara: TAction;
    ImageList2: TImageList;
    acUppdatera: TAction;
    acSkrivUt: TAction;
    acClose: TAction;
    acAngraAndringar: TAction;
    acDeleteAvrakning: TAction;
    acExportToExcel: TAction;
    acSearchAvrNo: TAction;
    SaveDialog2: TSaveDialog;
    dxBarLargeButton8: TdxBarLargeButton;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel6: TPanel;
    grdPayment: TcxGrid;
    grdPaymentDBTableView1: TcxGridDBTableView;
    grdPaymentLevel1: TcxGridLevel;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    cxStyleclFuchsia: TcxStyle;
    Panel7: TPanel;
    bcCompany: TcxComboBox;
    peSenderStatus: TcxImageComboBox;
    Label1: TLabel;
    Label2: TLabel;
    dxBarLargeButton11: TdxBarLargeButton;
    cxStyleCreditToPaymentNo: TcxStyle;
    grdAvrRowsDBTableView1AttestNo: TcxGridDBColumn;
    grdAvrRowsDBTableView1RunNo: TcxGridDBColumn;
    grdAvrRowsDBTableView1ProductNo: TcxGridDBColumn;
    grdAvrRowsDBTableView1ProductDesc: TcxGridDBColumn;
    grdAvrRowsDBTableView1AM3: TcxGridDBColumn;
    grdAvrRowsDBTableView1NM3: TcxGridDBColumn;
    grdAvrRowsDBTableView1Pcs: TcxGridDBColumn;
    grdAvrRowsDBTableView1Pkgs: TcxGridDBColumn;
    grdAvrRowsDBTableView1Price: TcxGridDBColumn;
    grdAvrRowsDBTableView1RowValue: TcxGridDBColumn;
    grdAvrRowsDBTableView1RegPointName: TcxGridDBColumn;
    grdAvrRowsDBTableView1RunStartDate: TcxGridDBColumn;
    grdAvrRowsDBTableView1RunEndDate: TcxGridDBColumn;
    grdAvrRowsDBTableView1DateCreated: TcxGridDBColumn;
    grdAvrRowsDBTableView1CreatedUser: TcxGridDBColumn;
    grdAvrRowsDBTableView1RegPointNo: TcxGridDBColumn;
    grdPaymentDBTableView1AttestNo: TcxGridDBColumn;
    grdPaymentDBTableView1SupplierNo: TcxGridDBColumn;
    grdPaymentDBTableView1Status: TcxGridDBColumn;
    grdPaymentDBTableView1Skapad: TcxGridDBColumn;
    grdPaymentDBTableView1AM3: TcxGridDBColumn;
    grdPaymentDBTableView1NM3: TcxGridDBColumn;
    grdPaymentDBTableView1Styck: TcxGridDBColumn;
    grdPaymentDBTableView1Paket: TcxGridDBColumn;
    grdPaymentDBTableView1Vrde: TcxGridDBColumn;
    acRemoveRunFromAttest: TAction;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSparaUpdate(Sender: TObject);
    procedure acSparaExecute(Sender: TObject);
    procedure acUppdateraExecute(Sender: TObject);
    procedure acSkrivUtExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acAngraAndringarExecute(Sender: TObject);
    procedure acAngraAndringarUpdate(Sender: TObject);
    procedure acDeleteAvrakningExecute(Sender: TObject);
    procedure acSearchAvrNoExecute(Sender: TObject);
    procedure acExportToExcelExecute(Sender: TObject);
    procedure acExportToExcelUpdate(Sender: TObject);
    procedure peSenderStatusPropertiesChange(Sender: TObject);
    procedure bcCompanyPropertiesChange(Sender: TObject);
    procedure acDeleteAvrakningUpdate(Sender: TObject);
    procedure acRemoveRunFromAttestExecute(Sender: TObject);
    procedure acRemoveRunFromAttestUpdate(Sender: TObject);
  private
    { Private declarations }
    ExcelDir : String ;
    fSupplierNo: Integer ;
    function  DataSparat : Boolean ;
    procedure LoadUserPreferences;
    procedure SaveUserPreferences;
  public
    { Public declarations }
    procedure CreateCo(const CompanyNo : Integer);
  end;

var
  frmRunAttester: TfrmRunAttester;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsDataConn,
  UnitCRViewReport,
  dmsVidaContact,
  uEntryField ,
  dmsVidaSystem, uWait, dmcRunAttest;

{$R *.dfm}

procedure TfrmRunAttester.SaveUserPreferences;
begin
  // Save column widths so we can use same ones next time.
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPayment.Name, grdPaymentDBTableView1) ;
 dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdAvrRows.Name, grdAvrRowsDBTableView1) ;
end;

procedure TfrmRunAttester.LoadUserPreferences;
var
  LoadNo : String ;
  x      : Integer ;
begin
  ExcelDir          := dmsSystem.Get_Dir('ExcelDir') ;
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPayment.Name, grdPaymentDBTableView1) ;
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdAvrRows.Name, grdAvrRowsDBTableView1) ;
end;


procedure TfrmRunAttester.CreateCo(const CompanyNo : Integer);
Var x : Integer ;
begin
  dmsContact.LoadSuppliers(bcCompany.Properties.Items);
  For x:= 0 to bcCompany.Properties.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcCompany.Properties.Items.Objects[x]) then
  Begin
   bcCompany.ItemIndex:= x ;
   fSupplierNo:= integer(bcCompany.Properties.Items.Objects[x]);
  End ;
end;

procedure TfrmRunAttester.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmRunAttester.FormCreate(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if not Assigned(dmRunAttest) then
   dmRunAttest:= TdmRunAttest.Create(nil) ;
 End ;
 peSenderStatus.ItemIndex:= 0 ;
 LoadUserPreferences;
end;

procedure TfrmRunAttester.FormDestroy(Sender: TObject);
begin
 frmRunAttester:= Nil ;
end;

procedure TfrmRunAttester.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 SaveUserPreferences;
 With dmRunAttest do
 Begin
  cds_AttestRows.Active := False ;
  cds_AttestHdr.Active  := False ;
 End ;
 CanClose:= True ;
end;

procedure TfrmRunAttester.acSaveExecute(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if cds_AttestHdr.State in [dsEdit, dsInsert] then
   cds_AttestHdr.Post ;
  if cds_AttestHdr.ChangeCount > 0 then
   cds_AttestHdr.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmRunAttester.acCancelChangesExecute(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if cds_AttestHdr.ChangeCount > 0 then
   cds_AttestHdr.CancelUpdates ;
 End ;
end;

function TfrmRunAttester.DataSparat : Boolean ;
begin
 With dmRunAttest do
 Begin
  if cds_AttestHdr.Active = False then
  Begin
   Result:= True ;
   Exit ;
  End ;
  Result:= True ;
  if cds_AttestHdr.State in [dsInsert, dsEdit] then
   Result:= False ;

  if cds_AttestHdr.ChangeCount > 0 then
   Result:= False ;
 End ;
end;


procedure TfrmRunAttester.acSparaUpdate(Sender: TObject);
begin
  acSpara.Enabled:= not DataSparat ;
end;

procedure TfrmRunAttester.acSparaExecute(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if cds_AttestHdr.State in [dsEdit, dsInsert] then
   cds_AttestHdr.Post ;
  if cds_AttestHdr.ChangeCount > 0 then
   cds_AttestHdr.ApplyUpdates(0) ;

  if cds_AttestRows.State in [dsEdit, dsInsert] then
   cds_AttestRows.Post ;
  if cds_AttestRows.ChangeCount > 0 then
   cds_AttestRows.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmRunAttester.acUppdateraExecute(Sender: TObject);
Var    Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Try
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmRunAttest do
 Begin
  cds_AttestRows.Active := False ;
  cds_AttestHdr.Active  := False ;
  sq_AttestHdr.ParamByName('SupplierNo').AsInteger  := fSupplierNo ;
  sq_AttestHdr.ParamByName('Status').AsInteger      := peSenderStatus.ItemIndex ;
  cds_AttestHdr.Active  := True ;
  cds_AttestRows.Active := True ;
 End ;
 grdPayment.SetFocus ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmRunAttester.acSkrivUtExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 grdPayment.SetFocus ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 FormCRViewReport.CreateCo('AttestRun.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmRunAttest.cds_AttestHdrAttestNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;
end;

procedure TfrmRunAttester.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmRunAttester.acAngraAndringarExecute(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if cds_AttestHdr.State in [dsEdit, dsInsert] then
   cds_AttestHdr.Cancel ;  
  if cds_AttestHdr.ChangeCount > 0 then
   cds_AttestHdr.CancelUpdates ;
 End ;
end;

procedure TfrmRunAttester.acAngraAndringarUpdate(Sender: TObject);
begin
  acAngraAndringar.Enabled:= not DataSparat ;
end;

procedure TfrmRunAttester.acDeleteAvrakningExecute(Sender: TObject);
Var SupplierNo  : Integer ;
begin
 if MessageDlg('Vill du ta bort attesteringen?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmRunAttest do
 Begin
  cds_AttestHdr.Delete ;
  if cds_AttestHdr.ChangeCount > 0 then
    cds_AttestHdr.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmRunAttester.acSearchAvrNoExecute(Sender: TObject);
Var AvrNo  : Integer ;
    verk   : String;
    VerkNo : Integer ;
    fEntryField : TfEntryField ;
begin
 With dmRunAttest do
 Begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange LastNr' ;
  fEntryField.Label1.Caption:= 'LastNr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
//    AvrNo:= GetFraktAvrakningsNoForLoadNo(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0), Verk, VerkNo) ;
//    ShowMessage('Lastnr '+Trim(fEntryField.eNoofpkgs.Text)+' finns på avräkningsnr '+intToStr(AvrNo)+' verk '+verk) ;
   End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;

procedure TfrmRunAttester.acExportToExcelExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
  FileName: String ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 SaveDialog2.Filter := 'Excel files (*.xls)|*.xls';
 SaveDialog2.DefaultExt:= 'xls';
 SaveDialog2.InitialDir:= ExcelDir ;
 if SaveDialog2.Execute then
 Begin
  FileName:= SaveDialog2.FileName ;
  Try
  ExportGridToExcel(FileName, grdPayment, False, False, True,'xls');
  ShowMessage('Tabell exporterad till Excel fil '+FileName);
  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;


procedure TfrmRunAttester.acExportToExcelUpdate(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  acExportToExcel.Enabled:= (cds_AttestHdr.Active) and (cds_AttestHdr.RecordCount > 0) ;
 End ;
end;

procedure TfrmRunAttester.peSenderStatusPropertiesChange(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  if cds_AttestHdr.Active then
  cds_AttestHdr.Active:= False ;
 End ;
end;

procedure TfrmRunAttester.bcCompanyPropertiesChange(Sender: TObject);
begin
 fSupplierNo:= integer(bcCompany.Properties.Items.Objects[bcCompany.ItemIndex]);
 With dmRunAttest do
 Begin
  if cds_AttestHdr.Active then
  cds_AttestHdr.Active:= False ;
  cds_AttestRows.Active := False ;
 End ;
end;

procedure TfrmRunAttester.acDeleteAvrakningUpdate(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  acDeleteAvrakning.Enabled:= (cds_AttestHdr.Active)
  and (cds_AttestHdr.RecordCount > 0)
  and (cds_AttestHdrStatus.AsInteger < 2)
 End ;
end;

procedure TfrmRunAttester.acRemoveRunFromAttestExecute(Sender: TObject);
Var RunNo, AttestNo : Integer ;
begin
 With dmRunAttest do
 Begin
  if MessageDlg('Vill du plocka bort körning ' + cds_AttestRowsRunNo.AsString + ' från attesten?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   RunNo := cds_AttestRowsRunNo.AsInteger ;
   cds_AttestRows.Filter   := 'RunNo = ' + inttostr(RunNo) ;
   cds_AttestRows.Filtered := True ;
   Try
   cds_AttestRows.First ;
   While not cds_AttestRows.Eof do
   Begin
    cds_AttestRows.Delete ;
   End ;
   Finally
    cds_AttestRows.Filtered  := False ;
   End ;

   acSparaExecute(Sender) ;
   acUppdateraExecute(Sender) ;
  End ;//if MessageDlg('Vi
 End ;//With
end;

procedure TfrmRunAttester.acRemoveRunFromAttestUpdate(Sender: TObject);
begin
 With dmRunAttest do
 Begin
  acRemoveRunFromAttest.Enabled := (cds_AttestRows.Active) and (cds_AttestRows.RecordCount > 0) ;
 End ;
end;

end.
