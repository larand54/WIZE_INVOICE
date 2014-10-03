unit UnitInvoiceGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, dxExEdtr;

type
  TfrmInvoiceGroup = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbPrint: TdxBarLargeButton;
    lbDelete: TdxBarLargeButton;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    Splitter1: TSplitter;
    Panel1: TPanel;
    dxDBGrid1InvoiceGroupNo: TdxDBGridMaskColumn;
    dxDBGrid1CreatedUser: TdxDBGridMaskColumn;
    dxDBGrid1ModifiedUser: TdxDBGridMaskColumn;
    dxDBGrid1CreatedDate: TdxDBGridColumn;
    dxDBGrid1ModifiedDate: TdxDBGridColumn;
    dxDBGrid1Note: TdxDBGridMemoColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInvoiceGroup: TfrmInvoiceGroup;

implementation

uses dmLM1;

{$R *.dfm}

end.
