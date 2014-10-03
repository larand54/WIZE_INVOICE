unit UnitPkgNo;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxTextEdit ;

type
  TfrmPkgNo = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    dxMaskPackageNo: TcxTextEdit;
    dxMaskSupplierCode: TcxMaskEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var frmPkgNo: TfrmPkgNo;

implementation

uses VidaConst;

{$R *.dfm}

procedure TfrmPkgNo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 Try
 if StrToInt(Trim(dxMaskPackageNo.Text)) > Const_MAX_PKG_NO then
  Begin
   CanClose := False ;
   ShowMessage('Paket nummer kan inte överskrida '+IntToStr(Const_MAX_PKG_NO)) ;
  End ;
  Except
   ShowMessage('Paket nummer kan inte överskrida '+IntToStr(Const_MAX_PKG_NO)) ;
   CanClose := False ;
  End ;
end;

procedure TfrmPkgNo.CancelBtnClick(Sender: TObject);
begin
 dxMaskPackageNo.Text:= '0' ;
end;

end.
