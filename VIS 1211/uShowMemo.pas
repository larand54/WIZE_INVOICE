unit uShowMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo;

type
  TfShowMemo = class(TForm)
    cxMemo1: TcxMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public                                                                
    { Public declarations }
  end;

//var fShowMemo: TfShowMemo;

implementation

{$R *.dfm}

end.
