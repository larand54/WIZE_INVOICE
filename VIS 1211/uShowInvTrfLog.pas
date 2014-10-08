unit uShowInvTrfLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridCardView, cxGridDBCardView, ActnList,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, ImgList, cxCheckBox, cxLookAndFeels,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, cxGridCustomLayoutView, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, System.Actions, siComp, siLngLnk;

type
  TfShowInvTrfLog = class(TForm)
    grdInvTrfLogLevel1: TcxGridLevel;
    grdInvTrfLog: TcxGrid;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    acPrint: TAction;
    acClose: TAction;
    grdInvTrfLogDBCardView1: TcxGridDBCardView;
    grdInvTrfLogDBCardView1InvoiceNo: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1InternalInvoiceNo: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Object2: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Object5: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1ResKontraSerie: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1KundResKontra: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Forsaljningskonto: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Frakt_konto: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Moms_konto: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Rounding_Konto: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Provision_Konto: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1KassaRabattKonto: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1AgentNo: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Region: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Currency: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1CountryNo: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1SkatteUpplag: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1InvoiceTotal_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1ForsaljningsKonto_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Rounding_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1TotalInvoiceValueNoRounding_SEK
      : TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Provision_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1KassaRabatt_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1frakt_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1InvoiceTotal_For: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1ForsaljningsKonto_For: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Rounding_For: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Provision_For: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1TotalInvoiceValueNoRounding_For
      : TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1KassaRabatt_For: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1frakt_for: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1InvoiceDate: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Vatcode: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1InvoiceType: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1EventDate: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1UserId: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1XorID_KundNamn: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1moms: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1moms_SEK: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1moms_For: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1VaruGrupp: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1PO_Country: TcxGridDBCardViewRow;
    grdInvTrfLogDBCardView1Trading: TcxGridDBCardViewRow;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    ImageList1: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1Bold: TcxStyle;
    siLangLinked_fShowInvTrfLog: TsiLangLinked;
    procedure acCloseExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fShowInvTrfLog: TfShowInvTrfLog;

implementation

uses dmcVidaInvoice;

{$R *.dfm}

procedure TfShowInvTrfLog.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfShowInvTrfLog.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.PrinterPage.Orientation := poPortrait;
  dxComponentPrinter1Link1.ShrinkToPageWidth := True;
  dxComponentPrinter1Link1.OptionsOnEveryPage.Footers := False;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

end.
