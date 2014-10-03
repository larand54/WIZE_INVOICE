unit UnitProdRep ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, dxEdLib, StdCtrls, dxCntner,
  dxEditor, dxExEdtr, ImgList, OleServer, OleCtrls,
  Menus, dxTL, dxTLClms, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, SqlTimSt, CRAXDDRT_TLB, DB, kbmMemTable, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  DateUtils, ActnList, CrystalActiveXReportViewerLib11_TLB, FMTBcd,
  DBClient, Provider, SqlExpr, cxLookAndFeelPainters, cxLabel, cxButtons,
  cxClasses ;

type
  TfrmProdRep = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    PanelFilterMain: TPanel;
    lbRefresh: TdxBarLargeButton;
    ImageList1: TImageList;
    Application1: TApplication;
    pmSpecies: TPopupMenu;
    AddSpecies: TMenuItem;
    pmGrade: TPopupMenu;
    AddGrade: TMenuItem;
    RemoveGrade: TMenuItem;
    ClearGrade: TMenuItem;
    pmActThick: TPopupMenu;
    AddThick: TMenuItem;
    RemoveThick: TMenuItem;
    ClearThicks: TMenuItem;
    pmActWidth: TPopupMenu;
    AddWidth: TMenuItem;
    RemoveWidth: TMenuItem;
    ClearWidths: TMenuItem;
    lbPkgNoReport: TdxBarLargeButton;
    lbPcsPerLengthReport: TdxBarLargeButton;
    pmActLength: TPopupMenu;
    AddLength: TMenuItem;
    RemoveLength: TMenuItem;
    ClearLengths: TMenuItem;
    pmSurfacing: TPopupMenu;
    AddSurfacing: TMenuItem;
    RemoveSurfacing: TMenuItem;
    ClearSurfacing: TMenuItem;
    RemoveSpecies: TMenuItem;
    ClearSpecies: TMenuItem;
    pmMainGrade: TPopupMenu;
    Add1: TMenuItem;
    Remove1: TMenuItem;
    Clear1: TMenuItem;
    PanelProdFilter: TPanel;
    grdSpecies: TdxDBGrid;
    grdSpeciesSpeciesName: TdxDBGridLookupColumn;
    grdSpeciesSpeciesNo: TdxDBGridMaskColumn;
    grdGrade: TdxDBGrid;
    grdGradeGradeName: TdxDBGridLookupColumn;
    grdGradeGradeNo: TdxDBGridMaskColumn;
    grdSurfacing: TdxDBGrid;
    grdSurfacingSurfacingName: TdxDBGridLookupColumn;
    grdSurfacingSurfacingNo: TdxDBGridMaskColumn;
    grdActThick: TdxDBGrid;
    grdActThickThickness: TdxDBGridMaskColumn;
    grdActWidth: TdxDBGrid;
    grdActWidthWidth: TdxDBGridMaskColumn;
    grdActLength: TdxDBGrid;
    grdActLengthActLengthMM: TdxDBGridMaskColumn;
    grdMainGrade: TdxDBGrid;
    grdMainGradeMainGradeName: TdxDBGridLookupColumn;
    grdMainGradeMainGradeNo: TdxDBGridMaskColumn;
    Panel3: TPanel;
    Label9: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    peSupplier: TdxPickEdit;
    peRegPoint: TdxPickEdit;
    cbShowSingleLengthPkgs: TCheckBox;
    peOperation: TdxPickEdit;
    Splitter1: TSplitter;
    lbHideFilterPanel: TdxBarLargeButton;
    mtGrade: TkbmMemTable;
    mtGradeGradeNo: TIntegerField;
    mtGradeGradeName: TStringField;
    ds_Grade: TDataSource;
    mtSurfacing: TkbmMemTable;
    mtSurfacingSurfacingNo: TIntegerField;
    mtSurfacingSurfacingName: TStringField;
    ds_Surfacing: TDataSource;
    mtActThick: TkbmMemTable;
    mtActThickThickness: TFloatField;
    ds_AThickMM: TDataSource;
    mtAWidthMM: TkbmMemTable;
    mtAWidthMMWidth: TFloatField;
    ds_AWidthMM: TDataSource;
    mtActLengthMM: TkbmMemTable;
    mtActLengthMMActLengthMM: TFloatField;
    ds_ActLength: TDataSource;
    mtSpecies: TkbmMemTable;
    mtSpeciesSpeciesNo: TIntegerField;
    mtSpeciesSpeciesName: TStringField;
    ds_Species: TDataSource;
    StartDate: TcxDateEdit;
    EndDate: TcxDateEdit;
    ccAvgLengthRegPkt: TCheckBox;
    pmShortcuts: TPopupMenu;
    ActionList1: TActionList;
    acPkgNo: TAction;
    acPcsperLength: TAction;
    acHideFilter: TAction;
    acExit: TAction;
    PktNrrapport1: TMenuItem;
    Antallngdrapport1: TMenuItem;
    Stng1: TMenuItem;
    CRViewer91: TCrystalActiveXReportViewer;
    acUtfallKorning: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    UtfallkrningF41: TMenuItem;
    sq_Props: TSQLQuery;
    sq_PropsUserID: TIntegerField;
    sq_PropsForm: TStringField;
    sq_PropsVerkNo: TIntegerField;
    sq_PropsOwnerNo: TIntegerField;
    sq_PropsPIPNo: TIntegerField;
    sq_PropsLIPNo: TIntegerField;
    sq_PropsInputOption: TIntegerField;
    sq_PropsRegPointNo: TIntegerField;
    sq_PropsRegDate: TSQLTimeStampField;
    sq_PropsCopyPcs: TIntegerField;
    sq_PropsRunNo: TIntegerField;
    sq_PropsProducerNo: TIntegerField;
    sq_PropsAutoColWidth: TIntegerField;
    sq_PropsSupplierCode: TStringField;
    sq_PropsLengthOption: TIntegerField;
    sq_PropsLengthGroupNo: TIntegerField;
    sq_PropsNewItemRow: TIntegerField;
    sq_PropsBarCodeNo: TIntegerField;
    sq_PropsGradeStampNo: TIntegerField;
    sq_PropsSalesRegionNo: TIntegerField;
    sq_PropsVolumeUnitNo: TIntegerField;
    sq_PropsLengthFormatNo: TIntegerField;
    sq_PropsLengthVolUnitNo: TIntegerField;
    sq_PropsGroupByBox: TIntegerField;
    sq_PropsGroupSummary: TIntegerField;
    sq_PropsMarketRegionNo: TIntegerField;
    sq_PropsOrderTypeNo: TIntegerField;
    sq_PropsStatus: TIntegerField;
    sq_PropsFilterOrderDate: TIntegerField;
    sq_PropsStartPeriod: TSQLTimeStampField;
    sq_PropsEndPeriod: TSQLTimeStampField;
    sq_PropsClientNo: TIntegerField;
    sq_PropsSalesPersonNo: TIntegerField;
    sq_PropsVerkSupplierNo: TIntegerField;
    sq_PropsVerkKundNo: TIntegerField;
    sq_PropsLOObjectType: TIntegerField;
    sq_PropsAgentNo: TIntegerField;
    sq_PropsLoadingLocationNo: TIntegerField;
    sq_PropsShipperNo: TIntegerField;
    sq_PropsBookingTypeNo: TIntegerField;
    sq_PropsCustomerNo: TIntegerField;
    sq_PropsShowProduct: TIntegerField;
    dsp_Props: TDataSetProvider;
    cds_Props: TClientDataSet;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsUserID: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    ds_Props: TDataSource;
    acUtfallRunNo: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    cxButton1: TcxButton;
    eRunNo: TcxTextEdit;
    cxLabel1: TcxLabel;
    acSelectRunNo: TAction;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddSpeciesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AddGradeClick(Sender: TObject);
    procedure AddThickClick(Sender: TObject);
    procedure AddWidthClick(Sender: TObject);
    procedure RemoveWidthClick(Sender: TObject);
    procedure ClearWidthsClick(Sender: TObject);
    procedure RemoveThickClick(Sender: TObject);
    procedure ClearThicksClick(Sender: TObject);
    procedure AddLengthClick(Sender: TObject);
    procedure RemoveLengthClick(Sender: TObject);
    procedure ClearLengthsClick(Sender: TObject);
    procedure RemoveSpeciesClick(Sender: TObject);
    procedure ClearSpeciesClick(Sender: TObject);
    procedure ClearSurfacingClick(Sender: TObject);
    procedure AddSurfacingClick(Sender: TObject);
    procedure RemoveSurfacingClick(Sender: TObject);
    procedure RemoveGradeClick(Sender: TObject);
    procedure ClearGradeClick(Sender: TObject);
    procedure ds_ActLengthDataChange(Sender: TObject; Field: TField);
    procedure StartDateChange(Sender: TObject);
    procedure endDateChange(Sender: TObject);
    procedure peOperationChange(Sender: TObject);
    procedure peRegPointChange(Sender: TObject);
    procedure peSupplierChange(Sender: TObject);
    procedure grdSpeciesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMainGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSurfacingKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acPkgNoExecute(Sender: TObject);
    procedure acPcsperLengthExecute(Sender: TObject);
    procedure acHideFilterExecute(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acUtfallKorningExecute(Sender: TObject);
    procedure acUtfallRunNoExecute(Sender: TObject);
    procedure acSelectRunNoExecute(Sender: TObject);
  private
    { Private declarations }
    report : IReport ;
    Vol_By_PkgNo,
    Vol_By_Length_Gen : Boolean ;
    FilterChanged : Boolean ;

    Procedure MakeSQL_PROD_By_Length (Sender : TObject) ;
    procedure Make_PROD_BY_PKG_SQL (Sender: TObject) ;
    procedure Make_PROD_BY_RUN_SQL(Sender: TObject) ;
    function  InitiateReport(const ReportName: String) : Boolean ;
    procedure CleanDimensionFilter (Sender: TObject) ;
    procedure SaveFilterSettings (Sender: TObject) ;
    procedure LoadUserProps (const Form : String) ;
    procedure SaveUserProps (const Form : String) ;
  public
    { Public declarations }
    Filterstring : String ;
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  frmProdRep: TfrmProdRep;

implementation

uses dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , dmsVidaSystem, uSelectRunNos;

{$R *.dfm}

function ReplaceCommas(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

procedure TfrmProdRep.LoadUserProps (const Form : String) ;
Var x : Integer ;
Begin
 sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  peRegPoint.ItemIndex          := cds_PropsRegPointNo.AsInteger ;
  peOperation.ItemIndex         := cds_PropsNewItemRow.AsInteger ;
  StartDate.Date                := SQLTimeStampToDateTime(cds_PropsStartPeriod.AsSQLTimeStamp) ;
  endDate.Date                  := SQLTimeStampToDateTime(cds_PropsEndPeriod.AsSQLTimeStamp) ;
 End ;
 cds_Props.Active:= False ;
End ;

procedure TfrmProdRep.SaveUserProps (const Form : String) ;
Var x : Integer ;
Begin
 sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if cds_Props.Eof then
 Begin
  cds_Props.Insert ;
  cds_PropsForm.AsString    := Form ;
  cds_PropsUserID.AsInteger := ThisUser.UserID ;
 End
 else
  cds_Props.Edit ;
  cds_PropsRegPointNo.AsInteger         := peRegPoint.ItemIndex ;
  cds_PropsNewItemRow.AsInteger         := peOperation.ItemIndex ;
  cds_PropsStartPeriod.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(StartDate.Date) ;
  cds_PropsEndPeriod.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(EndDate.Date) ;
  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
   cds_Props.ApplyUpdates(0) ;
 cds_Props.Active:= False ;
End ;

Procedure TfrmProdRep.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor:TCursor;
  x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }


 peOperation.ItemIndex:= 0 ;
 dmsContact.LoadMatPunktsAgare(peSupplier.Items);
 peSupplier.Items.Insert(0,'ALL');
 peSupplier.ItemIndex:= 0 ;

  For x := 0 to peSupplier.Items.Count - 1 do
   if ThisUser.CompanyNo = integer(peSupplier.Items.Objects[x]) then
    peSupplier.ItemIndex:= x ;

//  if dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego then
  if (dmsContact.ClientInterVerk(ThisUser.CompanyNo) ) or (ThisUser.CompanyNo = 741) then
   peSupplier.Enabled := True
    else
     peSupplier.Enabled := False ;


 if (peSupplier.Items.Count > 0) AND (peSupplier.Text <> 'ALL') then
 Begin
  peRegPoint.Items.Clear ;
  dmcSystem.LoadAllRegPoints(peRegPoint.Items) ;
   if peRegPoint.Items.Count > 0 then
    peRegPoint.ItemIndex:= 0 ;
  peRegPoint.Items.Insert(0,'ALL') ;
  peRegPoint.ItemIndex:= 0 ;
 End
 else
 Begin
  peRegPoint.Items.Clear ;
  peRegPoint.Items.Insert(0,'ALL') ;
  peRegPoint.ItemIndex:= 0 ;
 End ;


 LoadUserProps(Self.Name) ;

{ with TIniFile.Create(dmsConnector.InifilesMap+'VisProdRep'+'.'+ThisUser.UserName) do
 try
 // peSupplier.ItemIndex:= ReadInteger ('Production', 'SupplierNo', 0);
  peRegPoint.ItemIndex:= ReadInteger ('Production', 'RegPoint', 0);
  peOperation.ItemIndex:= ReadInteger ('Production', 'Operation', 0);
  StartDate.Text:= ReadString ('Production', 'StartDate', '');
  endDate.Text:= ReadString ('Production', 'endDate', '');
 Finally
  Free ;
 End ;}


 Try

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

function TfrmProdRep.InitiateReport(const ReportName: String) : Boolean ;
  var HostName, Database, UserName, Password, spath: String ;
      Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 dmsSystem.GetLogonParams (HostName, Database, UserName, Password, spath) ;

 Result:= True ;
 if not(FileExists(sPath+ReportName)) then
 Begin
  ShowMessage('Saknar crystal reports fil.  Sökväg och filnamn : '+sPath+ReportName) ;
  Result:= False ;
  Exit ;
 End ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report := Application1.OpenReport(sPath+ReportName, crOpenReportByTempCopy) ;
 report.Database.Tables.Item[1].SetLogOnInfo(HostName, Database, UserName, Password);
 Caption:= sPath+ReportName ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
End;

procedure TfrmProdRep.MakeSQL_PROD_By_Length (Sender: TObject);
Var //NomThick, NomWidth : Double ;
    Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.PROD_By_Length') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Prod_By_LengthFilter') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Prod_By_LengthFilter (Userid, Filter)') ;
  sq_Temp_Inventory.SQL.Add('Values ('+IntToStr(Thisuser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(FilterString)+')') ;
//  if thisuser.UserID = 8 then    sq_Temp_Inventory.SQL.SaveToFile('prod_By_LengthFilter.txt');
  sq_Temp_Inventory.ExecSQL(True) ;
  sq_Temp_Inventory.SQL.Clear ;  


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.PROD_By_Length') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('ProductLengthNo,') ;

  sq_Temp_Inventory.SQL.Add('ACT_L,') ;
  sq_Temp_Inventory.SQL.Add('NOM_L,') ;
  sq_Temp_Inventory.SQL.Add('FEET,') ;
  sq_Temp_Inventory.SQL.Add('INCH,') ;
  sq_Temp_Inventory.SQL.Add('PCS,') ;
  sq_Temp_Inventory.SQL.Add('AM3,') ;
  sq_Temp_Inventory.SQL.Add('NM3,') ;

  sq_Temp_Inventory.SQL.Add('LPM,') ;
  sq_Temp_Inventory.SQL.Add('MFBM,') ;
  sq_Temp_Inventory.SQL.Add('KVM,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateStart,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateEnd,') ;
  sq_Temp_Inventory.SQL.Add('Operation,') ;
  sq_Temp_Inventory.SQL.Add('ClientName,') ;
  sq_Temp_Inventory.SQL.Add('ProductionUnitName)') ;

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;

  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.NominalLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.NominalLengthFEET,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthINCH,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.NoOfPieces),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Actual) ,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Nominal),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.LinealMeterActualLength),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.MFBMNominal),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.SQMofActualWidth),') ;

  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add('pp.Operation,');
  sq_Temp_Inventory.SQL.Add('Verk.ClientName,') ;
  sq_Temp_Inventory.SQL.Add('PU.RegPointName AS ProductionUnitName') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Package_Production PP') ;
  sq_Temp_Inventory.SQL.Add('Inner Join PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;  
  sq_Temp_Inventory.SQL.Add('Inner Join Client Verk ON Verk.ClientNo = PP.SupplierNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.ProductionUnitNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pp.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('  AND G.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


//  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= :StartDate') ;
//  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= :EndDate') ;

  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))) ;



  if peRegPoint.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PU.RegPointNo = ' + IntToStr(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.SupplierNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;


  x:= 1 ;
  self.mtSpecies.First ;
  if self.mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(self.mtSpeciesSpeciesNo.AsInteger)) ;
    self.mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtSurfacing.First ;
  if self.mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(self.mtSurfacingSurfacingNo.AsInteger)) ;
    self.mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtGrade.First ;
  if self.mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(self.mtGradeGradeNo.AsInteger)) ;
    self.mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  self.mtActThick.First ;
  if self.mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(Self.mtActThickThickness.AsFloat))) ;
    self.mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  self.mtAWidthMM.First ;
  if self.mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(self.mtAWidthMMWidth.AsFloat))) ;
    self.mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtActLengthMM.First ;
  if self.mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PDL.ActualLengthMM = '+ReplaceCommas(FloatToStr(self.mtActLengthMMActLengthMM.AsFloat))) ;
    self.mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  if (peOperation.ItemIndex > 0) and (peOperation.ItemIndex <> 2) then
   sq_Temp_Inventory.SQL.Add('and Operation = '+IntToStr(peOperation.ItemIndex-1)) ;


  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;
    



    sq_Temp_Inventory.SQL.Add('group by pdl.ActualLengthMM, PDL.ProductLengthNo, pdl.NominalLengthMM, pdl.NominalLengthFEET,  pdl.ActualLengthINCH, ') ;
    sq_Temp_Inventory.SQL.Add('pp.Operation, Verk.ClientName, PU.RegPointName') ;

    sq_Temp_Inventory.SQL.Add('Order by pdl.ActualLengthMM') ;

