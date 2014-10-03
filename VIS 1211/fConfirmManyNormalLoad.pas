unit fConfirmManyNormalLoad;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, Menus,
  Db, dxmdaset, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxCntner, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxBar, dxBarExtItems,
  ImgList, dxDBTLCl, dxGrClms, dxExGrEd, Variants,
  dxExELib, DBXpress, Grids, DBGrids,
  kbmMemTable, SqlTimSt, cxPC, cxControls ;


type
  TformConfirmanyNormalLoad = class(TForm)
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
    NewLoadNo,
    NoOfPkgsRemoved,
    LoadPkgLength: Integer ;
    procedure ConfirmLoad(const Trading, Sales_LONo, ConfirmedOrigLoadNo : Integer) ;
    Procedure Get_LoadPackages ;
    procedure FillLoadHeader ;
    procedure SetCurrentLoad_Confirmed(fNewLoadNo : Integer) ;
    function  FillLoadShippingPlan : Boolean ;
    function  PackageInLoad : Boolean ;
    procedure SaveLoadHeader ;
    procedure SaveLoadShippingPlan ;
    procedure SaveLoadDetails ;
    procedure ChangeInventoryOnPackagesMoved (const Trading : Integer) ;
    function  ConfirmLoad_LO(ShippingPlanNo : Integer) : Boolean ;
    function  Confirm_PO_Load_LO(ShippingPlanNo : Integer) : Boolean ;
    procedure Save_PO_LoadHeader ;
    procedure Save_PO_LoadDetails ;
    procedure SetNewLoad_Confirmed(fNewLoadNo: Integer) ;
    procedure Double_Check_Load_Is_Confirmed ;
    procedure ProcessPkgAND_Log(Status, Operation, LogInvPointNo : Integer) ;
    procedure MoveAllPkgsToInv ;
  public
    { Public declarations }
    LIPNo         : Integer ;
    AVROP_CUSTOMERNO,
    LO_SUPPLIERNO,
    LO_CUSTOMERNO : Integer ;
    OrderType, OBJECTTYPE, ShipToInventoryNo, LoadNo, New_SupplierNo : Integer ;
    procedure ConfirmThisLoad (const Trading, Sales_LONo, ConfirmedOrigLoadNo : Integer) ;
  end;

//var formConfirmLoad: TformConfirmLoad;
Var  Trans1 : TTransactionDesc ;

implementation

uses dmsDataConn, VidaUser, dmc_ArrivingLoads, VidaConst, dmsVidaContact ,
  dmsVidaSystem;

{$R *.DFM}

function TformConfirmanyNormalLoad.FillLoadShippingPlan : Boolean ;
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

procedure TformConfirmanyNormalLoad.dxMDLoadHeadAfterInsert(DataSet: TDataSet);
begin
 dxMDLoadHeadLoadCreated.AsDateTime     := Now ;
 dxMDLoadHeadLoadModified.AsDateTime    := Now ;
 dxMDLoadHeadCreatedBy.AsString         := 'System' ;
 dxMDLoadHeadModifiedBy.AsString        := 'System' ;

 dxMDLoadHeadSenderLoadStatus.AsInteger := 0 ;
 LoadNo                                 := dxMDLoadHeadLoadNo.AsInteger ;
 dxMDLoadHeadPackageEntryOption.AsString:= 'Paketnr' ;
end;


procedure TformConfirmanyNormalLoad.FillLoadHeader ;
Var x: Integer ;
Begin
 dxMDLoadHead.Open ;

 dmArrivingLoads.cdsOneLoad.Active:= False ;
 dmArrivingLoads.sq_Load.ParamByName('LoadNo').AsInteger:= LoadNo ;
 dmArrivingLoads.cdsOneLoad.Active:= True ;
 if dmArrivingLoads.cdsOneLoad.Locate('LoadNo',LoadNo,[])then Begin


  dxMDLoadHead.Insert ;
  For x:= 1 to 15 do
   dxMDLoadHead.Fields[x].AsVariant:=  dmArrivingLoads.cdsOneLoad.Fields[x-1].AsVariant ;
  dxMDLoadHead.Post ;
   LoadNo:= dxMDLoadHeadLoadNo.AsInteger ;

 End
  else
   dxMDLoadHead.Close ;
End ;

//Insert Pkg to move to  Memory table "mtLoadRemovedPackages"
function TformConfirmanyNormalLoad.PackageInLoad : Boolean ;
Begin
 with dmArrivingLoads do
 Begin
  mtLoadPackages.Filter:= 'LONo = '+mtLoadShippingPlanShippingPlanNo.AsString ;
  mtLoadPackages.Filtered:= True ;
  Try
  Result:= False ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if mtLoadPackagesRemoved.AsBoolean = False then
    Begin
     Result:= True ;
     Break ;
    End ;
   mtLoadPackages.Next ;
  End ;
  Finally
   mtLoadPackages.Filtered:= False ;
  End ;
 End ;//with
