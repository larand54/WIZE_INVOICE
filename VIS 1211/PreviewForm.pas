unit PreviewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uHYModuleManager, uHYIntf,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    HostPanel: TPanel;
    HYModuleManager1: THYModuleManager;

    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fVisualizer1: IHYVisualPlugin;
    procedure set_Print(report_Name: string; rpt_FilePath: string;
      report_Option: string; print_Type: string; store_Path: string;
      pdf_Name: string; safeArray: PVarArray; server_Name: string;
      database_Name: string; userID: string; password: string;
      iSecurity: Boolean);

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses CR_Plugin_Import;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  fVisualizer1 := nil;
end;

procedure TForm2.set_Print;
Begin
  Try

    if HYModuleManager1.ModuleCount = 0 then
    begin
      HYModuleManager1.LoadModule(ExtractFilePath(Application.ExeName) +
        'CR_Plugin.dll');
      HYModuleManager1.CreateVisualPlugin('CrystalReport_Plugin.CR_Plugin',
        fVisualizer1, HostPanel);
    end;

    with (fVisualizer1 as PluginInterface) do
    begin
      set_Print(report_Name, rpt_FilePath, report_Option, print_Type,
        store_Path, pdf_Name, safeArray, server_Name, database_Name, userID,
        password, iSecurity);
    end;
  Finally
    // fVisualizer1 := nil;
    // FreeAndNil(HYModuleManager1);
  end;
End;

end.
