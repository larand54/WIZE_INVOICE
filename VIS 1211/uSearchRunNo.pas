unit uSearchRunNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxLabel,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  kbmMemTable, StdCtrls, Buttons, ActnList, cxDBEdit, SqlTimSt, DBClient,
  Provider, SqlExpr, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, System.Actions, siComp,
  siLngLnk;

type
  TfSearchRunNo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    mtProps: TkbmMemTable;
    mtPropsStartPeriod: TDateTimeField;
    mtPropsEndPeriod: TDateTimeField;
    mtPropsRegPointNo: TIntegerField;
    bbRefresh: TBitBtn;
    cxLabel1: TcxLabel;
    grdrunNosDBTableView1: TcxGridDBTableView;
    grdrunNosLevel1: TcxGridLevel;
    grdrunNos: TcxGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    grdRunProdsDBTableView1: TcxGridDBTableView;
    grdRunProdsLevel1: TcxGridLevel;
    grdRunProds: TcxGrid;
    sq_RunNos: TSQLQuery;
    dsp_RunNos: TDataSetProvider;
    cds_RunNos: TClientDataSet;
    ds_RunNos: TDataSource;
    cds_RunNosKrnr: TIntegerField;
    cds_RunNosVERK: TStringField;
    cds_RunNosMTPUNKT: TStringField;
    grdrunNosDBTableView1Krnr: TcxGridDBColumn;
    grdrunNosDBTableView1VERK: TcxGridDBColumn;
    grdrunNosDBTableView1MTPUNKT: TcxGridDBColumn;
    sq_RunProds: TSQLQuery;
    dsp_RunProds: TDataSetProvider;
    cds_RunProds: TClientDataSet;
    ds_RunProds: TDataSource;
    cds_RunProdsKrnr: TIntegerField;
    cds_RunProdsPRODUKT: TStringField;
    cds_RunProdsProductNo: TIntegerField;
    grdRunProdsDBTableView1Krnr: TcxGridDBColumn;
    grdRunProdsDBTableView1PRODUKT: TcxGridDBColumn;
    ActionList1: TActionList;
    acRefresh: TAction;
    mtPropsSupplierNo: TIntegerField;
    dsProps: TDataSource;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    siLangLinked_fSearchRunNo: TsiLangLinked;
    procedure acRefreshExecute(Sender: TObject);
    procedure ds_RunNosDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshRunProds;
  public
    { Public declarations }
  end;

  // var fSearchRunNo: TfSearchRunNo;

implementation

uses dmsDataConn, udmLanguage;

{$R *.dfm}

procedure TfSearchRunNo.acRefreshExecute(Sender: TObject);
begin
  if mtProps.State in [dsEdit, dsInsert] then
    mtProps.Post;
  cds_RunNos.Active := False;
  sq_RunNos.ParamByName('RegPointNo').AsInteger := mtPropsRegPointNo.AsInteger;
  sq_RunNos.ParamByName('SupplierNo').AsInteger := mtPropsSupplierNo.AsInteger;
  sq_RunNos.ParamByName('StartPeriod').AsSQLTimeStamp :=
    DateTimeToSQLtimeStamp(mtPropsStartPeriod.AsDateTime);
  sq_RunNos.ParamByName('EndPeriod').AsSQLTimeStamp :=
    DateTimeToSQLtimeStamp(mtPropsEndPeriod.AsDateTime);
  cds_RunNos.Active := True;
end;

procedure TfSearchRunNo.RefreshRunProds;
begin
  cds_RunProds.Active := False;
  sq_RunProds.ParamByName('RegPointNo').AsInteger :=
    mtPropsRegPointNo.AsInteger;
  sq_RunProds.ParamByName('SupplierNo').AsInteger :=
    mtPropsSupplierNo.AsInteger;
  sq_RunProds.ParamByName('RunNo').AsInteger := cds_RunNosKrnr.AsInteger;
  cds_RunProds.Active := True;
end;

procedure TfSearchRunNo.ds_RunNosDataChange(Sender: TObject; Field: TField);
begin
  RefreshRunProds;
end;

procedure TfSearchRunNo.FormCreate(Sender: TObject);
begin
  mtProps.Active := True;
  mtProps.Insert;
  mtPropsStartPeriod.AsDateTime := Now - 10;
  mtPropsEndPeriod.AsDateTime := Now;
  mtProps.Post;
end;

procedure TfSearchRunNo.FormShow(Sender: TObject);
begin
  acRefreshExecute(Sender);
end;

end.
