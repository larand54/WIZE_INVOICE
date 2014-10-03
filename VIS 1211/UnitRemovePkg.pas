unit UnitRemovePkg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxBarExtItems, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBTLCl,
  dxGrClms, VidaType, db, dxGrClEx, dxLayout,
  kbmMemTable, dxDBEdtr, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls,
  cxPC, cxControls, ExceptionLog, ECore, ETypes, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, cxClasses; // The required units...

type
  TfrmRemovePkg = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
    grdPackages: TdxDBGrid;
    lbRemovePkgsFromInventory: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    Panel2: TPanel;
    pmPkgs: TdxBarPopupMenu;
    lbAddPackage: TdxBarLargeButton;
    ImageList1: TImageList;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
    lbDeletePkgsFromSystem: TdxBarLargeButton;
    grdPackagesPRODUCT: TdxDBGridMaskColumn;
    grdPackagesPACKAGENO: TdxDBGridMaskColumn;
    grdPackagesSUPP_CODE: TdxDBGridMaskColumn;
    grdPackagesM3_NET: TdxDBGridMaskColumn;
    grdPackagesPCS: TdxDBGridMaskColumn;
    grdPackagesM3_NOM: TdxDBGridMaskColumn;
    grdPackagesKVM: TdxDBGridMaskColumn;
    grdPackagesLOPM: TdxDBGridMaskColumn;
    grdPackagesINVENTORY: TdxDBGridMaskColumn;
    grdPackagesPCS_PER_LENGTH: TdxDBGridMaskColumn;
    grdPackagesOWNER: TdxDBGridMaskColumn;
    grdPackagesBAR_CODE: TdxDBGridMaskColumn;
    grdPackagesGRADE_STAMP: TdxDBGridMaskColumn;
    grdPackagesLoadDetailNo: TdxDBGridMaskColumn;
    bbRemoveAllRows: TdxBarButton;
    bbRemoveRow: TdxBarButton;
    peRegPoint: TdxPickEdit;
    Label8: TLabel;
    Label1: TLabel;
    peOwner: TdxPickEdit;
    bbClearPkgGrid: TBitBtn;
    Label2: TLabel;
    peMatPunktAgare: TdxPickEdit;
    Label3: TLabel;
    grdPackagesStatusText: TdxDBGridMaskColumn;
    ePktNr: TEdit;
    lbInitBarCodeScanning: TdxBarLargeButton;
    BitBtn2: TBitBtn;
    bbScanOnlyMySuppCode: TdxBarLargeButton;
    bbArkiv: TdxBarSubItem;
    bbRemovePkgFromSystem: TdxBarButton;
    dxDateEdit1: TcxDateEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    seRunNr: TcxSpinEdit;
    BitBtn3: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxDBGridReportLink;
    procedure lbCloseClick(Sender: TObject);
    procedure lbAddPackageClick(Sender: TObject);
    procedure grdPackagesPACKAGENOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure lbRemovePkgsFromInventoryClick(Sender: TObject);
    procedure dxDBDateEdit1Change(Sender: TObject);
    procedure dxDBImageEdit1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lbPkgInfoClick(Sender: TObject);
    procedure lbPkgNoSerieClick(Sender: TObject);
    procedure bbCustomPkgGridClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbDeletePkgsFromSystemClick(Sender: TObject);
    procedure bbRemoveAllRowsClick(Sender: TObject);
    procedure bbRemoveRowClick(Sender: TObject);
    procedure peOwnerChange(Sender: TObject);
    procedure bbClearPkgGridClick(Sender: TObject);
    procedure peMatPunktAgareChange(Sender: TObject);
    procedure grdPackagesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure lbInitBarCodeScanningClick(Sender: TObject);
    procedure ePktNrKeyPress(Sender: TObject; var Key: Char);
    procedure bbRemovePkgFromSystemClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
     EgenPkgSupplierCode :  String ;
