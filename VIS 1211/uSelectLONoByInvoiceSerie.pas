unit uSelectLONoByInvoiceSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLabel, cxLookAndFeels,
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
  dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfSelectLONoByInvoiceSerie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdSelectLONoDBTableView1: TcxGridDBTableView;
    grdSelectLONoLevel1: TcxGridLevel;
    grdSelectLONo: TcxGrid;
    grdSelectLONoDBTableView1LO: TcxGridDBColumn;
    grdSelectLONoDBTableView1Fakturaserie: TcxGridDBColumn;
    grdSelectLONoDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdSelectLONoDBTableView1InvoiceType: TcxGridDBColumn;
    grdSelectLONoDBTableView1Fakturanr: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    siLangLinked_fSelectLONoByInvoiceSerie: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fSelectLONoByInvoiceSerie: TfSelectLONoByInvoiceSerie;

implementation

uses dmLM1;

{$R *.dfm}

end.