End ;

//Makes a new load, only when objecttype =2 and supplier <> VW
//Set new loads.supplierno = to SUPPLIERSHIPPINGPLAN.CUSTOMERNO
procedure TformConfirmanyNormalLoad.SaveLoadHeader ;
Var x: Integer ;
Begin
 with dmArrivingLoads do
 Begin
 cdsOneLoad.Active:= False ;
 dmArrivingLoads.cdsOneLoad.Active:= True ;

  dmArrivingLoads.cdsOneLoad.Insert ;
  For x:= 1 to 16 do
   dmArrivingLoads.cdsOneLoad.Fields[x-1].AsVariant         := dxMDLoadHead.Fields[x].AsVariant ;
                                                 //dmsConnector.NextIDinTable('Loads') ;

   dmArrivingLoads.cdsOneLoadLoadNo.AsInteger               := mtLoadShippingPlanNewLoadNo.AsInteger ; // dmsConnector.NextMaxNo('Loads');

   NewLoadNo                                                := dmArrivingLoads.cdsOneLoadLoadNo.AsInteger ;

   dmArrivingLoads.cdsOneLoadCustomerNo.AsInteger           := mtLoadShippingPlanAVROP_CUSTOMERNO.AsInteger ; //CSH.CustomerNo
   dmArrivingLoads.cdsOneLoadSupplierNo.AsInteger           := mtLoadShippingPlanLO_CUSTOMERNO.AsInteger ; //LO.customerNo
   dmArrivingLoads.cdsOneLoadOriginalSupplierNo.AsInteger   := dxMDLoadHeadSupplierNo.AsInteger ; //Same as "old" load
   dmArrivingLoads.cdsOneLoadSenderLoadStatus.AsInteger     := 2 ;
   dmArrivingLoads.cdsOneLoadCreatedUser.AsInteger          := ThisUser.UserID ;
   dmArrivingLoads.cdsOneLoadModifiedUser.AsInteger         := ThisUser.UserID ;
   dmArrivingLoads.cdsOneLoadDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
   dmArrivingLoads.cdsOneLoadLoadAR.AsInteger               := 1 ;
   dmArrivingLoads.cdsOneLoadLoadOK.AsInteger               := 2 ;
   dmArrivingLoads.cdsOneLoad.Post ;
 End ; //with
End ;

procedure TformConfirmanyNormalLoad.Save_PO_LoadHeader ;
Var x: Integer ;
Begin
 with dmArrivingLoads do
 Begin
 cdsOneLoad.Active:= False ;
 dmArrivingLoads.cdsOneLoad.Active:= True ;

  dmArrivingLoads.cdsOneLoad.Insert ;
  For x:= 1 to 16 do
   dmArrivingLoads.cdsOneLoad.Fields[x-1].AsVariant         := dxMDLoadHead.Fields[x].AsVariant ;

   dmArrivingLoads.cdsOneLoadLoadNo.AsInteger               := mtLoadShippingPlanNewLoadNo.AsInteger ; //dmsConnector.NextMaxNo('Loads');
   NewLoadNo                                                := dmArrivingLoads.cdsOneLoadLoadNo.AsInteger ;

//   OWNER OF THE NEW LOAD IS VIDA WOOD
   dmArrivingLoads.cdsOneLoadCustomerNo.AsInteger           := mtLoadShippingPlanAVROP_CUSTOMERNO.AsInteger ; //CSH.CustomerNo
   dmArrivingLoads.cdsOneLoadSupplierNo.AsInteger           := mtLoadShippingPlanLO_CustomerNo.AsInteger ;//VIDA_WOOD_COMPANY_NO ; //mtLoadShippingPlanLO_CUSTOMERNO.AsInteger ; //LO.customerNo
   dmArrivingLoads.cdsOneLoadOriginalSupplierNo.AsInteger   := mtLoadShippingPlanAVROP_CUSTOMERNO.AsInteger ; //External supplier
   dmArrivingLoads.cdsOneLoadSenderLoadStatus.AsInteger     := 2 ;
   dmArrivingLoads.cdsOneLoadCreatedUser.AsInteger          := ThisUser.UserID ;
   dmArrivingLoads.cdsOneLoadModifiedUser.AsInteger         := ThisUser.UserID ;
   dmArrivingLoads.cdsOneLoadDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
   dmArrivingLoads.cdsOneLoadLoadAR.AsInteger               := 1 ;
   dmArrivingLoads.cdsOneLoadLoadOK.AsInteger               := 2 ;
   dmArrivingLoads.cdsOneLoad.Post ;
 End ; //with
