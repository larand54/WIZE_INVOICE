unit uSelectLoadPlanDest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel, cxGridBandedTableView, cxGridDBBandedTableView, cxCalendar,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfSelectLoadPlanDest = class(TForm)
    grdLoadPlanLevel1: TcxGridLevel;
    grdLoadPlan: TcxGrid;
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView;
    grdLoadPlanDBBandedTableView1Status: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LAGER_DEST: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1LAGER: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1BT: TcxGridDBBandedColumn;
    grdLoadPlanDBBandedTableView1ETD: TcxGridDBBandedColumn;
    siLangLinked_fSelectLoadPlanDest: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // var fSelectLoadPlanDest: TfSelectLoadPlanDest;

implementation

uses dmsVidaSystem, udmLanguage;

{$R *.dfm}

end.
