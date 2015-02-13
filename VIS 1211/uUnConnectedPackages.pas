unit uUnConnectedPackages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxPScxSSLnk, System.Actions,
  siComp, siLngLnk;

type
  TfUnConnectedPackages = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    grdEjKoppladePaketDBTableView1: TcxGridDBTableView;
    grdEjKoppladePaketLevel1: TcxGridLevel;
    grdEjKoppladePaket: TcxGrid;
    ds_LdConnCtrl: TDataSource;
    grdEjKoppladePaketDBTableView1LoadNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1PackageNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1SupplierCode: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1DefaultCustShipObjectNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1ProductNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1AT: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1AB: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1SpeciesNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1SurfacingNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1GradeNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1ProductCategoryNo: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1ALMM: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1OverrideRL: TcxGridDBColumn;
    grdEjKoppladePaketDBTableView1Product: TcxGridDBColumn;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    cxButton2: TcxButton;
    dxComponentPrinter1Link1: TdxGridReportLink;
    siLangLinked1: TsiLangLinked;
    procedure acPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fUnConnectedPackages: TfUnConnectedPackages;

implementation

{$R *.dfm}

uses dmcVidaInvoice, udmLanguage;

procedure TfUnConnectedPackages.acPrintExecute(Sender: TObject);
begin
  // dxComponentPrinter1.PrintTitle:= 'AvräkningNr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear;

  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Add
    ('Ej kopplade paket');

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

end.
