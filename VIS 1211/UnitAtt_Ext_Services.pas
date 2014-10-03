unit UnitAtt_Ext_Services;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ExtCtrls, dxDBTLCl, dxGrClms, dxEdLib, dxDBELib, dxEditor, dxExEdtr,
  dxDBEdtr, StdCtrls, DB, ImgList;

type
  TfrmAtt_Ext_Services = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbNew: TdxBarLargeButton;
    lbDelete: TdxBarLargeButton;
    lbSave: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    Panel1: TPanel;
    Panel2: TPanel;
    dxDBPickDESC: TdxDBPickEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBSUPPINVNO: TdxDBEdit;
    dxDBAMOUNT: TdxDBEdit;
    dxDBLookupSUPPLIER: TdxDBLookupEdit;
    dxDBMNOTE: TdxDBMemo;
    lbCancel: TdxBarLargeButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dxDBLookupCURRENCY: TdxDBLookupEdit;
    Label8: TLabel;
    dxDBEdit7: TdxDBEdit;
    lbEdit: TdxBarLargeButton;
    grdAttest: TdxDBGrid;
    grdAttestInternalInvoiceNo: TdxDBGridMaskColumn;
    grdAttestSequensNo: TdxDBGridMaskColumn;
    grdAttestDescription: TdxDBGridMaskColumn;
    grdAttestSupplier_InvoiceNo: TdxDBGridMaskColumn;
    grdAttestSupplier_InvoiceDate: TdxDBGridColumn;
    grdAttestAmount: TdxDBGridMaskColumn;
    grdAttestCurrencyNo: TdxDBGridMaskColumn;
    grdAttestSupplierNo: TdxDBGridMaskColumn;
    grdAttestNote: TdxDBGridMemoColumn;
    grdAttestCreatedDate: TdxDBGridColumn;
    grdAttestCreatedUser: TdxDBGridMaskColumn;
    grdAttestModifiedDate: TdxDBGridColumn;
    grdAttestModifiedUser: TdxDBGridMaskColumn;
    grdAttestSUPPLIER: TdxDBGridLookupColumn;
    grdAttestShippingPlanNo: TdxDBGridMaskColumn;
    grdAttestCURRENCY: TdxDBGridLookupColumn;
    dxDBDateSUPPINVDATE: TdxDBDateEdit;
    ImageList1: TImageList;
    dxDBEdit8: TdxDBEdit;
    Bevel1: TBevel;
    lbPrint: TdxBarLargeButton;
    Label9: TLabel;
    Label10: TLabel;
    procedure lbNewClick(Sender: TObject);
    procedure lbSaveClick(Sender: TObject);
    procedure lbDeleteClick(Sender: TObject);
    procedure lbCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbPrintClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure RefreshAttestGrid(Sender: TObject);
  end;

var
  frmAtt_Ext_Services: TfrmAtt_Ext_Services;

implementation

uses dmcVidaInvoice, UnitCRViewReport, dmsVidaContact;

{$R *.dfm}

