unit uSelectAttBeskrivning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  StdCtrls, Buttons, ExtCtrls, cxLabel;

type
  TfSelectAttBeskrivning = class(TForm)
    Beskrivning: TcxLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    cbDescription: TcxDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var  fSelectAttBeskrivning: TfSelectAttBeskrivning;

implementation

uses dmcVidaInvoice;

{$R *.dfm}

end.