End ;

procedure TformConfirmanyNormalLoad.SaveLoadShippingPlan ;
Var x: Integer ;
Begin
 With dmArrivingLoads do
 Begin
  cdsLoadShippingPlan.Insert ;
  For x:= 0 to 1 do
   cdsLoadShippingPlan.Fields[x].AsVariant          := mtLoadShippingPlan.Fields[x].AsVariant ;
    cdsLoadShippingPlanLoadNo.AsInteger             := cdsOneLoadLoadNo.AsInteger ;
  cdsLoadShippingPlanInvoiced.AsInteger             := 0 ;
  cdsLoadShippingPlanConfirmedByReciever.AsInteger  := 1 ;
  cdsLoadShippingPlanConfirmedBySupplier.AsInteger  := 1 ;

  cdsLoadShippingPlanCreatedUser.AsInteger          := ThisUser.UserID ;
  cdsLoadShippingPlanModifiedUser.AsInteger         := ThisUser.UserID ;
  cdsLoadShippingPlanDateCreated.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
  cdsLoadShippingPlan.Post ;
 End ;//with
End ;

procedure TformConfirmanyNormalLoad.SaveLoadDetails ;
Var x: Integer ;
Begin
 With dmArrivingLoads do
 Begin
 mtLoadPackages.DisableControls ;
 mtLoadPackages.Filter:= 'LONo = '+mtLoadShippingPlanShippingPlanNo.AsString ;
 mtLoadPackages.Filtered:= True ;
 Try
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
  if mtLoadPackagesRemoved.AsBoolean = False then
  Begin
   cdsLoadDetails.Insert ;
   For x:= 0 to 8 do
    cdsLoadDetails.Fields[x].AsVariant              := mtLoadPackages.Fields[x].AsVariant ;
    cdsLoadDetailsOverrideMatch.AsInteger           := mtLoadPackagesOverrideMatch.AsInteger ;
    cdsLoadDetailsLoadNo.AsInteger                  := cdsOneLoadLoadNo.AsInteger ;
    cdsLoadDetailsCreatedUser.AsInteger             := ThisUser.UserID ;
    cdsLoadDetailsModifiedUser.AsInteger            := ThisUser.UserID ;
    cdsLoadDetailsDateCreated.AsSQLTimeStamp        := DateTimeToSQLTimeStamp(Now) ;
    cdsLoadDetailsDefaultCustShipObjectNo.AsInteger := GetDefaultCSObjectNo(mtLoadPackagesDefsspNo.AsInteger) ;
    cdsLoadDetailsOverrideRL.AsInteger              := mtLoadPackagesOverrideRL.AsInteger ;

//Om det fanns ett LIPNo från LO registrera mot det i annat fall, tex om STD är angivet i LO skall VW motsvarande användas

    if LIPNo > -1 then
    cdsLoadDetailsLIPNo.AsInteger                   := LIPNo
    else
    cdsLoadDetailsLIPNo.AsInteger                   := GetMotsvarandeVWLIPNo(mtLoadPackagesLogicalInventoryPointNo.AsInteger) ;

    cdsLoadDetails.Post ;

   cds_Confirmed_Pkg_Log.Insert ;
   cds_Confirmed_Pkg_LogPackageNo.AsInteger                   := mtLoadPackagesPackageNo.AsInteger ;
   cds_Confirmed_Pkg_LogSupplierCode.AsString                 := mtLoadPackagesSUPP_Code.AsString ;
   cds_Confirmed_Pkg_LogConfirmed_LoadNo.AsInteger            := mtLoadPackagesLoadNo.AsInteger ;
   cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo.AsInteger    := mtLoadPackagesLONo.AsInteger ;
   cds_Confirmed_Pkg_LogNewLoadNo.AsInteger                   := cdsOneLoadLoadNo.AsInteger ;
   cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger           := mtLoadPackagesLONo.AsInteger ;

   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;

   if LIPNo > -1 then
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := LIPNo
   else
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := GetMotsvarandeVWLIPNo(mtLoadPackagesLogicalInventoryPointNo.AsInteger) ;

   cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger               := mtLoadPackagesPackageTypeNo.AsInteger ;
   cds_Confirmed_Pkg_LogPackageStatus.AsInteger               := 0 ;
   cds_Confirmed_Pkg_LogOperation.AsInteger                   := CONST_TO_LOAD ;
   cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo.AsInteger := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
   cds_Confirmed_Pkg_Log.Post ;
  End
   else
     NoOfPkgsRemoved:= Succ(NoOfPkgsRemoved) ;

  mtLoadPackages.Next ;
 End ;
 Finally
  mtLoadPackages.Filtered:= False ;
  mtLoadPackages.EnableControls ;
 End ;
 End ;//while
