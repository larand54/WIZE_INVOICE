unit UnitLoadEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, dxBarExtItems, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBTLCl,
  dxGrClms, VidaType, db, dxGrClEx, dxLayout,
  kbmMemTable, dxDBEdtr, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, ActnList, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxGraphics, cxLabel ;

type
  TfLoadEntry = class(TForm)
    dxBarManager1: TdxBarManager;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    tsControl: TcxTabSheet;
    pLoadHead: TPanel;
    grdLONumber: TdxDBGrid;
    Splitter1: TSplitter;
    grdShipToAddress: TdxDBGrid;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    lbReValidate: TdxBarLargeButton;
    dxDBEdit1: TdxDBEdit;
    grdLONumberSHIPPER: TdxDBGridMaskColumn;
    grdLONumberREADYDATE: TdxDBGridMaskColumn;
    grdLONumberVESSEL: TdxDBGridMaskColumn;
    grdLONumberETD: TdxDBGridColumn;
    grdLONumberETA: TdxDBGridColumn;
    grdLONumberSHIPPER_REF: TdxDBGridMaskColumn;
    grdLONumberSHIPPERID: TdxDBGridMaskColumn;
    grdLONumberSHIPPERS_SHIPDATE: TdxDBGridColumn;
    grdLONumberSHIPPERS_SHIPTIME: TdxDBGridColumn;
    grdLONumberORDERNO: TdxDBGridMaskColumn;
    grdLONumberORDERTYPE: TdxDBGridMaskColumn;
    pmPkgs: TdxBarPopupMenu;
    lbValidatePkg: TdxBarLargeButton;
    lbAddPackage: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    lbDeleteLoad: TdxBarLargeButton;
    pmLONumber: TdxBarPopupMenu;
    lbAddLONumber: TdxBarLargeButton;
    lbRemoveLONumber: TdxBarLargeButton;
    grdLONumberLO: TdxDBGridButtonColumn;
    grdLONumberCUSTOMER: TdxDBGridMaskColumn;
    lbSetDefaultMatchAllPkg: TdxBarLargeButton;
    grdShipToAddressAddress: TdxDBGridMaskColumn;
    grdShipToAddressDestination: TdxDBGridMaskColumn;
    grdShipToAddressReference: TdxDBGridMaskColumn;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBLookupEdit2: TdxDBLookupEdit;
    dxDBLookupEdit3: TdxDBLookupEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    tsLoadNote: TcxTabSheet;
    dxDBMemo1: TdxDBMemo;
    ImageList1: TImageList;
    images1616: TImageList;
    dxDBImageEdit1: TdxDBImageEdit;
    bbUndo: TdxBarButton;
    lbRemoveALLPkgs: TdxBarLargeButton;
    Button1: TButton;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomgrdPackages: TdxBarButton;
    bbCustomgrdLONumber: TdxBarButton;
    pmgrdLOLines: TdxBarPopupMenu;
    bbCustomgrdLOLines: TdxBarButton;
    Panel5: TPanel;
    bConnect: TButton;
    bDisconnect: TButton;
    bbDeletePkgFromSystem: TdxBarButton;
    bbDeleteAllPkgsFromSystem: TdxBarButton;
    bbAddPkgsByType: TdxBarButton;
    bbRemovepkgbytype: TdxBarButton;
    bbUndoTaBort: TdxBarButton;
    grdLONumberFunction: TdxDBGridMaskColumn;
    bbMatcha: TdxBarButton;
    bbConnectPkgsToLO: TdxBarButton;
    bbPickPkgNos: TdxBarButton;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    acValidatePkg: TAction;
    acValidateAllPkgs: TAction;
    acInsertPkgToInventory: TAction;
    acInsertAllPkgsToInventory: TAction;
    acRemovePkgFromSystem: TAction;
    acRemoveAllPkgsFromSystem: TAction;
    acUndoPkgOperation: TAction;
    acSetDefaultMatchOnAllPkgs: TAction;
    acPkgInfo: TAction;
    acAddPkg: TAction;
    acConnectMarkedPkgsToLO: TAction;
    acAddPkgByPkgCode: TAction;
    acRemoveLO: TAction;
    acUndoRemoveLO: TAction;
    acAddLO: TAction;
    acRemovePkgsByPkgCode: TAction;
    acPickPkgNos: TAction;
    acPkgNoSeries: TAction;
    acDeleteLoad: TAction;
    detLoaded: TcxDBDateEdit;
    PanelLORows: TPanel;
    grdLOLines: TdxDBGrid;
    grdLOLinesMatch: TdxDBGridCheckColumn;
    grdLOLinesLO_NUMBER: TdxDBGridMaskColumn;
    grdLOLinesPKGCODE: TdxDBGridMaskColumn;
    grdLOLinesPRODUCTDESCRIPTION: TdxDBGridMaskColumn;
    grdLOLinesLENGTHDESC: TdxDBGridMaskColumn;
    grdLOLinesNOOFUNITS: TdxDBGridMaskColumn;
    grdLOLinesVOLUNIT: TdxDBGridMaskColumn;
    grdLOLinesPRICE: TdxDBGridMaskColumn;
    grdLOLinesPRICEUNIT: TdxDBGridMaskColumn;
    grdLOLinesMIN_LENGTH: TdxDBGridMaskColumn;
    grdLOLinesMAX_LENGTH: TdxDBGridMaskColumn;
    grdLOLinesACT_THICK: TdxDBGridMaskColumn;
    grdLOLinesACT_WIDTH: TdxDBGridMaskColumn;
    grdLOLinesACT_LENGTH: TdxDBGridMaskColumn;
    grdLOLinesREFERENCE: TdxDBGridMaskColumn;
    grdLOLinesLEV_PERIOD_START: TdxDBGridMaskColumn;
    grdLOLinesLEV_PERIOD_END: TdxDBGridMaskColumn;
    grdLOLinesFOHC: TdxDBGridMaskColumn;
    grdLOLinesMINIBUNDLEHEIGHT: TdxDBGridMaskColumn;
    grdLOLinesMINIBUNDLEWIDTH: TdxDBGridMaskColumn;
    grdLOLinesNOOFSTICKS: TdxDBGridMaskColumn;
    grdLOLinesNOOFSTRAPS: TdxDBGridMaskColumn;
    grdLOLinesCORNERPROT: TdxDBGridMaskColumn;
    grdLOLinesPKGWIDTH: TdxDBGridMaskColumn;
    grdLOLinesPKGHEIGHT: TdxDBGridMaskColumn;
    grdLOLinesPET: TdxDBGridMaskColumn;
    grdLOLinesMINIBUNDLE: TdxDBGridMaskColumn;
    grdLOLinesSTRESSGRADE: TdxDBGridMaskColumn;
    grdLOLinesFJ: TdxDBGridMaskColumn;
    grdLOLinesPKGCUT: TdxDBGridMaskColumn;
    grdLOLinesPET_TOL: TdxDBGridMaskColumn;
    grdLOLinesPKGTYPE: TdxDBGridMaskColumn;
    grdLOLinesNOTE: TdxDBGridMemoColumn;
    grdLOLinesSHRINKWRAP: TdxDBGridMaskColumn;
    grdLOLinesPCSPERMINIBUNDLE: TdxDBGridMaskColumn;
    grdLOLinesExtraID: TdxDBGridMaskColumn;
    grdLOLinesGRADESTAMP: TdxDBGridMaskColumn;
    grdLOLinesBARCODE: TdxDBGridMaskColumn;
    grdLOLinesWRAPTYPE: TdxDBGridMaskColumn;
    grdLOLinesPRESSURE_TREAT: TdxDBGridMaskColumn;
    grdLOLinesPKG_TAG: TdxDBGridMaskColumn;
    grdLOLinesPCSPERPKG: TdxDBGridMaskColumn;
    grdLOLinesProductLengthNo: TdxDBGridMaskColumn;
    grdLOLinesProductNo: TdxDBGridMaskColumn;
    grdLOLinesColumn48: TdxDBGridMaskColumn;
    grdLOLinesORDERNO: TdxDBGridMaskColumn;
    grdLOLinesCustShipPlanDetailObjectNo: TdxDBGridMaskColumn;
    grdLOLinesCustomerNo: TdxDBGridMaskColumn;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    grdPackages: TdxDBGrid;
    grdPackagesLONo: TdxDBGridMaskColumn;
    grdPackagespackagecodeno: TdxDBGridMaskColumn;
    grdPackagesPACKAGENO: TdxDBGridMaskColumn;
    grdPackagesNOOFPKG: TdxDBGridMaskColumn;
    grdPackagesSUPP_CODE: TdxDBGridMaskColumn;
    grdPackagesPKG_OK: TdxDBGridCheckColumn;
    grdPackagesPKGLOG: TdxDBGridMaskColumn;
    grdPackagesM3_NET: TdxDBGridMaskColumn;
    grdPackagesPCS: TdxDBGridMaskColumn;
    grdPackagesM3_NOM: TdxDBGridMaskColumn;
    grdPackagesKVM: TdxDBGridMaskColumn;
    grdPackagesLOPM: TdxDBGridMaskColumn;
    grdPackagesPACKAGETYPENO: TdxDBGridMaskColumn;
    grdPackagesPcsPerLength: TdxDBGridMaskColumn;
    grdPackagesPkg_Function: TdxDBGridMaskColumn;
    grdPackagesPkg_State: TdxDBGridMaskColumn;
    grdPackagesDefaultCustShipObjectNo: TdxDBGridMaskColumn;
    grdPackagesProduct: TdxDBGridMaskColumn;
    grdPackagesLoadDetailNo: TdxDBGridMaskColumn;
    grdPackagesMFBM: TdxDBGridMaskColumn;
    grdPackagesOverrideMatch: TdxDBGridCheckColumn;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    acClose: TAction;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    bcLogicalInventory: TcxComboBox;
    bcPhysInventory: TcxComboBox;
    acChangeLOLinesLayout: TAction;
    acChangePkgLayout: TAction;
    acSaveLoad: TAction;
    acGetTallyOfLoadPlan: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure grdLOLinesMatchToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure grdPackagesPACKAGENOValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);

    procedure grdPackagesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dxDBImageEdit1Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxDBMemo1Change(Sender: TObject);
    procedure bcLogicalInventory2CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bbCustomgrdLONumberClick(Sender: TObject);
    procedure bConnectClick(Sender: TObject);
    procedure bDisconnectClick(Sender: TObject);
    procedure bbDeletePkgFromSystemClick(Sender: TObject);
    procedure bbDeleteAllPkgsFromSystemClick(Sender: TObject);
    procedure grdLONumberCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure bbMatchaClick(Sender: TObject);
    procedure bbPickPkgNosClick(Sender: TObject);
    procedure pmPkgsPopup(Sender: TObject);
    procedure acAddPkgExecute(Sender: TObject);
    procedure acValidatePkgExecute(Sender: TObject);
    procedure acInsertPkgToInventoryExecute(Sender: TObject);
    procedure acInsertAllPkgsToInventoryExecute(Sender: TObject);
    procedure acUndoPkgOperationExecute(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acValidatePkgUpdate(Sender: TObject);
    procedure acInsertPkgToInventoryUpdate(Sender: TObject);
    procedure acInsertAllPkgsToInventoryUpdate(Sender: TObject);
    procedure acUndoPkgOperationUpdate(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acAddLOExecute(Sender: TObject);
    procedure acRemoveLOExecute(Sender: TObject);
    procedure acUndoRemoveLOExecute(Sender: TObject);
    procedure acRemoveLOUpdate(Sender: TObject);
    procedure acUndoRemoveLOUpdate(Sender: TObject);
    procedure acConnectMarkedPkgsToLOExecute(Sender: TObject);
    procedure acAddPkgByPkgCodeExecute(Sender: TObject);
    procedure acRemovePkgsByPkgCodeExecute(Sender: TObject);
    procedure acPickPkgNosExecute(Sender: TObject);
    procedure acValidateAllPkgsExecute(Sender: TObject);
    procedure acValidateAllPkgsUpdate(Sender: TObject);
    procedure acPkgNoSeriesExecute(Sender: TObject);
    procedure acPkgNoSeriesUpdate(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acAddPkgUpdate(Sender: TObject);
    procedure acConnectMarkedPkgsToLOUpdate(Sender: TObject);
    procedure acAddPkgByPkgCodeUpdate(Sender: TObject);
    procedure acRemovePkgsByPkgCodeUpdate(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
    procedure detLoadedPropertiesChange(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure bcPhysInventoryPropertiesChange(Sender: TObject);
    procedure bcLogicalInventoryPropertiesCloseUp(Sender: TObject);
    procedure acChangeLOLinesLayoutExecute(Sender: TObject);
    procedure acChangePkgLayoutExecute(Sender: TObject);
    procedure acSaveLoadExecute(Sender: TObject);
    procedure grdLOLinesCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure acGetTallyOfLoadPlanExecute(Sender: TObject);
  private
    { Private declarations }

     AddingPkgsFromPkgEntry : Boolean ;
     FIsModified : Boolean ;
     procedure SetLoadRowToChanged ;
     procedure SetLBDeleteLoad ;
     function AfterAddedPkgNo(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3;
        const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;

     procedure CloseDataSets;
     procedure SomethingChanged(Sender: TObject);
     function IdentifyPackageSupplier(
          const PkgNo,
          FSupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String;
          Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;

     function IsPkgReserved(
                const PkgNo : Integer;
                var PkgSupplierCode: String3;
                Var Res_UserName : String) : TEditAction;

     function  ValidatePkg(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;
        const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;

     Procedure GetLO_Records_AfterAddingLO_Number(Sender: TObject;LO_Number : Integer) ;
     procedure AddLoadDetailMatchByProductNo(const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer);
     procedure InsertPkgSerie(Sender: TObject) ;
     function  ValidatePkgInSerie(Sender: TObject; PkgNo: Integer;
                PkgSupplierCode: String3) : TEditAction ;
     procedure RemoveAndADD_Matches(Sender : TObject);
     procedure InsertPkgNo(Sender: TObject) ;
     procedure ValidatePkgNoSuppCode(Sender: TObject; PkgNo: Integer;
                PkgSupplierCode: String3; ProductNo, ProductLengthNo : Integer);

     function  ValidatePackage_ver2(
     PkgSupplier : string3;
     PkgNo       : Integer;
     var CustShipPlanObjectNo      : Integer;
     Var PkgLog        : String;
     var LO_Number    : Integer;
     const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer;

     function AddPkgTo_mtLoadPackages(Sender: TObject;
     const PkgNo : Integer;
     const PkgSupplierCode : String3) : TEditAction ;
//     procedure ValidatePkgNoSuppCodeII(Sender: TObject; PkgNo: Integer;
//     PkgSupplierCode: String3; ProductNo, ProductLengthNo : Integer);
//     function IsPkgReservedII(
//     const PkgNo : Integer;
//     var PkgSupplierCode: String3;
//     Var Res_UserName : String) : TEditAction;
     function FinnsLOKoppling : Boolean ;
     procedure RemoveAndADD_Matches_II(Sender : TObject);
     procedure InsertSelectedPkgNos(Sender: TObject) ;

  Protected
      procedure ResolvePkgNoAmbiguity(
      Sender : TObject;
      ADataSource : TDataSource;
      var Choice : String3;
      var SupplierNo : Integer;
      var ProductNo : Integer;
      Var ProductLengthNo : Integer;
      Var NoOfLengths : Integer
      );

  public
    { Public declarations }
    LOAD_INTERN_OR_EXTERN : Integer ;
    constructor CreateWithNewLoad      (AOwner: TComponent; const CustomerNo, SupplierNo, SalesRegionNo : Integer);
    constructor CreateWithExistingLoad (AOwner: TComponent; const CustomerNo, LoadNo, SalesRegionNo : Integer );
    destructor Destroy; override;
  end;

var
  fLoadEntry: TfLoadEntry;

implementation

uses dmcLoadEntry, VidaConst, UnitSelectLO_Number, dlgPickPkg,
  dmsVidaContact, VidaUser, UnitPkgInfo,
  UnitPkgNoSeries, dmsVidaSystem, uEntryField , uPickPkgNo, dmsDataConn,
  uSelectLoadPlanDest;

{$R *.dfm}

{ TfrmLoadEntry }
constructor TfLoadEntry.CreateWithExistingLoad(
  AOwner   : TComponent;
  const CustomerNo ,
  LoadNo   ,
  SalesRegionNo : Integer );
var
  Save_Cursor:TCursor;

  Procedure OpenLoadHead ;
  Begin
   With dmLoadEntry do
   Begin
    cds_LoadHead.Active:= False ;
    sq_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
   End ;
  End ;

  Procedure OpenShowLoadShippingPlan ;
  Var x : Integer ;
  Begin
   With dmLoadEntry do
   Begin
    ds_mtLoadShippingPlan.Enabled:= False ;
    Try

    sq_Show_LoadShippingPlan.Close ;
    sq_Show_LoadShippingPlan.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_Show_LoadShippingPlan.Open ;
    While not sq_Show_LoadShippingPlan.Eof do
    Begin
     mtLoadShippingPlan.Insert ;
     Try
     For x := 0 to 18 do
      mtLoadShippingPlan.Fields.Fields[x].AsVariant := sq_Show_LoadShippingPlan.Fields.Fields[x].AsVariant ;
      mtLoadShippingPlanFunction.AsInteger:= 0 ;
     mtLoadShippingPlan.Post ;
     Except
      on eDatabaseError do
      Raise ;
     End ;

     sq_Show_LoadShippingPlan.Next ;
    End ;
    sq_Show_LoadShippingPlan.Close ;
    Finally
     ds_mtLoadShippingPlan.Enabled:= True ;
    End ;
   End ; //with
  End ;

 Procedure GetLO_Records ;
 Var x : integer ;
 Begin
   With dmLoadEntry do
   Begin
    mtLO_Records.DisableControls ;
    Try

    mtLoadShippingPlan.First ;
    While not mtLoadShippingPlan.Eof do
    Begin
     sq_GetLO_Records.Close ;
     sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
     sq_GetLO_Records.ParamByName('CustomerNo').AsInteger:= FCustomerNo ;
     sq_GetLO_Records.Open ;
     While not sq_GetLO_Records.Eof do
     Begin
      mtLO_Records.Insert ;
      Try
      For x := 0 to 57 do
       mtLO_Records.Fields.Fields[x].AsVariant := sq_GetLO_Records.Fields.Fields[x].AsVariant ;

      mtLO_RecordsINCH_THICK.AsFloat := StrToFloatDef(sq_GetLO_RecordsINCH_THICK.AsString,0) ;
      mtLO_RecordsINCH_WIDTH.AsFloat := StrToFloatDef(sq_GetLO_RecordsINVCH_WIDTH.AsString,0) ;

      mtLO_RecordsMATCH.AsBoolean:= False ;

      mtLO_Records.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;

      sq_GetLO_Records.Next ;
     End ; //while
     mtLoadShippingPlan.Next ;
    End ; //while
    sq_GetLO_Records.Close ;
    Finally
     mtLO_Records.EnableControls ;
    End ;
   End ;//with
 End ;

 Procedure Get_LoadPackages ;
 Var x : Integer ;
 Begin
   With dmLoadEntry do
   Begin
    mtLoadPackages.DisableControls ;
    Try

    sq_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadPackages.Open ;
    While not sq_LoadPackages.Eof do
    Begin
     mtLoadPackages.Insert ;
     Try
     For x := 0 to 27 do
      mtLoadPackages.Fields.Fields[x].AsVariant:= sq_LoadPackages.Fields.Fields[x].AsVariant ;

     mtLoadPackagesSUPP_CODE.AsString:= Trim(mtLoadPackagesSUPP_CODE.AsString);
     if mtLoadPackagesLoadDetailNo.AsInteger >= GlobalLoadDetailNo then
      GlobalLoadDetailNo := mtLoadPackagesLoadDetailNo.AsInteger + 1 ;



     mtLoadPackagesPkg_State.AsInteger    := EXISTING_PACKAGE ;
     mtLoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD ;
     mtLoadPackagesChanged.AsBoolean      := False ;

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

 Procedure Get_LoadDetailMatch ;
 Var x : Integer ;
 Begin
   With dmLoadEntry do
   Begin

    sq_LoadDetailMatch.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadDetailMatch.Open ;
    While not sq_LoadDetailMatch.Eof do
    Begin
     mtLoadDetailMatch.Insert ;
     Try
     For x := 0 to mtLoadDetailMatch.Fields.Count - 1 do
      mtLoadDetailMatch.Fields.Fields[x].AsVariant:= sq_LoadDetailMatch.Fields.Fields[x].AsVariant ;
     mtLoadDetailMatchSupplierCode.AsString:= Trim(mtLoadDetailMatchSupplierCode.AsString) ;
     mtLoadDetailMatch.Post ;
     Except
      on eDatabaseError do
      Raise ;
     End ;

     sq_LoadDetailMatch.Next ;
    End ; //while
    sq_LoadDetailMatch.Close ;
   End ;//whith
 End ;




//Begin with procedure CreateWithExistingLoad(
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(AOwner, 0,0,SalesRegionNo);

  With dmLoadEntry do
  Begin
   ds_LoadPackages.Enabled:= False ;
  OpenLoadHead ;
  FCustomerNo     := cds_LoadHeadCustomerNo.AsInteger ;
  FSupplierNo     := cds_LoadHeadSupplierNo.AsInteger ;
  LoadStatus      := cds_LoadHeadSenderLoadStatus.AsInteger ;
  OpenShowLoadShippingPlan ;

  Get_LoadDetailMatch ;

  GetLO_Records ;

  Get_LoadPackages ;

  dmLoadEntry.Get_LO_LinesMatched (dmLoadEntry.mtLoadpackagesPackageNo.AsInteger,
  dmLoadEntry.mtLoadpackagesSUPP_CODE.AsString) ;

  dmsSystem.sp_OneLoad.Close ;
  dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sp_OneLoad.Open ;

  if ThisUser.UserID <> 8 then
  if (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0)//  or (mtLoadShippingPlanORDERTYPE.AsString = 'PURCHASE')
  then
  Begin
   lbReValidate.Enabled:= False ;
   cds_LoadHead.ReadOnly:= True ;
   mtLoadPackages.ReadOnly:= True ;
   lbAddPackage.Enabled:= False ;
   bbUndo.Enabled:= False ;
   lbPkgNoSerie.Enabled:= False ;
   lbValidatePkg.Enabled:= False ;
   lbRemovePackage.Enabled:= False ;
   lbRemoveALLPkgs.Enabled:= False ;
   lbSetDefaultMatchAllPkg.Enabled:= False ;
   lbAddLONumber.Enabled:= False ;
   lbRemoveLONumber.Enabled:= False ;
   MessageBeep(MB_ICONEXCLAMATION);
   Caption := 'Lasten kan inte ändras, den är fakturerad.' ;
  End     ;

  dmsSystem.sp_OneLoad.Close ;
  FIsModified := FALSE;
  ds_LoadPackages.Enabled:= True ;
  SetLBDeleteLoad ;
 End ; //with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

constructor TfLoadEntry.CreateWithNewLoad(AOwner: TComponent; const CustomerNo, SupplierNo, SalesRegionNo : Integer);
begin
  inherited Create(AOwner);
  dmLoadEntry:= TdmLoadEntry.Create(Nil);
  LOAD_INTERN_OR_EXTERN := EXTERNAL_LOAD ;
  With dmLoadEntry do
  Begin
   FCustomerNo   := CustomerNo;
   FSupplierNo   := SupplierNo ;
   FSalesRegionNo := SalesRegionNo ;
   dmsContact.sp_Cities.Open ;
   dmsContact.cdsCities.Active:= True ;
   dmsContact.cds_LocalShipper.Active:= True ;
   mtLoadDetailMatch.Active:= True ;
   cds_LoadHead.Active:= True ;

   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger:= 0 ;
   cds_LoadHeadLoadedDate.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Date) ;
   cds_LoadHead.Post ;

   mtLoadShippingPlan.Active := True ;
   mtLO_Records.Active:= True ;
   mtLoadPackages.Active:= True ;

   dmLoadEntry.LogicalTransferInventoryNo:= 0 ;

   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, FSalesRegionNo, ThisUser.CompanyNo) ;

   if bcPhysInventory.Properties.Items.Count < 1 then
    ShowMessage('Försäljningsregionen har inga lagerplatser, kan inte fortsätta. Prata med Jenny!') ;
   bcPhysInventory.ItemIndex:= 0 ;
   dmLoadEntry.LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
  End ; //with
end;


destructor TfLoadEntry.Destroy;
begin
  grdPackages.SaveToIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);
  grdLOLines.SaveToIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);
  grdShipToAddress.SaveToIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);
  grdLONumber.SaveToIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);

  CloseDataSets;
  FreeAndNil(dmLoadEntry) ;
  inherited
end;


procedure TfLoadEntry.CloseDataSets;
begin
   With dmLoadEntry do
   Begin
    cds_LoadHead.Active:= False ;
    sq_LoadHead.Close ;
    mtLO_Records.Active:= False ;
    mtLoadPackages.Active:= False ;
    mtLoadDetailMatch.Active:= False ;
    mtLoadShippingPlan.Active := False ;
    dmsContact.sp_Cities.Close ;
    dmsContact.cdsCities.Active:= False ;
    dmsContact.cds_LocalShipper.Active:= False ;
   End ;
end;

procedure TfLoadEntry.grdLOLinesMatchToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
begin
 SomethingChanged(Sender) ;
 With dmLoadEntry do
 Begin
  if (State = cbsUnchecked) then
  Begin
   Try
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+mtLoadPackagesPackageNo.AsString+' AND SupplierCode = '''+
     Trim(mtLoadPackagesSUPP_CODE.AsString)+''''+
     ' AND CustShipPlanDetailObjectNo = '+mtLO_RecordsCustShipPlanDetailObjectNo.AsString+'' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;
    While not mtLoadDetailMatch.Eof do
    Begin
     mtLoadDetailMatch.Delete ;
    End ; //while
   Finally
    mtLoadDetailMatch.Filtered:= False ;
   End ;
  End
     else
     Begin
      RemoveAndADD_Matches(Sender) ;
     End ;
    Get_LO_LinesMatched (mtLoadpackagesPackageNo.AsInteger,
    Trim(mtLoadPackagesSUPP_CODE.AsString)) ;
   End ; //with
//Set rad till ändrad och PKG_OK.AsInteger  := BAD_PKG ;
 SetLoadRowToChanged ;
end;

procedure TfLoadEntry.RemoveAndADD_Matches(Sender : TObject);
begin
 With dmLoadEntry do
 Begin
   Try
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+mtLoadPackagesPackageNo.AsString+' AND SupplierCode = '''+
     Trim(mtLoadPackagesSUPP_CODE.AsString)+'''';
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;
    While not mtLoadDetailMatch.Eof do
    Begin
      mtLoadDetailMatch.Delete ;
    End ; //while
   Finally
    mtLoadDetailMatch.Filtered:= False ;
   End ;
      mtLoadDetailMatch.Insert ;
      Try
      mtLoadDetailMatchLoadNo.AsInteger                     := cds_LoadHeadLoadNo.AsInteger ;
      mtLoadDetailMatchLoadDetailNo.AsInteger               := mtLoadPackagesLoadDetailNo.AsInteger ;
      mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger := mtLO_RecordsCustShipPlanDetailObjectNo.AsInteger ;
      mtLoadDetailMatchPackageNo.AsInteger                  := mtLoadPackagesPackageNo.AsInteger ;
      mtLoadDetailMatchSupplierCode.AsString                := Trim(mtLoadPackagesSUPP_CODE.AsString) ;
      mtLoadDetailMatch.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
   End ; //with
end;

procedure TfLoadEntry.SomethingChanged(Sender: TObject);
begin
  FIsModified         := True ;
  acSaveLoad.Enabled  := True ;
  SetLBDeleteLoad ;
end;

function TfLoadEntry.IdentifyPackageSupplier(
  const PkgNo,
  FSupplierNo: Integer;
  var PkgSupplierCode: String3;
  var PkgSupplierNo: Integer;
  Var ProductNo : Integer;
  Var Res_UserName : String;
  Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
    dmLoadEntry.LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
    PkgSupplierCode := dmLoadEntry.PkgNoToSuppCode(PkgNo,
    dmLoadEntry.LogicalTransferInventoryNo,
    PkgSupplierNo, ProductNo, ProductLengthNo, NoOfLengths);
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
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

procedure TfLoadEntry.AddLoadDetailMatchByProductNo(const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer);
begin
// if AddingPkgsFromPkgEntry = False then
 Begin
 With dmLoadEntry do
 Begin
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+IntToStr(PkgNo)+' AND SupplierCode = '
     +QuotedStr(Trim(SUPP_CODE)) ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;
    While not mtLoadDetailMatch.Eof do
    Begin
      mtLoadDetailMatch.Delete ;
    End ; //while

    Try
//if packages have multiple lengths then filter on random lengths LO's
//else filter on fixed length LO
//ProductLengthNo, NoOfLengths

    if NoOfLengths > 1 then
    Begin
    //Try on maingrade and ProductNo
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ;
     mtLO_Records.Filtered:= True ;


     //TRy match on MainGrade only!
     if mtLO_Records.RecordCount = 0 then
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
//NO!     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ;
    End
    else //Try match on single length
    Begin
     //Try match on pakettypnr
     mtLO_Records.Filter:= 'PackageTypeNo = '+mtLoadPackagesPackageTypeNo.AsString ;

     mtLO_Records.Filtered:= True ;

     //Try match on PcsPerPkg
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);
     +' AND ACT_LENGTH = '+mtLoadPackagesALMM.AsString
     +' AND PCSPERPKG = '+mtLoadPackagesPCS.AsString ;

     //Try on MainGrade and ProductNo
    if mtLO_Records.RecordCount = 0 then
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);
     +' AND ACT_LENGTH = '+mtLoadPackagesALMM.AsString ;

    //TRy match on MainGrade Only
    if mtLO_Records.RecordCount = 0 then
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
//NO!     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH = '+mtLoadPackagesALMM.AsString ;
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);


    //TRy match on RL med productNo
    if mtLO_Records.RecordCount = 0 then
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ;

     //TRy match on RL utan productNo
    if mtLO_Records.RecordCount = 0 then
     mtLO_Records.Filter:= 'ACT_THICK = '+mtLoadPackagesACT_THICK.AsString
     +' AND ACT_WIDTH = '+mtLoadPackagesACT_WIDTH.AsString
     +' AND MainGradeNo = '+mtLoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+mtLoadPackagesSurfacingNo.AsString
     +' AND SpeciesNo = '+mtLoadPackagesSpeciesNo.AsString
//NO!     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ;
    End ;

    mtLO_Records.Filtered:= True ;
    mtLO_Records.First ;
   if not mtLO_Records.Eof then
     Begin
      mtLoadDetailMatch.Insert ;
      Try
      mtLoadDetailMatchLoadNo.AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
      mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger:= mtLO_RecordsCustShipPlanDetailObjectNo.AsInteger ;
      mtLoadDetailMatchPackageNo.AsInteger:= PkgNo ;
      mtLoadDetailMatchSupplierCode.AsString:= Trim(SUPP_CODE) ;
      mtLoadDetailMatch.Post ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadDetailMatch.Cancel ;
       End ;
      End ;
     End ;//if not mtLO_Records.Eof then
    Finally
     mtLO_Records.Filtered:= False ;
    End ;
 End ; //with
 End ;
end;

procedure TfLoadEntry.grdPackagesPACKAGENOValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
var
  NewValue: string;
  PkgSupplierCode: String3;
  PkgSupplierNo: Integer ;
  Action: TEditAction;
  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
  ProductLengthNo : Integer ;
  NoOfLengths : Integer ;
begin
 With dmLoadEntry do
 Begin
 if mtLoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
 Begin
  ErrorText:= 'Inte tillåtet att skriva över paketnr som redan är sparade till lasten' ;
  Accept:= False ;
  Exit ;
 End ;
 End ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
    { Do some lengthy operation }
  NewValue := TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;
    NewValue := TdxTreeList((Sender as TdxTreeListColumn).TreeList).EditingText;

    Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      VIDA_WOOD_COMPANY_NO,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName,   ProductLengthNo , NoOfLengths ) ;


  if Action = eaACCEPT then
  Begin
    AddPkgTo_mtLoadPackages(Sender, StrToInt(NewValue),PkgSupplierCode) ;
    if AfterAddedPkgNo(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths) <> eaACCEPT then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text) ;
     Accept:= False ;
    End
    else
    Accept:= True ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text) ;
     Accept:= False ;
    End
    else
   if Action = eaReserved then
    Begin
     ErrorText:= 'Paketnr '+NewValue+' är reserverat av '+Res_UserName ;
     Accept:= False ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

Procedure TfLoadEntry.GetLO_Records_AfterAddingLO_Number(Sender: TObject;LO_Number : Integer) ;
 Var x : integer ;
 Begin
   With dmLoadEntry do
   Begin
    mtLO_Records.DisableControls ;
    Try
    if mtLO_Records.Active = False then
     mtLO_Records.Active:= True ;

     sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger:= LO_Number ;
     sq_GetLO_Records.ParamByName('CustomerNo').AsInteger:= FCustomerNo ;
     sq_GetLO_Records.Open ;
     While not sq_GetLO_Records.Eof do
     Begin
      mtLO_Records.Insert ;
      Try
      For x := 0 to 56 do
       mtLO_Records.Fields.Fields[x].AsVariant := sq_GetLO_Records.Fields.Fields[x].AsVariant ;
      mtLO_RecordsMATCH.AsBoolean:= False ;
      mtLO_Records.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
      sq_GetLO_Records.Next ;
     End ; //while
    sq_GetLO_Records.Close ;
    Finally
     mtLO_Records.EnableControls ;
    End ;
   End ; //with
 End ;

procedure TfLoadEntry.FormCreate(Sender: TObject);
Var x : Integer ;
begin
  acPickPkgNos.Enabled:= False ;
  dmLoadEntry.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry:= False ;

  grdPackages.LoadFromIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);
  grdLOLines.LoadFromIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);
  grdShipToAddress.LoadFromIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);
  grdLONumber.LoadFromIniFile(dmsConnector.InifilesMap+'VisLoadEntry'+'.'+ThisUser.UserName);

 With dmLoadEntry do
 Begin
  ds_mtLoadDetailMatch.DataSet:= Nil ;
 End ;

 For x := 1 to 41 do
  grdLOLines.Columns[x].ReadOnly:= True ;

 For x := 0 to 13 do
  grdLONumber.Columns[x].ReadOnly:= True ;

end;

procedure TfLoadEntry.ResolvePkgNoAmbiguity(
  Sender: TObject;
  ADataSource : TDataSource;
  var Choice : String3;
  var SupplierNo : Integer;
  var ProductNo : Integer;
  Var ProductLengthNo : Integer;
   Var NoOfLengths : Integer
  );
// User has added a package to a load by specifying the package number.
// More than one package with this number is located in inventories owned by the supplier
// of this load. This event handler allows the user to select which of these packages they
// want to add to the load. The supplier code for their choice is returned in the Choice
// arguement, which is set to an empty string if the user declines to make a choice.
begin
  with TfrmPackagePicker.Create(Self) do try
    DataSource := ADataSource;
    ShowModal;
    if ModalResult = mrOK then begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      ProductLengthNo := ProductLengthNoForSelectedpkg ;
      NoOfLengths := NoOfLengthsForSelectedpkg ;
      end
    else
      Choice := '';
  finally
    free;
    end;
end;

//procedure TfLoadEntry.lbSaveLoadClick(Sender: TObject);

procedure TfLoadEntry.grdPackagesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iStatusColumn : Integer;
  iStatus : integer;
begin
  // get the status of this LO
//  iStatusColumn := grdPackages.ColumnByName('grdPackagesPKG_OK').Index;
//  Try
//  iStatus := ANode.Values[iStatusColumn];
//  if iStatus <> 0 then
  // Set the color for this row, based on LO status
//  AColor := clRed ; //BackgroundColor(iStatus);

  iStatusColumn := grdPackages.ColumnByName('grdPackagesPKG_OK').Index;
  Try
  if ANode.Values[iStatusColumn] <> Null then
  Begin
  iStatus := ANode.Values[iStatusColumn];
  Case iStatus of
   1,2,3,4,5,6,7,8,9,10,11,12 : AColor := clRed ;
   VP_LengthNotInLengthGroup  : AColor := clYellow ;
  End ;

  iStatusColumn := grdPackages.ColumnByName('grdPackagesPkg_Function').Index;
  iStatus := ANode.Values[iStatusColumn];
  Case iStatus of
   REMOVE_PKG_FROM_LOAD : AColor := clBlue ; //Remove
   DELETE_PKG : AColor := clAqua ;//Delete
  End ;
  End ;


  Except
  End ;

end;

procedure TfLoadEntry.dxDBImageEdit1Change(Sender: TObject);
begin
 SomethingChanged(Sender);
end;

procedure TfLoadEntry.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FIsModified = True then
   if MessageDlg('Ändringar i lasten är inte sparade, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose := True
     else
     CanClose:= False ;
//    lbSaveLoadClick(Sender) ;

   //Remove entries in Pkgs_Res

 if CanClose then
 With dmsSystem do
 Begin
  Delete_ReservedPkgs (Self.Name) ;
 End ;
end;

procedure TfLoadEntry.dxDBMemo1Change(Sender: TObject);
begin
 SomethingChanged(Sender);
end;

procedure TfLoadEntry.SetLBDeleteLoad ;
Begin
 if (dmLoadEntry.mtLoadPackages.Active) and (dmLoadEntry.mtLoadPackages.RecordCount = 0) and (FIsModified = FALSE) then
 lbDeleteLoad.Enabled := True
 else
 lbDeleteLoad.Enabled := False ;
End ;


procedure TfLoadEntry.bcLogicalInventory2CloseUp(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
 End ;
end;

procedure TfLoadEntry.Button1Click(Sender: TObject);
begin
  dmLoadEntry.LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
  ShowMessage('dmLoadEntry.LogicalTransferInventoryNo = '+IntToStr(dmLoadEntry.LogicalTransferInventoryNo)) ;
end;

procedure TfLoadEntry.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmLoadEntry do
 Begin
  mtLoadPackages.DisableControls ;
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

      Try
       mtLoadPackages.Insert ;
       mtLoadpackagesPackageNo.AsInteger:= PkgNo ;
       if ValidatePkgInSerie(Sender, PkgNo,'') <> eaACCEPT then
        mtLoadPackages.Cancel ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;
    End ;
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

function TfLoadEntry.ValidatePkgInSerie(Sender: TObject; PkgNo: Integer;
PkgSupplierCode: String3) : TEditAction ;
var
  PkgSupplierNo: Integer ;
  Action: TEditAction;
  ProductNo : Integer ;
  Save_Cursor : TCursor;
  Res_UserName : String ;
  ProductLengthNo, NoOfLengths : Integer ;
begin

  Save_Cursor := Screen.Cursor;

  Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  try
    { Do some lengthy operation }
    Action := IdentifyPackageSupplier(
     PkgNo,
      dmLoadEntry.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName , ProductLengthNo, NoOfLengths );


  if Action = eaACCEPT then
  Begin
    AddPkgTo_mtLoadPackages(Sender, PkgNo, PkgSupplierCode) ;
    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text))  ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text)) ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' är reserverat av '+Res_UserName) ;
    End ;
  Result:= Action ;    
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntry.bbCustomgrdLONumberClick(Sender: TObject);
begin
 grdLONumber.ColumnsCustomizing ;
end;

procedure TfLoadEntry.bConnectClick(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  ds_mtLoadDetailMatch.DataSet:= mtLoadDetailMatch ;
 End ;
end;

procedure TfLoadEntry.bDisconnectClick(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  ds_mtLoadDetailMatch.DataSet:= Nil ;
 End ;
end;

procedure TfLoadEntry.bbDeletePkgFromSystemClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;

  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

 //Delete a package
  if MessageDlg('Är du säker? paketet kommer att fösvinna från systemet',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then

  Begin
   dmLoadEntry.mtLoadPackages.Edit ;
   dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger := DELETE_PKG ;
   dmLoadEntry.mtLoadPackagesChanged.AsBoolean      := True ;
   dmLoadEntry.mtLoadPackages.Post ;
   SomethingChanged(Sender) ;
  End ;

 Finally
  FIsModified := False ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
End ;

procedure TfLoadEntry.bbDeleteAllPkgsFromSystemClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 if MessageDlg('Är du säker? paketen kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  dmLoadEntry.mtLoadPackages.DisableControls ;
  Try
  dmLoadEntry.ds_LoadPackages.OnDataChange:= NIL ;
  dmLoadEntry.mtLoadPackages.First ;
  While not dmLoadEntry.mtLoadPackages.Eof do
  Begin
   dmLoadEntry.mtLoadPackages.Edit ;
   dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger := DELETE_PKG ;
   dmLoadEntry.mtLoadPackagesChanged.AsBoolean      := True ;
   dmLoadEntry.mtLoadPackages.Post ;
   dmLoadEntry.mtLoadPackages.Next ;
   SomethingChanged(Sender) ;
  End ;

  Finally
   dmLoadEntry.ds_LoadPackages.OnDataChange:= dmLoadEntry.ds_LoadPackagesDataChange ;
   dmLoadEntry.mtLoadPackages.EnableControls ;

   FIsModified := False ;
   SetLBDeleteLoad ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; //if
end;

procedure TfLoadEntry.InsertPkgNo(Sender: TObject) ;
begin
 With dmLoadEntry do
 Begin
    mtPkgNos.First ;
    While not mtPkgNos.Eof do
    Begin
      Try
       mtLoadPackages.Insert ;
       mtLoadpackagesPackageNo.AsInteger:= mtPkgNospackageno.AsInteger ;
       mtLoadPackagesSUPP_CODE.AsString:= mtPkgNosSuppliercode.AsString ;
       ValidatePkgNoSuppCode(Sender, mtPkgNospackageno.AsInteger,
       mtPkgNosSuppliercode.AsString,
       mtPkgNosproductno.AsInteger, mtPkgNosproductlengthno.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;
     mtPkgNos.Next ;
    End ; //While
 End ; // with
End ;

procedure TfLoadEntry.ValidatePkgNoSuppCode(Sender: TObject; PkgNo: Integer;
PkgSupplierCode: String3; ProductNo, ProductLengthNo : Integer);
var
//  PkgSupplierNo: Integer ;
  Action: TEditAction;
  Save_Cursor : TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReserved(
     PkgNo,
      PkgSupplierCode,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
   AddPkgTo_mtLoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadEntry.mtLoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text)) ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' är reserverat av '+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfLoadEntry.IsPkgReserved(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var Res_UserName : String) : TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
    dmLoadEntry.LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else
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

procedure TfLoadEntry.grdLONumberCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iStatusColumn : Integer ;
  iStatus : integer ;
begin
  iStatusColumn := grdLONumber.ColumnByName('grdLONumberFunction').Index;
  iStatus := ANode.Values[iStatusColumn];
  Case iStatus of
   2 : AColor := clBlue ; //Remove
  End ;
end;

function TfLoadEntry.ValidatePackage_ver2(
  PkgSupplier : string3;
  PkgNo       : Integer;
  var CustShipPlanObjectNo      : Integer;
  Var PkgLog        : String;
  var LO_Number    : Integer;
  const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer;

var
  BadLength : Real;
  LOLines : TList;
  LOLineKey : Integer;

//build list of references to SupplierShipPlanObjectNo to validate package against
  procedure BuildListOfLOLines;
  begin
//if no match then add by productno automatically
    if not dmLoadEntry.mtLoadDetailMatch.FindKey([PkgNo,PkgSupplier]) then
    Begin
    //Koppla paket mot LO rader
     AddLoadDetailMatchByProductNo(PkgNo, PkgSupplier, ProductNo, ProductLengthNo, NoOfLengths);
    End ;//if
    Try
     //Insert SupplierShipPlanObjectNo into LOLines list
     dmLoadEntry.mtLoadDetailMatch.Filter
      := 'PackageNo = '+IntToStr(PkgNo)+' AND SupplierCode = '''+Trim(PkgSupplier)+'''' ;
     dmLoadEntry.mtLoadDetailMatch.Filtered:= True ;
     dmLoadEntry.mtLoadDetailMatch.First ;
     While not dmLoadEntry.mtLoadDetailMatch.Eof do
     Begin
      LOLineKey := dmLoadEntry.mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger ;
      LOLines.Add(Pointer(LOLineKey));
      dmLoadEntry.mtLoadDetailMatch.Next ;
     End ;//while
    Finally
     dmLoadEntry.mtLoadDetailMatch.Filtered:= False ;
    End ;
  end;

  function FirstMatch : Integer;
  var
    iLOLine : Integer;
  begin
    Result  := 0;
    iLOLine := 0;

    while (iLOLine < LOLines.Count) and (integer(LOLines[iLOLine]) < 0) do
      inc(iLOLine);

    if iLOLine < LOLines.Count then
      if integer(LOLines[iLOLine]) > 0 then
        Result := integer(LOLines[iLOLine]);
  end;

function ValideraLength : Integer ;
Begin
 Result:= BAD_LENGTH ;
  With dmLoadEntry do
  Begin
     if (mtLO_RecordsProductLengthNo.AsInteger = 453)
     or (mtLO_RecordsProductLengthNo.AsInteger = 533)
     or (mtLO_RecordsProductLengthNo.AsInteger = 1960)
     or (mtLO_RecordsProductLengthNo.AsInteger = 1831)
     or (mtLO_RecordsProductLengthNo.AsInteger = 3187)
     or (mtLO_RecordsProductLengthNo.AsInteger = 3190)     then
     Begin
      CustShipPlanObjectNo := mtLO_RecordsCustShipPlanDetailObjectNo.AsInteger ; // mtLO_RecordsSupplierShipPlanObjectNo.AsInteger ;
      LO_Number:= mtLO_RecordsLO_NUMBER.AsInteger ;

      if dmsSystem.All_PkgLengths_In_LengthGroup (mtLoadPackagesPACKAGETYPENO.AsInteger, mtLO_RecordsProductLengthGroupNo.AsInteger) then
      Result                := ALL_OK
      else
      Result:= VP_LengthNotInLengthGroup ;

     End
     else
     if mtLoadPackagesNoOfLengths.AsInteger = 1 then
     Begin
      if mtLO_RecordsACT_LENGTH.AsString = mtLoadPackagesALMM.AsString then
      Begin
       CustShipPlanObjectNo := mtLO_RecordsCustShipPlanDetailObjectNo.AsInteger ;// mtLO_RecordsSupplierShipPlanObjectNo.AsInteger ;
       LO_Number:= mtLO_RecordsLO_NUMBER.AsInteger ;
       Result:= ALL_OK ;
      End
       else
       Begin
        PkgLog :=  Format(rs_BAD_LENGTH,[BadLength]);
        Result:= BAD_LENGTH ;
       End ;
     End
     else
     //Om LO inte hade en R/L och paketet har flera längder
     if mtLoadPackagesNoOfLengths.AsInteger > 1 then
     Begin
      PkgLog :=  Format(rs_BAD_LENGTH,[BadLength]);
      Result:= BAD_LENGTH ;
     End ;
  End ; //With
End ;

function ValideraProduktAttribut : Integer ;
Begin
//August 27 Matching LO to Pkgs
  With dmLoadEntry do
  Begin
   if mtLoadPackagesACT_THICK.AsFloat <> mtLO_RecordsACT_THICK.AsFloat then
   Begin
    PkgLog :=  Format(rs_NO_Thick,[mtLoadPackagesACT_THICK.AsFloat]) ;
    Result:= VP_BadThickness ;
    Exit ;
   End
   else
   if mtLoadPackagesACT_WIDTH.AsFloat <> mtLO_RecordsACT_WIDTH.AsFloat then
   Begin
    PkgLog := Format(rs_NO_Width, [mtLoadPackagesACT_WIDTH.AsFloat]) ;
    Result:= VP_BadWidth ;
    Exit ;
   End
   else
   if mtLoadPackagesMainGradeNo.AsInteger <> mtLO_RecordsMainGradeNo.AsInteger then
   Begin
    Result:= VP_BadGrade ;
    PkgLog := rs_NO_Grade ;
    Exit ;
   End
   else
   if mtLoadPackagesSurfacingNo.AsInteger <> mtLO_RecordsSurfacingNo.AsInteger then
   Begin
    Result:= VP_BadSurfacing ;
    PkgLog:= rs_NO_Surfacing ;
    Exit ;
   End
   else
   if mtLoadPackagesSpeciesNo.AsInteger <> mtLO_RecordsSpeciesNo.AsInteger then
   Begin
    Result:= VP_BadSpecies ;
    PkgLog:= rs_NO_Species ;
    Exit ;
   End ;
//if we get to here all attributes are OK.
   Result:= ALL_OK ;
  End ; //With
End ;

begin
//ValidatePackage_ver2
  BadLength := 0;
  CustShipPlanObjectNo := NO_MATCH;  // Changed below if validation succeeds.
  LOLines := TList.Create;
  try


  dmLoadEntry.mtLoadDetailMatch.Filter:= 'PackageNo = '+IntToStr(PkgNo)+' AND SupplierCode = '
    +QuotedStr(Trim(PkgSupplier)) ;
  dmLoadEntry.mtLoadDetailMatch.Filtered:= True ;

  if dmLoadEntry.mtLoadDetailMatch.RecordCount = 0 then
   BuildListOfLOLines;

  With dmLoadEntry do
  Begin
   Try
//Filtera fram matchningar (LoadDetailMatch) på current paket
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+IntToStr(PkgNo)+' AND SupplierCode = '
     +QuotedStr(Trim(PkgSupplier)) ;
    mtLoadDetailMatch.Filtered:= True ;
   if mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger > 0 then
   Begin
//Filtrera fram LO records på current LoadDetailMatch
    mtLO_Records.Filter
     := 'CustShipPlanDetailObjectNo = '+mtLoadDetailMatchCustShipPlanDetailObjectNo.AsString ;
    mtLO_Records.Filtered:= True ;
    if mtLO_Records.RecordCount > 0 then
     LO_Number:= mtLO_RecordsLO_NUMBER.AsInteger ;

    if mtLoadPackagesOverrideMatch.AsInteger = 0 then
    Begin
     Result:= ValideraProduktAttribut ;
     if Result = ALL_OK then
     Result:= ValideraLength ;
    End
    else
    Begin
     Result:= ALL_OK ;
    End ;
   End
    else
     Begin
//      ShowMessage('Ingen koppling mot LO rad, välj en LO rad för paketnr '+
//      IntToStr(PkgNo)+'/'+QuotedStr(Trim(PkgSupplier)) ) ;
      Result:= VP_NoLOConnection ;
      PkgLog := rs_NO_LO_Connection ;
     End ;

//Kolla om det finns en match på Dimension, träslag, utförande och huvudkvalitet mellan
//LO och paket.
//Om det inte matchar skall det rapporteras tillbaka till användaren vilken parameter
//som inte matchade

//Är det en successfull match på produkten skall paketlängden matchas mot LO längden.

   Finally
    mtLO_Records.Filtered:= False ;
    mtLoadDetailMatch.Filtered:= False ;
   End ;
  End ; //With
  finally
    LOLines.Free;
  end;
end;

function TfLoadEntry.AfterAddedPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustShipPlanObjectNo : Integer;
  ValidPackage : Integer;
  PkgLog : String ;
  LO_Number : Integer ;
Begin
 With dmLoadEntry do
 Begin
  ds_LoadPackages.OnDataChange:= Nil ;
  mtLoadPackages.DisableControls ;
  Try
  Result:= eaACCEPT ;
  if mtLoadPackages.State = dsBrowse then
   mtLoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntry.mtLO_Records.First ;
   LO_Number:= dmLoadEntry.mtLO_RecordsLO_NUMBER.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := Self.ValidatePackage_ver2( PkgSupplierCode, PkgNo, CustShipPlanObjectNo, PkgLog,
    LO_Number, ProductNo, ProductLengthNo, NoOfLengths );

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= VP_LengthNotInLengthGroup ;
                      mtLoadPackagesPKGLOG.AsString:= 'Längd matchar ej längdgruppen' ;
                     End ;
        ALL_OK     : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= ALL_OK ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = ALL_OK';
                     End ;
        BAD_PKG    : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= BAD_PKG ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = BAD_PKG    ';
                     End ;
{        PKG_OK     : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= PKG_OK ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = PKG_OK     ';
                     End ; }
{        NO_PRODUCT : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= NO_PRODUCT ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = NO MATCHING LO';
                     End ; }
        BAD_LENGTH : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= BAD_LENGTH ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = BAD_LENGTH ';
                     End ;
{        AMBIGUOUS  : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= AMBIGUOUS ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = AMBIGUOUS  ';
                     End ;
        MULTIMATCH : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= MULTIMATCH ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = MULTIMATCH ';
                     End ; }

        VP_BadThickness : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadThickness ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadWidth ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadGrade ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadSurfacing ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadSpecies ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_NoLOConnection ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        else
        end;

    if ValidPackage <> BAD_PKG then
    Begin
     mtLoadPackagesDefaultCustShipObjectNo.AsInteger:= CustShipPlanObjectNo ;
     mtLoadPackagesLONo.AsInteger:= LO_Number ;
    End
    else
    if LO_Number > 0 then
     mtLoadPackagesLONo.AsInteger:= LO_Number ;
    SomethingChanged (Sender) ;
    Try
    mtLoadPackages.Post ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage('Paketnr finns redan i lasten.') ;
     mtLoadPackages.Cancel ;
     End ;
    End ;
   end ;

  Finally
   ds_LoadPackages.OnDataChange:= ds_LoadPackagesDataChange ;
   mtLoadPackages.EnableControls ;
  End ;
 End ; //with

end;

function TfLoadEntry.ValidatePkg(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
var
  CustShipPlanObjectNo : Integer;
  ValidPackage : Integer;
  PkgLog : String ;
  LO_Number : Integer ;
begin
 CustShipPlanObjectNo:= -1 ;
 LO_Number:= dmLoadEntry.mtLO_RecordsLO_NUMBER.AsInteger ;

 //LOLine is the CustShipPlanObjectNo or SuppShipPlanObjectNo
 ValidPackage := ValidatePackage_ver2( PkgSupplierCode, PkgNo, CustShipPlanObjectNo, PkgLog, LO_Number, ProductNo,
 ProductLengthNo, NoOfLengths ) ;
 Result:= ValidPackage ;

   With dmLoadEntry do
   Begin
      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= VP_LengthNotInLengthGroup ;
                      mtLoadPackagesPKGLOG.AsString:= 'Längd matchar ej längdgruppen' ;
                     End ;
        ALL_OK     : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= ALL_OK ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = ALL_OK';
                     End ;
        BAD_PKG    : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= BAD_PKG ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = BAD_PKG    ';
                     End ;
{        PKG_OK     : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= PKG_OK ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = PKG_OK     ';
                     End ; }
{        NO_PRODUCT : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= NO_PRODUCT ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = NO MATCHING LO' ;
                     End ; }
        BAD_LENGTH : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= BAD_LENGTH ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = BAD_LENGTH ' ;
                     End ;
{        AMBIGUOUS  : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= AMBIGUOUS ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = AMBIGUOUS  ' ;
                     End ;
        MULTIMATCH : Begin
                      mtLoadPackagesPKG_OK.AsInteger:= MULTIMATCH ;
                      mtLoadPackagesPKGLOG.AsString:= 'Package validation result = MULTIMATCH ' ;
                     End ; }
        VP_BadThickness : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadThickness ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadWidth ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadGrade ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadSurfacing ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_BadSpecies ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           mtLoadPackagesPKG_OK.AsInteger:= VP_NoLOConnection ;
                           mtLoadPackagesPKGLOG.AsString:= PkgLog ;
                          End ;

        else
        end;

    if ValidPackage = ALL_OK then
    Begin
     mtLoadPackagesDefaultCustShipObjectNo.AsInteger:= CustShipPlanObjectNo ;
     mtLoadPackagesLONo.AsInteger:= LO_Number ;
    End
    else
    if LO_Number > 0 then
     mtLoadPackagesLONo.AsInteger:= LO_Number ;

   End ; //with

    SomethingChanged (Sender) ;
end;

function TfLoadEntry.AddPkgTo_mtLoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;

var
  CustShipPlanObjectNo : Integer;
//  PkgLog : String ;
  LO_Number : Integer ;
Begin
 With dmLoadEntry do
 Begin
  ds_LoadPackages.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if mtLoadPackages.State = dsBrowse then
   mtLoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntry.mtLO_Records.First ;
   LO_Number:= dmLoadEntry.mtLO_RecordsLO_NUMBER.AsInteger ;
   CustShipPlanObjectNo := mtLO_RecordsCustShipPlanDetailObjectNo.AsInteger ;



     mtLoadPackagesDefaultCustShipObjectNo.AsInteger:= CustShipPlanObjectNo ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      mtLoadPackagesLONo.AsInteger                := LO_Number ;
      mtLoadPackagesProductNo.AsInteger           := sq_OnePkgDetailDataProductNo.AsInteger ;
      mtLoadPackagesPRODUCT.AsString              := sq_OnePkgDetailDataPRODUCT.AsString ;
      mtLoadPackagesPACKAGENO.AsInteger           := sq_OnePkgDetailDataPackageNo.AsInteger ;
      mtLoadPackagesNOOFPKG.AsInteger             := 1 ;
      mtLoadPackagesPACKAGETYPENO.AsInteger       := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      mtLoadPackagesSUPP_CODE.AsString            := Trim(PkgSupplierCode) ;
      mtLoadPackagesM3_NET.AsFloat                := sq_OnePkgDetailDataM3_NET.AsFloat ;
      mtLoadPackagesM3_NOM.AsFloat                := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      mtLoadPackagesKVM.AsFloat                   := sq_OnePkgDetailDataKVM.AsFloat ;
      mtLoadPackagesLopM.AsFloat                  := sq_OnePkgDetailDataLopM.AsFloat ;
      mtLoadPackagesPCS.AsInteger                 := sq_OnePkgDetailDataPCS.AsInteger ;
      mtLoadPackagesPcsPerLength.AsString         := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      mtLoadPackagesNoOfLengths.AsInteger         := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      mtLoadPackagesProductLengthNo.AsInteger     := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      mtLoadPackagesACT_THICK.AsFloat             := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      mtLoadPackagesACT_WIDTH.AsFloat             := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      mtLoadPackagesSurfacingNo.AsInteger         := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      mtLoadPackagesSpeciesNo.AsInteger           := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      mtLoadPackagesMainGradeNo.AsInteger         := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      mtLoadPackagesALMM.AsFloat                  := sq_OnePkgDetailDataALMM.AsFloat ;
      mtLoadPackagesLIPNo.AsInteger               := sq_OnePkgDetailDataLIPNo.AsInteger ;


//      mtLoadPackagespackagecodeno.AsString:= sq_OnePkgDetailDatapackagecodeno.AsString ;

      sq_OnePkgDetailData.Close ;
     End ;

    SomethingChanged (Sender);

    Try
    mtLoadPackages.Post ;
   if mtLoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage('Paketnr finns redan i lasten.') ;
     mtLoadPackages.Cancel ;
     End ;

    End ;

  Finally
   ds_LoadPackages.OnDataChange:= ds_LoadPackagesDataChange ;
  End ;
 End ; //with

end;

procedure TfLoadEntry.bbMatchaClick(Sender: TObject);
begin
 //Matcha paketet mot den LO rad som är markerad även om product eller längd inte stämmer
 if dmLoadEntry.mtLoadPackages.RecordCount > 0 then
 Begin
 With dmLoadEntry do
 Begin
  SomethingChanged(Sender);
  if FinnsLOKoppling = True then
  Begin
   if mtLoadPackages.State in [dsBrowse] then
   mtLoadPackages.Edit ;
   if mtLoadPackagesOverrideMatch.AsInteger = 0 then
    Begin
     mtLoadPackagesOverrideMatch.AsInteger:= 1 ;
     mtLoadPackagesPKG_OK.AsInteger:= 0 ;
     mtLoadPackagesPKGLOG.AsString:= 'Matchar manuellt' ;
    End
     else
      Begin
       mtLoadPackagesOverrideMatch.AsInteger:= 0 ;
       mtLoadPackagesPKG_OK.AsInteger:= BAD_PKG ;
       mtLoadPackagesPKGLOG.AsString:= 'Manuell matchning ångrad' ;
      End ;
  End
  else
      Begin
       mtLoadPackagesOverrideMatch.AsInteger:= 0 ;
       mtLoadPackagesPKG_OK.AsInteger:= BAD_PKG ;
       mtLoadPackagesPKGLOG.AsString:= 'Koppling mot LO saknas' ;
      End ;

 End ;
 End ;
end;

function TfLoadEntry.FinnsLOKoppling : Boolean ;
Begin
 Result:= False ;
  With dmLoadEntry do
  Begin
   Try
//Filtera fram matchningar (LoadDetailMatch) på current paket
    mtLoadDetailMatch.Filter
     := 'PackageNo = '+IntToStr(mtLoadPackagesPACKAGENO.AsInteger)+' AND SupplierCode = '
     +QuotedStr(Trim(mtLoadPackagesSUPP_CODE.AsString)) ;
    mtLoadDetailMatch.Filtered:= True ;
   if mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger > 0 then
   Begin
    Result:= True ;
//Filtrera fram LO records på current LoadDetailMatch
    mtLO_Records.Filter
     := 'CustShipPlanDetailObjectNo = '+mtLoadDetailMatchCustShipPlanDetailObjectNo.AsString ;
    mtLO_Records.Filtered:= True ;

//    Result:= ValideraProduktAttribut ;
//    if Result = ALL_OK then
//    Result:= ValideraLength ;
   End
    else
     ShowMessage('Ingen koppling mot LO rad, var vänlig och välj en LO rad.') ;

   Finally
    mtLO_Records.Filtered:= False ;
    mtLoadDetailMatch.Filtered:= False ;
   End ;

  end ;
End ;

procedure TfLoadEntry.RemoveAndADD_Matches_II(Sender : TObject);
begin
 With dmLoadEntry do
 Begin
   Try
     if mtLoadPackages.State in [dsBrowse] then
     mtLoadPackages.Edit ;
     mtLoadPackagesOverrideMatch.AsInteger  := 1 ;
     mtLoadPackagesPKG_OK.AsInteger         := 0 ;
     mtLoadPackagesPKGLOG.AsString          := 'Matchar manuellt' ;
     mtLoadPackagesChanged.AsBoolean        := True ;
     mtLoadPackages.Post ;


    mtLoadDetailMatch.Filter
     := 'PackageNo = '+mtLoadPackagesPackageNo.AsString+' AND SupplierCode = '''+
     Trim(mtLoadPackagesSUPP_CODE.AsString)+'''';
//     ' AND CustShipPlanDetailObjectNo = '+mtLO_RecordsCustShipPlanDetailObjectNo.AsString+'' ;
    mtLoadDetailMatch.Filtered:= True ;

    mtLoadDetailMatch.First ;
    While not mtLoadDetailMatch.Eof do
    Begin
      mtLoadDetailMatch.Delete ;
    End ; //while
   Finally
    mtLoadDetailMatch.Filtered:= False ;
   End ;


      mtLoadDetailMatch.Insert ;
      Try
      mtLoadDetailMatchLoadNo.AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
      mtLoadDetailMatchLoadDetailNo.AsInteger:= mtLoadPackagesLoadDetailNo.AsInteger ;
      mtLoadDetailMatchCustShipPlanDetailObjectNo.AsInteger:= mtLO_RecordsCustShipPlanDetailObjectNo.AsInteger ;
      mtLoadDetailMatchPackageNo.AsInteger:= mtLoadPackagesPackageNo.AsInteger ;
      mtLoadDetailMatchSupplierCode.AsString:= Trim(mtLoadPackagesSUPP_CODE.AsString) ;
//      mtLoadDetailMatchSupplierShipPlanObjectNo.AsInteger:= mtLO_RecordsSupplierShipPlanObjectNo.AsInteger ;
      mtLoadDetailMatch.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
   End ; //with
end;

procedure TfLoadEntry.bbPickPkgNosClick(Sender: TObject);
Var   fPickPkgNo: TfPickPkgNo ;
begin
 if dmLoadEntry.cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;

 With dmLoadEntry do
 Begin
  fPickPkgNo:= TfPickPkgNo.Create(Nil);
  Try
   fPickPkgNo.ProductNo             := mtLO_RecordsProductNo.AsInteger ;
   fPickPkgNo.ProductLengthNo       := mtLO_RecordsProductLengthNo.AsInteger ;
   fPickPkgNo.PIPNo                 := integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) ;
   fPickPkgNo.LONo                  := mtLO_RecordsLO_NUMBER.AsInteger ;
   fPickPkgNo.LabelProduct.Caption  := mtLO_RecordsPRODUCTDESCRIPTION.AsString ;
   fPickPkgNo.LabelLength.Caption   := mtLO_RecordsLENGTHDESC.AsString ;
   fPickPkgNo.LabelPIPName.Caption  := bcPhysInventory.Text ;
   fPickPkgNo.LabelLONr.Caption     := mtLO_RecordsLO_NUMBER.AsString ;
   if fPickPkgNo.ShowModal = mrOK then
    InsertSelectedPkgNos(Sender) ;
  Finally
   FreeAndNil(fPickPkgNo) ;
  End ;
 End ; //with
end;

procedure TfLoadEntry.InsertSelectedPkgNos(Sender: TObject) ;
begin
 With dmsSystem, dmLoadEntry do
 Begin
  mtLoadPackages.DisableControls ;
  mtLO_Records.DisableControls ;
  mtSelectedPkgNo.Filter:= 'MARKERAD = 1' ;
  mtSelectedPkgNo.Filtered:= True ;
  Try
   mtSelectedPkgNo.First ;
    While not mtSelectedPkgNo.Eof do
    Begin
      Try
       mtLoadPackages.Insert ;
       mtLoadpackagesPackageNo.AsInteger  := mtSelectedPkgNoPaketnr.AsInteger ;
       mtLoadPackagesSUPP_CODE.AsString   := mtSelectedPkgNoLevKod.AsString ;
       ValidatePkgNoSuppCode(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
       mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        mtLoadPackages.Cancel ;
       End ;
      End ;
     mtSelectedPkgNo.Next ;
    End ; //While
  Finally
   mtSelectedPkgNo.Filtered:= False ;
   mtLoadPackages.EnableControls ;
   mtLO_Records.EnableControls ;
  End ;
 End ; // with
End ;

(*procedure TfLoadEntry.ValidatePkgNoSuppCodeII(Sender: TObject; PkgNo: Integer;
PkgSupplierCode: String3; ProductNo, ProductLengthNo : Integer);
var
//  PkgSupplierNo: Integer ;
  Action: TEditAction;
  Save_Cursor : TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
    Action := IsPkgReservedII(
     PkgNo,
      PkgSupplierCode,
      Res_UserName );

  if Action = eaACCEPT then
  Begin
   AddPkgTo_mtLoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadEntry.mtLoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+'') ;//Trim(bcLogicalInventory.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(bcPhysInventory.Text)
    +'/'+'');//Trim(bcLogicalInventory.Text)) ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' är reserverat av '+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;
  *)
(*function TfLoadEntry.IsPkgReservedII(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var Res_UserName : String) : TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
//    SSP.LogicalTransferInventoryNo:= fLIPNo ;
    if PkgSupplierCode = '' then
    Begin
      Result := eaREJECT;
    End
    else

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
  *)

procedure TfLoadEntry.pmPkgsPopup(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  if mtLoadPackagesOverrideMatch.AsInteger = 0 then
   bbMatcha.Caption:= 'Matcha manuellt'
    else
     bbMatcha.Caption:= 'Matcha automatiskt' ;
 End ;
end;

procedure TfLoadEntry.acAddPkgExecute(Sender: TObject);
begin
 if dmLoadEntry.cds_LoadHeadLoadNo.AsInteger > 0 then
 dmLoadEntry.mtLoadPackages.Append
 else
  ShowMessage('Spara lasten först.') ;
end;

procedure TfLoadEntry.acValidatePkgExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 Try
  if dmLoadEntry.mtLoadPackages.State = dsBrowse then
  Begin
   dmLoadEntry.mtLoadPackages.Edit ;
   Try
   ValidatePkg(Sender, dmLoadEntry.mtLoadPackagesPACKAGENO.AsInteger,
   dmLoadEntry.mtLoadPackagesSUPP_CODE.AsString, dmLoadEntry.mtLoadPackagesProductNo.AsInteger,
     dmLoadEntry.mtLoadPackagesProductLengthNo.AsInteger, dmLoadEntry.mtLoadPackagesNoOfLengths.AsInteger) ;
   dmLoadEntry.mtLoadPackages.Post ;
   Except
    on eDatabaseError do
    Raise ;
   End ;

  End
  else
   ShowMessage('Row in edit mode, please save row before validate') ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;


procedure TfLoadEntry.acInsertPkgToInventoryExecute(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  if dmLoadEntry.mtLoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
  Begin
   dmLoadEntry.mtLoadPackages.Delete ;
  End
  else
  Begin


  if dmLoadEntry.LogicalTransferInventoryNo <> 0 then
  Begin

  if dmLoadEntry.mtLoadPackages.State = dsBrowse then

   dmLoadEntry.mtLoadPackages.Edit ;
   dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
   dmLoadEntry.mtLoadPackagesChanged.AsBoolean      := True ;
   dmLoadEntry.mtLoadPackages.Post ;

   SomethingChanged(Sender) ;

  End
   else
    ShowMessage('Välj ett lager') ;
  End ;

  End ; //with
end;

procedure TfLoadEntry.acInsertAllPkgsToInventoryExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntry do
 Begin
  if dmLoadEntry.LogicalTransferInventoryNo <> 0 then
  Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   dmLoadEntry.mtLoadPackages.DisableControls ;
   Try
  dmLoadEntry.ds_LoadPackages.OnDataChange:= NIL ;
  dmLoadEntry.mtLoadPackages.First ;
  While not dmLoadEntry.mtLoadPackages.Eof do
  Begin
   dmLoadEntry.mtLoadPackages.Edit ;
   dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
   dmLoadEntry.mtLoadPackagesChanged.AsBoolean      := True ;
   dmLoadEntry.mtLoadPackages.Post ;
   dmLoadEntry.mtLoadPackages.Next ;

   SomethingChanged(Sender) ;
  End ;

   Finally
    dmLoadEntry.ds_LoadPackages.OnDataChange:= dmLoadEntry.ds_LoadPackagesDataChange ;
    dmLoadEntry.mtLoadPackages.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
  End
   else
    ShowMessage('Välj ett lager') ;
End ; //with
end;


procedure TfLoadEntry.acUndoPkgOperationExecute(Sender: TObject);
begin
  if dmLoadEntry.mtLoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
  Begin
   dmLoadEntry.mtLoadPackages.Delete ;
  End
 else
 Begin
 Case dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger of
  DELETE_PKG            :
  Begin
   dmLoadEntry.mtLoadPackages.Edit ;
   dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD ;
   dmLoadEntry.mtLoadPackagesChanged.AsBoolean      := False ;
   dmLoadEntry.mtLoadPackages.Post ;
  End ;
  REMOVE_PKG_FROM_LOAD  :
  Begin
   dmLoadEntry.mtLoadPackages.Edit ;
   dmLoadEntry.mtLoadPackagesPkg_Function.AsInteger := ADD_PKG_TO_LOAD ;
   dmLoadEntry.mtLoadPackagesChanged.AsBoolean      := False ;
   dmLoadEntry.mtLoadPackages.Post ;
  End ;
 End ; //case
 End ;
end;

procedure TfLoadEntry.acSetDefaultMatchOnAllPkgsExecute(Sender: TObject);
var
 Save_Cursor:TCursor;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmLoadEntry do
 Begin
 try

  mtLoadDetailMatch.DisableControls ;
  mtLoadPackages.DisableControls ;
  mtLO_Records.DisableControls ;

  mtLoadDetailMatch.Active:= False ;
  mtLoadDetailMatch.Active:= True ;
  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   AddLoadDetailMatchByProductNo(mtLoadPackagesPackageNo.AsInteger,
   mtLoadPackagesSUPP_CODE.AsString, mtLoadPackagesProductNo.AsInteger,
   mtLoadPackagesProductLengthNo.AsInteger,
   mtLoadPackagesNoOfLengths.AsInteger);
   mtLoadPackages.Next ;
  End ;

 finally
  mtLoadDetailMatch.EnableControls ;
  mtLoadPackages.EnableControls ;
  mtLO_Records.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ; //With
end;


procedure TfLoadEntry.acPkgInfoExecute(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmLoadEntry.mtLoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode:= dmLoadEntry.mtLoadPackagesSUPP_CODE.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;//.Free ;
 End ;
end;


procedure TfLoadEntry.acValidatePkgUpdate(Sender: TObject);
begin
 acValidatePkg.Enabled:= dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
 acInsertPkgToInventory.Enabled:= dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
 acInsertAllPkgsToInventory.Enabled:= dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acUndoPkgOperationUpdate(Sender: TObject);
begin
 acUndoPkgOperation.Enabled:= dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
begin
 acSetDefaultMatchOnAllPkgs.Enabled:= dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acPkgInfoUpdate(Sender: TObject);
begin
 acPkgInfo.Enabled:= dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acAddLOExecute(Sender: TObject);
Var  Save_Cursor : TCursor;
     frmSelectLO_Number : TfrmSelectLO_Number;
begin
 With dmLoadEntry do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  frmSelectLO_Number:= TfrmSelectLO_Number.Create(Nil) ;
  mtLoadShippingPlan.DisableControls ;
  Try
  if cds_LO_LookUp.Active = False then
   Begin
    sq_LO_LookUp.Close ;
    sq_LO_LookUp.ParamByName('CustomerNo').AsInteger:= FCustomerNo ;
    sq_LO_LookUp.ParamByName('SalesRegionNo').AsInteger:= FSalesRegionNo ;
    sq_LO_LookUp.Open ;
    cds_LO_LookUp.Active:= True ;
    if mtLoadShippingPlan.RecordCount > 0 then
    Begin
     if mtLoadShippingPlanORDERTYPE.AsString = 'SALES' then
     cds_LO_LookUp.Filter:= //'SupplierNo = '+mtLoadShippingPlanSupplierNo.AsString
     'ORDERTYPE = '''+mtLoadShippingPlanORDERTYPE.AsString+''''
     else
     cds_LO_LookUp.Filter:= //'AVROP_CUSTOMERNO = '+mtLoadShippingPlanAVROP_CUSTOMERNO.AsString
     'ORDERTYPE = '''+mtLoadShippingPlanORDERTYPE.AsString+'''' ;
     cds_LO_LookUp.Filtered:= True ;
    End
    else
     cds_LO_LookUp.Filtered:= False ;
   End ;

  if frmSelectLO_Number.ShowModal = mrOk then
  Begin
   if not mtLoadShippingPlan.FindKey([cds_LO_LookUpShippingPlanNo.AsInteger]) then
   Begin
   mtLoadShippingPlan.Insert ;
   Try

   mtLoadShippingPlanShippingPlanNo.AsInteger:= cds_LO_LookUpShippingPlanNo.AsInteger ;
   mtLoadShippingPlanCUSTOMER.AsString:= cds_LO_LookUpCUSTOMER.AsString ;
   mtLoadShippingPlanSALESREGIONNO.AsInteger:= cds_LO_LookUpSALESREGIONNO.AsInteger ;



   sq_Booking_Data.Close ;
   sq_Booking_Data.ParamByName('ShippingPlanNo').AsInteger:= cds_LO_LookUpShippingPlanNo.AsInteger ;
   sq_Booking_Data.Open ;
   if not sq_Booking_Data.Eof then
   Begin
   mtLoadShippingPlanShipper.AsString:= sq_Booking_DataShipper.AsString ;
   mtLoadShippingPlanREADYDATE.AsString:= sq_Booking_DataREADYDATE.AsString ;
   mtLoadShippingPlanVESSEL.AsString:= sq_Booking_DataVESSEL.AsString ;
   mtLoadShippingPlanETD.AsSQLTimeStamp:= sq_Booking_DataETD.AsSQLTimeStamp ;
   mtLoadShippingPlanETA.AsSQLTimeStamp:= sq_Booking_DataETA.AsSQLTimeStamp ;
   mtLoadShippingPlanSHIPPER_REF.AsString:= sq_Booking_DataSHIPPER_REF.AsString ;
   mtLoadShippingPlanSHIPPERID.AsString:= sq_Booking_DataSHIPPERID.AsString ;
   mtLoadShippingPlanSHIPPERS_SHIPDATE.AsSQLTimeStamp:= sq_Booking_DataSHIPPERS_SHIPDATE.AsSQLTimeStamp ;
   mtLoadShippingPlanSHIPPERS_SHIPTIME.AsSQLTimeStamp:= sq_Booking_DataSHIPPERS_SHIPTIME.AsSQLTimeStamp ;
   End ;
   mtLoadShippingPlanORDERNO.AsString:= cds_LO_LookUpORDERNO.AsString ;


   mtLoadShippingPlanORDERTYPE.AsString:= cds_LO_LookUpORDERTYPE.AsString ;

    FCustomerNo   := cds_LO_LookUpCustomerNo.AsInteger ;
    mtLoadShippingPlanCustomerNo.AsInteger:= cds_LO_LookUpCustomerNo.AsInteger ;


   mtLoadShippingPlanFunction.AsInteger:= 1 ; //New 
   mtLoadShippingPlan.Post ;
   SomethingChanged(Sender) ;
   GetLO_Records_AfterAddingLO_Number(Sender, cds_LO_LookUpShippingPlanNo.AsInteger) ;

   Except
    on eDatabaseError do
    Raise ;
   End ;
   End
   else
   ShowMessage('LO numret finns redan i lasten.') ;
  End ;
  Finally
   mtLoadShippingPlan.EnableControls ;
   FreeAndNil(frmSelectLO_Number) ;
   Screen.Cursor := Save_Cursor;
   sq_Booking_Data.Close ;
   if cds_LO_LookUp.Active = True then
    cds_LO_LookUp.Active:= False ;
  End ;
 End ; //with
end;

procedure TfLoadEntry.acRemoveLOExecute(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  if DoesLOHavePackages (mtLoadShippingPlanShippingPlanNo.AsInteger) = False then
  Begin

  mtLoadShippingPlan.Edit ;
  mtLoadShippingPlanFunction.AsInteger:= 2 ; //Remove
  mtLoadShippingPlan.Post ;
  mtLO_Records.DisableControls ;
    Try
    mtLO_Records.Filter
     := 'LO_NUMBER = '+mtLoadShippingPlanShippingPlanNo.AsString ;
    mtLO_Records.Filtered:= True ;

    mtLO_Records.First ;
    While not mtLO_Records.Eof do
    Begin
      mtLO_Records.Delete ;
    End ; //while
   Finally
    mtLO_Records.Filtered:= False ;
    mtLO_Records.EnableControls ;
   End ;
  SomethingChanged(Sender) ;
  End
   else
    ShowMessage('Kan inte ta bort en LO som har paket kopplade, LONr '+mtLoadShippingPlanShippingPlanNo.AsString) ;
 End ; //with
end;

procedure TfLoadEntry.acUndoRemoveLOExecute(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  if mtLoadShippingPlanFunction.AsInteger = 2 then
  Begin
   mtLoadShippingPlan.Edit ;
   mtLoadShippingPlanFunction.AsInteger:= 0 ;
   mtLoadShippingPlan.Post ;
   GetLO_Records_AfterAddingLO_Number(Sender, mtLoadShippingPlanShippingPlanNo.Asinteger) ;
  End ;
 End ;
end;

procedure TfLoadEntry.acRemoveLOUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acRemoveLO.Enabled:= mtLoadShippingPlan.RecordCount > 0 ;
 End ;
end;

procedure TfLoadEntry.acUndoRemoveLOUpdate(Sender: TObject);
begin
 //Undo Remove LO
 With dmLoadEntry do
 Begin
  acUndoRemoveLO.Enabled:= mtLoadShippingPlanFunction.AsInteger = 2 ;
 End ; //with
end;

procedure TfLoadEntry.acConnectMarkedPkgsToLOExecute(Sender: TObject);
Var
    Save_Cursor : TCursor;
    x : Integer ;
begin
 if dmLoadEntry.mtLoadPackages.RecordCount > 0 then
 Begin
 with grdPackages do
 begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
  DataSource.DataSet.DisableControls;
  for x := 0 to (SelectedCount - 1) do
  begin
//  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
   RemoveAndADD_Matches_II(Sender) ;
  end; //for..

 Finally
  DataSource.DataSet.EnableControls;
  ClearSelection ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ; //with
 End ;
end ;

procedure TfLoadEntry.acAddPkgByPkgCodeExecute(Sender: TObject);
Var Save_Cursor : TCursor;
    noofpkgs : integer ;
    fEntryField : TfEntryField ;
begin
 //Add pkgs by package code
 //ta coden från lo rad
 //mata in antal paket
 //hämta paket från lagret, äldsta paketnr först
 With dmLoadEntry do
 Begin
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
  noofpkgs:= 0 ;

  fEntryField:= TfEntryField.Create(Nil);
  mtPkgNos.Active:= True ;
  mtLoadPackages.DisableControls ;
  mtLO_Records.DisableControls ;
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   if strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) > 0 then
   Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }

    Try
    noofpkgs:= GetPkgsNos(mtLO_RecordsPKGCODE.AsString, strtointdef(Trim(fEntryField.eNoofpkgs.Text),0),
    integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ) ;
    if noofpkgs <> 0 then
    Begin
     if noofpkgs <> strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) then
     Begin
      if MessageDlg('Du begärde '+Trim(fEntryField.eNoofpkgs.Text)+' paket med det finns endast '+inttostr(noofpkgs)
      +' vill du lägga de till lasten?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      InsertPkgNo(Sender) ;
     End
     else
     InsertPkgNo(Sender) ;
    End
    else
    showmessage('Det finns inga paket av pktkod '+trim(mtLO_RecordsPKGCODE.AsString)+' i lager '+Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text)) ;
    Finally
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End ;
   End ;
  End ;

  Finally
   FreeAndNil(fEntryField) ;//.Free ;
   mtPkgNos.Active:= False ;
   mtLoadPackages.EnableControls ;
   mtLO_Records.EnableControls ;
  End ;

 End
 else
   ShowMessage('Spara lasten först.') ;
 End ; //with
end;

procedure TfLoadEntry.acRemovePkgsByPkgCodeExecute(Sender: TObject);
Var x : Integer ;
   Save_Cursor : TCursor;
   fEntryField : TfEntryField ;
begin
 With dmLoadEntry do
 Begin
  x := 0 ;
  fEntryField:= TfEntryField.Create(Nil);
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

   Try
   mtLoadPackages.Filter:= 'packagecodeno = '+QuotedStr(mtLO_RecordsPKGCODE.AsString) ;
   mtLoadPackages.Filtered:= True ;
   mtLoadPackages.Last ;
   While (not mtLoadPackages.Bof) and (strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) > x) do
   begin
    if dmLoadEntry.mtLoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
    acInsertPkgToInventoryExecute(Sender)
    else
    Begin
     acInsertPkgToInventoryExecute(Sender) ;
     mtLoadPackages.Prior ;
    End ; 
    x:= succ(x) ;
   end ;

   Finally
    mtLoadPackages.Filtered:= False ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
  End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;

procedure TfLoadEntry.acPickPkgNosExecute(Sender: TObject);
Var   fPickPkgNo: TfPickPkgNo ;
begin
 if dmLoadEntry.cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;

 With dmLoadEntry do
 Begin
  fPickPkgNo:= TfPickPkgNo.Create(Nil);
  Try
   fPickPkgNo.ProductNo             := mtLO_RecordsProductNo.AsInteger ;
   fPickPkgNo.ProductLengthNo       := mtLO_RecordsProductLengthNo.AsInteger ;
   fPickPkgNo.PIPNo                 := integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) ;
   fPickPkgNo.LabelProduct.Caption  := mtLO_RecordsPRODUCTDESCRIPTION.AsString ;
   fPickPkgNo.LabelLength.Caption   := mtLO_RecordsLENGTHDESC.AsString ;
   fPickPkgNo.LabelPIPName.Caption  := bcPhysInventory.Text ;
   fPickPkgNo.LabelOwner.Caption    := '' ;
   fPickPkgNo.LabelOwnerTitle.Visible:= False ;
//   fPickPkgNo.LabelOwner.Caption    := mtLoadShippingPlanSUPPLIER.AsString ;
   if fPickPkgNo.ShowModal = mrOK then
    InsertSelectedPkgNos(Sender) ;
  Finally
   FreeAndNil(fPickPkgNo) ;
  End ;
 End ; //with
end;


procedure TfLoadEntry.acValidateAllPkgsExecute(Sender: TObject);
Var Save_Cursor:TCursor;

begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
   With dmLoadEntry do
   Begin
   mtLoadPackages.DisableControls ;
   mtLO_Records.DisableControls ;
   Try
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
    Begin
     if mtLoadPackagesPKG_OK.AsInteger <> ALL_OK then
     Begin
      mtLoadPackages.Edit ;
      Try
      ValidatePkg(Sender, dmLoadEntry.mtLoadPackagesPACKAGENO.AsInteger,
      dmLoadEntry.mtLoadPackagesSUPP_CODE.AsString, dmLoadEntry.mtLoadPackagesProductNo.AsInteger,
      dmLoadEntry.mtLoadPackagesProductLengthNo.AsInteger, dmLoadEntry.mtLoadPackagesNoOfLengths.AsInteger) ;
      mtLoadPackages.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
     End ;
     mtLoadPackages.Next ;
    End ; //while

  Finally
   mtLoadPackages.EnableControls ;
   mtLO_Records.EnableControls ;
   Screen.Cursor := Save_Cursor;
  End ;
  End ; //With
end;


procedure TfLoadEntry.acValidateAllPkgsUpdate(Sender: TObject);
begin
 acValidateAllPkgs.Enabled:=  dmLoadEntry.mtLoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntry.acPkgNoSeriesExecute(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
   if mtLO_Records.RecordCount > 0 then
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
   End
    else
     ShowMessage('Lägg till en LO först.') ;
  End
  else
   ShowMessage('Spara lasten först.') ;
 End ; //
end;

procedure TfLoadEntry.acPkgNoSeriesUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acRemoveLO.Enabled:= mtLoadShippingPlan.RecordCount > 0 ;
 End ;
end;

procedure TfLoadEntry.acDeleteLoadExecute(Sender: TObject);
begin
 if FIsModified  = False then
 Begin
 With dmLoadEntry do
 Begin
  sq_IsLoadDetails.ParamByName('LoadNo').AsInteger:= dmLoadEntry.cds_LoadHeadLoadNo.AsInteger ;
  sq_IsLoadDetails.Open ;
  if Not sq_IsLoadDetails.Eof then
  Begin
   ShowMessage('Kan inte ta bort last föränn alla paket är borttagna.') ;
  End
  else
  Begin
   if MessageDlg('Är du säker?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
     DeleteOneLoad(dmLoadEntry.cds_LoadHeadLoadNo.AsInteger) ;
     Close ;
    End ;
  End ;
 End ; //with
 End
 else
  ShowMessage('Lasten är i edit läge, spara och försök igen.') ;
end;

procedure TfLoadEntry.acAddPkgUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acAddPkg.Enabled:= mtLO_Records.RecordCount > 0 ;
 End ;
end;

procedure TfLoadEntry.acConnectMarkedPkgsToLOUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acConnectMarkedPkgsToLO.Enabled:= mtLO_Records.RecordCount > 0 ;
 End ;
end;

procedure TfLoadEntry.acAddPkgByPkgCodeUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acAddPkgByPkgCode.Enabled:= (mtLO_Records.RecordCount > 0) 
    and (cds_LoadHead.ReadOnly = False) ;
 End ;
end;

procedure TfLoadEntry.acRemovePkgsByPkgCodeUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acRemovePkgsByPkgCode.Enabled:=  (dmLoadEntry.mtLoadPackages.RecordCount > 0)
    and (cds_LoadHead.ReadOnly = False) ;
 End ;
end;

procedure TfLoadEntry.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  acPickPkgNos.Enabled:= (mtLO_Records.RecordCount > 0)
  and (cds_LoadHead.ReadOnly = False) ;
 End ;
end;

procedure TfLoadEntry.detLoadedPropertiesChange(Sender: TObject);
begin
 SomethingChanged(Sender);
end;

procedure TfLoadEntry.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLoadEntry.bcPhysInventoryPropertiesChange(Sender: TObject);
begin
 if (bcPhysInventory.Properties.Items.Count > 0) and (bcPhysInventory.ItemIndex <> -1) then
 Begin
  dmsContact.LoadLogicalInventory(
  bcLogicalInventory.Properties.Items,
  integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) );
  if bcLogicalInventory.Properties.Items.Count > 0 then
  Begin
   bcLogicalInventory.ItemIndex:= 0 ;
  End ;
 End ;
end;

procedure TfLoadEntry.bcLogicalInventoryPropertiesCloseUp(Sender: TObject);
begin
 With dmLoadEntry do
 Begin
  LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
 End ;
end;

procedure TfLoadEntry.acChangeLOLinesLayoutExecute(Sender: TObject);
begin
 grdLOLines.ColumnsCustomizing ;
end;

procedure TfLoadEntry.acChangePkgLayoutExecute(Sender: TObject);
begin
 grdPackages.ColumnsCustomizing ;
end;

procedure TfLoadEntry.acSaveLoadExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
Begin
 acValidateAllPkgsExecute(Sender) ;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmLoadEntry do
 Begin
  try
  LogicalTransferInventoryNo:= integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;
  SaveLOData(cds_LoadHeadLoadNo.AsInteger, Sender) ;
  finally
   FIsModified := False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
   SetLBDeleteLoad ;
  end;
 End ; //with
end;

procedure TfLoadEntry.SetLoadRowToChanged ;
Begin
 With dmLoadEntry do
 Begin
  if mtLoadPackages.State = dsBrowse then
   mtLoadPackages.Edit ;
  mtLoadPackagesChanged.AsBoolean := True ;
  mtLoadPackagesPKG_OK.AsInteger  := BAD_PKG ;
  mtLoadPackages.Post ;
 End ;
End ;

procedure TfLoadEntry.grdLOLinesCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  iStatusColumn : Integer ;
  iMatch        : Boolean ;
begin
  iStatusColumn := grdLOLines.ColumnByName('grdLOLinesMatch').Index;
  Try
   if ANode.Values[iStatusColumn] <> Null then
   Begin
   iMatch := ANode.Values[iStatusColumn];
   if iMatch = True then
   AColor := clSilver ;
   End ;
  Except
  End ;
end;

procedure TfLoadEntry.acGetTallyOfLoadPlanExecute(Sender: TObject);
Var Save_Cursor         : TCursor;
    noofpkgs            : integer ;
    fEntryField         : TfEntryField ;
    fSelectLoadPlanDest : TfSelectLoadPlanDest;
begin
 //Add pkgs by package code
 //ta coden från lo rad
 //mata in antal paket
 //hämta paket från lagret, äldsta paketnr först
 With dmLoadEntry, dmsSystem do
 Begin
  noofpkgs:= 0 ;
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }

  fSelectLoadPlanDest:= TfSelectLoadPlanDest.Create(nil);
  mtLoadPackages.DisableControls ;
  mtLO_Records.DisableControls ;

  Try
  cds_LoadPlanDest.Filter   := 'SalesRegionNo = '+cds_LoadHeadCustomerNo.AsString ;
  cds_LoadPlanDest.Filtered := True ;
  cds_LoadPlanDest.Active   := True ;
  if fSelectLoadPlanDest.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   sq_GetLoadPlanPkgs.ParamByName('LoadingNo').AsInteger          := cds_LoadPlanDestLoadingNo.AsInteger ;
   sq_GetLoadPlanPkgs.ParamByName('LoadPlanDestRowNo').AsInteger  := cds_LoadPlanDestLoadPlanDestRowNo.AsInteger ;
   sq_GetLoadPlanPkgs.Open ;
   sq_GetLoadPlanPkgs.First ;
   While not sq_GetLoadPlanPkgs.Eof do
   Begin
    mtPkgNos.Active:= True ;
    noofpkgs:= GetPkgsNos(sq_GetLoadPlanPkgsPackageCodeNo.AsString, sq_GetLoadPlanPkgsNoOfPkgsLoaded.AsInteger,
    sq_GetLoadPlanPkgsLIPNo.AsInteger) ;
    if noofpkgs <> 0 then
    Begin
     if noofpkgs <> sq_GetLoadPlanPkgsNoOfPkgsLoaded.AsInteger then
     Begin
      if MessageDlg('Du frågar efter '+Trim(sq_GetLoadPlanPkgsNoOfPkgsLoaded.AsString)+' paket med det finns endast '+inttostr(noofpkgs)
      +' vill du lägga de till lasten?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      InsertPkgNo(Sender) ;
     End
     else
     InsertPkgNo(Sender) ;
    End
    else
    showmessage('Det finns inga paket av pktkod '+trim(sq_GetLoadPlanPkgsPackageCodeNo.AsString)+' i lager '
    +sq_GetLoadPlanPkgsLAGER.AsString) ;
    sq_GetLoadPlanPkgs.Next ;
    mtPkgNos.Active:= False ;
   End ;//While not sq_GetLoadPlanPkgs
   sq_GetLoadPlanPkgs.Close ;


  End ;

  Finally
   cds_LoadPlanDest.Active:= False ;
   FreeAndNil(fSelectLoadPlanDest) ;
   mtLoadPackages.EnableControls ;
   mtLO_Records.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End
 else
   ShowMessage('Spara lasten först.') ;
 End ; //with
end;

End.
