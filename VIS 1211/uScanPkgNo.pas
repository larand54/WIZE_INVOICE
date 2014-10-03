unit uScanPkgNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfScanPkgNo = class(TForm)
    ePktNr: TEdit;
    bbOK: TBitBtn;
    Label1: TLabel;
    cbEgenLevKod: TCheckBox;
    procedure ePktNrKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    StreckKodPkgNo : String ;
  public
    { Public declarations }
  end;

var
  fScanPkgNo: TfScanPkgNo;

implementation

uses UnitRemovePkg;

{$R *.dfm}

procedure TfScanPkgNo.ePktNrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
   Label1.Caption:= StreckKodPkgNo ;
   if cbEgenLevKod.Checked then
    frmRemovePkg.ScanningEgnaPkgNo(Sender, StreckKodPkgNo)
     else
      frmRemovePkg.ScanningPkgNo(Sender, StreckKodPkgNo) ;
   StreckKodPkgNo:= '' ;
   ePktNr.Text:= '' ;
  End
  else
   Begin
    if key in ['0','1','2','3','4','5','6','7','8','9'] then
    StreckKodPkgNo:= StreckKodPkgNo + Key ;
   End ;
end;

procedure TfScanPkgNo.FormCreate(Sender: TObject);
begin
  StreckKodPkgNo:= '' ;
end;

end.
