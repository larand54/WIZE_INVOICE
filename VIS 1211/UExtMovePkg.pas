unit UExtMovePkg ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxBarExtItems, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBTLCl,
  dxGrClms, VidaType, db, dxGrClEx, dxLayout,
  kbmMemTable, dxDBEdtr, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls,
  ActnList, cxClasses ;

type
  TfExtMovePkg = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    Splitter3: TSplitter;
    grdPackages: TdxDBGrid;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    Panel2: TPanel;
    pmPkgs: TdxBarPopupMenu;
    lbAddPackage: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    ImageList1: TImageList;
    images1616: TImageList;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
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
    grdPackagesBARCODE_ID: TdxDBGridMaskColumn;
    grdPackagesGRADE_STAMP: TdxDBGridMaskColumn;
    pLoadHead: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    peOwner: TdxPickEdit;
    pePhysInventory: TdxPickEdit;
    peLogicalInventory: TdxPickEdit;
    bbPkgNoByLO: TdxBarLargeButton;
    bbClearPkgGrid: TBitBtn;
    grdPackagesROWNO: TdxDBGridMaskColumn;
    Label14: TLabel;
    Memo1: TMemo;
    deRegDate: TdxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    peMoveToLogInv: TdxPickEdit;
    peMoveToPhysInv: TdxPickEdit;
    peMoveToOwner: TdxPickEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    acMovePkgs: TAction;
    procedure lbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lbPkgInfoClick(Sender: TObject);
    procedure lbPkgNoSerieClick(Sender: TObject);
    procedure bbCustomPkgGridClick(Sender: TObject);
    procedure peOwnerChange(Sender: TObject);
    procedure pePhysInventoryChange(Sender: TObject);
    procedure grdPkgsEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure bbPkgNoByLOClick(Sender: TObject);
    procedure bbClearPkgGridClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbRemovePackageClick(Sender: TObject);
    procedure lbAddPackageClick(Sender: TObject);
    procedure grdPackagesPACKAGENOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure peMoveToOwnerChange(Sender: TObject);
    procedure peMoveToPhysInvChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure acMovePkgsUpdate(Sender: TObject);
    procedure acMovePkgsExecute(Sender: TObject);
  private
    { Private declarations }

     Unique_No : Integer ;
     FIsModified : Boolean ;

//     function  SomethingHasChanged : Boolean ;
     procedure CloseDataSets;
     procedure InsertPkgSerie(Sender: TObject) ;

     procedure AddPkgsByLONumber (Sender: TObject; const ProductNo, LONo : Integer ) ;
     function IdentifyPackageSupplier(
          const PkgNo,
          FSupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String) : TEditAction;

    procedure AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) ;
    procedure SetReadOnlyprops ;
  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer
      );

  public
    { Public declarations }

    procedure   CreateCo ;
  end;

//var  fExtMovePkg: TfExtMovePkg;

implementation

uses dmcPkgs, VidaConst, dlgPickPkg_II,
  dmsVidaContact, dmsVidaProduct, UnitSelectLO_NumberSSP,
  VidaUser, UnitCRViewReport, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaSystem, dmsVidaSystem,
  UnitLONumber, dmsDataConn ;

{$R *.dfm}

procedure TfExtMovePkg.CreateCo ;
Var x, MoveToOwnerno : Integer ;
begin
 MoveToOwnerno:= -1 ;
 With dmPkgs do
 Begin
  fProductNo := -1 ;
  fBarCodeID:= -1 ;
  fGradeStampNo:= -1 ;
  fLogicalInventoryNo:=  0;
  dmsSystem.cdsBarCodes.Active:= True ;
  mtProdSpecificLengths.Active:= True ;

//Load Owners
  dmsContact.Load_ExtInvOwner(peOwner.Items, ThisUser.CompanyNo, RoleType) ;
  if peOwner.Items.Count > 1 then
  Begin
   For x:= 0 to peOwner.Items.Count -1 do
   if ThisUser.CompanyNo = integer(peOwner.Items.Objects[x]) then
   Begin
    peOwner.ItemIndex:= x ;
   End ;
    if peOwner.ItemIndex = -1 then
    peOwner.ItemIndex:= 0 ;
  End
   else
   Begin
    if peOwner.Items.Count > 0 then
    peOwner.ItemIndex:= 0 ;
   End ;

  if peOwner.Items.Count > 0 then
  dmPkgs.SupplierNo:=    integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;

