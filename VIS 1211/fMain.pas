unit fMain;

interface

uses
  Variants,
  DateUtils,
  fAvrop,
  ActnList,
  Classes,
  Controls,
  dxBar,
  ExtCtrls,
  Forms,
  ImgList,
  SysUtils,
  Windows, ShellApi,   inifiles, StdCtrls, jpeg, Graphics,
  printers, ComCtrls, Messages,
  cxShellBrowserDialog, cxPropertiesStore, cxClasses,
  dxRibbonGallery, dxRibbon, dxStatusBar, dxRibbonStatusBar, cxControls,
  dxNavBar, dxNavBarBase, dxNavBarCollns, cxSplitter, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxContainer, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxCalc, cxCheckBox, cxTextEdit,
  dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  dxBarApplicationMenu, dxScreenTip, Vcl.Menus, cxButtons, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxRibbonCustomizationForm ;




type
  TfrmMain = class(TForm)
    ActionList1: TActionList;
    atDataCountry: TAction;
    atDeliveryTerm: TAction;
    atPaymentTerm: TAction;
    atCurrency: TAction;
    atPackUnit: TAction;
    atUnitName: TAction;
    atExit: TAction;
    atPackageCode: TAction;
    atAbout: TAction;
    atMarketRegion: TAction;
    atStatisticalCode: TAction;
    atLanguage: TAction;
    imglOutbar_large: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    bbPkgInfo: TdxBarButton;
    bbAddPackage: TdxBarButton;
    bbUserPreference: TdxBarButton;
    acUserPreference: TAction;
    bbCurrency: TdxBarButton;
    test: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    Panel1: TPanel;
    panelBase: TPanel;
    bbGeneralShippingCost: TdxBarButton;
    bbMarketPriceTemplates: TdxBarButton;
    bbMarketPrices: TdxBarButton;
    bbMatPunkterVerk: TdxBarButton;
    bbBasMatPunkter: TdxBarButton;
    bbMainGrade: TdxBarButton;
    bbPkgNoSerie: TdxBarButton;
    bbProductCodes: TdxBarButton;
    bbInternalSpeciesCodes: TdxBarButton;
    bbInternalSurfacingCodes: TdxBarButton;
    bbPktNrPositioner: TdxBarButton;
    bbPaketNrPos_INI: TdxBarButton;
    bbAndraPkt: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    cxPropertiesStore1: TcxPropertiesStore;
    acBytAnvandare: TAction;
    Timer1: TTimer;
    acFTPSetup: TAction;
    dxBarButton6: TdxBarButton;
    acReportNames: TAction;
    dxBarButton7: TdxBarButton;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    dxRibbonDropDownGallery1: TdxRibbonDropDownGallery;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxRibbon1Tab5: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    acAvrop: TAction;
    dxBarButton8: TdxBarButton;
    acAR: TAction;
    acSkeppningsinstruktion: TAction;
    acKPLista: TAction;
    acFragaAvrop: TAction;
    acEjFakturerat: TAction;
    acUtlastningVerk: TAction;
    acLevereradeLaster: TAction;
    acFakturalista: TAction;
    acSamlingsFakturaLista: TAction;
    acRegistreraFraktAvrakning: TAction;
    acRegistreradeFraktAvrakningar: TAction;
    acLagerRapport: TAction;
    acRegistreraAvrakning: TAction;
    acRegistreradeAvrakningar: TAction;
    acAnkomnaHamn: TAction;
    acPaketinfo: TAction;
    acKontrolleraAvrakningslaster: TAction;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    acKontoLogik: TAction;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    acOrderstock: TAction;
    dxBarLargeButton19: TdxBarLargeButton;
    acIntraStat: TAction;
    dxBarLargeButton20: TdxBarLargeButton;
    acTradingAnalyze: TAction;
    acAttestCommisionAndExtFreight: TAction;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    acPayControl: TAction;
    dxBarButton11: TdxBarButton;
    acImportFromHampen: TAction;
    dxBarLargeButton23: TdxBarLargeButton;
    acCreditInsurance: TAction;
    dxBarLargeButton24: TdxBarLargeButton;
    acCreditAnalysis: TAction;
    acLockedLoads: TAction;
    dxBarButton12: TdxBarButton;
    acReportStatistics: TAction;
    dxBarButton17: TdxBarButton;
    dxBarLargeButton25: TdxBarLargeButton;
    acSTEF: TAction;
    dxBarButton18: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure atExitExecute(Sender: TObject);
    procedure atAboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure bbAddPackageClick(Sender: TObject);
    procedure acUserPreferenceExecute(Sender: TObject);
    procedure bbCurrencyClick(Sender: TObject);
    procedure bbGeneralShippingCostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acBytAnvandareExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure acFTPSetupExecute(Sender: TObject);
    procedure acReportNamesExecute(Sender: TObject);
    procedure acAvropExecute(Sender: TObject);
    procedure acARExecute(Sender: TObject);
    procedure acEjFaktureratExecute(Sender: TObject);
    procedure acFragaAvropExecute(Sender: TObject);
    procedure acKPListaExecute(Sender: TObject);
    procedure acSkeppningsinstruktionExecute(Sender: TObject);
    procedure acUtlastningVerkExecute(Sender: TObject);
    procedure acLevereradeLasterExecute(Sender: TObject);
    procedure acFakturalistaExecute(Sender: TObject);
    procedure acSamlingsFakturaListaExecute(Sender: TObject);
    procedure acRegistreraFraktAvrakningExecute(Sender: TObject);
    procedure acRegistreradeFraktAvrakningarExecute(Sender: TObject);
    procedure acRegistreraAvrakningExecute(Sender: TObject);
    procedure acRegistreradeAvrakningarExecute(Sender: TObject);
    procedure acAnkomnaHamnExecute(Sender: TObject);
    procedure acPaketinfoExecute(Sender: TObject);
    procedure acKontrolleraAvrakningslasterExecute(Sender: TObject);
    procedure acKontoLogikExecute(Sender: TObject);
    procedure acOrderstockExecute(Sender: TObject);
    procedure acIntraStatExecute(Sender: TObject);
    procedure acTradingAnalyzeExecute(Sender: TObject);
    procedure acAttestCommisionAndExtFreightExecute(Sender: TObject);
    procedure acPayControlExecute(Sender: TObject);
    procedure acCreditInsuranceExecute(Sender: TObject);
    procedure acCreditAnalysisExecute(Sender: TObject);
    procedure acLockedLoadsExecute(Sender: TObject);
    procedure acReportStatisticsExecute(Sender: TObject);
    procedure acSTEFExecute(Sender: TObject);

    procedure rg_ReportOptionsClick(Sender: TObject);
    procedure rg_PrintSetUpClick(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
  private
    a : String ;
    function  GetLastNrToUnLock : Integer ;
    function  FormOpen : Boolean ;
    procedure AppException(Sender: TObject; E: Exception);
    procedure PaketInmatningPerPktKod (Sender: TObject);
    procedure CleanUpForms(Sender: TObject);
    procedure GetIniFileMap(Sender: TObject) ;
    procedure CheckMappar ;
    procedure CheckDrive ;
    procedure GetPropIniStores(Sender: TObject) ;
    Procedure InitOnStartOfProgram ;
  public

  end;

var
  FrmMain: TfrmMain;



implementation

uses
  Dialogs,


  VidaConst,
  VidaType,
  VidaUser,  fInvoiceList,
  dmcVidaSystem, UnitSetup, UnitCRViewReport,
  dmLM1, UnitShippingInstruction, UnitKP_List,
  fLoadOrder, dmcVidaOrder, UnitAboutBox,
  UnitLoadArrivals, UnitPkgInfo, dmsDataConn,
  //UnitInventoryReport,
  UnitSokAvropFormular,
  UnitAvrakningar, dmsVidaProduct, //dmsVidaPkg,
  dmsVidaSystem, uFreightLoad, uUserPreference, //Ucurrency,
  //uPkgLog,
  UnitCRPrintReport, //UnitProdRep,
  uGenShipCost, //uProductionUnit,
  uBasMatPunkter,
  UnotInvoicedReport,
  uSamlingsfaktura, uLastLista,
  //uPktNrPos,
  //uPkgNoPos, //UnitPkgsByPktType, //UExtMovePkg,
  //dm_Inventory,
  uEncode , fAvrakningar, fSkapaAvrakning,
  UPortArrivals, uChangeLogins , uChkAvrLoads, dmc_UserProps,
  //uAttestLegoRun, //fRunAttester, //fSkapaRunAttest, 
  //uFreightExternLoad,
  uFtpParam, uKundspecifika, uKontoLogik, uOrderStocken, uIntrastat,
  uTradingAnalyze, uFreightExternLoad, uPayControl,
  uCredit, uCreditLimitAnalys, uEntryField, uLockedLoads, uReportStatics, uStef,
  PrintUnit, PreviewForm, uPrintTest;



{$R *.DFM}

function TfrmMain.FormOpen : Boolean ;
Begin
  Result:= False ;
  if Assigned(fLastLista) then
   Result:= True ;
  if Assigned(fnotInvoicedReport) then
   Result:= True ;
  if Assigned(frmAvrakningar) then
   Result:= True ;
  if Assigned(frmGjordaAvrakningar) then
   Result:= True ;
  if Assigned(frmLoadArrivals) then
   Result:= True ;

  if Assigned(fChkAvrLoads) then
   Result:= True ;

//  if Assigned(frmPayment) then
//   Result:= True ;
  if Assigned(frmFreightLoad) then
   Result:= True ;
  if Assigned(fSamlingsfaktura) then
   Result:= True ;
  if Assigned(frmInvoiceList) then
   Result:= True ;
  if Assigned(frmAvrop) then
   Result:= True ;
//  if Assigned(frmProdRep) then
//   Result:= True ;
//  if Assigned(frmInventoryReport) then
//   Result:= True ;
//  if Assigned(frmCreatePayment) then
//   Result:= True ;

  if Assigned(frmSkapaAvrakning) then
   Result:= True ;
  if Assigned(frmSokAvropFormular) then
   Result:= True ;
  if Assigned(frmLoadOrder) then
   Result:= True ;

  if Assigned(frmPortArrivals) then
   Result:= True ;
  if Assigned(frmKP_List) then
   Result:= True ;
  if Assigned(frmShippingInstruction) then
   Result:= True ;

  if Assigned(frmShippingInstruction) then
   Result:= True ;

End ;

function GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfrmMain.CheckDrive ;
Begin
  if not DirectoryExists('h:\') then
  Begin
   cxShellBrowserDialog1.Title:= 'Disk drive H: finns ej, ange en annan.' ;
   cxShellBrowserDialog1.Execute ;
   dmsConnector.DriveLetter:= cxShellBrowserDialog1.Path ;
  End
   else
    dmsConnector.DriveLetter:= 'h:\';
 IncludeTrailingBackslash(dmsConnector.DriveLetter) ;
End ;

(*procedure MyNotify(ExcRecord: TEurekaExceptionRecord; var Handled: Boolean);
begin
{ if DebugHook <> 0 then
  Handled := False
   else
    Handled:= True ; }
 Handled := not (ExcRecord.ExceptionObject is EdxEditInvalidInput) ;
end;*)

//---------------------------------------------------------------------
procedure TfrmMain.AppException(Sender: TObject; E: Exception);
begin
  if Pos('547', E.Message) > 0 then
    ShowMessage('The system can not insert record due to data conflict!')
  else
    if Pos('2601', E.Message) > 0 then
      ShowMessage('The system can not insert record due to data duplication!')
    else
      if Pos('10015', E.Message) > 0 then
        ShowMessage('The system can not insert record due to data duplication!')
      else
        ShowMessage('System Error. Original Message: ' + E.Message)
end;


//---------------------------------------------------------------------
procedure TfrmMain.FormCreate(Sender: TObject);
begin
// ExceptionNotify := MyNotify; // Assign ExceptionNotify variable to MyNotify procedure.
  Application.OnException := AppException;
end;


//---------------------------------------------------------------------
procedure TfrmMain.atExitExecute(Sender: TObject);
begin
  close
end;

//-------------------------------------------------------------
procedure TfrmMain.atAboutExecute(Sender: TObject);
begin
 TAboutBox.Execute ;
end;

procedure TfrmMain.CheckMappar ;
Var EditCRFolder, EditIniFiles, eUserDir, eExcelDir, eLODir : String ;
Begin
 if DirectoryExists(dmsConnector.DriveLetter) then
 Begin
  if not DirectoryExists(dmsConnector.DriveLetter+'VIS') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\KONFIG') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\KONFIG') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS\KONFIG');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\MALL') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\MALL') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS\MALL');

  if not DirectoryExists(dmsConnector.DriveLetter+'VIS\TEMP') then
    if not CreateDir(dmsConnector.DriveLetter+'VIS\TEMP') then
    raise Exception.Create('Cannot create '+dmsConnector.DriveLetter+'VIS\TEMP');
 End ;
{ if not FileExists(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') then
 with TIniFile.Create(dmsConnector.DriveLetter+'VIS\KONFIG\VIS.INI') do
    try
     EditCRFolder:= ReadString ('Security', 'CRPath', '\\vida912\E\Microsoft SQL Server\MSSQL\Program\VISRAPPORTER\') ;
     EditIniFiles:= ReadString ('Security', 'InifilesMap', dmsConnector.DriveLetter+'VIS\KONFIG\') ;
     eUserDir:= ReadString ('Setup', 'UserDir', dmsConnector.DriveLetter+'VIS\MALL');
     eExcelDir:= ReadString ('Setup', 'ExcelDir', dmsConnector.DriveLetter+'VIS\TEMP');
     eLODir:= ReadString ('Setup', 'LODir', dmsConnector.DriveLetter+'VIS\MALL');

     WriteString('Setup','UserDir', eUserDir);
     WriteString('Setup','ExcelDir', eExcelDir);
     WriteString('Setup','LODir', eLODir);
     WriteString ('Security', 'CRPath', EditCRFolder) ;
     WriteString ('Security', 'InifilesMap', EditIniFiles) ;
     dmsConnector.InifilesMap:= EditIniFiles ;  
  Finally
   Free ;
  End }
End ;


//-------------------------------------------------------------
procedure TfrmMain.FormShow(Sender: TObject);
var Height, Width, Top, Left : Integer ;
begin
 dmsConnector.DriveLetter:= 'H:\' ;
 if dmsConnector.DriveLetter = 'C:\' then
  ShowMessage('Ändra till H:') ;

 CheckMappar ;
// ThisUser.Database:= 'carmak-speed\sqlexpress:vis_vida' ;
// ThisUser.Database:= '172.24.0.40:vis_vida' ;

 ThisUser.Database:= 'vis.vida.se:vis_vida' ;

// ThisUser.Database:= 'alvevistest01:vis_vida' ;
// ThisUser.Database:= 'alvesql03:vis_vida' ;
 dmsConnector.Org_DB_Name:= ThisUser.HostName + ':' + ThisUser.Database ;
   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       Caption:= Application.Title + '/' + dmsConnector.GetCompanyName (ThisUser.CompanyNo) + '/' + ThisUser.UserName + ' ver ' + GetVersion
       + ' - ' + dmsConnector.FDConnection1.Params.Values['Server']
       + '/' + dmsConnector.FDConnection1.Params.Values['Database'] + ' ' ;
       InitOnStartOfProgram ;
      End
      else
      Begin
       Close ;
      End ;
 dm_UserProps.GetAppFormSize(frmMain.Name, Height, Width, Top, Left) ;
 if (Height > 0) and (Width > 0) then //and (Top > 0) and (Left > 0) then
 Begin
  frmMain.Height  := Height ;
  frmMain.Width   := Width ;
  frmMain.Top     := Top ;
  frmMain.Left    := Left ;
 End ;
 Load_Plugin ;
end;

Procedure TfrmMain.InitOnStartOfProgram ;
Begin

End ;

//Sparas centralt
procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 if (ThisUser.UserID = 8) or (ThisUser.UserID = 4) or (ThisUser.UserID = 5) then
 Begin
  TFormSetup.Execute ;
 End ;
end;

procedure TfrmMain.dxBarButton18Click(Sender: TObject);
var fPrintTest: TfPrintTest;
begin
 fPrintTest := TfPrintTest.Create(nil) ;
 Try
  fPrintTest.ShowModal ;
 Finally
  FreeAndNil(fPrintTest) ;
 End;
end;

//initialization
  //UseDelphiDateTimeFormats := True;
procedure TfrmMain.bbAddPackageClick(Sender: TObject);
//Var frmPkgEntry : TfrmPkgEntry ;
begin
{ if ThisUser.CanView[dcAdd_packagesSec] then
 Begin
  dmsPkg:= TdmsPkg.Create(Nil) ;
  frmPkgEntry:= TfrmPkgEntry.Create(Nil);
  Try
   frmPkgEntry.ShowModal ;
  Finally
   dmsPkg.mtpackages.Active:= False ;
   FreeAndNil(frmPkgEntry) ;
   FreeAndNil(dmsPkg) ;
  End ;
 End ; }
end ;


procedure TfrmMain.acUserPreferenceExecute(Sender: TObject);
begin
 TfUserPreference.Execute ;
end;

procedure TfrmMain.bbCurrencyClick(Sender: TObject);
begin
// if ThisUser.CanView[dcFakturaSec] then
//  TfCurrency.Execute ;
end;

procedure TfrmMain.bbGeneralShippingCostClick(Sender: TObject);
var frmGenShipCost: TfrmGenShipCost;
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
 frmGenShipCost:= TfrmGenShipCost.Create(Nil);
 Try
  frmGenShipCost.ShowModal ;
 Finally
  FreeAndNil(frmGenShipCost) ;
 End ;
 End ;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then begin
    Key := #0;
//    if (Sender is TdxdBGrid) then
//      TdxdBGrid(Sender).Perform(WM_KeyDown,VK_Tab,0)
//    else
      Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmMain.PaketInmatningPerPktKod (Sender: TObject);
Begin
{ if ThisUser.CanView[dcInventorySection] then
  Begin
   TfrmPkgsByPktType.StartProc ;
  End ; }
End ;

procedure TfrmMain.rg_PrintSetUpClick(Sender: TObject);
begin

  //ShowMessage(print_Type);
end;

procedure TfrmMain.rg_ReportOptionsClick(Sender: TObject);
begin

  //ShowMessage(output_Type);
end;

procedure TfrmMain.CleanUpForms(Sender: TObject);
begin
 if Assigned(fLastLista) then
  FreeAndNil(fLastLista) ;

 if Assigned(fnotInvoicedReport) then
  FreeAndNil(fnotInvoicedReport) ;

 if Assigned(frmAvrakningar) then
  FreeAndNil(frmAvrakningar) ;


// if Assigned(frmRunAttester) then
//  FreeAndNil(frmRunAttester) ;

 if Assigned(frmGjordaAvrakningar) then
  FreeAndNil(frmGjordaAvrakningar) ;

 if Assigned(frmLoadArrivals) then
  FreeAndNil(frmLoadArrivals) ;

 if Assigned(fChkAvrLoads) then
  FreeAndNil(fChkAvrLoads) ;

// if Assigned(frmPayment) then
//  FreeAndNil(frmPayment);

 if Assigned(frmFreightLoad) then
 Begin
//  frmFreightLoad.Close ;
  FreeAndNil(frmFreightLoad) ;
 End ;

 if Assigned(frmFreightExternLoad) then
 Begin
//  frmFreightLoad.Close ;
  FreeAndNil(frmFreightExternLoad) ;
 End ;

 if Assigned(fTradingAnalyze) then
 Begin
  FreeAndNil(fTradingAnalyze) ;
 End ;

 if Assigned(fSamlingsfaktura) then
  FreeAndNil(fSamlingsfaktura) ;

 if Assigned(frmInvoiceList) then
 Begin
  frmInvoiceList.Close ;
  FreeAndNil(frmInvoiceList) ;
 End ;

 if Assigned(frmAvrop) then
 Begin
  frmAvrop.Close ;
  FreeAndNil(frmAvrop) ;
 End ;

{ if Assigned(frmProdRep) then
 Begin
  frmProdRep.Close ;
  FreeAndNil(frmProdRep) ;
 End ;

 if Assigned(frmInventoryReport) then
 Begin
  frmInventoryReport.Close ;
  FreeAndNil(frmInventoryReport) ;
 End ; }

// if Assigned(frmCreatePayment) then
//  FreeAndNil(frmCreatePayment) ;

{ if Assigned(frmSkapaRunAttest) then
  FreeAndNil(frmSkapaRunAttest) ; }

 if Assigned(frmSkapaAvrakning) then
  FreeAndNil(frmSkapaAvrakning) ;

 if Assigned(frmSokAvropFormular) then
  FreeAndNil(frmSokAvropFormular) ;

 if Assigned(frmLoadOrder) then
 Begin
  frmLoadOrder.Close ;
  FreeAndNil(frmLoadOrder) ;
 End ;

 if Assigned(frmPortArrivals) then
  FreeAndNil(frmPortArrivals) ;

 if Assigned(frmKP_List) then
  FreeAndNil(frmKP_List) ;

 if Assigned(frmShippingInstruction) then
  FreeAndNil(frmShippingInstruction) ;

//  if Assigned(dmInventory) then
//  dmInventory:= TdmInventory.Create(Nil);
end;


//Hämtas från användarens lokala "H"
procedure TfrmMain.GetIniFileMap(Sender: TObject) ;
begin
 with TIniFile.Create(dmsConnector.DriveLetter+'\VIS\KONFIG\VIS.INI') do
 try
 //tog bort vis.ini
  dmsConnector.InifilesMap:= ReadString ('Security', 'InifilesMap', 'H:\VIS\KONFIG\') ;
 Finally
  Free ;
 End ;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Try
 With dmsSystem do
 Begin
  Try
  if dmsConnector.FDConnection1.Connected then
  Delete_UserReservedPkgs ;
  Except
  End ;
 End ;
 Finally
  Try
  CleanUpForms(Sender) ;
  Except
  End ;
 End ;

 dm_UserProps.SetAppFormSize(frmMain.Name, frmMain.Height, frmMain.Width, frmMain.Top, frmMain.Left) ;

 Try
 ThisUser.Free ;
 Except
 End ;
 CanClose := True ;
end;

procedure TfrmMain.GetPropIniStores(Sender: TObject) ;
begin
 with TIniFile.Create(dmsConnector.DriveLetter+'\VIS\KONFIG\VIS.INI') do
 try
  cxPropertiesStore1.StorageName:= dmsConnector.DriveLetter+'\VIS\KONFIG\propstore.ini' ;
  cxPropertiesStore1.Active:= True ;
  cxPropertiesStore1.RestoreFrom ;
 Finally
  Free ;
 End ;
end;

procedure TfrmMain.acBytAnvandareExecute(Sender: TObject);
var OKHelpBottomDlg: TOKHelpBottomDlg;
begin
 if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\ulalun')
 or (Trim(dmsConnector.Get_AD_Name) = 'Lars') 
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\ulrlun')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\admin')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\marhug')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\krikuh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\lingus')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\annjon')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\kritom')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\johlis')
 or (Trim(dmsConnector.Get_AD_Name) = 'sa')
 then
 Begin
 if FormOpen then
 Begin
  ShowMessage('Stäng alla formulär först!');
  Exit ;
 End ;
 OKHelpBottomDlg:= TOKHelpBottomDlg.Create(nil);
 try
 if OKHelpBottomDlg.ShowModal = mrOK then
 Begin
//  dmsConnector.FDConnection1.de .CloseDataSets ;
  dmsConnector.FDConnection1.Connected:= False ;

  if Length(OKHelpBottomDlg.EFD_Name.Text) > 0 then
  ThisUser.DBUserName:= OKHelpBottomDlg.EFD_Name.Text ;

  if Length(OKHelpBottomDlg.eDatabas.Text) > 0 then
  ThisUser.Database:= OKHelpBottomDlg.eDatabas.Text ;

   if not ThisUser.Logon then
    Close
     else
      if dmsConnector.FDConnection1.Connected then
      Begin
       if ((dmsConnector.Get_AD_Name <> OKHelpBottomDlg.EFD_Name.Text) and (Length(OKHelpBottomDlg.EFD_Name.Text) > 0) )
       or ((OKHelpBottomDlg.eDatabas.Text <> dmsConnector.Org_DB_Name) and (Length(OKHelpBottomDlg.eDatabas.Text) > 0)) then
       Begin
        InitOnStartOfProgram ;
        Timer1.Enabled:= True ;
        dmsConnector.LoginChanged:= True ;
//        dxNavBar1.DefaultStyles.Background.BackColor:= clGreen ;

        Application.Title:= 'VIS' ;
        a:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.FDConnection1.Params.Values['Server']
        +'/'+dmsConnector.FDConnection1.Params.Values['Database']+' ' ;
       End
       else
       Begin
        InitOnStartOfProgram ;
        dmsConnector.LoginChanged:= False ;
        Timer1.Enabled:= False ;
//        dxNavBar1.DefaultStyles.Background.BackColor:= clWhite ;

        Application.Title:= 'VIS' ;
        frmMain.Caption:= Application.Title+'/'+dmsConnector.GetCompanyName (ThisUser.CompanyNo) +'/' + ThisUser.UserName +' ver '+GetVersion
        +' - '+dmsConnector.FDConnection1.Params.Values['Server']
        +'/'+dmsConnector.FDConnection1.Params.Values['Database']+' ' ;
       End ;

      End
      else
      Begin
       Close ;
      End ;
 End ;

 finally
  FreeAndNil(OKHelpBottomDlg) ;
 end;
 End
  else
   ShowMessage('No access');
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
var
  i: Integer;
begin
  Application.Title   := a;
  frmMain.Caption     := a;
  for i := 1 to (Length(a) - 1) do
    a[i] := Application.Title[i + 1];
  a[Length(a)] := Application.Title[1];
end;


procedure TfrmMain.acFTPSetupExecute(Sender: TObject);
var fFtpParam : TfFtpParam;
begin
 fFtpParam:= TfFtpParam.Create(nil) ;
 try
  fFtpParam.ShowModal ;
 finally
  FreeAndNil(fFtpParam) ;
 end;
end;

procedure TfrmMain.acReportNamesExecute(Sender: TObject);
var fKundspecifika: TfKundspecifika;
begin
 fKundspecifika:= TfKundspecifika.Create(nil);
 try
  fKundspecifika.ShowModal ;
 finally
  FreeAndNil(fKundspecifika) ;
 end;
end;

procedure TfrmMain.acReportStatisticsExecute(Sender: TObject);
var fReportStatics: TfReportStatics;
begin
 fReportStatics:= TfReportStatics.Create(nil);
 try
  fReportStatics.ShowModal ;
 finally
  FreeAndNil(fReportStatics) ;
 end;
end;

procedure TfrmMain.acAvropExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcAvropSec] then
  Begin
  if not Assigned(frmAvrop) then
   Begin
    frmAvrop :=  TfrmAvrop.Create(Nil) ;
    frmAvrop.CreateCo(ThisUser.CompanyNo);
    frmAvrop.Parent := panelBase;
    frmAvrop.Show;
    frmAvrop.eSearchLONr.SetFocus ;
   End
   else
   begin
    frmAvrop.Parent := panelBase;
    frmAvrop.Show;
    frmAvrop.eSearchLONr.SetFocus ;
   end ;
  End ;//if ThisUser.CanView[dcAvropSec] then
