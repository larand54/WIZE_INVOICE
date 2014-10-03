unit uEntryPriceField;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  StdCtrls, Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfEntryPriceField = class(TForm)
    mePriceField: TcxMaskEdit;
    LabelForField: TcxLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fEntryPriceField: TfEntryPriceField;

implementation

{$R *.dfm}

end.
