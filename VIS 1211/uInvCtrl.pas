unit uInvCtrl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, dxBar, ImgList, dxBarExtItems, ExtCtrls, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, StdCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  dxDBEdtr, dxDBTLCl, dxGrClms, DB, Buttons, SqlTimSt,
  Grids, DBGrids, VidaType, cxPC, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxMemo ;

type
  TfInvCtrl = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    imglistActions: TImageList;
    acExit: TAction;
    lbExit: TdxBarLargeButton;
    Panel1: TPanel;
    eGrpNp: TdxDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    acNew: TAction;
    Label5: TLabel;
    leVerk: TdxDBLookupEdit;
    lbNew: TdxBarLargeButton;
    acSave: TAction;
    lbSpara: TdxBarLargeButton;
    acSearch: TAction;
    lbSearch: TdxBarLargeButton;
    acCancelUpdate: TAction;
    lbCancelUpdates: TdxBarLargeButton;
    dxPageControl1: TcxPageControl;
    tsSkapaKontrollistor: TcxTabSheet;
    acGenInvLists: TAction;
    lbGenInvList: TdxBarLargeButton;
    grdInvCtrl_LG: TdxDBGrid;
    bbSkrivEn: TBitBtn;
    grdInvCtrl_LGIC_grpno: TdxDBGridMaskColumn;
    grdInvCtrl_LGLogicalInventoryName: TdxDBGridMaskColumn;
    grdInvCtrl_LGInventeringsMetod: TdxDBGridMaskColumn;
    acDelete: TAction;
    lbDelete: TdxBarLargeButton;
    dxDBCheckEdit1: TdxDBCheckEdit;
    tsUnregisteredPackages: TcxTabSheet;
    leStatus: TdxDBLookupEdit;
    grdInvCtrl_LGMETOD: TdxDBGridLookupColumn;
    bbGenInvLista: TBitBtn;
    acPrintOne: TAction;
    acGenFinalList: TAction;
    Label4: TLabel;
    bLikaSomInvDatum: TButton;
    acAvRegPkt: TAction;
    acPaRegPkt: TAction;
    acAndraPkt: TAction;
    Panel8: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    grdLagerStallen: TdxDBGrid;
    grdLagerStallenLAGERSTALLE: TdxDBGridLookupColumn;
    grdLagerStallenIC_grpno: TdxDBGridMaskColumn;
    grdLagerStallenPhysicalInventoryPointNo: TdxDBGridMaskColumn;
    PanelLagerStalle: TPanel;
    bbHamtaAlla: TBitBtn;
    bbTaBortLagerStalle: TBitBtn;
    bbAddLagerStalle: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    grdMetod: TdxDBGrid;
    grdMetodLogicalInventoryName: TdxDBGridMaskColumn;
    grdMetodMetod: TdxDBGridLookupColumn;
    grdMetodOwnerName: TdxDBGridMaskColumn;
    grdMetodIC_grpNo: TdxDBGridMaskColumn;
    grdMetodLogicalInventoryPointNo: TdxDBGridMaskColumn;
    grdMetodInventeringsMetod: TdxDBGridMaskColumn;
    PanelLagerGrupp: TPanel;
    bbGetInvGroups: TBitBtn;
    bbTaBortLagerGrupp: TBitBtn;
    pAndraPaket: TPanel;
    bbAvregistreraPaket: TBitBtn;
    bbPaRegistreraPaket: TBitBtn;
    bbAndraPaket: TBitBtn;
    eNoOfPkgs: TdxEdit;
    lPaket: TLabel;
    Label7: TLabel;
    bbNastaSteg: TBitBtn;
    deMaxDatum: TcxDBDateEdit;
    deInventeringsDatum: TcxDBDateEdit;
    tsDeRegisteredPackages: TcxTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    tsChangedPackages: TcxTabSheet;
    grdAvregDBTableView1: TcxGridDBTableView;
    grdAvregLevel1: TcxGridLevel;
    grdAvreg: TcxGrid;
    tsSkapaLagerListor: TcxTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    grdAvregDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdAvregDBTableView1PackageNo: TcxGridDBColumn;
    grdAvregDBTableView1SupplierCode: TcxGridDBColumn;
    grdAvregDBTableView1Operation: TcxGridDBColumn;
    grdAvregDBTableView1DateCreated: TcxGridDBColumn;
    acAvRegPkg: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    acPaRegPkg: TAction;
    grdPaRegPkgDBTableView1: TcxGridDBTableView;
    grdPaRegPkgLevel1: TcxGridLevel;
    grdPaRegPkg: TcxGrid;
    grdPaRegPkgDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdPaRegPkgDBTableView1PackageNo: TcxGridDBColumn;
    grdPaRegPkgDBTableView1SupplierCode: TcxGridDBColumn;
    grdPaRegPkgDBTableView1Operation: TcxGridDBColumn;
    grdPaRegPkgDBTableView1DateCreated: TcxGridDBColumn;
    bbGenFinalList: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    tsPkgsShippedBeforeMaxDate: TcxTabSheet;
    Panel11: TPanel;
    acAngraAvRegPkg: TAction;
    cbEgenSupplierCode: TCheckBox;
    cbEgenSupplierCode2: TCheckBox;
    acAngraPaRegPkg: TAction;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    grdLevPktDBTableView1: TcxGridDBTableView;
    grdLevPktLevel1: TcxGridLevel;
    grdLevPkt: TcxGrid;
    acGetPkgDelivered: TAction;
    BitBtn7: TBitBtn;
    tsInleveranser: TcxTabSheet;
    Panel12: TPanel;
    BitBtn8: TBitBtn;
    acGetInLeveranser: TAction;
    grdInLevDBTableView1: TcxGridDBTableView;
    grdInLevLevel1: TcxGridLevel;
    grdInLev: TcxGrid;
    grdInLevDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdInLevDBTableView1PackageNo: TcxGridDBColumn;
    grdInLevDBTableView1SupplierCode: TcxGridDBColumn;
    grdInLevDBTableView1Operation: TcxGridDBColumn;
    grdInLevDBTableView1DateCreated: TcxGridDBColumn;
    grdLevPktDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdLevPktDBTableView1PackageNo: TcxGridDBColumn;
    grdLevPktDBTableView1SupplierCode: TcxGridDBColumn;
    grdLevPktDBTableView1Operation: TcxGridDBColumn;
    grdLevPktDBTableView1DateCreated: TcxGridDBColumn;
    tsProduced: TcxTabSheet;
    Panel13: TPanel;
    BitBtn9: TBitBtn;
    acGetProduction: TAction;
    grdPrdDBTableView1: TcxGridDBTableView;
    grdPrdLevel1: TcxGridLevel;
    grdPrd: TcxGrid;
    grdPrdDBTableView1IC_GrpNo: TcxGridDBColumn;
    grdPrdDBTableView1PackageNo: TcxGridDBColumn;
    grdPrdDBTableView1SupplierCode: TcxGridDBColumn;
    grdPrdDBTableView1Operation: TcxGridDBColumn;
    grdPrdDBTableView1DateCreated: TcxGridDBColumn;
    ds_InvCtrlGrp: TDataSource;
    ds_InvCtrlMetod: TDataSource;
    Memo1: TMemo;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    acPriceList: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    tsSummaryReport: TcxTabSheet;
    Panel14: TPanel;
    BitBtn11: TBitBtn;
    acPrintSummaryReport: TAction;
    ePkgNo: TdxEdit;
    Label10: TLabel;
    acGetNormalAvReg: TAction;
    acRemoveLagerGruppRad: TAction;
    acHamtaAllaLG: TAction;
    acRemoveLagerStalle: TAction;
    acAddLS: TAction;
    acHamtaAllaLS: TAction;
    procedure acExitExecute(Sender: TObject);
    procedure acNewExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acSearchExecute(Sender: TObject);
    procedure leVerkChange(Sender: TObject);
    procedure acCancelUpdateExecute(Sender: TObject);
    procedure acGenInvListsExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acPrintOneExecute(Sender: TObject);
    procedure acGenFinalListExecute(Sender: TObject);
    procedure bLikaSomInvDatumClick(Sender: TObject);
    procedure acAvRegPktExecute(Sender: TObject);
    procedure acAndraPktExecute(Sender: TObject);
    procedure leStatusChange(Sender: TObject);
    procedure bbNastaStegClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdAvregDBTableView1PackageNoPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acAvRegPkgExecute(Sender: TObject);
    procedure acAngraAvRegPkgExecute(Sender: TObject);
    procedure acPaRegPkgExecute(Sender: TObject);
    procedure grdPaRegPkgDBTableView1PackageNoPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbEgenSupplierCode2Click(Sender: TObject);
    procedure cbEgenSupplierCodeClick(Sender: TObject);
    procedure acAngraPaRegPkgExecute(Sender: TObject);
    procedure acGetInLeveranserExecute(Sender: TObject);
    procedure acGetPkgDeliveredExecute(Sender: TObject);
    procedure acGetProductionExecute(Sender: TObject);
    procedure acDeleteUpdate(Sender: TObject);
    procedure ds_InvCtrlGrpDataChange(Sender: TObject; Field: TField);
    procedure ds_InvCtrlMetodDataChange(Sender: TObject; Field: TField);
    procedure acAvRegPktUpdate(Sender: TObject);
    procedure acPaRegPktUpdate(Sender: TObject);
    procedure acAndraPktUpdate(Sender: TObject);
    procedure acAvRegPkgUpdate(Sender: TObject);
    procedure acPaRegPkgUpdate(Sender: TObject);
    procedure acAngraAvRegPkgUpdate(Sender: TObject);
    procedure acAngraPaRegPkgUpdate(Sender: TObject);
    procedure acPriceListExecute(Sender: TObject);
    procedure acGetNormalAvRegExecute(Sender: TObject);
    procedure acPrintSummaryReportExecute(Sender: TObject);
    procedure acPrintSummaryReportUpdate(Sender: TObject);
    procedure acPrintOneUpdate(Sender: TObject);
    procedure acGenFinalListUpdate(Sender: TObject);
    procedure acGenInvListsUpdate(Sender: TObject);
    procedure acRemoveLagerGruppRadExecute(Sender: TObject);
    procedure acRemoveLagerGruppRadUpdate(Sender: TObject);
    procedure acHamtaAllaLGExecute(Sender: TObject);
    procedure acHamtaAllaLGUpdate(Sender: TObject);
    procedure acRemoveLagerStalleExecute(Sender: TObject);
    procedure acAddLSExecute(Sender: TObject);
    procedure acRemoveLagerStalleUpdate(Sender: TObject);
    procedure acAddLSUpdate(Sender: TObject);
    procedure acHamtaAllaLSExecute(Sender: TObject);
    procedure acHamtaAllaLSUpdate(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelUpdateUpdate(Sender: TObject);
    procedure acGetPkgDeliveredUpdate(Sender: TObject);
    procedure acGetInLeveranserUpdate(Sender: TObject);
    procedure acGetProductionUpdate(Sender: TObject);
  private
    { Private declarations }
    EgenLevKod : String3 ;
    procedure PaRegistreraPaketMetod_PktTYP(Sender: TObject);
    procedure AvRegPktMetod_PktTYP(Sender: TObject);
    function  DataInteSparad : Boolean ;
    procedure PrintSammanstallning(Sender: TObject);
    function  InventeringPresent : Boolean;
  public
    { Public declarations }
    procedure Erd ;
    procedure SattKnappStatus ;
  end;

//var fInvCtrl: TfInvCtrl;

implementation

uses dmcInvCtrl, dmsVidaContact, VidaUser, UnitCRViewReport, //UnitRemovePkg, //VidaType,
  dmcVidaSystem, dmcPkgs,
  dmsDataConn, uAndraPkt,
  uEntryField,
  dmsVidaSystem, dmsVidaPkg, //UnitPkgEntry,
  VidaConst, uInvCtrlList , uInvPriceList;

{$R *.dfm}

function TfInvCtrl.InventeringPresent : Boolean;
begin
 With dmInvCtrl do
 Begin
  Result:= cds_InvCtrlMetod.RecordCount > 0 ;
 End ;
End ;                                               

procedure TfInvCtrl.acExitExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfInvCtrl.acNewExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  bbNastaSteg.Enabled:= True ;
  cds_InvCtrlGrp.Insert ;
  cds_InvCtrlGrpVerkNo.AsInteger:= ThisUser.CompanyNo ;

  cds_InvCtrl_LagerStallen.Refresh ;
  cds_InvCtrlMetod.Refresh ;
//  cds_InvCtrl_LG.Refresh ;

  OppnaLagerStallen ;

//  lbCancelUpdates.Enabled:= True ;
  lbNew.Enabled:= False ;
  lbSpara.Enabled:= True ;
  acGenInvLists.Enabled:= False ;
  lbSearch.Enabled:= False ;
  lbDelete.Enabled:= False ;

  cds_InvCtrlGrp.Post ;

//  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then    GetLagerGrupper ;
 End ;
end;

procedure TfInvCtrl.FormCreate(Sender: TObject);
begin
 EgenLevKod:= dmsContact.GetClientCode(ThisUser.CompanyNo) ;
 With dmInvCtrl do
 Begin
  dmInvCtrl:= TdmInvCtrl.Create(Nil);

  OppnaLagerStallen ;

//  cds_InvCtrl_LG.Active:= True ;
  dmsContact.cds_Verk.Active := True ;
  cds_PhysInv.Active:= True ;
  cds_InvCtrlGrp.Active:= True ;
  cds_InvCtrlMetod.Active:= True ;
  cds_InvCtrl_LagerStallen.Active:= True ;
  leStatus.ReadOnly:= True ;
  cds_InvCtrl_Pkgs.Active:= True ;
  cds_InvCtrl_PaReg.Active:= True ;
  cds_InLev.Active:= True ;
  cds_UtLev.Active:= True ;
  cds_GetPrd.Active:= True ;
 End ;
end;

procedure TfInvCtrl.FormDestroy(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  FreeAndNil(dmInvCtrl) ;
 End ;
// fInvCtrl:= Nil ; 
end;

procedure TfInvCtrl.acSaveExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   cds_InvCtrlGrp.Post ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   cds_InvCtrl_LagerStallen.Post ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.ApplyUpdates(0) ;

  if cds_InvCtrlMetod.State in [dsEdit, dsInsert] then
   cds_InvCtrlMetod.Post ;
  if cds_InvCtrlMetod.ChangeCount > 0 then
   cds_InvCtrlMetod.ApplyUpdates(0) ;

  if cds_InvCtrl_Pkgs.State in [dsEdit, dsInsert] then
   cds_InvCtrl_Pkgs.Post ;
  if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   cds_InvCtrl_Pkgs.ApplyUpdates(0) ;

  if cds_InvCtrl_PaReg.State in [dsEdit, dsInsert] then
   cds_InvCtrl_PaReg.Post ;
  if cds_InvCtrl_PaReg.ChangeCount > 0 then
   cds_InvCtrl_PaReg.ApplyUpdates(0) ;

//  lbCancelUpdates.Enabled:= False ;
  lbNew.Enabled:= True ;
  lbSpara.Enabled:= True ;
  lbSearch.Enabled:= True ;
  lbDelete.Enabled:= True ;
//cds_InvCtrl_LG.Refresh ;
 End ;
end;

procedure TfInvCtrl.acSearchExecute(Sender: TObject);
var fInvCtrlList: TfInvCtrlList;
begin
 With dmInvCtrl do
 Begin
  fInvCtrlList:= TfInvCtrlList.Create(Nil) ;
  cds_InvCtrlList.Active:= False ;
  sq_InvCtrlList.ParamByName('VerkNo').AsInteger:= ThisUser.CompanyNo ;
  cds_InvCtrlList.Active:= True ;
  try
   if fInvCtrlList.ShowModal = mrok then
   Begin
    cds_InvCtrlGrp.Active:= False ;
    sq_InvCtrlGrp.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlListIC_grpno.AsInteger ;
    cds_InvCtrlGrp.Active:= True ;
    if cds_InvCtrlGrp.RecordCount > 0 then
     bbNastaSteg.Enabled:= True
      else
       bbNastaSteg.Enabled:= False ;

    cds_InvCtrl_LagerStallen.Refresh ;
    cds_InvCtrlMetod.Refresh ;
//    cds_InvCtrl_LG.Refresh ;
    cds_InvCtrl_Pkgs.Refresh ; //Active:= True ;
    cds_InvCtrl_PaReg.Refresh ;
    cds_InLev.Refresh ;
    cds_UtLev.Refresh ;
    cds_GetPrd.Refresh ;
   End ;
  finally
   cds_InvCtrlList.Active:= False ;
   FreeAndNil(fInvCtrlList) ;
  end;
 End ; //With
end;

procedure TfInvCtrl.leVerkChange(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  OppnaLagerStallen ;
 End ;
end;

procedure TfInvCtrl.acCancelUpdateExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   cds_InvCtrlGrp.Cancel ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.CancelUpdates ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   cds_InvCtrl_LagerStallen.Cancel ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.CancelUpdates ;

  if cds_InvCtrlMetod.State in [dsEdit, dsInsert] then
   cds_InvCtrlMetod.Cancel ;
  if cds_InvCtrlMetod.ChangeCount > 0 then
   cds_InvCtrlMetod.CancelUpdates ;

   cds_InvCtrl_LagerStallen.Refresh ;
   cds_InvCtrlMetod.Refresh ;
//   cds_InvCtrl_LG.Refresh ;

//  lbCancelUpdates.Enabled:= False ;
  lbNew.Enabled:= True ;
//  lbSpara.Enabled:= False ;
  lbSearch.Enabled:= True ;
  lbDelete.Enabled:= True ;
 End ;
end;

procedure TfInvCtrl.acGenInvListsExecute(Sender: TObject);
Const
 LF = #10 ;
var
  Save_Cursor : TCursor;
begin
 //Skapa kontrollistor
 if MessageDlg('Vill du skapa kontrollistor? (tidigare gjorda kontrollistor makuleras)'
 +LF+LF+' Har du valt rätt METOD för resp. Lagergrupp!'
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmInvCtrl do
 Begin
  Try
  acSaveExecute(Sender) ;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  SparaKontrollistor ;

//  cds_InvCtrl_LG.Active:= False ;
//  cds_InvCtrl_LG.Active:= True ;

  cds_InvCtrlGrp.Edit ;
  cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
  cds_InvCtrlGrpStatus.AsInteger := 1 ; //Lagerlistor är genererade
  cds_InvCtrlGrp.Post ;
  acSaveExecute(Sender) ;

  Except
  End ;
 End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfInvCtrl.acDeleteExecute(Sender: TObject);
const
  LF = #10;
begin
 if MessageDlg('Vill du ta bort inventeringen ? '+LF
 +'Alla ändringar gjorda i lagren kvarstår.'
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 With dmInvCtrl do
 Begin
  Try
//   if cds_InvCtrlGrpStatus.AsInteger
   cds_InvCtrlGrp.Delete ;
   cds_InvCtrl_LagerStallen.Active:= False ;
   cds_InvCtrl_LagerStallen.Active:= True ;
   cds_InvCtrl_LagerStallen.Refresh ;
   cds_InvCtrlMetod.Active:= False ;
   cds_InvCtrlMetod.Active:= True ;
   cds_InvCtrlMetod.Refresh ;
//   cds_InvCtrl_LG.Refresh ;
//   cds_InvCtrl_LG.Active:= False ;
//   cds_InvCtrl_LG.Active:= True ;

  Except
  End ;
 End ;

 End ;
end;

procedure TfInvCtrl.acPrintOneExecute(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
//dmInvCtrl.ds_InvCtrlMetod
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmInvCtrl.cds_InvCtrlGrpStatus.AsInteger < 3 then
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InventeringPerPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InventeringPerPktTyp.RPT') ;
 End
 else
 Begin
  if dmInvCtrl.cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
   FormCRViewReport.CreateCo('InvenLagerListaPktNr.RPT')
    else
      FormCRViewReport.CreateCo('InvenLagerListaPktTyp.RPT') ;
 End ;

  if FormCRViewReport.ReportFound then
  Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acGenFinalListExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 //Skapa lager listor
 if MessageDlg('Vill du skapa lagerlistor nu? (tidigare gjorda lagerlistor makuleras)'
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try

 With dmInvCtrl do
 Begin
  Try
   acSaveExecute(Sender) ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

   //Inleveranser, laster som har ett lastdatum mindre än maxdatum
   //och är ankomstregistrerad
   //och finns ej i ICR
   acGetInLeveranserExecute(Sender) ;

   //Lägg till paket producerade efter inventeringsdatum och ej avregistrerat före maxdatum
   acGetProductionExecute(Sender) ;

   //Markera bort paket som är avregistrerade före maxdatum
   acGetNormalAvRegExecute(Sender) ;


   //Markera bort paket som är levererade före maxdatum
   acGetPkgDeliveredExecute(Sender) ;

   SparaLagerListor ;
//   cds_InvCtrl_LG.Active:= False ;
//   cds_InvCtrl_LG.Active:= True ;
  Except
  End ;
 End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;
end;

procedure TfInvCtrl.bLikaSomInvDatumClick(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrp.State in [dsBrowse] then
   cds_InvCtrlGrp.Edit ;
   cds_InvCtrlGrpMaxDatum.AsSQLTimeStamp:= cds_InvCtrlGrpInventeringsDatum.AsSQLTimeStamp ;
 End ;
end;

procedure TfInvCtrl.Erd ;
Begin
 With dmInvCtrl do
 Begin
  Case cds_InvCtrlGrpStatus.AsInteger of
   0 : Begin //Ny
        PanelLagerStalle.Enabled := True ;
        PanelLagerGrupp.Enabled := True ;
//        pAndraPaket.Enabled := False ;
//        bbGenFinalList.Enabled := False ;
        bbAvregistreraPaket.Enabled := False ;
        acGenInvLists.Enabled := False ;
        bbSkrivEn.Enabled:= False ;
        Memo1.Text:= 'Välj lagerställen och lagergrupper att inventera.  Välj maxdatum. Klicka Nästa Steg för att skapa kontrollistor' ;
       End ;
   1 : Begin //Ändra status till 1 och spara, Skapa invlista OK
        PanelLagerStalle.Enabled := False ;
        PanelLagerGrupp.Enabled := False ;
        pAndraPaket.Enabled := False ;
//        bbGenFinalList.Enabled := False ;
        bbAvregistreraPaket.Enabled := False ;
//        bbGenInvLista.Enabled := True ;
        acGenInvLists.Enabled := True ;
        bbSkrivEn.Enabled:= True ;
        Memo1.Text:= 'Skapa kontrollistor och skriv ut dessa. Gå till nästa steg för att av- och påregistrera paket.';
       End ;
   2 : Begin //Ändra status till 2, Paket kan ändras
        PanelLagerStalle.Enabled := False ;
        PanelLagerGrupp.Enabled := False ;
        pAndraPaket.Enabled := True ;
//        bbGenFinalList.Enabled := False ;
        bbAvregistreraPaket.Enabled := True ;
//        bbGenInvLista.Enabled := False ;
        acGenInvLists.Enabled := False ;
        bbSkrivEn.Enabled:= True ;
        Memo1.Text:= 'Av- och påregistrera per lagergrupp. Gå till nästa steg för att skriva ut lagerlistor.';
//LARS        grdMetod.OptionsView:=  [edgoRowSelect] ;
       End ;
   3 : Begin //Ändra status till 3 när ändringar är avslutad, Lagerlista kan skapas
        PanelLagerStalle.Enabled := False ;
        PanelLagerGrupp.Enabled := False ;
        pAndraPaket.Enabled := False ;
        bbGenFinalList.Enabled := True ;
        bbAvregistreraPaket.Enabled := False ;
//        bbGenInvLista.Enabled := False ;
        acGenInvLists.Enabled := False ;
        bbSkrivEn.Enabled:= True ;
        Memo1.Text:= 'Skapa lagerlistor och skriv ut dessa. ' ;
       End ;
   4 : Begin //Inventering klar
        PanelLagerStalle.Enabled := False ;
        PanelLagerGrupp.Enabled := False ;
        pAndraPaket.Enabled := False ;
//        bbGenFinalList.Enabled := False ;
        bbAvregistreraPaket.Enabled := False ;
//        bbGenInvLista.Enabled := False ;
        acGenInvLists.Enabled := False ;
        bbSkrivEn.Enabled:= True ;
        Memo1.Text:= 'Inventeringen är avslutad, generera sammanställning och skriv ut.' ;
       End ;
  End ;
 End ;
End ;

procedure TfInvCtrl.acAvRegPktExecute(Sender: TObject);
begin
 acSaveExecute(Sender) ;
 AvRegPktMetod_PktTYP(Sender) ;
// dmInvCtrl.cds_InvCtrl_LG.Refresh ;
end;

procedure TfInvCtrl.acAndraPktExecute(Sender: TObject);
Var LogicalInventoryPointNo, OwnerNo : Integer ;
    SupplierCode : String3 ;
    TransactionNo : LongWord;
    fAndraPkt: TfAndraPkt;
begin
 acSaveExecute(Sender) ;
 fAndraPkt:= TfAndraPkt.Create(Nil);
 Try
 With fAndraPkt do
 Begin
  WhenCreated:= SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp) ;

  LogicalInventoryPointNo:= dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger ;
//Kolla om det finns fler än en av samma paketnr som är aktiva, om det gör det skall en väljas
  OwnerNo:= dmInvCtrl.Get_PaketetsAgareNo(1 {Status}, StrToInt(Trim(ePkgNo.Text)), SupplierCode,
  PackageTypeNo, LogicalInventoryPointNo) ;
  dmPkgs.SupplierNo:= OwnerNo ;
  fAndraPkt.CreateCo ;

  if OwnerNo > 0 then
  Begin
  //Kolla först att paketet inte är reserverat och lägg det i mtPackage strukturen
   if RemoteEntryPkgNo (Sender, StrToInt(Trim(ePkgNo.Text)),OwnerNo, SupplierCode) = eaAccept then
   Begin
    fAndraPkt.ShowModal ;
    PackageTypeNo:= fAndraPkt.PackageTypeNo ;
    if PackageTypeNo > 0 then
    Begin
     TransactionNo := dmsConnector.StartTransaction;
     try
      dmInvCtrl.SetPkgTypeNo_PktNr(StrToInt(Trim(ePkgNo.Text)),PackageTypeNo, SupplierCode) ;
      dmsConnector.Commit(TransactionNo);
     except
      dmsConnector.Rollback(TransactionNo);
     end;
    End ;

   End ;
  End //if ownerno
   else
    ShowMessage('Paketnr '+Trim(ePkgNo.Text)+' finns inte i lagret') ;
 End ;
 Finally
  FreeAndNil(fAndraPkt) ;
 End ;
end;

procedure TfInvCtrl.PaRegistreraPaketMetod_PktTYP(Sender: TObject);
const
  LF = #10;
Var TransactionNo : LongWord;
    Save_Cursor:TCursor;
    PKT_DESC : AnsiString ;
begin
 if dmsSystem.Get_PkgTypeInfo (StrToInt(Trim(ePkgNo.Text)), PKT_DESC) then
 if MessageDlg('Vill du påregistrera '+eNoOfPkgs.Text+' paket?'+LF
 +PKT_DESC+LF
 +' till lagergrupp: '+Trim(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString)+LF
 +' Datum: '+DatetimeToStr(SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then

 Begin
 dmPkgs:= TdmPkgs.Create(Nil);
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 Try
 With dmPkgs do
 Begin
  SupplierCode:= dmsContact.GetClientCode(dmInvCtrl.cds_InvCtrlGrpVerkNo.AsInteger) ;
  mtLoadPackages.Active:= True ;
  if Preparera_mtLoadPackages (SupplierCode, dmInvCtrl.cds_InvCtrlGrpVerkNo.AsInteger,
  dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
  StrToInt(Trim(ePkgNo.Text)),//PackageTypeno
  StrToInt(eNoOfPkgs.Text)) then
  Begin
  //Spara paket
  TransactionNo := dmsConnector.StartTransaction;
  try
   if AddPkgsByPktType (5,// 5 = InvDiff
   SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp) ) then
   //Change InvCtrlrowPkt antalpaket
      dmInvCtrl.SetNoOfPkgs_PKTTYP (dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString,
      dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
      dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger,
      StrToInt(Trim(eNoOfPkgs.Text)),
      StrToInt(Trim(ePkgNo.Text)),
      dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger) ;

   dmsConnector.Commit(TransactionNo);

  except
   dmsConnector.Rollback(TransactionNo);
   ShowMessage('Påregistrering misslyckades') ;
  end;
 End  //if
  else
   ShowMessage('Påregistrering misslyckades, kolla att valt VERK har en paketnr serie.') ;
 End ; //with
 Finally
  FreeAndNil(dmPkgs) ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ; //if
end;

procedure TfInvCtrl.AvRegPktMetod_PktTYP(Sender: TObject);
const
  LF = #10;
Var  TransactionNo : LongWord ;
PKT_DESC : AnsiString ;
begin
//Avregistrera ett antal paketnr (äldsta) från valt lager.
 if dmsSystem.Get_PkgTypeInfo (StrToInt(Trim(ePkgNo.Text)), PKT_DESC) then
 if MessageDlg('Vill du avregistrera '+eNoOfPkgs.Text+' paket?'+LF
 +PKT_DESC+LF
 +' från lagergrupp: '+Trim(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString)+LF
 +' Datum: '+DatetimeToStr(SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then


// if MessageDlg('Vill du avregistrera '+eNoOfPkgs.Text+' paket?  Lagergrupp: '
// +Trim(dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString)
// +' - Datum: '+DatetimeToStr(SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp))
// ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 dmPkgs:= TdmPkgs.Create(Nil);
 Try
  dmPkgs.mtLoadPackages.Active:= True ;
  if dmPkgs.GetAvailablePkgNos (dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
  StrToInt(Trim(ePkgNo.Text)),
  dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger,
  StrToInt(Trim(eNoOfPkgs.Text))  )  then
  Begin
   TransactionNo := dmsConnector.StartTransaction;
   try
    if dmPkgs.RemovePkgsFromInventering (dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
    5, //InvDiff code
    SqLTimeStampToDateTime(dmInvCtrl.cds_InvCtrlGrpInventeringsdatum.AsSQLTimeStamp)) = False then
    ShowMessage('Misslyckades med att avregistrera paket')
     else
      dmInvCtrl.SetNoOfPkgs_PKTTYP (
      dmInvCtrl.cds_InvCtrlMetodLogicalInventoryName.AsString,
      dmInvCtrl.cds_InvCtrlMetodOwnerNo.AsInteger,
      dmInvCtrl.cds_InvCtrlMetodIC_grpNo.AsInteger,
      StrToInt(Trim(eNoOfPkgs.Text))*(-1),
      StrToInt(Trim(ePkgNo.Text)),
      dmInvCtrl.cds_InvCtrlMetodLogicalInventoryPointNo.AsInteger) ;
    dmsConnector.Commit(TransactionNo);
   except
    dmsConnector.Rollback(TransactionNo);
    ShowMessage('Avregistreringen misslyckades') ;
   end;
 End ;
  dmPkgs.mtLoadPackages.Active:= False ;
 Finally
  FreeAndNil(dmPkgs) ;
 End ;
 End ;
end;

procedure  TfInvCtrl.SattKnappStatus ;
Begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlMetodInventeringsMetod.AsInteger = 1 then
  Begin
   bbPaRegistreraPaket.Enabled:= True ;
   bbAvregistreraPaket.Enabled:= True ;
//   bbAngraAvReg.Enabled:= True ;
   bbAndraPaket.Enabled:= True ;
   ePkgNo.Enabled:= True ;
   eNoOfPkgs.Enabled:= False ;
   lPaket.Caption:= 'Paketnr:' ;
  End
  else
  Begin
   bbPaRegistreraPaket.Enabled:= True ;
   bbAvregistreraPaket.Enabled:= True ;
//   bbAngraAvReg.Enabled:= False ;
   bbAndraPaket.Enabled:= False ;
   ePkgNo.Enabled:= True ;
   eNoOfPkgs.Enabled:= True ;
   lPaket.Caption:= 'PaketID:' ;
  End ;

 End ;
End ;

procedure TfInvCtrl.leStatusChange(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  OppnaLagerStallen ;
 End ;
end;

procedure TfInvCtrl.bbNastaStegClick(Sender: TObject);
begin
 if MessageDlg('Vill du gå till nästa steg? '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  With dmInvCtrl do
  Begin
   if cds_InvCtrlGrp.State in [dsBrowse] then
    cds_InvCtrlGrp.Edit ;
   if cds_InvCtrlGrpStatus.AsInteger < 4 then
   cds_InvCtrlGrpStatus.AsInteger := cds_InvCtrlGrpStatus.AsInteger + 1 ;
  End ;
 End ;
end;

procedure TfInvCtrl.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if DataInteSparad = True then
 if MessageDlg('Vill du spara inventeringen innan du stänger? '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 acSaveExecute(Sender) ;

 With dmInvCtrl do
 Begin
  cds_GetPrd.Active:= False ;
  cds_InLev.Active:= False ;
  cds_UtLev.Active:= False ;
  cds_InvCtrl_PaReg.Active:= False ;
  cds_InvCtrl_Pkgs.Active:= False ;
//  cds_InvCtrl_LG.Active:= False ;
  cds_InvCtrl_LagerStallen.Active:= False ;
  cds_InvCtrlGrp.Active:= False ;
  cds_InvCtrlMetod.Active:= False ;
  cds_PhysInv.Active:= False ;
  dmsContact.cds_Verk.Active := False ;
 End ;

 Canclose:= True ;
end;

function TfInvCtrl.DataInteSparad : Boolean ;
begin
 With dmInvCtrl do
 Begin
  Result:= False ;

  if cds_InvCtrl_PaReg.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrl_PaReg.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrl_Pkgs.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   Result:= True ;

  if cds_InvCtrlMetod.State in [dsEdit, dsInsert] then
   Result:= True ;
  if cds_InvCtrlMetod.ChangeCount > 0 then
   Result:= True ;
 End ;
end;

procedure TfInvCtrl.grdAvregDBTableView1PackageNoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus          : Integer ;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
   NewValue:= DisplayValue ;
   PkgNo:= StrToInt(NewValue) ;
   if cbEgenSupplierCode.Checked = False then
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_Inv(PkgNo, cds_InvCtrlGrpIC_grpno.AsInteger, PkgSupplierNo, ProductNo)
     else
      Begin
       PkgSupplierCode := EgenLevKod ;
       AskingStatus := CheckIfPkgExistInKontrollist(cds_InvCtrlGrpIC_grpno.AsInteger, PkgNo, PkgSupplierCode) ;
       Case AskingStatus of
        -1 : Begin
              ShowMessage('Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej i kontrollistan.') ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
             End ;
        0,1  : PkgSupplierCode := EgenLevKod ;
{        1  : Begin
              ShowMessage('Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej') ;
              Action := eaREJECT ;
             End ; }
       End ;//Case
      End ;

    if PkgSupplierCode = '' then
    Begin
      Action := eaREJECT;
    End
    else
//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end ;


  if Action = eaACCEPT then
  Begin
   if cds_InvCtrl_Pkgs.State in [dsBrowse] then
    cds_InvCtrl_Pkgs.Edit ;
   cds_InvCtrl_PkgsPackageNo.AsInteger:= PkgNo ;
   cds_InvCtrl_PkgsSupplierCode.AsString:= PkgSupplierCode ;
//   cds_InvCtrl_Pkgs.Post ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Error:= True ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
end;


procedure TfInvCtrl.acAvRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_Pkgs.Insert ;
//  cds_InvCtrl_PkgsOperation.AsInteger:= 0 ; //ta bort
 End ;
end;

procedure TfInvCtrl.acAngraAvRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_Pkgs.Delete ;
  if cds_InvCtrl_Pkgs.State in [dsEdit, dsInsert] then
   cds_InvCtrl_Pkgs.Post ;
  if cds_InvCtrl_Pkgs.ChangeCount > 0 then
   cds_InvCtrl_Pkgs.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvCtrl.acPaRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_PaReg.Insert ;
 End ;
end;

procedure TfInvCtrl.grdPaRegPkgDBTableView1PackageNoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue              : string;
  PkgSupplierCode       : String3;
  PkgSupplierNo         : Integer ;
  Action                : TEditAction;
  ProductNo             : Integer ;
  Save_Cursor           : TCursor;
  Res_UserName          : String ;
  PkgNo                 : Integer ;
  AskingStatus          : Integer ;
begin
 With dmInvCtrl do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
   NewValue:= DisplayValue ;
   PkgNo:= StrToInt(NewValue) ;
   if cbEgenSupplierCode2.Checked = False then
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_II(PkgNo, PkgSupplierNo, ProductNo)
     else
      Begin
       PkgSupplierCode := EgenLevKod ;
       AskingStatus := CheckIfPkgExist(PkgNo, PkgSupplierCode) ;
       Case AskingStatus of
        -1 : Begin
              ShowMessage('Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej') ;
              Action := eaREJECT ;
              PkgSupplierCode := '' ;
             End ;
        0,1  : PkgSupplierCode := EgenLevKod ;
{        1  : Begin
              ShowMessage('Paketnr '+inttostr(PkgNo)+'/'+PkgSupplierCode+' finns ej') ;
              Action := eaREJECT ;
             End ; }
       End ;//Case
      End ;

   if PkgSupplierCode = '' then
   Begin
    Action := eaREJECT;
   End
   else
//check that no user has reserved the package
    if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
    begin
     Action := eaACCEPT ;
    end ;


  if Action = eaACCEPT then
  Begin
   if cds_InvCtrl_PaReg.State in [dsBrowse] then
    cds_InvCtrl_PaReg.Edit ;
   cds_InvCtrl_PaRegPackageNo.AsInteger:= PkgNo ;
   cds_InvCtrl_PaRegSupplierCode.AsString:= PkgSupplierCode ;
//   cds_InvCtrl_PaReg.Post ;
   Error:= False ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Error:= True ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
     Error:= True ;
    End ; 
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;
end;

procedure TfInvCtrl.cbEgenSupplierCode2Click(Sender: TObject);
begin
 cbEgenSupplierCode.Checked:= cbEgenSupplierCode2.Checked ;
end;

procedure TfInvCtrl.cbEgenSupplierCodeClick(Sender: TObject);
begin
 cbEgenSupplierCode2.Checked:= cbEgenSupplierCode.Checked ;
end;

procedure TfInvCtrl.acAngraPaRegPkgExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_PaReg.Delete ;
  if cds_InvCtrl_PaReg.State in [dsEdit, dsInsert] then
   cds_InvCtrl_PaReg.Post ;
  if cds_InvCtrl_PaReg.ChangeCount > 0 then
   cds_InvCtrl_PaReg.ApplyUpdates(0) ;
 End ;
end;

procedure TfInvCtrl.acGetInLeveranserExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   cds_InLev.Active:= False ;
   GetInLeveranser ;
   cds_InLev.Active:= True ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acGetPkgDeliveredExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   cds_UtLev.Active:= False ;
   GetUTLeveranser ;
   cds_UtLev.Active:= True ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acGetProductionExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   cds_GetPrd.Active:= False ;
   GetProduction ;
   cds_GetPrd.Active:= True ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acDeleteUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acDelete.Enabled:= cds_InvCtrlGrp.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.ds_InvCtrlGrpDataChange(Sender: TObject;
  Field: TField);
begin
// OppnaLagerStallen ;
 Erd ;
end;

procedure TfInvCtrl.ds_InvCtrlMetodDataChange(Sender: TObject;
  Field: TField);
begin
 SattKnappStatus ;
end;

procedure TfInvCtrl.acAvRegPktUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAvRegPkt.Enabled:= cds_InvCtrlGrp.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acPaRegPktUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPaRegPkt.Enabled:= cds_InvCtrlGrp.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acAndraPktUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAndraPkt.Enabled:= cds_InvCtrlGrp.RecordCount > 0 ;
  End ;
end;

procedure TfInvCtrl.acAvRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAvRegPkg.Enabled:=  InventeringPresent ;
  End ;
end;

procedure TfInvCtrl.acPaRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acPaRegPkg.Enabled:= InventeringPresent ;
  End ;
end;

procedure TfInvCtrl.acAngraAvRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAngraAvRegPkg.Enabled:= InventeringPresent ;
  End ;
end;

procedure TfInvCtrl.acAngraPaRegPkgUpdate(Sender: TObject);
begin
  With dmInvCtrl do
  Begin
   acAngraPaRegPkg.Enabled:= InventeringPresent ;
  End ;
end;

procedure TfInvCtrl.acPriceListExecute(Sender: TObject);
begin
 TfInvPriceList.Execute ;
end;

procedure TfInvCtrl.acGetNormalAvRegExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 try
  With dmInvCtrl do
  Begin
   cds_InvCtrl_Pkgs.Active:= False ;
   GetNormalAvReg ;
   cds_InvCtrl_Pkgs.Active:= True ;
  End ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfInvCtrl.acPrintSummaryReportExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpIC_grpno.AsInteger < 1 then
   Exit ;
  sp_GenInvenSummary.ParamByName('IC_grpno').AsInteger:= cds_InvCtrlGrpIC_grpno.AsInteger ;
  sp_GenInvenSummary.ExecProc ;
  PrintSammanstallning(Sender) ;
 End ;
end;

procedure TfInvCtrl.PrintSammanstallning(Sender: TObject);
Var FormCRViewReport: TFormCRViewReport ;
    Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('InvenSummary.RPT') ;
  if FormCRViewReport.ReportFound then
  Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmInvCtrl.cds_InvCtrlGrpIC_grpno.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
  End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfInvCtrl.acPrintSummaryReportUpdate(Sender: TObject);
begin
 acPrintSummaryReport.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acPrintOneUpdate(Sender: TObject);
begin
 acPrintOne.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acGenFinalListUpdate(Sender: TObject);
begin
 acGenFinalList.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acGenInvListsUpdate(Sender: TObject);
begin
 acGenInvLists.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acRemoveLagerGruppRadExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrlMetod.Delete ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerGruppRadUpdate(Sender: TObject);
begin
 acRemoveLagerGruppRad.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acHamtaAllaLGExecute(Sender: TObject);
begin
//Hämta lagergrupper
 With dmInvCtrl do
 Begin

  if cds_InvCtrlGrp.State in [dsEdit, dsInsert] then
   cds_InvCtrlGrp.Post ;
  if cds_InvCtrlGrp.ChangeCount > 0 then
   cds_InvCtrlGrp.ApplyUpdates(0) ;

  if cds_InvCtrl_LagerStallen.State in [dsEdit, dsInsert] then
   cds_InvCtrl_LagerStallen.Post ;
  if cds_InvCtrl_LagerStallen.ChangeCount > 0 then
   cds_InvCtrl_LagerStallen.ApplyUpdates(0) ;


  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   GetLagerGrupper ;
   //GetLagerStallen ;
  End ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLGUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acHamtaAllaLG.Enabled:= cds_InvCtrl_LagerStallen.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerStalleExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  cds_InvCtrl_LagerStallen.Delete ;
 End ;
end;

procedure TfInvCtrl.acAddLSExecute(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   cds_InvCtrl_LagerStallen.Insert ;
  End ;
 End ;
end;

procedure TfInvCtrl.acRemoveLagerStalleUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acRemoveLagerStalle.Enabled:= cds_InvCtrl_LagerStallen.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acAddLSUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
   acAddLS.Enabled:= cds_InvCtrl_LagerStallen.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLSExecute(Sender: TObject);
begin
//Hämta lagergrupper
 With dmInvCtrl do
 Begin
  if cds_InvCtrlGrpVerkNo.AsInteger > 0 then
  Begin
   GetLagerStallen ;
  End ;
 End ;
end;

procedure TfInvCtrl.acHamtaAllaLSUpdate(Sender: TObject);
begin
 With dmInvCtrl do
 Begin
  acHamtaAllaLS.Enabled:= cds_InvCtrlGrp.RecordCount > 0 ;
 End ;
end;

procedure TfInvCtrl.acSaveUpdate(Sender: TObject);
begin
 acSave.Enabled:=  DataInteSparad ;
end;

procedure TfInvCtrl.acCancelUpdateUpdate(Sender: TObject);
begin
 acCancelUpdate.Enabled:=  DataInteSparad ;
end;

procedure TfInvCtrl.acGetPkgDeliveredUpdate(Sender: TObject);
begin
 acGetPkgDelivered.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acGetInLeveranserUpdate(Sender: TObject);
begin
 acGetInLeveranser.Enabled:= InventeringPresent ;
end;

procedure TfInvCtrl.acGetProductionUpdate(Sender: TObject);
begin
 acGetProduction.Enabled:= InventeringPresent ;
end;

End.
