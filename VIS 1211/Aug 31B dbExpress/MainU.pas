unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, xmldom, XMLIntf, msxmldom, XMLDoc, PackageExportU,
  ComCtrls, ExtCtrls, Buttons, FMTBcd, DBClient, Provider, SqlExpr,
  cxShellBrowserDialog, ActnList, cxControls, cxContainer, cxEdit,
  cxCheckBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, cxClasses;

type

  TXMLImportExport = class(TForm)
    ADOConnection1: TADOConnection;
    dsInfo: TADODataSet;
    PageControl1: TPageControl;
    Panel1: TPanel;
    tsImport: TTabSheet;
    tsExport: TTabSheet;
    edtFileToImport: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edtXSDFileName: TEdit;
    Label3: TLabel;
    edtConnectionString: TEdit;
    btnConnection: TButton;
    Label1: TLabel;
    btnImport: TButton;
    btnExport: TButton;
    btnValidateImportFile: TButton;
    btnValidateExportFile: TButton;
    edtFileToExport: TEdit;
    btnClearEmptyNode: TButton;
    sbOpenWoodXFileToImport: TSpeedButton;
    opd: TOpenDialog;
    svd: TSaveDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    opdxs: TOpenDialog;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    ActionList1: TActionList;
    acValidateImportFile: TAction;
    acImportPkgs: TAction;
    acExportPkgsToXMLFile: TAction;
    acValidateExportXMLFile: TAction;
    cbEmaila: TcxCheckBox;
    sq_GetLONos: TADOQuery;
    sq_GetLONosDeliveryMessageNumber: TStringField;
    Timer1: TTimer;
    acExportPkgsToXMLFileToInternational: TAction;
    Button2: TButton;
    procedure btnImportClick(Sender: TObject);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure btnConnectionClick(Sender: TObject);
    procedure btnClearEmptyNodeClick(Sender: TObject);
    procedure sbOpenWoodXFileToImportClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acValidateImportFileExecute(Sender: TObject);
    procedure acImportPkgsExecute(Sender: TObject);
    procedure acExportPkgsToXMLFileExecute(Sender: TObject);
    procedure acValidateExportXMLFileExecute(Sender: TObject);
    procedure acValidateImportFileUpdate(Sender: TObject);
    procedure acImportPkgsUpdate(Sender: TObject);
    procedure acValidateExportXMLFileUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acExportPkgsToXMLFileToInternationalExecute(Sender: TObject);
  private
    WoodXDir, ImportDir, DeliveryWoodMsg_XSD_File : String ;
    procedure EmailFakturaAndSpecExecuteViaBizTalk ;
    function  DoGetNo(ImpExpFunction: TImportExportFunctionGetDeliveryMessageNumber): String ;//Lars, Lars again changed to string of course!!!
    function  DoImportExport(sSQL: string; ImpExpFunction: TImportExportFunction): Boolean;
    procedure DoExport;
    procedure DoImport;
    procedure DoRelaxedImport;
    procedure LoadConfig;
    procedure EmailFakturaAndSpecExecute ;
   Public
    ImportOfPkgsOK    : Boolean ;
    InvoiceNo, CustomerNo, InternalInvoiceNo : Integer ;
//    DeliveryMessageNumber : String ;
  end;

var
  XMLImportExport: TXMLImportExport;

implementation

{$R *.dfm}

uses PackageImportU, ComObj, TypInfo, dmsVidaSystem, VidaUser ,
  dmsDataConn, dmsVidaContact, UnitCRExportOneReport,
  uSendMapiMail, VidaConst , dmc_ImportWoodx;


procedure TXMLImportExport.LoadConfig;
var
  i : Integer;
begin
 WoodXDir                 := dmsSystem.Get_SystemDir('Woodx', 'WoodxDir') ;
 ImportDir                := dmsSystem.Get_SystemDir('Woodx', 'ImportDir') ;
 DeliveryWoodMsg_XSD_File := dmsSystem.Get_SystemDir('Woodx', 'DeliveryMessageWood_XSD') ; // GetUserExportDir(2, ThisUser.UserID, Self.Name) ;


