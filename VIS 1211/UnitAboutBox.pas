unit UnitAboutBox;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    OKButton: TButton;
    Comments: TLabel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
   Class procedure Execute ;
  end;


implementation

{$R *.dfm}

Class procedure TAboutBox.Execute ;
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
 
