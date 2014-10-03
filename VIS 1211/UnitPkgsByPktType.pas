unit UnitPkgsByPktType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, Db, SqlTimSt,
  dxExEdtr, ImgList,
  idGlobal, dxEdLib, dxDBELib, dxDBEdtr, StdCtrls, DBCtrls,
  dxEditor, cxPC, cxControls, Buttons, cxDropDownEdit,
  cxCalendar, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGraphics,
  cxSpinEdit, cxLabel, cxClasses ;



type
  TfrmPkgsByPktType = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    lbAddPkg: TdxBarLargeButton;
    lbRemovePkg: TdxBarLargeButton;
    lbSavePkgs: TdxBarLargeButton;
    lbCloseForm: TdxBarLargeButton;
    dxPageControl1: TcxPageControl;
    Panel1: TPanel;
    grdPkgTypes: TdxDBGrid;
    ImageList1: TImageList;
    lbPkgNoInt: TdxBarLargeButton;
    dxBarDockControl2: TdxBarDockControl;
    tsDupPkgNo: TcxTabSheet;
    dxDBGrid1: TdxDBGrid;
    pmProducts: TdxBarPopupMenu;
    bbAddProduct: TdxBarButton;
    eCode: TdxBarEdit;
    lbSelectProduct: TdxBarLargeButton;
    pmPackages: TdxBarPopupMenu;
    bbRemoveAllPkgs: TdxBarButton;
    dxDBGrid1PackageNo: TdxDBGridMaskColumn;
    dxDBGrid1SupplierCode: TdxDBGridMaskColumn;
    grdPkgTypesPKGCODE: TdxDBGridLookupColumn;
    grdPkgTypesPackageNo: TdxDBGridMaskColumn;
    grdPkgTypesSupplierCode: TdxDBGridMaskColumn;
    grdPkgTypesProduct: TdxDBGridMaskColumn;
    grdPkgTypesA_LE: TdxDBGridMaskColumn;
    grdPkgTypesGRADESTAMP: TdxDBGridMaskColumn;
    grdPkgTypesBARCODE: TdxDBGridMaskColumn;
    grdPkgTypesPackageTypeNo: TdxDBGridMaskColumn;
    grdPkgTypesAM3: TdxDBGridMaskColumn;
    grdPkgTypesNM3: TdxDBGridMaskColumn;
    grdPkgTypesPCS: TdxDBGridMaskColumn;
    grdPkgTypesMFBM: TdxDBGridMaskColumn;
    grdPkgTypesRecID: TdxDBGridMaskColumn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    bbClearPkgGrid: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbOwner: TcxComboBox;
    cbPhysInventory: TcxComboBox;
    cbLogicalInventory: TcxComboBox;
    cbMatPunktAgare: TcxComboBox;
    cbRegPoint: TcxComboBox;
    cbDatum: TcxDateEdit;
    cxLabel10: TcxLabel;
    seRunNo: TcxSpinEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure lbAddPkgClick(Sender: TObject);
    procedure lbSavePkgsClick(Sender: TObject);
    procedure lbCloseFormClick(Sender: TObject);
    procedure lbRemovePkgClick(Sender: TObject);
    procedure lbPkgNoIntClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbRemoveAllPkgsClick(Sender: TObject);
    procedure grdPkgTypesPKGCODEValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure grdPkgTypesPackageNoValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure cbOwnerPropertiesChange(Sender: TObject);
    procedure cbPhysInventoryPropertiesChange(Sender: TObject);
    procedure cbMatPunktAgarePropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
    OKToSave : Boolean ;
    Function  UnsavedPkgs : Boolean ;
    procedure InsertPkgSerie(Sender: TObject);
    procedure RemoveSavedPkgsFromMemTable(Sender: TObject);
    procedure AddPkg(Sender: TObject);
  public
    { Public declarations }
    SavePkgs : Boolean ;
    class procedure StartProc ;
  end;

//var frmPkgsByPktType: TfrmPkgsByPktType;

implementation

uses VidaConst,   VidaUser, dmsDataConn,
  UnitPkgNoSeries, dmsVidaSystem,
  dmcVidaSystem, dmsVidaContact,  
  dmsPkgByPkgType, uSearchRunNo;

{$R *.dfm}