//  if thisuser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_PROD_By_Length.txt') ;
//  sq_Temp_Inventory.ParamByName('StartDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(StartDate.Date) ;
//  sq_Temp_Inventory.ParamByName('EndDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(EndDate.Date) ;

  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmProdRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfrmProdRep.AddSpeciesClick(Sender: TObject);
begin
  mtSpecies.Insert ;
end;

procedure TfrmProdRep.FormCreate(Sender: TObject);
begin
 if not Assigned(dmInventory) then
  dmInventory:= TdmInventory.Create(Nil);
 Vol_By_Length_Gen:= False ;
 Vol_By_PkgNo:= False ;
 StartDate.Date:= Date - 1 ;
 EndDate.Date:= Date ;


  mtSpecies.Active:= True ;
  mtGrade.Active:= True ;

  mtSurfacing.Active:= True ;
  mtActThick.Active:= True ;
  mtAWidthMM.Active:= True ;
  mtActLengthMM.Active:= True ;
  FilterChanged:= False ;

end;

procedure TfrmProdRep.FormDestroy(Sender: TObject);
begin
 report:= NIL ;
 Application1:= NIL ;
 frmProdRep:= NIL ;
end;

procedure TfrmProdRep.AddGradeClick(Sender: TObject);
begin
  mtGrade.Insert ;
