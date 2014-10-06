unit uMultiplaShippers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB,
  cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator;

type
  TfMultiplaShippers = class(TForm)
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel2: TPanel;
    bTaBortRad: TButton;
    Memo1: TMemo;
    grdSpedsInvoiceDBTableView1: TcxGridDBTableView;
    grdSpedsInvoiceLevel1: TcxGridLevel;
    grdSpedsInvoice: TcxGrid;
    grdSpedsInvoiceDBTableView1Shipper: TcxGridDBColumn;
    grdSpedsInvoiceDBTableView1ShippersInvoiceNo: TcxGridDBColumn;
    grdSpedsInvoiceDBTableView1ShipperNo: TcxGridDBColumn;
    grdSpedsInvoiceDBTableView1AvrakningsNr: TcxGridDBColumn;
    procedure bTaBortRadClick(Sender: TObject);
    procedure bbOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fMultiplaShippers: TfMultiplaShippers;

implementation

uses UnitdmModule1;

{$R *.dfm}

procedure TfMultiplaShippers.bTaBortRadClick(Sender: TObject);
begin
  with dmModule1 do
    mtShippers.Delete;
end;

procedure TfMultiplaShippers.bbOKClick(Sender: TObject);
begin
  with dmModule1 do
  Begin
    if mtShippers.State in [dsEdit, dsInsert] then
      mtShippers.Post;
  End;
end;

end.
