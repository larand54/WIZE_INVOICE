unit UfelRegPkg ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxBarExtItems, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBTLCl,
  dxGrClms, VidaType, db, dxGrClEx, dxLayout, 
  kbmMemTable, dxDBEdtr, StdCtrls, ImgList, SqlTimSt, Buttons, ComCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ActnList ;

type
  TffelRegPkg = class(TForm)
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
    bcLengthOption: TdxBarCombo;
    bcStdLenGrp: TdxBarCombo;
    pLoadHead: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    beProductName: TdxButtonEdit;
    peGradeStamp: TdxPickEdit;
    peBarCode: TdxPickEdit;
    peRegPoint: TdxPickEdit;
    peOwner: TdxPickEdit;
    pePhysInventory: TdxPickEdit;
    peLogicalInventory: TdxPickEdit;
    Panel1: TPanel;
    grdPkgs: TdxDBGrid;
    dxBarDockControl2: TdxBarDockControl;
    bbClearLengths: TdxBarButton;
    bbPkgNoByLO: TdxBarLargeButton;
    bbClearPkgGrid: TBitBtn;
    grdPackagesROWNO: TdxDBGridMaskColumn;
    Label14: TLabel;
    Label15: TLabel;
    peMatPunktAgare: TdxPickEdit;
    BitBtn1: TBitBtn;
    dxDateEdit1: TcxDateEdit;
    Label3: TLabel;
    eRunNr: TcxTextEdit;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    acSearchRunNo: TAction;
    procedure lbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbSaveLoadClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lbPkgInfoClick(Sender: TObject);
    procedure lbPkgNoSerieClick(Sender: TObject);
    procedure bbCustomPkgGridClick(Sender: TObject);
    procedure beProductNameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure bcLengthOptionChange(Sender: TObject);
    procedure bcStdLenGrpChange(Sender: TObject);
    procedure peBarCodeChange(Sender: TObject);
    procedure peGradeStampChange(Sender: TObject);
    procedure peOwnerChange(Sender: TObject);
    procedure pePhysInventoryChange(Sender: TObject);
    procedure grdPkgsEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure bbClearLengthsClick(Sender: TObject);
    procedure bbPkgNoByLOClick(Sender: TObject);
    procedure bbClearPkgGridClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbRemovePackageClick(Sender: TObject);
    procedure lbAddPackageClick(Sender: TObject);
    procedure grdPackagesPACKAGENOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure peMatPunktAgareChange(Sender: TObject);
    procedure acSearchRunNoExecute(Sender: TObject);
  private
    { Private declarations }

     Unique_No : Integer ;
     fFirstLengthColumn : Integer ;
     AddingPkgsFromPkgEntry : Boolean ;
     FIsModified : Boolean ;
     procedure ReLoadPackageColumnsWithAllLengths(Sender: TObject);
//     function  SomethingHasChanged : Boolean ;
     procedure CloseDataSets;
     procedure InsertPkgSerie(Sender: TObject) ;
     Procedure CreateFieldsInmtPackagesTable(Sender : TObject) ;
     procedure ShowALL_LengthColumns(Sender: TObject);
     procedure Show_STD_LengthColumns(Sender: TObject);
     procedure AddPkgsByLONumber (Sender: TObject; const ProductNo, LONo : Integer ) ;
     function IdentifyPackageSupplier(
          const PkgNo,
          FSupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String) : TEditAction;
    procedure AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer) ;
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

//var  ffelRegPkg: TffelRegPkg;

implementation

uses dmcPkgs, VidaConst, dlgPickPkg_II,
  dmsVidaContact, UnitPackageEntry, dmsVidaProduct, UnitSelectLO_NumberSSP,
  VidaUser, UnitCRViewReport, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaSystem, UnitGetProduct, dmsVidaSystem,
  UnitLONumber, dmsDataConn , uSearchRunNo;

{$R *.dfm}

