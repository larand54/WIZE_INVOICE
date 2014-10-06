unit uFtpParam ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  ActnList, DBActns, dxBar, dxBarExtItems, cxMaskEdit, Menus, cxSplitter,
  cxTextEdit, cxLabel, cxCheckBox, cxDBEdit, cxContainer,
  cxLookAndFeelPainters, cxShellBrowserDialog, cxButtons, cxLookAndFeels,
  cxButtonEdit, cxGroupBox, cxRadioGroup, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, System.Actions ;

type
  TfFtpParam = class(TForm)
    grdFTPDBTableView1: TcxGridDBTableView;
    grdFTPLevel1: TcxGridLevel;
    grdFTP: TcxGrid;
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
    acSave: TAction;
    acCancelChanges: TAction;
    acNewCity: TAction;
    PopupMenu1: TPopupMenu;
    ngraF41: TMenuItem;
    StngF121: TMenuItem;
    NyF21: TMenuItem;
    Lggtill1: TMenuItem;
    SparaF31: TMenuItem;
    abortF51: TMenuItem;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    grdFTPDBTableView1ConnectionName: TcxGridDBColumn;
    grdFTPDBTableView1ConnectionNo: TcxGridDBColumn;
    grdFTPDBTableView1Host: TcxGridDBColumn;
    grdFTPDBTableView1Port: TcxGridDBColumn;
    grdFTPDBTableView1UserName: TcxGridDBColumn;
    grdFTPDBTableView1Password: TcxGridDBColumn;
    grdFTPDBTableView1StartDir: TcxGridDBColumn;
    grdFTPDBTableView1PassiveMode: TcxGridDBColumn;
    grdFTPDBTableView1AsciiMode: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    teConnectionName: TcxDBTextEdit;
    teHost: TcxDBTextEdit;
    tePort: TcxDBTextEdit;
    teUserName: TcxDBTextEdit;
    tePassword: TcxDBTextEdit;
    teStartDir: TcxDBTextEdit;
    cbPassiveMode: TcxDBCheckBox;
    cbAsciiMode: TcxDBCheckBox;
    cxButton1: TcxButton;
    acImportMapp: TAction;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cxLabel7: TcxLabel;
    cxLabelImportMapp: TcxLabel;
    grdFTPDBTableView1LocalDir: TcxGridDBColumn;
    cxLabel8: TcxLabel;
    beLocalDir: TcxDBButtonEdit;
    acTestConnection: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton2: TcxButton;
    memLog: TMemo;
    grdFTPDBTableView1StartDirUpload: TcxGridDBColumn;
    cxLabel9: TcxLabel;
    tStartDirUpload: TcxDBTextEdit;
    cxSplitter2: TcxSplitter;
    lbFiles: TListBox;
    rgListRemoteDir: TcxRadioGroup;
    cxButton3: TcxButton;
    acCloseFTP: TAction;
    acGetFile: TAction;
    procedure acExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Delete_UTExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acNewCityExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acImportMappExecute(Sender: TObject);
    procedure grdFTPDBTableView1LocalDirPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure beLocalDirPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure acTestConnectionExecute(Sender: TObject);
    procedure clFTPSendCommand(Sender: TObject; const AText: String);
    procedure clFTPReceiveResponse(Sender: TObject; AList: TStrings);
    procedure clFTPDirectoryListing(Sender: TObject;
      AFileInfo: TclFtpFileInfo; const Source: String);
    procedure acCloseFTPExecute(Sender: TObject);
    procedure acGetFileExecute(Sender: TObject);

  private
    { Private declarations }
    procedure FillDirList;
    function  DataSparat : Boolean ;
    procedure DoOpenDir(const ADir: string);
  public
    { Public declarations }
  end;

//var fFtpParam: TfFtpParam;

implementation

uses dmsDataConn, dmsVidaSystem, VidaUser, VidaConst ;

{$R *.dfm}

function TfFtpParam.DataSparat : Boolean ;
Begin
 Result:= True ;
 With dmsSystem do
 Begin
  if cds_FtpParam.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_FtpParam.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;