Class procedure TfrmPkgsByPktType.StartProc ;
Begin
 Try
  dm_PkgByPkgType:= Tdm_PkgByPkgType.Create(Nil) ;

  With TfrmPkgsByPktType.Create (Application) do
  Try
  ShowModal ;
  Finally
   Free ;
  End ;

 Finally
  FreeAndNil(dm_PkgByPkgType) ;
 End ;
End ;


procedure TfrmPkgsByPktType.FormCreate(Sender: TObject);
Var RegPoint, PhysInventory, LogicalInventory, x : Integer ;
begin
 dm_PkgByPkgType.PackageTypeNo:= 0 ; //PET_LE:= 0 ; FJ_LE:= 0 ; PCS:= 0 ;
 With dm_PkgByPkgType do
 Begin
  cbDatum.Date:= Now ;
  mtpackages.Active:= False ;
  mtpackages.Active:= True ;
  dmsSystem.cdsBarCodes.Active:= True ;

//Load Owners
  dmsContact.Load_InvOwner(cbOwner.Properties.Items, ThisUser.CompanyNo, RoleType);
  cbOwner.ItemIndex:= 0 ;

  For x := 0 to cbOwner.Properties.Items.Count - 1 do
   if ThisUser.CompanyNo = integer(cbOwner.Properties.Items.Objects[x]) then
    cbOwner.ItemIndex:= x ;

  if RoleType = cLego then
   cbOwner.Enabled:= False
   else
    cbOwner.Enabled:= True ;

  cbOwner.Properties.OnChange:= NIL ;
  cbPhysInventory.Properties.OnChange:= NIL ;

 //Load Reg points
  if (cbOwner.Properties.Items.Count > 0) and (cbOwner.ItemIndex > -1) then
  Begin
   cbRegPoint.Text:= 'N/A' ;
   dmcSystem.LoadRegPoint(cbRegPoint.Properties.Items, integer(cbOwner.Properties.Items.Objects[cbOwner.ItemIndex])) ;
   if cbRegPoint.Properties.Items.Count > 0 then
    cbRegPoint.ItemIndex:= 0 ;
  End ;

  
  Try
//Load PhysInv
  dmsContact.LoadPhysInventory(cbPhysInventory.Properties.Items, integer(cbOwner.Properties.Items.Objects[cbOwner.ItemIndex]) ,ThisUser.CompanyNo) ;
  cbPhysInventory.ItemIndex:= 0 ;

//Load Logical Inv
  dmsContact.LoadLogicalInventory( cbLogicalInventory.Properties.Items, integer(cbPhysInventory.Properties.Items.Objects[cbPhysInventory.ItemIndex]) );

  cbLogicalInventory.ItemIndex:= 0 ;


  Finally
   cbPhysInventory.Properties.OnChange:= cbPhysInventoryPropertiesChange ;
   cbOwner.Properties.OnChange:= cbOwnerPropertiesChange ;
  End ;

//Load Mätpunktsägare
  dmsContact.LoadMatPunktsAgare(cbMatPunktAgare.Properties.Items) ;

  cbMatPunktAgare.ItemIndex:= 0 ;
  For x := 0 to cbMatPunktAgare.Properties.Items.Count - 1 do
   if ThisUser.CompanyNo = integer(cbMatPunktAgare.Properties.Items.Objects[x]) then
    cbMatPunktAgare.ItemIndex:= x ;

  SupplierNo:= integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex]) ;

//Supplier code
  SupplierCode:= dmsContact.GetClientCode(integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex])) ;
  eCode.Text := SupplierCode ;
  SavePkgs:= False ;
  For x := 3 to grdPkgTypes.ColumnCount -1 do
   grdPkgTypes.Columns[x].ReadOnly:= True ;
  grdPkgTypes.Columns[0].ReadOnly:= True ;
 End ;//with