End ;

procedure TformConfirmanyNormalLoad.Save_PO_LoadDetails ;
Var lLIPNo, x: Integer ;
Begin
 With dmArrivingLoads do
 Begin
 lLIPNo := GetMotsvarandeVWLIPNoForLoadingLocation(mtLoadShippingPlanShippingPlanNo.AsInteger) ;
 mtLoadPackages.DisableControls ;
 mtLoadPackages.Filter:= 'LONo = ' + mtLoadShippingPlanShippingPlanNo.AsString ;
 mtLoadPackages.Filtered:= True ;
 Try
 mtLoadPackages.First ;
 While not mtLoadPackages.Eof do
 Begin
   cdsLoadDetails.Insert ;
   For x:= 0 to 8 do
    cdsLoadDetails.Fields[x].AsVariant              := mtLoadPackages.Fields[x].AsVariant ;
    cdsLoadDetailsOverrideMatch.AsInteger           := mtLoadPackagesOverrideMatch.AsInteger ;

    cdsLoadDetailsLoadNo.AsInteger                  := cdsOneLoadLoadNo.AsInteger ;
    cdsLoadDetailsCreatedUser.AsInteger             := ThisUser.UserID ;
    cdsLoadDetailsModifiedUser.AsInteger            := ThisUser.UserID ;
    cdsLoadDetailsDateCreated.AsSQLTimeStamp        := DateTimeToSQLTimeStamp(Now) ;
    cdsLoadDetailsDefaultCustShipObjectNo.AsInteger := GetDefaultCSObjectNo(mtLoadPackagesDefsspNo.AsInteger) ;
    cdsLoadDetailsOverrideRL.AsInteger              := mtLoadPackagesOverrideRL.AsInteger ;


    cdsLoadDetailsLIPNo.AsInteger                   := lLIPNo ;

{
    if LIPNo > -1 then
    cdsLoadDetailsLIPNo.AsInteger                   := LIPNo
    else
    cdsLoadDetailsLIPNo.AsInteger                   := GetMotsvarandeVWLIPNo(mtLoadPackagesLogicalInventoryPointNo.AsInteger) ;
 }
    cdsLoadDetails.Post ;


    cds_Confirmed_Pkg_Log.Insert ;
    cds_Confirmed_Pkg_LogPackageNo.AsInteger                   := mtLoadPackagesPackageNo.AsInteger ;
    cds_Confirmed_Pkg_LogSupplierCode.AsString                 := mtLoadPackagesSUPP_Code.AsString ;
    cds_Confirmed_Pkg_LogConfirmed_LoadNo.AsInteger            := mtLoadPackagesLoadNo.AsInteger ;
    cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo.AsInteger    := mtLoadPackagesLONo.AsInteger ;
    cds_Confirmed_Pkg_LogNewLoadNo.AsInteger                   := cdsOneLoadLoadNo.AsInteger ;
    cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger           := mtLoadPackagesLONo.AsInteger ;

//   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := LIPNo ;//mtLoadPackagesLogicalInventoryPointNo.AsInteger ; ;

    cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := lLIPNo ;
{
   if LIPNo > -1 then
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := LIPNo
   else
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := GetMotsvarandeVWLIPNo(mtLoadPackagesLogicalInventoryPointNo.AsInteger) ;
 }


   cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger               := mtLoadPackagesPackageTypeNo.AsInteger ;
   cds_Confirmed_Pkg_LogPackageStatus.AsInteger               := 1 ;
   cds_Confirmed_Pkg_LogOperation.AsInteger                   := CONST_TO_LOAD ;
   cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo.AsInteger := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
   cds_Confirmed_Pkg_Log.Post ;


   NoOfPkgsRemoved:= Succ(NoOfPkgsRemoved) ;

  mtLoadPackages.Next ;
 End ;
 Finally
  mtLoadPackages.Filtered:= False ;
  mtLoadPackages.EnableControls ;
 End ;
 End ;//while
End ;

