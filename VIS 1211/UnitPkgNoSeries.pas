unit UnitPkgNoSeries;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit ;

type
  TfrmPkgNoSeries = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    eFromPkgNo: TcxTextEdit;
    eToPkgNo: TcxTextEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var   frmPkgNoSeries: TfrmPkgNoSeries;

implementation

Uses VidaConst ;

{$R *.dfm}

procedure TfrmPkgNoSeries.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 Try
 if (StrToInt(Trim(Self.eToPkgNo.Text)) > Const_MAX_PKG_NO) OR
    (StrToInt(Trim(Self.eFromPkgNo.Text)) > Const_MAX_PKG_NO) then
  Begin
   CanClose := False ;
   ShowMessage('Paket nummer kan inte överskrida '+IntToStr(Const_MAX_PKG_NO)) ;
  End ;
  Except
   ShowMessage('Paket nummer kan inte överskrida '+IntToStr(Const_MAX_PKG_NO)) ;
   CanClose := False ;
  End ;
end;

procedure TfrmPkgNoSeries.bbCancelClick(Sender: TObject);
begin
 Self.eToPkgNo.Text:= '0' ;
 Self.eFromPkgNo.Text:= '0' ;
end;

end.
