unit uMultiplaShippers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB,
  cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters ;

type
  TfMultiplaShippers = class(TForm)
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel2: TPanel;
    bTaBortRad: TButton;
    Memo1: TMemo;
    grdSpedsInvoiceDBTableView1: TcxGridDBTableView;
    grdSpedsInvoiceLevel1: TcxGridLevel;
    grdSpedsInvoice: TcxGrid;
    grdSpedsInvoiceDBTableView1Shipper: TcxGridDBColumn;
    grdSpedsInvoiceDBTableView1ShippersInvoiceNo: TcxGridDBColumn;
    grdSpedsInvoiceDBTableView1ShipperNo: TcxGridDBColumn;
    grdSpedsInvoiceDBTableView1AvrakningsNr: TcxGridDBColumn;
    procedure bTaBortRadClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fMultiplaShippers: TfMultiplaShippers;

implementation

uses UnitdmModule1;

{$R *.dfm}

procedure TfMultiplaShippers.bTaBortRadClick(Sender: TObject);
begin
 with dmModule1 do
  mtShippers.Delete ;
end;

procedure TfMultiplaShippers.bbOKClick(Sender: TObject);
begin
 with dmModule1 do
 Begin
  if mtShippers.State in [dsEdit, dsInsert] then
   mtShippers.Post ;
 End ;
end;

end.