{ WoodXDir       := 'C:\ProjectXE\tt_sys\TT Faktura\WoodxMall\' ;
 ImportDir      := 'C:\ProjectXE\tt_sys\' ;
 DeliveryWoodMsg_XSD_File := 'C:\ProjectXE\tt_sys\TT Faktura\WoodxMall\' ;   }



 if not DirectoryExists(WoodXDir  + 'FakturaNr_' + IntToStr(InvoiceNo)) then
  if not CreateDir(WoodXDir + 'FakturaNr_' + IntToStr(InvoiceNo)) then
   raise Exception.Create('Cannot create '  + WoodXDir  + 'FakturaNr_' + IntToStr(InvoiceNo));

 WoodXDir             := IncludeTrailingPathDelimiter(WoodXDir+'FakturaNr_' + IntToStr(InvoiceNo)) ;
// edtFileToImport.Text := ImportDir ;
 edtXSDFileName.Text  := DeliveryWoodMsg_XSD_File ;
 edtFileToExport.Text := WoodXDir ;


// Vida server original
 edtConnectionString.Text       :='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=vis_vida;Data Source=ALVESQL01' ;

// Vida server Lars
// edtConnectionString.Text       :=  'Provider=SQLOLEDB.1;Password=woods2011;Persist Security Info=True;User ID=Lars;Initial Catalog=vis_vida;Data Source=vis.vida.se' ;


//Carmak-HP\SQLEXPRESS
// edtConnectionString.Text       := 'Provider=SQLOLEDB.1;Password=woods;Persist Security Info=True;User ID=sa;Initial Catalog=vis_vida;Data Source=carmak-hp\sqlexpress;Extended Properties="uid=sa"' ;


 if ThisUser.UserID = 8 then
 Begin
  Label1.Visible              := True ;
  edtConnectionString.Visible := True ;
  btnConnection.Visible       := True ;
 End ;

end;


procedure DoSetPropValue(Instance: TObject; const PropName: string;
  const Value: Variant);
begin
  try
    if IsPublishedProp(Instance, PropName) then
      TypInfo.SetPropValue(Instance, PropName, Value);

    Application.ProcessMessages;
  except
  end;
end;

function  DoValidate(xsdFile, xmlFile: string): Boolean;
var
  xmlMessage, SchemaCache: OleVariant;
begin
  Result := False;

  xmlMessage := CreateOleObject('MSXML2.FreeThreadedDOMDocument.4.0');
  SchemaCache := CreateOleObject('MSXML2.XMLSchemaCache.4.0');

  SchemaCache.Add('', xsdFile);

  xmlMessage.async := False;
  xmlMessage.validateOnParse := True;
  xmlMessage.resolveExternals := False;
  xmlMessage.schemas := SchemaCache;
  xmlMessage.Load(xmlFile);
  xmlMessage.Validate;

  if xmlMessage.parseError.errorCode = 0 Then
  begin
    MessageDlg('Validation Passed!', mtInformation, [mbOK], 0);
    Result := True;
  end
  else
    MessageDlg('Validation Error:'#13#10#13#10 + xmlMessage.parseError.reason, mtWarning, [mbOK], 0);

  xmlMessage := EmptyParam;
  SchemaCache := EmptyParam;
end;

function TXMLImportExport.DoImportExport(sSQL: string; ImpExpFunction: TImportExportFunction): Boolean;
begin
  Result := False;

  dsInfo.Close;
  dsInfo.CommandText := sSQL;
  dsInfo.Open;

  if Assigned(ImpExpFunction) then
    Result := ImpExpFunction(dsInfo);
end;

function TXMLImportExport.DoGetNo(ImpExpFunction: TImportExportFunctionGetDeliveryMessageNumber): String ;
begin
  Result := '-1';

  if Assigned(ImpExpFunction) then
    Result := ImpExpFunction ;
end;

{-------------------------------------------------------------------------------
  Procedure: btnImportClick
  Author:    2006.08.31 14.01.42 By Zheng Jie (Gear1023@163.com)
  Function:  XML Import To DB
-------------------------------------------------------------------------------}
procedure TXMLImportExport.DoImport;

begin

  InPutPackageFileName := edtFileToImport.Text;
//Lars get GetDeliveryMessageNumber
//Delete old data
  ADOConnection1.Open;
  dmsSystem.DeliveryMessageNumber := DoGetNo(GetDeliveryMessageNumber) ;
  if Length(dmsSystem.DeliveryMessageNumber) = 0 then
   dmsSystem.DeliveryMessageNumber  := IntToStr( dmsSystem.ShippingPlanNo) ;
  ADOQuery1.Close;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryMessageWoodHeader WHERE DeliveryMessageNumber = '+QuotedStr(dmsSystem.DeliveryMessageNumber)) ;
  ADOQuery1.ExecSQL ;
  ADOConnection1.Close;

  ADOConnection1.Open;
  ADOConnection1.BeginTrans;
  try
      DoImportExport('select * from dbo.DeliveryMessageWoodHeader', ImportDeliveryWoordHeader);
      DoImportExport('select * from dbo.DeliveryMessageReference', ImportDeliveryMessageReference);
      DoImportExport('select * from dbo.PartyIdentifier', ImportPartyIdentifier);
      DoImportExport('select * from dbo.NameAddress', ImportNameAddress);

      DoImportExport('select * from dbo.DeliveryMessageShipment', ImportDeliveryMessageShipment);
      DoImportExport('select * from dbo.ProductIdentifier', ImportProductIdentifier);

      DoImportExport('select * from dbo.DeliveryShipmentDeliveryMessageReference', ImportDeliveryShipmentDeliveryMessageReference);
      DoImportExport('select * from dbo.TransportPackageInformation', ImportTransportPackageInformation);
      DoImportExport('select * from dbo.LengthSpecification', ImportLengthSpecification);
      DoImportExport('select * from dbo.InformationalQuantity', ImportInformationalQuantity);
      ADOConnection1.CommitTrans;
  except
      ADOConnection1.RollbackTrans;
  end;
end;

{-------------------------------------------------------------------------------
  Procedure: btnExportClick
  Author:    2006.08.31 13.25.55 By Zheng Jie (Gear1023@163.com)
  Function:  DB Export TO XML 

  // Only ONE record can be exported one time.
  // Some changes need to be done for multi reocrd export.

-------------------------------------------------------------------------------}
procedure TXMLImportExport.DoExport;
begin
 PackageExportU.InternalInvoiceNo := InternalInvoiceNo ;
 sq_GetLONos.Close ;
 sq_GetLONos.Parameters.ParamByName('InternalInvoiceNo').Value  := InternalInvoiceNo ;
 sq_GetLONos.Open ;
 While not sq_GetLONos.Eof do
 Begin
  dmsSystem.DeliveryMessageNumber := sq_GetLONosDeliveryMessageNumber.AsString ;//DeliveryMessageNumber = LONo
//LOKAL DIR  OutPutPackageFileName           := 'C:\woodx\' + 'InvoicePackageSpec InvoiceNo-LoadOrderNo' + IntToStr(InvoiceNo) +'-'+ dmsSystem.DeliveryMessageNumber +'.xml' ;
  OutPutPackageFileName           := WoodXDir + 'InvoicePackageSpec InvoiceNo-LoadOrderNo' + IntToStr(InvoiceNo) +  '-' + dmsSystem.DeliveryMessageNumber +  '.xml' ;
  CleareDoc;

   DoImportExport('select * from dbo.DeliveryMessageWoodHeader  WHERE DeliveryMessageNumber = ' + QuotedStr(dmsSystem.DeliveryMessageNumber)  + ' AND InternalInvoiceNo = '  + inttostr(InternalInvoiceNo), ExportDeliveryWoordHeader);
// This function is called by prior function
////    DoImportExport('select * from dbo.DeliveryMessageReference, ExportDeliveryMessageReference);
////    DoImportExport('select * from dbo.DeliveryMessageShipment', ExportDeliveryMessageShipment);

//Lars switched order of these 2 calls
// 2006.11.26 20:02:44 By Zheng Jie (Gear1023@163.com)
// Changed Back By
   DoImportExport('select * from dbo.PartyIdentifier  WHERE DeliveryMessageNumber = ' +  QuotedStr(dmsSystem.DeliveryMessageNumber) +  ' AND InternalInvoiceNo = '  + inttostr(InternalInvoiceNo), ExportPartyIdentifier) ;
   DoImportExport('select * from dbo.NameAddress  WHERE DeliveryMessageNumber = ' +  QuotedStr(dmsSystem.DeliveryMessageNumber) +  ' AND InternalInvoiceNo = '  + inttostr(InternalInvoiceNo), ExportNameAddress) ;



// This function is called by prior function
////    DoImportExport('select * from dbo.ProductIdentifier', ExportProductIdentifier);
////    DoImportExport('select * from dbo.DeliveryShipmentDeliveryMessageReference', ExportDeliveryShipmentDeliveryMessageReference);

   DoImportExport('select * from dbo.TransportPackageInformation  WHERE DeliveryMessageNumber = ' +  QuotedStr(dmsSystem.DeliveryMessageNumber) +  ' AND InternalInvoiceNo = '  + inttostr(InternalInvoiceNo), ExportTransportPackageInformation);
////    DoImportExport('select * from dbo.LengthSpecification', ExportLengthSpecification);
////    DoImportExport('select * from dbo.InformationalQuantity', ExportInformationalQuantity);

   doClearEmptyNode;

   edtFileToExport.Text := OutPutPackageFileName;
  sq_GetLONos.Next ;
 End ;
 sq_GetLONos.Close ;
end;

{-------------------------------------------------------------------------------
   EVENT PROCEDURE
 ------------------------------------------------------------------------------
   EVENT PROCEDURE
-------------------------------------------------------------------------------}
procedure TXMLImportExport.btnClearEmptyNodeClick(Sender: TObject);
begin
  OutPutPackageFileName := edtFileToExport.Text;
  DoClearEmptyNode;
end;   

procedure TXMLImportExport.btnImportClick(Sender: TObject);
begin
  DoSetPropValue(Sender, 'Enabled', False);
  try
    DoImport;
  finally
    DoSetPropValue(Sender, 'Enabled', True);
  end;
end;
         
procedure TXMLImportExport.ADOConnection1BeforeConnect(Sender: TObject);
begin
  ADOConnection1.ConnectionString := edtConnectionString.Text;
end;

procedure TXMLImportExport.btnConnectionClick(Sender: TObject);
begin
  edtConnectionString.Text := PromptDataSource(Handle, edtConnectionString.Text);
end;

procedure TXMLImportExport.sbOpenWoodXFileToImportClick(Sender: TObject);
begin
  opd.InitialDir  := ImportDir ;
  opd.Title       := 'Välj woodx fil att importera' ;
//  opd.FileName    := edtFileToImport.Text;
  if opd.Execute then
  begin
   edtFileToImport.Text := opd.FileName;
   ImportDir            := ExtractFilePath(opd.FileName) ;
  end;
end;

procedure TXMLImportExport.SpeedButton2Click(Sender: TObject);
begin
  if cxShellBrowserDialog1.Execute then
  Begin
   WoodXDir             := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;
   edtFileToExport.Text := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;

  End ;

{  svd.FileName := edtFileToExport.Text;
  if svd.FileName = '' then
    svd.FileName := GetOutPutPackageFileName;
  if svd.Execute then
  begin
    edtFileToExport.Text := svd.FileName;
  end; }
end;

procedure TXMLImportExport.SpeedButton3Click(Sender: TObject);
begin
  opdxs.InitialDir:= ExtractFilePath(DeliveryWoodMsg_XSD_File) ;
  opdxs.FileName := edtXSDFileName.Text;
  if opdxs.Execute then
  begin
//    edtFileToImport.Text := opdxs.FileName;
    edtXSDFileName.Text := opdxs.FileName;
    DeliveryWoodMsg_XSD_File      := opdxs.FileName;
  end;
end;

//Lars 28 nov
procedure TXMLImportExport.DoRelaxedImport;
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  ImportOfPkgsOK:= False ;
  InPutPackageFileName := edtFileToImport.Text;
//Lars get GetDeliveryMessageNumber
//Delete old data
  ADOConnection1.Open;
  dmsSystem.DeliveryMessageNumber:= DoGetNo(GetDeliveryMessageNumber) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  if Length(dmsSystem.DeliveryMessageNumber) = 0 then
   dmsSystem.DeliveryMessageNumber  := IntToStr( dmsSystem.ShippingPlanNo) ;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear ;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryMessageWoodHeader2 WHERE DeliveryMessageNumber = ' +QuotedStr(dmsSystem.DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.ProductIdentifier2 WHERE DeliveryMessageNumber = ' + QuotedStr(dmsSystem.DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.PartyIdentifier2 WHERE DeliveryMessageNumber = ' + QuotedStr(dmsSystem.DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.NameAddress2 WHERE DeliveryMessageNumber = ' + QuotedStr(dmsSystem.DeliveryMessageNumber)) ;
  ADOQuery1.ExecSQL ;
  ADOConnection1.Close;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  ADOConnection1.Open;
  ADOConnection1.BeginTrans;
  try
      DoImportExport('select * from DeliveryMessageWoodHeader2', ImportDeliveryWoordHeader);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//      DoImportExport('select * from DeliveryMessageReference', ImportDeliveryMessageReference);
      DoImportExport('select * from PartyIdentifier2', ImportPartyIdentifier);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from NameAddress2', ImportNameAddress);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from DeliveryMessageShipment2', ImportDeliveryMessageShipment);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }

      DoImportExport('select * from DeliveryShipmentDeliveryMessageReference2', ImportDeliveryShipmentDeliveryMessageReference);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from TransportPackageInformation2', RelaxedImportTransportPackageInformation);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from LengthSpecification2', RelaxedImportLengthSpecification);
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from ProductIdentifier2', ImportProductIdentifier);//Moved after TransportPackageInformation2 beacuse it is related to it
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//      DoImportExport('select * from InformationalQuantity2', ImportInformationalQuantity);
      ADOConnection1.CommitTrans;
      Screen.Cursor := crSQLWait;    { Show hourglass cursor }      
    ShowMessage('Import av paket OK') ;
    ImportOfPkgsOK:= True ;
  except
      ADOConnection1.RollbackTrans;
      ShowMessage('Import misslyckades.') ;
      ImportOfPkgsOK:= False ;
  end;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
