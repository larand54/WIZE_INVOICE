unit UnitPkgNo;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxTextEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, siComp, siLngLnk;

type
  TfrmPkgNo = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    dxMaskPackageNo: TcxTextEdit;
    dxMaskSupplierCode: TcxMaskEdit;
    siLangLinked_frmPkgNo: TsiLangLinked;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var frmPkgNo: TfrmPkgNo;

implementation

uses VidaConst, udmLanguage;

{$R *.dfm}

procedure TfrmPkgNo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Try
    if StrToInt(Trim(dxMaskPackageNo.Text)) > Const_MAX_PKG_NO then
    Begin
      CanClose := False;
      ShowMessage('Package number cannot pass ' +
        IntToStr(Const_MAX_PKG_NO));
    End;
  Except
    ShowMessage('Package number cannot pass ' +
      IntToStr(Const_MAX_PKG_NO));
    CanClose := False;
  End;
end;

procedure TfrmPkgNo.CancelBtnClick(Sender: TObject);
begin
  dxMaskPackageNo.Text := '0';
end;

end.
