unit fConfirmIntLoad;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, Menus,
  Db, dxmdaset, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxCntner, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxBar, dxBarExtItems,
  ImgList, dxDBTLCl, dxGrClms, dxExGrEd, Variants,
  dxExELib, DBXpress, Grids, DBGrids,
  kbmMemTable, SqlTimSt, cxPC, cxControls, ActnList ;


type
  TformConfirmIntLoad = class(TForm)
    PanelKontraktHuvud: TPanel;
    Panel35: TPanel;
    dxEditStyleController1: TdxEditStyleController;
    dxMDLoadHead: TdxMemData;
    dxMDLoadHeadLoadNo: TIntegerField;
    dxMDLoadHeadLoadCreated: TDateTimeField;
    dxMDLoadHeadCreatedBy: TStringField;
    dxMDLoadHeadModifiedBy: TStringField;
    dxMDLoadHeadLoadedDate: TDateTimeField;
    dxMDLoadHeadExternalLoadID: TStringField;
    dxMDLoadHeadTransporterNo: TIntegerField;
    dxMDLoadHeadInternalNote: TMemoField;
    dxMDLoadHeadNoteToTransporter: TMemoField;
    dsLoadHead: TDataSource;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager22: TdxBarManager;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarConfirmLoad: TdxBarLargeButton;
    dxMDLoadHeadSenderLoadStatus: TIntegerField;
    dsAvropNr: TDataSource;
    dxMDLoadHeadSupplierNo: TIntegerField;
    dxMDLoadHeadPackageEntryOption: TStringField;
    dxMDLoadHeadLocalLoadingLocationNo: TIntegerField;
    dxMDLoadHeadLocalDestinationNo: TIntegerField;
    Panel1: TPanel;
    Panel6: TPanel;
    dxDBGrid4: TdxDBGrid;
    Panel8: TPanel;
    dxDBGrid2: TdxDBGrid;
    Panel9: TPanel;
    dxDBGrid4RecId: TdxDBGridColumn;
    dxDBGrid4ShippingPlanNo: TdxDBGridMaskColumn;
    dxDBGrid4PackageNo: TdxDBGridMaskColumn;
    dxDBGrid4Problem: TdxDBGridMaskColumn;
    dxDBGrid4ProductDescription: TdxDBGridMaskColumn;
    dxDBGrid4LoadDetailStatus: TdxDBGridMaskColumn;
    dxDBGrid4Pieces: TdxDBGridMaskColumn;
    dxDBGrid4AktM3: TdxDBGridMaskColumn;
    dxDBGrid4PcsPerLength: TdxDBGridMaskColumn;
    dxDBGrid4PackageOK: TdxDBGridCheckColumn;
    dxDBGrid4SupplierCode: TdxDBGridMaskColumn;
    dxDBGrid4PkgsRemoved: TdxDBGridCheckColumn;
    dxPageControl1: TcxPageControl;
    dxTSMain: TcxTabSheet;
    dxTSNote: TcxTabSheet;
    dxDBMemo1: TdxDBMemo;
    dxDBMemo2: TdxDBMemo;
    dxDBGrid3: TdxDBGrid;
    dxDBEdit1: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit3: TdxDBLookupEdit;
    dxDBLookupEdit4: TdxDBLookupEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    Panel7: TPanel;
    cmbPhysInv: TComboBox;
    Label1: TLabel;
    cmbLogicalInv: TComboBox;
    Label2: TLabel;
    imglOutbar_large: TImageList;
    Memo1: TMemo;
    dxMDLoadHeadFS: TStringField;
    dxMDLoadHeadOriginalSupplierNo: TStringField;
    dxMDLoadHeadLoadModified: TDateTimeField;
    dxDBGrid2LONo: TdxDBGridMaskColumn;
    dxDBGrid2PRODUCT: TdxDBGridMaskColumn;
    dxDBGrid2LoadDetailNo: TdxDBGridMaskColumn;
    dxDBGrid2PACKAGENO: TdxDBGridMaskColumn;
    dxDBGrid2NOOFPKG: TdxDBGridMaskColumn;
    dxDBGrid2PACKAGETYPENO: TdxDBGridMaskColumn;
    dxDBGrid2SUPP_CODE: TdxDBGridMaskColumn;
    dxDBGrid2PKG_OK: TdxDBGridMaskColumn;
    dxDBGrid2PKGLOG: TdxDBGridMaskColumn;
    dxDBGrid2M3_NET: TdxDBGridMaskColumn;
    dxDBGrid2PCS: TdxDBGridMaskColumn;
    dxDBGrid2M3_NOM: TdxDBGridMaskColumn;
    dxDBGrid2KVM: TdxDBGridMaskColumn;
    dxDBGrid2LOPM: TdxDBGridMaskColumn;
    dxDBGrid2ProductNo: TdxDBGridMaskColumn;
    dxDBGrid2DefaultCustShipObjectNo: TdxDBGridMaskColumn;
    dxDBGrid2PcsPerLength: TdxDBGridMaskColumn;
    dxDBGrid3LoadNo: TdxDBGridMaskColumn;
    dxDBGrid3ShippingPlanNo: TdxDBGridMaskColumn;
    dxDBGrid3Avrop_CustomerNo: TdxDBGridMaskColumn;
    dxDBGrid3LO_CustomerNo: TdxDBGridMaskColumn;
    dsLoadRemovedPackages: TDataSource;
    dxDBGrid2Removed: TdxDBGridCheckColumn;
    dxDBGrid4M3_NOM: TdxDBGridMaskColumn;
    dxDBGrid4KVM: TdxDBGridMaskColumn;
    dxDBGrid4LOPM: TdxDBGridMaskColumn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ActionList1: TActionList;
    acClose: TAction;
    acAR: TAction;
    procedure FormShow(Sender: TObject);
    procedure dxMDLoadHeadAfterInsert(DataSet: TDataSet);
    procedure cmbPhysInvChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acARExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ConfirmLoad(Sender: TObject);
    Procedure Get_LoadPackages(Sender: TObject) ;
    procedure FillLoadHeader(Sender: TObject);
    procedure SetCurrentLoad_Confirmed(Sender: TObject;fNewLoadNo : Integer) ;
    function  FillLoadShippingPlan(Sender: TObject) : Boolean ;
    procedure ChangeInventoryOnPackagesMoved(Sender: TObject);
    procedure Double_Check_Load_Is_Confirmed(Sender: TObject) ;
    procedure ProcessPkgAND_Log(Sender : TObject;Status, Operation, LogInvPointNo : Integer) ;
    procedure MoveAllPkgsToInv(Sender: TObject);
  public
    { Public declarations }
    LO_CUSTOMERNO : Integer ;
    LoadNo        : Integer ;
  end;

