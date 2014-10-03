unit uConfirmCodeDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TfrmConfirmCodeDialog = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    eConfirmationCode: TEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmConfirmCodeDialog: TfrmConfirmCodeDialog;

implementation

{$R *.dfm}

end.
