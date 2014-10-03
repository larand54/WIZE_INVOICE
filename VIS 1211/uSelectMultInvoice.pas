unit uSelectMultInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfSelectMultInvoice = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    grdMultInvoiceDBTableView1: TcxGridDBTableView;
    grdMultInvoiceLevel1: TcxGridLevel;
    grdMultInvoice: TcxGrid;
    grdMultInvoiceDBTableView1Fakturnr: TcxGridDBColumn;
    grdMultInvoiceDBTableView1LO: TcxGridDBColumn;
    grdMultInvoiceDBTableView1Fakturadatum: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fSelectMultInvoice: TfSelectMultInvoice;

implementation

uses dmcVidaInvoice;

{$R *.dfm}

end.
