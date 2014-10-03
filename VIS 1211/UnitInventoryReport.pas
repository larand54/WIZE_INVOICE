unit UnitInventoryReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, dxEdLib, StdCtrls, dxCntner,
  dxEditor, dxExEdtr, ImgList, OleServer, OleCtrls,
  Menus, dxTL, dxTLClms, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxDBGrid, CRAXDDRT_TLB, DB, ActnList,
  CrystalActiveXReportViewerLib11_TLB, FMTBcd, DBClient, Provider, SqlExpr, SqlTimSt,
  cxClasses;

type
  TfrmInventoryReport = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
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
    lbPkgTypeReport: TdxBarLargeButton;
    RemoveSpecies: TMenuItem;
    ClearSpecies: TMenuItem;
    pmSurfacing: TPopupMenu;
    AddSurfacing: TMenuItem;
    RemoveSurfacing: TMenuItem;
    ClearSurfacing: TMenuItem;
    pmActLength: TPopupMenu;
    AddLength: TMenuItem;
    RemoveLength: TMenuItem;
    ClearLengths: TMenuItem;
    pmMainGrade: TPopupMenu;
    Add1: TMenuItem;
    Remove1: TMenuItem;
    Clear1: TMenuItem;
    pmBarCode: TPopupMenu;
    Add2: TMenuItem;
    Remove2: TMenuItem;
    Clear2: TMenuItem;
    pmGradeStamp: TPopupMenu;
    ADD3: TMenuItem;
    Remove3: TMenuItem;
    Clear3: TMenuItem;
    lbInventoryCount: TdxBarLargeButton;
    PanelProdFilter: TPanel;
    grdActThick: TdxDBGrid;
    grdActThickThickness: TdxDBGridMaskColumn;
    grdActWidth: TdxDBGrid;
    grdActWidthWidth: TdxDBGridMaskColumn;
    grdActLength: TdxDBGrid;
    grdActLengthActLengthMM: TdxDBGridMaskColumn;
    grdSpecies: TdxDBGrid;
    grdSpeciesSpeciesName: TdxDBGridLookupColumn;
    grdSpeciesSpeciesNo: TdxDBGridMaskColumn;
    grdGrade: TdxDBGrid;
    grdGradeGradeName: TdxDBGridLookupColumn;
    grdGradeGradeNo: TdxDBGridMaskColumn;
    grdSurfacing: TdxDBGrid;
    grdSurfacingSurfacingName: TdxDBGridLookupColumn;
    grdSurfacingSurfacingNo: TdxDBGridMaskColumn;
    grdBarCode: TdxDBGrid;
    grdBarCodeBarCodeName: TdxDBGridLookupColumn;
    grdBarCodeBarCodeNo: TdxDBGridMaskColumn;
    grdGradeStamp: TdxDBGrid;
    grdBarCodeGradeStampName: TdxDBGridLookupColumn;
    grdBarCodeGradeStampNo: TdxDBGridMaskColumn;
    Panel3: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    peSupplier: TdxPickEdit;
    peSalesRegion: TdxPickEdit;
    Label2: TLabel;
    Label10: TLabel;
    peLogicalInventory: TdxPickEdit;
    pePhysicalInventory: TdxPickEdit;
    cbShowSingleLengthPkgs: TCheckBox;
    Label3: TLabel;
    peLengthFormat: TdxPickEdit;
    Splitter1: TSplitter;
    lbHideFilterPanel: TdxBarLargeButton;
    ccAvgLengthRegPkt: TCheckBox;
    bbSummaryReport: TdxBarLargeButton;
    ActionList1: TActionList;
    acPkgNo: TAction;
    acPcsByLength: TAction;
    acPkgCode: TAction;
    acPkgNoList: TAction;
    acPkgSummary: TAction;
    pmFormShortcuts: TPopupMenu;
    F1PktNrrapport1: TMenuItem;
    F2Antallngdrapport1: TMenuItem;
    F3Pktkodrapport1: TMenuItem;
    F4PktNrlista1: TMenuItem;
    F5Lagersummering1: TMenuItem;
    acClose: TAction;
    Stng1: TMenuItem;
    CRViewer91: TCrystalActiveXReportViewer;
    grdImp: TdxDBGrid;
    dxDBGridLookupColumn1: TdxDBGridLookupColumn;
    dxDBGridMaskColumn1: TdxDBGridMaskColumn;
    pmImp: TPopupMenu;
    Lggtill1: TMenuItem;
    abort1: TMenuItem;
    Rensa1: TMenuItem;
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
    procedure peSalesRegionChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pePhysicalInventoryChange(Sender: TObject);
    procedure peSupplierChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AddThickClick(Sender: TObject);
    procedure AddWidthClick(Sender: TObject);
    procedure RemoveWidthClick(Sender: TObject);
    procedure ClearWidthsClick(Sender: TObject);
    procedure RemoveThickClick(Sender: TObject);
    procedure ClearThicksClick(Sender: TObject);
    procedure RemoveSpeciesClick(Sender: TObject);
    procedure ClearSpeciesClick(Sender: TObject);
    procedure AddSpeciesClick(Sender: TObject);
    procedure AddGradeClick(Sender: TObject);
    procedure RemoveGradeClick(Sender: TObject);
    procedure ClearGradeClick(Sender: TObject);
    procedure AddSurfacingClick(Sender: TObject);
    procedure RemoveSurfacingClick(Sender: TObject);
    procedure ClearSurfacingClick(Sender: TObject);
    procedure AddLengthClick(Sender: TObject);
    procedure RemoveLengthClick(Sender: TObject);
    procedure ClearLengthsClick(Sender: TObject);
    procedure Add2Click(Sender: TObject);
    procedure Remove2Click(Sender: TObject);
    procedure Clear2Click(Sender: TObject);
    procedure ADD3Click(Sender: TObject);
    procedure Remove3Click(Sender: TObject);
    procedure Clear3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lbHideFilterPanelClick(Sender: TObject);
    procedure grdSpeciesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSurfacingKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBarCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdGradeStampKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acPkgNoExecute(Sender: TObject);
    procedure acPcsByLengthExecute(Sender: TObject);
    procedure acPkgCodeExecute(Sender: TObject);
    procedure acPkgNoListExecute(Sender: TObject);
    procedure acPkgSummaryExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Lggtill1Click(Sender: TObject);
    procedure abort1Click(Sender: TObject);
    procedure Rensa1Click(Sender: TObject);
    procedure grdImpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    report : IReport ;
    Vol_By_PkgCode,
    Vol_By_PkgNo,
    Vol_By_Length_Gen : Boolean ;
    OLD_peLengthFormat : Integer ;
    FilterString : Widestring ;
//    OldPanelFilterMainHeight : Integer ;
    Procedure MakePkgNo_SQL(Sender : TObject) ;
    procedure MakePkgNoList (Sender: TObject);
    Procedure MakeSQL_VolByLength(Sender : TObject) ;
    procedure MakePkgByPkgCODE_SQL (Sender: TObject) ;
    procedure MakePkgByPkgCODE_SQL_II (Sender: TObject) ;    
    function  InitiateReport(const ReportName: String) : Boolean ;
    procedure CleanDimensionFilter (Sender: TObject) ;
    procedure SaveFilterSettings (Sender: TObject) ;
    procedure LoadUserProps (const Form : String) ;
    procedure SaveUserProps (const Form : String) ;
  public
    { Public declarations }
    Procedure CreateCo(Sender: TObject;CompanyNo: Integer);
  end;

var
  frmInventoryReport: TfrmInventoryReport;

implementation

uses dmsDataConn, VidaUser, dm_Inventory, dmsVidaContact, VidaConst,
  dmcVidaSystem , dmsVidaSystem;

{$R *.dfm}

function ReplaceCommas(S : String) : String ;
begin
  { Convert period to commas}
  while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
 Result:= S ;
end;

