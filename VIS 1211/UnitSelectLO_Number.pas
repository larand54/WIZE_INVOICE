unit UnitSelectLO_Number;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxDBGrid, dxTL, dxDBCtrl, dxCntner, ExtCtrls,
  dxExEdtr;

type
  TfrmSelectLO_Number = class(TForm)
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1ShippingPlanNo: TdxDBGridMaskColumn;
    dxDBGrid1CustomerNo: TdxDBGridMaskColumn;
    dxDBGrid1CUSTOMER: TdxDBGridMaskColumn;
    dxDBGrid1SHIPPER: TdxDBGridMaskColumn;
    dxDBGrid1READYDATE: TdxDBGridMaskColumn;
    dxDBGrid1VESSEL: TdxDBGridMaskColumn;
    dxDBGrid1ETD: TdxDBGridColumn;
    dxDBGrid1ETA: TdxDBGridColumn;
    dxDBGrid1SHIPPER_REF: TdxDBGridMaskColumn;
    dxDBGrid1SHIPPERID: TdxDBGridMaskColumn;
    dxDBGrid1SHIPPERS_SHIPDATE: TdxDBGridColumn;
    dxDBGrid1SHIPPERS_SHIPTIME: TdxDBGridColumn;
    dxDBGrid1ORDERNO: TdxDBGridMaskColumn;
    dxDBGrid1ORDERTYPE: TdxDBGridMaskColumn;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    dxDBGrid1SALES_REGION: TdxDBGridMaskColumn;
    procedure dxDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmSelectLO_Number: TfrmSelectLO_Number;

implementation

uses dmcLoadEntry;

{$R *.dfm}

procedure TfrmSelectLO_Number.dxDBGrid1DblClick(Sender: TObject);
begin
 ModalResult:= mrOk;
end;

end.
