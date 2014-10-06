unit uAttest_SetHdrInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, StdCtrls, Buttons, cxLabel, cxMemo, cxTextEdit,
  cxMaskEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, DB, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfAttest_SetHdrInfo = class(TForm)
    meSupplier_InvoiceDate: TcxMaskEdit;
    teSupplier_InvoiceNo: TcxTextEdit;
    memoNote: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxLabel4: TcxLabel;
    labelAmount: TcxLabel;
    MemSped: TFDMemTable;
    MemSpedShipperNO: TIntegerField;
    MemSpedShipper: TStringField;
    lcShipper: TcxDBLookupComboBox;
    dsMemSped: TDataSource;
    cxLabel5: TcxLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ClickCancel: Boolean;
  public
    { Public declarations }
  end;

  // var fAttest_SetHdrInfo: TfAttest_SetHdrInfo;

implementation

uses dmsVidaContact;

{$R *.dfm}

procedure TfAttest_SetHdrInfo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var
  Dt: TDateTime;
begin
  if ClickCancel = False then
  Begin
    Try
      Dt := StrToDateTime(meSupplier_InvoiceDate.Text);
    except
      On E: Exception do
      Begin
        ShowMessage(E.Message);
        CanClose := False;
        Raise;
      End;
    end;
  End
  else
    CanClose := True;
end;

procedure TfAttest_SetHdrInfo.BitBtn2Click(Sender: TObject);
begin
  ClickCancel := True;
end;

procedure TfAttest_SetHdrInfo.FormCreate(Sender: TObject);
begin
  ClickCancel := False;
end;

end.