procedure TfrmAtt_Ext_Services.lbNewClick(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
//  cds_Att_Ext_ServicesII.ReadOnly:= False ; 
  cds_Att_Ext_ServicesII.Insert ;
//  cds_Att_Ext_ServicesII.Post ;
  lbNew.Enabled:= False ;
  lbCancel.Enabled:= True ;
  lbSave.Enabled:= True ;
  lbEdit.Enabled:= False ;

 End ;
end;

procedure TfrmAtt_Ext_Services.lbSaveClick(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  if cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert] then
   cds_Att_Ext_ServicesII.Post ;
  if cds_Att_Ext_ServicesII.ChangeCount > 0 then
   cds_Att_Ext_ServicesII.ApplyUpdates(0) ;
 // RefreshAttestGrid(Sender) ;
  lbNew.Enabled:= True ;
  lbCancel.Enabled:= False ;
  lbSave.Enabled:= True ;
  lbEdit.Enabled:= True ;
  lbDelete.Enabled:= True ;
//  cds_Att_Ext_ServicesII.ReadOnly:= True ;
 End ;


end;

procedure TfrmAtt_Ext_Services.lbDeleteClick(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  if cds_Att_Ext_ServicesII.ChangeCount = 0 then
   Begin
    cds_Att_Ext_ServicesII.Delete ;
    cds_Att_Ext_ServicesII.ApplyUpdates(0) ;
    RefreshAttestGrid(Sender) ;
    lbNew.Enabled:= True ;
    lbCancel.Enabled:= False ;
    lbSave.Enabled:= True ;

  if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
   Begin
    lbDelete.Enabled:= True ;
    lbEdit.Enabled:= True ;
   End
    else
     Begin
      lbDelete.Enabled:= False ;
      lbEdit.Enabled:= False ;
     End ;

//    cds_Att_Ext_ServicesII.ReadOnly:= True ;
   End ;
 End ;
end;

procedure TfrmAtt_Ext_Services.lbCancelClick(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin
  if cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert] then
   cds_Att_Ext_ServicesII.Cancel ;
  if cds_Att_Ext_ServicesII.ChangeCount > 0 then
   Begin
    cds_Att_Ext_ServicesII.CancelUpdates ;
   End ;

    lbNew.Enabled:= True ;
    lbCancel.Enabled:= False ;
    lbSave.Enabled:= True ;
  if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
   Begin
    lbDelete.Enabled:= True ;
    lbEdit.Enabled:= True ;
   End
    else
     Begin
      lbDelete.Enabled:= False ;
      lbEdit.Enabled:= False ;
     End ;
//   cds_Att_Ext_ServicesII.ReadOnly:= True ;
 End ;
end;

procedure TfrmAtt_Ext_Services.RefreshAttestGrid(Sender: TObject);
Begin
{ With dmVidaInvoice do
 Begin
  cds_Att_Ext_ServicesII.Active:= False ;
  sq_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo').AsInteger:= daMoLM1.cdsInvoiceListINT_INVNO.AsInteger ;
  sq_Att_Ext_ServicesII.ParamByName('ShippingPlanNo').AsInteger:= daMoLM1.cdsInvoiceListLO.AsInteger ;
  cds_Att_Ext_ServicesII.Active:= True ;
 End ; }
End ;

procedure TfrmAtt_Ext_Services.FormCreate(Sender: TObject);
begin
   if dmVidaInvoice.cds_Currency.Active = False then
    dmVidaInvoice.cds_Currency.Active:= true ;
end;

procedure TfrmAtt_Ext_Services.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmAtt_Ext_Services.FormShow(Sender: TObject);
begin
 lbCancel.Enabled:= False ;
 lbSave.Enabled:= True ;
// dmVidaInvoice.cds_Att_Ext_ServicesII.ReadOnly:= True ;

 dmVidaInvoice.sq_Att_Ext_ServicesII.Close ;
 dmVidaInvoice.sq_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo').AsInteger:= dmVidaInvoice.cdsInvoiceListINT_INVNO.AsInteger ;
 dmVidaInvoice.sq_Att_Ext_ServicesII.ParamByName('ShippingPlanNo').AsInteger:= dmVidaInvoice.cdsInvoiceListLO.AsInteger ;
 dmVidaInvoice.sq_Att_Ext_ServicesII.Open ;

 dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= True ;

  if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
  Begin
   lbDelete.Enabled:= True ;
   lbEdit.Enabled:= True ;
  End
   else
    Begin
     lbDelete.Enabled:= False ;
     lbEdit.Enabled:= False ;
    End ;
end;

procedure TfrmAtt_Ext_Services.lbEditClick(Sender: TObject);
begin
  lbNew.Enabled:= False ;
  lbCancel.Enabled:= True ;
  lbSave.Enabled:= True ;
  lbDelete.Enabled:= False ;
  lbEdit.Enabled:= False ;
//  dmVidaInvoice.cds_Att_Ext_ServicesII.ReadOnly:= False ;
end;

procedure TfrmAtt_Ext_Services.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 With dmVidaInvoice do
 Begin
  if (cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert]) or (cds_Att_Ext_ServicesII.ChangeCount > 0) then
  Begin
  if MessageDlg('Data ej sparad, vill du spara?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   lbSaveClick(Sender) ;
  End ;
   Close ;
 End ;
end;

procedure TfrmAtt_Ext_Services.lbPrintClick(Sender: TObject);
begin
 With dmVidaInvoice do
 Begin

 if (cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert]) or (cds_Att_Ext_ServicesII.ChangeCount > 0) then
 Begin
  ShowMessage('Please save data first') ;
  Exit ;
 End ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('ATTEST.RPT',Application.ExeName) ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(cds_Att_Ext_ServicesIIInternalInvoiceNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(cds_Att_Ext_ServicesIIShippingPlanNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport) ;//.Free ;
 End ;
End ; // with

end;

procedure TfrmAtt_Ext_Services.FormDestroy(Sender: TObject);
begin
 dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= False ;
end;

end.