procedure TffelRegPkg.CreateCo ;
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


  //Load Gradestamps
  dmcSystem.LoadGradeStamps(peGradeStamp.Items) ;
  peGradeStamp.Items.Insert(0,'No Change') ;
  peGradeStamp.ItemIndex:= 0 ;

  //Load Barcode ID
  dmcSystem.LoadBarCodes(peBarCode.Items) ;
  peBarCode.Items.Insert(0,'No Change') ;
  peBarCode.ItemIndex:= 0 ;

//Load Length groups
  dmcSystem.LoadLengthGroup(bcStdLenGrp.Items) ;
  if bcStdLenGrp.Items.Count > 0 then
    bcStdLenGrp.ItemIndex:= 0 ;

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


//Load MätpunktÄgare
  dmsContact.LoadMatPunktsAgare(peMatPunktAgare.Items) ;
  if peMatPunktAgare.Items.Count > 1 then
  Begin
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
   peMatPunktAgare.Enabled:= False
    else
     peMatPunktAgare.Enabled:= True ;


  //Load Registration points
  if peMatPunktAgare.Items.Count > 0 then
  Begin
   dmcSystem.LoadRegPoint(peRegPoint.Items, integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex])) ;
   if peRegPoint.Items.Count > 0 then
    peRegPoint.ItemIndex:= 0 ;
  End ;

  peOwner.OnChange:= NIL ;
  pePhysInventory.OnChange:= NIL ;
  Try
//Load PhysInv
  dmsContact.LoadPhysInventory(pePhysInventory.Items, integer(peOwner.Items.Objects[peOwner.ItemIndex]) ,ThisUser.CompanyNo) ;
  if pePhysInventory.Items.Count > 0 then
  pePhysInventory.ItemIndex:= 0 ;

//Load Logical Inv
  if pePhysInventory.Items.Count > 0 then
  dmsContact.LoadLogicalInventory( peLogicalInventory.Items, integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );
  if peLogicalInventory.Items.Count > 0 then
  peLogicalInventory.ItemIndex:= 0 ;
  Finally
   pePhysInventory.OnChange:= pePhysInventoryChange ;
   peOwner.OnChange:= peOwnerChange ;
  End ;
 End ; //with

  AddingPkgsFromPkgEntry:= False ;
  bcLengthOption.ItemIndex:= 1 ;
end;

procedure TffelRegPkg.CloseDataSets;
begin
   With dmPkgs do
   Begin
    mtLoadPackages.Active:= False ;
   End ;
end;

procedure TffelRegPkg.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

procedure TffelRegPkg.FormCreate(Sender: TObject);
begin
  dmPkgs:= TdmPkgs.Create(Nil);
  With dmPkgs do
  Begin
   dxDateEdit1.Date:= Now ;
   mtLoadPackages.Active:= True ;
   fProductGroupNo:= -1 ;
  End ; //with

  bcLengthOption.ItemIndex:= 1 ;
end ;


procedure TffelRegPkg.ResolvePkgNoAmbiguity(
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

procedure TffelRegPkg.lbSaveLoadClick(Sender: TObject);
const
  LF = #10;
var
  Save_Cursor:TCursor;
Begin
 if MessageDlg('Ändra paket mot mätpunkt: '
 +Trim(peMatPunktAgare.Items[peMatPunktAgare.itemindex])
 +'/'+Trim(peRegPoint.Items[peRegPoint.itemindex])
 +LF+'Ägare:'+Trim(peOwner.Items[peOwner.itemindex])

 +LF+'Lagerplats: '+Trim(pePhysInventory.Items[pePhysInventory.itemindex])
 +'/'+ Trim(peLogicalInventory.Items[peLogicalInventory.ItemIndex])
 +LF+'Datum: '+DateToStr(dxDateEdit1.Date)
 ,    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin

 if (peRegPoint.Items.Count > 0) and (peRegPoint.ItemIndex <> -1) then
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
      if SaveFelRegPkgs(
      integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex]),
      integer(peLogicalInventory.Items.Objects[peLogicalInventory.ItemIndex]),
      integer(peOwner.Items.Objects[peOwner.ItemIndex]),
      integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]),
      StrToIntDef(eRunNr.Text,-1),
      dxDateEdit1.Date) then
      Begin
       ShowMessage('Paket ändrade.') ;
       bbClearPkgGridClick(Sender) ;
      End
      else
      ShowMessage('Problem ändra paket.') ;
     End
     else
     ShowMessage('Välj paketnr.') ;

    End ; //with
  finally
   FIsModified := False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End
 else
 ShowMessage('Välj en mätpunkt att registrera händelsen mot.') ;

 End ; //if...