{  if RoleType = cLego then
    peOwner.Enabled:= False
    else
    peOwner.Enabled:= True ; }

  if ThisUser.CompanyNo = 172 then
   MoveToOwnerno:= 2878
    else
     if ThisUser.CompanyNo = 2878 then
      MoveToOwnerno:= 172 ;

//Load Move to Owners
  dmsContact.Load_ExtInvOwner(peMoveToOwner.Items, ThisUser.CompanyNo, RoleType) ;
  if peMoveToOwner.Items.Count > 1 then
  Begin
   For x:= 0 to peMoveToOwner.Items.Count -1 do
   if MoveToOwnerno = integer(peMoveToOwner.Items.Objects[x]) then
   Begin
    peMoveToOwner.ItemIndex:= x ;
   End ;
   if peMoveToOwner.ItemIndex = -1 then
   peMoveToOwner.ItemIndex:= 0 ;
  End
   else
   Begin
    if peMoveToOwner.Items.Count > 0 then
    peMoveToOwner.ItemIndex:= 0 ;
   End ;

//  if peMoveToOwner.Items.Count > 0 then
//  dmPkgs.SupplierNo:=    integer(peMoveToOwner.Items.Objects[peMoveToOwner.ItemIndex]) ;


  peOwner.OnChange:= NIL ;
  pePhysInventory.OnChange:= NIL ;
  Try
//Load PhysInv
  dmsContact.LoadPhysInventory(pePhysInventory.Items, integer(peOwner.Items.Objects[peOwner.ItemIndex]) ,ThisUser.CompanyNo) ;
//  pePhysInventory.Items.Insert(0,'No Change');
  if pePhysInventory.Items.Count > 0 then
   pePhysInventory.ItemIndex:= 0 ;

//Load Logical Inv
  if pePhysInventory.Items.Count > 0 then
  dmsContact.LoadLogicalInventory( peLogicalInventory.Items, integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );
//  peLogicalInventory.Items.Insert(0,'No Change');
  if peLogicalInventory.Items.Count > 0 then
   peLogicalInventory.ItemIndex:= 0 ;

//Load Move to PhysInv
  dmsContact.LoadPhysInventory(peMoveToPhysInv.Items, integer(peMoveToOwner.Items.Objects[peMoveToOwner.ItemIndex]) ,ThisUser.CompanyNo) ;
//  peMoveToPhysInv.Items.Insert(0,'No Change');
  if peMoveToPhysInv.Items.Count > 0 then
   peMoveToPhysInv.ItemIndex:= 0 ;

//Load Move to Logical Inv
  if peMoveToPhysInv.Items.Count > 0 then
  dmsContact.LoadLogicalInventory( peMoveToLogInv.Items, integer(peMoveToPhysInv.Items.Objects[peMoveToPhysInv.ItemIndex]) );
//  peMoveToLogInv.Items.Insert(0,'No Change');
  if peMoveToLogInv.Items.Count > 0 then
   peMoveToLogInv.ItemIndex:= 0 ;



  Finally
   pePhysInventory.OnChange:= pePhysInventoryChange ;
   peOwner.OnChange:= peOwnerChange ;
  End ;
 End ; //with


end;


procedure TfExtMovePkg.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;
   End ;
end;



procedure TfExtMovePkg.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfExtMovePkg.FormCreate(Sender: TObject);
begin
  dmPkgs:= TdmPkgs.Create(Nil);
  With dmPkgs do
  Begin
   mtLoadPackages.Active:= True ;
  End ; //with

  deRegDate.Date:= Date ;
  grdPackagesPRODUCT.ReadOnly:= True ;
  grdPackagesPCS_PER_LENGTH.ReadOnly:= True ;
  grdPackagesM3_NET.ReadOnly:= True ;
  grdPackagesPCS.ReadOnly:= True ;
  grdPackagesM3_NOM.ReadOnly:= True ;
