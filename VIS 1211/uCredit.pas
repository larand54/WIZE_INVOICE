unit uCredit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems,
  ImgList, DB, ExtCtrls, SqlTimSt,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxGridExportLink, ActnList, Menus, cxLookAndFeels,
  cxLookAndFeelPainters, cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxNavigator, System.Actions, siComp, siLngLnk;

type
  TfrmCredit = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbApplyUpdates: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    lbRefresh: TdxBarLargeButton;
    bcClientType: TdxBarCombo;
    ImageList1: TImageList;
    lbPrint: TdxBarLargeButton;
    lbConfigGrid: TdxBarLargeButton;
    SaveDialog1: TSaveDialog;
    lbExportToExcel: TdxBarLargeButton;
    Panel1: TPanel;
    bcInsured: TdxBarCombo;
    lbDelete: TdxBarLargeButton;
    lbNewGroup: TdxBarLargeButton;
    lbManageGroup: TdxBarLargeButton;
    grdKreditDBTableView1: TcxGridDBTableView;
    grdKreditLevel1: TcxGridLevel;
    grdKredit: TcxGrid;
    grdKreditDBTableView1CurrencyNo: TcxGridDBColumn;
    grdKreditDBTableView1VALUTA: TcxGridDBColumn;
    grdKreditDBTableView1grpno: TcxGridDBColumn;
    grdKreditDBTableView1DateCreated: TcxGridDBColumn;
    grdKreditDBTableView1DateModified: TcxGridDBColumn;
    grdKreditDBTableView1UserModified: TcxGridDBColumn;
    grdKreditDBTableView1Name: TcxGridDBColumn;
    grdKreditDBTableView1CreditLimit: TcxGridDBColumn;
    grdKreditDBTableView1Note: TcxGridDBColumn;
    ActionList1: TActionList;
    acSave: TAction;
    acCancelChanges: TAction;
    acNewGroup: TAction;
    acOpenGroup: TAction;
    acDelete: TAction;
    acExport: TAction;
    acClose: TAction;
    acRefresh: TAction;
    acConfigGrid: TAction;
    PopupMenu1: TPopupMenu;
    ngrandringarF41: TMenuItem;
    StngF121: TMenuItem;
    abortF51: TMenuItem;
    ExportF111: TMenuItem;
    NygruppF21: TMenuItem;
    ppnagruppF91: TMenuItem;
    UppdateraF61: TMenuItem;
    SparaF31: TMenuItem;
    acSearchKundInCreditGroup: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    SparaF32: TMenuItem;
    siLangLinked_frmCredit: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acNewGroupExecute(Sender: TObject);
    procedure acOpenGroupExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acExportExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure acExportUpdate(Sender: TObject);
    procedure acSearchKundInCreditGroupExecute(Sender: TObject);
  private
    { Private declarations }
    procedure BuildSQL(Sender: TObject);
    procedure AddNewGroup(Sender: TObject; const ClientNo: Integer;
      const ClientName: String);
    function DataSaved: Boolean;
  public
    { Public declarations }
  end;

var
  frmCredit: TfrmCredit;

implementation

uses dmcVidaInvoice, VidaUser, uSelectCustomer, uCreditGrpClients,
  dmsDataConn, dmsVidaSystem, UnitdmModule1;

{$R *.dfm}

function TfrmCredit.DataSaved: Boolean;
begin
  Result := True;
  With dmModule1 do
  Begin
    if cds_CreLim.State in [dsInsert, dsEdit] then
      Result := False;
    if cds_CreLim.ChangeCount > 0 then
      Result := False;

    if cds_CreClients.ChangeCount > 0 then
      Result := False;
  End;
end;

procedure TfrmCredit.FormCreate(Sender: TObject);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, grdKreditDBTableView1.Name,
    grdKreditDBTableView1);
end;

procedure TfrmCredit.FormDestroy(Sender: TObject);
begin
  frmCredit := Nil;
end;