procedure TfrmInventoryReport.LoadUserProps (const Form : String) ;
Var x : Integer ;
  SalesRegion,
  Supplier,
  PhysicalInventory,
  LogicalInventory : Integer ;
Begin
 SalesRegion:= -1 ;
 Supplier:= -1 ;
 PhysicalInventory:= -1 ;
 LogicalInventory:= -1 ;
 sq_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
 sq_Props.ParamByName('Form').AsString    := Form ;
 cds_Props.Active:= True ;
 if not cds_Props.Eof then
 Begin
  PhysicalInventory             := cds_PropsPIPNo.AsInteger ;
  LogicalInventory             := cds_PropsLIPNo.AsInteger ;
//  RegPointNo  := cds_PropsRegPointNo.AsInteger ;
//  Operation   := cds_PropsNewItemRow.AsInteger ;
  SalesRegion   := cds_PropsSalesRegionNo.AsInteger ;

  Supplier   := cds_PropsVerkSupplierNo.AsInteger ;

//  StartDate.Text      := SQLTimeStampToDateTime(cds_PropsStartPeriod.AsSQLTimeStamp) ;
//  endDate.Text        := SQLTimeStampToDateTime(cds_PropsEndPeriod.AsSQLTimeStamp) ;

 for x := 0 to peSalesRegion.Items.Count -1 do
 Begin
  if integer(peSalesRegion.Items.Objects[x]) = SalesRegion then
   peSalesRegion.ItemIndex := x ;
 End ;

 For x := 0 to peSupplier.Items.Count -1 do
 Begin
  if integer(peSupplier.Items.Objects[x]) = Supplier then
  peSupplier.ItemIndex:= x ;
 End ;

 For x := 0 to pePhysicalInventory.Items.Count -1 do
 Begin
  if integer(pePhysicalInventory.Items.Objects[x]) = PhysicalInventory then
  pePhysicalInventory.ItemIndex:= x ;
 End ;

 For x := 0 to peLogicalInventory.Items.Count -1 do
 Begin
  if integer(peLogicalInventory.Items.Objects[x]) = LogicalInventory then
  peLogicalInventory.ItemIndex:= x ;
 End ;

 End ;
 cds_Props.Active:= False ;
End ;

procedure TfrmInventoryReport.SaveUserProps (const Form : String) ;
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

  cds_PropsPIPNo.AsInteger              := integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]) ;
  cds_PropsLIPNo.AsInteger              := integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]) ;

//  cds_PropsRegPointNo.AsInteger         := peRegPoint.ItemIndex ;
//  cds_PropsNewItemRow.AsInteger         := peOperation.ItemIndex ;
  cds_PropsSalesRegionNo.AsInteger      := integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]) ;
  cds_PropsVerkSupplierNo.AsInteger     := integer(peSupplier.Items.Objects[peSupplier.ItemIndex]) ;

//  cds_PropsStartPeriod.AsSQLTimeStamp   := DateTimeToSQLTimeStamp(StartDate.Text) ;
//  cds_PropsEndPeriod.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(EndDate.Text) ;

  cds_Props.Post ;
  if cds_Props.ChangeCount > 0 then
   cds_Props.ApplyUpdates(0) ;

 cds_Props.Active:= False ;
End ;

Procedure TfrmInventoryReport.CreateCo(Sender: TObject;CompanyNo: Integer);
var
  Save_Cursor:TCursor;
  x : Integer ;
begin


 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 peSupplier.OnChange:= NIL ;
 Try
 dmsContact.LoadRegions(peSalesRegion.Items);
 peSalesRegion.Items.Insert(0,'ALL') ;
 for x := 0 to peSalesRegion.Items.Count -1 do
 Begin
  if integer(peSalesRegion.Items.Objects[x]) = VIDA_WOOD_COMPANY_NO then
   peSalesRegion.ItemIndex := x ;
 End ;

 if (peSalesRegion.Items.Count > 0) and (peSalesRegion.ItemIndex <> -1) then
 Begin
  dmsContact.LoadPhysInvByCityNo(pePhysicalInventory.Items, integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex])) ;

  if pePhysicalInventory.Items.Count > 0 then
   pePhysicalInventory.Text:= pePhysicalInventory.Items[0]
    else
     pePhysicalInventory.Text:= 'ALL' ;
  pePhysicalInventory.Items.Insert(0,'ALL') ;
  pePhysicalInventory.ItemIndex:= 0 ;

  peSupplier.Items.Clear ;
  dmsContact.Load_Suppliers_By_SR(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]),peSupplier.Items);
  peSupplier.Items.Insert(0,'ALL');
  peSupplier.ItemIndex:= 0 ;
  For x := 0 to peSupplier.Items.Count -1 do
  Begin
   if ThisUser.CompanyNo = integer(peSupplier.Items.Objects[x]) then
   peSupplier.ItemIndex:= x ;
  End ;
 End ;

 LoadUserProps(Self.Name) ;

{ with TIniFile.Create(dmsConnector.InifilesMap+'VisInventoryReport'+'.'+ThisUser.UserName) do
 try
  SalesRegion:= ReadInteger ('Inventory', 'SalesRegionNo', 0);
  Supplier:= ReadInteger ('Inventory', 'SupplierNo', 0);
  PhysicalInventory:= ReadInteger ('Inventory', 'PIP', 0);
  LogicalInventory:= ReadInteger ('Inventory', 'LIP', 0);
 Finally
  Free ;
 End ;

 for x := 0 to peSalesRegion.Items.Count -1 do
 Begin
  if integer(peSalesRegion.Items.Objects[x]) = SalesRegion then
   peSalesRegion.ItemIndex := x ;
 End ;

 For x := 0 to peSupplier.Items.Count -1 do
 Begin
  if integer(peSupplier.Items.Objects[x]) = Supplier then
  peSupplier.ItemIndex:= x ;
 End ;

 For x := 0 to pePhysicalInventory.Items.Count -1 do
 Begin
  if integer(pePhysicalInventory.Items.Objects[x]) = PhysicalInventory then
  pePhysicalInventory.ItemIndex:= x ;
 End ;

 For x := 0 to peLogicalInventory.Items.Count -1 do
 Begin
  if integer(peLogicalInventory.Items.Objects[x]) = LogicalInventory then
  peLogicalInventory.ItemIndex:= x ;
 End ; }


 Finally
  peSupplier.OnChange:= peSupplierChange ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

function TfrmInventoryReport.InitiateReport(const ReportName: String) : Boolean ;
  var HostName, Database, UserName, Password, spath: String ;
      Save_Cursor:TCursor;
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

procedure TfrmInventoryReport.MakePkgNo_SQL(Sender: TObject);
Var Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  Try
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('Spec_UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('(Spec_UserID,') ;
  sq_Temp_Inventory.SQL.Add('Spec_URI,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LogicalInvName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerCode,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_FreeForm,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_1800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3300,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3600,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3900,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4200,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4500,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_6000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_CreatedDate)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('pip.PhyInvPointNameNo,') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName,') ;
  sq_Temp_Inventory.SQL.Add('LIP.LogicalInventoryName,') ;
  sq_Temp_Inventory.SQL.Add('pip.OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('pt.PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces,') ;
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
  sq_Temp_Inventory.SQL.Add('pn.DateCreated') ;


  sq_Temp_Inventory.SQL.Add('FROM  Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;


  sq_Temp_Inventory.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType') ;

  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;


  if peSalesRegion.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]))) ;

  if pePhysicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND pip.PhyInvPointnameNo = '+IntToStr(integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]))) ;

  if peLogicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(mtSpeciesSpeciesNo.AsInteger)) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtImp.First ;
  if mtImp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtImp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ProductCategoryNo = '+IntToStr(mtIMPImpNo.AsInteger)) ;
    mtImp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtSurfacing.First ;
  if mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(mtSurfacingSurfacingNo.AsInteger)) ;
    mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtGrade.First ;
  if mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(mtGradeGradeNo.AsInteger)) ;
    mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mt_BarCode.First ;
  if mt_BarCode.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_BarCode.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.BarCodeID = '+IntToStr(BarCodeNo.AsInteger)) ;
    mt_BarCode.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mt_GradeStamp.First ;
  if mt_GradeStamp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_GradeStamp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.GradeStamp = '+IntToStr(GradeStampNo.AsInteger)) ;
    mt_GradeStamp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtActThick.First ;
  if mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(mtActThickThickness.AsFloat))) ;
    mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtAWidthMM.First ;
  if mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(mtAWidthMMWidth.AsFloat))) ;
    mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtActLengthMM.First ;
  if mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PL.ActualLengthMM = '+ReplaceCommas(FloatToStr(mtActLengthMMActLengthMM.AsFloat))) ;
    mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;

