unit UnitCurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, cxLabel;

type
  TFormCurrency = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdCurrDBTableView1: TcxGridDBTableView;
    grdCurrLevel1: TcxGridLevel;
    grdCurr: TcxGrid;
    grdCurrDBTableView1CurrencyName: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  FormCurrency: TFormCurrency;

implementation

uses UnitdmModule1, dmsVidaSystem;

{$R *.dfm}

end.