end;

procedure TfrmProdRep.AddThickClick(Sender: TObject);
begin
   mtActThick.Insert ;
end;

procedure TfrmProdRep.AddWidthClick(Sender: TObject);
begin
   mtAWidthMM.Insert ;
end;

procedure TfrmProdRep.RemoveWidthClick(Sender: TObject);
begin
   mtAWidthMM.Delete ;
end;

procedure TfrmProdRep.ClearWidthsClick(Sender: TObject);
begin
   mtAWidthMM.Active := False ;
   mtAWidthMM.Active := True ;
end;

procedure TfrmProdRep.RemoveThickClick(Sender: TObject);
begin
   mtActThick.Delete ;
end;

procedure TfrmProdRep.ClearThicksClick(Sender: TObject);
begin
   mtActThick.Active:= False ;
   mtActThick.Active:= True ;
end;

procedure TfrmProdRep.SaveFilterSettings (Sender: TObject) ;
begin
  if mtSpecies.State in [dsInsert, dsEdit] then mtSpecies.Post ;
  if mtSurfacing.State in [dsInsert, dsEdit] then mtSurfacing.Post ;
  if mtGrade.State in [dsInsert, dsEdit] then mtGrade.Post ;
  if mtActThick.State in [dsInsert, dsEdit] then mtActThick.Post ;
  if mtAWidthMM.State in [dsInsert, dsEdit] then mtAWidthMM.Post ;
  if mtActLengthMM.State in [dsInsert, dsEdit] then mtActLengthMM.Post ;