//  sq_Temp_Inventory.ParamByName('UserID').AsInteger:= ThisUser.UserID ;


//  if thisuser.UserID = 8 then sq_Temp_Inventory.SQL.SaveToFile('sq_Inv_By_PkgNo.txt');
  Try
  sq_Temp_Inventory.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfrmInventoryReport.MakeSQL_VolByLength (Sender: TObject);
Var Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  Try
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_Length') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;


   Try   
  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_LengthFilter') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

   Try  
  sq_Temp_Inventory.SQL.Clear ;
  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_LengthFilter (Userid, Filter)') ;
  sq_Temp_Inventory.SQL.Add('Values ('+IntToStr(Thisuser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr(FilterString)+')') ;
//  if thisuser.UserID = 8 then    sq_Temp_Inventory.SQL.SaveToFile('Inv_By_LengthFilter.txt');
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;


  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_Length') ;
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
  sq_Temp_Inventory.SQL.Add('KVM)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;

//  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo,') ;
sq_Temp_Inventory.SQL.Add('0,') ;

  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr('0')+',') ;
  sq_Temp_Inventory.SQL.Add(QuotedStr('0')+',') ;

  sq_Temp_Inventory.SQL.Add('SUM(ptd.NoOfPieces),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Actual) ,') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.m3Nominal),') ;

  sq_Temp_Inventory.SQL.Add('SUM(ptd.LinealMeterActualLength),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.MFBMNominal),') ;
  sq_Temp_Inventory.SQL.Add('SUM(ptd.SQMofActualWidth)') ;

  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;


  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;

  if peSalesRegion.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]))) ;

  if pePhysicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND pip.PhyInvPointnameNo = '+IntToStr(integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]))) ;

  if peLogicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(mtSpeciesSpeciesNo.AsInteger)) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtImp.First ;
  if mtImp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtImp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ProductCategoryNo = '+IntToStr(mtIMPImpNo.AsInteger)) ;
    mtImp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtSurfacing.First ;
  if mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(mtSurfacingSurfacingNo.AsInteger)) ;
    mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtGrade.First ;
  if mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(mtGradeGradeNo.AsInteger)) ;
    mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mt_BarCode.First ;
  if mt_BarCode.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_BarCode.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.BarCodeID = '+IntToStr(BarCodeNo.AsInteger)) ;
    mt_BarCode.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mt_GradeStamp.First ;
  if mt_GradeStamp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_GradeStamp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.GradeStamp = '+IntToStr(GradeStampNo.AsInteger)) ;
    mt_GradeStamp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtActThick.First ;
  if mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(mtActThickThickness.AsFloat))) ;
    mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtAWidthMM.First ;
  if mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(mtAWidthMMWidth.AsFloat))) ;
    mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtActLengthMM.First ;
  if mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PDL.ActualLengthMM = '+ReplaceCommas(FloatToStr(mtActLengthMMActLengthMM.AsFloat))) ;
    mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;




  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;



//  sq_Temp_Inventory.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
    sq_Temp_Inventory.SQL.Add('group by pdl.ActualLengthMM') ;
//    PDL.ProductLengthNo, pdl.NominalLengthMM, pdl.NominalLengthFEET,  pdl.ActualLengthINCH') ;
    sq_Temp_Inventory.SQL.Add('Order by pdl.ActualLengthMM') ;

//  if ThisUser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_Inv_By_Length.txt');
  Try
  sq_Temp_Inventory.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.peSalesRegionChange(Sender: TObject);
Var x : Integer ;
begin
 if (peSalesRegion.Items.Count > 0) and (peSalesRegion.ItemIndex <> -1) then
 Begin
  pePhysicalInventory.Items.Clear ;
  dmsContact.LoadPhysInvByCityNo(pePhysicalInventory.Items, integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex])) ;

//  if pePhysicalInventory.Items.Count > 0 then
//   pePhysicalInventory.Text:= pePhysicalInventory.Items[0]
//    else
//     pePhysicalInventory.Text:= 'ALL' ;
  pePhysicalInventory.Items.Insert(0,'ALL') ;
  pePhysicalInventory.ItemIndex:= 0 ;

  peSupplier.Items.Clear ;
  dmsContact.Load_Suppliers_By_SR(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]),peSupplier.Items);
  peSupplier.Items.Insert(0,'ALL');
  peSupplier.ItemIndex:= 0 ;
  For x := 0 to peSupplier.Items.Count -1 do
  Begin
   if ThisUser.CompanyNo = integer(peSupplier.Items.Objects[x]) then
   peSupplier.ItemIndex:= x ;
  End ;
 End ;
end;

procedure TfrmInventoryReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree ;
end;

procedure TfrmInventoryReport.pePhysicalInventoryChange(Sender: TObject);
begin
 if (peSupplier.Text <> 'ALL')  AND (pePhysicalInventory.Text <> 'ALL') then
 Begin
  peLogicalInventory.Items.Clear ;

  dmInventory.LoadLogInvByOwnerCity(peLogicalInventory.Items,
  integer(peSupplier.Items.Objects[peSupplier.ItemIndex]),
  integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]) ) ;
  if peLogicalInventory.Items.Count > 0 then
  Begin
   peLogicalInventory.Items.Insert(0,'ALL');
   peLogicalInventory.ItemIndex:= 0 ;
  End
    else
    Begin
     peLogicalInventory.Items.Insert(0,'ALL');
     peLogicalInventory.ItemIndex:= 0 ;
//     peLogicalInventory.Text:= 'ALL' ;
    End ;
 End
 else
  Begin
   peLogicalInventory.Items.Clear ;
//   peLogicalInventory.Text:= 'ALL' ;
   peLogicalInventory.Items.Insert(0,'ALL');
   peLogicalInventory.ItemIndex:= 0 ;

  End ;



// peLogicalInventory.Items.Insert(0,'ALL');
// peLogicalInventory.Text:= pePhysicalInventory.Items[pePhysicalInventory.ItemIndex] ;
end;

procedure TfrmInventoryReport.peSupplierChange(Sender: TObject);
begin
 if (peSupplier.Items.Count > 0) AND (peSupplier.Text <> 'ALL')  {AND (pePhysicalInventory.Text <> 'ALL')} then
 Begin
  peLogicalInventory.Items.Clear ;
  dmsContact.LoadPhysInvByCityNoFilterByClientNo(pePhysicalInventory.Items, integer(peSupplier.Items.Objects[peSupplier.ItemIndex])) ;
  if pePhysicalInventory.Items.Count > 0 then
  Begin
   pePhysicalInventory.Items.Insert(0,'ALL') ;
   pePhysicalInventory.ItemIndex:= 0 ;
   dmInventory.LoadLogInvByOwnerCity(peLogicalInventory.Items,    integer(peSupplier.Items.Objects[peSupplier.ItemIndex]),    integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]) ) ;

   if peLogicalInventory.Items.Count > 0 then
    peLogicalInventory.ItemIndex:= 0
     else
     Begin
      peLogicalInventory.Items.Clear ;
      peLogicalInventory.Items.Insert(0,'ALL');
      peLogicalInventory.ItemIndex:= 0 ;
