unit uSelectCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls,
  Buttons, ExtCtrls, FMTBcd, Provider, SqlExpr, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit,
  cxLookAndFeels, cxLookAndFeelPainters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfrmSelectCustomer = class(TForm)
    Panel1: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    ds_Clients: TDataSource;
    grdClientsDBTableView1: TcxGridDBTableView;
    grdClientsLevel1: TcxGridLevel;
    grdClients: TcxGrid;
    grdClientsDBTableView1ClientNo: TcxGridDBColumn;
    grdClientsDBTableView1ClientName: TcxGridDBColumn;
    cds_Clients: TFDQuery;
    sq_AllClients: TFDQuery;
    cds_ClientsClientNo: TIntegerField;
    cds_ClientsClientName: TStringField;
    siLangLinked_frmSelectCustomer: TsiLangLinked;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ActivateDataSet(const sqltype: Integer);
  end;

  // var frmSelectCustomer: TfrmSelectCustomer;

implementation

uses dmsVidaContact, dmsDataConn;

{$R *.dfm}

procedure TfrmSelectCustomer.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

procedure TfrmSelectCustomer.FormDestroy(Sender: TObject);
begin
  With dmsContact do
  Begin
    cds_Clients.Active := False;
  End;
end;

procedure TfrmSelectCustomer.ActivateDataSet(const sqltype: Integer);
begin
  With dmsContact do
  Begin
    if cds_Clients.Active then
      cds_Clients.Active := False;
    if sqltype = 1 then
    Begin
      cds_Clients.SQL.Clear;
      cds_Clients.SQL.Text := sq_AllClients.SQL.Text;
    End;
    cds_Clients.Active := True;
  End;
end;

end.