//  StartDate.Date:= RecodeHour(StartDate.Date,0) ;
//  StartDate.Date:= RecodeMinute(StartDate.Date,0) ;
//  StartDate.Date:= RecodeSecond(StartDate.Date,0) ;

//  EndDate.Date:= RecodeHour(EndDate.Date,23) ;
//  EndDate.Date:= RecodeMinute(EndDate.Date,59) ;
//  EndDate.Date:= RecodeSecond(EndDate.Date,59) ;

  FilterString:= '' ;


//  FilterString:= 'Verk: '+peSupplier.Items[peSupplier.ItemIndex] ;
//  FilterString:= FilterString +' Grupp:'+ peLogicalInventory.Items[peLogicalInventory.ItemIndex] ;

  if mtActThick.RecordCount > 0 then
   FilterString:= FilterString + ' AT: ';
  mtActThick.First ;
  While not mtActThick.Eof do
  Begin
   FilterString:= FilterString + mtActThickThickness.AsString+', ' ;
   mtActThick.Next ;
  End ;

  if mtAWidthMM.RecordCount > 0 then
   FilterString:= FilterString+' AB: ';
  mtAWidthMM.First ;
  While not mtAWidthMM.Eof do
  Begin
   FilterString:= FilterString + mtAWidthMMWidth.AsString+', ' ;
   mtAWidthMM.Next ;
  End ;

  if mtActLengthMM.RecordCount > 0 then
   FilterString:= FilterString+' AL: ';
  mtActLengthMM.First ;
  While not mtActLengthMM.Eof do
  Begin
   FilterString:= FilterString + mtActLengthMMActLengthMM.AsString+', ' ;
   mtActLengthMM.Next ;
  End ;

  if mtSpecies.RecordCount > 0 then
   FilterString := FilterString+' TS: ' ;
  mtSpecies.First ;
  While not mtSpecies.Eof do
  Begin
   FilterString := FilterString + Trim(mtSpeciesSpeciesName.AsString)+', ' ;
   mtSpecies.Next ;
  End ;

  if mtSurfacing.RecordCount > 0 then
   FilterString := FilterString+' UT: ' ;
  mtSurfacing.First ;
  While not mtSurfacing.Eof do
  Begin
   FilterString := FilterString + Trim(mtSurfacingSurfacingName.AsString)+', ' ;
   mtSurfacing.Next ;
  End ;

  if mtGrade.RecordCount > 0 then
   FilterString := FilterString+' KV: ' ;
  mtGrade.First ;
  While not mtGrade.Eof do
  Begin
   FilterString := FilterString + Trim(mtGradeGradeName.AsString)+', ' ;
   mtGrade.Next ;
  End ;

  if cbShowSingleLengthPkgs.Checked then
   FilterString := FilterString + ' Endast LP paket ' ;

  if ccAvgLengthRegPkt.Checked then
   FilterString := FilterString + ' Endast ML-Reg.paket ' ;