//var formConfirmLoad: TformConfirmLoad;
Var  Trans1 : TTransactionDesc ;

implementation

uses dmsDataConn, VidaUser, dmc_ArrivingLoads, VidaConst, dmsVidaContact ;

{$R *.DFM}

procedure TformConfirmIntLoad.FormShow(Sender: TObject);
Var
 Save_Cursor  : TCursor;
 PIPNo, x, y  : Integer ;
 ChangeToIMPProduct : Boolean ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 Try
 dmArrivingLoads.cds_Confirmed_Pkg_Log.Active:= True ;

 dmArrivingLoads.mtLoadRemovedPackages.Active:= False ;
 dmArrivingLoads.mtLoadRemovedPackages.Active:= True ;
 dmArrivingLoads.mtLoadShippingPlan.Active:= False ;
 dmArrivingLoads.mtLoadShippingPlan.Active:= True ;

 dmArrivingLoads.mtLoadPackages.Active:= False ;
 dmArrivingLoads.mtLoadPackages.Active:= True ;

 dmArrivingLoads.cdsConfirmed_Load.Active:= True ;


 if LoadNo <> -1 then
   Begin
    dmArrivingLoads.cdsOneLoad.Active:= True ;
    FillLoadHeader(Sender) ;
    if FillLoadShippingPlan(Sender)  = false then
    Begin
     ShowMessage('Problem med paketmatchning, öppna lasten och kolla matchning mot LO rader') ;
     dxBarConfirmLoad.Enabled:= False ;
    End ;

    Get_LoadPackages(Sender) ;

  if dmArrivingLoads.mtLoadShippingPlanOBJECTTYPE.AsInteger = 1 then
  Begin
   if MessageDlg('Vill du ändra kvalitet till kvalitet + impregnerat på alla produkter? (i annat fall går varorna till lagret som de är)',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ChangeToIMPProduct:= True
    else
    ChangeToIMPProduct:= False ;
  End
  else
  ChangeToIMPProduct:= False ;

    if ChangeToIMPProduct then
     if dmArrivingLoads.mtLoadShippingPlanOBJECTTYPE.AsInteger = 1 then
      dmArrivingLoads.ChangePackagesToIMPProduct ;
   End ;

 dmArrivingLoads.mtLoadShippingPlan.First ;

 While not dmArrivingLoads.mtLoadShippingPlan.Eof do
 Begin
  Memo1.Lines.Add('LO: '+dmArrivingLoads.mtLoadShippingPlanShippingPlanNo.AsString) ;

  if (dmArrivingLoads.mtLoadShippingPlanOBJECTTYPE.AsInteger = 2) and (dmArrivingLoads.mtLoadShippingPlanOrderType.AsInteger <> c_Purchase) then
  Begin
   Memo1.Lines.Add('Ankomstregistreringen skapar en kundlast (om inte alla paket är flyttade till ett lager)') ;
//   Memo1.Lines.Add('and insert any removed packages into the selected inventory.') ;
  End
  else
  if (dmArrivingLoads.mtLoadShippingPlanOBJECTTYPE.AsInteger = 2) and (dmArrivingLoads.mtLoadShippingPlanOrderType.AsInteger = c_Purchase {Purchase}) then
  Begin
   Memo1.Lines.Add('Ankomstregistreringen skapar en inköpslast, och placerar paketen i det valda lagret.') ;
   Memo1.Lines.Add('') ;
  End
  else
  if (dmArrivingLoads.mtLoadShippingPlanOBJECTTYPE.AsInteger = 1) or (dmArrivingLoads.mtLoadShippingPlanOBJECTTYPE.AsInteger = 0) then
   Memo1.Lines.Add('Ankomstregistreringen placerar paketen i det valda lagret') ;


  Memo1.Lines.Add('----------------------------------------------------------------------------------------------------------------------------------------------') ;
  Memo1.Lines.Add('') ;
  dmArrivingLoads.mtLoadShippingPlan.Next ;
 End ;

  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   dmsContact.LoadPhysInventory(cmbPhysInv.Items, self.LO_CUSTOMERNO, ThisUser.CompanyNo)
    else
     dmsContact.LoadPhysInventory(cmbPhysInv.Items, self.LO_CUSTOMERNO, ThisUser.CompanyNo) ;

  PIPNo:=  dmsContact.GetPIPNo( dmArrivingLoads.mtLoadShippingPlanLIPNo.AsInteger) ;

  For x := 0 to cmbPhysInv.Items.Count -1 do
  Begin
   if PIPNo = integer(cmbPhysInv.Items.Objects[x]) then
   Begin
    cmbPhysInv.ItemIndex := x ;
    if cmbPhysInv.Items.Count > 0 then
    Begin
     dmsContact.LoadLogicalInventory(
     cmbLogicalInv.Items,
     integer(cmbPhysInv.Items.Objects[cmbPhysInv.ItemIndex]) );
     cmbLogicalInv.Text:= cmbPhysInv.Items[cmbPhysInv.ItemIndex] ;
     cmbLogicalInv.ItemIndex:= 0 ;

     For y := 0 to cmbLogicalInv.Items.Count -1 do
     if dmArrivingLoads.mtLoadShippingPlanLIPNo.AsInteger = integer(cmbLogicalInv.Items.Objects[y]) then
     Begin
      cmbLogicalInv.ItemIndex:= y ;
     End ;

    End ;
   End ;
  End ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

function TformConfirmIntLoad.FillLoadShippingPlan(Sender: TObject) : Boolean ;
Var x: Integer ;
Begin
 with dmArrivingLoads do
 Begin
 sq_Get_LoadShippingPlan.Close ;
 sq_Get_LoadShippingPlan.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_Get_LoadShippingPlan.Open ;

 While not sq_Get_LoadShippingPlan.Eof do
 Begin
  mtLoadShippingPlan.Insert ;
  For x:= 0 to 6 do
   mtLoadShippingPlan.Fields[x].AsVariant:=  sq_Get_LoadShippingPlan.Fields[x].AsVariant ;
   mtLoadShippingPlan.Post ;
  sq_Get_LoadShippingPlan.Next ;
 End ;

 if mtLoadShippingPlan.RecordCount = 0 then
 Result:= False
 else
 Result:= True ;

  sq_Get_LoadShippingPlan.Close ;
 End ; //with
End ;

procedure TformConfirmIntLoad.dxMDLoadHeadAfterInsert(DataSet: TDataSet);
begin
 dxMDLoadHeadLoadCreated.AsDateTime   := Now ;
 dxMDLoadHeadLoadModified.AsDateTime  := Now ;
 dxMDLoadHeadCreatedBy.AsString       := 'System' ;
 dxMDLoadHeadModifiedBy.AsString      := 'System' ;

 dxMDLoadHeadSenderLoadStatus.AsInteger   := 0 ;
 LoadNo:= dxMDLoadHeadLoadNo.AsInteger ;
 dxMDLoadHeadPackageEntryOption.AsString  := 'Paketnr' ;
end;


procedure TformConfirmIntLoad.FillLoadHeader(Sender: TObject);
Var x: Integer ;
Begin
 dxMDLoadHead.Open ;

 dmArrivingLoads.cdsOneLoad.Active:= False ;
 dmArrivingLoads.sq_Load.ParamByName('LoadNo').AsInteger:= LoadNo ;
 dmArrivingLoads.cdsOneLoad.Active:= True ;
 if dmArrivingLoads.cdsOneLoad.Locate('LoadNo',LoadNo,[])then
 Begin
  dxMDLoadHead.Insert ;
  For x:= 1 to 14 do
   dxMDLoadHead.Fields[x].AsVariant:=  dmArrivingLoads.cdsOneLoad.Fields[x-1].AsVariant ;
  dxMDLoadHead.Post ;
  LoadNo:= dxMDLoadHeadLoadNo.AsInteger ;
 End
  else
   dxMDLoadHead.Close ;
End ;


//Change inventory location of the packages (and set pkg status = 1) that was decided to move to an inventory
procedure TformConfirmIntLoad.ChangeInventoryOnPackagesMoved(Sender: TObject);
Begin
 With dmArrivingLoads do
 Begin
 if mtLoadRemovedPackages.RecordCount > 0 then
 Begin
 //Change inventory in PACKAGENUMBER records
 mtLoadRemovedPackages.First ;
 While not mtLoadRemovedPackages.Eof do
 Begin
   cds_Confirmed_Pkg_Log.Insert ;
   cds_Confirmed_Pkg_LogPackageNo.AsInteger               := mtLoadRemovedPackagesPackageNo.AsInteger ;
   cds_Confirmed_Pkg_LogSupplierCode.AsString             := mtLoadRemovedPackagesSUPP_Code.AsString ;
   cds_Confirmed_Pkg_LogConfirmed_LoadNo.AsInteger        := mtLoadRemovedPackagesLoadNo.AsInteger ;
   cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo.AsInteger:= mtLoadRemovedPackagesLONo.AsInteger ;
   cds_Confirmed_Pkg_LogNewLoadNo.AsInteger               := -1 ;
   cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger       := -1 ;
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger := integer(cmbLogicalInv.Items.Objects[cmbLogicalInv.ItemIndex]) ;
   cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger           := mtLoadRemovedPackagesPackageTypeNo.AsInteger ;
   cds_Confirmed_Pkg_LogPackageStatus.AsInteger           := 1 ;
   cds_Confirmed_Pkg_LogOperation.AsInteger               := CONST_TO_INVENTORY ;
   cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo.AsInteger := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
   cds_Confirmed_Pkg_Log.Post ;

   ProcessPkgAND_Log(Sender, Status_Pkg_IN_Inventory, oper_AnkomstRegistrerad, integer(cmbLogicalInv.Items.Objects[cmbLogicalInv.ItemIndex])) ;
   mtLoadRemovedPackages.Next ;
 End ; // While not mtLoadRemovedPackages.Eof do
 End  // if mtLoadRemovedPackages.RecordCount > 0 then
  else
   ProcessPackage_Log(integer(cmbLogicalInv.Items.Objects[cmbLogicalInv.ItemIndex])) ;
 End ; //with
End ;

procedure TformConfirmIntLoad.ProcessPkgAND_Log(Sender : TObject;Status, Operation, LogInvPointNo : Integer) ;
Begin
 With dmArrivingLoads do
 Begin
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('PackageNo').AsInteger               := mtLoadRemovedPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('SupplierCode').AsString             := mtLoadRemovedPackagesSUPP_CODE.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('RegistrationPointNo').AsInteger     := -1 ; //Ingen mätpunkt
      sp_ProcessPkgAND_Log.ParamByName('PackageTypeNo').AsInteger           := mtLoadRemovedPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('LogicalInventoryPointNo').AsInteger := LogInvPointNo ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('UserID').AsInteger                  := ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('Status').AsInteger                  := Status ;
      sp_ProcessPkgAND_Log.ParamByName('Operation').AsInteger               := Operation ;

      sp_ProcessPkgAND_Log.ExecProc ;
 End ;
End ;

procedure TformConfirmIntLoad.ConfirmLoad(Sender: TObject);
Var
 myRollBack : Boolean ;
 Save_Cursor:TCursor;
begin
 myRollBack := False ;
 with dmArrivingLoads do
 Begin

 mtLoadShippingPlan.First ;
 While not mtLoadShippingPlan.Eof do
 Begin
   if ((mtLoadRemovedPackages.RecordCount > 0) and (cmbPhysInv.ItemIndex = -1)) or //(cmbLogicalInv.Text = 'Select')) or
    (cmbLogicalInv.ItemIndex = -1) then
 Begin
  myRollBack  := True ;
  ShowMessage('Paket i LO '+mtLoadShippingPlanShippingPlanNo.AsString
  +' skall flyttas till ett lager, välj ett lager och prova igen') ;
  Exit ;
 End ;
 mtLoadShippingPlan.Next ;
 End ;

   //START A TRANSACTION
  Trans1.TransactionID:= 1 ;
  Trans1.IsolationLevel:= xilREADCOMMITTED ;
  dmsConnector.SQLConnection.StartTransaction(Trans1);
  Try
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }


 Try
  mtLoadShippingPlan.First ;
  While (not mtLoadShippingPlan.Eof) and (myRollBack = False) do
  Begin
   //all packages to inventory if OrderType is Purchase or ADD or INT LO type