//     PkgNoStartPos, PkgNoAntalPos,
//     LevKodStartPos, LevKodLengthPos : Integer ;
     Unique_No : Integer ;
     StartStreckkodslasning,
     AddingPkgsFromPkgEntry : Boolean ;
     FIsModified : Boolean ;
     StreckKodPkgNo : String ;
     function  ControlInvDate(Sender: TObject) : Boolean ;
     procedure CloseDataSets;
     procedure SomethingChanged(Sender: TObject);
     function IdentifyPackageSupplier(
          const PkgNo,
          FSupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String) : TEditAction;
     procedure InsertPkgSerie(Sender: TObject) ;
     procedure AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) ;
     procedure RemoveAllSuccespkgs(Sender: TObject);
     function  AddPkgTo_mtPackage(Sender: TObject;const LIP, PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  : TEditAction ;

  public
    { Public declarations }
     procedure CreateCo ;
     procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
     procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo : String) ;     
     function  RemoteEntryPkgNo(Sender: TObject; const LIP, PkgNo : Integer;const
                Current_OwnerNo : Integer; Const PkgSupplierCode: String3) : TEditAction;
  end;

var frmRemovePkg: TfrmRemovePkg;

implementation

uses dmLM1, VidaConst, 
  dmsVidaContact, dmsVidaProduct,
  VidaUser, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcPkgs, dmcVidaSystem,
  uScanPkgNo, dmsDataConn , uSearchRunNo;

{$R *.dfm}

procedure TfrmRemovePkg.CreateCo ;
var
  Save_Cursor:TCursor;
  MatPunktAgare,
  OwnerNo,
  PhysInventory,
  RegPoint, x : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

  With dmPkgs do
  Begin

//Load Inventory Owner
  dmsContact.Load_InvOwner(peOwner.Items, ThisUser.CompanyNo, RoleType) ;

  if peOwner.Items.Count > 1 then
  Begin
   peOwner.ItemIndex:= 0 ;
   For x:= 0 to peOwner.Items.Count -1 do
   if ThisUser.CompanyNo = integer(peOwner.Items.Objects[x]) then
    Begin
     peOwner.ItemIndex:= x ;
    End ;
  End
    else
     Begin
      if peOwner.Items.Count > 0 then
      peOwner.ItemIndex:= 0 ;
     End ;

  if RoleType = cLego then
   Begin
    peOwner.Enabled:= False ;
   End
    else
    Begin
    peOwner.Enabled:= True ;
    End ;


   if peOwner.Items.Count > 0 then
   dmPkgs.SupplierNo:= integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;


   //Load Matpunktsägare
  dmsContact.LoadMatPunktsAgare(peMatPunktAgare.Items) ;
  if peMatPunktAgare.Items.Count > 1 then
  Begin
   peMatPunktAgare.ItemIndex:= 0 ;
   For x:= 0 to peMatPunktAgare.Items.Count -1 do
   if ThisUser.CompanyNo = integer(peMatPunktAgare.Items.Objects[x]) then
   Begin
    peMatPunktAgare.ItemIndex:= x ;
   End ;
  End
  else
   Begin
    if peMatPunktAgare.Items.Count > 0 then
    peMatPunktAgare.ItemIndex:= 0 ;
   End ;

  if dmsContact.IsClientLego(ThisUser.CompanyNo) = cLego then
   peMatPunktAgare.Enabled := False
    else
     peMatPunktAgare.Enabled := True ;

  if RoleType = cLego then
  Begin
    dmcSystem.LoadRegPoint(peRegPoint.Items, integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex]) ) ;//ThisUser.CompanyNo) ;
    if peRegPoint.Items.Count > 0 then
     peRegPoint.ItemIndex:= 0 ;
  End
  else
  Begin
   if peMatPunktAgare.Items.Count > 0 then
   Begin
    dmcSystem.LoadRegPoint(peRegPoint.Items, integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex])) ;
    if peRegPoint.Items.Count > 0 then
     peRegPoint.ItemIndex:= 0 ;
   End ;
  End ;

   lbAddPackage.Enabled:= True ;
   lbDeletePkgsFromSystem.Enabled:= False ;
   bbRemovePkgFromSystem.Enabled:= False ;
   lbRemovePkgsFromInventory.Enabled:= False ;
   mtLoadPackages.ReadOnly:= False ;

   dmsContact.sp_Cities.Open ;
   dmsContact.cdsCities.Active:= True ;
   dmsContact.sp_Shippers.Open ;
   dmsContact.cdsShippers.Active:= True ;
   mtLoadPackages.Active:= True ;