End ;


procedure TfrmProdRep.Make_PROD_BY_PKG_SQL(Sender: TObject);
Var //NomThick, NomWidth : Double ;
    Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('DELETE dbo.PROD_BY_PKG') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.PROD_BY_PKG') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('ProductionDate,') ;
  sq_Temp_Inventory.SQL.Add('ClientName,') ;
  sq_Temp_Inventory.SQL.Add('ProductionUnitName,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('PcsPerLength,') ;
  sq_Temp_Inventory.SQL.Add('L1800,') ;
  sq_Temp_Inventory.SQL.Add('L2100,') ;
  sq_Temp_Inventory.SQL.Add('L2400,') ;
  sq_Temp_Inventory.SQL.Add('L2700,') ;
  sq_Temp_Inventory.SQL.Add('L3000,') ;
  sq_Temp_Inventory.SQL.Add('L3300,') ;
  sq_Temp_Inventory.SQL.Add('L3600,') ;
  sq_Temp_Inventory.SQL.Add('L3900,') ;
  sq_Temp_Inventory.SQL.Add('L4200,') ;
  sq_Temp_Inventory.SQL.Add('L4500,') ;
  sq_Temp_Inventory.SQL.Add('L4800,') ;
  sq_Temp_Inventory.SQL.Add('L5100,') ;
  sq_Temp_Inventory.SQL.Add('L5400,') ;
  sq_Temp_Inventory.SQL.Add('L5700,') ;
  sq_Temp_Inventory.SQL.Add('L6000,') ;
  sq_Temp_Inventory.SQL.Add('ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateStart,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateEnd,') ;
  sq_Temp_Inventory.SQL.Add('Operation)') ;

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('pp.ProductionDate,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientName,') ;
  sq_Temp_Inventory.SQL.Add('PU.RegPointName AS ProductionUnitName,') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('PP.PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('PP.SupplierCode,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;

  sq_Temp_Inventory.SQL.Add('pg.NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('PTL.PcsPerLength,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L18,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L21,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L24,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L27,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L30,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L33,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L36,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L39,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L42,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L45,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L48,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L51,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L54,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L57,') ;
  sq_Temp_Inventory.SQL.Add('PTL.L60,') ;
  sq_Temp_Inventory.SQL.Add('pt.Totalm3Actual,') ;
  sq_Temp_Inventory.SQL.Add('pt.Totalm3Nominal,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalLinealMeterActualLength,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalMFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalSQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces,') ;
//  sq_Temp_Inventory.SQL.Add(':StartDate,');
//  sq_Temp_Inventory.SQL.Add(':EndDate,');
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add('pp.Operation');

  sq_Temp_Inventory.SQL.Add('FROM  Package_Production PP') ;
  sq_Temp_Inventory.SQL.Add('Inner Join PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;
  sq_Temp_Inventory.SQL.Add('Inner Join RegistrationPoint PU ON PU.RegPointNo = PP.ProductionUnitNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join Client Verk ON Verk.ClientNo = PP.SupplierNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join PackageType pt 	ON pt.PackageTypeNo = PP.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('AND G.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))) ;

//  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= :StartDate') ;
//  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= :EndDate') ;


  if peRegPoint.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PU.RegPointNo = '+IntToStr(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  x:= 1 ;
  self.mtSpecies.First ;
  if self.mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(self.mtSpeciesSpeciesNo.AsInteger)) ;
    self.mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtSurfacing.First ;
  if self.mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(self.mtSurfacingSurfacingNo.AsInteger)) ;
    self.mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtGrade.First ;
  if self.mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(self.mtGradeGradeNo.AsInteger)) ;
    self.mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  Self.mtActThick.First ;
  if Self.mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not Self.mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(Self.mtActThickThickness.AsFloat))) ;
    Self.mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  self.mtAWidthMM.First ;
  if self.mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(self.mtAWidthMMWidth.AsFloat))) ;
    self.mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  self.mtActLengthMM.First ;
  if self.mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PL.ActualLengthMM = '+ReplaceCommas(FloatToStr(self.mtActLengthMMActLengthMM.AsFloat))) ;
    self.mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;





  if (peOperation.ItemIndex > 0) and (peOperation.ItemIndex <> 2) then
   sq_Temp_Inventory.SQL.Add('and Operation = '+IntToStr(peOperation.ItemIndex-1)) ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;
    


