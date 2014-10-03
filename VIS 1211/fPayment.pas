unit fPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ExtCtrls, dxDBGrid, dxTL, dxDBCtrl, dxCntner, ActnList,
  ImgList, ComCtrls, ToolWin, dxEditor, dxExEdtr, dxEdLib, Menus, dxDBTLCl,
  dxGrClms, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxImageComboBox,
  cxCalendar, cxTextEdit, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxCalc, dxBar, dxBarExtItems,
  cxGridExportLink  ;

type
  TfrmPayment = class(TForm)
    Splitter1: TSplitter;
    PopupMenu1: TPopupMenu;
    Paymentrecieved1: TMenuItem;
    Progress1: TMenuItem;
    ImageList1: TImageList;
    grdPaymentDBTableView1: TcxGridDBTableView;
    grdPaymentLevel1: TcxGridLevel;
    grdPayment: TcxGrid;
    grdPaymentDBTableView1PaymentNo: TcxGridDBColumn;
    grdPaymentDBTableView1SenderStatus: TcxGridDBColumn;
    grdPaymentDBTableView1DateCreated: TcxGridDBColumn;
    grdPaymentDBTableView1MILL_InvoiceNo: TcxGridDBColumn;
    grdPaymentDBTableView1CustName: TcxGridDBColumn;
    cxLookAndFeelController1: TcxLookAndFeelController;
    Panel3: TPanel;
    Panel1: TPanel;
    grdAvrRows: TcxGrid;
    grdAvrRowsDBTableView1: TcxGridDBTableView;
    grdAvrRowsDBTableView1AVRAKNING_NO: TcxGridDBColumn;
    grdAvrRowsDBTableView1INITIALS: TcxGridDBColumn;
    grdAvrRowsDBTableView1VIS_FS: TcxGridDBColumn;
    grdAvrRowsDBTableView1MILL_FS: TcxGridDBColumn;
    grdAvrRowsDBTableView1LOAD_DATE: TcxGridDBColumn;
    grdAvrRowsDBTableView1CUSTOMER: TcxGridDBColumn;
    grdAvrRowsDBTableView1AKT_THICK: TcxGridDBColumn;
    grdAvrRowsDBTableView1AKT_WIDTH: TcxGridDBColumn;
    grdAvrRowsDBTableView1ACT_M3: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_LPM: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_THICK: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_WIDTH: TcxGridDBColumn;
    grdAvrRowsDBTableView1NOM_M3: TcxGridDBColumn;
    grdAvrRowsDBTableView1PRICE: TcxGridDBColumn;
    grdAvrRowsDBTableView1VALUE: TcxGridDBColumn;
    grdAvrRowsDBTableView1MOMS_VALUE: TcxGridDBColumn;
    grdAvrRowsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdAvrRowsDBTableView1CUSTOMER_1: TcxGridDBColumn;
    grdAvrRowsDBTableView1GRADENAME: TcxGridDBColumn;
    grdAvrRowsLevel1: TcxGridLevel;
    grdPaymentDBTableView1NM3: TcxGridDBColumn;
    grdPaymentDBTableView1VRDE: TcxGridDBColumn;
    Panel4: TPanel;
    Label1: TLabel;
    bcCompany: TdxPickEdit;
    Label2: TLabel;
    peSenderStatus: TdxPickEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcCompanyChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Paymentrecieved1Click(Sender: TObject);
    procedure Progress1Click(Sender: TObject);
    procedure peSenderStatusChange(Sender: TObject);
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
  private
    { Private declarations }
    ExcelDir : String ;
    fSupplierNo: Integer ;
    function  DataSparat : Boolean ;
    procedure LoadUserPreferences;
    procedure SaveUserPreferences;
  public
    { Public declarations }
    procedure CreateCo(const CompanyNo, TypeOfPayment: Integer);
  end;

var
  frmPayment: TfrmPayment;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, UnitdmModule1, dmsDataConn, dmcVidaPayment,
  UnitCRViewReport, dmsVidaContact, uEntryField , dmsVidaSystem;

{$R *.dfm}

procedure TfrmPayment.SaveUserPreferences;
begin
  // Save column widths so we can use same ones next time.
end;

procedure TfrmPayment.LoadUserPreferences;
begin
  ExcelDir:=  dmsSystem.Get_Dir('ExcelDir') ;
end;


procedure TfrmPayment.CreateCo(const CompanyNo, TypeOfPayment: Integer);
Var x : Integer ;
begin
  dmsContact.LoadSuppliers(bcCompany.Items);
  For x:= 0 to bcCompany.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcCompany.Items.Objects[x]) then
  Begin
   bcCompany.ItemIndex:= x ;
   fSupplierNo:= integer(bcCompany.Items.Objects[x]);
  End ;
end;

procedure TfrmPayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfrmPayment.bcCompanyChange(Sender: TObject);
begin
 fSupplierNo:= integer(bcCompany.Items.Objects[bcCompany.ItemIndex]);
 acUppdateraExecute(Sender) ;
end;

procedure TfrmPayment.FormCreate(Sender: TObject);
begin
 dmcPayment:= TdmcPayment.Create(self);
 peSenderStatus.ItemIndex:= 0 ;
 LoadUserPreferences;
end;

procedure TfrmPayment.Paymentrecieved1Click(Sender: TObject);
begin
 With dmcPayment do
 Begin
  cdsPaymentHead.Edit ;
  cdsPaymentHeadSenderStatus.AsInteger:= 1 ;
  cdsPaymentHead.Post ;
 End ;
