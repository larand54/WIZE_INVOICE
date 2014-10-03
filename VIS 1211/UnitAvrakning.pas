unit UnitAvrakning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, ExtCtrls, dxEditor, dxEdLib, dxDBELib, StdCtrls, db, dxExEdtr,
  dxDBEdtr, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel ;

type
  TfrmAvrakning = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbSaveInvoice: TdxBarLargeButton;
    lbCancelInvoice: TdxBarLargeButton;
    lbPrintInvoice: TdxBarLargeButton;
    ImageList1: TImageList;
    Panel1: TPanel;
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    Label4: TLabel;
    Label5: TLabel;
    grdAvrakningDBTableView1: TcxGridDBTableView;
    grdAvrakningLevel1: TcxGridLevel;
    grdAvrakning: TcxGrid;
    grdAvrakningDBTableView1AVRAKNING_NO: TcxGridDBColumn;
    grdAvrakningDBTableView1INITIALS: TcxGridDBColumn;
    grdAvrakningDBTableView1VIS_FS: TcxGridDBColumn;
    grdAvrakningDBTableView1MILL_FS: TcxGridDBColumn;
    grdAvrakningDBTableView1LOAD_DATE: TcxGridDBColumn;
    grdAvrakningDBTableView1CUSTOMER: TcxGridDBColumn;
    grdAvrakningDBTableView1AKT_THICK: TcxGridDBColumn;
    grdAvrakningDBTableView1AKT_WIDTH: TcxGridDBColumn;
    grdAvrakningDBTableView1ACT_M3: TcxGridDBColumn;
    grdAvrakningDBTableView1NOM_LPM: TcxGridDBColumn;
    grdAvrakningDBTableView1NOM_THICK: TcxGridDBColumn;
    grdAvrakningDBTableView1NOM_WIDTH: TcxGridDBColumn;
    grdAvrakningDBTableView1NOM_M3: TcxGridDBColumn;
    grdAvrakningDBTableView1PRICE: TcxGridDBColumn;
    grdAvrakningDBTableView1VALUE: TcxGridDBColumn;
    grdAvrakningDBTableView1MOMS_VALUE: TcxGridDBColumn;
    grdAvrakningDBTableView1SUPPCODE: TcxGridDBColumn;
    grdAvrakningDBTableView1CUSTOMER_1: TcxGridDBColumn;
    grdAvrakningDBTableView1CUSTOMERNO: TcxGridDBColumn;
    grdAvrakningDBTableView1CountryNo: TcxGridDBColumn;
    grdAvrakningDBTableView1GRADENAME: TcxGridDBColumn;
    grdAvrakningDBTableView1MILL_INVOICE_NO: TcxGridDBColumn;
    grdAvrakningDBTableView1NLMM: TcxGridDBColumn;
    procedure lbCancelInvoiceClick(Sender: TObject);
    procedure lbSaveInvoiceClick(Sender: TObject);
    procedure lbPrintInvoiceClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmAvrakning: TfrmAvrakning;

implementation

uses dmcVidaPayment, UnitCRViewReport, dmsVidaContact, dmsDataConn, VidaUser ;

{$R *.dfm}

procedure TfrmAvrakning.lbCancelInvoiceClick(Sender: TObject);
begin
 dmcPayment.AngraAvrakning:= True ;
 dmcPayment.cdsPayHead.Delete ;
 if  dmcPayment.cdsPayHead.ChangeCount > 0 then
   dmcPayment.cdsPayHead.ApplyUpdates(0) ;
 Close ;
end;

procedure TfrmAvrakning.lbSaveInvoiceClick(Sender: TObject);
begin
 if dmcPayment.cdsPayHead.State in [dsEdit, dsInsert] then
  dmcPayment.cdsPayHead.Post ;

 if dmcPayment.cdsPayHead.ChangeCount > 0 then
   dmcPayment.cdsPayHead.ApplyUpdates(0) ;

 Close ;
end;

procedure TfrmAvrakning.lbPrintInvoiceClick(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 if dmcPayment.cdsPayHeadPaymentNo.AsInteger < 1 then exit ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('AVRAKNING_2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcPayment.cdsPayHeadPaymentNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;

end;

procedure TfrmAvrakning.FormCreate(Sender: TObject);
begin
 dmsContact.cds_Verk.Active:= True ;
end;

procedure TfrmAvrakning.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsContact.cds_Verk.Active:= False ;
  CanClose := True ;
end;

end.
