unit uSelectRunNos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons;

type
  TfSelectRunNos = class(TForm)
    Panel1: TPanel;
    grdRunNosDBTableView1: TcxGridDBTableView;
    grdRunNosLevel1: TcxGridLevel;
    grdRunNos: TcxGrid;
    Panel2: TPanel;
    grdRunNosDBTableView1Krdatum: TcxGridDBColumn;
    grdRunNosDBTableView1KrNr: TcxGridDBColumn;
    grdRunNosDBTableView1Produkt: TcxGridDBColumn;
    grdRunNosDBTableView1Operation: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fSelectRunNos: TfSelectRunNos;

implementation

uses dm_Inventory;

{$R *.dfm}

end.
