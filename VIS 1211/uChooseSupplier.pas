unit uChooseSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  dxExEdtr;

type
  TfrmChooseSupplier = class(TForm)
    grdProducers: TdxDBGrid;
    Panel1: TPanel;
    bbOK: TBitBtn;
    grdProducersClientName: TdxDBGridMaskColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmChooseSupplier: TfrmChooseSupplier;

implementation

uses dmsVidaContact;

{$R *.dfm}

end.