// dmsSystem.SaveUserDir (ThisUser.UserID, Self.Name, WoodXDir, ImportDir, DeliveryWoodMsg_XSD_File) ;
end;

procedure TXMLImportExport.acValidateImportFileExecute(Sender: TObject);
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  DoValidate(edtXSDFileName.Text, edtFileToImport.Text);
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.acExportPkgsToXMLFileToInternationalExecute(
  Sender: TObject);
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try

{  dmsSystem.RunLengthSpec ;
  DoSetPropValue(Sender, 'Enabled', False);
  try
    DoExport;
  finally
    DoSetPropValue(Sender, 'Enabled', True);
  end;                   }

 EmailFakturaAndSpecExecuteViaBizTalk ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.acImportPkgsExecute(Sender: TObject);
begin
  DoSetPropValue(Sender, 'Enabled', False);
  try
    DoRelaxedImport;
  finally
    DoSetPropValue(Sender, 'Enabled', True);
  end;
 if ImportOfPkgsOK then
  Close ;
end;

procedure TXMLImportExport.acExportPkgsToXMLFileExecute(Sender: TObject);
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try
  // Stänger av för att xml filerna skall gå över biztalken
  dmsSystem.RunLengthSpec ;
  DoSetPropValue(Sender, 'Enabled', False);
  try
    DoExport;
  finally
    DoSetPropValue(Sender, 'Enabled', True);
  end;

 EmailFakturaAndSpecExecute ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.EmailFakturaAndSpecExecuteViaBizTalk ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
 if thisuser.UserName = 'Lars' then exit ;

 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= InternalInvoiceNo ;
  FormCRExportOneReport.CreateCo(CustomerNo, cFaktura, A, WoodXDir + 'InvoiceNo ' + IntToStr(InvoiceNo)) ;
  FormCRExportOneReport.CreateCo(CustomerNo, cPkgSpec, A, WoodXDir + 'Specification ' + IntToStr(InvoiceNo)) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;

 if cbEmaila.Checked then
 Begin
 MailToAddress:= dmsContact.GetEmailAddress(CustomerNo) ;
 if Length(MailToAddress) > 0 then
 Begin
  SetLength(Attach, 2);
  Attach[0] := WoodXDir + 'InvoiceNo ' + IntToStr(InvoiceNo) + '.pdf' ;
  Attach[1] := WoodXDir + 'Specification ' + IntToStr(InvoiceNo) + '.pdf' ;

  x:= 1 ;

  sq_GetLONos.Close ;
  sq_GetLONos.Parameters.ParamByName('InternalInvoiceNo').Value := InternalInvoiceNo ;
  sq_GetLONos.Open ;
  sq_GetLONos.First ;
  While not sq_GetLONos.Eof do
  Begin
 //  x:= succ(x) ;
 //  SetLength(Attach, x+1);
   dmsSystem.DeliveryMessageNumber  := sq_GetLONosDeliveryMessageNumber.AsString ;

   dm_ImportWoodx.Ins_InvoicePkgSpecWoodX (InternalInvoiceNo, sq_GetLONosDeliveryMessageNumber.AsInteger) ;

 //  Attach[x]:= WoodXDir + 'InvoicePackageSpec InvoiceNo-LoadOrderNo' + IntToStr(InvoiceNo) +'-'+ dmsSystem.DeliveryMessageNumber + '.xml' ;

   sq_GetLONos.Next ;
  End ;
 sq_GetLONos.Close ;

 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: ' + IntToStr(InvoiceNo)
  +' - Invoice/package specification. InvoiceNo: ' + IntToStr(InvoiceNo),
  'Faktura, paketspecifikation bifogad. '
  +LF+''
  +'Invoice, package specification attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
