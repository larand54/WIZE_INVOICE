unit UnitPkgNoSeries;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, siComp,
  siLngLnk;

type
  TfrmPkgNoSeries = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    eFromPkgNo: TcxTextEdit;
    eToPkgNo: TcxTextEdit;
    siLangLinked_frmPkgNoSeries: TsiLangLinked;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var   frmPkgNoSeries: TfrmPkgNoSeries;

implementation

Uses VidaConst;

{$R *.dfm}

procedure TfrmPkgNoSeries.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Try
    if (StrToInt(Trim(Self.eToPkgNo.Text)) > Const_MAX_PKG_NO) OR
      (StrToInt(Trim(Self.eFromPkgNo.Text)) > Const_MAX_PKG_NO) then
    Begin
      CanClose := False;
      ShowMessage('Paket nummer kan inte överskrida ' +
        IntToStr(Const_MAX_PKG_NO));
    End;
  Except
    ShowMessage('Paket nummer kan inte överskrida ' +
      IntToStr(Const_MAX_PKG_NO));
    CanClose := False;
  End;
end;

procedure TfrmPkgNoSeries.bbCancelClick(Sender: TObject);
begin
  Self.eToPkgNo.Text := '0';
  Self.eFromPkgNo.Text := '0';
end;

end.