//LM flytta till mtLoadRemovedPackages tabellen
   if (mtLoadShippingPlanOrderType.AsInteger = c_Purchase) or (mtLoadShippingPlanOBJECTTYPE.AsInteger < 2) then
    MoveAllPkgsToInv(Sender) ;

   SetCurrentLoad_Confirmed(Sender, mtLoadShippingPlanLoadNo.AsInteger) ;
   mtLoadShippingPlan.Next ;
  End ;

//LM Spara skiten!
   if cdsConfirmed_Load.ChangeCount > 0 then
   Begin
   if cdsConfirmed_Load.ApplyUpdates(0) > 0 then
   Begin
    myRollBack := True ;
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := mtLoadShippingPlanLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := mtLoadShippingPlanShippingPlanNo.AsInteger ;
    sq_IsLoadConfirmed.Open ;
    if not sq_IsLoadConfirmed.Eof then
    Begin
     ShowMessage('Lasten är redan ankomstregistrerad av '+Trim(sq_IsLoadConfirmedUserName.AsString)
     +' den '+SQLTimeStampToStr('',sq_IsLoadConfirmedDateCreated.AsSQLTimeStamp)) ;
    End ;
    sq_IsLoadConfirmed.Close ;
   End ;
   End
   else
   Begin
    myRollBack := True ;
    ShowMessage('Systemet kunde inte ankomstregistra lasten. Försök igen senare.') ;
   End ;

