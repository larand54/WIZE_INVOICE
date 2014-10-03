unit UnitCRPrintReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls,  OleServer,
  StdCtrls, CRAXDDRT_TLB ;

type
  TFormCRPrintReport = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
   procedure CreateCo(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const A: array of variant) ;
   procedure CreateCoForPrintMany(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const IntInvNo, Client: array of variant) ;
  end;

//var FormCRPrintReport: TFormCRPrintReport;


implementation

{$R *.dfm}

Uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsVidaContact, dmsVidaSystem, PrintUnit;




procedure TFormCRPrintReport.CreateCo(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const A: array of variant);
  var  ReportName, HostName, Database, UserName, Password, spath: String ;
      promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
      startPageN: OleVariant; stopPageN: OleVariant ;
      I, PrinterSetup : Integer ;
      Save_Cursor     : TCursor;
      iSecurity             : integer ;
      piSecurity            : boolean ;
      VarArray              : Variant;
      safeArray             : PVarArray;
      paramCount            : Integer;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 ReportName := '' ;
// startPageN := 0 ;
// stopPageN  := 0 ;
 if RoleType > 0 then
 Begin
  dmsContact.GetClientDocPrefs ( ClientNo, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
  if (numberOfCopy < 1) or (Length(ReportName) < 4) then
  Begin
   ShowMessage('Rapporten finns inte upplagd på klienten') ;
   Exit ;
  End ; //if
 End  //if
  else
   ReportName:= dmsSystem.GetReportNameByDocTyp(DocTyp) ;



 if OverRideNoOfCopies > 0 then
  numberOfCopy:= OverRideNoOfCopies ;

//  ThisUser.GetLogonValues (HostName, Database, UserName, Password, spath) ;

  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath, iSecurity) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

  if FileExists(sPath+ReportName) = False then
  Begin
   ShowMessage('Rapporten ' + sPath+ReportName + ' saknas, kontakta admin.') ;
   Exit ;
  End  ;

  ReportName  := Copy(ReportName, 1, Length(ReportName) - 4) ;

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



  PrintUnit.set_Print(ReportName,
  sPath,
  '1', //report_Option 0 : preview, 1 : direct print, 2 : store as pdf
  '1', //print_Type 0 : default printer, 1 : select printer
  '', //store_Path for pdf
  '', //pdf_Name pdf filnamn
  safeArray, //parameters
  HostName,
  Database,
  UserName,
  Password,
  piSecurity) ;

//  CRreport := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
//  CRreport.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

//  for I := 0 to High(A) do
//  CRreport.ParameterFields.Item[1+I].AddCurrentValue(A[I]);

//  if PrinterSetup = 1 then
//   CRreport.PrinterSetup(0) ;
//  CRreport.PrintOut(False,  numberOfCopy,  False, startPageN, stopPageN) ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


procedure TFormCRPrintReport.CreateCoForPrintMany(const OverRideNoOfCopies, ClientNo, RoleType, DocTyp : Integer;const IntInvNo, Client: array of variant) ;
  var  ReportName, HostName, Database, UserName, Password, spath: String ;
      promptUser: OleVariant; numberOfCopy: OleVariant; collated: OleVariant;
      startPageN: OleVariant; stopPageN: OleVariant ;
      I, PrinterSetup : Integer ;
      Save_Cursor     : TCursor;
      ADevice, ADriver, APort: PChar;
      ADeviceMode: THandle ;
      iSecurity       : integer ;
      piSecurity      : Boolean ;
begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  if dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath, iSecurity) = False then
  Begin
   ShowMessage('Rapport inställningar saknas, kontakta admin.') ;
   Exit ;
  End  ;

 for I := 0 to High(Client) do
 Begin
 ReportName := '' ;
 if RoleType > 0 then
 Begin
  dmsContact.GetClientDocPrefs (Client[I]{ClientNo}, DocTyp, ReportName, numberOfCopy, promptUser, collated, PrinterSetup) ;
  if (numberOfCopy < 1) or (Length(ReportName) < 4) then
  Begin
   ShowMessage('Rapporten finns inte upplagd på klienten, Fakturanr ' + inttostr(IntInvNo[I])) ;
   Exit ;
  End ; //if
 End  //if
  else
   ReportName:= dmsSystem.GetReportNameByDocTyp(DocTyp) ;

 if OverRideNoOfCopies > 0 then
  numberOfCopy:= OverRideNoOfCopies ;



  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  End ;//For I..
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;


end.
