// =============================================================================
//
//  FILE           :  frmLogon.pas
//
//  LANGUAGE       :  Delphi / Object Pascal
//
//  ENVIRONMENT    :  Target is any 32-bit Windows environment.
//                    Written & tested using Windows NT 4.0
//
//  SYSTEM         :  Vida Information System
//
//  PURPOSE        :  Defines form used to input the user name and password
//                    to gain access to the system.
//                    This form is a copy of the logon form from the original
//                    VidaSys project, made to look the same but with very
//                    different code behind the surface.
//
//  NOTES          :  This form is created & loaded by the new TUser object
//                    rather than by the main form as in the original project.
//
//
//
// -----------------------------------------------------------------------------
//  DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
//              DMc       001
//
// -----------------------------------------------------------------------------
unit frmLogon;

interface

uses
  Classes,
  Controls,
  ExtCtrls,
  Forms,
  Graphics,
  StdCtrls,
  Windows;


type
  TdlgLogOn = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    editPassword: TEdit;
    editUserName: TEdit;
    ckRememberPassword: TCheckBox;
    btnDBSetup: Tbutton;
    btnOK: Tbutton;
    btnCancel: Tbutton;
    procedure btnOKClick(Sender: TObject);
    procedure editUserNameChange(Sender: TObject);
    procedure btnDBSetupClick(Sender: TObject);
  private
    FDBUserName            : string; // These are the logon name & password for the
    FDBUserPswd            : string; // database.
    FDatabase              : string; // The name of the database to work with
    FUserKey               : string; // Similar to FSysKey but specific to this user.
    function getDBUserName : String;
    function getDBUserPswd : String;
    function getDatabase   : String;
    function getUserName   : String; // These identify the user at the application
    function getUserPswd   : String; // level - details are just looked up in a table
    procedure setDatabase(const Value: String);
    procedure setDBUserName(const Value: String);
    procedure setDBUserPswd(const Value: String);
    procedure setUsername(const Value: String);
    procedure setUserPswd(const Value: String);
    function getRemember: Boolean;
    procedure setRemember(const Value: Boolean);
  public
    function Execute : Boolean;
    property DBUserName : String  read getDBUserName write setDBUserName; // The user name and password
    property DBUserPswd : String  read getDBUserPswd write setDBUserPswd; // used to sign on to database
    property Database   : String  read getDatabase   write setDatabase;   // Database name, in format
                                                                          // ComputerName:DatabaseName
                                                                          // eg merlin12:VidaData
    property Remember   : Boolean read getRemember   write setRemember;   // Do we save password?
    property UserKey    : string  read FUserKey      write FUserKey;      // User's encryption key
    property UserName   : String  read getUserName   write setUsername;   // The user name & password
    property UserPswd   : String  read getUserPswd   write setUserPswd;   // used to get access rights
                                                                          // from table in database
  end;

implementation

{$R *.dfm}

uses
  inifiles,
//  Registry,
  SysUtils,
  frmDBAdmin,
  uEncode,
  VidaConst,
  VidaUtils;


{ TdlgLogOn }
function TdlgLogOn.Execute : Boolean;
begin
  ShowModal;
  Result := ModalResult = mrOk;
end;


procedure TdlgLogOn.btnOKClick(Sender: TObject);
begin
  if NonEmpty(editUserName) then
    ModalResult := mrOk
end;


procedure TdlgLogOn.editUserNameChange(Sender: TObject);
begin
  editUserName.Color := clWindow
end;


function TdlgLogOn.getDatabase : String;
begin
  Result := FDatabase
end;


function TdlgLogOn.getUserName : String;
begin
  Result := editUserName.Text
end;


function TdlgLogOn.getUserPswd : String;
begin
  Result := editPassword.Text
end;


function TdlgLogOn.getDBUserName : String;
begin
  Result := FDBUserName
end;


function TdlgLogOn.getDBUserPswd : String;
begin
  Result := FDBUserPswd
end;




procedure TdlgLogOn.btnDBSetupClick(Sender: TObject);
var
  dlgDBAdmin: TdlgDBAdmin;
begin
  dlgDBAdmin := TdlgDBAdmin.Create(Nil); // Create 2nd dialog
  try
    dlgDBAdmin.Database := FDatabase; // Populate 2nd dialog
    dlgDBAdmin.UserKey := FUserKey;
    dlgDBAdmin.DBUserName := Self.DBUserName;
    dlgDBAdmin.DBUserPswd := Self.DBUserPswd;

    dlgDBAdmin.ShowModal; // Show 2nd dialog
    if dlgDBAdmin.ModalResult = mrOk then
    begin
      FDatabase := dlgDBAdmin.Database; // Extract modified values
      FUserKey := dlgDBAdmin.UserKey;
      FDBUserName := dlgDBAdmin.DBUserName;
      FDBUserPswd := dlgDBAdmin.DBUserPswd
    end;

  finally
    FreeAndNil(dlgDBAdmin) ;//.Free // Release 2nd dialog
  end;
end;



procedure TdlgLogOn.setDatabase(const Value: String);
begin
  self.FDatabase := Value;
end;

procedure TdlgLogOn.setDBUserName(const Value: String);
begin
  self.FDBUserName := Value;
end;

procedure TdlgLogOn.setDBUserPswd(const Value: String);
begin
  self.FDBUserPswd := Value;
end;

procedure TdlgLogOn.setUsername(const Value: String);
begin
  self.editUserName.Text := Value;
end;

procedure TdlgLogOn.setUserPswd(const Value: String);
begin
  self.editPassword.Text := Value;
end;

function TdlgLogOn.getRemember: Boolean;
begin
  Result := ckRememberPassword.Checked;
end;

procedure TdlgLogOn.setRemember(const Value: Boolean);
begin
  ckRememberPassword.Checked := Value;
end;

end.