//  if thisuser.UserID = 8 then sq_Temp_Inventory.SQL.SaveToFile('sq_prod_By_Pkgno.txt');
//  sq_Temp_Inventory.ParamByName('StartDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(StartDate.Date) ;
//  sq_Temp_Inventory.ParamByName('EndDate').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(EndDate.Date) ;
  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmProdRep.CleanDimensionFilter (Sender: TObject) ;
begin
  if mtActThick.Active = False then
   mtActThick.Active:= True ;
  mtActThick.First ;
  While not mtActThick.Eof do
  Begin
   if mtActThickThickness.AsFloat > 0.1 then
    mtActThick.Next
    else
    mtActThick.Delete ;
  End ;

  if mtAWidthMM.Active = False then
   mtAWidthMM.Active:= True ;
  mtAWidthMM.First ;
  While not mtAWidthMM.Eof do
  Begin
   if mtAWidthMMWidth.AsFloat > 0.1 then
    mtAWidthMM.Next
    else
    mtAWidthMM.Delete ;
  End ;

  if mtActLengthMM.Active = False then
   mtActLengthMM.Active:= True ;
  mtActLengthMM.First ;
  While not mtActLengthMM.Eof do
  Begin
   if mtActLengthMMActLengthMM.AsFloat > 0.1 then
    mtActLengthMM.Next
    else
    mtActLengthMM.Delete ;
  End ;  
End ;

procedure TfrmProdRep.AddLengthClick(Sender: TObject);
begin
   mtActLengthMM.Insert ;
end;

procedure TfrmProdRep.RemoveLengthClick(Sender: TObject);
begin
   mtActLengthMM.Delete ;
end;

procedure TfrmProdRep.ClearLengthsClick(Sender: TObject);
begin
   mtActLengthMM.Active:= False ;
   mtActLengthMM.Active:= True ;
end;

procedure TfrmProdRep.RemoveSpeciesClick(Sender: TObject);
begin
  mtSpecies.Delete ;
end;

procedure TfrmProdRep.ClearSpeciesClick(Sender: TObject);
begin
   mtSpecies.Active:= False ;
   mtSpecies.Active:= True ;
end;

procedure TfrmProdRep.ClearSurfacingClick(Sender: TObject);
begin
  mtSurfacing.Active:= False ;
  mtSurfacing.Active:= True ;
end;

procedure TfrmProdRep.AddSurfacingClick(Sender: TObject);
begin
  mtSurfacing.Insert ;
end;

procedure TfrmProdRep.RemoveSurfacingClick(Sender: TObject);
begin
  mtSurfacing.Delete ;
end;

procedure TfrmProdRep.RemoveGradeClick(Sender: TObject);
begin
  mtGrade.Delete ;
end;

procedure TfrmProdRep.ClearGradeClick(Sender: TObject);
begin
  mtGrade.Active:= False ;
  mtGrade.Active:= True ;
end;

procedure TfrmProdRep.ds_ActLengthDataChange(Sender: TObject;
  Field: TField);
begin
 FilterChanged := True ;
end;

procedure TfrmProdRep.StartDateChange(Sender: TObject);
begin
 FilterChanged := True ;
end;

procedure TfrmProdRep.endDateChange(Sender: TObject);
begin
 FilterChanged := True ;
end;

procedure TfrmProdRep.peOperationChange(Sender: TObject);
begin
 FilterChanged := True ;
end;

procedure TfrmProdRep.peRegPointChange(Sender: TObject);
begin
 FilterChanged := True ;
end;

procedure TfrmProdRep.peSupplierChange(Sender: TObject);
begin
 FilterChanged := True ;
end;

procedure TfrmProdRep.grdSpeciesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 Begin
   mtSpecies.Active:= False ;
   mtSpecies.Active:= True ;
 End ;
end;

procedure TfrmProdRep.grdMainGradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 Begin
   mtGrade.Active:= False ;
   mtGrade.Active:= True ;
 End ;
end;

procedure TfrmProdRep.grdSurfacingKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 Begin
   mtSurfacing.Active:= False ;
   mtSurfacing.Active:= True ;
 End ;
end;

procedure TfrmProdRep.acPkgNoExecute(Sender: TObject);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 SaveFilterSettings (Sender) ;
 CleanDimensionFilter (Sender) ;
 if (FilterChanged) or (Vol_By_PkgNo = False) then
 Begin
  Make_PROD_BY_PKG_SQL(Sender) ;
  Vol_By_PkgNo:= True ;
 End ;

 if not InitiateReport('PROD_BY_PKGNo.RPT') then Exit ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor } 
 CRViewer91.ViewReport ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmProdRep.acPcsperLengthExecute(Sender: TObject);