{  with TIniFile.Create(dmsConnector.InifilesMap+'VisRemovePkg'+'.'+ThisUser.UserName) do
  try
   if (peOwner.Items.Count > 0) and (peOwner.Enabled) then
   Begin
    OwnerNo:= ReadInteger ('RemovePkg', 'Owner', 0) ;
    if OwnerNo > 0 then
    For x := 0 to peOwner.Items.Count - 1 do
    if OwnerNo = integer(peOwner.Items.Objects[x]) then
     peOwner.ItemIndex:= x ;
   End ;

   if peMatPunktAgare.Items.Count > 0 then
   Begin
    PhysInventory:= ReadInteger ('RemovePkg', 'MatPunktAgare', 0);
    if MatPunktAgare > 0 then
    For x := 0 to peMatPunktAgare.Items.Count - 1 do
    if MatPunktAgare = integer(peMatPunktAgare.Items.Objects[x]) then
     peMatPunktAgare.ItemIndex:= x ;
   End ;


   if peRegPoint.Items.Count > 0 then
   Begin
    RegPoint:= ReadInteger ('RemovePkg', 'RegPoint', 0);
    if RegPoint > 0 then
    For x := 0 to peRegPoint.Items.Count - 1 do
    if RegPoint = integer(peRegPoint.Items.Objects[x]) then
     peRegPoint.ItemIndex:= x ;
   End ;


  Finally
   Free ;
  End ; }

 End ; //with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfrmRemovePkg.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;


    dmsContact.sp_Cities.Close ;
    dmsContact.cdsCities.Active:= False ;
    dmsContact.cdsShippers.Active:= False ;
    dmsContact.sp_Shippers.Close ;
   End ;
end;

procedure TfrmRemovePkg.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmRemovePkg.SomethingChanged(Sender: TObject);
begin
  With dmPkgs do
   Begin
    if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
    Begin
     if RoleType <> cLego then
     lbDeletePkgsFromSystem.Enabled:= True ;
     bbRemovePkgFromSystem.Enabled:= True ;
     lbRemovePkgsFromInventory.Enabled:= True ;
     FIsModified := True ;
    End
    else
    Begin
     lbDeletePkgsFromSystem.Enabled:= False ;
     bbRemovePkgFromSystem.Enabled:= False ;
     lbRemovePkgsFromInventory.Enabled:= False ;
     FIsModified := False ;
    End ;
   End ;
end;

