unit uExportLoadPurpose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, ExtCtrls, cxGroupBox,
  cxRadioGroup;

type
  TfExportLoadPurpose = class(TForm)
    rgPurpose: TcxRadioGroup;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fExportLoadPurpose: TfExportLoadPurpose;

implementation

{$R *.dfm}

end.