end;

procedure TfrmMain.acARExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmLoadArrivals) then
    Begin
     frmLoadArrivals := TfrmLoadArrivals.Create(Nil) ;
     frmLoadArrivals.CreateCo(  ThisUser.CompanyNo);
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;
    End
    else
    begin
     frmLoadArrivals.Parent := panelBase;
     frmLoadArrivals.Show;
     frmLoadArrivals.Edit1.Setfocus ;
    end ;
  End ;
end;

procedure TfrmMain.acEjFaktureratExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcFakturaSec] then
  Begin
  if not Assigned(fnotInvoicedReport) then
  Begin
     fnotInvoicedReport := TfnotInvoicedReport.Create(Nil) ;
     fnotInvoicedReport.CreateCo( Sender,ThisUser.CompanyNo);
     fnotInvoicedReport.Parent := panelBase;
     fnotInvoicedReport.Show;
     fnotInvoicedReport.deStartPeriod.Setfocus ;
    End
    else
    Begin
     fnotInvoicedReport.Parent := panelBase;
     fnotInvoicedReport.Show;
     fnotInvoicedReport.deStartPeriod.Setfocus ;
    End ;
  End ;

end;

procedure TfrmMain.acFragaAvropExecute(Sender: TObject);
begin
//  const_SOKAVROP :
  if ThisUser.CanView[dcAvropSec] then
  Begin
  if not Assigned(frmSokAvropFormular) then
  Begin
   frmSokAvropFormular := TfrmSokAvropFormular.Create(Nil) ;
   frmSokAvropFormular.CreateCo( Sender,ThisUser.CompanyNo);
   frmSokAvropFormular.Parent := panelBase;
   frmSokAvropFormular.Show;
   frmSokAvropFormular.lcSR.SetFocus ;
  End
   else
    begin
     frmSokAvropFormular.Parent := panelBase;
     frmSokAvropFormular.Show;
     frmSokAvropFormular.lcSR.SetFocus ;
  End ;
  End ;