procedure TfFtpParam.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfFtpParam.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if DataSparat = False then
  if MessageDlg('Ändringar är inte sparad, vill du spara?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   acSaveExecute (Sender)
   else
    acCancelChangesExecute(Sender) ;
 With dmsSystem do
 Begin
  cds_FtpParam.Active  := False ;
 End ;


 if clFTP.Active then
  clFTP.Close() ;
   
 CanClose:= True ;
end;

procedure TfFtpParam.Delete_UTExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if MessageDlg('Är du säker?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   cds_FtpParam.Delete ;
 End ;
end;

procedure TfFtpParam.acSaveExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_FtpParam.State in [dsInsert, dsEdit] then
   cds_FtpParam.Post ;

  if cds_FtpParam.ChangeCount > 0 then
  Begin
   cds_FtpParam.ApplyUpdates(0) ;
   cds_FtpParam.CommitUpdates ;
  End ;
 End ;
end;

procedure TfFtpParam.acCancelChangesExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  if cds_FtpParam.State in [dsEdit, dsInsert] then
   cds_FtpParam.Cancel ;
  if cds_FtpParam.ChangeCount > 0 then
   cds_FtpParam.CancelUpdates ;
 End ;
end;

procedure TfFtpParam.acNewCityExecute(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_FtpParam.Insert ;
  grdFTP.SetFocus ;
 End ;
end;

procedure TfFtpParam.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:= not DataSparat ;
end;

procedure TfFtpParam.acCancelChangesUpdate(Sender: TObject);
begin
 acCancelChanges.Enabled:= not DataSparat ;
end;

procedure TfFtpParam.FormShow(Sender: TObject);
begin
 With dmsSystem do
 Begin
  cds_FtpParam.Active  := False ;
  cds_FtpParam.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  cds_FtpParam.Active  := True ;

  cxLabelImportMapp.Caption:= dmsSystem.Get_A_Value_From_UserDir('LastOrder.txt', 'ExportDir') ;
 End ;
end;

procedure TfFtpParam.acImportMappExecute(Sender: TObject);
Var Mapp : String ;
begin
 if cxShellBrowserDialog1.Execute then
 Begin
  Mapp:=  IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;
  dmsSystem.Save_A_Value_To_UserDir ('LastOrder.txt', Mapp, 'ExportDir') ;
//  cxShellListView1.Root.CustomPath:= Mapp ;
 End
  else
   Mapp:= '**' ;
end;


procedure TfFtpParam.grdFTPDBTableView1LocalDirPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
 With dmsSystem do
 Begin
  if cxShellBrowserDialog1.Execute then
  Begin
   if cds_FtpParam.State in [dsBrowse] then
    cds_FtpParam.Edit ;
   cds_FtpParamLocalDir.AsString  := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;
  End ;
 End ;//With
end;

procedure TfFtpParam.beLocalDirPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 With dmsSystem do
 Begin
  if cxShellBrowserDialog1.Execute then
  Begin
   if cds_FtpParam.State in [dsBrowse] then
    cds_FtpParam.Edit ;
   cds_FtpParamLocalDir.AsString  := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;
  End ;
 End ;//With
end;

procedure TfFtpParam.acTestConnectionExecute(Sender: TObject);
Var edtStartDir, LocalDir : String ;
const
  transferTypes: array[Boolean] of TclFtpTransferType = (ttBinary, ttAscii);
begin
 With dmsSystem do
 Begin
  Try
//  cds_FtpParam.Active  := False ;
//  cds_FtpParam.ParamByName('UserID').AsInteger := ThisUser.UserID ;
//  cds_FtpParam.Active  := True ;
  if not cds_FtpParam.Eof then
  Begin
   LocalDir := cds_FtpParamLocalDir.AsString ;

   if clFTP.Active then
   begin
    ShowMessage('You are already connected. Please click Logout to disconnect.');
//    Result  := False ;
    Exit;
   end;
//  clFTP.Port          := cds_FtpParamPort.AsInteger ;
   clFTP.Server        := cds_FtpParamHost.AsString ;
   clFTP.UserName      := cds_FtpParamUserName.AsString ;
   clFTP.Password      := cds_FtpParamPassword.AsString ;
   clFTP.PassiveMode   := cds_FtpParamPassiveMode.AsInteger = 1 ;
   clFTP.TransferType  := transferTypes[not cds_FtpParamAsciiMode.AsInteger = 1] ;
   clFTP.Open();     //transferTypes[cbAsciiMode.Checked];
   if (cds_FtpParamStartDir.AsString = '') then
   begin
    edtStartDir := clFTP.CurrentDir;
   end
   else
    Begin
     if rgListRemoteDir.ItemIndex = cUp then
      edtStartDir := cds_FtpParamStartDir.AsString
       else
        edtStartDir := cds_FtpParamStartDirUpload.AsString ;
    End ;

   if (edtStartDir <> '') and ((edtStartDir[1] = '/') or (edtStartDir[1] = '\'))
//   or (edtStartDir[1] = 'C'))
then
//  if (edtStartDir.Text <> '') and (edtStartDir.Text[1] = '/') then
   begin
    DoOpenDir(edtStartDir) ;
    FillDirList ;
   end;
//   Result  := True ;
//  UpdateStatus();
  end ; //if not cds_FtpParam.Eof then

//   if clFTP.Active then
//    clFTP.Close() ;
  Finally
//   cds_FtpParam.Active := False ;
  End ;
 End ;//With
end;

procedure TfFtpParam.DoOpenDir(const ADir: string);
var
  dir: string;
begin
  dir := ADir;
  if (Length(dir) > 1) and (dir[1] = '/') and (dir[2] = '/') then
  begin
    system.Delete(dir, 1, 1);
  end;
  clFTP.ChangeCurrentDir('/');
  clFTP.ChangeCurrentDir(dir);
//  FillDirList();
end;

procedure TfFtpParam.clFTPSendCommand(Sender: TObject;
  const AText: String);
begin
  memLog.Lines.Add(Trim(AText));
end;

procedure TfFtpParam.clFTPReceiveResponse(Sender: TObject;
  AList: TStrings);
begin
 memLog.Lines.AddStrings(AList);
end;

procedure TfFtpParam.clFTPDirectoryListing(Sender: TObject;
  AFileInfo: TclFtpFileInfo; const Source: String);
const
  dirPrefix: array[Boolean] of string = ('', '/');
begin
  lbFiles.Items.Add(dirPrefix[AFileInfo.IsDirectory or AFileInfo.IsLink] + AFileInfo.FileName);
end;

procedure TfFtpParam.acCloseFTPExecute(Sender: TObject);
begin
 if clFTP.Active then
  clFTP.Close() ;
end;

procedure TfFtpParam.acGetFileExecute(Sender: TObject);
begin
// 5_090817_132800.csv
end;

procedure TfFtpParam.FillDirList;
begin
  lbFiles.Clear();
  clFTP.DirectoryListing();
  lbFiles.Sorted := False;
  lbFiles.Sorted := True;
end;

end.
