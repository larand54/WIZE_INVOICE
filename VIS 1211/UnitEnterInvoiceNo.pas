unit UnitEnterInvoiceNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxLabel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFormEnterInvoiceNo = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    eFakturanr: TcxMaskEdit;
    cxLabel1: TcxLabel;
    ePrefix: TcxMaskEdit;
    LPrefix: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var FormEnterInvoiceNo: TFormEnterInvoiceNo;

implementation

{$R *.dfm}

end.