//      peLogicalInventory.Text:= 'ALL' ;
     End ;


  End
   else
    Begin
     peLogicalInventory.Items.Clear ;
     peLogicalInventory.Items.Insert(0,'ALL');
     peLogicalInventory.ItemIndex:= 0 ;

//     peLogicalInventory.Text:= 'ALL' ;
    End ;
 End
 else
 Begin
  if peSalesRegion.Items.Count > 0 then
  Begin
   dmsContact.LoadPhysInvByCityNo(pePhysicalInventory.Items, integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex])) ;
   pePhysicalInventory.Items.Insert(0,'ALL') ;
   pePhysicalInventory.ItemIndex:= 0 ;
  End ;


  peLogicalInventory.Items.Clear ;
  peLogicalInventory.Items.Insert(0,'ALL');
  peLogicalInventory.ItemIndex:= 0 ;
//  peLogicalInventory.Text:= 'ALL' ;
 End ;


end;

procedure TfrmInventoryReport.FormCreate(Sender: TObject);
begin
 if not Assigned(dmInventory) then
  dmInventory:= TdmInventory.Create(Nil);

 peLengthFormat.ItemIndex:= 0 ;
 OLD_peLengthFormat:= peLengthFormat.ItemIndex ;
 Vol_By_Length_Gen:= False ;
 Vol_By_PkgNo:= False ;
 Vol_By_PkgCode:= False ;
 With dmInventory do
 Begin
  mtSpecies.Active:= True ;
  mtGrade.Active:= True ;
  mtIMP.Active:= True ;

  mtSurfacing.Active:= True ;
  mtActThick.Active:= True ;
  mtAWidthMM.Active:= True ;
  mtActLengthMM.Active:= True ;
  mt_BarCode.Active:= True ;
  mt_GradeStamp.Active:= True ;
  FilterChanged:= False ;
 End ;
end;

procedure TfrmInventoryReport.FormDestroy(Sender: TObject);
begin
 Report:= Nil ;
 Application1:= Nil ;
 frmInventoryReport:= NIL ;
end;

procedure TfrmInventoryReport.AddThickClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtActThick.Insert ;
 End ;
end;

procedure TfrmInventoryReport.AddWidthClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtAWidthMM.Insert ;
 End ;
end;

procedure TfrmInventoryReport.RemoveWidthClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtAWidthMM.Delete ;
 End ;
end;

procedure TfrmInventoryReport.ClearWidthsClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtAWidthMM.Active := False ;
   mtAWidthMM.Active := True ;
 End ;
end;

procedure TfrmInventoryReport.RemoveThickClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtActThick.Delete ;
 End ;
end;

procedure TfrmInventoryReport.ClearThicksClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtActThick.Active:= False ;
   mtActThick.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.CleanDimensionFilter (Sender: TObject) ;
begin
 With dmInventory do
 Begin
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
End ;

procedure TfrmInventoryReport.MakePkgByPkgCODE_SQL (Sender: TObject) ;
Var Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

   Try
  sq_Temp_Inventory.SQL.Add('DELETE dbo.INV_BY_PKGTYPE') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.INV_BY_PKGTYPE') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;

  sq_Temp_Inventory.SQL.Add('INVENTORY,') ;
  sq_Temp_Inventory.SQL.Add('SUPPCODE,') ;
  sq_Temp_Inventory.SQL.Add('INTERN_CODE,') ;
  sq_Temp_Inventory.SQL.Add('EXTERN_CODE,') ;
  sq_Temp_Inventory.SQL.Add('PRODUCT,') ;
  sq_Temp_Inventory.SQL.Add('NOOFPKGS,') ;
  sq_Temp_Inventory.SQL.Add('PCSPERPKG,') ;

  sq_Temp_Inventory.SQL.Add('GRADESTAMP,') ;
  sq_Temp_Inventory.SQL.Add('BARCODE,') ;
  sq_Temp_Inventory.SQL.Add('SPECIES,') ;

  sq_Temp_Inventory.SQL.Add('SURFACING,') ;
  sq_Temp_Inventory.SQL.Add('GRADE,') ;
  sq_Temp_Inventory.SQL.Add('PCSPERLENGTH,') ;
  sq_Temp_Inventory.SQL.Add('SLENGTH,') ;
  sq_Temp_Inventory.SQL.Add('TOT_PCS,') ;
  sq_Temp_Inventory.SQL.Add('TOT_AM3,') ;
  sq_Temp_Inventory.SQL.Add('TOT_NM3,') ;
  sq_Temp_Inventory.SQL.Add('TOT_ALPM,') ;
  sq_Temp_Inventory.SQL.Add('TOT_MFBM,') ;
  sq_Temp_Inventory.SQL.Add('TOT_KVM,') ;
  sq_Temp_Inventory.SQL.Add('ATHICK,') ;
  sq_Temp_Inventory.SQL.Add('AWIDTH,') ;
  sq_Temp_Inventory.SQL.Add('ALENGTH,') ;
  sq_Temp_Inventory.SQL.Add('PACKAGETYPENO,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('PRODUCTLENGTHNO,') ;
  sq_Temp_Inventory.SQL.Add('PCS_PER_LENGTH)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;

  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('CASE WHEN RTRIM(LIP.LogicalInventoryName) = RTRIM(Cy.CityName) THEN Cy.CityName ') ;
  sq_Temp_Inventory.SQL.Add('ELSE RTRIM(Cy.CityName)  +'+QuotedStr(' / ')+'+ RTRIM(LIP.LogicalInventoryName) END AS INVENTORY,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('(Select TOP 1 PC.PackageCodeNo FROM dbo.PkgVarCode PC WHERE PC.PackageTypeNo = pt.PackageTypeNo) AS PackageCodeNo,') ;

  sq_Temp_Inventory.SQL.Add('(Select TOP 1 PC.PackageMainCode FROM dbo.PkgVarCode PC WHERE PC.PackageTypeNo = pt.PackageTypeNo) AS PackageMainCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('(Select count(*) from PackageNumber pn2 WHERE pn2.PackageTypeNo = pt.PackageTypeNo AND pn2.SupplierCode ') ;
  sq_Temp_Inventory.SQL.Add('= pn.SupplierCode AND pn2.LogicalInventoryPointNo = lip.LogicalInventoryPointNo AND pn2.Status = 1) AS NOOFPKGS,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces AS PCSPERPKG,') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp,') ;
  sq_Temp_Inventory.SQL.Add('bc.BarCode,') ;
  sq_Temp_Inventory.SQL.Add('SPE.SpeciesName, ') ;
  sq_Temp_Inventory.SQL.Add('SUR.SurfacingName, ') ;
  sq_Temp_Inventory.SQL.Add('Gr.GradeName,') ;
  sq_Temp_Inventory.SQL.Add('PTL.PcsPerLength,') ;

  sq_Temp_Inventory.SQL.Add('CASE WHEN '+IntToStr(peLengthFormat.Itemindex) +' = 0 THEN RTRIM(CONVERT(varchar(10), pdl.ActualLengthMM)) +'+QuotedStr(' Amm')) ;
  sq_Temp_Inventory.SQL.Add(' WHEN '+IntToStr(peLengthFormat.Itemindex) +' = 1 THEN RTRIM(CONVERT(varchar(10), pdl.NominalLengthMM)) +'+QuotedStr(' Nmm')) ;
  sq_Temp_Inventory.SQL.Add(' WHEN '+IntToStr(peLengthFormat.Itemindex) +' = 2 THEN ') ;
  sq_Temp_Inventory.SQL.Add(' CASE WHEN RTRIM( pdl.ActualLengthINCH) > '+QuotedStr(' ')+' THEN ') ;
  sq_Temp_Inventory.SQL.Add('   RTRIM(CONVERT(varchar(10), pdl.ActualLengthINCH))+'+QuotedStr(' inch')) ;
  sq_Temp_Inventory.SQL.Add('  ELSE ') ;
  sq_Temp_Inventory.SQL.Add('  CASE WHEN pdl.NominalLengthFEET > 0 THEN ') ;
  sq_Temp_Inventory.SQL.Add('  RTRIM(CONVERT(varchar(10), pdl.NominalLengthFEET)) +'+QuotedStr('  feet')) ;
  sq_Temp_Inventory.SQL.Add('  ELSE ') ;
  sq_Temp_Inventory.SQL.Add(' RTRIM(CONVERT(varchar(10), pdl.ActualLengthMM))+'+QuotedStr(' Amm')+'  END') ;
  sq_Temp_Inventory.SQL.Add('  END ') ;

  sq_Temp_Inventory.SQL.Add('  END AS SLENGTH, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.NoOfPieces) AS TOT_PCS, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.m3Actual)  AS TOT_AM3, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.m3Nominal) AS TOT_NM3, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.LinealMeterActualLength) AS TOT_ALPM, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.MFBMNominal) AS TOT_MFBM, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.SQMofActualWidth) AS TOT_KVM, ') ;


  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pt.PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo,') ;
  sq_Temp_Inventory.SQL.Add('ptd.NoOfPieces') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;


  sq_Temp_Inventory.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType') ;
  sq_Temp_Inventory.SQL.Add('AND wt.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;

  if peSalesRegion.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]))) ;

  if pePhysicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND pip.PhyInvPointnameNo = '+IntToStr(integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]))) ;

  if peLogicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(mtSpeciesSpeciesNo.AsInteger)) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtImp.First ;
  if mtImp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtImp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ProductCategoryNo = '+IntToStr(mtIMPImpNo.AsInteger)) ;
    mtImp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSurfacing.First ;
  if mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(mtSurfacingSurfacingNo.AsInteger)) ;
    mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtGrade.First ;
  if mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(mtGradeGradeNo.AsInteger)) ;
    mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mt_BarCode.First ;
  if mt_BarCode.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_BarCode.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.BarCodeID = '+IntToStr(BarCodeNo.AsInteger)) ;
    mt_BarCode.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mt_GradeStamp.First ;
  if mt_GradeStamp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_GradeStamp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.GradeStamp = '+IntToStr(GradeStampNo.AsInteger)) ;
    mt_GradeStamp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;



  x:= 1 ;
  mtActThick.First ;
  if mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(mtActThickThickness.AsFloat))) ;
    mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtAWidthMM.First ;
  if mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(mtAWidthMMWidth.AsFloat))) ;
    mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtActLengthMM.First ;
  if mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PDL.ActualLengthMM = '+ReplaceCommas(FloatToStr(mtActLengthMMActLengthMM.AsFloat))) ;
    mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;




  sq_Temp_Inventory.SQL.Add('GROUP BY pt.PackageTypeNo, PTL.STD_Length, PTL.PcsPerLength,  ') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo, pd.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM, ') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM, pdl.NominalLengthMM, pdl.NominalLengthFEET, pdl.ActualLengthINCH,  ') ;
  sq_Temp_Inventory.SQL.Add('lip.LogicalInventoryPointNo, pt.TotalNoOfPieces, pn.SupplierCode, ') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp, bc.BarCode, SPE.SpeciesName, SUR.SurfacingName, Gr.GradeName, ') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName, LIP.LogicalInventoryName, ptd.NoOfPieces ') ;
