unit uAvdelning;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, fBaseFormA, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxPSCore, dxPScxCommon,
  Vcl.ActnList, Vcl.ImgList, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, SqlTimSt,
  cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu ;

type
  TfAvdelning = class(TfrmBaseFormA)
    cxGrid1DBTableView1ClientNo: TcxGridDBColumn;
    cxGrid1DBTableView1Kontonr: TcxGridDBColumn;
    cxGrid1DBTableView1Avdelning: TcxGridDBColumn;
    cxGrid1DBTableView1CreatedUser: TcxGridDBColumn;
    cxGrid1DBTableView1DateCreated: TcxGridDBColumn;
    Panel3: TPanel;
    ds_Client: TDataSource;
    mtClient: TFDMemTable;
    mtClientClientNo: TIntegerField;
    mtClientVerk: TStringField;
    lcClient: TcxDBLookupComboBox;
    acRefresh: TAction;
    cds_Avdelning: TFDQuery;
    cds_AvdelningClientNo: TIntegerField;
    cds_AvdelningKontonr: TStringField;
    cds_AvdelningAvdelning: TStringField;
    cds_AvdelningCreatedUser: TIntegerField;
    cds_AvdelningDateCreated: TSQLTimeStampField;
    cxLabel1: TcxLabel;
    cds_SR: TFDQuery;
    cds_SRClientName: TStringField;
    cds_SRClientNo: TIntegerField;
    procedure acRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cds_AvdelningAfterInsert(DataSet: TDataSet);
    procedure acAddRecordUpdate(Sender: TObject);
    procedure mtClientClientNoChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var fAvdelning: TfAvdelning;

implementation

{$R *.dfm}

uses dmcVidaInvoice, vidauser ;

procedure TfAvdelning.acAddRecordUpdate(Sender: TObject);
begin
  inherited;
 acAddRecord.Enabled  := (mtClient.Active) //and (mtClient.RecordCount > 0)
 and (mtClientClientNo.AsInteger > 0) ;
end;

procedure TfAvdelning.acRefreshExecute(Sender: TObject);
begin
  inherited;
 with dmVidaInvoice do
 Begin
   cds_Avdelning.Active := False ;
   cds_Avdelning.ParamByName('ClientNo').AsInteger  := mtClientClientNo.AsInteger ;
   cds_Avdelning.Active := True ;
 End;
end;

procedure TfAvdelning.cds_AvdelningAfterInsert(DataSet: TDataSet);
begin
  inherited;
 cds_AvdelningClientNo.AsInteger          := mtClientClientNo.AsInteger ;
 cds_AvdelningCreatedUser.AsInteger       := ThisUser.UserID ;
 cds_AvdelningDateCreated.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(now) ;
end;

procedure TfAvdelning.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
 mtClient.Active  := False ;
end;

procedure TfAvdelning.FormCreate(Sender: TObject);
begin
  inherited;
 mtClient.Active  := True ;
end;

procedure TfAvdelning.mtClientClientNoChange(Sender: TField);
begin
  inherited;
 acRefreshExecute(Sender) ;
end;

end.