procedure TfrmRemovePkg.lbAddPackageClick(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
//Set Package column in focus
end;

procedure TfrmRemovePkg.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
  Try
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger           := PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString         := PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger             := SupplierNo ;
     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger := ThisUser.CompanyNo ;
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := 0 ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OneUniquePkgPACKAGENO.AsInteger,
          sq_OneUniquePkgSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End  //if..
      else
      Begin
       if StartStreckkodslasning = False then
       ShowMessage('Paketnr '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' är reserverat av användare '+Res_UserName) ;
      End ;
     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       if StartStreckkodslasning = False then
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
      End ;

     sq_OneUniquePkg.Close ;
  Finally
   SomethingChanged(Sender) ;
  End ;
 End ; //with
end;

(*procedure TfrmRemovePkg.AddErrorTextToPkg(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
var
 x : Integer ;
 Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
  Try
     sq_OneUniquePkg.Close ;
     sq_OneUniquePkg.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OneUniquePkg.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OneUniquePkg.ParamByName('OwnerNo').AsInteger:= SupplierNo ;
     sq_OneUniquePkg.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;
     sq_OneUniquePkg.Open ;
     if not sq_OneUniquePkg.Eof then
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OneUniquePkgPACKAGENO.AsInteger,
          sq_OneUniquePkgSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      For x := 0 to 27 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OneUniquePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;

      End  //if..
      else
      Begin
       ShowMessage('Paketnr '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' är reserverat av användare '+Res_UserName) ;
      End ;
     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
      End ;

     sq_OneUniquePkg.Close ;
  Finally
   SomethingChanged(Sender) ;
  End ;
 End ; //with
end; *)

function TfrmRemovePkg.IdentifyPackageSupplier(
  const PkgNo,
  FSupplierNo: Integer;
  var PkgSupplierCode: String3;
  var PkgSupplierNo: Integer;
  Var ProductNo : Integer;
  Var Res_UserName : String) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode(PkgNo, FSupplierNo, ThisUser.CompanyNo, PkgSupplierNo, ProductNo);
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Result := eaACCEPT ;
          end
        else

        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

//After adding a package manually
procedure TfrmRemovePkg.grdPackagesPACKAGENOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  NewValue          : String;
  PkgSupplierCode   : String3;
  PkgSupplierNo     : Integer ;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  RegPointName      : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
    { Do some lengthy operation }
   NewValue := TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;


   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      dmPkgs.SupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName );

{  if Action = eaACCEPT then
  Begin
   RegPointName:= dmPkgs.IsPkgAvregistrerat (StrToInt(NewValue), PkgSupplierCode) ;
   if RegPointName <> 'NO' then
   Begin
    Action:= eaAlreadyAvReg ;
   End
    else
     Action := eaAccept ;
  End ; //  if Action = eaACCEPT then
  }

  if Action = eaACCEPT then
  Begin
   AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Accept:= True ;
  End
   else
   if Action = eaREJECT then
    Begin
//     if StartStreckkodslasning = False then
     ErrorText:= 'Paketnr '+NewValue+' finns inte' ;
     Accept:= False ;
    End
    else
     if Action = eaReserved then
     Begin
//      if StartStreckkodslasning = False then
      ErrorText:= 'Paketnr '+NewValue+' är reserverat av användare '+Res_UserName ;
      Accept:= False ;
     End ;
{      else
       if Action = eaAlreadyAvReg then
       Begin
        if StartStreckkodslasning = False then
        ShowMessage('Paketnr '+NewValue+'/'+PkgSupplierCode+' är redan avregistrerat mot mätpunkt '+RegPointName) ;
       End ; }
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfrmRemovePkg.FormCreate(Sender: TObject);
begin
  dmPkgs                          := TdmPkgs.Create(Nil);
  Unique_No                       := 1 ;
  dxDateEdit1.Date                := Now ;
  AddingPkgsFromPkgEntry          := False ;
  grdPackagesLoadDetailNo.Sorted  := csUp ;
  StartStreckkodslasning          := False ;
end;

function TfrmRemovePkg.ControlInvDate(Sender: TObject) : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  Try
  if mtLoadPackages.State in [dsEdit, dsInsert] then
  mtLoadPackages.Post ;
  Result  := True ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(mtLoadPackagesLOG_INVENTORY_NO.AsInteger, Self.dxDateEdit1.Date, InvDate, MaxDateMsg) ;
   if LastInvNr > -1 then
   Begin
    mtLoadPackages.Edit ;
    mtLoadPackagesInvNr.AsInteger := LastInvNr ;
    mtLoadPackages.Post ;
    Result  := False ;
   End ;
   mtLoadPackages.Next ;
  End ;
  Finally
   mtLoadPackages.EnableControls ;
  End ;
 End ;//With
end;

procedure TfrmRemovePkg.lbRemovePkgsFromInventoryClick(Sender: TObject);
const
  LF = #10;
Begin
 if dxDateEdit1.Date > Now then
 Begin
  ShowMessage('Avregistreringsdatum får inte vara större än aktuellt datum');
  Exit ;
 End ;

 if ControlInvDate(Sender) then
 Begin
  if MessageDlg('Vill du avregistrera paket mot mätpunkt: '
  +Trim(peMatPunktAgare.Items[peMatPunktAgare.itemindex])
  +'/'+Trim(peRegPoint.Items[peRegPoint.itemindex])
  +LF+'Datum: '+DateToStr(dxDateEdit1.Date)
  ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   if dmPkgs.RemovePkgsFromInventory(
   integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex]),
   integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]),
   dxDateEdit1.Date,
   seRunNr.Value) then
   RemoveAllSuccespkgs(Sender) ;
  End ; //if
 End
 else
 ShowMessage('Paket kan inte avregistreras pga att avregistreringsdatum är före inventerings eller maxdatum i en inventering där lagergruppen ingår') ;
end;

procedure TfrmRemovePkg.dxDBDateEdit1Change(Sender: TObject);
begin
 SomethingChanged(Sender);
end;

procedure TfrmRemovePkg.dxDBImageEdit1Change(Sender: TObject);
begin
 SomethingChanged(Sender);
end;