end;

procedure TfrmMain.acKPListaExecute(Sender: TObject);
begin
// const_KP_LIST               :          //35
  if ThisUser.CanView[dcKP_ListaSec] then
  Begin
   if not Assigned(frmKP_List) then
    Begin
     frmKP_List := TfrmKP_List.Create(Nil) ;
     frmKP_List.CreateCo(  ThisUser.CompanyNo);
     frmKP_List.Parent := panelBase;
     frmKP_List.Show;
     frmKP_List.lcKund.Setfocus ;
    End
    else
    begin
     frmKP_List.Parent := panelBase;
     frmKP_List.Show;
     frmKP_List.lcKund.Setfocus ;
    end ;
   End ;
end;

procedure TfrmMain.acSkeppningsinstruktionExecute(Sender: TObject);
begin
//  const_Shipping_Instruction       :         //34
  if ThisUser.CanView[dcSkeppInstrSec] then
  Begin
   if not Assigned(frmShippingInstruction) then
    Begin
     frmShippingInstruction := TfrmShippingInstruction.Create(Nil) ;
     frmShippingInstruction.CreateCo(  ThisUser.CompanyNo);
     frmShippingInstruction.Parent := panelBase;
     frmShippingInstruction.Show;
     frmShippingInstruction.deStartPeriod.Setfocus ;
    End
    else
    begin
     frmShippingInstruction.Parent := panelBase;
     frmShippingInstruction.Show;
     frmShippingInstruction.deStartPeriod.Setfocus ;
    end ;
   End ;

