unit uCreditGrpClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems,
  ExtCtrls, DB, ImgList, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ActnList, Menus, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  System.Actions, siComp, siLngLnk;

type
  TfrmCreditGrpClients = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    lbAddClientToGroup: TdxBarLargeButton;
    lbRemoveClientFromGroup: TdxBarLargeButton;
    lbApplyChanges: TdxBarLargeButton;
    lbCancelChanges: TdxBarLargeButton;
    lbExit: TdxBarLargeButton;
    Panel1: TPanel;
    ImageList1: TImageList;
    grdkreditGrpClientDBTableView1: TcxGridDBTableView;
    grdkreditGrpClientLevel1: TcxGridLevel;
    grdkreditGrpClient: TcxGrid;
    grdkreditGrpClientDBTableView1grpNo: TcxGridDBColumn;
    grdkreditGrpClientDBTableView1ClientNo: TcxGridDBColumn;
    grdkreditGrpClientDBTableView1KUND: TcxGridDBColumn;
    ActionList1: TActionList;
    acAddKund: TAction;
    acRemoveKund: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    acClose: TAction;
    PopupMenu1: TPopupMenu;
    LggtillkundF21: TMenuItem;
    ngrandringarF41: TMenuItem;
    StngF121: TMenuItem;
    abortkundF51: TMenuItem;
    SparaF31: TMenuItem;
    siLangLinked_frmCreditGrpClients: TsiLangLinked;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acAddKundExecute(Sender: TObject);
    procedure acRemoveKundExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acRemoveKundUpdate(Sender: TObject);
  private
    { Private declarations }
    function DataSaved: Boolean;
  public
    { Public declarations }

  end;

  // var frmCreditGrpClients: TfrmCreditGrpClients;

implementation

uses dmcVidaInvoice, UnitdmModule1;

{$R *.dfm}

function TfrmCreditGrpClients.DataSaved: Boolean;
begin
  Result := True;
  With dmModule1 do
  Begin
    if cds_CreGrpCli.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_CreGrpCli.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfrmCreditGrpClients.FormShow(Sender: TObject);
begin
  With dmModule1 do
  Begin
    cds_CreGrpCli.ParamByName('grpNo').AsInteger :=
      dmModule1.cds_CreLimgrpno.AsInteger;
    cds_CreGrpCli.Active := True;
  End;
end;

procedure TfrmCreditGrpClients.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  With dmModule1 do
  Begin
    cds_CreGrpCli.Active := False;
  End;
  CanClose := True;
end;

procedure TfrmCreditGrpClients.acAddKundExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    cds_CreGrpCli.Insert;
    // cds_CreGrpCligrpNo.AsInteger  := dmModule1.cds_CreLimgrpno.AsInteger ;
    grdkreditGrpClient.SetFocus;
  End;
end;

procedure TfrmCreditGrpClients.acRemoveKundExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    cds_CreGrpCli.Delete;
  End;
end;

procedure TfrmCreditGrpClients.acSaveExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    if cds_CreGrpCli.State in [dsEdit, dsInsert] then
      cds_CreGrpCli.Post;
    if cds_CreGrpCli.ChangeCount > 0 then
    Begin
      cds_CreGrpCli.ApplyUpdates(0);
      cds_CreGrpCli.CommitUpdates;
    End;
  End;
end;

procedure TfrmCreditGrpClients.acCancelChangesExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    if cds_CreGrpCli.State in [dsInsert, dsEdit] then
      cds_CreGrpCli.Cancel;

    if cds_CreGrpCli.ChangeCount > 0 then
      cds_CreGrpCli.CancelUpdates;
  End;
end;

procedure TfrmCreditGrpClients.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCreditGrpClients.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSaved;
end;

procedure TfrmCreditGrpClients.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved;
end;

procedure TfrmCreditGrpClients.acRemoveKundUpdate(Sender: TObject);
begin
  With dmModule1 do
  Begin
    acRemoveKund.Enabled := (cds_CreGrpCli.Active) and
      (cds_CreGrpCli.RecordCount > 0);
  End;
end;

end.
