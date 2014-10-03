unit uEntryField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfEntryField = class(TForm)
    bbok: TBitBtn;
    bbcancel: TBitBtn;
    Label1: TLabel;
    eNoofpkgs: TcxMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fEntryField: TfEntryField;

implementation

{$R *.dfm}

end.