procedure TfrmCredit.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
  if DataSaved = False then
    if MessageDlg('Ändringar ej sparade.  Exit now?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      CanClose := True
    else
      CanClose := False;

  if CanClose = True then
  Begin
    With dmModule1 do
    Begin
      cds_CreLim.Active := False;
    End;
    dmsSystem.StoreGridLayout(ThisUser.UserID, grdKreditDBTableView1.Name,
      grdKreditDBTableView1);
  End;
end;

{ LARS
  procedure TfrmCredit.grdCreditCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  begin
  if AFocused = True then
  Begin
  AColor := clSilver ;
  End ;
  end; }

procedure TfrmCredit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCredit.BuildSQL(Sender: TObject);
Begin
  With dmModule1 do
  Begin
    cds_CreLim.SQL.Clear;
    cds_CreLim.SQL.Add('Select C.ClientNo AS CLIENTNO, C.ClientName AS KUND,');
    cds_CreLim.SQL.Add
      ('CI.CreditLimit AS KREDITGRANS, CR.idXOR AS IDXOR, CR.typeXOR,');
    cds_CreLim.SQL.Add
      ('CR.RoleType, CI.ClientNo AS CI_ClientNo, C.SearchName AS KORTNAMN,');
    cds_CreLim.SQL.Add('CI.CurrencyNo, CLS.CREDIT_LIMIT_SEK');
    cds_CreLim.SQL.Add('FROM');
    cds_CreLim.SQL.Add('dbo.Client C');
    if bcInsured.ItemIndex = 0 then
      cds_CreLim.SQL.Add
        ('Inner Join dbo.CreditInsurance CI ON CI.ClientNo = C.ClientNo')
    else
      cds_CreLim.SQL.Add
        ('Left Outer Join dbo.CreditInsurance CI ON CI.ClientNo = C.ClientNo');

    cds_CreLim.SQL.Add
      ('Inner Join  dbo.ClientRole CR ON CR.ClientNo = C.ClientNo');
    cds_CreLim.SQL.Add
      ('Left Outer Join CreditLimitSEK CLS ON CLS.ClientNo = C.ClientNo');

    cds_CreLim.SQL.Add('WHERE   CR.RoleType = :RoleType');
    if bcInsured.ItemIndex = 1 then
      cds_CreLim.SQL.Add
        ('AND C.ClientNo not in (Select ClientNo FROM dbo.CreditInsurance) ');
  End; // With
End;

procedure TfrmCredit.AddNewGroup(Sender: TObject; const ClientNo: Integer;
  const ClientName: String);
begin
  With dmModule1 do
  Begin
    cds_CreLim.Insert;
    cds_CreLimgrpNo.AsInteger := ClientNo;
    cds_CreLimName.AsString := ClientName;
    cds_CreLimCreditLimit.AsFloat := 0;
    cds_CreLimCurrencyNo.AsInteger := 10001; // Default SEK, user can change it
    cds_CreLimDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_CreLimDateModified.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cds_CreLimUserModified.AsInteger := ThisUser.UserID;
    cds_CreLim.Post;

    cds_CreClients.Insert;
    cds_CreClientsgrpNo.AsInteger := ClientNo;
    cds_CreClientsClientNo.AsInteger := ClientNo;
    cds_CreClients.Post;
  End;
End;

{ LARS
  procedure TfrmCredit.grdCreditNoteCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  begin
  if Length(Trim(AText)) > 0 then
  AColor:= clYellow ;
  end; }

procedure TfrmCredit.acSaveExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    if cds_CreLim.State in [dsInsert, dsEdit] then
      cds_CreLim.Post;
    if cds_CreLim.ChangeCount > 0 then
    Begin
      cds_CreLim.ApplyUpdates(0);
      cds_CreLim.CommitUpdates;
    End;

    if cds_CreClients.ChangeCount > 0 then
    Begin
      cds_CreClients.ApplyUpdates(0);
      cds_CreClients.CommitUpdates;
    End;
  End;
end;

procedure TfrmCredit.acCancelChangesExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    if cds_CreLim.State in [dsInsert, dsEdit] then
      cds_CreLim.Cancel;

    if cds_CreLim.ChangeCount > 0 then
      cds_CreLim.CancelUpdates;

    if cds_CreClients.State in [dsInsert, dsEdit] then
      cds_CreClients.Cancel;

    if cds_CreClients.ChangeCount > 0 then
      cds_CreClients.CancelUpdates;
  End;
end;

procedure TfrmCredit.acNewGroupExecute(Sender: TObject);
var
  frmSelectCustomer: TfrmSelectCustomer;
begin
  frmSelectCustomer := TfrmSelectCustomer.Create(Nil);
  frmSelectCustomer.ActivateDataSet(0);
  Try
    if frmSelectCustomer.ShowModal = mrOk then
      AddNewGroup(Sender, frmSelectCustomer.cds_ClientsClientNo.AsInteger,
        frmSelectCustomer.cds_ClientsClientName.AsString);
  Finally
    FreeAndNil(frmSelectCustomer);
  End;
end;

procedure TfrmCredit.acOpenGroupExecute(Sender: TObject);
var
  frmCreditGrpClients: TfrmCreditGrpClients;
begin
  if dmModule1.cds_CreLimgrpNo.AsInteger > 0 then
  Begin
    frmCreditGrpClients := TfrmCreditGrpClients.Create(Nil);
    Try
      // frmCreditGrpClients.grpNo          := dmModule1.cds_CreLimgrpno.AsInteger ;
      frmCreditGrpClients.Panel1.Caption := 'GRUPP: ' +
        dmModule1.cds_CreLimName.AsString;
      frmCreditGrpClients.ShowModal;
    Finally
      FreeAndNil(frmCreditGrpClients);
    End;
  End;
end;

procedure TfrmCredit.acDeleteExecute(Sender: TObject);
begin
  With dmModule1 do
  Begin
    cds_CreLim.Delete;
  End;
end;

procedure TfrmCredit.acExportExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  FileName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    SaveDialog1.Filter := 'Excel files (*.xls)|*.xls';
    SaveDialog1.DefaultExt := 'xls';
    SaveDialog1.InitialDir := dmsSystem.Get_Dir('ExcelDir');
    // dmsSystem.GetSystemProp('ExcelDir') ;
    if SaveDialog1.Execute then
    Begin
      FileName := SaveDialog1.FileName;
      ExportGridToExcel(FileName, grdKredit, False, False, True, 'xls');
      ShowMessage('Table exported to Excel file ' + FileName);
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmCredit.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCredit.acRefreshExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass; { Show hourglass cursor }
  Try
    With dmModule1 do
    Begin
      if DataSaved = False then
        if MessageDlg('Ändringar ej sparade.  vill du spara ?', mtConfirmation,
          [mbYes, mbNo], 0) = mrYes then
          acSaveExecute(Sender)
        else
          acCancelChangesExecute(Sender);

      cds_CreLim.Active := False;
      cds_CreClients.Active := False;
      cds_CreLim.Active := True;
      cds_CreClients.Active := True;
    End;
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

procedure TfrmCredit.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := not DataSaved;
end;

procedure TfrmCredit.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved;
end;

procedure TfrmCredit.acDeleteUpdate(Sender: TObject);
begin
  With dmModule1 do
  Begin
    acDelete.Enabled := (cds_CreLim.Active) and
      ((cds_CreLim.RecordCount > 0) or (cds_CreLim.State in [dsEdit,
      dsInsert]));
  End;
end;

procedure TfrmCredit.acExportUpdate(Sender: TObject);
begin
  With dmModule1 do
  Begin
    acExport.Enabled := (cds_CreLim.Active) and (cds_CreLim.RecordCount > 0);
  End;
end;

procedure TfrmCredit.acSearchKundInCreditGroupExecute(Sender: TObject);
var
  frmSelectCustomer: TfrmSelectCustomer;
  GroupName: String;
begin
  GroupName := '';
  frmSelectCustomer := TfrmSelectCustomer.Create(Nil);
  frmSelectCustomer.ActivateDataSet(1);
  Try
    if frmSelectCustomer.ShowModal = mrOk then
      GroupName := dmModule1.GetCreditGroupName
        (frmSelectCustomer.cds_ClientsClientNo.AsInteger);
    if Length(GroupName) > 0 then
      ShowMessage('Kunden finns i kreditgrupp ' + GroupName)
    else
      ShowMessage('Kunden finns inte i någon kreditgrupp');
  Finally
    FreeAndNil(frmSelectCustomer);
  End;
end;

end.