//Change inventory location of the packages (and set pkg status = 1) that was decided to move to an inventory
procedure TformConfirmanyNormalLoad.ChangeInventoryOnPackagesMoved (const Trading : Integer) ;
Begin
 With dmArrivingLoads do
 Begin
 if mtLoadRemovedPackages.RecordCount > 0 then
 Begin
 //Change inventory in PACKAGENUMBER
 mtLoadRemovedPackages.First ;
 While not mtLoadRemovedPackages.Eof do
 Begin
  //Set Package Status to 1 and Inventory
   cds_Confirmed_Pkg_Log.Insert ;
   cds_Confirmed_Pkg_LogPackageNo.AsInteger                   := mtLoadRemovedPackagesPackageNo.AsInteger ;
   cds_Confirmed_Pkg_LogSupplierCode.AsString                 := mtLoadRemovedPackagesSUPP_Code.AsString ;
   cds_Confirmed_Pkg_LogConfirmed_LoadNo.AsInteger            := mtLoadRemovedPackagesLoadNo.AsInteger ;
   cds_Confirmed_Pkg_LogConfirmed_ShippingPlanNo.AsInteger    := mtLoadRemovedPackagesLONo.AsInteger ;
   cds_Confirmed_Pkg_LogNewLoadNo.AsInteger                   := -1 ;
   cds_Confirmed_Pkg_LogNewShippingPlanNo.AsInteger           := -1 ;
   cds_Confirmed_Pkg_LogLogicalInventoryPointNo.AsInteger     := LIPNo ;//mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
   cds_Confirmed_Pkg_LogPackageTypeNo.AsInteger               := mtLoadRemovedPackagesPackageTypeNo.AsInteger ;
   cds_Confirmed_Pkg_LogPackageStatus.AsInteger               := 1 ;
   cds_Confirmed_Pkg_LogOperation.AsInteger                   := CONST_TO_INVENTORY ;
   cds_Confirmed_Pkg_LogOld_LogicalInventoryPointNo.AsInteger := mtLoadPackagesLogicalInventoryPointNo.AsInteger ;
   cds_Confirmed_Pkg_Log.Post ;

   if Trading = 0 then
   ProcessPkgAND_Log(Status_Pkg_IN_Inventory, oper_AnkomstRegistrerad, LIPNo)
   else
   ProcessPkgAND_Log(Status_Pkg_NOT_IN_Inventory, oper_AnkomstRegistrerad, LIPNo) ;
  mtLoadRemovedPackages.Next ;
 End ;//While
 End  //if
  else
   ProcessPackage_Log(LIPNo) ;
 End ; //with
End ;

procedure TformConfirmanyNormalLoad.ProcessPkgAND_Log(Status, Operation, LogInvPointNo : Integer) ;
Begin
 With dmArrivingLoads do
 Begin
  Try
      sp_ProcessPkgAND_Log.Close ;
      sp_ProcessPkgAND_Log.ParamByName('PackageNo').AsInteger               := mtLoadRemovedPackagesPACKAGENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('SupplierCode').AsString             := mtLoadRemovedPackagesSUPP_CODE.AsString ;
      sp_ProcessPkgAND_Log.ParamByName('RegistrationPointNo').AsInteger     := mtLoadRemovedPackagesLoadNo.AsInteger ; //Ingen mätpunkt
      sp_ProcessPkgAND_Log.ParamByName('PackageTypeNo').AsInteger           := mtLoadRemovedPackagesPACKAGETYPENO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('LogicalInventoryPointNo').AsInteger := LogInvPointNo ;// mtLoadPackagesLOG_INVENTORY_NO.AsInteger ;
      sp_ProcessPkgAND_Log.ParamByName('UserID').AsInteger                  := ThisUser.UserID ;
      sp_ProcessPkgAND_Log.ParamByName('Status').AsInteger                  := Status ;
      sp_ProcessPkgAND_Log.ParamByName('Operation').AsInteger               := Operation ;

      sp_ProcessPkgAND_Log.ExecProc ;
  Except
   On E: Exception do
   Begin
   ShowMessage(E.Message+' :sp_ProcessPkgAND_Log.ExecProc') ;
   Raise ;
   End ;
  End ;
 End ;
End ;

//make a log entry for packages AR

function TformConfirmanyNormalLoad.Confirm_PO_Load_LO(ShippingPlanNo : Integer) : Boolean ;
begin
 Result:= False ;
 with dmArrivingLoads do
 Begin

 Try
  LoadPkgLength:= 0 ;
  NoOfPkgsRemoved:= 0 ;

    Save_PO_LoadHeader;
    if cdsOneLoad.ChangeCount > 0 then
    if cdsOneLoad.ApplyUpdates(0)  > 0 then Result := True ;

//make a new LoadShippingPlan record
   if  Result = False then
   SaveLoadShippingPlan ;
   if cdsLoadShippingPlan.ChangeCount > 0 then
   if cdsLoadShippingPlan.ApplyUpdates(0)  > 0 then Result := True ;