{
  with TIniFile.Create(dmsConnector.InifilesMap+'VisPkgsByPktType'+'.'+ThisUser.UserName) do
  try
   if cbPhysInventory.Properties.Items.Count > 0 then
   Begin
    PhysInventory:= ReadInteger ('PkgEntry', 'PIP', 0);
    if PhysInventory > 0 then
    For x := 0 to cbPhysInventory.Properties.Items.Count - 1 do
    if PhysInventory = integer(cbPhysInventory.Properties.Items.Objects[x]) then
     cbPhysInventory.ItemIndex:= x ;
   End ;

//   cbPhysInventory.ItemIndex:= PhysInventory ;

   if cbLogicalInventory.Properties.Items.Count > 0 then
   Begin
    LogicalInventory:= ReadInteger ('PkgEntry', 'LIP', 0);
    if LogicalInventory > 0 then
//    cbLogicalInventory.ItemIndex:= LogicalInventory ;
    For x := 0 to cbLogicalInventory.Properties.Items.Count - 1 do
    if LogicalInventory = integer(cbLogicalInventory.Properties.Items.Objects[x]) then
     cbLogicalInventory.ItemIndex:= x ;
   End ;

   if cbRegPoint.Properties.Items.Count > 0 then
   Begin
    RegPoint:= ReadInteger ('PkgEntry', 'RegPoint', 0);
    if RegPoint > 0 then
    For x := 0 to cbRegPoint.Properties.Items.Count - 1 do
    if RegPoint = integer(cbRegPoint.Properties.Items.Objects[x]) then
     cbRegPoint.ItemIndex:= x ;
   End ;


  Finally
   Free ;
  End ;

}
end;

procedure TfrmPkgsByPktType.lbAddPkgClick(Sender: TObject);
begin
   AddPkg(Sender) ;
end;


procedure TfrmPkgsByPktType.lbSavePkgsClick(Sender: TObject);