// Change Inventory location on Removed packages TO INVENTORY selected,
// Set Status = 1 on Packages that are moved to an inventory
//LM Ändra lager ställe på AR paket
   if myRollBack = False then
   ChangeInventoryOnPackagesMoved(Sender) ;


   if cds_Confirmed_Pkg_Log.ChangeCount > 0 then
    if cds_Confirmed_Pkg_Log.ApplyUpdates(0) > 0 then myRollBack := True ;

   if myRollBack = True then
   Begin
    dmsConnector.SQLConnection.Rollback(Trans1) ;
    ShowMessage('Error confirming, operation rollbacked') ;
    dxBarConfirmLoad.Enabled:= False ;
   End
   else
   Begin
    dmsConnector.SQLConnection.Commit(Trans1) ;
    dxBarConfirmLoad.Enabled:= False ;
    LoadConfirmedOK:= True ;
//dubbel kolla att last är confirmerad
    Double_Check_Load_Is_Confirmed(Sender) ;
    ShowMessage('Ankomstregistreringen OK') ;
   End ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

  Except
   dmsConnector.SQLConnection.Rollback(Trans1);
  End ;

 End ;// with dmArrivingLoads do
End ;

procedure TformConfirmIntLoad.Double_Check_Load_Is_Confirmed(Sender: TObject) ;
Begin
  dmArrivingLoads.cdsConfirmed_Load.Active:= False ;
  dmArrivingLoads.cdsConfirmed_Load.Active:= True ;
  Try
  dmArrivingLoads.mtLoadShippingPlan.First ;
  While not dmArrivingLoads.mtLoadShippingPlan.Eof do
  Begin
    dmArrivingLoads.sq_IsLoadConfirmed.Close ;
    dmArrivingLoads.sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger          := dmArrivingLoads.mtLoadShippingPlanLOADNO.AsInteger ;
    dmArrivingLoads.sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger  := dmArrivingLoads.mtLoadShippingPlanShippingPlanNo.AsInteger ;
    dmArrivingLoads.sq_IsLoadConfirmed.Open ;
    if dmArrivingLoads.sq_IsLoadConfirmed.Eof then
    Begin
     SetCurrentLoad_Confirmed(Sender, dmArrivingLoads.mtLoadShippingPlanNewLoadNo.AsInteger) ;
    End ;
   dmArrivingLoads.sq_IsLoadConfirmed.Close ;
   dmArrivingLoads.mtLoadShippingPlan.Next ;
  End ; //while


   if dmArrivingLoads.cdsConfirmed_Load.ChangeCount > 0 then
   Begin
    if dmArrivingLoads.cdsConfirmed_Load.ApplyUpdates(0) > 0 then
    Begin
    End ;
   End ;

  Finally
   dmArrivingLoads.cdsConfirmed_Load.Active:= False ;
  End ;