end;

procedure TfrmMain.acSTEFExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcUtlastningSec] then
 Begin
 if not Assigned(fStef) then
  Begin
   fStef := TfStef.Create(Nil) ;
//   fStef.CreateCo( Sender,ThisUser.CompanyNo);
   fStef.Parent := panelBase;
   fStef.Show;
   fStef.dtStart.SetFocus ;
  End
  else
    begin
     fStef.Parent := panelBase;
     fStef.Show;
     fStef.dtStart.SetFocus ;
    end ;
 End;
end;

procedure TfrmMain.acUtlastningVerkExecute(Sender: TObject);
begin
// const_ShipMill_Delivery           :  //if ThisUser.CanView[dcOrderSection] then
 if ThisUser.CanView[dcUtlastningSec] then
 Begin
 if not Assigned(frmLoadOrder) then
  Begin
   frmLoadOrder := TfrmLoadOrder.Create(Nil) ;
   frmLoadOrder.CreateCo( Sender,ThisUser.CompanyNo);
   frmLoadOrder.Parent := panelBase;
   frmLoadOrder.Show;
   frmLoadOrder.teSearchLONo.SetFocus ;
  End
  else
    begin
     frmLoadOrder.Parent := panelBase;
     frmLoadOrder.Show;
     frmLoadOrder.teSearchLONo.SetFocus ;
    end ;

 With dmcOrder do
 Begin
  if (mtPropsNewItemRow.AsInteger > 0) and (mtPropsNewItemRow.IsNull = False) then
  frmLoadOrder.PanelLoadDetail.Width := mtPropsNewItemRow.AsInteger
  else
  frmLoadOrder.PanelLoadDetail.Width := 1001 ;

  if frmLoadOrder.PanelLoadDetail.Width > frmLoadOrder.pcLoadOrder.Width then
   frmLoadOrder.PanelLoadDetail.Width  := frmLoadOrder.pcLoadOrder.Width - 30 ;
 End ;
 End ;