begin
 if dm_PkgByPkgType.mtPackages.RecordCount > 0 then
 Begin
 if MessageDlg('Spara paket mot mätpunkt: '+LF
 +Trim(cbMatPunktAgare.Properties.Items[cbMatPunktAgare.ItemIndex])+'/'+
 Trim(cbRegPoint.Properties.Items[cbRegPoint.itemindex])+LF
 +'Ägare:'+ Trim(cbOwner.Properties.Items[cbOwner.itemindex])+LF
 +'Lagerplats: '+Trim(cbPhysInventory.Properties.Items[cbPhysInventory.itemindex])
+'/'+ Trim(cbLogicalInventory.Properties.Items[cbLogicalInventory.ItemIndex])+LF
+'Datum: '+DateToStr(cbDatum.Date) ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 OKToSave := True ;
 With dm_PkgByPkgType do
 Begin
  if (cbRegPoint.Properties.Items.Count > 0) and (cbRegPoint.ItemIndex > -1) then
  Begin
  mtpackages.DisableControls ;
  Try

 if mtpackages.RecordCount > 0 then
 Begin
  if (cbLogicalInventory.ItemIndex > -1) AND (0 < integer(cbLogicalInventory.Properties.Items.Objects[cbLogicalInventory.ItemIndex])) then
  Begin
  LogicalTransferInventoryNo:= integer(cbLogicalInventory.Properties.Items.Objects[cbLogicalInventory.ItemIndex]) ;
  if mtpackages.State <> dsBrowse then
  Try
   mtPackages.Post ;
  Except
   on eDatabaseError do
    Raise ;
  End ;

 //Check that packages are OKToSave
  mtpackages.First ;
  While not mtpackages.Eof do
  Begin
   if Length(Trim(mtpackagesPACKAGENO.AsString)) = 0 then //PCS
    Begin
     ShowMessage('Row no '+mtpackagesRECID.AsString+' have no package number') ;
     OKToSave := False ;
    End ;


   mtpackages.Next ;
  End ;
  if OKToSave = False then
   Exit ;
   Begin
     if SavePackages2(
     cbDatum.Date,
     integer(cbOwner.Properties.Items.Objects[cbOwner.ItemIndex]), //Owner
     integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex]), //Producer
     integer(cbRegPoint.Properties.Items.Objects[cbRegPoint.ItemIndex]),//Mätpunkt
     LogicalTransferInventoryNo,
     seRunNo.Value) then
     Begin
      if MessageDlg('Paket sparade OK, vill du avsluta?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
        SavePkgs:= True ;
        Close ;
       End
       else
       Begin
        RemoveSavedPkgsFromMemTable(Sender) ;
       End ;
     End
     else
     Begin
      RemoveSavedPkgsFromMemTable(Sender) ;
      ShowMessage('Some packages failed to save, the package left are unsaved.');
     End ;
   End ;
  End
  else
   ShowMessage('Please select a inventory ') ;
 End ;

 Finally
  mtpackages.EnableControls ;
 End ;

 End //if
  else
   ShowMessage('Ingen mätpunkt vald.') ;
 End ; //with
End ; //if
End ;
end;

procedure TfrmPkgsByPktType.RemoveSavedPkgsFromMemTable(Sender: TObject);
Var
// OldIndexName : String ;
 Save_Cursor:TCursor;
// x : Integer ;
Begin
 With dm_PkgByPkgType do
 Begin
  mtpackages.DisableControls ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try
   mtDupPkgNo.Active:= False ;
   mtDupPkgNo.Active:= True ;
   mtPackages.Active:= False ;
   mtPackages.Active:= True ;
  Finally
   mtpackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
End ;


procedure TfrmPkgsByPktType.lbCloseFormClick(Sender: TObject);
begin
 Close ;
end;

procedure TfrmPkgsByPktType.lbRemovePkgClick(Sender: TObject);
begin
 With dm_PkgByPkgType do
 Begin
  if mtpackages.RecordCount > 0 then
  Begin
  if mtpackages.State <> dsBrowse then
   mtPackages.Cancel
   else
    mtPackages.Delete ;
  End ;
 End ;
end;

procedure TfrmPkgsByPktType.lbPkgNoIntClick(Sender: TObject);
begin
 With dm_PkgByPkgType do
 Begin
  mtpackages.DisableControls ;
  Try
  if mtpackages.Active then
  Begin
   if mtpackages.State <> dsBrowse then
    Try
    mtPackages.Post ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     End ;
    End ;

   if mtpackages.RecordCount = 0 then
   Begin
    ShowMessage('To use this function you must insert one package first') ;
    Exit ;
   End
    else
     InsertPkgSerie(Sender) ;
  End  //if
   else
    ShowMessage('To use this function you must insert one package first') ;
  Finally
   mtpackages.EnableControls ;
  End ;
 End ;// with
end;

procedure TfrmPkgsByPktType.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor : TCursor;
        Res_UserName : String ;
        frmPkgNoSeries: TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dm_PkgByPkgType do
 Begin
  mtpackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+' paket kommer att läggas till, fortsätta?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;

    if ResultButton = mrYes then
    Begin
     Save_Cursor := Screen.Cursor;
     Screen.Cursor := crSQLWait;    { Show hourglass cursor }
     Try


    For PkgNo := StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) to
             StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text)) do
    Begin

    if mtDupPkgNo.FindKey([PkgNo,Trim(SupplierCode)]) then
    Begin
     MessageBeep(MB_ICONEXCLAMATION);
     ShowMessage('Duplicate Package number entered '+IntToStr(PkgNo)) ;
    End
    else
     if dmsSystem.Pkg_Reserved(
          PkgNo,
          SupplierCode, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ShowMessage('Package no is reserved by user '+ Res_UserName) ;
         End
     else
     if PackageNumberExists(PkgNo, SupplierCode) = False then
     Begin
      Try
       mtpackages.Insert ;
       mtpackagesPACKAGENO.AsInteger:= PkgNo ;
       mtpackages.Post ;

      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtpackages.Cancel ;
       End ;
      End ;
     End //if..
      else
       ShowMessage('Package number  '+IntToStr(PkgNo)+' already exist, please change to different number') ;
    End ; //for
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;

    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   mtpackages.EnableControls ;
  End ;
 End ; // with

End ;

procedure TfrmPkgsByPktType.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var ResultButton : word ;
//    OvcIniFileStore1 : TIniFile ;
begin
 if (UnsavedPkgs) and (SavePkgs = False) then
 Begin
 ResultButton:= MessageDlg('Paket ej sparade, vill du spara?',
    mtConfirmation, [mbYes, mbNo, mbCancel], 0) ;
 if ResultButton = mrYes then
  begin
   lbSavePkgsClick(Sender) ;

   CanClose:= OkToSave ;
  End
  else
  if ResultButton = mrCancel then
   CanClose:= False ;
 End ;

if CanClose = True then
Begin
 With dm_PkgByPkgType do
 Begin
  dmsSystem.cdsBarCodes.Active:= False ;
 End ;//with

{ OvcIniFileStore1 := TIniFile.Create( dmsConnector.InifilesMap+'VisPkgsByPktType'+'.'+ThisUser.UserName );
 Try
//  OvcIniFileStore1.WriteInteger ('PkgEntry', 'Owner', integer(cbOwner.Items.Objects[cbOwner.ItemIndex])) ;
  OvcIniFileStore1.WriteInteger ('PkgEntry', 'PIP', integer(cbPhysInventory.Properties.Items.Objects[cbPhysInventory.ItemIndex])) ;
  OvcIniFileStore1.WriteInteger ('PkgEntry', 'LIP', integer(cbLogicalInventory.Properties.Items.Objects[cbLogicalInventory.ItemIndex])) ;
//  OvcIniFileStore1.WriteInteger ('PkgEntry', 'MatPunktAgare', integer(cbMatPunktAgare.Items.Objects[cbMatPunktAgare.ItemIndex])) ;
  OvcIniFileStore1.WriteInteger ('PkgEntry', 'RegPoint', integer(cbRegPoint.Properties.Items.Objects[cbRegPoint.ItemIndex])) ;
 Finally
  OvcIniFileStore1.Free ;
 End ; }

 With dmsSystem do
 Begin
  Delete_ReservedPkgs (Self.Name) ;
  dm_PkgByPkgType.mtpackages.Active:= False ;
 End ; 
End ;

end;

Function  TfrmPkgsByPktType.UnsavedPkgs : Boolean ;
Begin
 Result := False ;
 With dm_PkgByPkgType do
 Begin
  if mtPackages.Active then
   if mtPackages.RecordCount > 0 then
    Result := True ;
 End ;
End ;

procedure TfrmPkgsByPktType.bbRemoveAllPkgsClick(Sender: TObject);
begin
 With dm_PkgByPkgType do
 Begin
  if mtpackages.RecordCount > 0 then
  Begin
  if mtpackages.State <> dsBrowse then
   mtPackages.Cancel ;
  mtPackages.First ;
  while not mtPackages.Eof do
  Begin
   mtPackages.Delete ;
  End ;
  End ;
 End ;
end;

procedure TfrmPkgsByPktType.AddPkg(Sender: TObject);
begin
 With dm_PkgByPkgType do
 Begin
  if mtpackages.Active then
  Begin
   if mtpackages.State <> dsBrowse then
   Try
    mtPackages.Post ;
   Except
    on eDatabaseError do
     Raise ;
   End ;
   mtPackages.Append ;
  End
   else
     ShowMessage('Välj en pakettyp först') ;
 End ;
end;

procedure TfrmPkgsByPktType.grdPkgTypesPKGCODEValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
 With dm_PkgByPkgType do
 Begin
  cds_PkgCodes.Active:= False ; 
  sq_PkgCodes.ParamByName('PackageTypeNo').AsInteger:= mtPackagesPackageTypeNo.AsInteger ;
  cds_PkgCodes.Active:= True ;
  if cds_PkgCodes.RecordCount > 0 then
  Begin
   mtPackagesProduct.AsString:= cds_PkgCodesPRODUCT.AsString ;
   mtPackagesA_LE.AsFloat:= cds_PkgCodesA_LE.AsFloat ;
   mtPackagesGRADESTAMP.AsString:= cds_PkgCodesGRADESTAMP.AsString ;
   mtPackagesBARCODE.AsString:= cds_PkgCodesBARCODE.AsString ;
   mtPackagesAM3.AsFloat:= cds_PkgCodesAM3.AsFloat ;
   mtPackagesNM3.AsFloat:= cds_PkgCodesNM3.AsFloat ;
   mtPackagesPCS.AsInteger:= cds_PkgCodesPCS.AsInteger ;
   mtPackagesMFBM.AsFloat:= cds_PkgCodesMFBM.AsFloat ;
  End ;
 End ;
end;

procedure TfrmPkgsByPktType.grdPkgTypesPackageNoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  NewValue: string;
  PkgNo : Integer ;
  TestPkgNo : Int64 ;
  tAccept : Boolean ;
  Res_UserName : String ;
begin
 tAccept:= True ;
 With dm_PkgByPkgType do
 Begin
  NewValue := TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

  TestPkgNo := StrToInt64(NewValue) ;
  if TestPkgNo > Const_MAX_PKG_NO then
  Begin
   ErrorText:= 'Max packageNo allowed is '+IntToStr(Const_MAX_PKG_NO) ;
   tAccept:= False ;
  End ;

  PkgNo := StrToIntDef(NewValue,0) ;

  if mtDupPkgNo.FindKey([PkgNo, Trim(SupplierCode)]) then
  Begin
   MessageBeep(MB_ICONEXCLAMATION);
   ErrorText:= 'Duplicate Package number!' ;
   Accept := False ;
   MessageBeep(MB_ICONINFORMATION);
   tAccept:= False ;
  End
  else
  if PackageNumberExists(PkgNo, SupplierCode) then
  Begin
   ErrorText:= 'Package no already exist. '+ Pkg_Info(PkgNo, Trim(SupplierCode)) ;
   tAccept:= False ;
  End
  else
  if dmsSystem.Pkg_Reserved(
          PkgNo,
          SupplierCode, Self.Name, Res_UserName
          ) <> ThisUser.UserName+'/'+Self.Name { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          ErrorText:= 'Package no is reserved by user '+ Res_UserName ;
          tAccept:= False ;
         End ;
  Accept := tAccept ;
 End ; //with
end ;

procedure TfrmPkgsByPktType.cbOwnerPropertiesChange(Sender: TObject);
begin
 cbPhysInventory.Properties.OnChange:= NIL ;
 Try

  if (cbOwner.Properties.Items.Count > 0) and (cbOwner.ItemIndex > -1) then
  Begin
   dmsContact.LoadPhysInventory(cbPhysInventory.Properties.Items, integer(cbOwner.Properties.Items.Objects[cbOwner.ItemIndex]) ,ThisUser.CompanyNo) ;
   cbRegPoint.Text:= 'N/A' ;
   cbRegPoint.Properties.Items.Clear ;
   dmcSystem.LoadRegPoint(cbRegPoint.Properties.Items, integer(cbOwner.Properties.Items.Objects[cbOwner.ItemIndex])) ;
   if cbRegPoint.Properties.Items.Count > 0 then
    cbRegPoint.ItemIndex:= 0 ;
  End ;

 Finally
  cbPhysInventory.Properties.OnChange:= cbPhysInventoryPropertiesChange ;
  cbPhysInventory.ItemIndex:= 0 ;
 End ;
end;

procedure TfrmPkgsByPktType.cbPhysInventoryPropertiesChange(
  Sender: TObject);
begin
 dmsContact.LoadLogicalInventory(
 cbLogicalInventory.Properties.Items,
 integer(cbPhysInventory.Properties.Items.Objects[cbPhysInventory.ItemIndex]) );

 cbLogicalInventory.Text:= cbPhysInventory.Properties.Items[cbPhysInventory.ItemIndex] ;

 cbLogicalInventory.ItemIndex:= 0 ;
end;

procedure TfrmPkgsByPktType.cbMatPunktAgarePropertiesChange(
  Sender: TObject);
begin
  dm_PkgByPkgType.SupplierCode:= dmsContact.GetClientCode(integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex])) ;
  eCode.Text := dm_PkgByPkgType.SupplierCode ;
  dm_PkgByPkgType.SupplierNo:= integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex]) ;


  cbRegPoint.Properties.Items.Clear ;
  dmcSystem.LoadRegPoint(cbRegPoint.Properties.Items, integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex])) ;
  if cbRegPoint.Properties.Items.Count > 0 then
  Begin
   cbRegPoint.ItemIndex:= 0 ;
  End
  else
   Begin
   End ;

end;

procedure TfrmPkgsByPktType.BitBtn1Click(Sender: TObject);
var fSearchRunNo: TfSearchRunNo;
begin
 fSearchRunNo:= TfSearchRunNo.Create(nil);
 Try
 fSearchRunNo.mtProps.Edit ;
 fSearchRunNo.mtPropsRegPointNo.AsInteger:= integer(cbRegPoint.Properties.Items.Objects[cbRegPoint.ItemIndex]) ;
 fSearchRunNo.mtPropsSupplierNo.AsInteger:= integer(cbMatPunktAgare.Properties.Items.Objects[cbMatPunktAgare.ItemIndex]) ;
 fSearchRunNo.mtProps.Post ;
 if fSearchRunNo.ShowModal = mrOK then
 Begin
  seRunNo.Value := fSearchRunNo.cds_RunNosKrnr.AsInteger ;
 End ;
 Finally
  FreeAndNil(fSearchRunNo) ;
 End ;
end;


end.