End ;

//make an entry for the load that is confirmed
procedure TformConfirmIntLoad.SetCurrentLoad_Confirmed(Sender: TObject;fNewLoadNo: Integer) ;
Begin
 with dmArrivingLoads do
 Begin
   cdsConfirmed_Load.Insert ;
   cdsConfirmed_LoadConfirmed_LoadNo.AsInteger          := mtLoadShippingPlanLoadNo.AsInteger ;
   cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger  := mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cdsConfirmed_LoadNewLoadNo.AsInteger                 := fNewLoadNo ;
   cdsConfirmed_LoadNewShippingPlanNo.AsInteger         := mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cdsConfirmed_LoadDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
   cdsConfirmed_LoadCreatedUser.AsInteger               := ThisUser.UserID ;
   cdsConfirmed_LoadModifiedUser.AsInteger              := ThisUser.UserID ;
   cdsConfirmed_Load.Post ;
   SetLoadAR(mtLoadShippingPlanLoadNo.AsInteger,  1{set LoadAR till ankomstregistrerad = 1}) ;
 End ; //with
End ;

procedure TformConfirmIntLoad.cmbPhysInvChange(Sender: TObject);
begin
 if cmbPhysInv.Items.Count > 0 then
 Begin
  dmsContact.LoadLogicalInventory(
  cmbLogicalInv.Items,
  integer(cmbPhysInv.Items.Objects[cmbPhysInv.ItemIndex]) );
  cmbLogicalInv.Text:= cmbPhysInv.Items[cmbPhysInv.ItemIndex] ;
  cmbLogicalInv.ItemIndex:= 0 ;
 End ;