//make new LoadDetails and LoadDetailPkgLength records
   if  Result = False then
   Save_PO_LoadDetails ;
   if cdsLoadDetails.ChangeCount > 0 then
   if cdsLoadDetails.ApplyUpdates(0)  > 0 then Result := True ;

   //Make an entry for old load to Confirmed_Load, after this the old load cannot be changed
   if Result = False then //set old loadno
   SetCurrentLoad_Confirmed(cdsOneLoadLoadNo.AsInteger) ;

   if Result = False then //set new loadno
   SetNewLoad_Confirmed(cdsOneLoadLoadNo.AsInteger) ;

  Except
   Result := True ;     //True means something failed.
  End ;
 End ; //dmArrivingLoads do
end;

procedure TformConfirmanyNormalLoad.ConfirmLoad(const Trading, Sales_LONo, ConfirmedOrigLoadNo : Integer) ;
Var
 myRollBack   : Boolean ;
 Save_Cursor  : TCursor;
 Changes      : Integer ;
begin
 Changes:= 0 ;
 myRollBack := False ;
 with dmArrivingLoads do
 Begin

 mtLoadShippingPlan.First ;
 While not mtLoadShippingPlan.Eof do
 Begin
   if ((mtLoadRemovedPackages.RecordCount > 0) and (LIPNo = -1)) or //(cmbLogicalInv.Text = 'Select')) or
    ((mtLoadShippingPlanObjectType.AsInteger < 2) and (LIPNo = -1)) OR
    ((mtLoadShippingPlanOrderType.AsInteger = c_Purchase) and (LIPNo = -1)) then
 Begin
  myRollBack  := True ;
  ShowMessage('Paket i LO '+mtLoadShippingPlanShippingPlanNo.AsString
  +' skall flyttas till ett lager, välj ett lager och prova igen') ;
  Exit ;
 End ;
 mtLoadShippingPlan.Next ;
 End ;

//Om lasten är ett inköp skall en ny last skapas, likaså om det är en försäljnings last och innehåller
//Är det en intern last och paket inte är flyttade bryts exekveringen i satsen ovanför
//Vad ska interna laster skapa mtLoadShippingPlan för ?
  mtLoadShippingPlan.First ;
  if (PackageInLoad = True) or (mtLoadShippingPlanOrderType.AsInteger = c_Purchase) then //and (self.LO_SUPPLIERNO <> VIDA_WOOD_CLIENTNO)
   While not mtLoadShippingPlan.Eof do
   Begin
    if (PackageInLoad = True) or (mtLoadShippingPlanOrderType.AsInteger = c_Purchase) then
    Begin
     mtLoadShippingPlan.Edit ;
     mtLoadShippingPlanNewLoadNo.AsInteger:= dmsConnector.NextMaxNo('Loads') ;
     mtLoadShippingPlan.Post ;
    End ;
    mtLoadShippingPlan.Next ;
   End ; //while

   //START A TRANSACTION
  Trans1.TransactionID:= 1 ;
  Trans1.IsolationLevel:= xilREADCOMMITTED ;
  dmsConnector.SQLConnection.StartTransaction(Trans1);
  Try
//behövs inte för att bara lägga in på lager

  dmArrivingLoads.cdsLoadDetails.Active:= False ;
  dmArrivingLoads.cdsLoadDetails.Active:= True ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }


 Try
  mtLoadShippingPlan.First ;
  While (not mtLoadShippingPlan.Eof) and (myRollBack = False) do
  Begin
   //all packages to inventory if OrderType is Purchase or ADD or INT LO type
//flytta till mtLoadRemovedPackages tabellen
   if (mtLoadShippingPlanOrderType.AsInteger = c_Purchase) or (mtLoadShippingPlanOBJECTTYPE.AsInteger < 2) then
    MoveAllPkgsToInv ;

   if ((mtLoadRemovedPackages.RecordCount > 0) and (LIPNo = -1)) or
    ((mtLoadShippingPlanOBJECTTYPE.AsInteger < 2) and (LIPNo = -1)) then
   Begin
    myRollBack  := True ;
    ShowMessage('Paket skall flyttas till ett lager, välj ett lager och prova igen') ;
    dmsConnector.SQLConnection.Rollback(Trans1) ;
    Exit ;
   End ;

   if mtLoadShippingPlanOrderType.AsInteger <> c_Purchase then
   myRollBack:= ConfirmLoad_LO(mtLoadShippingPlanShippingPlanNo.AsInteger)
   else
   myRollBack:= Confirm_PO_Load_LO(mtLoadShippingPlanShippingPlanNo.AsInteger) ;

   mtLoadShippingPlan.Next ;
  End ;

   Changes:= cdsConfirmed_Load.ChangeCount ;
