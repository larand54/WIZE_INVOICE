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
  siComp, siLngLnk, cxImage, dxBar, Vcl.ExtDlgs;

type
  TfReportStatics = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
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
    mtClientDocType: TIntegerField;
    siLangLinked_fReportStatics: TsiLangLinked;
    dxBarPopupMenu1: TdxBarPopupMenu;
    acOpenImage: TAction;
    cxButton4: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBCardView1: TcxGridDBCardView;
    cxGridDBCardViewRow1: TcxGridDBCardViewRow;
    cxGridDBCardViewRow2: TcxGridDBCardViewRow;
    cxGridDBCardViewRow3: TcxGridDBCardViewRow;
    cxGridDBCardViewRow4: TcxGridDBCardViewRow;
    cxGridDBCardViewRow5: TcxGridDBCardViewRow;
    cxGridDBCardViewRow6: TcxGridDBCardViewRow;
    cxGridDBCardViewRow7: TcxGridDBCardViewRow;
    cxGridDBCardViewRow8: TcxGridDBCardViewRow;
    cxGridDBCardViewRow9: TcxGridDBCardViewRow;
    cxGridDBCardViewRow10: TcxGridDBCardViewRow;
    cxGridLevel1: TcxGridLevel;
    SalesRegionNo: TcxGridDBColumn;
    DocType: TcxGridDBColumn;
    CompanyName: TcxGridDBColumn;
    Address: TcxGridDBColumn;
    Telefon: TcxGridDBColumn;
    Email: TcxGridDBColumn;
    HQ: TcxGridDBColumn;
    Vat_BankInfo: TcxGridDBColumn;
    AccountNo: TcxGridDBColumn;
    Giro: TcxGridDBColumn;
    Logga: TcxGridDBColumn;
    cxGridDBTableView1FootNote: TcxGridDBColumn;
    cxGridDBTableView1BankGiro: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel2: TPanel;
    cxGrid2DBTableView1SalesRegionNo: TcxGridDBColumn;
    cxGrid2DBTableView1DocType: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxButton5: TcxButton;
    acNew: TAction;
    acSave2: TAction;
    cxButton6: TcxButton;
    acDelete2: TAction;
    cxButton7: TcxButton;
    cxGrid2DBTableView1Adress: TcxGridDBColumn;
    cxGrid2DBTableView1Telefon: TcxGridDBColumn;
    cxGrid2DBTableView1Internet: TcxGridDBColumn;
    cxGrid2DBTableView1OrgNo: TcxGridDBColumn;
    cxGrid2DBTableView1Fax: TcxGridDBColumn;
    cxGrid2DBTableView1Email: TcxGridDBColumn;
    cxGrid2DBTableView1VatNo: TcxGridDBColumn;
    cxGrid2DBTableView1BankGiro: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure acNewRSExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acNewRSUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure mtClientClientNoChange(Sender: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acOpenImageExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure acSave2Execute(Sender: TObject);
    procedure acDelete2Execute(Sender: TObject);
    procedure acSave2Update(Sender: TObject);
    procedure acDelete2Update(Sender: TObject);
    procedure acNewUpdate(Sender: TObject);
  private
    { Private declarations }
    function Saved2: Boolean;
    function Saved: Boolean;
  public
    { Public declarations }
  end;

  // var fReportStatics: TfReportStatics;

implementation

uses dmsVidaContact, udmLanguage, VidaUser ;

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

function TfReportStatics.Saved2: Boolean;
begin
  Result := True;
  with dmsContact do
  Begin
    if cds_ReportStatics.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_ReportStatics.ChangeCount > 0 then
    Begin
      Result := False;
    End;
  End;
end;

procedure TfReportStatics.acDelete2Execute(Sender: TObject);
begin
  with dmsContact do
  Begin
    cds_ReportStatics.Delete;
  End;
end;

procedure TfReportStatics.acDelete2Update(Sender: TObject);
begin
  with dmsContact do
  Begin
    acDelete2.Enabled := (cds_ReportStatics.Active) and
      ((cds_ReportStatics.RecordCount > 0) or (cds_ReportStatics.State
      in [dsEdit, dsInsert]));
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

procedure TfReportStatics.acNewExecute(Sender: TObject);
begin
  with dmsContact do
  Begin
    cds_ReportStatics.Insert;
    cds_ReportStaticsSalesRegionNo.AsInteger  := mtClientClientNo.AsInteger;
    cds_ReportStaticsDocType.AsInteger        := mtClientDocType.AsInteger;
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

procedure TfReportStatics.acNewUpdate(Sender: TObject);
begin
  with dmsContact do
  Begin
    acNew.Enabled := (mtClient.Active) and (mtClientClientNo.AsInteger > 0)
      and (cds_ReportStatics.Active) and
      ((cds_ReportStatics.RecordCount = 0) and (cds_ReportStatics.State
      in [dsBrowse]));
  End;
end;

procedure TfReportStatics.acOpenImageExecute(Sender: TObject);
Var Filnamn : String ;
begin
  with dmsContact do
  Begin
    with TOpenDialog.Create(self) do
      try
        Caption := 'Öppna Logga';
        Options := [ofPathMustExist, ofFileMustExist];
        if Execute then
         Begin
          if cds_ReportStaticsII.State in [dsbrowse] then
           cds_ReportStaticsII.Edit ;
          cds_ReportStaticsIILogga.LoadFromFile(FileName);
         End;
      finally
        Free;
      end;
  End;
end;

procedure TfReportStatics.acSave2Execute(Sender: TObject);
begin
  with dmsContact do
  Begin
    if cds_ReportStatics.State in [dsEdit, dsInsert] then
      cds_ReportStatics.Post;
    if cds_ReportStatics.ChangeCount > 0 then
    Begin
      cds_ReportStatics.ApplyUpdates(0);
      cds_ReportStatics.CommitUpdates;
    End;
  End;
end;

procedure TfReportStatics.acSave2Update(Sender: TObject);
begin
  acSave2.Enabled := not Saved2;
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
      cds_ReportStatics.Active := False;
    End;
end;

procedure TfReportStatics.FormShow(Sender: TObject);
begin

  dmsContact.cds_SR.Active := False ;
  dmsContact.cds_SR.ParamByName('SalesRegionNo').AsInteger  := dmsContact.GetSalesRegionNo(ThisUser.CompanyNo) ;
  dmsContact.cds_SR.Active := True ;

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


    cds_ReportStatics.Filter := 'SalesRegionNo = -1 AND DocType = -1';
    cds_ReportStatics.Filtered := True;
    cds_ReportStatics.Active := False;
    cds_ReportStatics.Active := True;
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

    if (mtClientClientNo.AsInteger > 0) and (mtClientDocType.AsInteger > 0) then
      cds_ReportStatics.Filter := 'SalesRegionNo = ' +
        mtClientClientNo.AsString + ' AND DocType = ' + mtClientDocType.AsString
    else
      cds_ReportStatics.Filter := 'SalesRegionNo = -1 AND DocType = -1';
    cds_ReportStatics.Filtered := True;
  End;
end;

end.
