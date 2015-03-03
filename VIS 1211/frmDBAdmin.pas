// =============================================================================
//
// FILE           :  frmDBAdmin.pas
//
// LANGUAGE       :  Delphi / Object Pascal
//
// ENVIRONMENT    :  Target is any 32-bit Windows environment.
// Written & tested using Windows NT 4.0
//
// SYSTEM         :  Vida Information System
//
// PURPOSE        :  Defines form to allow user to specify more detailed
// log-on information.
//
// NOTES          :  This is a new form, made to look like the similar
// form in the original VidaSys project, but with
// very different code behind it.
//
//
//
//
//
// -----------------------------------------------------------------------------
// DATE        AUTHOR    REF     COMMENTS
// -----------------------------------------------------------------------------
// DMc       001
//
// -----------------------------------------------------------------------------
unit frmDBAdmin;

interface

uses
  Forms,
  Classes,
  Controls,
  StdCtrls,
  Windows, siComp, siLngLnk;

type
  TdlgDBAdmin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    editUserName: TEdit;
    editPassword: TEdit;
    editRemoteDataBase: TEdit;
    editUserKey: TEdit;
    btnOK: Tbutton;
    btnCancel: Tbutton;
    siLangLinked_dlgDBAdmin: TsiLangLinked;
    procedure btnOKClick(Sender: TObject);
    procedure RemoveHighlight(Sender: TObject);
  private
    function getDatabase: String;
    function getUserKey: String;
    function getDBUserName: String;
    function getDBUserPswd: String;
    procedure setDatabase(const Value: String);
    procedure setUserKey(const Value: String);
    procedure setDBUserName(const Value: String);
    procedure setDBUserPswd(const Value: String);
  public
    { Public declarations }
    property Database: String read getDatabase write setDatabase;
    property UserKey: String read getUserKey write setUserKey;
    property DBUserName: String read getDBUserName write setDBUserName;
    property DBUserPswd: String read getDBUserPswd write setDBUserPswd;
  end;

implementation

{$R *.dfm}

uses
  Graphics,
  VidaConst,
  VidaUtils, udmLanguage;

{ TdlgDBAdmin }
function TdlgDBAdmin.getDBUserName: String;
begin
  Result := editUserName.Text
end;

function TdlgDBAdmin.getDBUserPswd: String;
begin
  Result := editPassword.Text
end;

procedure TdlgDBAdmin.setDBUserName(const Value: String);
begin
  editUserName.Text := Value
end;

procedure TdlgDBAdmin.setDBUserPswd(const Value: String);
begin
  editPassword.Text := Value
end;

procedure TdlgDBAdmin.btnOKClick(Sender: TObject);
begin
  // Be optimistic & assume user has entered required fields.
  ModalResult := mrOk; // This may be revised back to mrNone
  // by the following calls to NonEmpty
  // NB Check fields from bottom of form to the top, to
  // ensure the cursor ends up in the top-most required
  // field which is empty.
  // NonEmpty(editRemoteDataBase);
  // NonEmpty(editUserName)
end;

procedure TdlgDBAdmin.RemoveHighlight(Sender: TObject);
// Controls may have their color changed if try to close the dialog box
// with invalid fields. This OnChange event handler resets the color
// to the normal color, removing the "invalid field" indication.
begin
  with Sender as TEdit do
    Color := clWindow
end;

function TdlgDBAdmin.getDatabase: String;
begin
  Result := editRemoteDataBase.Text
end;

procedure TdlgDBAdmin.setDatabase(const Value: String);
begin
  editRemoteDataBase.Text := Value
end;

function TdlgDBAdmin.getUserKey: String;
begin
  Result := editUserKey.Text
end;

procedure TdlgDBAdmin.setUserKey(const Value: String);
begin
  editUserKey.Text := Value
end;

end.