//Spara skiten!
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
//Ändra lager ställe på AR paket
   if myRollBack = False then ChangeInventoryOnPackagesMoved(Trading) ;


   if cds_Confirmed_Pkg_Log.ChangeCount > 0 then
    if cds_Confirmed_Pkg_Log.ApplyUpdates(0) > 0 then myRollBack := True ;

   if Sales_LONo > 0 then
    NewLoadNo:= dmsSystem.CopyPOLoadToSalesLoadAndSetPackagesAsNotAvailable(
    mtLoadShippingPlanNewLoadNo.AsInteger, Sales_LONo, ConfirmedOrigLoadNo, 0)
    else
     NewLoadNo:= 0 ;
   if NewLoadNo > 0 then
    ShowMessage('Försäljningslastnr ' + inttostr(NewLoadNo) + ' skapad') ;

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

 End ;
End ;

procedure TformConfirmanyNormalLoad.Double_Check_Load_Is_Confirmed ;
Var
 Changes : Integer ;
Begin
  Changes:= 0 ;
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
     SetCurrentLoad_Confirmed(dmArrivingLoads.mtLoadShippingPlanNewLoadNo.AsInteger) ;
    End ;
   dmArrivingLoads.sq_IsLoadConfirmed.Close ;
   dmArrivingLoads.mtLoadShippingPlan.Next ;
  End ; //while

   Changes:= dmArrivingLoads.cdsConfirmed_Load.ChangeCount ;

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

//Load out
function TformConfirmanyNormalLoad.ConfirmLoad_LO(ShippingPlanNo : Integer) : Boolean ;
begin
 Result:= False ;
 with dmArrivingLoads do
 Begin
  Try
  LoadPkgLength:= 0 ;
  NoOfPkgsRemoved:= 0 ;

  // Loads of Objecttype 2 and not Vida wood as supplier makes a new VW load (unless all packages was removed)
  //IF VIDA WOOD IS THE self.SUPPLIERNO THEN THE LOAD ONLY NEEDS TO BE CONFIRMED.
  if (PackageInLoad = True) //and (self.LO_SUPPLIERNO <> VIDA_WOOD_CLIENTNO)
  and (mtLoadShippingPlanOBJECTTYPE.AsInteger = 2) then // make VIDA WOOD Kund-Last (UNLESS ALL PACKAGES WERE REMOVED FROM LOAD)
  Begin
//make a new Loads Record for each LO always
    SaveLoadHeader ;
    if cdsOneLoad.ChangeCount > 0 then
    if cdsOneLoad.ApplyUpdates(0)  > 0 then Result := True ;

//make a new LoadShippingPlan record
   if  Result = False then
   SaveLoadShippingPlan ;
   if cdsLoadShippingPlan.ChangeCount > 0 then
   if cdsLoadShippingPlan.ApplyUpdates(0)  > 0 then Result := True ;

//make new LoadDetails and LoadDetailPkgLength records
   if  Result = False then
   SaveLoadDetails ;
   if cdsLoadDetails.ChangeCount > 0 then
   if cdsLoadDetails.ApplyUpdates(0)  > 0 then Result := True ;


//Make an entry for old load to Confirmed_Load, after this the old load cannot be changed
   if Result = False then //set old loadno
   SetCurrentLoad_Confirmed(cdsOneLoadLoadNo.AsInteger) ;
   if Result = False then //new loadno
   SetNewLoad_Confirmed(cdsOneLoadLoadNo.AsInteger) ;
  End //Make new load
  else
  if (PackageInLoad = False) //and (self.LO_SUPPLIERNO <> VIDA_WOOD_CLIENTNO)
  and (mtLoadShippingPlanOBJECTTYPE.AsInteger = 2) then // Confirm old load DO NOT make a VIDA WOOD Load
  //(ALL PACKAGES WERE REMOVED FROM LOAD to an inventory)
  Begin
//Make an entry for old load to Confirmed_Load, after this the old load cannot be changed
   if Result = False then //set old and new loadno
   SetCurrentLoad_Confirmed(mtLoadShippingPlanLoadNo.AsInteger) ;
  End
  else
  //This section does not make a new VW load.
  //It only confirm the load and move the selected packages to a inventory
  //ObjectType 1 where Vida Wood is load supplier
  //ObjectType 1 where Vida Wood is Not the load supplier
//not used anymore:  if (OBJECTTYPE = 2) then //dxMDLoadHeadSupplierNo.AsInteger <> VIDA_WOOD_CLIENTNO then
   Begin
   //Make an entry to Confirmed_Load so we know who confirmed the current load.
//Set last till confirmed
     if Result = False then //gammalt o -1 nr
     SetCurrentLoad_Confirmed(mtLoadShippingPlanLoadNo.AsInteger) ;
   End ; //else if self.SUPPLIERNO <> self.CUSTOMERNO then
  Except
   Result := True ;     //True means something failed.
  End ;
 End ; //dmArrivingLoads do
