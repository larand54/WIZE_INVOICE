unit ufrmChangeLanguage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, siComp,
  siLngLnk;

type
  TfrmChangeLanguage = class(TForm)
    cboSelectLanguage: TComboBox;
    bbtnOk: TBitBtn;
    bbtnCancel: TBitBtn;
    lblcboLang: TLabel;
    siLangLinked1: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure bbtnCancelClick(Sender: TObject);
    procedure bbtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangeLanguage: TfrmChangeLanguage;

implementation

{$R *.dfm}

uses udmLanguage;

procedure TfrmChangeLanguage.bbtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmChangeLanguage.bbtnOkClick(Sender: TObject);
begin
  dmLanguage.siLangDispatcher1.ActiveLanguage := cboSelectLanguage.ItemIndex + 1;

  ModalResult := mrOK;
end;

procedure TfrmChangeLanguage.FormCreate(Sender: TObject);
var
  i: integer;
  language: string;
begin
  cboSelectLanguage.Items.Clear;
  for i := 0 to dmLanguage.siLangDispatcher1.NumOfLanguages-1 do begin
    language := dmLanguage.siLangDispatcher1.LangNames[i];
    cboSelectLanguage.Items.Add(language);
  end;
  i := dmLanguage.siLangDispatcher1.ActiveLanguage - 1;
  cboSelectLanguage.ItemIndex := i;
end;

end.