procedure TfrmRemovePkg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
//    OvcIniFileStore1 : TIniFile ;
begin
  if FIsModified = True then
   Begin
   dResult:= MessageDlg('Valda paket är inte avregistrerade, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) ;
   End
    else
    dResult:= mrYes ;

    if dResult = mrYes then
     CanClose := True
    else
    if dResult = mrNo then
      CanClose := False ;

 if CanClose = True then
 begin
{  OvcIniFileStore1 := TIniFile.Create( dmsConnector.InifilesMap+'VisRemovePkg'+'.'+ThisUser.UserName );
  Try
   OvcIniFileStore1.WriteInteger ('RemovePkg', 'Owner', integer(peOwner.Items.Objects[peOwner.ItemIndex])) ;
   OvcIniFileStore1.WriteInteger ('RemovePkg', 'MatPunktAgare', integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex])) ;
   OvcIniFileStore1.WriteInteger ('RemovePkg', 'RegPoint', integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex])) ;
  Finally
   OvcIniFileStore1.Free ;
  End ; }

   //Remove entries in Pkgs_Res
  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;

  CloseDataSets;
 end;
end;

procedure TfrmRemovePkg.lbPkgInfoClick(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 With dmPkgs do
 Begin
 if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
 Begin
  frmPkgInfo:= TfrmPkgInfo.Create(Nil);
  Try
   frmPkgInfo.PackageNo:= dmPkgs.mtLoadPackagesPackageNo.AsInteger ;
   frmPkgInfo.SupplierCode:= dmPkgs.mtLoadPackagesSUPP_CODE.AsString ;
   frmPkgInfo.ShowModal ;
  Finally
   FreeAndNil(frmPkgInfo) ;
  End ;
 End ;
 End ; //with
end;

procedure TfrmRemovePkg.lbPkgNoSerieClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if mtLoadPackages.State <> dsBrowse then
   Try
   mtLoadPackages.Post ;
   Except
    on eDatabaseError do
    Begin
     Raise ;
    End ;
   End ;

  InsertPkgSerie(Sender) ;
  SomethingChanged(Sender) ;
 End ;
end;

procedure TfrmRemovePkg.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, x : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmPkgs do
 Begin
  mtLoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg('Upp till '+IntToStr(NoOfPkgsInSerie)+' paket kanske hämtas, är det korrekt?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try
     mtLoadPackages.Active:= False ;
     mtLoadPackages.Active:= True ;
     sq_OnePkgDetailData.Close ;
     sq_OnePkgDetailData.ParamByName('First_PackageNo').AsInteger:= StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('Last_PackageNo').AsInteger:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('OwnerNo').AsInteger:= SupplierNo ;
     sq_OnePkgDetailData.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;
     sq_OnePkgDetailData.Open ;
     While not sq_OnePkgDetailData.Eof do
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OnePkgDetailDataPACKAGENO.AsInteger,
          sq_OnePkgDetailDataSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin

      Try
      mtLoadPackages.Insert ;
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OnePkgDetailData.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackages.Post ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;
      End  //if..
      else
      Begin
       if StartStreckkodslasning = False then
       ShowMessage('Paketnr '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' är reserverat av användare '+Res_UserName) ;
      End ;
      sq_OnePkgDetailData.Next ;
     End ;
     sq_OnePkgDetailData.Close ;
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;
    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   mtLoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfrmRemovePkg.bbCustomPkgGridClick(Sender: TObject);
begin
 grdPackages.ColumnsCustomizing;
end;

procedure TfrmRemovePkg.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmPkgs) ; //Free ;
end;

procedure TfrmRemovePkg.lbDeletePkgsFromSystemClick(Sender: TObject);
 //Delete pkgs from SYSTEM
Begin
 if MessageDlg('Obs! paketen kommer att rensas bort från databasen, Fortsätta?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 if MessageDlg('Obs! paketen kan inte återställas till lagret, Fortsätta?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  if dmPkgs.DeletePackagesFromSystem (
  integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex])) then
  Begin
   RemoveAllSuccespkgs(Sender) ;
  End ;
 End ; //if
 End ;//if
end;

procedure TfrmRemovePkg.bbRemoveAllRowsClick(Sender: TObject);
begin
 //Remove all rows
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
  Begin
   mtLoadPackages.Active:= False ;
   mtLoadPackages.Active:= True ;
   SomethingChanged(Sender) ;
  End ;
 End ;
end;

procedure TfrmRemovePkg.bbRemoveRowClick(Sender: TObject);
begin
 // remove one row
 With dmPkgs do
 if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
 Begin
  mtLoadPackages.Delete ;
 End ;
 SomethingChanged(Sender) ;
end;