end;


procedure TfExtMovePkg.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker_II.Create(Nil) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      end
    else
      Choice := '';
  finally
    free ;
    end;
end;

procedure TfExtMovePkg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if FIsModified = True then
   dResult:= MessageDlg('Data ej sparad, vill du spara?',
    mtConfirmation, [mbYes, mbNo,mbCancel], 0)
    else
    dResult:= mrNo ;

    if dResult = mrYes then
    Begin
     acMovePkgsExecute(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     CanClose := True
     else
      CanClose := False ;

 if CanClose then
 Begin
  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;
  CloseDataSets;
 End ;
end;

procedure TfExtMovePkg.lbPkgInfoClick(Sender: TObject);
Var frmPkgInfo: TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmPkgs.mtLoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode:= dmPkgs.mtLoadPackagesSUPP_CODE.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfExtMovePkg.lbPkgNoSerieClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
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
  End ;
 End ;
end;

procedure TfExtMovePkg.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, x : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        Res_UserName : String ;
        frmPkgNoSeries: TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;

 With dmPkgs do
 Begin
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
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
     sq_OnePkgDetailData.Close ;
     sq_OnePkgDetailData.ParamByName('First_PackageNo').AsInteger:= StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('Last_PackageNo').AsInteger:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) ;
     sq_OnePkgDetailData.ParamByName('OwnerNo').AsInteger:= integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
     sq_OnePkgDetailData.ParamByName('UserCompanyLoggedIn').AsInteger:= ThisUser.CompanyNo ;

     sq_OnePkgDetailData.Open ;
     While not sq_OnePkgDetailData.Eof do
     Begin
     if dmsSystem.Pkg_Reserved(
          sq_OnePkgDetailDataPACKAGENO.AsInteger,
          sq_OnePkgDetailDataSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
     begin
     if not mtLoadPackages.FindKey([sq_OnePkgDetailDataPACKAGENO.AsInteger, sq_OnePkgDetailDataSUPP_CODE.AsString]) then
     Begin
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

      End ; //if mtLoadPackages.FindKey(

      End  //if dmsSystem.Pkg_Reserved(
      else
      Begin
       ShowMessage('Package no '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' is reserved by user '+Res_UserName) ;
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
   mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
   mtLoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfExtMovePkg.bbCustomPkgGridClick(Sender: TObject);
begin
 grdPackages.ColumnsCustomizing;
end;

procedure TfExtMovePkg.peOwnerChange(Sender: TObject);
begin
 Try
 if peOwner.Items.Count > 0 then
 Begin
  dmPkgs.SupplierNo:=    integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
 End ;
 dmsContact.LoadPhysInventory(pePhysInventory.Items, integer(peOwner.Items.Objects[peOwner.ItemIndex]) , ThisUser.CompanyNo) ;
 if pePhysInventory.Items.Count > 0 then
 Begin
  pePhysInventory.ItemIndex:= 0 ;
  if pePhysInventory.Items.Count > 0 then
  dmsContact.LoadLogicalInventory(peLogicalInventory.Items,
  integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );

  if peLogicalInventory.Items.Count > 0 then
   peLogicalInventory.ItemIndex:= 0 ;
 End ;
 Finally
 End ;
end;

procedure TfExtMovePkg.pePhysInventoryChange(Sender: TObject);
begin
 if pePhysInventory.Items.Count > 0 then
 dmsContact.LoadLogicalInventory(peLogicalInventory.Items,
 integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );
 if peLogicalInventory.Items.Count > 0 then
  peLogicalInventory.ItemIndex:= 0 ;
end;

procedure TfExtMovePkg.grdPkgsEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
 dmPkgs.SummarizePkg ;
end;

procedure TfExtMovePkg.bbPkgNoByLOClick(Sender: TObject);
Var ProductNo : Integer ;
    fLONumber: TfLONumber;
begin
 fLONumber:= TfLONumber.Create(Nil);
 Try
 if fLONumber.ShowModal = mrOK then
 Begin
  ProductNo := dmPkgs.cds_Prod_In_LOPRODUCTNO.AsInteger ;
  AddPkgsByLONumber (Sender, ProductNo, StrToIntDef(Trim(fLONumber.eLONo.Text),0) ) ;
 End ;
 Finally
  FreeAndNil(fLONumber) ;
 End ;
end;

procedure TfExtMovePkg.AddPkgsByLONumber (Sender: TObject;const ProductNo, LONo : Integer ) ;
Var x : Integer ;
    Save_Cursor:TCursor;
    Res_UserName : String ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmPkgs do
 Begin
 Try
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex5' ;
  sq_GetPkgsByLONo.Close ;
  sq_GetPkgsByLONo.ParamByName('LONo').AsInteger:= LONo ;
  sq_GetPkgsByLONo.ParamByName('OwnerNo').AsInteger:= integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
  sq_GetPkgsByLONo.ParamByName('ProductNo').AsInteger:= ProductNo ;
  sq_GetPkgsByLONo.Open ;
  While not sq_GetPkgsByLONo.Eof do
  Begin
    if dmsSystem.Pkg_Reserved(
    sq_GetPkgsByLONoPACKAGENO.AsInteger,
          sq_GetPkgsByLONoSUPP_CODE.AsString, Self.Name, Res_UserName
          ) = ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then
   Begin
   if not mtLoadPackages.FindKey([sq_GetPkgsByLONoPACKAGENO.AsInteger, sq_GetPkgsByLONoSUPP_CODE.AsString]) then
   Begin


    Try
     mtLoadPackages.Insert ;
     For x := 0 to 21 do
      mtLoadPackages.Fields.Fields[x].AsVariant:= sq_GetPkgsByLONo.Fields.Fields[x].AsVariant ;
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
   End ; //   if not mtLoadPackages.FindKey(
   End  //if
   else
    ShowMessage('Package no '+sq_GetPkgsByLONoPACKAGENO.AsString+'/'+sq_GetPkgsByLONoSUPP_CODE.AsString+' is reserved by user '+Res_UserName) ;
   sq_GetPkgsByLONo.Next ;
  End ; //While
  sq_GetPkgsByLONo.Close ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  mtLoadPackages.IndexName:= 'mtLoadPackagesIndex6' ;
  sq_GetPkgsByLONo.Close ;
 End ;

 End ; //With 
End ;

procedure TfExtMovePkg.bbClearPkgGridClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  mtLoadPackages.Active:= False ;
  mtLoadPackages.Active:= True ;
  ROWNO:= 1 ;
  SetReadOnlyprops ;
 End ;
end;

procedure TfExtMovePkg.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmPkgs) ;//.Free ;
end;