end;

procedure TfrmMain.acLevereradeLasterExecute(Sender: TObject);
begin
//  const_VerkLaster :
  if ThisUser.CanView[dcUtlastningSec] then
  Begin
  if  not  Assigned(fLastLista) then
  Begin
     fLastLista := TfLastLista.Create(Nil) ;
     fLastLista.CreateCo ;
     fLastLista.Parent := panelBase;
     fLastLista.Show;
    End
    else
    begin
     fLastLista.Parent := panelBase;
     fLastLista.Show;
  End ;
  End ;

end;

procedure TfrmMain.acFakturalistaExecute(Sender: TObject);
begin
//  const_Invoice_VWInvoice           :
  if ThisUser.CanView[dcFakturaSec] then
  Begin
  if not Assigned(frmInvoiceList) then
  Begin
    frmInvoiceList        := TfrmInvoiceList.Create(Nil) ;
    frmInvoiceList.Parent := panelBase ;
    frmInvoiceList.Show ;
    frmInvoiceList.nfSearchLO.SetFocus ;
  End
  else
   begin
    frmInvoiceList.Parent := panelBase ;
    frmInvoiceList.Show ;
    frmInvoiceList.nfSearchLO.SetFocus ;
   end ;
  End ;

end;

procedure TfrmMain.acSamlingsFakturaListaExecute(Sender: TObject);
begin
//  const_samlingsfaktura :
  if ThisUser.CanView[dcFakturaSec] then
  Begin
  if not Assigned(fSamlingsfaktura) then
  Begin
   fSamlingsfaktura := TfSamlingsfaktura.Create(Nil) ;
   fSamlingsfaktura.Parent := panelBase;
   fSamlingsfaktura.Show;
   fSamlingsfaktura.grdInvoiceGroup.SetFocus ;
  End
   else
    begin
     fSamlingsfaktura.Parent := panelBase;
     fSamlingsfaktura.Show;
     fSamlingsfaktura.grdInvoiceGroup.SetFocus ;
    End ;
  End ;
