unit udmLanguage;

interface

uses
  System.SysUtils, System.Classes, siComp;

type
  TdmLanguage = class(TDataModule)
    siLang1: TsiLang;
    siLangDispatcher1: TsiLangDispatcher;
    procedure siLangDispatcher1LanguageChanged(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function getProgramName(ExeFileWithPath: string): string;
    function getFileWithPath(ExeFileWithPath, ext, path: string): string;
    function includePrefixToExtension(ext: string): string;
  end;

var
  dmLanguage: TdmLanguage;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses dmsVidaSystem, dialogs;

procedure TdmLanguage.DataModuleCreate(Sender: TObject);
var
  Path : String;
begin
{
    path := dmsSystem.GetLangPath();
    assert(path <> '','Path to languagefiles not defined in database');
  //  siLangDispatcher1.FileName := Path;
  siLangDispatcher1.FileName := Path + '\' + siLangDispatcher1.FileName;
}

{$IFDEF DEBUG}
  path := ExtractFilePath(ParamStr(0));
{$ELSE}
  path := dmsSystem.GetLangPath();
  if GetEnvironmentVariable('COMPUTERNAME') = 'CARMAK-FASTER' then
    path := ExtractFilePath(ParamStr(0));
{$ENDIF}
  path := getFileWithPath(ParamStr(0),'sib', path);
  assert(path <> '','Path to languagefiles not defined in database');
  siLangDispatcher1.FileName := Path;
end;

function TdmLanguage.getFileWithPath(ExeFileWithPath, ext, path: string): string;
begin
  result := IncludeTrailingPathDelimiter(path) + getProgramName(ExeFileWithPath) + includePrefixToExtension(ext);
end;

function TdmLanguage.getProgramName(ExeFileWithPath: string): string;
var
  h,i: integer;
  s: string;
begin
  result := '';
   h := pos('.',ExeFileWithPath);
   if h = 0 then
    exit;

   i := h-1;
   s := '';
   while ExeFileWithPath[i] <> '\' do begin
     s := ExeFileWithPath[i] + s;
     dec(i);
     if i <= 0 then
       exit;
   end;
   result := s;
end;

function TdmLanguage.includePrefixToExtension(ext: string): string;
begin
  if ext[1] <> '.' then
    result := '.' + ext
  else
    result := ext;
end;

procedure TdmLanguage.siLangDispatcher1LanguageChanged(Sender: TObject);
begin
//  siLangDispatcher1.LoadAllFromFile(siLangDispatcher1.FileName);
end;

end.
