unit PrintUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uHYModuleManager, Vcl.StdCtrls,
  Vcl.ExtCtrls, uHYIntf, Vcl.ActnList;

{ report_Name = Name of the Crystal Report;
  rpt_FilePath = File Path of the Crystal Report;
  report_Option = Option 0:Viewing the Report; Option 1:Printer Setup(must choose print_Type option)
  Option 2:Save to PDF;
  print_Type = Option0:Default Printer; Option1:Select the Printer;
  store_Path = Path of the PDF to save;
  pdf_Name = Name of the PDF;
  safeArray = Array of Parameter to pass to Report;
  server_Name = Database Server Name;
  database_Name: Name of the Database;
  userID = ex: 'sa';
  password = ex: 'woods2014';

}
procedure set_Print(report_Name: string; rpt_FilePath: string;
  report_Option: string; print_Type: string; store_Path: string;
  pdf_Name: string; safeArray: PVarArray; server_Name: string;
  database_Name: string; userID: string; password: string; iSecurity: Boolean);

procedure load_Plugin();

var
  // mainObject: TForm1;
  fVisualizer1: IHYVisualPlugin;
  HYModuleManager2: THYModuleManager;

implementation

uses CR_Plugin_Import;

procedure load_Plugin;
begin
  HYModuleManager2 := THYModuleManager.Create(HYModuleManager2);
  HYModuleManager2.ResolveInterfacesToOwner := False;
  // Try
  if HYModuleManager2.ModuleCount = 0 then
  begin
    HYModuleManager2.LoadModule(ExtractFilePath(Application.ExeName) +
      'CR_Plugin.dll');
    HYModuleManager2.CreateVisualPlugin('CrystalReport_Plugin.CR_Plugin',
      fVisualizer1);
  end;
end;

procedure set_Print;

begin

  with (fVisualizer1 as PluginInterface) do
  begin
    set_Print(report_Name, rpt_FilePath, report_Option, print_Type, store_Path,
      pdf_Name, safeArray, server_Name, database_Name, userID, password,
      iSecurity);
  end;

  // Finally
  // fVisualizer1 := nil;
  // FreeAndNil(HYModuleManager2);
  // End;

end;

end.
