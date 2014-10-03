unit dmcVidaSystem;

interface

uses
  Classes,
  SysUtils,
  VidaType, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TdmcSystem = class(TDataModule)

  private
    { Private declarations }
  public


    function AccessRights(
      const UserName  : String;
      const UserPswd  : String ) : TUserSpec;

    function LogOnToDatabase(
      HostName   : string;
      Database   : string;
      DBUserName : string;
      DBUserPswd : string
      ) : Boolean;

  end;

var
  dmcSystem: TdmcSystem;

implementation

{$R *.dfm}

uses
  dmsVidaSystem, dmsDataConn ;//, recerror ;


{ TdmcSystem }
function TdmcSystem.AccessRights(
  const UserName  : String;
  const UserPswd  : String ) : TUserSpec;
begin
  Result := dmsSystem.AccessRights(UserName, UserPswd)
end;


function TdmcSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd: string) : Boolean;
begin
  Result := dmsSystem.LogOnToDatabase(HostName, Database, DBUserName, DBUserPswd);
end;

end.