end;

{function TffelRegPkg.SomethingHasChanged : Boolean ;
Begin
 if (pePhysInventory.ItemIndex <> 0)
 OR (peLogicalInventory.ItemIndex <> 0)
 OR (beProductName.Text <> 'No Change')
 OR (peGradeStamp.Text <> 'No Change')
 OR (peBarCode.Text <> 'No Change')
 OR (peWrapType.Text <> 'No Change')
 OR (peMiniBundled.Text <> 'No Change')
 OR (peShrinkWrap.Text <> 'No Change')
 OR (peOnSticks.Text <> 'No Change')
 OR (ceChangePkgSize.Checked)
 OR ((dmPkgs.mtpackages.Active) AND (dmPkgs.mtpackages.Fields[1].AsInteger > 0)) then
 Result:= True
 else
 Result:= False ;
End ; }

procedure TffelRegPkg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if FIsModified = True then
   dResult:= MessageDlg('Ändringar är inte sparade, vill du spara nu?',
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

procedure TffelRegPkg.lbPkgInfoClick(Sender: TObject);
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

procedure TffelRegPkg.lbPkgNoSerieClick(Sender: TObject);
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

procedure TffelRegPkg.InsertPkgSerie(Sender: TObject) ;
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
       ShowMessage('Paketnr '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+' är reserverat av '+Res_UserName) ;
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

procedure TffelRegPkg.bbCustomPkgGridClick(Sender: TObject);
begin
 grdPackages.ColumnsCustomizing;
end;

procedure TffelRegPkg.beProductNameButtonClick(Sender: TObject;AbsoluteIndex: Integer);
Var frmGetProduct : TfrmGetProduct ;
begin
 //Add product
 With dmPkgs do
 Begin
  if AbsoluteIndex = 0 then
  Begin
   frmGetProduct:= TfrmGetProduct.Create(Nil);
   Try
   if frmGetProduct.ShowModal = mrOk then
   Begin
    beProductName.Text  := dmcSystem.cds_ProductsProductDisplayName.AsString ;
    fProductNo          := dmcSystem.cds_ProductsProductNo.AsInteger ;
    fProductGroupNo     := dmcSystem.cds_ProductsProductGroupNo.AsInteger ;
    CreateFieldsInmtPackagesTable(Sender) ;
   End ;
   Finally
    dmcSystem.cds_Products.Active:= False ;
    FreeAndNil(frmGetProduct) ;
   End ;
  End
  else
   Begin
    beProductName.Text:= 'No Change' ;
    fProductNo:= -1 ;
    fProductGroupNo:= -1 ;
   End ;
 End ;//with
end;

Procedure TffelRegPkg.CreateFieldsInmtPackagesTable(Sender : TObject) ;
Var x           : Integer ;
    LengthTitle : String ;
    Save_Cursor : TCursor;
//    OvcIniFileStore1 : TIniFile ;
Begin
 With dmPkgs do
 Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }

 if mtPackages.Active then
  mtPackages.Active:= False ;

//  OvcIniFileStore1 := TIniFile.Create( dmsConnector.InifilesMap+'VisFelRegPkg'+'.'+ThisUser.UserName );
 Try
   dsmtPackages.DataSet:= Nil ;
   mtPackages.DeleteIndex('IndexRecId') ;

   mtPackages.DeleteIndex('PkgID') ;

 For x:= mtPackages.Fields.Count - 1 downto 0 do
 Begin
  mtPackages.Fields.Remove(mtPackages.Fields.Fields[x]) ;
 End ;

 mtPackages.FieldDefs.Clear ;

   mtPackages.FieldDefs.Add('RecId',ftInteger,0,False) ;
   mtPackages.FieldDefs[cRECID].CreateField(nil);
   mtPackages.FieldByName('RecId').DisplayLabel:= 'ROWNO' ;