end;

procedure TfrmMain.acRegistreraFraktAvrakningExecute(Sender: TObject);
begin
//  const_ShipMill_Freight_Avrakningar :
 if (ThisUser.CanView[dcFrakt_AvrakningSec]) or (ThisUser.UserID = 37) then
  Begin
   if not Assigned(frmAvrakningar) then
    Begin
     frmAvrakningar := TfrmAvrakningar.Create(Nil) ;
     frmAvrakningar.Align:= alClient ;
     frmAvrakningar.BorderStyle:= bsNone ;
     frmAvrakningar.ButtonPanel.Visible:= False ;
     frmAvrakningar.CreateCo(  ThisUser.CompanyNo);

     frmAvrakningar.Parent := panelBase;
     frmAvrakningar.Show;
     frmAvrakningar.grdFraktAvr.SetFocus ;
    End
    else
    begin
     frmAvrakningar.Parent := panelBase;
     frmAvrakningar.Show;
     frmAvrakningar.grdFraktAvr.SetFocus ;
    end ;
  End ;

end;

procedure TfrmMain.acRegistreradeFraktAvrakningarExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcFrakt_AvrakningSec] then
 Begin
  if not Assigned(frmFreightLoad) then
  Begin
   frmFreightLoad := TfrmFreightLoad.Create(Application) ;
   frmFreightLoad.CreateCo ;
