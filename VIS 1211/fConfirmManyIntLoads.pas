unit fConfirmManyIntLoads;

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
  TformConfirmManyIntLoads = class(TForm)
    PanelKontraktHuvud: TPanel;
    Panel35: TPanel;
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
    dxMDLoadHeadSenderLoadStatus: TIntegerField;
    dsAvropNr: TDataSource;
    dxMDLoadHeadSupplierNo: TIntegerField;
    dxMDLoadHeadPackageEntryOption: TStringField;
    dxMDLoadHeadLocalLoadingLocationNo: TIntegerField;
    dxMDLoadHeadLocalDestinationNo: TIntegerField;
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
    dxDBGrid3: TdxDBGrid;
    dxDBEdit1: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit3: TdxDBLookupEdit;
    dxDBLookupEdit4: TdxDBLookupEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBImageEdit1: TdxDBImageEdit;
    Panel7: TPanel;
    imglOutbar_large: TImageList;
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
    procedure dxMDLoadHeadAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FChangeToIMPProduct : Boolean ;
    procedure ConfirmLoad ;
    Procedure Get_LoadPackages ;
    procedure FillLoadHeader ;
    procedure SetCurrentLoad_Confirmed(fNewLoadNo : Integer) ;
    function  FillLoadShippingPlan : Boolean ;
    procedure ChangeInventoryOnPackagesMoved ;
    procedure Double_Check_Load_Is_Confirmed ;
    procedure ProcessPkgAND_Log(Status, Operation, LogInvPointNo : Integer) ;
//    procedure MoveAllPkgsToInv ;
  public
    { Public declarations }
    LIPNo         : Integer ;
    LO_CUSTOMERNO : Integer ;
    LoadNo        : Integer ;
    procedure ConfirmThisLoad (const ChangeToIMPProduct : Boolean;const ObjectType : Integer) ;
  end;

//var formConfirmLoad: TformConfirmLoad;
Var  Trans1 : TTransactionDesc ;

implementation

uses dmsDataConn, VidaUser, dmc_ArrivingLoads, VidaConst, dmsVidaContact ;

{$R *.DFM}

function TformConfirmManyIntLoads.FillLoadShippingPlan : Boolean ;
Var x: Integer ;
Begin
 with dmArrivingLoads do
 Begin
 sq_Get_LoadShippingPlan.Close ;
 sq_Get_LoadShippingPlan.ParamByName('LoadNo').AsInteger:= LoadNo ;
 sq_Get_LoadShippingPlan.Open ;
 sq_Get_LoadShippingPlan.First ;

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

procedure TformConfirmManyIntLoads.dxMDLoadHeadAfterInsert(DataSet: TDataSet);
begin
 dxMDLoadHeadLoadCreated.AsDateTime:= Now ;
 dxMDLoadHeadLoadModified.AsDateTime:= Now ;
 dxMDLoadHeadCreatedBy.AsString:= 'System' ;
 dxMDLoadHeadModifiedBy.AsString:= 'System' ;

 dxMDLoadHeadSenderLoadStatus.AsInteger:= 0 ;
 LoadNo:= dxMDLoadHeadLoadNo.AsInteger ;
 dxMDLoadHeadPackageEntryOption.AsString := 'Paketnr' ;
end;