procedure TfExtMovePkg.lbRemovePackageClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) and (mtLoadPackages.RecordCount > 0) then
  mtLoadPackages.Delete ;
 End ;
end;

procedure TfExtMovePkg.lbAddPackageClick(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
end;

procedure TfExtMovePkg.grdPackagesPACKAGENOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  NewValue: string;
  PkgSupplierCode: String3;
  PkgSupplierNo: Integer ;
  Action: TEditAction;
  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
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


  if Action = eaACCEPT then
  Begin
   AddPkgToGrid(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo) ;
   Accept:= True ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= 'Package number '+NewValue+' does not exist' ;
     Accept:= False ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Package number '+NewValue+' is reserved by '+Res_UserName ;
     Accept:= False ;
    End ;

  SetReadOnlyprops ;
  finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfExtMovePkg.IdentifyPackageSupplier(
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
    PkgSupplierCode := dmsSystem.PkgNoToSuppCode_III(PkgNo,
    integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]),
    FSupplierNo, PkgSupplierNo, ProductNo);
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

procedure TfExtMovePkg.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
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
     sq_OneUniquePkg.ParamByName('Status').AsInteger              := 1 ;
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
       ShowMessage('Package no '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' is reserved by user '+Res_UserName) ;
      End ;
    End ; //if not...
     sq_OneUniquePkg.Close ;
  Finally

  End ;
 End ; //with

