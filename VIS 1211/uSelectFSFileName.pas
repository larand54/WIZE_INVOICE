unit uSelectFSFileName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, siComp, siLngLnk;

type
  TfSelectFSFileName = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LBFSFiles: TListBox;
    siLangLinked_fSelectFSFileName: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fSelectFSFileName: TfSelectFSFileName;

implementation

{$R *.dfm}

uses udmLanguage;

end.