end;

Procedure TformConfirmIntLoad.Get_LoadPackages(Sender: TObject) ;
 Var x : Integer ;
 Begin
   With dmArrivingLoads do
   Begin
    Try
     mtLoadPackages.DisableControls ;
    sq_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadPackages.Open ;
    While not sq_LoadPackages.Eof do
    Begin
     mtLoadPackages.Insert ;
     Try
     For x := 0 to 24 do
      mtLoadPackages.Fields.Fields[x].AsVariant := sq_LoadPackages.Fields.Fields[x].AsVariant ;
     mtLoadPackagesSUPP_CODE.AsString           := mtLoadPackagesSUPP_CODE.AsString;
     mtLoadPackagesOverrideRL.AsInteger         := sq_LoadPackagesOverrideRL.AsInteger ;
     mtLoadPackages.Post ;
     Except
      on eDatabaseError do
      Raise ;
     End ;

     sq_LoadPackages.Next ;
    End ; //while
    sq_LoadPackages.Close ;
    mtLoadpackages.First ;
    Finally
     mtLoadPackages.EnableControls ;
    End ;
   End ;//with
 End ;

procedure TformConfirmIntLoad.FormCreate(Sender: TObject);
begin
 with dmArrivingLoads do
 Begin
  LoadConfirmedOK  := False ;
 End ;
