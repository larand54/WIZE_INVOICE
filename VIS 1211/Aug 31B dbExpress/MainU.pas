unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, xmldom, XMLIntf, msxmldom, XMLDoc, PackageExportU,
  ComCtrls, ExtCtrls, Buttons, FMTBcd, DBClient, Provider, SqlExpr,
  cxShellBrowserDialog, ActnList, cxControls, cxContainer, cxEdit,
  cxCheckBox, clTcpClient, clFtp, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue,  cxClasses, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  clTcpClientTls, clTcpCommandClient, System.Actions;

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
    SpeedButton1: TSpeedButton;
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
    sq_GetLONos2: TSQLQuery;
    sq_GetLONos2DeliveryMessageNumber: TStringField;
    cbEmaila: TcxCheckBox;
    clFtp1: TclFtp;
    SQLQuery1: TSQLQuery;
    sq_GetLONos: TADOQuery;
    sq_GetLONosDeliveryMessageNumber: TStringField;
    procedure btnImportClick(Sender: TObject);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure btnConnectionClick(Sender: TObject);
    procedure btnClearEmptyNodeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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
  private

    WoodXDir, ImportDir, DelWoodMsg_XSD : String ;
    function  StringExist(const s, FileName : String) : Boolean ;
    function  DoGetNo(ImpExpFunction: TImportExportFunctionGetDeliveryMessageNumber): String ;//Lars, Lars again changed to string of course!!!
    function  DoImportExport(sSQL: string; ImpExpFunction: TImportExportFunction): Boolean;
    procedure DoExport;
    procedure DoImport;
    procedure DoRelaxedImport;
    procedure LoadConfig;
    procedure SaveConfig;
    procedure EmailFakturaAndSpecExecute ;
   Public
    LoadNo, CustomerNo : Integer ;
    InternalInvoiceNo : Integer ;
    DeliveryMessageNumber, FakturaNummer : String ;
  end;

var
  XMLImportExport: TXMLImportExport;

implementation

{$R *.dfm}

uses PackageImportU, ComObj, TypInfo, IniFiles, dmsVidaSystem, VidaUser ,
  dmsDataConn, dmsVidaContact,
  //uSendMapiMail,
  VidaConst , uSendMapiMail, uPrintModule, uReplaceStringInFile;


procedure TXMLImportExport.SaveConfig;
var
  i : Integer;
begin
  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do
  try
    for i := 0 to Self.ComponentCount - 1 do
    try

      if IsPublishedProp(Self.Components[i], 'Text') then
        WriteString('Config',  Self.Components[i].Name, TypInfo.GetStrProp(Self.Components[i], 'Text'));

    except
    end;

  finally
    Free;
  end;
end;

procedure TXMLImportExport.LoadConfig;
var
  i : Integer;
begin
 WoodXDir                 := dmsSystem.Get_SystemDir('XMLImportExport', 'WoodxDir') ;
 ImportDir                := dmsSystem.Get_SystemDir('XMLImportExport', 'ImportDir') ;
 DelWoodMsg_XSD := dmsSystem.Get_SystemDir('XMLImportExport', 'DeliveryMessageWood_XSD') ; // GetUserExportDir(2, ThisUser.UserID, Self.Name) ;


{
   WoodXDir       := dmsSystem.Get_Dir(-1, 'XMLImportExport', 'WoodxDir') ;
   ImportDir      := dmsSystem.Get_Dir(-1, 'XMLImportExport', 'ImportDir') ;
   DelWoodMsg_XSD := dmsSystem.Get_Dir(-1, 'XMLImportExport', 'DeliveryMessageWood_XSD') ;

}


 if Length(WoodXDir) = 0 then
 Begin
  ShowMessage('Woodx huvudmapp saknas.');
  acExportPkgsToXMLFile.Enabled:= False ;
  Exit ;
 End ;

 if Length(DelWoodMsg_XSD) = 0 then
 Begin
  ShowMessage('Mapp för woodx mallar saknas.');
  acExportPkgsToXMLFile.Enabled:= False ;
  Exit ;
 End ;

 if not DirectoryExists(WoodXDir + 'DeliveryMessage') then
  if not CreateDir(WoodXDir + 'DeliveryMessage') then
   raise Exception.Create('Cannot create ' + WoodXDir + 'DeliveryMessage');

 WoodXDir             := IncludeTrailingPathDelimiter(WoodXDir + 'DeliveryMessage') ;
// edtFileToImport.Text := ImportDir ;
 edtXSDFileName.Text  := DelWoodMsg_XSD ;
 edtFileToExport.Text := WoodXDir ;

 //Lars