end;

//make an entry for the load that is confirmed
procedure TformConfirmanyNormalLoad.SetCurrentLoad_Confirmed(fNewLoadNo: Integer) ;
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

procedure TformConfirmanyNormalLoad.SetNewLoad_Confirmed(fNewLoadNo: Integer) ;
Begin
 with dmArrivingLoads do
 Begin
   cdsConfirmed_Load.Insert ;
   cdsConfirmed_LoadConfirmed_LoadNo.AsInteger          := fNewLoadNo ;
   cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger  := mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cdsConfirmed_LoadNewLoadNo.AsInteger                 := fNewLoadNo ; //dmArrivingLoads.cdsOneLoadLoadNo.AsInteger ;
   cdsConfirmed_LoadNewShippingPlanNo.AsInteger         := mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cdsConfirmed_LoadDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
   cdsConfirmed_LoadCreatedUser.AsInteger               := ThisUser.UserID ;
   cdsConfirmed_LoadModifiedUser.AsInteger              := ThisUser.UserID ;
   cdsConfirmed_Load.Post ;
 End ; //with
End ;

Procedure TformConfirmanyNormalLoad.Get_LoadPackages ;
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
      For x := 0 to 22 do
      mtLoadPackages.Fields.Fields[x].AsVariant := sq_LoadPackages.Fields.Fields[x].AsVariant ;
      mtLoadPackagesSUPP_CODE.AsString          := mtLoadPackagesSUPP_CODE.AsString;
      mtLoadPackagesOverrideRL.AsInteger        := sq_LoadPackagesOverrideRL.AsInteger ;
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

procedure TformConfirmanyNormalLoad.FormCreate(Sender: TObject);
begin
 NewLoadNo:= 0 ;
 with dmArrivingLoads do
 Begin
  LoadConfirmedOK  := False ;
 End ;
end;

procedure TformConfirmanyNormalLoad.ConfirmThisLoad (const Trading, Sales_LONo, ConfirmedOrigLoadNo : Integer) ;
Var
 Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 Try
 dmArrivingLoads.cds_Confirmed_Pkg_Log.Active := True ;
 dmsContact.cdsClient.Active                  := True ;
 dmsContact.cdsCity.Active                    := True ;

 dmArrivingLoads.mtLoadRemovedPackages.Active := False ;
 dmArrivingLoads.mtLoadRemovedPackages.Active := True ;

 dmArrivingLoads.mtLoadShippingPlan.Active    := False ;
 dmArrivingLoads.mtLoadShippingPlan.Active    := True ;
 dmArrivingLoads.mtLoadPackages.Active        := False ;
 dmArrivingLoads.mtLoadPackages.Active        := True ;

 dmArrivingLoads.cdsPkgNumber.Active:= False ;
 dmArrivingLoads.sq_PkgNumber.ParamByName('LoadNo').AsInteger:= LoadNo ;
 dmArrivingLoads.cdsPkgNumber.Active:= True ;

 dmArrivingLoads.cdsConfirmed_Load.Active     := True ;
 dmArrivingLoads.mtNewPackages.Active         := True ;
 dmArrivingLoads.mtLoadpackages.Active        := True ;
 dmArrivingLoads.cdsLoadShippingPlan.Active   := True ;

 if LoadNo <> -1 then
   Begin
    dmArrivingLoads.cdsOneLoad.Active:= True ;
    FillLoadHeader ;
    if FillLoadShippingPlan = false then
    Begin
     ShowMessage('Problem med paketmatchning, öppna lasten och kolla matchning mot LO rader') ;
    End ;
    Get_LoadPackages ;
   End ;
  ConfirmLoad(Trading, Sales_LONo, ConfirmedOrigLoadNo) ;
 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TformConfirmanyNormalLoad.MoveAllPkgsToInv;
Var x: Integer ;
 Save_Cursor:TCursor;
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

  if LIPNo <> -1 then
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

procedure TformConfirmanyNormalLoad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 with dmArrivingLoads do
 Begin
  cds_Confirmed_Pkg_Log.Active  := False ;
  mtNewPackages.Active          := False ;
  mtLoadPackages.Close ;
  dxMDLoadHead.Close ;
  mtLoadShippingPlan.Active     := False ;
  mtLoadRemovedPackages.Active  := False ;

  cdsConfirmed_Load.Active      := False ;
  cdsPkgNumber.Active           := False ;

  mtLoadpackages.Active         := False ;
  cdsLoadShippingPlan.Active    := False ;
 End ;

end;

end.
