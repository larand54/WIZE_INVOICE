unit uAddSpecialLengths;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ExtCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  System.Actions, siComp, siLngLnk;

type
  TfAddSpecialLengths = class(TForm)
    lbSpecialLengths: TListBox;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    acAddLength: TAction;
    acRemoveLength: TAction;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    eLength: TcxMaskEdit;
    siLangLinked_fAddSpecialLengths: TsiLangLinked;
    procedure acAddLengthExecute(Sender: TObject);
    procedure acRemoveLengthExecute(Sender: TObject);
  private
    { Private declarations }
    function LengthInList: Boolean;
    function Pad(const s: String): String;
  public
    { Public declarations }
  end;

  // var fAddSpecialLengths: TfAddSpecialLengths;

implementation

Uses VidaUtils;

{$R *.dfm}

function TfAddSpecialLengths.LengthInList: Boolean;
Var
  x: Byte;
begin
  Result := False;
  if lbSpecialLengths.Items.Count > 0 then
    For x := 0 to lbSpecialLengths.Items.Count - 1 do
      if eLength.Text = lbSpecialLengths.Items[x] then
        Result := True;
end;

function TfAddSpecialLengths.Pad(const s: String): String;
Var
  Dec: Byte;
Begin
  // 1234.4
  // 999
  Dec := Pos(',', s);
  if Pos(',', s) > 0 then
  Begin
    if Length(Copy(s, 1, Dec - 1)) < 4 then
      Result := '0' + s
    else
      Result := s;
  End
  else
  Begin
    if Length(s) < 4 then
      Result := '0' + s
    else
      Result := s;
  End;

End;

procedure TfAddSpecialLengths.acAddLengthExecute(Sender: TObject);
begin
  eLength.Text := Pad(eLength.Text);
  if (not LengthInList) and (Length(eLength.Text) > 0)
  // and (StrToFloat(ReplaceCommas(eLength.Text)) > 0) then
    and (StrToFloat(eLength.Text) > 0) then
  Begin
    // lbSpecialLengths.Items.Add(ReplaceCommas(eLength.Text)) ;
    lbSpecialLengths.Items.Add(eLength.Text);
    eLength.Text := '';
  End;
  eLength.SetFocus;
end;

procedure TfAddSpecialLengths.acRemoveLengthExecute(Sender: TObject);
begin
  lbSpecialLengths.DeleteSelected;
end;

end.
