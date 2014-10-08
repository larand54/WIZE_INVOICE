unit uStickyNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, siComp, siLngLnk;

type
  TfrmStickyNote = class(TForm)
    mStickyNote: TMemo;
    siLangLinked_frmStickyNote: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStickyNote: TfrmStickyNote;

implementation

{$R *.dfm}

procedure TfrmStickyNote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmStickyNote.FormDestroy(Sender: TObject);
begin
  frmStickyNote := nil;
end;

end.