// edtConnectionString.Text       := 'Provider=SQLOLEDB.1;Password=woods2011;Persist Security Info=True;User ID=sa;Initial Catalog=WOODSUPPORT;Data Source=carmak-speed\SQLEXPRESS' ;

//LindVerken
  edtConnectionString.Text       := 'Provider=SQLOLEDB.1;Password=Woodsupport2016!;Persist Security Info=True;User ID=sa;Initial Catalog=WOODSUPPORT;Data Source=VPS-NET-RDS-004\WOODSUPPORT' ;
//inte denna                                    Provider=SQLOLEDB.1;Password=woods;Persist Security Info=True;User ID=sa;Initial Catalog=WOODSUPPORT;Data Source=WSSQL01\SQLEXPRESS;Extended Properties="uid=sa;pwd=sa"


{
  Database=WOODSUPPORT
  OSAuthent=No
  Server=VPS-NET-RDS-004\WOODSUPPORT
  User_Name=sa
  Password=Woodsupport2016!
  LoginTimeout=120
  DriverID=MSSQL

}

 if ThisUser.UserID = 8 then
 Begin
  Label1.Visible              := True ;
  edtConnectionString.Visible := True ;
  btnConnection.Visible       := True ;
 End ;

{  with TIniFile.Create(ChangeFileExt(ParamStr(0), '.ini')) do
  try
    for i := 0 to Self.ComponentCount - 1 do
    try

      if IsPublishedProp(Self.Components[i], 'Text') then
        TypInfo.SetPropValue( Self.Components[i],
                              'Text',
                              ReadString('Config',  Self.Components[i].Name, TypInfo.GetStrProp(Self.Components[i], 'Text'))
                              );

    except
    end;
  finally
    Free;
  end; }
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
    Result := ImpExpFunction;
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
  DeliveryMessageNumber:= DoGetNo(GetDeliveryMessageNumber) ;
  ADOQuery1.Close;
  ADOQuery1.SQL.Add('Delete From DeliveryMessageWoodHeader WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.ExecSQL ;
  ADOConnection1.Close;

  ADOConnection1.Open;
  ADOConnection1.BeginTrans;
  try
      DoImportExport('select * from DeliveryMessageWoodHeader', ImportDeliveryWoordHeader);
      DoImportExport('select * from DeliveryMessageReference', ImportDeliveryMessageReference);
      DoImportExport('select * from PartyIdentifier', ImportPartyIdentifier);
      DoImportExport('select * from NameAddress', ImportNameAddress);

      DoImportExport('select * from DeliveryMessageShipment', ImportDeliveryMessageShipment);
      DoImportExport('select * from ProductIdentifier', ImportProductIdentifier);

      DoImportExport('select * from DeliveryShipmentDeliveryMessageReference', ImportDeliveryShipmentDeliveryMessageReference);
      DoImportExport('select * from TransportPackageInformation', ImportTransportPackageInformation);
      DoImportExport('select * from LengthSpecification', ImportLengthSpecification);
      DoImportExport('select * from InformationalQuantity', ImportInformationalQuantity);
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
 InternalInvoiceNo := LoadNo ;
 PackageExportU.InternalInvoiceNo := InternalInvoiceNo ;
 sq_GetLONos.Close ;
 sq_GetLONos.Parameters.ParamByName('InternalInvoiceNo').Value := LoadNo ;
 sq_GetLONos.Open ;
 While not sq_GetLONos.Eof do
 Begin
  DeliveryMessageNumber:= sq_GetLONosDeliveryMessageNumber.AsString ;
  OutPutPackageFileName := WoodXDir + 'DeliveryMessage_LoadNo_' + DeliveryMessageNumber +'.xml' ; //edtFileToExport.Text;
  CleareDoc;

   DoImportExport('select * from dbo.DeliveryMessageWoodHeader  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(LoadNo), ExportDeliveryWoordHeader);
// This function is called by prior function
////    DoImportExport('select * from DeliveryMessageReference, ExportDeliveryMessageReference);
////    DoImportExport('select * from DeliveryMessageShipment', ExportDeliveryMessageShipment);

//Lars switched order of these 2 calls
// 2006.11.26 20:02:44 By Zheng Jie (Gear1023@163.com)
// Changed Back By
   DoImportExport('select * from dbo.PartyIdentifier  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(LoadNo), ExportPartyIdentifier) ;
   DoImportExport('select * from dbo.NameAddress  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(LoadNo), ExportNameAddress) ;



// This function is called by prior function
////    DoImportExport('select * from ProductIdentifier', ExportProductIdentifier);
////    DoImportExport('select * from DeliveryShipmentDeliveryMessageReference', ExportDeliveryShipmentDeliveryMessageReference);

   DoImportExport('select * from dbo.TransportPackageInformation  WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)+' AND InternalInvoiceNo = '+inttostr(LoadNo), ExportTransportPackageInformation);
////    DoImportExport('select * from LengthSpecification', ExportLengthSpecification);
////    DoImportExport('select * from InformationalQuantity', ExportInformationalQuantity);

   doClearEmptyNode;

   edtFileToExport.Text := OutPutPackageFileName ;
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

procedure TXMLImportExport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  SaveConfig;
end;

procedure TXMLImportExport.FormCreate(Sender: TObject);
begin
  LoadConfig;
end;

function TXMLImportExport.StringExist(const s, FileName : String) : Boolean ;
Var sl : TStringList ;
    i : Integer ;
Begin
  Result  := False ;
  sl := TStringList.Create;
  try
    sl.LoadFromFile(fileName);
    for i := sl.Count-1 downto 0 do
      if Pos(s, sl[i])<>0 then
      Begin
        Result  := True ;
        Exit ;
      End;
//    sl.SaveToFile(fileName);
  finally
    sl.Free;
  end;
End;

procedure TXMLImportExport.SpeedButton1Click(Sender: TObject);
var
  Replacer: TFileSearchReplace;
  StartTime: TDateTime;
begin
  opd.InitialDir  := ImportDir ;
//  opd.FileName    := edtFileToImport.Text;
  if opd.Execute then
  begin
   edtFileToImport.Text := opd.FileName;
   ImportDir            := ExtractFilePath(opd.FileName) ;

   if not StringExist('TransportPackageInformation', edtFileToImport.Text)  then
   Begin
    StartTime:=Now;
    Replacer:=TFileSearchReplace.Create(edtFileToImport.Text) ;
    try
      Replacer.Replace('PackageInformation', 'TransportPackageInformation', [rfReplaceAll,rfIgnoreCase]); //
    finally
      Replacer.Free;
    end;
    Caption:=FormatDateTime('nn:ss.zzz', Now - StartTime);
   End;
  end;
end;

procedure TXMLImportExport.SpeedButton2Click(Sender: TObject);
begin
  if cxShellBrowserDialog1.Execute then
  Begin
   WoodXDir            := IncludeTrailingBackslash(cxShellBrowserDialog1.Path) ;
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
  opdxs.InitialDir:= ExtractFilePath(DelWoodMsg_XSD) ;
//  opdxs.FileName := edtXSDFileName.Text;
  if opdxs.Execute then
  begin
//    edtFileToImport.Text := opdxs.FileName;
    edtXSDFileName.Text := opdxs.FileName;
    DelWoodMsg_XSD      := opdxs.FileName;
  end;
end;

//Lars 28 nov
procedure TXMLImportExport.DoRelaxedImport;
var
  Save_Cursor : TCursor;
begin
  InPutPackageFileName := edtFileToImport.Text;
//Lars get GetDeliveryMessageNumber
//Delete old data
  ADOConnection1.Open;
  DeliveryMessageNumber:= '1' ;//DoGetNo(GetDeliveryMessageNumber) ;
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear ;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryMessageWoodHeader2 WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.ProductIdentifier2 WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.PartyIdentifier2 WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.NameAddress2 WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryMessageShipment2 WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.SQL.Add('Delete From dbo.DeliveryShipmentDeliveryMessageReference2 WHERE DeliveryMessageNumber = '+QuotedStr(DeliveryMessageNumber)) ;
  ADOQuery1.ExecSQL ;
  ADOConnection1.Close;
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  ADOConnection1.Open;
  ADOConnection1.BeginTrans;
  try

      DoImportExport('select * from dbo.DeliveryMessageWoodHeader2', ImportDeliveryWoordHeader);
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//      DoImportExport('select * from DeliveryMessageReference', ImportDeliveryMessageReference);
      DoImportExport('select * from dbo.PartyIdentifier2', ImportPartyIdentifier);
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.NameAddress2', ImportNameAddress);
Screen.Cursor := crSQLWait;    { Show hourglass cursor }


      DoImportExport('select * from dbo.DeliveryMessageShipment2', ImportDeliveryMessageShipment);
Screen.Cursor := crSQLWait;    { Show hourglass cursor }

      DoImportExport('select * from dbo.DeliveryShipmentDeliveryMessageReference2', ImportDeliveryShipmentDeliveryMessageReference);

Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.TransportPackageInformation2', RelaxedImportTransportPackageInformation);
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.LengthSpecification2', RelaxedImportLengthSpecification);
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
      DoImportExport('select * from dbo.ProductIdentifier2', ImportProductIdentifier);//Moved after TransportPackageInformation2 beacuse it is related to it
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
//      DoImportExport('select * from InformationalQuantity2', ImportInformationalQuantity);
      ADOConnection1.CommitTrans;
Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    ShowMessage('Import av paket OK') ;
  except
      ADOConnection1.RollbackTrans;
      ShowMessage('Import misslyckades.') ;
  end;
end;

procedure TXMLImportExport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmsSystem.SaveUserDir (ThisUser.UserID, Self.Name, WoodXDir, ImportDir, DelWoodMsg_XSD) ;
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

procedure TXMLImportExport.acImportPkgsExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  DoSetPropValue(Sender, 'Enabled', False);
  try
   DoRelaxedImport;
  finally
   DoSetPropValue(Sender, 'Enabled', True);
  end;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TXMLImportExport.acExportPkgsToXMLFileExecute(Sender: TObject);
Var
 Save_Cursor  : TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
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

procedure TXMLImportExport.EmailFakturaAndSpecExecute ;
const
  LF = #10;
Var //FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    x                       : Integer ;
begin
//LM if dmVidaInvoice.cdsInvoiceListINTFAKTNR.AsInteger < 1 then exit ;


  dmPrintModule:= TdmPrintModule.Create(nil);
  Try
  dmPrintModule.ExportFS_As_PDF(LoadNo, WoodXDir + 'FS_' + inttostr(LoadNo) + '.pdf', False) ;
  Finally
   FreeAndNil(dmPrintModule) ;
  End ;

// FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
// Try
//  dmVidaInvoice.SparaFakturaOchSpecSomPDF (1,  dmVidaInvoice.cdsInvoiceListINTFAKTNR.AsInteger,  dmVidaInvoice.cdsInvoiceListSupplierNo.AsInteger,  WoodXDir) ;//Svendska

//  SetLength(A, 1);
//  A[0]:= dmVidaInvoice.cdsInvoiceListINTFAKTNR.AsInteger ;
//  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, WoodXDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
//  FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, WoodXDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
// Finally
//  FreeAndNil(FormCRExportOneReport) ;//.Free ;
// End ;


 if cbEmaila.Checked then
 Begin
 MailToAddress:= dmsContact.GetEmailAddress(CustomerNo) ;
 if Length(MailToAddress) = 0 then
  MailToAddress := 'ange@FDress.nu' ;

 if Length(MailToAddress) > 0 then
 Begin
  SetLength(Attach, 2);
  Attach[0] := WoodXDir + 'FS_' + inttostr(LoadNo) + '.pdf' ;
//  Attach[1]:= WoodXDir + 'Specification '+dmVidaInvoice.cdsInvoiceListFAKTNR.AsString+'.pdf' ;
  Attach[1] := edtFileToExport.Text ;

{  x:= 1 ;

  sq_GetLONos.Close ;
  sq_GetLONos.ParamByName('InternalInvoiceNo').AsInteger:= InternalInvoiceNo ;
  sq_GetLONos.Open ;
  sq_GetLONos.First ;
  While not sq_GetLONos.Eof do
  Begin
   x:= succ(x) ;
   SetLength(Attach, x+1);
   DeliveryMessageNumber:= sq_GetLONosDeliveryMessageNumber.AsString ;

   Attach[x]:= WoodXDir + 'InvoicePackageSpec InvoiceNo_LoadOrderNo ' + FakturaNummer +'_'+ DeliveryMessageNumber +'.xml' ;
   sq_GetLONos.Next ;
  End ;
 sq_GetLONos.Close ; }

 dm_SendMapiMail         := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Följesedel. WoodX Deliverymessage. Lastnr: ' + IntToStr(LoadNo),
//   dmsContact.GetMessageFras(ThisUser.UserID),
 { 'Följesedel, WoodX Deliverymessage bifogad. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  + dmsContact.GetFirstAndLastName(ThisUser.UserID), }
  LF + 'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir(inttostr(ThisUser.UserID)), 'MyEmailAddress',  MailToAddress,
 // '', //InfogadHTMLFil
  Attach) ;


 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End //if cbEmaila.Checked then
  else
   ShowMessage('Emailadress saknas för klienten!') ;
 End ;

end;

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
end;

end.