//   frmFreightLoad.Parent := panelBase;
   frmFreightLoad.Show;
   frmFreightLoad.lcVerk.Setfocus ;
  End
  else
    begin
//     frmFreightLoad.Parent := panelBase;
     frmFreightLoad.Show;
     frmFreightLoad.lcVerk.Setfocus ;
    end ;
 End ;

end;

procedure TfrmMain.acRegistreraAvrakningExecute(Sender: TObject);
begin
//  const_SkapaAvrakning       :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmSkapaAvrakning) then
   Begin
    frmSkapaAvrakning:= TfrmSkapaAvrakning.Create(Nil);
    frmSkapaAvrakning.CreateCo(ThisUser.CompanyNo, 0 {Avrakning});
    frmSkapaAvrakning.Parent:= panelBase ;
    frmSkapaAvrakning.Show ;
    frmSkapaAvrakning.lcVerk.Setfocus ;
   End
   else
   begin
    frmSkapaAvrakning.Parent := panelBase;
    frmSkapaAvrakning.Show;
    frmSkapaAvrakning.lcVerk.Setfocus ;
   end ;
  End ;

end;

procedure TfrmMain.acRegistreradeAvrakningarExecute(Sender: TObject);
begin
//  const_GjordaAvrakningar :
  if ThisUser.CanView[dcAvrakningSec] then
  Begin
  if not Assigned(frmGjordaAvrakningar) then
   Begin
    frmGjordaAvrakningar:= TfrmGjordaAvrakningar.Create(Nil);
    frmGjordaAvrakningar.CreateCo( ThisUser.CompanyNo, 0 {Avrakning});
    frmGjordaAvrakningar.Parent:= panelBase ;
    frmGjordaAvrakningar.Show ;
    frmGjordaAvrakningar.lcVerk.Setfocus ;
   End
   else
   begin
    frmGjordaAvrakningar.Parent := panelBase;
    frmGjordaAvrakningar.Show;
    frmGjordaAvrakningar.lcVerk.Setfocus ;
   end ;
  End ;
end;

procedure TfrmMain.acAnkomnaHamnExecute(Sender: TObject);
begin
// const_AnkomnaHamn :
 if ThisUser.CanView[dcARSec] then
  Begin
   if not Assigned(frmPortArrivals) then
    Begin
     frmPortArrivals := TfrmPortArrivals.Create(Nil) ;
     frmPortArrivals.CreateCo(  ThisUser.CompanyNo);
     frmPortArrivals.Parent := panelBase;
     frmPortArrivals.Show;
    End
    else
    begin
     frmPortArrivals.Parent := panelBase;
     frmPortArrivals.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then

end;

procedure TfrmMain.acPaketinfoExecute(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 if ThisUser.CanView[dcAsk_packagesSec] then
 Begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= 0 ;
  frmPkgInfo.SupplierCode:= '';
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
 End ;
end;

procedure TfrmMain.acKontrolleraAvrakningslasterExecute(Sender: TObject);
begin
//  const_CheckLoadsAreReadyForAvrakning : //57
//  if ThisUser.CanView[dcARSec] then
  if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\micmor') or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
  or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\admin')
  or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
  or (Trim(dmsConnector.Get_AD_Name) = 'sa') then
  Begin
   if not Assigned(fChkAvrLoads) then
    Begin
     fChkAvrLoads := TfChkAvrLoads.Create(Nil) ;
     fChkAvrLoads.CreateCo(  ThisUser.CompanyNo);
     fChkAvrLoads.Parent := panelBase;
     fChkAvrLoads.Show;
    End
    else
    begin
     fChkAvrLoads.Parent := panelBase;
     fChkAvrLoads.Show;
    end ;
  End ;
end;

procedure TfrmMain.acKontoLogikExecute(Sender: TObject);
//var  fKontoLogik: TfKontoLogik;
begin
  if ThisUser.CanView[dcFakturaSec] then
  Begin
   if not Assigned(fKontoLogik) then
    Begin
     fKontoLogik := TfKontoLogik.Create(Nil) ;
     fKontoLogik.Align        := alClient ;
     fKontoLogik.BorderStyle  := bsNone ;
//     fKontoLogik.CreateCo(  ThisUser.CompanyNo);
     fKontoLogik.Parent := panelBase;
     fKontoLogik.Show;
    End
    else
    begin
     fKontoLogik.Parent := panelBase;
     fKontoLogik.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then

{ fKontoLogik:= TfKontoLogik.Create(nil);
 try
  fKontoLogik.ShowModal ;
 finally
  FreeAndNil(fKontoLogik) ;
 end;}
end;

procedure TfrmMain.acOrderstockExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcFakturaSec] then
  Begin
   if not Assigned(fOrderStocken) then
    Begin
     fOrderStocken := TfOrderStocken.Create(Nil) ;
     fOrderStocken.Align        := alClient ;
     fOrderStocken.BorderStyle  := bsNone ;
//     fOrderStocken.CreateCo(  ThisUser.CompanyNo);
     fOrderStocken.Parent := panelBase;
     fOrderStocken.Show;
    End
    else
    begin
     fOrderStocken.Parent := panelBase;
     fOrderStocken.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then
end;

