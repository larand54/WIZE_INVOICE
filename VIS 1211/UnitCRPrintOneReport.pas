unit UnitCRPrintOneReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, OleServer,
  StdCtrls, Printers, CRAXDRT_TLB;

type
  TFormCRPrintOneReport = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    ReportFound: Boolean;
    procedure CreateCo(const numberOfCopy: Integer;
      const PrinterSetup, promptUser: Boolean; const A: array of variant;
      const ReportName: String);
  end;

  // var FormCRPrintOneReport: TFormCRPrintOneReport;

implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact, dmsVidaSystem, PrintUnit;

procedure TFormCRPrintOneReport.CreateCo(const numberOfCopy: Integer;
  const PrinterSetup, promptUser: Boolean; const A: array of variant;
  const ReportName: String);
var
  HostName, Database, UserName, Password, spath: String;
  I: Integer;
  startPageN, stopPageN: OleVariant;
  Save_Cursor: TCursor;
  VarArray: variant;
  safeArray: PVarArray;
  paramCount: Integer;
  iSecurity: Integer;
  piSecurity: Boolean;
  pReportName: String;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    ReportFound := True;
    paramCount := 0;
    // startPageN   := 0 ;
    // stopPageN    := 0 ;
    // ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;
    if dmsSystem.GetLogonParams(HostName, Database, UserName, Password, spath,
      iSecurity) = False then
    Begin
      ShowMessage('Rapport inställningar saknas, kontakta admin.');
      Exit;
    End;

    if not(FileExists(spath + ReportName)) then
    Begin
      ReportFound := False;
      ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : ' + spath +
        ReportName);
      Exit;
    End;

    pReportName := Copy(ReportName, 1, Length(ReportName) - 4);

    if iSecurity = 1 then
      piSecurity := True
    else
      piSecurity := False;

    for I := 0 to High(A) do
      paramCount := paramCount + 1;

    VarArray := VarArrayCreate([0, paramCount], varOleStr);

    // VarArray[0]:= param;

    for I := 0 to High(A) do
      // for i := 0 to paramCount-1 do
      VarArray[I] := A[I];

    safeArray := VarArrayAsPSafeArray(VarArray);

    PrintUnit.set_Print(pReportName, spath, '1',
      // report_Option 0 : preview, 1 : direct print, 2 : store as pdf
      '1', // print_Type 0 : default printer, 1 : select printer
      '', // store_Path for pdf
      '', // pdf_Name pdf filnamn
      safeArray, // parameters
      HostName, Database, UserName, Password, piSecurity);

    { PrintUnit.set_Print(report_Name,
      rpt_FilePath,
      report_Option,
      print_Type, store_Path, pdf_Name, safeArray, server_Name, database_Name, userID, password); }

    { CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
      CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
      Screen.Cursor := crSQLWait;

      //  CRreport.ParameterFields.Item[1].AddCurrentValue(62366);
      for I := 0 to High(A) do
      CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

      //  if PrinterSetup then
      CRreport.PrinterSetup(0) ;
      //  Try
      crreport.printout(False, numberOfCopy, False, startPageN, stopPageN);
    }
  Finally
    Screen.Cursor := Save_Cursor;
  End;
end;

end.
