unit UnitAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormAddress = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grdAdrDBTableView1: TcxGridDBTableView;
    grdAdrLevel1: TcxGridLevel;
    grdAdr: TcxGrid;
    grdAdrDBTableView1ADDRESS_NO: TcxGridDBColumn;
    grdAdrDBTableView1ADDRESS_NAME: TcxGridDBColumn;
    grdAdrDBTableView1ADDRESSLINE1: TcxGridDBColumn;
    grdAdrDBTableView1ADDRESSLINE2: TcxGridDBColumn;
    grdAdrDBTableView1ADDRESSLINE3: TcxGridDBColumn;
    grdAdrDBTableView1ADDRESSLINE4: TcxGridDBColumn;
    grdAdrDBTableView1PROVINCE: TcxGridDBColumn;
    grdAdrDBTableView1POSTALCODE: TcxGridDBColumn;
    grdAdrDBTableView1CITY: TcxGridDBColumn;
    grdAdrDBTableView1COUNTRY: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  FormAddress: TFormAddress;

implementation

uses UnitdmModule1;

{$R *.dfm}

end.
