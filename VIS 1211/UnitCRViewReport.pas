unit UnitCRViewReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, OleServer,
  StdCtrls, Vcl.ExtCtrls, siComp, siLngLnk, CrystalActiveXReportViewerLib11_5_TLB, CRAXDRT_TLB ;

type
  TFormCRViewReport = class(TForm)
    Application1: TApplication;
    CrystalActiveXReportViewer1: TCrystalActiveXReportViewer;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    report : IReport ;
    ReportFound: Boolean;
    constructor CreateCo(const ReportName: String; const A: array of variant);
//    constructor CreateCo(const ReportName: String);
  end;

  // var FormCRViewReport: TFormCRViewReport;

implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsVidaSystem ;//, PreviewForm;

constructor TFormCRViewReport.CreateCo(const ReportName: String; const A: array of variant);
Var HostName, Database, UserName, Password, spath : String ;
    Save_Cursor : TCursor;
    I : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  ReportFound:= True ;
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;
//  ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;
  if not(FileExists(sPath + ReportName)) then
  Begin
   ReportFound:= False ;
   ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
   Exit ;
  End ;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);

  for I := 0 to High(A) do
  report.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

  CrystalActiveXReportViewer1.ReportSource:= Report ;
  CrystalActiveXReportViewer1.ViewReport ;

  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Caption:= sPath+ReportName ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

{
  constructor TFormCRViewReport.CreateCo(const ReportName: String;
    const A: array of variant);
  Var
    pReportName, HostName, Database, UserName, Password, spath: String;
    Save_Cursor: TCursor;
    VarArray: variant;
    safeArray: PVarArray;
    paramCount, I: Integer;
    iSecurity: Integer;
    piSecurity: Boolean;
  begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    pReportName := Copy(ReportName, 1, Length(ReportName) - 4);
    Try
      ReportFound := True;
      if dmsSystem.GetLogonParams(HostName, Database, UserName, Password, spath,
        iSecurity) = False then
      Begin
        ShowMessage('Rapport inställningar saknas, kontakta admin.');
        Screen.Cursor := Save_Cursor;
        Exit;
      End;
      // ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;
      if not(FileExists(spath + ReportName)) then
      Begin
        ReportFound := False;
        ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : ' + spath +
          pReportName);
        Exit;
      End;
      Screen.Cursor := crHourGlass;

      for I := 0 to High(A) do
        paramCount := paramCount + 1;

      VarArray := VarArrayCreate([0, paramCount], varOleStr);

      if iSecurity = 1 then
        piSecurity := True
      else
        piSecurity := False;

      for I := 0 to High(A) do
        VarArray[I] := A[I];

      safeArray := VarArrayAsPSafeArray(VarArray);

      Form2 := TForm2.Create(nil);
      Form2.Parent := DelphiHostPanel;
      // Form2.Align := alClient ;
      Form2.Show;

      Form2.set_Print(pReportName, spath, '0',
        // report_Option 0 : preview, 1 : direct print, 2 : store as pdf
        '1', // print_Type 0 : default printer, 1 : select printer
        '', // store_Path for pdf
        '', // pdf_Name pdf filnamn
        safeArray, // parameters
        HostName, Database, UserName, Password, piSecurity);

    Finally
      Screen.Cursor := Save_Cursor;
    End;
  end;
}

procedure TFormCRViewReport.FormCreate(Sender: TObject);
begin
  CrystalActiveXReportViewer1.EnableExportButton:= True ;
end;

procedure TFormCRViewReport.FormDestroy(Sender: TObject);
begin
  Report        := Nil ;
  Application1  := Nil ;
end;

end.