procedure TfrmRemovePkg.peOwnerChange(Sender: TObject);
begin
 if peOwner.Items.Count > 0 then
 Begin
  dmPkgs.SupplierNo:= integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
 End ;
end;

procedure TfrmRemovePkg.bbClearPkgGridClick(Sender: TObject);
begin
 bbRemoveAllRowsClick(Sender) ;
end;

procedure TfrmRemovePkg.peMatPunktAgareChange(Sender: TObject);
begin
 if peMatPunktAgare.Items.Count > 0 then
 Begin
  peRegPoint.Text:= 'N/A' ;
  peRegPoint.Items.Clear ;
  dmcSystem.LoadRegPoint(peRegPoint.Items, integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex])) ;
  if peRegPoint.Items.Count > 0 then
   peRegPoint.ItemIndex:= 0 ;
 End ;
end;

procedure TfrmRemovePkg.RemoveAllSuccespkgs(Sender: TObject);
begin
 //Remove all rows
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0) then
  Begin
   mtLoadPackages.Filter:= 'Status = 0' ;
   mtLoadPackages.Filtered:= True ;
   Try
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
     mtLoadPackages.Delete ;
   Finally
    mtLoadPackages.Filtered:= False ;
   End ;
   SomethingChanged(Sender) ;
  End ;
 End ;
end;

procedure TfrmRemovePkg.grdPackagesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
// var
//  iObjectType: integer;
//  iObjectTypeColumn2: integer;
//  iObjectType2: String ;
//  iSupplierNo, iCustomerNo : Integer ;
begin
//  if ColumnIsGrouped(AColumn, grdSokAvrop) then     Exit;

  // get the status of this LO
(*
  iObjectTypeColumn2 := grdPackages.ColumnByName('grdPackagesStatusText').Index;
  iObjectType2 := ANode.Values[iObjectTypeColumn2];


  // Set the color for this row, based on LO status
  if iObjectType2 > '' then
  Begin
   AColor := $00C1FFFF ; //BackgroundColor(iObjectType);
   AFont.Color:= clBlack ;
  End ;

 if AFocused = True then
 Begin
  AColor := clSilver ;
 End ; *)
end;

procedure TfrmRemovePkg.lbInitBarCodeScanningClick(Sender: TObject);
begin
//Proc GetPkgPos läser in paketnr posistioner och längder
 StartStreckkodslasning         := True ;
 grdPackagesLoadDetailNo.Sorted := csUp ;
 EgenPkgSupplierCode            := dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
 fScanPkgNo                     := TfScanPkgNo.Create(Self);
 Try
  fScanPkgNo.cbEgenLevKod.Caption:= 'Scanna endast in paket med leverantörskod '+EgenPkgSupplierCode ;
  fScanPkgNo.ShowModal ;
 Finally
  StartStreckkodslasning:= False ;
  fScanPkgNo.Free ;
 End ;
end;

procedure TfrmRemovePkg.ePktNrKeyPress(Sender: TObject; var Key: Char);
begin
 With dmPkgs do
 Begin
  if Key = #13 then
  Begin
   ScanningPkgNo(Sender, StreckKodPkgNo) ;
   StreckKodPkgNo:= '' ;
   ePktNr.Text:= '' ;
  End
  else
   Begin
    if key in ['0','1','2','3','4','5','6','7','8','9'] then
    StreckKodPkgNo:= StreckKodPkgNo + Key ;
   End ;
 End ; //with
end;

procedure TfrmRemovePkg.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo        : Integer ;
  PktNrLevKod     : String ;//Lev koden i paketnrsträngen
  PkgSupplierCode : String3;
  Action          : TEditAction;
  ProductNo       : Integer ;
  Save_Cursor     : TCursor;
  Res_UserName    : String ;
  PkgSupplierNo   : Integer ;
  RegPointName    : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin
//Notera att i den långa koden skall supplier koden finnas!
   Try
   NewPkgNo:= StrToInt(Trim(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr))) ;
    Except
     on E: EConvertError do
      ShowMessage(E.ClassName + LF + E.Message);
    End ;
    if NewPkgNo < 1 then
     Exit ;
    PktNrLevKod                     := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
    PkgSupplierCode                 := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
    dmPkgs.mtLoadPackages.IndexName := 'mtLoadPackagesIndex5' ;

   if Length(PkgSupplierCode) > 0 then
   Begin
    Action:= eaAccept ;
   End ;
  End
  else //Length < 11
  Begin
   NewPkgNo:= StrToIntDef(PkgNo,0) ;
   if NewPkgNo = 0 then
   Begin
    if StartStreckkodslasning = False then
    ShowMessage('Streckkoden kunde inte översättas till ett Paketnr') ;
    Exit ;
   End ;

   Action := IdentifyPackageSupplier(
      NewPkgNo,
      dmPkgs.SupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName );
   if Length(Trim(PkgSupplierCode)) = 0 then
   Begin
    if StartStreckkodslasning = False then
    ShowMessage('Inget paket kunde identifieras') ;
    Exit ;
   End ;

//   PkgSupplierCode:= EgenPkgSupplierCode ;

  End ;

  //Ett paket kan inte avregistreras flera ggr mot en produktionsmätpunkt
{  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, PkgSupplierCode) ;
  if RegPointName <> 'NO' then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ; }

  if Action = eaAccept then
  if dmPkgs.mtLoadPackages.Locate('PACKAGENO;SUPP_CODE', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
   AddPkgToGrid(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     if StartStreckkodslasning = False then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' finns inte') ;
    End
    else
     if Action = eaReserved then
      Begin
       if StartStreckkodslasning = False then
       ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är reserverat av användare '+Res_UserName) ;
      End
      else
       if Action = eaAlreadyAvReg then
       Begin
        if StartStreckkodslasning = False then
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är redan avregistrerat mot mätpunkt '+RegPointName) ;
       End ;

{    else
    if Action = eaDuplicate then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är redan inmatat') ; }

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  end;
end;

function TfrmRemovePkg.RemoteEntryPkgNo(Sender: TObject; const LIP, PkgNo : Integer;const
Current_OwnerNo : Integer; Const PkgSupplierCode: String3) : TEditAction;
const
  LF = #10;
var
  Action       : TEditAction;
  ProductNo    : Integer ;
  Save_Cursor  : TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  Action := eaREJECT ;  
  Try
  dmPkgs.SupplierNo:= Current_OwnerNo ;
  if PkgNo < 1 then
   Exit ;
        if dmsSystem.Pkg_Reserved(
          PkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
          begin
           Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
    Action:= AddPkgTo_mtPackage(Sender, LIP, PkgNo,PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     if StartStreckkodslasning = False then
     ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
    End
    else
   if Action = eaReserved then
    Begin
     if StartStreckkodslasning = False then
     ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' är reserverat av användare '+Res_UserName) ;
    End
    else
    if Action = eaDuplicate then
    Begin
     if StartStreckkodslasning = False then
     ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' är redan inmatat') ;
    End ; 
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    Result:= Action ;
  end;
end;

function TfrmRemovePkg.AddPkgTo_mtPackage(Sender: TObject;const LIP, PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) : TEditAction ;
var
 x : Integer ;
// Res_UserName : String ;
Begin
 With dmPkgs do
 Begin
  Try
     sq_OnePkg.Close ;
     sq_OnePkg.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OnePkg.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OnePkg.ParamByName('OwnerNo').AsInteger:= SupplierNo ;
     sq_OnePkg.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;
     sq_OnePkg.Open ;
     if not sq_OnePkg.Eof then
     Begin

      Try
      For x := 0 to 21 do
       mtLoadPackages.Fields.Fields[x].AsVariant:= sq_OnePkg.Fields.Fields[x].AsVariant ;
      mtLoadPackagesLoadDetailNo.AsInteger:= Unique_No ;
      mtLoadPackagesLOG_INVENTORY_NO.AsInteger:= LIP ;
      mtLoadPackages.Post ;
      Result:= eaAccept ;
      Unique_No:= Succ(Unique_No) ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ; //Except

     End  //if not...
     else
      Begin
       mtLoadPackages.Cancel ;
       if StartStreckkodslasning = False then
       ShowMessage('Paketnr '+IntToStr(PkgNo)+'/'+PkgSupplierCode+' finns inte') ;
       Result:= eaREJECT ;
      End ;

     sq_OnePkg.Close ;      

  Finally
   SomethingChanged(Sender) ;
  End ;
 End ; //with
end;

procedure TfrmRemovePkg.ScanningEgnaPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo          : Integer ;
  PktNrLevKod       : String ;//Lev koden i paketnrsträngen
  PkgSupplierCode   : String3;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  RegPointName      : String ;

begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;

  if Length(Trim(PkgNo)) > 10 then
  Begin
   Try
   NewPkgNo:= StrToInt(Trim(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr))) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod      := Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode  := dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
//   dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
  End
  else //Length < 11
  Begin
   NewPkgNo:= StrToIntDef(PkgNo,0) ;
   PkgSupplierCode:= EgenPkgSupplierCode ;
   if NewPkgNo = 0 then
   Begin
    if StartStreckkodslasning = False then
    ShowMessage('Koden kunde inte översättas till ett Paketnr') ;
    Exit ;
   End ;
  End ;


  //Ett paket kan inte avregistreras flera ggr mot en produktionsmätpunkt
{  RegPointName:= dmPkgs.IsPkgAvregistrerat (NewPkgNo, PkgSupplierCode) ;
  if RegPointName <> 'NO' then
  Begin
   Action:= eaAlreadyAvReg ;
  End
   else
    Action := eaAccept ; }

  if Action = eaAccept then
  if dmPkgs.mtLoadPackages.Locate('PACKAGENO;SUPP_CODE', VarArrayOf([NewPkgNo, PkgSupplierCode]), []) then
  Begin
   Action:= eaDuplicate ;
  End
   else
    Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

  if Action = eaACCEPT then
  Begin
   dmPkgs.mtLoadPackages.Insert ;
   Try
   AddPkgToGrid(Sender, NewPkgNo,PkgSupplierCode, ProductNo) ;
   Except
       on eDatabaseError do
       Begin
        Raise ;
        dmPkgs.mtLoadPackages.Cancel ;
       End ;
   End ;
  End
   else
   if Action = eaREJECT then
    Begin
     if StartStreckkodslasning = False then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' finns inte') ;
    End
    else
     if Action = eaReserved then
     Begin
      if StartStreckkodslasning = False then
      ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är reserverat av användare '+Res_UserName) ;
     End
      else
       if Action = eaAlreadyAvReg then
       Begin
        if StartStreckkodslasning = False then
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är redan avregistrerat mot mätpunkt '+RegPointName) ;
       End ;