end;

procedure TfExtMovePkg.SetReadOnlyprops ;
Begin
   if dmPkgs.mtLoadPackages.RecordCount > 0 then
    pePhysInventory.ReadOnly:= True
     else
      pePhysInventory.ReadOnly:= False ;
End ;

procedure TfExtMovePkg.peMoveToOwnerChange(Sender: TObject);
begin
 Try
 if peOwner.Items.Count > 0 then
 Begin

 End ;


 dmsContact.LoadPhysInventory(peMoveToPhysInv.Items, integer(peMoveToOwner.Items.Objects[peMoveToOwner.ItemIndex]) , ThisUser.CompanyNo) ;

 if peMoveToPhysInv.Items.Count > 0 then
 Begin
  peMoveToPhysInv.ItemIndex:= 0 ;

 dmsContact.LoadLogicalInventory(peMoveToLogInv.Items,
 integer(peMoveToPhysInv.Items.Objects[peMoveToPhysInv.ItemIndex]) );
 if peMoveToLogInv.Items.Count > 0 then
  peMoveToLogInv.ItemIndex:= 0 ;
 End ;

 Finally

 End ;

end;

procedure TfExtMovePkg.peMoveToPhysInvChange(Sender: TObject);
begin
 if peMoveToPhysInv.Items.Count > 0 then
 dmsContact.LoadLogicalInventory(peMoveToLogInv.Items,
 integer(peMoveToPhysInv.Items.Objects[peMoveToPhysInv.ItemIndex]) );
 if peMoveToLogInv.Items.Count > 0 then
  peMoveToLogInv.ItemIndex:= 0 ;
end;

procedure TfExtMovePkg.BitBtn1Click(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
end;

procedure TfExtMovePkg.acMovePkgsUpdate(Sender: TObject);
begin
 acMovePkgs.Enabled:=  dmPkgs.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfExtMovePkg.acMovePkgsExecute(Sender: TObject);
const
  LF = #10;
var
  Save_Cursor:TCursor;
Begin
 if peMoveToLogInv.Items.Count > 0 then
 Begin

 if MessageDlg('Vill du flytta paket Från '
+Trim(peOwner.Items[peOwner.ItemIndex])+' / '+ Trim(pePhysInventory.Items[pePhysInventory.ItemIndex])
+' / '+ Trim(peLogicalInventory.Items[peLogicalInventory.ItemIndex])
+LF+'Till --->>> '+ Trim(peMoveToOwner.Items[peMoveToOwner.ItemIndex])
+' / '+ Trim(peMoveToPhysInv.Items[peMoveToPhysInv.ItemIndex])
+' / '+ Trim(peMoveToLogInv.Items[peMoveToLogInv.ItemIndex])
+LF+'Datum: '+DateToStr(deRegDate.Date)

//+LF+'    (ffLS'+IntToStr(integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]))
//+LF+'    ftLS'+IntToStr(integer(peMoveToPhysInv.Items.Objects[peMoveToPhysInv.ItemIndex]))
//+LF+'    ffp'+IntToStr(integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]))
//+LF+'    ftp'+IntToStr(integer(peMoveToLogInv.Items.Objects[peMoveToLogInv.ItemIndex]))
// +')    '
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
   With dmPkgs do
    Begin
     if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0)) then
     Begin
      if ExtFlyttaPaket(103, {Extern flytt}
      integer(peMoveToLogInv.Items.Objects[peMoveToLogInv.ItemIndex]),
      integer(peMoveToOwner.Items.Objects[peMoveToOwner.ItemIndex])) then
      Begin
       ShowMessage('Paket flyttade ok') ;
       bbClearPkgGridClick(Sender) ;
      End
      else
      ShowMessage('Problem att flytta paket.') ;
     End
     else
     ShowMessage('No packages were selected.') ;

    End ; //with
  finally
   FIsModified := False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ; //if...

 End
 else
 ShowMessage('Välj en lagergrupp att flytta paketen till.') ;
end;


end.