//1
   mtPackages.FieldDefs.Add('TotalPcs',ftInteger,0,False) ;
   mtPackages.FieldDefs[1].CreateField(nil);
   mtPackages.FieldByName('TotalPcs').DisplayLabel:= 'STYCKETAL' ;

   fFirstLengthColumn:= 2 ;
   X:= fFirstLengthColumn  ;

//New section
//  if //(IsLOOnlyFixedLengths) and
//   (bcLengthOption.ItemIndex = 0) then
//    MakeLengthQuery_II
//     else
//        if (bcLengthOption.ItemIndex = 1) and
        if (fProductGroupNo <> -1) then
         Begin
          if bcStdLenGrp.Items.Count > 0 then
           MakeLengthQuery_STD_Lengths (integer(bcStdLenGrp.Items.Objects[bcStdLenGrp.ItemIndex]))
            else
             Begin
              Exit ;
             End ;
         End
          else
           exit ;
  sq_ProductLengths.Open ;

  While not sq_ProductLengths.Eof do
  Begin
   mtPackages.FieldDefs.Add(sq_ProductLengthsActualLengthMM.AsString,ftInteger,0,False) ;
   mtPackages.FieldDefs[x].CreateField(nil);
   LengthTitle:= Trim(sq_ProductLengthsActualLengthMM.AsString) ;
//   if sq_ProductLengthsNominalLengthMM.AsString <> sq_ProductLengthsActualLengthMM.AsString then
//   LengthTitle:= LengthTitle + ' ('+sq_ProductLengthsNominalLengthMM.AsString+') ' ;

//   ActualLengthMMArray[x]:= sq_ProductLengthsActualLengthMM.AsFloat ;
//   NominalLengthMMArray[x]:= sq_ProductLengthsNominalLengthMM.AsFloat ;

   mtPackages.FieldByName(sq_ProductLengthsActualLengthMM.AsString).DisplayLabel:= LengthTitle ;

//   ActualLengthMMArray[x]:= sq_ProductLengthsActualLengthMM.AsFloat ;
   X:= Succ(x) ;

   sq_ProductLengths.Next ;
  End ;
  sq_ProductLengths.Close ;

  mtPackages.AddIndex('IndexRecId','RecId',[]) ;
  mtPackages.IndexName:= 'IndexRecId' ;

 //Create columns in the grid
  grdPkgs.DestroyColumns ;
  grdPkgs.KeyField:= 'RecId' ;

  grdPkgs.CreateDefaultColumns(mtPackages, Self) ;

  grdPkgs.OptionsDB:=   [edgoCancelOnExit,edgoCanDelete,edgoCanNavigation,edgoConfirmDelete,edgoUseBookmarks, edgoLoadAllRecords] ;

 For x:= 0 to grdPkgs.ColumnCount - 1 do
 Begin
  grdPkgs.Columns[x].ReadOnly:= False ;
  grdPkgs.Columns[x].Width:= 45 ;//OvcIniFileStore1.ReadInteger('grdPkgs',IntToStr(x), 45) ;
 End ;

 grdPkgs.Columns[cRECID].Visible:= True ;
 grdPkgs.Columns[cRECID].ReadOnly:= True ;

  mtPackages.Active:= True ;
  mtPackages.Insert ;
  mtPackages.FieldByName('RecId').AsInteger:= 1 ;
  mtPackages.Post ;

 Finally
  dsmtPackages.DataSet:= mtPackages ;
//  OvcIniFileStore1.Free ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ; //with
End ;

procedure TffelRegPkg.bcLengthOptionChange(Sender: TObject);
begin
{  if ((bcLengthOption.ItemIndex=0) or (bcLengthOption.ItemIndex=1)) then
   ReLoadPackageColumnsWithAllLengths(Sender) ;

  case bcLengthOption.ItemIndex of

    SHOW_ALL_LENGTHS-1 : begin
                         ShowALL_LengthColumns(Sender) ;
                         bcStdLenGrp.Enabled := FALSE;
                       end;

    SHOW_STD_LENGTHS-1 : begin
                         bcStdLenGrp.Enabled := TRUE;
                         if bcStdLenGrp.ItemIndex <> NO_SELECTION then
                          Show_STD_LengthColumns(Sender) ;
                       end;

    end; }