//  if ThisUser.UserID = 8 then    sq_Temp_Inventory.SQL.SaveToFile('sq_INV_BY_PKGTYPE.txt');
  Try
  sq_Temp_Inventory.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.MakePkgByPkgCODE_SQL_II (Sender: TObject) ;
Var Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

   Try
  sq_Temp_Inventory.SQL.Add('DELETE dbo.INV_BY_PKGTYPE') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.INV_BY_PKGTYPE') ;
  sq_Temp_Inventory.SQL.Add('(UserID,') ;

  sq_Temp_Inventory.SQL.Add('INVENTORY,') ;
  sq_Temp_Inventory.SQL.Add('SUPPCODE,') ;
  sq_Temp_Inventory.SQL.Add('INTERN_CODE,') ;
  sq_Temp_Inventory.SQL.Add('EXTERN_CODE,') ;
  sq_Temp_Inventory.SQL.Add('PRODUCT,') ;
  sq_Temp_Inventory.SQL.Add('NOOFPKGS,') ;
  sq_Temp_Inventory.SQL.Add('PCSPERPKG,') ;

  sq_Temp_Inventory.SQL.Add('GRADESTAMP,') ;
  sq_Temp_Inventory.SQL.Add('BARCODE,') ;
  sq_Temp_Inventory.SQL.Add('SPECIES,') ;

  sq_Temp_Inventory.SQL.Add('SURFACING,') ;
  sq_Temp_Inventory.SQL.Add('GRADE,') ;
  sq_Temp_Inventory.SQL.Add('PCSPERLENGTH,') ;
  sq_Temp_Inventory.SQL.Add('SLENGTH,') ;
  sq_Temp_Inventory.SQL.Add('TOT_PCS,') ;
  sq_Temp_Inventory.SQL.Add('TOT_AM3,') ;
  sq_Temp_Inventory.SQL.Add('TOT_NM3,') ;
  sq_Temp_Inventory.SQL.Add('TOT_ALPM,') ;
  sq_Temp_Inventory.SQL.Add('TOT_MFBM,') ;
  sq_Temp_Inventory.SQL.Add('TOT_KVM,') ;
  sq_Temp_Inventory.SQL.Add('ATHICK,') ;
  sq_Temp_Inventory.SQL.Add('AWIDTH,') ;
  sq_Temp_Inventory.SQL.Add('ALENGTH,') ;
  sq_Temp_Inventory.SQL.Add('PACKAGETYPENO,') ;
  sq_Temp_Inventory.SQL.Add('STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('PRODUCTLENGTHNO,') ;
  sq_Temp_Inventory.SQL.Add('PCS_PER_LENGTH)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;

  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('CASE WHEN RTRIM(LIP.LogicalInventoryName) = RTRIM(Cy.CityName) THEN Cy.CityName ') ;
  sq_Temp_Inventory.SQL.Add('ELSE RTRIM(Cy.CityName)  +'+QuotedStr(' / ')+'+ RTRIM(LIP.LogicalInventoryName) END AS INVENTORY,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('(Select TOP 1 PC.PackageCodeNo FROM dbo.PkgVarCode PC WHERE PC.PkgCodePPNo = pt.Shrinkwrap) AS PackageCodeNo,') ;

  sq_Temp_Inventory.SQL.Add('(Select TOP 1 PC.PackageMainCode FROM dbo.PkgVarCode PC WHERE PC.PkgCodePPNo = pt.ShrinkWrap) AS PackageMainCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('Count(pn.PackageNo) AS NOOFPKGS,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces AS PCSPERPKG,') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp,') ;
  sq_Temp_Inventory.SQL.Add('bc.BarCode,') ;
  sq_Temp_Inventory.SQL.Add('SPE.SpeciesName, ') ;
  sq_Temp_Inventory.SQL.Add('SUR.SurfacingName, ') ;
  sq_Temp_Inventory.SQL.Add('Gr.GradeName,') ;
  sq_Temp_Inventory.SQL.Add('PTL.PcsPerLength,') ;

  sq_Temp_Inventory.SQL.Add('CASE WHEN '+IntToStr(peLengthFormat.Itemindex) +' = 0 THEN RTRIM(CONVERT(varchar(10), pdl.ActualLengthMM)) +'+QuotedStr(' Amm')) ;
  sq_Temp_Inventory.SQL.Add(' WHEN '+IntToStr(peLengthFormat.Itemindex) +' = 1 THEN RTRIM(CONVERT(varchar(10), pdl.NominalLengthMM)) +'+QuotedStr(' Nmm')) ;
  sq_Temp_Inventory.SQL.Add(' WHEN '+IntToStr(peLengthFormat.Itemindex) +' = 2 THEN ') ;
  sq_Temp_Inventory.SQL.Add(' CASE WHEN RTRIM( pdl.ActualLengthINCH) > '+QuotedStr(' ')+' THEN ') ;
  sq_Temp_Inventory.SQL.Add('   RTRIM(CONVERT(varchar(10), pdl.ActualLengthINCH))+'+QuotedStr(' inch')) ;
  sq_Temp_Inventory.SQL.Add('  ELSE ') ;
  sq_Temp_Inventory.SQL.Add('  CASE WHEN pdl.NominalLengthFEET > 0 THEN ') ;
  sq_Temp_Inventory.SQL.Add('  RTRIM(CONVERT(varchar(10), pdl.NominalLengthFEET)) +'+QuotedStr('  feet')) ;
  sq_Temp_Inventory.SQL.Add('  ELSE ') ;
  sq_Temp_Inventory.SQL.Add(' RTRIM(CONVERT(varchar(10), pdl.ActualLengthMM))+'+QuotedStr(' Amm')+'  END') ;
  sq_Temp_Inventory.SQL.Add('  END ') ;

  sq_Temp_Inventory.SQL.Add('  END AS SLENGTH, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.NoOfPieces) AS TOT_PCS, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.m3Actual)  AS TOT_AM3, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.m3Nominal) AS TOT_NM3, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.LinealMeterActualLength) AS TOT_ALPM, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.MFBMNominal) AS TOT_MFBM, ') ;
  sq_Temp_Inventory.SQL.Add('  SUM(ptd.SQMofActualWidth) AS TOT_KVM, ') ;


  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM,') ;
  sq_Temp_Inventory.SQL.Add('pt.Shrinkwrap AS PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo,') ;
  sq_Temp_Inventory.SQL.Add('ptd.NoOfPieces') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.Packagecode_printparams pp on pp.PkgCodePPNo = pt.Shrinkwrap') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.productLength PDL ON PDL.ProductLengthNo = ptd.ProductLengthNo') ;

//  sq_Temp_Inventory.SQL.Add('Left Outer Join dbo.PkgVarCode PC ON PC.PackageTypeNo = pt.PackageTypeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;


  sq_Temp_Inventory.SQL.Add('Inner Join dbo.City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType') ;
  sq_Temp_Inventory.SQL.Add('AND wt.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;

  if peSalesRegion.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]))) ;

  if pePhysicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND pip.PhyInvPointnameNo = '+IntToStr(integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]))) ;

  if peLogicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(mtSpeciesSpeciesNo.AsInteger)) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtImp.First ;
  if mtImp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtImp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ProductCategoryNo = '+IntToStr(mtIMPImpNo.AsInteger)) ;
    mtImp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtSurfacing.First ;
  if mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(mtSurfacingSurfacingNo.AsInteger)) ;
    mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtGrade.First ;
  if mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(mtGradeGradeNo.AsInteger)) ;
    mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mt_BarCode.First ;
  if mt_BarCode.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_BarCode.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.BarCodeID = '+IntToStr(BarCodeNo.AsInteger)) ;
    mt_BarCode.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mt_GradeStamp.First ;
  if mt_GradeStamp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_GradeStamp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.GradeStamp = '+IntToStr(GradeStampNo.AsInteger)) ;
    mt_GradeStamp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;



  x:= 1 ;
  mtActThick.First ;
  if mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(mtActThickThickness.AsFloat))) ;
    mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtAWidthMM.First ;
  if mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(mtAWidthMMWidth.AsFloat))) ;
    mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtActLengthMM.First ;
  if mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PDL.ActualLengthMM = '+ReplaceCommas(FloatToStr(mtActLengthMMActLengthMM.AsFloat))) ;
    mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;




  sq_Temp_Inventory.SQL.Add('GROUP BY pt.Shrinkwrap, PTL.STD_Length, PTL.PcsPerLength,  ') ;
  sq_Temp_Inventory.SQL.Add('PDL.ProductLengthNo, pd.ProductDisplayName, pg.ActualThicknessMM, pg.ActualWidthMM, ') ;
  sq_Temp_Inventory.SQL.Add('pdl.ActualLengthMM, pdl.NominalLengthMM, pdl.NominalLengthFEET, pdl.ActualLengthINCH,  ') ;
  sq_Temp_Inventory.SQL.Add('lip.LogicalInventoryPointNo, pt.TotalNoOfPieces, pn.SupplierCode, ') ;
  sq_Temp_Inventory.SQL.Add('gs.GradeStamp, bc.BarCode, SPE.SpeciesName, SUR.SurfacingName, Gr.GradeName, ') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName, LIP.LogicalInventoryName, ptd.NoOfPieces ') ;
