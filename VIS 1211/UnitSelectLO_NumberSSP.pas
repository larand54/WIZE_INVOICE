unit UnitSelectLO_NumberSSP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxDBGrid, dxTL, dxDBCtrl, dxCntner, ExtCtrls,
  dxEditor, dxEdLib, dxBar, dxExEdtr, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfrmSelectLO_NumberSSP = class(TForm)
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel2: TPanel;
    meLO_No: TdxMaskEdit;
    Label1: TLabel;
    rgOrderType: TRadioGroup;
    dxBarManager1: TdxBarManager;
    ppMenugrdLO: TdxBarPopupMenu;
    bbCustomizeLayoyt: TdxBarButton;
    grdLookupDBTableView1: TcxGridDBTableView;
    grdLookupLevel1: TcxGridLevel;
    grdLookup: TcxGrid;
    grdLookupDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdLookupDBTableView1CustomerNo: TcxGridDBColumn;
    grdLookupDBTableView1CUSTOMER: TcxGridDBColumn;
    grdLookupDBTableView1ORDERNO: TcxGridDBColumn;
    grdLookupDBTableView1ORDERTYPE: TcxGridDBColumn;
    grdLookupDBTableView1SupplierNo: TcxGridDBColumn;
    grdLookupDBTableView1SUPPLIER: TcxGridDBColumn;
    grdLookupDBTableView1OBJECTTYPE: TcxGridDBColumn;
    grdLookupDBTableView1AVROP_CUSTOMERNO: TcxGridDBColumn;
    grdLookupDBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLookupDBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLookupDBTableView1SHIP_TO: TcxGridDBColumn;
    grdLookupDBTableView1LOCAL_CUST: TcxGridDBColumn;
    grdLookupDBTableView1SHIPPING: TcxGridDBColumn;
    grdLookupDBTableView1LoadingLocation: TcxGridDBColumn;
    procedure meLO_NoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbOKClick(Sender: TObject);
    procedure meLO_NoEnter(Sender: TObject);
    procedure rgOrderTypeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdLookupDBTableView1DblClick(Sender: TObject);
//    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  frmSelectLO_NumberSSP: TfrmSelectLO_NumberSSP;

implementation

uses dmcLoadEntrySSP,   VidaUser, dmsDataConn;

{$R *.dfm}

procedure TfrmSelectLO_NumberSSP.meLO_NoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var ShippingPlanNo : Integer ;
begin
 if Key <> VK_RETURN then Exit;
 With dmLoadEntrySSP do
 Begin
  if not cds_LO_LookUp.FindKey([StrToInt(Trim(meLO_No.Text))]) then
  ShowMessage('No luck') 

  else
  Begin
   ShippingPlanNo := cds_LO_LookUpShippingPlanNo.AsInteger ;
   While (ShippingPlanNo = cds_LO_LookUpShippingPlanNo.AsInteger) and
   (cds_LO_LookUp.Eof = False) do
   Begin
    cds_LO_LookUp.Next ;
   End ; //while
   cds_LO_LookUp.Prior ;
   if cds_LO_LookUp.FindKey([StrToInt(Trim(meLO_No.Text))]) then
    bbOK.SetFocus ;
  End ;
  meLO_No.Text:= '' ;
 End ; //with
end;

procedure TfrmSelectLO_NumberSSP.bbOKClick(Sender: TObject);
begin
 ModalResult:= mrOk;
end;

procedure TfrmSelectLO_NumberSSP.meLO_NoEnter(Sender: TObject);
begin
   bbOK.Default:= False ;
end;

procedure TfrmSelectLO_NumberSSP.rgOrderTypeClick(Sender: TObject);
begin
 Case rgOrderType.ItemIndex of
  0 : Begin
        dmLoadEntrySSP.cds_LO_LookUp.Filter:= 'SHIPPING = 0' ;
        dmLoadEntrySSP.cds_LO_LookUp.Filtered:= True ;
        grdLookupDBTableView1CUSTOMER.Caption:= 'Extern kund' ;
      End ;
  1 : Begin
        dmLoadEntrySSP.cds_LO_LookUp.Filter:= 'SHIPPING = 1' ;
        dmLoadEntrySSP.cds_LO_LookUp.Filtered:= True ;
        grdLookupDBTableView1CUSTOMER.Caption:= 'Extern leverantör' ;
      End ;
  2 : Begin
         dmLoadEntrySSP.cds_LO_LookUp.Filtered:= False ;
      End ;
 End ; //case
end;

procedure TfrmSelectLO_NumberSSP.FormShow(Sender: TObject);
begin
 if dmLoadEntrySSP.cds_LO_LookUp.Filtered = True then
 rgOrderType.Visible:= False
 else
 Begin
  dmLoadEntrySSP.cds_LO_LookUp.Filter:= 'SHIPPING = 0' ;
  dmLoadEntrySSP.cds_LO_LookUp.Filtered:= True ;
 End ;
end;

procedure TfrmSelectLO_NumberSSP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= True ;
end;

procedure TfrmSelectLO_NumberSSP.grdLookupDBTableView1DblClick(
  Sender: TObject);
begin
 ModalResult:= mrOk;
end;

end.