procedure TfrmMain.acIntraStatExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcFakturaSec] then
  Begin
   if not Assigned(fIntrastat) then
    Begin
     fIntrastat := TfIntrastat.Create(Nil) ;
     fIntrastat.Align        := alClient ;
     fIntrastat.BorderStyle  := bsNone ;
//     fIntrastat.CreateCo(  ThisUser.CompanyNo);
     fIntrastat.Parent := panelBase;
     fIntrastat.Show;
    End
    else
    begin
     fIntrastat.Parent := panelBase;
     fIntrastat.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then
end;

procedure TfrmMain.acTradingAnalyzeExecute(Sender: TObject);
begin
  if ThisUser.CanView[dcFakturaSec] then
  Begin
   if not Assigned(fTradingAnalyze) then
    Begin
     fTradingAnalyze := TfTradingAnalyze.Create(Nil) ;
     fTradingAnalyze.Align        := alClient ;
     fTradingAnalyze.BorderStyle  := bsNone ;
//     fTradingAnalyze.CreateCo(  ThisUser.CompanyNo);
     fTradingAnalyze.Parent := panelBase;
     fTradingAnalyze.Show;
    End
    else
    begin
     fTradingAnalyze.Parent := panelBase;
     fTradingAnalyze.Show;
    end ;
  End ;// if ThisUser.CanView[dcARSec] then
end;

procedure TfrmMain.acAttestCommisionAndExtFreightExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
  if not Assigned(frmFreightExternLoad) then
  Begin
   frmFreightExternLoad := TfrmFreightExternLoad.Create(Application) ;
   frmFreightExternLoad.CreateCo ;

   frmFreightExternLoad.Align         := alClient ;
   frmFreightExternLoad.BorderStyle   := bsNone ;
   frmFreightExternLoad.Parent        := panelBase;

   frmFreightExternLoad.Show;
   frmFreightExternLoad.icAttesteraMot.SetFocus ;
  End
  else
    begin
//     frmFreightExternLoad.Parent := panelBase;
     frmFreightExternLoad.Show;
     frmFreightExternLoad.lcAgent.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acPayControlExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
  if not Assigned(fPayControl) then
  Begin
   fPayControl := TfPayControl.Create(Application) ;
//   fPayControl.CreateCo ;

   fPayControl.Align         := alClient ;
   fPayControl.BorderStyle   := bsNone ;
   fPayControl.Parent        := panelBase;

   fPayControl.Show;
//   fPayControl.lcAgent.SetFocus ;
  End
  else
    begin
//     fPayControl.Parent := panelBase;
     fPayControl.Show;
//     fPayControl.lcAgent.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acCreditInsuranceExecute(Sender: TObject);
begin
 if ThisUser.CanView[dcFakturaSec] then
 Begin
  if not Assigned(frmCredit) then
  Begin
   frmCredit := TfrmCredit.Create(Application) ;
//   frmCredit.CreateCo ;

//   frmCredit.Align         := alClient ;
//   frmCredit.BorderStyle   := bsNone ;
   frmCredit.Parent        := panelBase;

   frmCredit.Show;
//   frmCredit.lcAgent.SetFocus ;
  End
  else
    begin
     frmCredit.Parent := panelBase;
     frmCredit.Show;
//     frmCredit.lcAgent.SetFocus ;
    end ;
 End ;
end;

procedure TfrmMain.acCreditAnalysisExecute(Sender: TObject);
begin
// if ThisUser.CanView[dcFrakt_AvrakningSec] then
 if ThisUser.CanView[dcFakturaSec] then
 Begin
  if not Assigned(frmCreditLimitAnalys) then
  Begin
   frmCreditLimitAnalys := TfrmCreditLimitAnalys.Create(Application) ;
//   frmCreditLimitAnalys.CreateCo ;

//   frmCreditLimitAnalys.Align         := alClient ;
//   frmCreditLimitAnalys.BorderStyle   := bsNone ;
   frmCreditLimitAnalys.Parent        := panelBase;

   frmCreditLimitAnalys.Show;
//   frmCreditLimitAnalys.lcAgent.SetFocus ;
  End
  else
    begin
     frmCreditLimitAnalys.Parent := panelBase;
     frmCreditLimitAnalys.Show;
//     frmCreditLimitAnalys.lcAgent.SetFocus ;
    end ;
 End ;
end;

function  TfrmMain.GetLastNrToUnLock : Integer ;
var fEntryField : TfEntryField;
begin
 fEntryField:= TfEntryField.Create(Nil);
 Try
  fEntryField.Caption         := 'Ange Lastnr att låsa upp' ;
  fEntryField.Label1.Caption  := 'LastNr:' ;
  if fEntryField.ShowModal = mrOK then
  Begin
   if (StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0) > 0) then
    Result  := StrToIntDef(Trim(fEntryField.eNoofpkgs.Text),0)
    else
    Result  := -1 ;
  End
  else
  Result  := -1 ;
 Finally
  FreeAndNil(fEntryField) ;
 End ;
end;

procedure TfrmMain.acLockedLoadsExecute(Sender: TObject);
Var //LoadNo        : Integer ;
    frmLockLoads  : TfrmLockLoads ;
begin

 if (Trim(dmsConnector.Get_AD_Name) = 'VIDA\larmak')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\marhug')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\krikuh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\jenjoh')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\annjon')
 or (Trim(dmsConnector.Get_AD_Name) = 'sa')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\kritom')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\nikahm')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\petfre')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\johlis')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\stefri')
 or (Trim(dmsConnector.Get_AD_Name) = 'VIDA\stehag')
 or (Trim(dmsConnector.Get_AD_Name) = 'Lars')  then
 Begin
  frmLockLoads  := TfrmLockLoads.Create(nil) ;
  Try
  frmLockLoads.ShowModal ;
  Finally
   FreeAndNil(frmLockLoads) ;
  End ;
//  LoadNo  := GetLastNrToUnLock ;
//  if LoadNo > 0 then
//   dmsSystem.DelLoad_Res(LoadNo) ;
 End ;
end;

end.