//  'lars.makiaho@falubo.se',

  MailToAddress,
//  'lars.makiaho@falubo.se', //getinvoice emailaddress

  Attach, False) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End //if cbEmaila.Checked then
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;

end;


procedure TXMLImportExport.EmailFakturaAndSpecExecute ;
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
 if thisuser.UserName = 'Lars' then exit ;

 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= InternalInvoiceNo ;
  FormCRExportOneReport.CreateCo(CustomerNo, cFaktura, A, WoodXDir + 'InvoiceNo ' + IntToStr(InvoiceNo)) ;
  FormCRExportOneReport.CreateCo(CustomerNo, cPkgSpec, A, WoodXDir + 'Specification ' + IntToStr(InvoiceNo)) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;

 if cbEmaila.Checked then
 Begin
 MailToAddress:= dmsContact.GetEmailAddress(CustomerNo) ;
 if Length(MailToAddress) > 0 then
 Begin
  SetLength(Attach, 2);
  Attach[0] := WoodXDir + 'InvoiceNo ' + IntToStr(InvoiceNo) + '.pdf' ;
  Attach[1] := WoodXDir + 'Specification ' + IntToStr(InvoiceNo) + '.pdf' ;

  x:= 1 ;

  sq_GetLONos.Close ;
  sq_GetLONos.Parameters.ParamByName('InternalInvoiceNo').Value := InternalInvoiceNo ;
  sq_GetLONos.Open ;
  sq_GetLONos.First ;
  While not sq_GetLONos.Eof do
  Begin
   x:= succ(x) ;
   SetLength(Attach, x+1);
   dmsSystem.DeliveryMessageNumber  := sq_GetLONosDeliveryMessageNumber.AsString ;