end;

procedure TformConfirmIntLoad.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
 with dmArrivingLoads do
 Begin
  cds_Confirmed_Pkg_Log.Active    := False ;
  mtLoadPackages.Active           := False ;
  dxMDLoadHead.Close ;
  mtLoadShippingPlan.Active       := False ;
  mtLoadRemovedPackages.Active    := False ;
  cdsConfirmed_Load.Active        := False ;
  cdsPkgNumber.Active             := False ;
  mtLoadpackages.Active           := False ;
 End ;
 CanClose:= True ;
end;

procedure TformConfirmIntLoad.acARExecute(Sender: TObject);
begin
 ConfirmLoad(Sender) ;
end;

//Insert Pkg to move to  Memory table "mtLoadRemovedPackages"
procedure TformConfirmIntLoad.MoveAllPkgsToInv(Sender: TObject);
Var x         : Integer ;
  Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 with dmArrivingLoads do
 Begin
  mtLoadRemovedPackages.DisableControls ;
  mtLoadPackages.DisableControls ;


  mtLoadPackages.Filter:= 'LONo = '+mtLoadShippingPlanShippingPlanNo.AsString ;
  mtLoadPackages.Filtered:= True ;
  Try

  if cmbLogicalInv.Text <> 'Select' then
  Begin
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if mtLoadPackagesRemoved.AsBoolean = False then
   Begin
    mtLoadRemovedPackages.Insert ;
    For x:= 0 to 18 do
     mtLoadRemovedPackages.Fields.Fields[x].AsVariant:= mtLoadPackages.Fields.Fields[x].AsVariant ;

    mtLoadRemovedPackages.Post ;

    mtLoadPackages.Edit ;
    mtLoadPackagesRemoved.AsBoolean:= True ;
    mtLoadPackages.Post ;
   End ;
   mtLoadPackages.Next ;
  End ;
  End
  else
   ShowMessage('Välj ett lager') ;

  Finally
   mtLoadPackages.Filtered:= False ;
   mtLoadRemovedPackages.EnableControls ;
   mtLoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TformConfirmIntLoad.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

end.
