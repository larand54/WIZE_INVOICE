unit uSelectPrintDevice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  siComp, siLngLnk;

type
  TfSelectPrintDevice = class(TForm)
    bSkrivare: TcxButton;
    bBildskarm: TcxButton;
    bAngra: TcxButton;
    seNoOfCopies: TcxDBSpinEdit;
    cxLabel1: TcxLabel;
    siLangLinked_fSelectPrintDevice: TsiLangLinked;
    procedure bSkrivareClick(Sender: TObject);
    procedure bBildskarmClick(Sender: TObject);
    procedure bAngraClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Val: Integer;
    Class function Execute: word;
  end;

var
  fSelectPrintDevice: TfSelectPrintDevice;

implementation

uses dmcVidaOrder;

{$R *.dfm}

Class function TfSelectPrintDevice.Execute: word;
Begin
  With Self.Create(nil) do
  begin
    try

      ShowModal;
      Result := Val;

    Finally
      Free;
    End
  End;
End;

procedure TfSelectPrintDevice.bSkrivareClick(Sender: TObject);
begin
  Val := 1;
  Close;
end;

procedure TfSelectPrintDevice.bBildskarmClick(Sender: TObject);
begin
  Val := 2;
  Close;
end;

procedure TfSelectPrintDevice.bAngraClick(Sender: TObject);
begin
  Val := 0;
  Close;
end;

procedure TfSelectPrintDevice.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  // dmcOrder.SaveUserProps ;
end;

end.
