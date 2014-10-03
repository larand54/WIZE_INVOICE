unit uconfirm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxButtons;

type
  TfConfirm = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
   Class function Execute(const Cap : String) : word ;
  end;

var
  fConfirm: TfConfirm;

implementation

{$R *.dfm}

Class function TfConfirm.Execute (const Cap : String) : word ;
//var iniUserStore : TIniFile;
Begin
 With Self.Create(nil) do begin
  try
  cxLabel1.Caption:= cap ;
  if ShowModal = mrYes then
   Result:= mrYes
    else
     Result:= mrNo ;

  Finally
   Free ;
  End
 End ;
End ;

end.
