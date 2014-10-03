unit dmsDataConn;

interface

uses
  Classes,
  DB,
  
  SysUtils, FMTBcd, Provider, ImgList, Controls, Dialogs,
  uADStanIntf, uADStanOption, uADStanParam, uADStanError,
  uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager,
  uADGUIxIntf, uADStanDef, uADStanPool, uADPhysManager, uADCompClient,
  uADMoniBase, uADMoniRemoteClient, uADGUIxFormsfLogin, uADGUIxFormsfError,
  uADGUIxFormsWait, uADPhysODBCBase, uADPhysMSSQL, uADCompDataSet,
  uADMoniFlatFile, uADCompGUIx ;

type
  TdmsConnector = class(TDataModule)
    ilStatus: TImageList;
    imglistActions: TImageList;
    sq_GetLoggedInUser: TADQuery;
    sq_GetLoggedInUserLoggedInUser: TWideStringField;
    sq_GetUserName: TADQuery;
    sq_GetUserNameUserName: TStringField;
    sq_GetUserNamePassWord: TStringField;
    ADConnection1: TADConnection;
    ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink;
    ADGUIxWaitCursor1: TADGUIxWaitCursor;
    sq_GetCompany: TADQuery;
    sq_GetCompanyClientName: TStringField;
    spad_GetSecondNo: TADStoredProc;
    spad_MaxNo: TADStoredProc;
    sp_GetCurrPkgNo: TADStoredProc;
    sp_MinNo: TADStoredProc;
    ADTransaction1: TADTransaction;
    SQLConn_XOR: TADConnection;
    ADMoniFlatFileClientLink1: TADMoniFlatFileClientLink;
    sp_UpdateMaxSecByLoad: TADStoredProc;
    procedure DataModuleCreate           (Sender: TObject);
    procedure DataModuleDestroy          (Sender: TObject);
  private
    { Private declarations }

    FLastTransNo : LongWord;

  public
    { Public declarations }

    DriveLetter,
    InifilesMap : String ;
    LoginChanged : Boolean ;
    Org_AD_Name : String ;
    Org_DB_Name : String ;
//    DeleteTdmVidaInvoice  : Boolean ;
    procedure UpdateMaxSecByLoad(const LoadNo : Integer) ;
    procedure InitProcedure(Proc: TADStoredProc);
    function  NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
    function  Get_AD_Name : String ;
    procedure GetUserNameLoggedIn(Var UserName, UserPswd : String;Const pAD_Name : String) ;

    function  GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
    function  GetCompanyName (CompanyNo : Integer) : String ;

    constructor Create(AOwner : TComponent); override;

    procedure Commit ;
    procedure Rollback ;
    function StartTransaction : LongWord;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

    function NextMaxNo(TableName: string): Integer;
    function NextMinNo(TableName: string): Integer;


  end;

var
  dmsConnector: TdmsConnector;

implementation

uses
  Forms, dmsVidaSystem;
//  VidaUser;


{$R *.dfm}

procedure TdmsConnector.InitProcedure(Proc: TADStoredProc);
var
  i: Integer;
begin
  Proc.Close;
  for i:=0 to Proc.Params.Count-1 do
    Proc.Params[i].Clear;
end;

function TdmsConnector.NextSecondMaxNo(const TableName: String; const PrimaryKeyValue: Integer): Integer ;
begin
  InitProcedure(spad_GetSecondNo);
  spad_GetSecondNo.ParamByName('@TableName').AsString := TableName;
  spad_GetSecondNo.ParamByName('@PrimaryKeyValue').AsInteger := PrimaryKeyValue;
  spad_GetSecondNo.ExecProc;
  try
    Result := spad_GetSecondNo.ParamByName('@SecondKeyValue').AsInteger;
  finally
    spad_GetSecondNo.Close;
  end;
end;

function TdmsConnector.Get_AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  Result:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    Result:= '-' ;
 sq_GetLoggedInUser.Close ;
End ;

procedure TdmsConnector.GetUserNameLoggedIn(Var UserName, UserPswd : String;Const pAD_Name : String) ;
Var AD_Name : String ;
Begin
 sq_GetLoggedInUser.Open ;
 if not sq_GetLoggedInUser.Eof then
  AD_Name:= sq_GetLoggedInUserLoggedInUser.AsString
   else
    AD_Name:= '-' ;
// ShowMessage('AD_Name = '+AD_Name) ;
 if Length(pAD_Name) > 0 then
  AD_Name:= pAD_Name ;
 sq_GetLoggedInUser.Close ;
 if AD_Name <> '-' then
 Begin
  sq_GetUserName.ParamByName('AD_Name').AsString:= AD_Name ;
  sq_GetUserName.Open ;
  if not sq_GetUserName.Eof Then
  Begin
   UserName:= sq_GetUserNameUserName.AsString ;
   UserPswd:= sq_GetUserNamePassWord.AsString ;
  End
   else
    Begin
     ShowMessage('Användare ' + AD_Name + ' saknar behörighet i VIS') ;
     UserName:= '-' ;
    End ;
  sq_GetUserName.Close ;
 End
 else
 Begin
  ShowMessage('Windows användarnamn saknas') ;
  UserName:= '-' ;
 End ;