//  if ThisUser.UserID = 8 then sq_Temp_Inventory.SQL.SaveToFile('sq_INV_BY_PKGTYPE_II.txt');
  Try
  sq_Temp_Inventory.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.RemoveSpeciesClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtSpecies.Delete ;
 End ;
end;

procedure TfrmInventoryReport.ClearSpeciesClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtSpecies.Active:= False ;
   mtSpecies.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.AddSpeciesClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtSpecies.Insert ;
 End ;
end;

procedure TfrmInventoryReport.AddGradeClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtGrade.Insert ;
 End ;
end;

procedure TfrmInventoryReport.RemoveGradeClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtGrade.Delete ;
 End ;
end;

procedure TfrmInventoryReport.ClearGradeClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtGrade.Active:= False ;
  mtGrade.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.AddSurfacingClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtSurfacing.Insert ;
 End ;
end;

procedure TfrmInventoryReport.RemoveSurfacingClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtSurfacing.Delete ;
 End ;
end;

procedure TfrmInventoryReport.ClearSurfacingClick(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtSurfacing.Active:= False ;
  mtSurfacing.Active:= True ;  
 End ;
end;

procedure TfrmInventoryReport.AddLengthClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtActLengthMM.Insert ;
 End ;
end;

procedure TfrmInventoryReport.RemoveLengthClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtActLengthMM.Delete ;
 End ;
end;

procedure TfrmInventoryReport.ClearLengthsClick(Sender: TObject);
begin
 With dmInventory do
 Begin
   mtActLengthMM.Active:= False ;
   mtActLengthMM.Active:= True ;   
 End ;
end;

procedure TfrmInventoryReport.Add2Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mt_BarCode.Insert ;
 End ;
end;

procedure TfrmInventoryReport.Remove2Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mt_BarCode.Delete ;
 End ;
end;

procedure TfrmInventoryReport.Clear2Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mt_BarCode.Active:= False ;
  mt_BarCode.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.ADD3Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mt_GradeStamp.Insert ;
 End ;
end;

procedure TfrmInventoryReport.Remove3Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mt_GradeStamp.Delete ;
 End ;
end;

procedure TfrmInventoryReport.Clear3Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mt_GradeStamp.Active:= False ;
  mt_GradeStamp.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.MakePkgNoList (Sender: TObject);
Var Save_Cursor:TCursor;
    x: Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try

 With dmInventory do
 Begin
  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;

  Try
  sq_Temp_Inventory.SQL.Add('DELETE dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('WHERE') ;
  sq_Temp_Inventory.SQL.Add('Spec_UserID = '+IntToStr(ThisUser.UserID)) ;
  sq_Temp_Inventory.ExecSQL(True) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;

  sq_Temp_Inventory.Close ;
  sq_Temp_Inventory.SQL.Clear ;


  sq_Temp_Inventory.SQL.Add('Insert INTO dbo.Inv_By_Pkg') ;
  sq_Temp_Inventory.SQL.Add('(Spec_UserID,') ;
  sq_Temp_Inventory.SQL.Add('Spec_URI,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PhyInvPointName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LogicalInvName,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_OwnerCode,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ProductDisplayName,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('SPEC_ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_TotalNoOfPieces,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_FreeForm,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_1800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_2700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3300,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3600,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_3900,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4200,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4500,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_4800,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5100,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5400,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_5700,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_6000,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_ActualM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_NominalM3,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_LinealMeter,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_MFBMNominal,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SQMofActualWidth,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_CreatedDate,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_IntGrade,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_Species,') ;
  sq_Temp_Inventory.SQL.Add('SPEC_SurfacingName)') ;

  sq_Temp_Inventory.SQL.Add('Select distinct ') ;


  sq_Temp_Inventory.SQL.Add(IntToStr(ThisUser.UserID)+',') ;
  sq_Temp_Inventory.SQL.Add('PTL.STD_Length,') ;
  sq_Temp_Inventory.SQL.Add('pip.PhyInvPointNameNo,') ;
  sq_Temp_Inventory.SQL.Add('Cy.CityName,') ;
  sq_Temp_Inventory.SQL.Add('LIP.LogicalInventoryName,') ;
  sq_Temp_Inventory.SQL.Add('pip.OwnerNo,') ;
  sq_Temp_Inventory.SQL.Add('Verk.ClientCode,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductNo,') ;
  sq_Temp_Inventory.SQL.Add('pd.ProductDisplayName,') ;
  sq_Temp_Inventory.SQL.Add('pt.PackageTypeNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.PackageNo,') ;
  sq_Temp_Inventory.SQL.Add('pn.SupplierCode,') ;

  sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalThicknessMM,') ;
  sq_Temp_Inventory.SQL.Add('pg.NominalWidthMM,') ;
  sq_Temp_Inventory.SQL.Add('pt.TotalNoOfPieces,') ;
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
  sq_Temp_Inventory.SQL.Add('pn.DateCreated,') ;
  sq_Temp_Inventory.SQL.Add('mGr.MainGradeName,') ;
  sq_Temp_Inventory.SQL.Add('SPE.SpeciesName,') ;
  sq_Temp_Inventory.SQL.Add('SUR.SurfacingName') ;


//  sq_Temp_Inventory.SQL.Add('SPE.SpeciesName,') ;
//  sq_Temp_Inventory.SQL.Add('SUR.SurfacingName') ;
//  sq_Temp_Inventory.SQL.Add('SPE.SpeciesNo,') ;
//  sq_Temp_Inventory.SQL.Add('SUR.SurfacingNo,') ;
//  sq_Temp_Inventory.SQL.Add('Gr.GradeNo') ;


  sq_Temp_Inventory.SQL.Add('FROM  dbo.Client Verk') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PhysicalInventoryPoint pip ON pip.OwnerNo = Verk.ClientNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.LogicalInventoryPoint lip ON pip.PhysicalInventoryPointNo = lip.PhysicalInventoryPointNo') ;

  sq_Temp_Inventory.SQL.Add('INNER JOIN dbo.PackageNumber pn ON pn.LogicalInventoryPointNo = lip.LogicalInventoryPointNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageType pt 	ON pt.PackageTypeNo = pn.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.PackageTypeDetail ptd 	ON ptd.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductLength pl 	ON pl.ProductLengthNo = ptd.ProductLengthNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.packageTypeLengths PTL ON PTL.PackageTypeNo = pt.PackageTypeNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.ProductGroup pg ON pg.ProductGroupNo = pd.ProductGroupNo') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Species	SPE	ON SPE.SpeciesNo = pg.SpeciesNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SPE.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Surfacing	SUR	ON SUR.SurfacingNo = pg.SurfacingNo') ;
  sq_Temp_Inventory.SQL.Add('				AND SUR.LanguageCode = 1') ;

  sq_Temp_Inventory.SQL.Add('Inner Join dbo.Grade   	Gr	ON Gr.GradeNo = pd.GradeNo') ;
  sq_Temp_Inventory.SQL.Add('				AND Gr.LanguageCode = 1') ;
  sq_Temp_Inventory.SQL.Add('Inner Join dbo.MainGrade   	mGr	ON mGr.MainGradeNo = Gr.MainGradeNo') ;

  sq_Temp_Inventory.SQL.Add('Inner Join City		Cy	ON Cy.CityNo = pip.PhyInvPointNameNo') ;

  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.Client cl ON cl.ClientNo = pip.OwnerNo') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.GradeStamp gs ON gs.GradeStampNo = pt.GradeStamp') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.BarCode bc ON bc.BarCodeNo = pt.BarCodeID') ;
  sq_Temp_Inventory.SQL.Add('LEFT OUTER JOIN dbo.WrapType wt ON wt.WrapTypeNo = pt.WrapType') ;

  sq_Temp_Inventory.SQL.Add('WHERE pn.Status = 1') ;
  sq_Temp_Inventory.SQL.Add('AND PIP.SequenceNo = 1 AND LIP.SequenceNo = 1') ;

  if peSalesRegion.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.SalesRegionNo = '+IntToStr(integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]))) ;

  if pePhysicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND pip.PhyInvPointnameNo = '+IntToStr(integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]))) ;

  if peLogicalInventory.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND LIP.LogicalInventoryPointNo = '+IntToStr(integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]))) ;


  if peSupplier.Text <> 'ALL' then
  sq_Temp_Inventory.SQL.Add('AND Verk.ClientNo  = '+IntToStr(integer(peSupplier.Items.Objects[peSupplier.ItemIndex]))) ;

  x:= 1 ;
  mtSpecies.First ;
  if mtSpecies.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSpecies.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SpeciesNo = '+IntToStr(mtSpeciesSpeciesNo.AsInteger)) ;
    mtSpecies.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtImp.First ;
  if mtImp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtImp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ProductCategoryNo = '+IntToStr(mtIMPImpNo.AsInteger)) ;
    mtImp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtSurfacing.First ;
  if mtSurfacing.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtSurfacing.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.SurfacingNo = '+IntToStr(mtSurfacingSurfacingNo.AsInteger)) ;
    mtSurfacing.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtGrade.First ;
  if mtGrade.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtGrade.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pd.GradeNo = '+IntToStr(mtGradeGradeNo.AsInteger)) ;
    mtGrade.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mt_BarCode.First ;
  if mt_BarCode.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_BarCode.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.BarCodeID = '+IntToStr(BarCodeNo.AsInteger)) ;
    mt_BarCode.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mt_GradeStamp.First ;
  if mt_GradeStamp.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mt_GradeStamp.Eof do
   Begin
    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PT.GradeStamp = '+IntToStr(GradeStampNo.AsInteger)) ;
    mt_GradeStamp.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;


  x:= 1 ;
  mtActThick.First ;
  if mtActThick.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActThick.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualThicknessMM = '+ReplaceCommas(FloatToStr(mtActThickThickness.AsFloat))) ;
    mtActThick.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtAWidthMM.First ;
  if mtAWidthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtAWidthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('pg.ActualWidthMM = '+ReplaceCommas(FloatToStr(mtAWidthMMWidth.AsFloat))) ;
    mtAWidthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  x:= 1 ;
  mtActLengthMM.First ;
  if mtActLengthMM.RecordCount > 0 then
  Begin
   sq_Temp_Inventory.SQL.Add(' AND (') ;
   while not mtActLengthMM.Eof do
   Begin

    if x>1 then sq_Temp_Inventory.SQL.Add(' OR ') ;
    sq_Temp_Inventory.SQL.Add('PL.ActualLengthMM = '+ReplaceCommas(FloatToStr(mtActLengthMMActLengthMM.AsFloat))) ;
    mtActLengthMM.Next ;
    x:= succ(x) ;
   End ;
    sq_Temp_Inventory.SQL.Add(' ) ') ;
  End ;

  if cbShowSingleLengthPkgs.Checked then
    sq_Temp_Inventory.SQL.Add('and 1= (Select Count(PackageTypeNo) From PackageTypeDetail WHERE PackageTypeNo = ptd.PackageTypeNo)') ;

  if ccAvgLengthRegPkt.Checked then
   sq_Temp_Inventory.SQL.Add('and pn.AvgLengthType > 1') ;    

//  if thisuser.UserID = 8 then  sq_Temp_Inventory.SQL.SaveToFile('sq_PKGNOLIST.txt');
  Try
  sq_Temp_Inventory.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 End ; //with

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;

end;

procedure TfrmInventoryReport.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then begin
    Key := #0;
//    if (Sender is TdxdBGrid) then
  //    TdxdBGrid(Sender).Perform(WM_KeyDown,VK_Tab,0)
    //else
      Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TfrmInventoryReport.SaveFilterSettings (Sender: TObject) ;
begin
 With dmInventory do
 Begin
  if mtIMP.State in [dsInsert, dsEdit] then mtIMP.Post ;
  if mtSpecies.State in [dsInsert, dsEdit] then mtSpecies.Post ;
  if mtSurfacing.State in [dsInsert, dsEdit] then mtSurfacing.Post ;
  if mtGrade.State in [dsInsert, dsEdit] then mtGrade.Post ;
  if mt_GradeStamp.State in [dsInsert, dsEdit] then mt_GradeStamp.Post ;
  if mt_BarCode.State in [dsInsert, dsEdit] then mt_BarCode.Post ;

  FilterString:= 'Lagerställe: '+pePhysicalInventory.Text ;
  FilterString:= FilterString +' Grupp:'+ peLogicalInventory.Text ;

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

  if mtIMP.RecordCount > 0 then
   FilterString := FilterString+' IMP: ' ;
  mtIMP.First ;
  While not mtIMP.Eof do
  Begin
   FilterString := FilterString + Trim(mtIMPImp.AsString)+', ' ;
   mtIMP.Next ;
  End ;

  if mt_GradeStamp.RecordCount > 0 then
   FilterString := FilterString+' Stamp: ' ;
  mt_GradeStamp.First ;
  While not mt_GradeStamp.Eof do
  Begin
   FilterString := FilterString + Trim(GradeStampName.AsString)+', ' ;
   mt_GradeStamp.Next ;
  End ;

  if mt_BarCode.RecordCount > 0 then
   FilterString := FilterString+' Streckkod: ' ;
  mt_BarCode.First ;
  While not mt_BarCode.Eof do
  Begin
   FilterString := FilterString + Trim(BarCodeName.AsString)+', ' ;
   mt_BarCode.Next ;
  End ;

  if cbShowSingleLengthPkgs.Checked then
   FilterString := FilterString + ' Endast LP paket ' ;

  if ccAvgLengthRegPkt.Checked then
   FilterString := FilterString + ' Endast ML-Reg.paket ' ;

 End ; //with
End ;

procedure TfrmInventoryReport.lbHideFilterPanelClick(Sender: TObject);
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

procedure TfrmInventoryReport.grdSpeciesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 With dmInventory do
 Begin
   mtSpecies.Active:= False ;
   mtSpecies.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.grdGradeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 With dmInventory do
 Begin
   mtGrade.Active:= False ;
   mtGrade.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.grdSurfacingKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 With dmInventory do
 Begin
   mtSurfacing.Active:= False ;
   mtSurfacing.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.grdBarCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 With dmInventory do
 Begin
  mt_BarCode.Active:= False ;
  mt_BarCode.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.grdGradeStampKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 With dmInventory do
 Begin
  mt_GradeStamp.Active:= False ;
  mt_GradeStamp.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.acPkgNoExecute(Sender: TObject);
begin
 CleanDimensionFilter (Sender) ;
// if (dmInventory.FilterChanged) or (Vol_By_PkgNo = False) then
// Begin
  MakePkgNo_SQL(Sender) ;
//  Vol_By_PkgNo:= True ;
// End ;


 if not InitiateReport('INV_BY_PKGNo.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);

 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acPcsByLengthExecute(Sender: TObject);
begin
 CleanDimensionFilter (Sender) ;
 SaveFilterSettings (Sender) ;
// if (dmInventory.FilterChanged) or (Vol_By_Length_Gen = False) then
// Begin
  MakeSQL_VolByLength (Sender) ;
//  Vol_By_Length_Gen:= True ;
// End ;

 if not InitiateReport('INV_BY_LENGTH.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acPkgCodeExecute(Sender: TObject);
begin
 CleanDimensionFilter (Sender) ;
// if (dmInventory.FilterChanged) or (Vol_By_PkgCode = False) or (peLengthFormat.ItemIndex <> OLD_peLengthFormat) then
// Begin
  MakePkgByPkgCODE_SQL_II(Sender) ;
//  Vol_By_PkgCode:= True ;
  OLD_peLengthFormat:= peLengthFormat.ItemIndex ;
// End ;

 if not InitiateReport('INV_BY_PKG_CODE.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acPkgNoListExecute(Sender: TObject);
begin
 CleanDimensionFilter (Sender) ;
// if (dmInventory.FilterChanged) or (Vol_By_PkgNo = False) then
// Begin
  MakePkgNoList (Sender) ;
//  Vol_By_PkgNo:= True ;
// End ;

 if not InitiateReport('PKGNOLIST_I.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acPkgSummaryExecute(Sender: TObject);
begin
 CleanDimensionFilter (Sender) ;
// if (dmInventory.FilterChanged) or (Vol_By_PkgNo = False) then
// Begin
  MakePkgNo_SQL(Sender) ;
//  Vol_By_PkgNo:= True ;
// End ;


 if not InitiateReport('INV_BY_PKGNo_Summ.RPT') then Exit ;
 report.ParameterFields.Item[1].AddCurrentValue(ThisUser.UserID);
 CRViewer91.ReportSource:= Report ;
 CRViewer91.ViewReport ;
end;

procedure TfrmInventoryReport.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfrmInventoryReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 SaveUserProps(Self.Name) ;
{ with TIniFile.Create(dmsConnector.InifilesMap+'VisInventoryReport'+'.'+ThisUser.UserName) do
 try
   WriteInteger ('Inventory', 'SalesRegionNo', integer(peSalesRegion.Items.Objects[peSalesRegion.ItemIndex]));
   WriteInteger ('Inventory', 'SupplierNo', integer(peSupplier.Items.Objects[peSupplier.ItemIndex]));
   WriteInteger ('Inventory', 'PIP', integer(pePhysicalInventory.Items.Objects[pePhysicalInventory.ItemIndex]));
   WriteInteger ('Inventory', 'LIP', integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]));

 Finally
  Free ;
 End ; }

 With dmInventory do
 Begin
  mtIMP.Active:= False ;
  mtSpecies.Active:= False ;
  mtGrade.Active:= False ;

  mtSurfacing.Active:= False ;
  mtActThick.Active:= False ;
  mtAWidthMM.Active:= False ;
  mtActLengthMM.Active:= False ;
  mt_BarCode.Active:= False ;
  mt_GradeStamp.Active:= False ;
 End ;
  
 CanClose := True ;
end;

procedure TfrmInventoryReport.Lggtill1Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtImp.Insert ;
 End ;
end;

procedure TfrmInventoryReport.abort1Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtImp.Delete ;
 End ;
end;


procedure TfrmInventoryReport.Rensa1Click(Sender: TObject);
begin
 With dmInventory do
 Begin
  mtImp.Active:= False ;
  mtImp.Active:= True ;
 End ;
end;

procedure TfrmInventoryReport.grdImpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = VK_DELETE) then
 With dmInventory do
 Begin
  mtImp.Active:= False ;
  mtImp.Active:= True ;
 End ;
end;

End.