//   dm_ImportWoodx.Ins_InvoicePkgSpecWoodX (InternalInvoiceNo, sq_GetLONosDeliveryMessageNumber.AsInteger) ;

   Attach[x]:= WoodXDir + 'InvoicePackageSpec InvoiceNo-LoadOrderNo' + IntToStr(InvoiceNo) +'-'+ dmsSystem.DeliveryMessageNumber + '.xml' ;

   sq_GetLONos.Next ;
  End ;
 sq_GetLONos.Close ;

 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: ' + IntToStr(InvoiceNo)
  + ' - Invoice/package specification. InvoiceNo: ' + IntToStr(InvoiceNo),
  'Faktura, paketspecifikation bifogad. '
  + LF  + ''
  + 'Invoice, package specification attached. '
  + LF  + ''
  + LF  + ''
  + LF  + 'MVH/Best Regards, '
  + LF  + ''
  + dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
//  'lars.makiaho@falubo.se',

  MailToAddress,
//  'lars.makiaho@falubo.se', //getinvoice emailaddress

  Attach, False) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End //if cbEmaila.Checked then
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;

end;

(*    since 2014-03-27 11:31
begin
 if thisuser.UserName = 'Lars' then exit ;

 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= InternalInvoiceNo ;
  FormCRExportOneReport.CreateCo(CustomerNo, cFaktura, A, WoodXDir + 'InvoiceNo ' + IntToStr(InvoiceNo)) ;
  FormCRExportOneReport.CreateCo(CustomerNo, cPkgSpec, A, WoodXDir + 'Specification ' + IntToStr(InvoiceNo)) ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;

 if cbEmaila.Checked then
 Begin
 MailToAddress:= dmsContact.GetEmailAddress(CustomerNo) ;
 if Length(MailToAddress) > 0 then
 Begin
  SetLength(Attach, 2);
  Attach[0] := WoodXDir + 'InvoiceNo ' + IntToStr(InvoiceNo) + '.pdf' ;
  Attach[1] := WoodXDir + 'Specification ' + IntToStr(InvoiceNo) + '.pdf' ;

  x:= 1 ;

  sq_GetLONos.Close ;
  sq_GetLONos.Parameters.ParamByName('InternalInvoiceNo').Value := InternalInvoiceNo ;
  sq_GetLONos.Open ;
  sq_GetLONos.First ;
  While not sq_GetLONos.Eof do
  Begin
   x:= succ(x) ;
   SetLength(Attach, x+1);
   dmsSystem.DeliveryMessageNumber  := sq_GetLONosDeliveryMessageNumber.AsString ;
//  OutPutPackageFileName := WoodXDir+'InvoicePackageSpec InvoiceNo_LoadOrderNo ' + IntToStr(InvoiceNo) +'_'+ DeliveryMessageNumber +'.xml' ; //edtFileToExport.Text;

   Attach[x]:= WoodXDir + 'InvoicePackageSpec InvoiceNo-LoadOrderNo' + IntToStr(InvoiceNo) +'-'+ dmsSystem.DeliveryMessageNumber + '.xml' ;

   sq_GetLONos.Next ;
  End ;
 sq_GetLONos.Close ;

 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try

  dm_SendMapiMail.SendMail('Faktura/specifikation. Fakturanr: ' + IntToStr(InvoiceNo)
  +' - Invoice/package specification. InvoiceNo: ' + IntToStr(InvoiceNo),
  'Faktura, paketspecifikation och Woodx spec bifogad. '
  +LF+''
  +'Invoice, package specification and woodx package spec attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
//  'lars.makiaho@falubo.se',

  MailToAddress,
//  'lars.makiaho@falubo.se', //getinvoice emailaddress

  Attach, False) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End //if cbEmaila.Checked then
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;

end;
*)

