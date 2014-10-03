unit VidaUser;

interface

uses
  Graphics,
  dmcVidaSystem,
  VidaType,
  dmsDataConn ;


type
  TUser = class
  private
    FUserSpec : TUserSpec;
    FNeedsRefresh: Boolean; // If user name or password is changed, note that
    // we need to re-read access rights from database before
    // supplying access rights data.
    // Security stuff
    FDatabase   : string;
    FDBUserPswd : string;
    FDBUserName : string;
    FHostName   : string;
    FUserName   : string;
    FUserPswd   : string;
//    FCompanyNo  : integer;
    //
    // User preferences
    //
    FclBackPreliminaryLO  : TColor; // Color of background for rows on
    FclBackNewLO          : TColor; // load orders grid.
    FclBackAcceptedLO     : TColor;
    FclBackRejectedLO     : TColor;
    FclBackCompletedLO    : TColor;
    FfLoadOrderHSplit     : integer;  // Horizontal split position between 2
                                      // grids on form in fLoadOrder
    FLoadEntryHSplit: Integer;

    procedure setDatabase(const Value: String);
    function getCanModify(DataCategory: TDataCategory) : Boolean;
    function getUserID: Integer;
    function getUserCompanyNo: Integer;
  protected
    procedure LoadAccessRightsFromDB;
    function getCanView(DataCategory: TDataCategory) : Boolean;
//    procedure LoadUserPreferences;
    procedure setUserName(const Value: String);
    procedure setUserPswd(const Value: String);
    function  Check_UserLogOn(UserName, Password: String): Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    function Logon : Boolean;
    property CanView [DataCategory: TDataCategory] : Boolean read getCanView;
    property CanModify [DataCategory: TDataCategory] : Boolean read getCanModify;
    property clBackPreliminaryLO : TColor read FclBackPreliminaryLO write
             FclBackPreliminaryLO;
    property clBackNewLO : TColor read FclBackNewLO write FclBackNewLO;
    property clBackRejectedLO : TColor read FclBackRejectedLO write
             FclBackRejectedLO;
    property clBackAcceptedLO : TColor read FclBackAcceptedLO write
             FclBackAcceptedLO;
    property clBackCompletedLO : TColor read FclBackCompletedLO write
             FclBackCompletedLO;
    property CompanyNo : integer read getUserCompanyNo ; //LARS FCompanyNo;
    property Database : String read FDatabase write setDatabase;
    property DBUserName : String read FDBUserName write FDBUserName;
    property DBUserPswd : String read FDBUserPswd write FDBUserPswd;
    property fLoadOrderHSplit : integer read FfLoadOrderHSplit write
             FfLoadOrderHSplit;
    property HostName : String  read FHostName;
    property UserID   : Integer read getUserID;
    property UserName : String  read FUserName write setUserName;
    property UserPswd : String  read FUserPswd write setUserPswd;
    property LoadEntryHSplit : Integer read FLoadEntryHSplit write FLoadEntryHSplit;
  end;

function ThisUser : TUser;

implementation

uses
  Classes,
  Dialogs,
  Forms,
  SysUtils,
  VidaUtils, dmsVidaSystem;


var
  TheOneAndOnlyUser: TUser;
  CreatingAsSingleton: Boolean = False;

function ThisUser : TUser;
begin
  if TheOneAndOnlyUser = nil then
  begin
    CreatingAsSingleton := true;
    try
      TheOneAndOnlyUser := TUser.Create
    finally
      CreatingAsSingleton := False
    end;
  end;
  Result := TheOneAndOnlyUser
end;


{ TUser }
constructor TUser.Create;
var
  DataCategory: TDataCategory;
begin
  inherited;
  // Get user access rights & company number
  for DataCategory := Low(TDataCategory) to High(TDataCategory) do
    FUserSpec.AccessRights[DataCategory] := arNONE;
  FNeedsRefresh := TRUE;
end;


destructor TUser.Destroy;
begin
  inherited
end;


function TUser.getCanModify(DataCategory: TDataCategory) : Boolean;
begin
  if FNeedsRefresh then
    LoadAccessRightsFromDB;
  Result := FUserSpec.AccessRights[DataCategory] = arMODIFY
end;


function TUser.getCanView(DataCategory: TDataCategory) : Boolean;
begin
  if FNeedsRefresh then
    LoadAccessRightsFromDB;
  Result := FUserSpec.AccessRights[DataCategory] in [arREAD, arMODIFY] ;
  if Result = False then
   ShowMessage('Behörighet saknas') ;
end;


function TUser.getUserID: Integer;
begin
  Result := FUserSpec.UserID;
end;

function TUser.getUserCompanyNo: Integer;
begin
  Result := FUserSpec.CompanyNo;
end;

procedure TUser.LoadAccessRightsFromDB;
begin
  FUserSpec := dmcSystem.AccessRights(UserName, UserPswd);
  FNeedsRefresh := FALSE;
end;

function TUser.Logon : Boolean;
var
  iPosDelim : integer;
  pUserName,
  pUserPswd : String ;
begin
  Result := FALSE;
//  Result := dmsConnector.LogOnToDatabase('alvesql01', 'vis_vida_test','','');
  Result := dmsConnector.LogOnToDatabase('carmak-m30', 'vis_vwab','sa','sa');

  if Result then
  Begin
   dmsConnector.GetUserNameLoggedIn(FUserName, FUserPswd) ;
//   ShowMessage('FUserName = '+FUserName) ;
//   ShowMessage('FUserPswd = '+FUserPswd) ;
//          FUserName    := GetUserName 'larmak';
//          FUserPswd    := 'lasse';
   Result := Check_UserLogOn(FUserName, FUserPswd) ;
   if Result then
    LoadAccessRightsFromDB;
  End ;
end;

function TUser.Check_UserLogOn(UserName, Password: String): Boolean;
begin
  Result := False;

  with dmsSystem.qryExec do
  begin
   SQL.Clear ;
   SQL.Add('SELECT users.UserID, users.CompanyNo, client.SalesRegionNo, 0 AS ProductNo From Users '
        + ' LEFT OUTER JOIN Client ON client.ClientNo = users.CompanyNo '
        + ' WHERE UserName = ''' + UserName + ''' AND '
        + ' Password = ''' + Password + '''');
   Open ;     

    if Not Eof then
    begin
      Result := True;

    end;
   Close ;
  end; //with
end;

procedure TUser.setDatabase(const Value: String);
var
  iPosDelim: integer;
begin
  iPosDelim := Pos(':', Value);
  if iPosDelim > 0 then
  begin
    FHostName := Copy(Value, 1, iPosDelim - 1);
    FDatabase := Copy(Value, iPosDelim + 1, Length(Value) - iPosDelim)
  end
  else
    raise EInvalidOperation.CreateFmt('Invalid Remote database (%s)', [Value])
end;


procedure TUser.setUserName(const Value: String);
begin
  FUserName := Value;
  FNeedsRefresh := true
end;


procedure TUser.setUserPswd(const Value: String);
begin
  FUserPswd := Value;
  FNeedsRefresh := true
end;



end.


