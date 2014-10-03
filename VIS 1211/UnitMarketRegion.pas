unit UnitMarketRegion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfrmMarketRegion = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditMR_Name: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmMarketRegion: TfrmMarketRegion;

implementation

uses UnitdmMaintenance;



{$R *.dfm}

end.