{    else
    if Action = eaDuplicate then
     ShowMessage('Paketnr '+IntToStr(NewPkgNo)+'/'+PkgSupplierCode+' är redan inmatat') ; }

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dmPkgs.mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  end;
end;

procedure TfrmRemovePkg.bbRemovePkgFromSystemClick(Sender: TObject);
begin
 if MessageDlg('Obs! paketen kommer att rensas bort från databasen, Fortsätta?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
 if MessageDlg('Obs! paketen kan inte återställas till lagret, Fortsätta?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  if dmPkgs.DeletePackagesFromSystem (
  integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex])) then
  Begin
   RemoveAllSuccespkgs(Sender) ;
  End ;
 End ; //if
 End ;//if
end;

procedure TfrmRemovePkg.BitBtn1Click(Sender: TObject);
var fSearchRunNo: TfSearchRunNo;
begin
 fSearchRunNo:= TfSearchRunNo.Create(nil);
 Try
 fSearchRunNo.mtProps.Edit ;
 fSearchRunNo.mtPropsRegPointNo.AsInteger:= integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]) ;
 fSearchRunNo.mtPropsSupplierNo.AsInteger:= integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
 fSearchRunNo.mtProps.Post ;
 if fSearchRunNo.ShowModal = mrOK then
 Begin
//  dmsPkg.mtProps.Edit ;
  seRunNr.Value := fSearchRunNo.cds_RunNosKrnr.AsInteger ;
//  dmsPkg.mtProps.Post ;
 End ;
 Finally
  FreeAndNil(fSearchRunNo) ;
 End ;
end;

procedure TfrmRemovePkg.BitBtn3Click(Sender: TObject);
begin
// dxComponentPrinter1.PrintTitle:= 'AvräkningNr: '+cds_LoadFreightCostHeader2AvrakningsNo.AsString ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.CenterTitle.Clear ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Avregistrerade paket ') ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Verk: ' + peMatPunktAgare.Text) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Mätpunkt: ' + peRegPoint.Text) ;
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Add('Avregistrerat ' + DateTimeToStr(dxDateEdit1.Date)) ;
  dxComponentPrinter1Link1.ShrinkToPageWidth ;
  dxComponentPrinter1Link1.PrinterPage.ApplyToPrintDevice ;

  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

end.
