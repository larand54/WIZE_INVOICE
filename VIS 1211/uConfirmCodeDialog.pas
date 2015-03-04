unit uConfirmCodeDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, siComp, siLngLnk;

type
  TfrmConfirmCodeDialog = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    eConfirmationCode: TEdit;
    Label1: TLabel;
    siLangLinked_frmConfirmCodeDialog: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var frmConfirmCodeDialog: TfrmConfirmCodeDialog;

implementation

{$R *.dfm}

uses udmLanguage;

end.