end;

procedure TffelRegPkg.bcStdLenGrpChange(Sender: TObject);
begin
// if bcStdLenGrp.ItemIndex <> -1 then
// Begin
  dmPkgs.LoadGroupLengths(integer(bcStdLenGrp.Items.Objects[bcStdLenGrp.ItemIndex]));
  ReLoadPackageColumnsWithAllLengths (Sender) ;
// End ;
end;

procedure TffelRegPkg.ShowALL_LengthColumns(Sender: TObject);
Var x : Integer ;
    Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmPkgs do
 Begin
  dsmtPackages.DataSet:= Nil ;
  Try
   For x := fFirstLengthColumn to mtPackages.Fields.Count -1 do
   grdPkgs.Columns[x].Visible:= True
  Finally
   dsmtPackages.DataSet:= mtPackages ;
  End ;
 End ;
 Finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TffelRegPkg.Show_STD_LengthColumns(Sender: TObject);
Var x : Integer ;
    Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmPkgs do
 Begin
  dsmtPackages.DataSet:= Nil ;
  Try
  For x := fFirstLengthColumn to mtPackages.Fields.Count -1 do
  if mtStandardLengths.FindKey([StrToInt(mtPackages.FieldDefs.Items[x].Name)]) then
   grdPkgs.Columns[x].Visible:= True
  else
   grdPkgs.Columns[x].Visible:= False ;
   Finally
    dsmtPackages.DataSet:= mtPackages ;
   End ;
 End ;
 Finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TffelRegPkg.peBarCodeChange(Sender: TObject);
begin
 dmPkgs.fBarCodeID:= integer(peBarCode.Items.Objects[peBarCode.ItemIndex]) ;
end;

procedure TffelRegPkg.peGradeStampChange(Sender: TObject);
begin
 dmPkgs.fGradeStampNo:= integer(peGradeStamp.Items.Objects[peGradeStamp.ItemIndex]) ;
end;

procedure TffelRegPkg.peOwnerChange(Sender: TObject);
begin
 if peOwner.Items.Count > 0 then
 Begin
  dmPkgs.SupplierNo:=    integer(peOwner.Items.Objects[peOwner.ItemIndex]) ;
 End ;
 dmsContact.LoadPhysInventory(pePhysInventory.Items, integer(peOwner.Items.Objects[peOwner.ItemIndex]) , ThisUser.CompanyNo) ;
 if pePhysInventory.Items.Count > 0 then
 pePhysInventory.ItemIndex:= 0 ;
end;

procedure TffelRegPkg.pePhysInventoryChange(Sender: TObject);
begin
 if pePhysInventory.Items.Count > 0 then
 dmsContact.LoadLogicalInventory(peLogicalInventory.Items,
 integer(pePhysInventory.Items.Objects[pePhysInventory.ItemIndex]) );
 if peLogicalInventory.Items.Count > 0 then
  peLogicalInventory.ItemIndex:= 0 ;
end;

procedure TffelRegPkg.grdPkgsEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
 dmPkgs.SummarizePkg ;
end;

procedure TffelRegPkg.bbClearLengthsClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if mtPackages.Active then
  Begin
   mtPackages.Active:= False ;
   mtPackages.Active:= True ;
  End
  else
  mtPackages.Active:= True ;

  mtPackages.Insert ;
  mtPackages.FieldByName('RecId').AsInteger:= 1 ;
  mtPackages.Post ;
 End ;
end;

procedure TffelRegPkg.bbPkgNoByLOClick(Sender: TObject);
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

procedure TffelRegPkg.AddPkgsByLONumber (Sender: TObject;const ProductNo, LONo : Integer ) ;
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
    ShowMessage('Paketnr '+sq_GetPkgsByLONoPACKAGENO.AsString+'/'+sq_GetPkgsByLONoSUPP_CODE.AsString+'  är reserverat av '+Res_UserName) ;
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

