unit UnitCRExportOneReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, OleServer,
  StdCtrls, Printers, CRAXDRT_TLB, siComp, siLngLnk;

type
  TFormCRExportOneReport = class(TForm)
    Application1: TApplication;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // CRreport : IReport ;
    CRreport : IReport ;
    ReportFound  : Boolean ;
    procedure CreateCo(const ClientNo, DocTyp: Integer;
      const A: array of variant; const ExportFile: String);
  end;

  // var FormCRPrintOneReport: TFormCRPrintOneReport;

implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact, dmsVidaSystem ;//, PrintUnit;


procedure TFormCRExportOneReport.CreateCo(const ClientNo, DocTyp : Integer;const A: array of variant;const ExportFile : String);
  var ReportName, HostName, Database, UserName, Password, spath: String ;
      promptUser      : OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
      I, PrinterSetup : Integer ;
      Save_Cursor     : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 ReportFound  := True ;
 dmsContact.GetClientDocPrefs ( ClientNo, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
 if (numberOfCopy < 1) or (Length(ReportName) < 4) then
 Begin
  ShowMessage('Rapporten finns inte upplagd på klienten') ;
  ReportFound:= False ;
  Exit ;
 End ;
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

 if not(FileExists(sPath+ReportName)) then
  Begin
   ReportFound:= False ;
   ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
   Exit ;
  End ;

  CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
  CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//  CRreport.ParameterFields.Item[1].AddCurrentValue(62366);
  for I := 0 to High(A) do
  CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

  // Export the report.
  crReport.ExportOptions.FormatType       := CRAXDRT_TLB.crEFTPortableDocFormat;
  crReport.ExportOptions.DestinationType  := CRAXDRT_TLB.crEDTDiskFile;
  crReport.ExportOptions.DiskFileName     := ExportFile+'.pdf';
  crReport.Export(false);

      if thisuser.userid = 8 then
       dmsSystem.FDoLog('ExportFile+.pdf= ' + ExportFile+'.pdf');
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

(*
  procedure TFormCRExportOneReport.CreateCo(const ClientNo, DocTyp: Integer;
    const A: array of variant; const ExportFile: String);
  var
    ReportName, HostName, Database, UserName, Password, spath: String;
    promptUser: OleVariant;
    numberOfCopy: OleVariant;
    collated: OleVariant;
    I, PrinterSetup: Integer;
    Save_Cursor: TCursor;
    iSecurity: Integer;
    piSecurity: Boolean;
    safeArray: PVarArray;
    pExportFile: String;
    pExportPath: String;
    paramCount: Integer;
    VarArray: variant;
  begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    Try
      pExportFile := ExtractFileName(ExportFile);
      pExportPath := ExtractFilePath(ExportFile);
      ReportFound := True;
      dmsContact.GetClientDocPrefs(ClientNo, DocTyp, ReportName, numberOfCopy,
        promptUser, collated, PrinterSetup);
      if (numberOfCopy < 1) or (Length(ReportName) < 4) then
      Begin
        ShowMessage('Rapporten ' + ReportName + ' finns inte upplagd på klienten');
        ReportFound := False;
        Exit;
      End;
      if dmsSystem.GetLogonParams(HostName, Database, UserName, Password, spath) = False then
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

      ReportName := Copy(ReportName, 1, Length(ReportName) - 4);

      PrintUnit.set_Print(ReportName, spath, '2',
        // report_Option 0 : preview, 1 : direct print, 2 : store as pdf
        '1', // print_Type 0 : default printer, 1 : select printer
        pExportPath, // store_Path for pdf
        pExportFile, // pdf_Name pdf filnamn
        safeArray, // parameters
        HostName, Database, UserName, Password, piSecurity);

      // CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
      // CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
      Screen.Cursor := crSQLWait; { Show hourglass cursor }
      // CRreport.ParameterFields.Item[1].AddCurrentValue(62366);
      { for I := 0 to High(A) do
        CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

        // Export the report.
        crReport.ExportOptions.FormatType       := CRAXDDRT_TLB.crEFTPortableDocFormat;
        crReport.ExportOptions.DestinationType  := CRAXDDRT_TLB.crEDTDiskFile;
        crReport.ExportOptions.DiskFileName     := ExportFile+'.pdf';
        crReport.Export(false);
      }
    Finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  end;
*)

procedure TFormCRExportOneReport.FormDestroy(Sender: TObject);
begin
 CRreport     := Nil ;
 Application1 := Nil ;
end;

end.