end;

procedure TfrmPayment.Progress1Click(Sender: TObject);
begin
 With dmcPayment do
 Begin
  cdsPaymentHead.Edit ;
  cdsPaymentHeadSenderStatus.AsInteger:= 0 ;
  cdsPaymentHead.Post ;
 End ;
end;

procedure TfrmPayment.peSenderStatusChange(Sender: TObject);
begin
 acUppdateraExecute(Sender) ;
end;

procedure TfrmPayment.FormDestroy(Sender: TObject);
begin
 frmPayment:= Nil ;
 FreeAndNil(dmcPayment) ;
end;

procedure TfrmPayment.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 SaveUserPreferences;
 With dmcPayment do
 Begin
  cdsPaymentHead.Active:= False ;
//  sq_PaymentLoadList.Close ;
  cdsPaymentLoadListII.Active:= False ;
 End ;
 CanClose:= True ;
end;

procedure TfrmPayment.acSaveExecute(Sender: TObject);
begin
 With dmcPayment do
 Begin
  if cdsPaymentHead.State in [dsEdit, dsInsert] then
   cdsPaymentHead.Post ;
  if cdsPaymentHead.ChangeCount > 0 then
   cdsPaymentHead.ApplyUpdates(0) ;
 End ;
end;

procedure TfrmPayment.acCancelChangesExecute(Sender: TObject);
begin
 With dmcPayment do
 Begin
  if cdsPaymentHead.ChangeCount > 0 then
   cdsPaymentHead.CancelUpdates ;
 End ;
end;

function TfrmPayment.DataSparat : Boolean ;
begin
 With dmcPayment do
 Begin
  Result:= True ;
  if cdsPaymentHead.State in [dsInsert, dsEdit] then
   Result:= False ;

  if cdsPaymentHead.ChangeCount > 0 then
   Result:= False ;
 End ;
end;


procedure TfrmPayment.acSparaUpdate(Sender: TObject);
begin
  acSpara.Enabled:= not DataSparat ;
end;

procedure TfrmPayment.acSparaExecute(Sender: TObject);
begin
 With dmcPayment do
 Begin
  if cdsPaymentHead.State in [dsEdit, dsInsert] then
   cdsPaymentHead.Post ;
  if cdsPaymentHead.ChangeCount > 0 then
   cdsPaymentHead.ApplyUpdates(0) ;
 End ;

end;

procedure TfrmPayment.acUppdateraExecute(Sender: TObject);
Var    Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Try

 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 With dmcPayment do
 Begin
  cdsPaymentHead.Active:= False ;
  sq_PaymentHead.Close ;
  sq_PaymentHead.ParamByName('SupplierNo').AsInteger := fSupplierNo ;
  sq_PaymentHead.ParamByName('SenderStatus').AsInteger := peSenderStatus.ItemIndex ;
  cdsPaymentHead.Active:= True ;
  cdsPaymentLoadListII.Active:= False ;
//  sq_PaymentLoadList.Close ;
//  sq_PaymentLoadList.Open ;
  cdsPaymentLoadListII.Active:= True ;
 End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;



end;

procedure TfrmPayment.acSkrivUtExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmcPayment.cdsPaymentHeadPaymentNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('AVRAKNING_2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcPayment.cdsPaymentHeadPaymentNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;
 End ;
end;

procedure TfrmPayment.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPayment.acAngraAndringarExecute(Sender: TObject);
begin
 With dmcPayment do
 Begin
  if cdsPaymentHead.ChangeCount > 0 then
   cdsPaymentHead.CancelUpdates ;
 End ;
end;

procedure TfrmPayment.acAngraAndringarUpdate(Sender: TObject);
begin
  acAngraAndringar.Enabled:= not DataSparat ;
end;

procedure TfrmPayment.acDeleteAvrakningExecute(Sender: TObject);
begin
 if MessageDlg('Vill du ta bort?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     dmcPayment.cdsPaymentHead.Delete ;
     if dmcPayment.cdsPaymentHead.ChangeCount > 0 then
     dmcPayment.cdsPaymentHead.ApplyUpdates(0) ;
    End ;
end;

procedure TfrmPayment.acSearchAvrNoExecute(Sender: TObject);
Var AvrNo  : Integer ;
    verk   : String;
    VerkNo : Integer ;
    fEntryField : TfEntryField ;
begin
 With dmcPayment do
 Begin
  fEntryField:= TfEntryField.Create(Nil);
  fEntryField.Caption:= 'Ange LastNr' ;
  fEntryField.Label1.Caption:= 'LastNr:' ;
  Try
   if fEntryField.ShowModal = mrOK then
   Begin
    AvrNo:= GetFraktAvrakningsNoForLoadNo(StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0), Verk, VerkNo) ;
    ShowMessage('Lastnr '+Trim(fEntryField.eNoofpkgs.Text)+' finns på avräkningsnr '+intToStr(AvrNo)+' verk '+verk) ;
   End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;

procedure TfrmPayment.acExportToExcelExecute(Sender: TObject);
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


procedure TfrmPayment.acExportToExcelUpdate(Sender: TObject);
begin
 acExportToExcel.Enabled:= dmcPayment.cdsPaymentHead.RecordCount > 0 ;
end;

end.