procedure TformConfirmManyIntLoads.FillLoadHeader ;
Var x: Integer ;
Begin
 dxMDLoadHead.Open ;
 dmArrivingLoads.cdsOneLoad.Active:= False ;
 dmArrivingLoads.sq_Load.ParamByName('LoadNo').AsInteger:= LoadNo ;
 dmArrivingLoads.cdsOneLoad.Active:= True ;
 if dmArrivingLoads.cdsOneLoad.Locate('LoadNo',LoadNo,[])then Begin
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
procedure TformConfirmManyIntLoads.ChangeInventoryOnPackagesMoved ;
Begin
 With dmArrivingLoads do
 Begin
 if mtLoadPackages.RecordCount > 0 then
 Begin
 //Change inventory in PACKAGENUMBER records
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
   cds_Confirmed_Pkg_Log.Insert ;
   cds_Confirmed_Pkg_LogPackageNo.AsInteger               := mtLoadPackagesPackageNo.AsInteger ;
   cds_Confirmed_Pkg_LogSupplierCode.AsString             := mtLoadPackagesSUPP_Code.AsString ;
   cds_Confirmed_Pkg_LogConfirmed_LoadNo.AsInteger        := mtLoadPackagesLoadNo.AsInteger ;
   cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo.AsInteger:= mtLoadPackagesLONo.AsInteger ;
   cds_Confirmed_Pkg_LogNewLoadNo.AsInteger               := -1 ;
   cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger       := -1 ;
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger := LIPNo ;//integer(cmbLogicalInv.Items.Objects[cmbLogicalInv.ItemIndex]) ;
   cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger           := mtLoadPackagesPackageTypeNo.AsInteger ;
   cds_Confirmed_Pkg_LogPackageStatus.AsInteger           := 1 ;
   cds_Confirmed_Pkg_LogOperation.AsInteger               := CONST_TO_INVENTORY ;
   cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo.AsInteger := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
   cds_Confirmed_Pkg_Log.Post ;

   ProcessPkgAND_Log(Status_Pkg_IN_Inventory, oper_AnkomstRegistrerad, LIPNo) ;
   mtLoadPackages.Next ;
 End ; // While not mtLoadPackages.Eof do
 End  // if mtLoadPackages.RecordCount > 0 then
  else
   ProcessPackage_Log(LIPNo) ;
 End ; //with
End ;

procedure TformConfirmManyIntLoads.ProcessPkgAND_Log(Status, Operation, LogInvPointNo : Integer) ;
Begin
 With dmArrivingLoads do
 Begin
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('PackageNo').AsInteger:= mtLoadPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('SupplierCode').AsString:= mtLoadPackagesSUPP_CODE.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('RegistrationPointNo').AsInteger:= -1 ; //Ingen mätpunkt
      sp_ProcessPkgAND_Log.ParamByName('PackageTypeNo').AsInteger:= mtLoadPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('LogicalInventoryPointNo').AsInteger:= LogInvPointNo ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('UserID').AsInteger:= ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('Status').AsInteger:= Status ;
      sp_ProcessPkgAND_Log.ParamByName('Operation').AsInteger:= Operation ;

      sp_ProcessPkgAND_Log.ExecProc ;
 End ;
End ;

procedure TformConfirmManyIntLoads.ConfirmLoad ;
Var
 myRollBack : Boolean ;
 Save_Cursor:TCursor;
begin
 myRollBack := False ;
 with dmArrivingLoads do
 Begin

{ mtLoadShippingPlan.First ;
 While not mtLoadShippingPlan.Eof do
 Begin
 if mtLoadPackages.RecordCount > 0 then
 Begin
  myRollBack  := True ;
  ShowMessage('Paket i LO '+mtLoadShippingPlanShippingPlanNo.AsString+'/'+mtLoadShippingPlanLoadNo.AsString
  +' skall flyttas till ett lager, välj ett lager och prova igen') ;
  Exit ;
 End ;
 mtLoadShippingPlan.Next ;
 End ; }

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
//LM flytta till mtLoadPackages tabellen
//   if mtLoadShippingPlanOBJECTTYPE.AsInteger < 2 then
//    MoveAllPkgsToInv ;

   SetCurrentLoad_Confirmed(mtLoadShippingPlanLoadNo.AsInteger) ;
   mtLoadShippingPlan.Next ;
  End ;

//LM Spara skiten!
   if cdsConfirmed_Load.ChangeCount > 0 then
   Begin
   if cdsConfirmed_Load.ApplyUpdates(0) > 0 then
   Begin
    myRollBack := True ;
    sq_IsLoadConfirmed.Close ;
    sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= mtLoadShippingPlanLOADNO.AsInteger ;
    sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
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
   ChangeInventoryOnPackagesMoved ;


   if cds_Confirmed_Pkg_Log.ChangeCount > 0 then
    if cds_Confirmed_Pkg_Log.ApplyUpdates(0) > 0 then myRollBack := True ;

   if myRollBack = True then
   Begin
    dmsConnector.SQLConnection.Rollback(Trans1) ;
    ShowMessage('Error confirming, operation rollbacked') ;
   End
   else
   Begin
    dmsConnector.SQLConnection.Commit(Trans1) ;
    LoadConfirmedOK:= True ;