begin
 SaveFilterSettings (Sender) ;
 CleanDimensionFilter (Sender) ;
 if (FilterChanged) or (Vol_By_Length_Gen = False) then
 Begin
  MakeSQL_PROD_By_Length (Sender) ;
  Vol_By_Length_Gen:= True ;
 End ;

 if not InitiateReport('PROD_BY_LENGTH.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmProdRep.acHideFilterExecute(Sender: TObject);
begin
 if lbHideFilterPanel.Caption = 'Göm filter' then
  Begin
   lbHideFilterPanel.Caption:= 'Visa filter' ;
   PanelFilterMain.Visible:= False ;
//   PanelProdFilter.Visible:= False ;
//   OldPanelFilterMainHeight:= PanelFilterMain.Height ;
//   PanelFilterMain.Height:= 55 ;
  End
  else
  Begin
   PanelFilterMain.Visible:= True ;
   lbHideFilterPanel.Caption:= 'Göm filter' ;
//   PanelProdFilter.Visible:= True ;
//   PanelFilterMain.Height:= OldPanelFilterMainHeight ;
  End ;
end;

procedure TfrmProdRep.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmProdRep.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  mtSpecies.Active:= False ;
  mtGrade.Active:= False ;

  mtSurfacing.Active:= False ;
  mtActThick.Active:= False ;
  mtAWidthMM.Active:= False ;
  mtActLengthMM.Active:= False ;

  SaveUserProps(Self.Name) ;
{ with TIniFile.Create(dmsConnector.InifilesMap+'VisProdRep'+'.'+ThisUser.UserName) do
 try
   WriteInteger ('Production', 'SupplierNo', peSupplier.ItemIndex);
   WriteInteger ('Production', 'RegPoint', peRegPoint.ItemIndex);
   WriteInteger ('Production', 'Operation', peOperation.ItemIndex);
   WriteString('Production', 'StartDate', StartDate.Text);
   WriteString('Production', 'endDate', endDate.Text);
 Finally
  Free ;
 End ; }
 CanClose:= True ;
end;

procedure TfrmProdRep.acUtfallKorningExecute(Sender: TObject);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 SaveFilterSettings (Sender) ;
 CleanDimensionFilter (Sender) ;
 if (FilterChanged) or (Vol_By_PkgNo = False) then
 Begin
  Make_PROD_BY_RUN_SQL(Sender) ;
  Vol_By_PkgNo:= True ;
 End ;

 if not InitiateReport('UtfallKorning.rpt') then Exit ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 CRViewer91.ViewReport ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmProdRep.Make_PROD_BY_RUN_SQL(Sender: TObject) ;
Var //NomThick, NomWidth : Double ;
    Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

//========================== get RunNos
  sq_Temp_Inventory.SQL.Add('Delete from dbo.Runnos') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert into dbo.Runnos') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('Runno)') ;

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;
  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('pp.RunNo') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Package_Production PP') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = PP.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


  sq_Temp_Inventory.SQL.Add('WHERE pp.ProductionDate >= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.ProductionDate <= '+QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))) ;
  sq_Temp_Inventory.SQL.Add('AND pp.RunNo is not null') ;

  if peRegPoint.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.ProductionUnitNo = '+IntToStr(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.SupplierNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;



  if (peOperation.ItemIndex > 0) and (peOperation.ItemIndex <> 2) then
   sq_Temp_Inventory.SQL.Add('and Operation = '+IntToStr(peOperation.ItemIndex-1)) ;


  x:= 1 ;
  self.mtSpecies.First ;
  if self.mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(self.mtSpeciesSpeciesNo.AsInteger)) ;
    self.mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtSurfacing.First ;
  if self.mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(self.mtSurfacingSurfacingNo.AsInteger)) ;
    self.mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  self.mtGrade.First ;
  if self.mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(self.mtGradeGradeNo.AsInteger)) ;
    self.mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  Self.mtActThick.First ;
  if Self.mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not Self.mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(Self.mtActThickThickness.AsFloat))) ;
    Self.mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  self.mtActLengthMM.First ;
  if self.mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PL2.ActualLengthMM = '+ReplaceCommas(FloatToStr(self.mtActLengthMMActLengthMM.AsFloat))) ;
    self.mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  self.mtAWidthMM.First ;
  if self.mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not self.mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(self.mtAWidthMMWidth.AsFloat))) ;
    self.mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  sq_Temp_Inventory.ExecSQL(False) ;

//   if thisuser.UserID = 8 then   sq_Temp_Inventory.SQL.SaveToFile('runnos.txt');

