unit uSelectShipper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, kbmMemTable, StdCtrls, Buttons, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters;

type
  TfSelectShipper = class(TForm)
    lcShipper: TcxDBLookupComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    mtShipper: TkbmMemTable;
    mtShipperClientNo: TIntegerField;
    dsShipper: TDataSource;
    mtShipperShipper: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fSelectShipper: TfSelectShipper;

implementation

uses dmsVidaContact;

{$R *.dfm}

end.
