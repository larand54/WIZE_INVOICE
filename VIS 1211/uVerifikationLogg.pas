unit uVerifikationLogg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, ActnList, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxCalc, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
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
  dxSkinsdxRibbonPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions;

type
  TfVerifikationLogg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdVerifikationLoggDBTableView1: TcxGridDBTableView;
    grdVerifikationLoggLevel1: TcxGridLevel;
    grdVerifikationLogg: TcxGrid;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acClose: TAction;
    acPrint: TAction;
    cxButton2: TcxButton;
    grdVerifikationLoggDBTableView1Konto: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Namn: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Valuta: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Kurs: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1UtlandsBelopp: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Debet: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Kredit: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Text: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1RadOrder: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    grdVerifikationLoggDBTableView1VatCode: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Avdelning: TcxGridDBColumn;
    grdVerifikationLoggDBTableView1Volym: TcxGridDBColumn;
    procedure acCloseExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fVerifikationLogg: TfVerifikationLogg;

implementation

uses dmsDataConn, dmcVidaInvoice;

{$R *.dfm}

procedure TfVerifikationLogg.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfVerifikationLogg.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.ShrinkToPageWidth := True;
  // dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add(self.Caption);

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

end.