procedure TXMLImportExport.acValidateExportXMLFileExecute(Sender: TObject);
begin
  DoValidate(edtXSDFileName.Text, edtFileToExport.Text);
end;

procedure TXMLImportExport.acValidateImportFileUpdate(Sender: TObject);
begin
 acValidateImportFile.Enabled:= Length(Trim(edtFileToImport.Text)) > 0 ;
end;

procedure TXMLImportExport.acImportPkgsUpdate(Sender: TObject);
begin
 acImportPkgs.Enabled:= Length(Trim(edtFileToImport.Text)) > 0 ;
end;

procedure TXMLImportExport.acValidateExportXMLFileUpdate(Sender: TObject);
begin
 acValidateExportXMLFile.Enabled:= Length(Trim(edtFileToExport.Text)) > 0 ;
end;

procedure TXMLImportExport.FormShow(Sender: TObject);
begin
 LoadConfig ;
 if PageControl1.ActivePage = tsImport then
 Begin
  sbOpenWoodXFileToImportClick(Sender) ;
  if Length(edtFileToImport.Text) > 0 then
  Begin
   acImportPkgsExecute(Sender) ;
   Timer1.Enabled  := True ;
  End ;
 End ; 
end;

procedure TXMLImportExport.FormCreate(Sender: TObject);
begin
 ImportOfPkgsOK := False ;
end;

procedure TXMLImportExport.Timer1Timer(Sender: TObject);
begin
 Close ;
end;

end.
