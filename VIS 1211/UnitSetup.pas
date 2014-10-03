unit UnitSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles ;

type
  TFormSetup = class(TForm)
    BitBtn1: TBitBtn;
    EditCRFolder: TEdit;
    EditIniFiles: TEdit;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    Class procedure Execute ;
  end;

implementation

uses dmsDataConn, VidaUser ;

{$R *.dfm}

Class procedure TFormSetup.Execute ;
//var iniUserStore : TIniFile;
Begin
 With Self.Create(nil) do begin
  try
  with TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') do
    try
     EditCRFolder.Text:= ReadString ('Security', 'CRPath', '\\vida912\E\Microsoft SQL Server\MSSQL\Program\VISRAPPORTER\') ;
     EditIniFiles.Text:= ReadString ('Security', 'InifilesMap', 'H:\VIS\KONFIG\') ;

     if ShowModal = mrOK then
     Begin
      WriteString ('Security', 'CRPath', EditCRFolder.Text) ;
      WriteString ('Security', 'InifilesMap', EditIniFiles.Text) ;
      dmsConnector.InifilesMap:= EditIniFiles.Text ;
     End ;
    Finally
     Free ;
    End ;

  Finally
   Free ;
  End
 End ;
End ;


end.
