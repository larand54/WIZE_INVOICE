unit uSelectLONoByInvoiceSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLabel, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfSelectLONoByInvoiceSerie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdSelectLONoDBTableView1: TcxGridDBTableView;
    grdSelectLONoLevel1: TcxGridLevel;
    grdSelectLONo: TcxGrid;
    grdSelectLONoDBTableView1LO: TcxGridDBColumn;
    grdSelectLONoDBTableView1Fakturaserie: TcxGridDBColumn;
    grdSelectLONoDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdSelectLONoDBTableView1InvoiceType: TcxGridDBColumn;
    grdSelectLONoDBTableView1Fakturanr: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectLONoByInvoiceSerie: TfSelectLONoByInvoiceSerie;

implementation

uses dmLM1;

{$R *.dfm}

end.