//========================== get volumes
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  sq_Temp_Inventory.SQL.Add('Delete from dbo.PROD_BY_RUN') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert into dbo.PROD_BY_RUN') ;
{  sq_Temp_Inventory.SQL.Add('(UserID,') ;
  sq_Temp_Inventory.SQL.Add('ProductionDate,') ;
  sq_Temp_Inventory.SQL.Add('ClientName,') ;
  sq_Temp_Inventory.SQL.Add('ProductionUnitName,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('PcsPerLength,') ;
  sq_Temp_Inventory.SQL.Add('L1800,') ;
  sq_Temp_Inventory.SQL.Add('L2100,') ;
  sq_Temp_Inventory.SQL.Add('L2400,') ;
  sq_Temp_Inventory.SQL.Add('L2700,') ;
  sq_Temp_Inventory.SQL.Add('L3000,') ;
  sq_Temp_Inventory.SQL.Add('L3300,') ;
  sq_Temp_Inventory.SQL.Add('L3600,') ;
  sq_Temp_Inventory.SQL.Add('L3900,') ;
  sq_Temp_Inventory.SQL.Add('L4200,') ;
  sq_Temp_Inventory.SQL.Add('L4500,') ;
  sq_Temp_Inventory.SQL.Add('L4800,') ;
  sq_Temp_Inventory.SQL.Add('L5100,') ;
  sq_Temp_Inventory.SQL.Add('L5400,') ;
  sq_Temp_Inventory.SQL.Add('L5700,') ;
  sq_Temp_Inventory.SQL.Add('L6000,') ;
  sq_Temp_Inventory.SQL.Add('ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateStart,') ;
  sq_Temp_Inventory.SQL.Add('FilterDateEnd,') ;
  sq_Temp_Inventory.SQL.Add('Operation)') ; }

  sq_Temp_Inventory.SQL.Add('Select Distinct ') ;
  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('isNull(pp.RunNo,-1)		AS Körnr,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientName				AS VERK,') ;
  sq_Temp_Inventory.SQL.Add('PU.RegPointName 			AS MÄTPUNKT,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName			AS PRODUKT,') ;
  sq_Temp_Inventory.SQL.Add('pl.ActualLengthMM			AS ALMM,') ;
  sq_Temp_Inventory.SQL.Add('pl.NominalLengthMM			AS NLMM,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Actual) 			AS AM3,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Nominal)			AS NM3,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.LinealMeterActualLength) 	AS AM1,') ;

  sq_Temp_Inventory.SQL.Add('SUM(ptd.MFBMNominal)			AS MFBM,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.SQMofActualWidth)		AS AM2,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.NoOfPieces)			AS STYCK,') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(StartDate.Date)))+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(SqlTimeStampToStr('yyyy-mm-dd hh:mm:ss',DateTimeToSQLTimeStamp(EndDate.Date)))) ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Runnos ro') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Package_Production PP on pp.RunNo = ro.RunNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageNumber pn 	ON pn.PackageNo = PP.PackageNo') ;
  sq_Temp_Inventory.SQL.Add('AND pn.SupplierCode = PP.SupplierCode') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.ProductionUnitNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Client Verk ON Verk.ClientNo = PP.SupplierNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = PP.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;

//  sq_Temp_Inventory.SQL.Add('Inner Join packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
//  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade G ON G.GradeNo = pd.GradeNo') ;
//  sq_Temp_Inventory.SQL.Add('AND G.LanguageCode = 1') ;
//  sq_Temp_Inventory.SQL.Add('Inner Join ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


  sq_Temp_Inventory.SQL.Add('WHERE ro.UserID = '+IntToStr(ThisUser.UserID)) ;

  if peRegPoint.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.ProductionUnitNo = '+IntToStr(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND PP.SupplierNo = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;


  if (peOperation.ItemIndex > 0) and (peOperation.ItemIndex <> 2) then
   sq_Temp_Inventory.SQL.Add('and Operation = '+IntToStr(peOperation.ItemIndex-1)) ;

//  if cbShowSingleLengthPkgs.Checked then
//    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

//  if ccAvgLengthRegPkt.Checked then
//   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;


  sq_Temp_Inventory.SQL.Add('Group By pp.RunNo, Verk.ClientName, PU.RegPointName, pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('pl.ActualLengthMM, pd.ProductNo, pl.NominalLengthMM') ;

//  if thisuser.UserID = 8 then   sq_Temp_Inventory.SQL.SaveToFile('sq_prod_By_Run.txt');
  sq_Temp_Inventory.ExecSQL(False) ;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmProdRep.acUtfallRunNoExecute(Sender: TObject);
Var  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

{ SaveFilterSettings (Sender) ;
 CleanDimensionFilter (Sender) ;
 if (FilterChanged) or (Vol_By_PkgNo = False) then
 Begin
  Make_PROD_BY_RUN_SQL(Sender) ;
  Vol_By_PkgNo:= True ;
 End ; }

 if not InitiateReport('UtfallKorningII.rpt') then Exit ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 report.ParameterFields.Item[1].AddCurrentValue(StrToIntDef(eRunNo.Text,0)) ;
 report.ParameterFields.Item[2].AddCurrentValue(integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex])) ;
 report.ParameterFields.Item[3].AddCurrentValue(integer(peSupplier.Items.Objects[peSupplier.ItemIndex])) ;
 CRViewer91.ReportSource:= Report ;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 CRViewer91.ViewReport ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmProdRep.acSelectRunNoExecute(Sender: TObject);
var fSelectRunNos : TfSelectRunNos;
    Save_Cursor   : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try

 With dmInventory do
 Begin
 fSelectRunNos:= TfSelectRunNos.Create(nil) ;
 try
  sq_RunNos.ParamByName('RegPointNo').AsInteger := integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]) ;
  sq_RunNos.ParamByName('ClientNo').AsInteger   := integer(peSupplier.Items.Objects[peSupplier.ItemIndex]) ;
  sq_RunNos.ParamByName('Operation').AsInteger  := 3 ;
  cds_RunNos.Active := True ;
  if cds_RunNos.RecordCount > 0 then
  Begin
   if fSelectRunNos.ShowModal = mrOK then
   Begin
    if (cds_RunNos.Active) and (cds_RunNos.RecordCount > 0) then
    Begin
     eRunNo.Text  := cds_RunNosKrNr.AsString ;
     acUtfallRunNoExecute(Sender) ;
    End ;
   End ;
  End
   else
    ShowMessage('Hittar inga körningar för aktuell verk och mätpunkt.');
 finally
  cds_RunNos.Active := False ;
  FreeAndNil(fSelectRunNos) ;
 end;
 End ;//With dmInventory do
 Finally
  Screen.Cursor := Save_Cursor ;
 End ; 
end;

end.


