unit uBasMatPunkter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ActnList, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  TfBasMatPunkter = class(TForm)
    Panel1: TPanel;
    bbInsert: TBitBtn;
    bbRemove: TBitBtn;
    bbApplyChanges: TBitBtn;
    bbCancelChanges: TBitBtn;
    grdRegPointsDBTableView1: TcxGridDBTableView;
    grdRegPointsLevel1: TcxGridLevel;
    grdRegPoints: TcxGrid;
    grdRegPointsDBTableView1RegPointName: TcxGridDBColumn;
    grdRegPointsDBTableView1SequenceNo: TcxGridDBColumn;
    ActionList1: TActionList;
    acAdd: TAction;
    acDelete: TAction;
    acCancelChanges: TAction;
    acSave: TAction;
    siLangLinked_fBasMatPunkter: TsiLangLinked;
    procedure bbCancelRowClick(Sender: TObject);
    procedure bbApplyChangesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acAddExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
  private
    { Private declarations }
    function DataSaved: Boolean;
  public
    { Public declarations }
  end;

  // var fBasMatPunkter: TfBasMatPunkter;

implementation

uses dmsVidaContact;

{$R *.dfm}

function TfBasMatPunkter.DataSaved: Boolean;
begin
  Result := True;
  With dmsContact do
  Begin
    if cds_RegPoints.State in [dsInsert, dsEdit] then
      Result := False;
    if cds_RegPoints.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfBasMatPunkter.bbCancelRowClick(Sender: TObject);
begin
  With dmsContact do
  Begin
    cds_RegPoints.Cancel;
  End;
end;

procedure TfBasMatPunkter.bbApplyChangesClick(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_RegPoints.State in [dsInsert, dsEdit] then
      cds_RegPoints.Post;
    if cds_RegPoints.ChangeCount > 0 then
      cds_RegPoints.ApplyUpdates(0);
  End;
end;

procedure TfBasMatPunkter.FormCreate(Sender: TObject);
begin
  With dmsContact do
  Begin
    cds_RegPoints.Active := True;
  End;
end;

procedure TfBasMatPunkter.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if DataSaved = False then
    if MessageDlg('Data är inte sparad, vill du avsluta?', mtConfirmation,
      [mbYes, mbNo], 0) = mrOK then
      CanClose := True
    else
      CanClose := False;

  if CanClose then
    With dmsContact do
    Begin
      cds_RegPoints.Active := False;
    End;
end;

procedure TfBasMatPunkter.acAddExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_RegPoints.State in [dsInsert, dsEdit] then
      cds_RegPoints.Post;
    cds_RegPoints.Insert;
  End;

end;

procedure TfBasMatPunkter.acDeleteExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    cds_RegPoints.Delete;
  End;
end;

procedure TfBasMatPunkter.acCancelChangesExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_RegPoints.State in [dsInsert, dsEdit] then
      cds_RegPoints.Post;
    if cds_RegPoints.ChangeCount > 0 then
      cds_RegPoints.CancelUpdates;
  End;
end;

procedure TfBasMatPunkter.acSaveExecute(Sender: TObject);
begin
  With dmsContact do
  Begin
    if cds_RegPoints.State in [dsInsert, dsEdit] then
      cds_RegPoints.Post;
    if cds_RegPoints.ChangeCount > 0 then
      cds_RegPoints.ApplyUpdates(0);
  End;
end;

procedure TfBasMatPunkter.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSaved;
end;

procedure TfBasMatPunkter.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved;
end;

procedure TfBasMatPunkter.acDeleteUpdate(Sender: TObject);
begin
  With dmsContact do
  Begin
    acDelete.Enabled := (cds_RegPoints.Active) and
      (cds_RegPoints.RecordCount > 0);
  End;

end;

end.
