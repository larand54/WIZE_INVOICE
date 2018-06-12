unit ufrmContactInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.VCLUI.Wait, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FireDAC.Phys.ODBCBase, FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMemo, cxDBEdit;

type
  TfrmContactInfo = class(TForm)
    cxGridContactInfoDBTableView1: TcxGridDBTableView;
    cxGridContactInfoLevel1: TcxGridLevel;
    cxGridContactInfo: TcxGrid;
    qryContactInfo: TFDQuery;
    dsContactInfo: TDataSource;
    con1: TFDConnection;
    fdgxwtcrsr1: TFDGUIxWaitCursor;
    fdphysmsqldrvrlnk1: TFDPhysMSSQLDriverLink;
    cxGridContactInfoDBTableView1UserID: TcxGridDBColumn;
    cxGridContactInfoDBTableView1ContactInfoForEmail: TcxGridDBColumn;
    qryNewUsers: TFDQuery;
    dsNewUsers: TDataSource;
    dbcbbNewUser: TDBComboBox;
    lblNewUser: TLabel;
    btnNewUser: TSpeedButton;
    btnClose: TBitBtn;
    qryContactInfoUserID: TIntegerField;
    qryContactInfoContactInfoForEmail: TMemoField;
    qryNewUsersUserID: TIntegerField;
    qryNewUsersINITIALS: TStringField;
    qryNewUsersLastName: TStringField;
    qryNewUsersUserName: TStringField;
    qryNewUsersPassword: TStringField;
    qryNewUsersDescription: TStringField;
    qryNewUsersCreatedUser: TIntegerField;
    qryNewUsersModifiedUser: TIntegerField;
    qryNewUsersDateCreated: TSQLTimeStampField;
    qryNewUsersCompanyNo: TIntegerField;
    qryNewUsersFirstName: TStringField;
    qryNewUsersEditLoadOrder: TIntegerField;
    qryNewUsersCustomSalesDimListNo: TIntegerField;
    qryNewUsersShowPrice: TIntegerField;
    qryNewUsersAD_Name: TStringField;
    qryNewUsersLanguageID: TIntegerField;
    qryNewUsersAllowedSetCOActive: TIntegerField;
    qryNewUsersPermitLevelMovePkgs: TIntegerField;
    qryNewUsersAct: TIntegerField;
    qryNewUsersCanChangeLOVolUnit: TIntegerField;
    procedure btnCloseClick(Sender: TObject);
    procedure btnNewUserClick(Sender: TObject);
    procedure cxdbmEmailContactInfoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    function checkNewusers: boolean;
    property newUsersExist: boolean read checkNewUsers;
  public
    { Public declarations }
    procedure refresh;
  end;

var
  frmContactInfo: TfrmContactInfo;

implementation

{$R *.dfm}

uses dmsDataConn, uVIS_UTILS;

procedure TfrmContactInfo.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmContactInfo.btnNewUserClick(Sender: TObject);
begin
  if not qryContactInfo.Active then qryContactInfo.Active := true;

  if qryContactInfo.Locate('UserID', qryNewUsersUserID.AsInteger, []) then
    qryContactInfo.Edit
  else
    qryContactInfo.Insert;
    qryContactInfo.FieldByName('UserID').AsInteger := qryNewUsersUserID.AsInteger;
end;

function TfrmContactInfo.checkNewusers: boolean;
begin
  qryNewUsers.Active := false;
  qryNewUsers.Active := true;
  qryNewUsers.first;
  result := not qryNewUsers.Eof;
end;

procedure TfrmContactInfo.cxdbmEmailContactInfoExit(Sender: TObject);
begin
  qryContactInfo.post;
end;

procedure TfrmContactInfo.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if qryContactInfo.State in [dsEdit, dsInsert] then
    case MessageDlg('Du har osparade ändringar - spara?',
     mtConfirmation,
     mbYesNoCancel, 0) of
        mrCancel:
          begin
            CanClose := false;
          end;
          mrYes:
            begin
              CanClose := true;
              qryContactInfo.Post;
            end;
          mrNo:
            begin
              CanClose := true;
              qryContactInfo.Close;
            end;
    end;
end;

procedure TfrmContactInfo.FormCreate(Sender: TObject);
begin
{$IFDEF DEBUG}
  qryContactInfo.Connection := Con1;
  qryNewUsers.Connection := Con1;
{$ELSE}
  if ComputerName = 'CARMAK-FASTER' then begin
    qryContactInfo.Connection := Con1;
    qryNewUsers.Connection := Con1;
  end
  else begin
  qryContactInfo.Connection := dmsConnector.FDConnection1;
  qryNewUsers.Connection := dmsConnector.FDConnection1;
  end;
{$ENDIF}
  qryContactInfo.Active := true;
  Refresh;
end;

procedure TfrmContactInfo.refresh;
var
  newUsers: boolean;
begin
  newUsers := newUsersExist;
  dbcbbNewUser.Visible := newUsers;
  btnNewUser.Visible := newUsers;
  lblNewUser.Visible := newUsers;
end;

end.
