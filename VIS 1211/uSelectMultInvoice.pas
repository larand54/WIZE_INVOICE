unit uSelectMultInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, cxLookAndFeels,
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
  TfSelectMultInvoice = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    grdMultInvoiceDBTableView1: TcxGridDBTableView;
    grdMultInvoiceLevel1: TcxGridLevel;
    grdMultInvoice: TcxGrid;
    grdMultInvoiceDBTableView1Fakturnr: TcxGridDBColumn;
    grdMultInvoiceDBTableView1LO: TcxGridDBColumn;
    grdMultInvoiceDBTableView1Fakturadatum: TcxGridDBColumn;
    siLangLinked_fSelectMultInvoice: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var  fSelectMultInvoice: TfSelectMultInvoice;

implementation

uses dmcVidaInvoice, udmLanguage;

{$R *.dfm}

end.