End ;

procedure TdmsConnector.Commit ;
begin
 ADTransaction1.Commit ;
end;

constructor TdmsConnector.Create(AOwner : TComponent);
begin
  inherited;
  FLastTransNo := 0;
end;

procedure TdmsConnector.DataModuleCreate(Sender: TObject);
begin
// ADMoniFlatFileClientLink1.Tracing := False ;
//ALVESQL04
//CARMAK-HP8530W\SQLEXPRESS
end;


procedure TdmsConnector.DataModuleDestroy(Sender: TObject);
//
// Close the database when the data module is destroyed when
// the application is closed.
//
begin
//  SQLConnection.close ;
 ADConnection1.Close ;
end;


function TdmsConnector.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  try
{    DecodeDate(Now,YY,MM,DD);
    DecodeTime(Now,HH,MN,SS,MS);
    SQLMonitor.FileName := Format('Logs\%d%d%d%d%d%d.txt',[YY,MM,DD,HH,MN,SS]);
    SQLConnection.Params.Values['HostName']  := HostName;
    SQLConnection.Params.Values['Database']  := Database;
    SQLConnection.Params.Values['User Name'] := DBUserName;
    SQLConnection.Params.Values['Password']  := DBUserPswd;
 }

    ADConnection1.Params.Values['Server'  ]  := HostName;
    ADConnection1.Params.Values['Database']  := Database;
    ADConnection1.Params.Values['User_Name'] := DBUserName;
    ADConnection1.Params.Values['Password']  := DBUserPswd;
{    ShowMessage('Hostname: '+ADConnection1.Params.Values['HostName']
    +'  Database: '+ ADConnection1.Params.Values['Database']
    +'  User name: '+ ADConnection1.Params.Values['User Name']
    +'  Password: '+ ADConnection1.Params.Values['Password']     ) ; }
    ADConnection1.Connected := True ; // .Open;

    Result := ADConnection1.Connected;

  except
    on EAbort do
//    Begin
     Result := FALSE;
  // End ;
  end;
end;

function TdmsConnector.NextMaxNo(TableName: string): Integer;
begin
  self.spad_MaxNo.ParamByName('@TableName').AsString := TableName;
  self.spad_MaxNo.ExecProc;
  try
    Result := self.spad_MaxNo.ParamByName('@MaxNo').AsInteger;
  finally
    self.spad_MaxNo.Close;
  end;
end;

function TdmsConnector.NextMinNo(TableName: string): Integer;
begin
  self.sp_MinNo.ParamByName('@TableName').AsString := TableName;
  self.sp_MinNo.ExecProc;
  try
    Result := self.sp_MinNo.ParamByName('@MaxNo').AsInteger;
  finally
    self.sp_MinNo.Close;
  end;
end;

procedure TdmsConnector.Rollback ;
begin
  ADTransaction1.Rollback ;
end;

function TdmsConnector.StartTransaction : LongWord;
begin
// ADTransaction1.
// ADConnection1.StartTransaction ;
 ADTransaction1.StartTransaction ;
end;

function TdmsConnector.GetCompanyName (CompanyNo : Integer) : String ;
Begin
 sq_GetCompany.Close ;
 sq_GetCompany.ParamByName('CompanyNo').AsInteger:= CompanyNo ;
 sq_GetCompany.Open ;
 if not sq_GetCompany.Eof then
  Result:= sq_GetCompanyClientName.AsString
  else
  Result:= '' ;
 sq_GetCompany.Close ;
End ;

function TdmsConnector.GetCurrentPkgNo(const ClientNo, NoOfPkgNo : Integer): Integer;
begin
  sp_GetCurrPkgNo.ParamByName('@ClientNo').AsInteger := ClientNo ;
  sp_GetCurrPkgNo.ParamByName('@NoOfPkgNo').AsInteger := NoOfPkgNo ;

  sp_GetCurrPkgNo.ExecProc;
  try
    Result := sp_GetCurrPkgNo.ParamByName('@fCurrentPkgNo').AsInteger;
  finally
    sp_GetCurrPkgNo.Close;
  end;
end;

procedure TdmsConnector.UpdateMaxSecByLoad(const LoadNo : Integer) ;
begin
  sp_UpdateMaxSecByLoad.ParamByName('@LoadNo').AsInteger := LoadNo ;
  try
   sp_UpdateMaxSecByLoad.ExecProc;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
     Raise ;
    End ;
   end;
end;

end.
