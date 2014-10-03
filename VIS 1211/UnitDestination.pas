unit UnitDestination;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormDestination = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdOrtDBTableView1: TcxGridDBTableView;
    grdOrtLevel1: TcxGridLevel;
    grdOrt: TcxGrid;
    grdOrtDBTableView1CityName: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var FormDestination: TFormDestination;

implementation

uses UnitdmModule1;

{$R *.dfm}

end.
