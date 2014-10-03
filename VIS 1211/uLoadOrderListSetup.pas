unit uLoadOrderListSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, cxLabel, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfLoadOrderListSetup = class(TForm)
    Panel1: TPanel;
    lcLengthgrupp: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
   Class procedure Execute ;
  end;

//var fLoadOrderListSetup: TfLoadOrderListSetup;

implementation

uses dmcVidaOrder;

{$R *.dfm}

Class procedure TfLoadOrderListSetup.Execute ;
Begin
 With Self.Create(nil) do begin
  try
   ShowModal ;
  Finally
   Free ;
  End
 End ;
End ;

end.
