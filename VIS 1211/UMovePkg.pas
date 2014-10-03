unit UMovePkg ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxBarExtItems, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBTLCl,
  dxGrClms, VidaType, db, dxGrClEx, dxLayout,
  kbmMemTable, dxDBEdtr, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls ;

type
  TfMovePkg = class(TForm)
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
    dxDateEdit1: TdxDateEdit;
    procedure lbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbSaveLoadClick(Sender: TObject);
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
  private
    { Private declarations }
     Unique_No : Integer ;
     FIsModified : Boolean ;
     function  SomethingHasChanged : Boolean ;
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

//var fMovePkg: TfMovePkg;

implementation

uses dmcPkgs, VidaConst, dlgPickPkg_II,
  dmsVidaContact, dmsVidaProduct, UnitSelectLO_NumberSSP,
  VidaUser, UnitCRViewReport, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaSystem, dmsVidaSystem,
  UnitLONumber, dmsDataConn ;

{$R *.dfm}

procedure TfMovePkg.CreateCo ;
Var x : Integer ;
begin
 With dmPkgs do
 Begin
  fProductNo := -1 ;
  fBarCodeID:= -1 ;
  fGradeStampNo:= -1 ;
  fLogicalInventoryNo:=  0;
  dmsSystem.cdsBarCodes.Active:= True ;
  mtProdSpecificLengths.Active:= True ;
//Load Owners
  dmsContact.Load_InvOwner(peOwner.Items, ThisUser.CompanyNo, RoleType) ;
  if peOwner.Items.Count > 1 then
  Begin
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

  if peOwner.Items.Count > 0 then
  dmPkgs.SupplierNo:=    integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;

  if RoleType = cLego then
    peOwner.Enabled:= False
    else
    peOwner.Enabled:= True ;


  peOwner.OnChange:= NIL ;
  pePhysInventory.OnChange:= NIL ;
  Try
//Load PhysInv
  dmsContact.LoadPhysInventory(pePhysInventory.Items, integer(peOwner.Items.Objects[peOwner.ItemIndex]) ,ThisUser.CompanyNo) ;
  pePhysInventory.Items.Insert(0,'No Change');
  pePhysInventory.ItemIndex:= 0 ;

//Load Logical Inv
  if pePhysInventory.Items.Count > 0 then
  dmsContact.LoadLogicalInventory( peLogicalInventory.Items, integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );
  peLogicalInventory.Items.Insert(0,'No Change');

  peLogicalInventory.ItemIndex:= 0 ;


  Finally
   pePhysInventory.OnChange:= pePhysInventoryChange ;
   peOwner.OnChange:= peOwnerChange ;
  End ;
 End ; //with


end;

procedure TfMovePkg.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;
   End ;
end;

procedure TfMovePkg.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TfMovePkg.FormCreate(Sender: TObject);
begin
  dmPkgs:= TdmPkgs.Create(Nil);
  With dmPkgs do
  Begin
   mtLoadPackages.Active:= True ;
  End ; //with

  dxDateEdit1.Date:= Date ;
end;

procedure TfMovePkg.ResolvePkgNoAmbiguity(
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
  with TfrmPackagePicker_II.Create(Self) do try
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
    free;
    end;
end;

procedure TfMovePkg.lbSaveLoadClick(Sender: TObject);
const
  LF = #10;
var
  Save_Cursor:TCursor;
Begin
 if (peLogicalInventory.Items.Count > 0) and (peLogicalInventory.Items[peLogicalInventory.ItemIndex]<> 'No Change') then
 Begin

 if MessageDlg('Vill du flytta paket till lagergrupp: '+ Trim(peLogicalInventory.Items[peLogicalInventory.ItemIndex])
 +LF+'Datum: '+DateToStr(dxDateEdit1.Date)
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
   With dmPkgs do
    Begin
     if ((mtLoadPackages.Active) AND (mtLoadPackages.RecordCount > 0)) then
     Begin
     if mtPackages.State in [dsEdit, dsInsert] then
      mtPackages.Post ;

      if SomethingHasChanged then
      Begin
      if FlyttaPaket(104, {104 = intern flytt}
      integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex])) then
      Begin
       ShowMessage('Paket flyttade ok') ;
       bbClearPkgGridClick(Sender) ;
      End
      else
      ShowMessage('Problem att flytta paket.') ;

      End
      else
      ShowMessage('No paramater is changed.') ;
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