//dubbel kolla att last är confirmerad
    Double_Check_Load_Is_Confirmed ;
//    ShowMessage('Ankomstregistreringen OK') ;
   End ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

  Except
   dmsConnector.SQLConnection.Rollback(Trans1);
  End ;

 End ;// with dmArrivingLoads do
End ;

procedure TformConfirmManyIntLoads.Double_Check_Load_Is_Confirmed ;
Begin
  dmArrivingLoads.cdsConfirmed_Load.Active:= False ;
  dmArrivingLoads.cdsConfirmed_Load.Active:= True ;
  Try
  dmArrivingLoads.mtLoadShippingPlan.First ;
  While not dmArrivingLoads.mtLoadShippingPlan.Eof do
  Begin
    dmArrivingLoads.sq_IsLoadConfirmed.Close ;
    dmArrivingLoads.sq_IsLoadConfirmed.ParamByName('LoadNo').AsInteger:= dmArrivingLoads.mtLoadShippingPlanLOADNO.AsInteger ;
    dmArrivingLoads.sq_IsLoadConfirmed.ParamByName('ShippingPlanNo').AsInteger:= dmArrivingLoads.mtLoadShippingPlanShippingPlanNo.AsInteger ;
    dmArrivingLoads.sq_IsLoadConfirmed.Open ;
    if dmArrivingLoads.sq_IsLoadConfirmed.Eof then
    Begin
     SetCurrentLoad_Confirmed(dmArrivingLoads.mtLoadShippingPlanNewLoadNo.AsInteger) ;
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
procedure TformConfirmManyIntLoads.SetCurrentLoad_Confirmed(fNewLoadNo: Integer) ;
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

Procedure TformConfirmManyIntLoads.Get_LoadPackages ;
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
     mtLoadPackagesSUPP_CODE.AsString           := mtLoadPackagesSUPP_CODE.AsString ;
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

procedure TformConfirmManyIntLoads.FormCreate(Sender: TObject);
begin
 with dmArrivingLoads do
 Begin
  LoadConfirmedOK  := False ;
 End ;
end;

procedure TformConfirmManyIntLoads.ConfirmThisLoad (const ChangeToIMPProduct : Boolean;const ObjectType : Integer) ;
Var
 Save_Cursor      : TCursor;
// AllPkgChangedOK  : Boolean ;
begin
 FChangeToIMPProduct := ChangeToIMPProduct ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 Try
 dmArrivingLoads.cds_Confirmed_Pkg_Log.Active:= True ;

 dmArrivingLoads.mtLoadPackages.Active:= False ;
 dmArrivingLoads.mtLoadPackages.Active:= True ;

 dmArrivingLoads.mtLoadShippingPlan.Active:= False ;
 dmArrivingLoads.mtLoadShippingPlan.Active:= True ;

// dmArrivingLoads.mtLoadPackages.Active:= False ;
// dmArrivingLoads.mtLoadPackages.Active:= True ;
 dmArrivingLoads.cdsConfirmed_Load.Active:= True ;


 if LoadNo <> -1 then
   Begin
    dmArrivingLoads.cdsOneLoad.Active:= True ;
    FillLoadHeader ;
    if FillLoadShippingPlan = false then
    Begin
     ShowMessage('Problem med paketmatchning i lastnr '+inttostr(LoadNo)) ;
    End ;
    Get_LoadPackages ;
    if ChangeToIMPProduct then
     if ObjectType = 1 then
      dmArrivingLoads.ChangePackagesToIMPProduct ;
   End ;

  ConfirmLoad ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TformConfirmManyIntLoads.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 with dmArrivingLoads do
 Begin
  cds_Confirmed_Pkg_Log.Active:= False ;
//  mtNewPackages.Active:= False ;
  dxMDLoadHead.Close ;
  dmArrivingLoads.mtLoadShippingPlan.Active       := False ;
   dmArrivingLoads.mtLoadPackages.Active          := False ;
  cdsConfirmed_Load.Active                        := False ;
  cdsPkgNumber.Active                             := False ;
  mtLoadpackages.Active                           := False ;
  dmArrivingLoads.cdsOneLoad.Active               := False ;
 End ;
end;

end.
