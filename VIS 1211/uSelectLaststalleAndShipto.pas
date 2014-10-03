unit uSelectLastStalleAndShipTo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, kbmMemTable, StdCtrls, Buttons, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics;

type
  TfSelectLastStalleAndShipTo = class(TForm)
    lcLaststalle: TcxDBLookupComboBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    mtShipper: TkbmMemTable;
    dsShipper: TDataSource;
    mtShipperLocalLoadingLocation: TIntegerField;
    mtShipperLocalDestinationNo: TIntegerField;
    mtShipperLaststalle: TStringField;
    mtShipperDestination: TStringField;
    lcDestination: TcxDBLookupComboBox;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fSelectLastStalleAndShipTo: TfSelectLastStalleAndShipTo;

implementation

uses dmsVidaContact;

{$R *.dfm}

end.
