unit uOrderStockDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, ActnList, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  cxGridCustomPopupMenu, cxGridPopupMenu,
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
  dxSkinsdxRibbonPainter, dxPScxCommon, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxNavigator, System.Actions, siComp, siLngLnk;

type
  TfOrderStockDetails = class(TForm)
    Panel1: TPanel;
    grdOrderStockDetailsDBTableView1: TcxGridDBTableView;
    grdOrderStockDetailsLevel1: TcxGridLevel;
    grdOrderStockDetails: TcxGrid;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acClose: TAction;
    grdOrderStockDetailsDBTableView1ORDER_NO: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1Statistikland: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1Produkt: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1Valuta: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1Frsljningsregion: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1Kund: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1OrderNM3int: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1LevNM3int: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1OrderstockNM3int: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1OrderNM3ext: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1LevNM3ext: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1OrderstockNM3ext: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1OrderstockValuta: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1OrderstockSEK: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1SalesRegionNo: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1CountryNo: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1CurrencyNo: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1MPNH: TcxGridDBColumn;
    grdOrderStockDetailsDBTableView1Orderradnr: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    acPrint: TAction;
    acSaveLayout: TAction;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    siLangLinked_fOrderStockDetails: TsiLangLinked;
    procedure acCloseExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acSaveLayoutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrderStockDetails: TfOrderStockDetails;

implementation

uses dmsDataConn, UnitdmModule1, dmsVidaSystem, VidaUser;

{$R *.dfm}

procedure TfOrderStockDetails.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfOrderStockDetails.acPrintExecute(Sender: TObject);
begin
  // Print
  dxComponentPrinter1Link1.ShrinkToPageWidth := True;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add
    ('Orderstock radinfo');

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfOrderStockDetails.acSaveLayoutExecute(Sender: TObject);
begin
  // Save layout
  dmsSystem.StoreGridLayout(ThisUser.UserID, grdOrderStockDetails.Name,
    grdOrderStockDetailsDBTableView1);
end;

procedure TfOrderStockDetails.FormShow(Sender: TObject);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdOrderStockDetails.Name,
    grdOrderStockDetailsDBTableView1);
  dmModule1.Refresh_OrderstockDtl;
end;

procedure TfOrderStockDetails.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmModule1.Close_OrderstockDtl;
end;

end.