procedure TffelRegPkg.bbClearPkgGridClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  mtLoadPackages.Active:= False ;
  mtLoadPackages.Active:= True ;
  ROWNO:= 1 ;
 End ;
end;

procedure TffelRegPkg.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmPkgs) ;
end;

procedure TffelRegPkg.lbRemovePackageClick(Sender: TObject);
begin
 With dmPkgs do
 Begin
  if (mtLoadPackages.Active) and (mtLoadPackages.RecordCount > 0) then
  mtLoadPackages.Delete ;
 End ;
end;

procedure TffelRegPkg.lbAddPackageClick(Sender: TObject);
begin
 dmPkgs.mtLoadPackages.Append ;
end;

procedure TffelRegPkg.grdPackagesPACKAGENOValidate(Sender: TObject;
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
   if dmPkgs.fProductNo = -1 then
   Begin
    beProductName.Text  := dmcSystem.GetProductDescProductDisplayName (dmPkgs.mtLoadPackagesProductNo.AsInteger, dmPkgs.fProductGroupNo) ;
    dmPkgs.fProductNo   := dmcSystem.cds_ProductsProductNo.AsInteger ;
    CreateFieldsInmtPackagesTable(Sender) ;
//    fProductGroupNo     :=
   End ;
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

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;

end;

function TffelRegPkg.IdentifyPackageSupplier(
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

procedure TffelRegPkg.AddPkgToGrid(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;ProductNo : Integer)  ;
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
       ShowMessage('Paketnr '+sq_OnePkgDetailDataPACKAGENO.AsString+'/'+sq_OnePkgDetailDataSUPP_CODE.AsString+'  är reserverat av '+Res_UserName) ;
      End ;
     End ; //if not...
     sq_OneUniquePkg.Close ;

  Finally

  End ;
 End ; //with
end;

procedure TffelRegPkg.peMatPunktAgareChange(Sender: TObject);
begin
 if peMatPunktAgare.Items.Count > 0 then
 Begin
  peRegPoint.Text := 'N/A' ;
  peRegPoint.Items.Clear ;
  dmcSystem.LoadRegPoint(peRegPoint.Items, integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex])) ;
  if peRegPoint.Items.Count > 0 then
   peRegPoint.ItemIndex:= 0 ;
 End ;
end;

procedure TffelRegPkg.ReLoadPackageColumnsWithAllLengths(Sender: TObject);
Begin
   if dmPkgs.mtPackages.Active then
   if dmPkgs.mtPackages.RecordCount > 0 then
    Begin
    End ;
   CreateFieldsInmtPackagesTable(Sender) ;
   bcLengthOption.Enabled:= True ;
   bcStdLenGrp.Enabled:= True ;
End ;

procedure TffelRegPkg.acSearchRunNoExecute(Sender: TObject);
var fSearchRunNo: TfSearchRunNo;
begin
 fSearchRunNo:= TfSearchRunNo.Create(nil);
 Try
 fSearchRunNo.mtProps.Edit ;
 fSearchRunNo.mtPropsRegPointNo.AsInteger:= integer(peRegPoint.Items.Objects[peRegPoint.ItemIndex]) ;
 fSearchRunNo.mtPropsSupplierNo.AsInteger:= integer(peMatPunktAgare.Items.Objects[peMatPunktAgare.ItemIndex]) ;
 fSearchRunNo.mtProps.Post ;
 if fSearchRunNo.ShowModal = mrOK then
 Begin
  eRunNr.Text:= fSearchRunNo.cds_RunNosKrnr.AsString ;
{  dmsPkg.mtProps.Edit ;
  dmsPkg.mtPropsRunNo.AsInteger:= fSearchRunNo.cds_RunNosKrnr.AsInteger ;
  dmsPkg.mtProps.Post ; }
 End ;
 Finally
  FreeAndNil(fSearchRunNo) ;
 End ;
end;

end.