function TfMovePkg.SomethingHasChanged : Boolean ;
Begin
 if (pePhysInventory.ItemIndex <> 0)
 OR (peLogicalInventory.ItemIndex <> 0)

 OR ((dmPkgs.mtpackages.Active) AND (dmPkgs.mtpackages.Fields[1].AsInteger > 0)) then
 Result:= True
 else
 Result:= False ;
End ;

procedure TfMovePkg.FormCloseQuery(Sender: TObject;
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
     lbSaveLoadClick(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     CanClose := True
     else
      CanClose := False ;

 if CanClose then
 Begin
 //Remove entries in Pkgs_Res
  With dmsSystem do
  Begin
   Delete_ReservedPkgs (Self.Name) ;
  End ;
  CloseDataSets;
 End ; 
end;

procedure TfMovePkg.lbPkgInfoClick(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
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

procedure TfMovePkg.lbPkgNoSerieClick(Sender: TObject);
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

procedure TfMovePkg.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, x : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        Res_UserName : String ;
        frmPkgNoSeries : TfrmPkgNoSeries ;
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

procedure TfMovePkg.bbCustomPkgGridClick(Sender: TObject);
begin
 grdPackages.ColumnsCustomizing;
end;

procedure TfMovePkg.peOwnerChange(Sender: TObject);
begin
 Try
 if peOwner.Items.Count > 0 then
 Begin
  dmPkgs.SupplierNo:=    integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
 End ;
 dmsContact.LoadPhysInventory(pePhysInventory.Items, integer(peOwner.Items.Objects[peOwner.ItemIndex]) , ThisUser.CompanyNo) ;
 pePhysInventory.Items.Insert(0,'No Change');
 if pePhysInventory.Items.Count > 0 then
 pePhysInventory.ItemIndex:= 0 ;

 Finally
 End ;

end;

procedure TfMovePkg.pePhysInventoryChange(Sender: TObject);
begin
 if pePhysInventory.Items.Count > 0 then
 dmsContact.LoadLogicalInventory(peLogicalInventory.Items,
 integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );


 if pePhysInventory.ItemIndex = 0 then
 peLogicalInventory.Items.Insert(0,'No Change');
 peLogicalInventory.Text:= pePhysInventory.Items[pePhysInventory.ItemIndex] ;

 peLogicalInventory.ItemIndex:= 0 ;
end;

procedure TfMovePkg.grdPkgsEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
 dmPkgs.SummarizePkg ;
end;

procedure TfMovePkg.bbPkgNoByLOClick(Sender: TObject);
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

procedure TfMovePkg.AddPkgsByLONumber (Sender: TObject;const ProductNo, LONo : Integer ) ;
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

procedure TfMovePkg.bbClearPkgGridClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  mtLoadPackages.Active:= False ;
  mtLoadPackages.Active:= True ;
  ROWNO:= 1 ;
  SetReadOnlyprops ;
 End ;
end;

procedure TfMovePkg.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmPkgs) ;
end;

procedure TfMovePkg.lbRemovePackageClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) and (mtLoadPackages.RecordCount > 0) then
  mtLoadPackages.Delete ;
 End ;
end;

procedure TfMovePkg.lbAddPackageClick(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
end;

procedure TfMovePkg.grdPackagesPACKAGENOValidate(Sender: TObject;
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

function TfMovePkg.IdentifyPackageSupplier(
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

procedure TfMovePkg.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
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

procedure TfMovePkg.SetReadOnlyprops ;
Begin
   if dmPkgs.mtLoadPackages.RecordCount > 0 then
    pePhysInventory.ReadOnly:= True
     else
      pePhysInventory.ReadOnly:= False ;
End ;

end.

