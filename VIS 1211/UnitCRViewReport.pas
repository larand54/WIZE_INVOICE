unit UnitCRViewReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, OleServer,
  StdCtrls, Vcl.ExtCtrls ;

type
  TFormCRViewReport = class(TForm)
    DelphiHostPanel: TPanel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

   ReportFound  : Boolean ;
   constructor CreateCo(const ReportName: String;const A: array of variant);
  end;

//var FormCRViewReport: TFormCRViewReport;


implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsVidaSystem, PreviewForm;

constructor TFormCRViewReport.CreateCo(const ReportName: String;const A: array of variant);
Var pReportName, HostName, Database, UserName, Password, spath : String ;
    Save_Cursor : TCursor;
    VarArray              : Variant;
    safeArray             : PVarArray;
    paramCount, I         : Integer;
    iSecurity             : integer ;
    piSecurity            : boolean ;
begin
 Save_Cursor    := Screen.Cursor;
 Screen.Cursor  := crHourGlass;    { Show hourglass cursor }
 pReportName    := Copy(ReportName, 1, Length(ReportName)-4) ;
 Try
  ReportFound:= True ;
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath, iSecurity) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Screen.Cursor := Save_Cursor ;
   Exit ;
  End  ;
//  ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;
  if not(FileExists(sPath + ReportName)) then
  Begin
   ReportFound:= False ;
   ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : ' + sPath + pReportName) ;
   Exit ;
  End ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  for I := 0 to High(A) do
  paramCount := paramCount + 1 ;

  VarArray := VarArrayCreate([0, paramCount], varOleStr);

  if iSecurity = 1 then
   piSecurity := True
    else
     piSecurity := False ;


  for I := 0 to High(A) do
   VarArray[i] := A[i] ;

  safeArray :=  VarArrayAsPSafeArray(VarArray);

  Form2 := TForm2.Create(nil);
  Form2.Parent := DelphiHostPanel;
//  Form2.Align := alClient ;
  Form2.Show;


  Form2.set_Print(pReportName,
  sPath,
  '0', //report_Option 0 : preview, 1 : direct print, 2 : store as pdf
  '1', //print_Type 0 : default printer, 1 : select printer
  '', //store_Path for pdf
  '', //pdf_Name pdf filnamn
  safeArray, //parameters
  HostName,
  Database,
  UserName,
  Password,
  piSecurity) ;


 Finally
  Screen.Cursor := Save_Cursor ;
 End ;  
end;

procedure TFormCRViewReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 if Assigned(Form2) then
  FreeAndNil(Form2) ;
end;

end.
