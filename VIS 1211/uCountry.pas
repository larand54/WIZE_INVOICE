unit uCountry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, cxMaskEdit, Menus,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, System.Actions, siComp,
  siLngLnk;

type
  TfCountry = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionList1: TActionList;
    Delete_UT: TDataSetDelete;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    acExit: TAction;
    cxGrid1DBTableView1CountryNo: TcxGridDBColumn;
    cxGrid1DBTableView1CountryName: TcxGridDBColumn;
    cxGrid1DBTableView1DateCreated: TcxGridDBColumn;
    cxGrid1DBTableView1ModifiedUser: TcxGridDBColumn;
    cxGrid1DBTableView1CreatedUser: TcxGridDBColumn;
    cxGrid1DBTableView1SequenceNo: TcxGridDBColumn;
    cxGrid1DBTableView1CountryCode: TcxGridDBColumn;
    cxGrid1DBTableView1CountryPhoneCode: TcxGridDBColumn;
    cxGrid1DBTableView1MarketRegionNo: TcxGridDBColumn;
    acSave: TAction;
    acCancel: TAction;
    acAddCountry: TAction;
    PopupMenu1: TPopupMenu;
    NyttlandF21: TMenuItem;
    ngraF41: TMenuItem;
    StngF121: TMenuItem;
    SparaF31: TMenuItem;
    abortF51: TMenuItem;
    siLangLinked_fCountry: TsiLangLinked;
    procedure bbOKClick(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Delete_UTExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acAddCountryExecute(Sender: TObject);
    procedure acCancelUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
  private
    { Private declarations }
    function DataSparat: Boolean;
  public
    { Public declarations }
  end;

  // var fCountry: TfCountry;

implementation

uses dmsDataConn, dmsVidaSystem, dmsVidaContact;

{$R *.dfm}

procedure TfCountry.bbOKClick(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_Country.State in [dsEdit, dsInsert] then
      cds_Country.Post;
    if cds_Country.ChangeCount > 0 then
    Begin
      cds_Country.ApplyUpdates(0);
      cds_Country.CommitUpdates;
    End;
  End;
End;

function TfCountry.DataSparat: Boolean;
Begin
  Result := True;
  With dmsContact do
  Begin
    if cds_Country.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_Country.ChangeCount > 0 then
      Result := False;
  End;
End;

procedure TfCountry.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfCountry.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if DataSparat = False then
    if MessageDlg('Ändringar är inte sparad, vill du spara?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      acSaveExecute(Sender)
    else
      acCancelExecute(Sender);
  CanClose := True;
end;

procedure TfCountry.Delete_UTExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if MessageDlg('Är du säker?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      cds_Country.Delete;
  End;
end;

procedure TfCountry.acSaveExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_Country.State in [dsEdit, dsInsert] then
      cds_Country.Post;
    if cds_Country.ChangeCount > 0 then
    Begin
      cds_Country.ApplyUpdates(0);
      cds_Country.CommitUpdates;
    End;
  End;
end;

procedure TfCountry.acCancelExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_Country.State in [dsEdit, dsInsert] then
      cds_Country.Cancel;
    if cds_Country.ChangeCount > 0 then
      cds_Country.CancelUpdates;
  End;
end;

procedure TfCountry.acAddCountryExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    cds_Country.Insert;
    cxGrid1.SetFocus;
  End;
end;

procedure TfCountry.acCancelUpdate(Sender: TObject);
begin
  acCancel.Enabled := not DataSparat;
end;

procedure TfCountry.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSparat;
end;

end.
