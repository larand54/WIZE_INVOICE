unit VidaSecureStore;

interface

uses
  Forms,
  INIFiles,

  uEncode;

Type

  TSecureStore = class

    private


      // Cache of data that is permanently stored in external storage.
      // The data in the cache may have been read from storage, or may have been set in code.
      FCachedDatabase   : string;
      FCachedDBUserName : string;
      FCachedDBUserPswd : string;
      FCachedRemember   : Boolean;
      FCachedUserName   : string;
      FCachedUserPswd   : string;
      FCRPATH           : string;

      FCoder : TVDEncode;


      function  getUserName: String;
      procedure setUserName(const Value: String);

      procedure setDBUserName(const Value: String);
      function  getDBUserName: String;

      procedure setDBUserPswd(const Value: String);
      function  getDBUserPswd: String;

      function  getDatabase: string;
      procedure setDatabase(const Value: string);

      function  getUserPswd: String;
      procedure setUserPswd(const Value: String);

      procedure setCRPATH(const Value: String);
      function  getCRPATH: String;


    protected

      FINI : TINIFile;

      FUserKey : string; // Used to en/de crypt db sign-on data

    public

      Constructor Create;
      Destructor Destroy; override;

      procedure SaveAll;

      property Database   : string  read getDatabase     write setDatabase;     // The name of the DB
                                                                                // to log on to.
                                                                                // eg: merlin12:vidadata

      property DBUserName : String  read getDBUserName   write setDBUserName;   // The name used to log
                                                                                // onto the database

      property CRPath : String  read getCRPath   write setCRPath;   //

      property DBUserPswd : String  read getDBUserPswd   write setDBUserPswd;   // The password to log
                                                                                // onto the database

      property Remember   : Boolean read FCachedRemember write FCachedRemember; // Should we write all
                                                                                // data to storage when
                                                                                // this object is freed?

      property UserKey    : string  read FUserKey        write FUserKey;        // Encryption key specified
                                                                                // by user. There is also
                                                                                // the SYSKEY

      property UserName   : String  read getUserName     write setUserName;     // The name used to get
                                                                                // access rights from the
                                                                                // "user" database table

      property UserPswd   : String  read getUserPswd     write setUserPswd;     // The password to get
                                                                                // access rights from the
                                                                                // "user" database table


    end;

implementation

uses
  SysUtils, dmsDataConn, VidaUser ;

CONST SYSKEY = 'kldj28skac3';


{ TSecureStore }

// ----------------------------------------------------------------------------------
constructor TSecureStore.Create;
begin
  inherited;

  FCoder := TVDEncode.Create;
//  FINI   := TINIFile.Create('H:\VIS\KONFIG\VIS.INI');
  FINI   := TINIFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI');
//  FINI   := TINIFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
  FUserKey := FCoder.DecodeStr(FINI.ReadString('Security', 'vd0', FCoder.EncodeStr('12345', SYSKEY)),SYSKEY);


  FCachedRemember := FINI.ReadBool('Security','Remember Password',FALSE);
  FCachedUserName := '';
  FCachedUserPswd := '';
end;

// ----------------------------------------------------------------------------------
destructor TSecureStore.Destroy;
begin
  SaveAll;
  FINI.Free;
  inherited;
end;


// ----------------------------------------------------------------------------------
function TSecureStore.getDatabase: string;
begin
  if FCachedDatabase = '' then
    FCachedDatabase := FCoder.DecodeStr(FINI.ReadString('Security', 'vd3', FCoder.EncodeStr('Vida912:vis_vwab', FUserKey)),FUserKey);
  Result := FCachedDatabase;
end;

// ----------------------------------------------------------------------------------
function TSecureStore.getDBUserName: String;
begin
  if FCachedDBUserName = '' then
    FCachedDBUserName := FCoder.DecodeStr(FINI.ReadString('Security', 'vd1', FCoder.EncodeStr('sa', FUserKey)),FUserKey);
  result := FCachedDBUserName;
end;

// ----------------------------------------------------------------------------------
function TSecureStore.getDBUserPswd: String;
begin
  if FCachedDBUserPswd = '' then
    FCachedDBUserPswd := FCoder.DecodeStr(FINI.ReadString('Security', 'vd2', FCoder.EncodeStr('huggkubb', FUserKey)),FUserKey);
  Result := FCachedDBUserPswd;
end;

// ----------------------------------------------------------------------------------
function TSecureStore.getUserName: String;
begin
  if FCachedUserName = '' then
    FCachedUserName := FCoder.DecodeStr(FINI.ReadString('Security', 'User Name', ''),SYSKEY);
  Result := FCachedUserName;
end;

// ----------------------------------------------------------------------------------
function TSecureStore.getUserPswd: String;
begin
  if FCachedUserPswd = '' then
    FCachedUserPswd := FCoder.DecodeStr(FINI.ReadString('Security', 'User Password', ''),SYSKEY);
  Result := FCachedUserPswd;
end;

// ----------------------------------------------------------------------------------
procedure TSecureStore.SaveAll;
begin
  FINI.WriteString( 'Security', 'vd0',               FCoder.EncodeStr(FUserKey,          SYSKEY  ));
  FINI.WriteString( 'Security', 'vd1',               FCoder.EncodeStr(FCachedDBUserName, FUserKey));
  FINI.WriteString( 'Security', 'vd2',               FCoder.EncodeStr(FCachedDBUserPswd, FUserKey));
  FINI.WriteString( 'Security', 'vd3',               FCoder.EncodeStr(FCachedDatabase,   FUserKey));
  FINI.WriteString( 'Security', 'User Name',         FCoder.EncodeStr(FCachedUserName,   SYSKEY  ));
  FINI.WriteBool  ( 'Security', 'Remember Password',                  FCachedRemember             );
  if Remember then
    FINI.WriteString( 'Security', 'User Password',   FCoder.EncodeStr(FCachedUserPswd,   SYSKEY  ))
  else
    FINI.WriteString( 'Security', 'User Password',   FCoder.EncodeStr('',   SYSKEY  ));
end;

// ----------------------------------------------------------------------------------
procedure TSecureStore.setDatabase(const Value: string);
begin
  if FCachedDatabase <> Value then
    FCachedDatabase := Value;
end;

// ----------------------------------------------------------------------------------
procedure TSecureStore.setDBUserName(const Value: String);
begin
  if FCachedDBUserName <> Value then
    FCachedDBUserName := Value;
end;

// ----------------------------------------------------------------------------------
procedure TSecureStore.setDBUserPswd(const Value: String);
begin
  if FCachedDBUserPswd <> Value then
    FCachedDBUserPswd := Value;
end;

// ----------------------------------------------------------------------------------
procedure TSecureStore.setUserName(const Value: String);
begin
  if FCachedUserName <> Value then
    FCachedUserName := Value;
end;

// ----------------------------------------------------------------------------------
procedure TSecureStore.setUserPswd(const Value: String);
begin
  if FCachedUserPswd <> Value then
    FCachedUserPswd := Value;
end;

function TSecureStore.getCRPATH: String;
begin
  if FCRPATH = '' then
    FCRPATH := FINI.ReadString('Security', 'crpath', 'c:\') ;
  result := FCRPATH;
end;



procedure TSecureStore.setCRPATH(const Value: String);
begin
  if FCRPATH <> Value then
    FCRPATH := Value;
end;


end.
