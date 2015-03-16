unit uReportStatics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Menus, ActnList, StdCtrls, cxButtons, cxLabel, cxRichEdit, cxGridCardView,
  cxGridDBCardView, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxNavigator, System.Actions, cxGridCustomLayoutView,
  siComp, siLngLnk, cxImage;

type
  TfReportStatics = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    grdReportStaticsDBTableView1: TcxGridDBTableView;
    grdReportStaticsLevel1: TcxGridLevel;
    grdReportStatics: TcxGrid;
    mtClient: TFDMemTable;
    mtClientClientNo: TIntegerField;
    mtClientSalesregion: TStringField;
    lcSalesregion: TcxDBLookupComboBox;
    dsClient: TDataSource;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    acNewRS: TAction;
    acSave: TAction;
    acDelete: TAction;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    grdReportStaticsDBCardView1: TcxGridDBCardView;
    grdReportStaticsDBCardView1SalesRegionNo: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1DocType: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1CompanyName: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1Address: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1Telefon: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1Email: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1HQ: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1Vat_BankInfo: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1AccountNo: TcxGridDBCardViewRow;
    grdReportStaticsDBCardView1Giro: TcxGridDBCardViewRow;
    mtClientDocType: TIntegerField;
    grdReportStaticsDBTableView1SalesRegionNo: TcxGridDBColumn;
    grdReportStaticsDBTableView1DocType: TcxGridDBColumn;
    grdReportStaticsDBTableView1CompanyName: TcxGridDBColumn;
    grdReportStaticsDBTableView1Address: TcxGridDBColumn;
    grdReportStaticsDBTableView1Telefon: TcxGridDBColumn;
    grdReportStaticsDBTableView1Email: TcxGridDBColumn;
    grdReportStaticsDBTableView1HQ: TcxGridDBColumn;
    grdReportStaticsDBTableView1Vat_BankInfo: TcxGridDBColumn;
    grdReportStaticsDBTableView1AccountNo: TcxGridDBColumn;
    grdReportStaticsDBTableView1Giro: TcxGridDBColumn;
    siLangLinked_fReportStatics: TsiLangLinked;
    grdReportStaticsDBTableView1Logga: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure acNewRSExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acNewRSUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure mtClientClientNoChange(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    function Saved: Boolean;
  public
    { Public declarations }
  end;

  // var fReportStatics: TfReportStatics;

implementation

uses dmsVidaContact, udmLanguage;

{$R *.dfm}

function TfReportStatics.Saved: Boolean;
begin
  Result := True;
  with dmsContact do
  Begin
    if cds_ReportStaticsII.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_ReportStaticsII.ChangeCount > 0 then
    Begin
      Result := False;
    End;
  End;
end;

procedure TfReportStatics.acDeleteExecute(Sender: TObject);
begin
  with dmsContact do
  Begin
    cds_ReportStaticsII.Delete;
  End;
end;

procedure TfReportStatics.acDeleteUpdate(Sender: TObject);
begin
  with dmsContact do
  Begin
    acDelete.Enabled := (cds_ReportStaticsII.Active) and
      ((cds_ReportStaticsII.RecordCount > 0) or (cds_ReportStaticsII.State
      in [dsEdit, dsInsert]));
  End;
end;

procedure TfReportStatics.acNewRSExecute(Sender: TObject);
begin
  with dmsContact do
  Begin
    cds_ReportStaticsII.Insert;
    cds_ReportStaticsIISalesRegionNo.AsInteger := mtClientClientNo.AsInteger;
    cds_ReportStaticsIIDocType.AsInteger := mtClientDocType.AsInteger;
  End;
end;

procedure TfReportStatics.acNewRSUpdate(Sender: TObject);
begin
  with dmsContact do
  Begin
    acNewRS.Enabled := (mtClient.Active) and (mtClientClientNo.AsInteger > 0)
      and (cds_ReportStaticsII.Active) and
      ((cds_ReportStaticsII.RecordCount = 0) and (cds_ReportStaticsII.State
      in [dsBrowse]));
  End;
end;

procedure TfReportStatics.acSaveExecute(Sender: TObject);
begin
  with dmsContact do
  Begin
    if cds_ReportStaticsII.State in [dsEdit, dsInsert] then
      cds_ReportStaticsII.Post;
    if cds_ReportStaticsII.ChangeCount > 0 then
    Begin
      cds_ReportStaticsII.ApplyUpdates(0);
      cds_ReportStaticsII.CommitUpdates;
    End;
  End;
end;

procedure TfReportStatics.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not Saved;
end;

procedure TfReportStatics.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if not Saved then
  Begin
    if MessageDlg('Data är inte sparad, vill du stänga?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      CanClose := True
    else
      CanClose := False;
  End
  else
    CanClose := True;

  if CanClose then
    with dmsContact do
    Begin
      cds_ReportStaticsII.Active := False;
    End;
end;

procedure TfReportStatics.FormShow(Sender: TObject);
begin
  mtClient.Active := False;
  mtClient.Active := True;
  mtClient.Insert;
  mtClientDocType.AsInteger := 2;
  mtClient.Post;

  with dmsContact do
  Begin
    cds_ReportStaticsII.Filter := 'SalesRegionNo = -1 AND DocType = -1';
    cds_ReportStaticsII.Filtered := True;
    cds_ReportStaticsII.Active := False;
    cds_ReportStaticsII.Active := True;
  End;
end;

procedure TfReportStatics.mtClientClientNoChange(Sender: TField);
begin
  with dmsContact do
  Begin
    if (mtClientClientNo.AsInteger > 0) and (mtClientDocType.AsInteger > 0) then
      cds_ReportStaticsII.Filter := 'SalesRegionNo = ' +
        mtClientClientNo.AsString + ' AND DocType = ' + mtClientDocType.AsString
    else
      cds_ReportStaticsII.Filter := 'SalesRegionNo = -1 AND DocType = -1';
    cds_ReportStaticsII.Filtered := True;
  End;
end;

end.
