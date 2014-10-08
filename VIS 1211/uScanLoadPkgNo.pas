unit uScanLoadPkgNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, siComp, siLngLnk;

type
  TfScanLoadPkgNo = class(TForm)
    ePktNr: TEdit;
    bbOK: TBitBtn;
    Label1: TLabel;
    cbEgenLevKod: TCheckBox;
    siLangLinked_fScanLoadPkgNo: TsiLangLinked;
    procedure ePktNrKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    StreckKodPkgNo: String;
  public
    { Public declarations }
    EgenPkgSupplierCode: String;
  end;

  // var fScanLoadPkgNo: TfScanLoadPkgNo ;

implementation

uses UnitLoadEntrySSP;

{$R *.dfm}

procedure TfScanLoadPkgNo.ePktNrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  Begin
    Label1.Caption := StreckKodPkgNo;
    if cbEgenLevKod.Checked then
      fLoadEntrySSP.ScanningEgnaPkgNo(Sender, StreckKodPkgNo,
        EgenPkgSupplierCode)
    else
      fLoadEntrySSP.ScanningPkgNo(Sender, StreckKodPkgNo);
    StreckKodPkgNo := '';
    ePktNr.Text := '';
  End
  else
  Begin
    if Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] then
      StreckKodPkgNo := StreckKodPkgNo + Key;
  End;
end;

procedure TfScanLoadPkgNo.FormCreate(Sender: TObject);
begin
  StreckKodPkgNo := '';
end;

end.
