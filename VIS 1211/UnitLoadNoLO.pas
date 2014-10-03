unit UnitLoadNoLo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxCntner,

  VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ActnList, cxGraphics, cxLabel,
  cxImageComboBox, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  dxBarExtItems ;

type
  TfLoadNoLo = class(TForm)
    dxBarManager1: TdxBarManager;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    lbSaveLoad: TdxBarLargeButton;
    lbClose: TdxBarLargeButton;
    lbReValidateAllPkgs: TdxBarLargeButton;
    lbPackageEntry: TdxBarLargeButton;
    pmPkgs: TdxBarPopupMenu;
    lbValidatePkg: TdxBarLargeButton;
    lbAddPackage: TdxBarLargeButton;
    lbRemovePackage: TdxBarLargeButton;
    lbDeleteLoad: TdxBarLargeButton;
    pmLONumber: TdxBarPopupMenu;
    lbAddLONumber: TdxBarLargeButton;
    lbRemoveLONumber: TdxBarLargeButton;
    lbSetDefaultMatchAllPkg: TdxBarLargeButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    tsLoadNote: TcxTabSheet;
    ImageList1: TImageList;
    images1616: TImageList;
    siPrint: TdxBarSubItem;
    lbFS: TdxBarLargeButton;
    lbHyvelOrder: TdxBarLargeButton;
    lbLastOrderAllaVerk: TdxBarLargeButton;
    lbLastOrderErtVerk: TdxBarLargeButton;
    lbSpecAllaLasterLO: TdxBarLargeButton;
    lbDeletePkg: TdxBarLargeButton;
    lbRemoveAllPkgs: TdxBarLargeButton;
    lbDeleteALLPkgs: TdxBarLargeButton;
    lbUndo: TdxBarLargeButton;
    lbPkgInfo: TdxBarLargeButton;
    lbPkgNoSerie: TdxBarLargeButton;
    bbCustomPkgGrid: TdxBarButton;
    ppmenuLO_Lines: TdxBarPopupMenu;
    bbCustomLOLinesGrid: TdxBarButton;
    bbCustomgrdLONumber: TdxBarButton;
    bbUndoRemove: TdxBarButton;
    bbMatcha: TdxBarButton;
    bbTally_Ver2: TdxBarButton;
    bbConnectPkgsToLO: TdxBarButton;
    bbPickPkgNos: TdxBarButton;
    bcPhysInventory2: TdxBarCombo;
    bcLogicalInventory2: TdxBarCombo;
    lbStartBarCodeReading: TdxBarLargeButton;
    bbAddPkgPerPkgCode: TdxBarButton;
    bbRemovePkgsPerPkgCode: TdxBarButton;
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
    detLoaded: TcxDBDateEdit;
    acPickPkgNos: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    PanelLORows: TPanel;
    Panel1: TPanel;
    PanelPackages: TPanel;
    Panel2: TPanel;
    acSaveLoad: TAction;
    Panel6: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    bcLogicalInventory: TcxComboBox;
    bcPhysInventory: TcxComboBox;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    imgcbStatus: TcxDBImageComboBox;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acPrintTallyUSNote: TAction;
    grdPkgsLevel1: TcxGridLevel;
    grdPkgs: TcxGrid;
    grdPkgsDBBandedTableView1: TcxGridDBBandedTableView;
    grdPkgsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PackageOK: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DateCreated: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1LIPNo: TcxGridDBBandedColumn;
    grdLORowsLevel1: TcxGridLevel;
    grdLORows: TcxGrid;
    grdLORowsDBBandedTableView1: TcxGridDBBandedTableView;
    grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn;
    grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn;
    grdAddressDBTableView1: TcxGridDBTableView;
    grdAddressLevel1: TcxGridLevel;
    grdAddress: TcxGrid;
    grdAddressDBTableView1Address: TcxGridDBColumn;
    grdAddressDBTableView1Destination: TcxGridDBColumn;
    grdAddressDBTableView1Reference: TcxGridDBColumn;
    grdLODBTableView1: TcxGridDBTableView;
    grdLOLevel1: TcxGridLevel;
    grdLO: TcxGrid;
    grdLODBTableView1LoadNo: TcxGridDBColumn;
    grdLODBTableView1SupplierNo: TcxGridDBColumn;
    grdLODBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdLODBTableView1CUSTOMER: TcxGridDBColumn;
    grdLODBTableView1SHIPPER: TcxGridDBColumn;
    grdLODBTableView1READYDATE: TcxGridDBColumn;
    grdLODBTableView1VESSEL: TcxGridDBColumn;
    grdLODBTableView1ETD: TcxGridDBColumn;
    grdLODBTableView1ETA: TcxGridDBColumn;
    grdLODBTableView1SHIPPER_REF: TcxGridDBColumn;
    grdLODBTableView1SHIPPERID: TcxGridDBColumn;
    grdLODBTableView1SHIPPERS_SHIPDATE: TcxGridDBColumn;
    grdLODBTableView1SHIPPERS_SHIPTIME: TcxGridDBColumn;
    grdLODBTableView1ORDERNO: TcxGridDBColumn;
    grdLODBTableView1ORDERTYPE: TcxGridDBColumn;
    grdLODBTableView1CreatedUser: TcxGridDBColumn;
    grdLODBTableView1ModifiedUser: TcxGridDBColumn;
    grdLODBTableView1DateCreated: TcxGridDBColumn;
    grdLODBTableView1CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1Avrop_CustomerNo: TcxGridDBColumn;
    grdLODBTableView1LoadingLocationNo: TcxGridDBColumn;
    grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn;
    grdLODBTableView1Shipping: TcxGridDBColumn;
    grdLODBTableView1SUPPLIER: TcxGridDBColumn;
    grdLODBTableView1LOC_CUST: TcxGridDBColumn;
    grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn;
    grdLODBTableView1SHIP_TO: TcxGridDBColumn;
    teLoadID: TcxDBTextEdit;
    teFS: TcxDBTextEdit;
    lcLocalShipper: TcxDBLookupComboBox;
    lcFrom: TcxDBLookupComboBox;
    lcTo: TcxDBLookupComboBox;
    eLoadNo: TcxDBTextEdit;
    meInternalNote: TcxDBMemo;
    grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn;
    acKopplaPaketMotLOManuellt: TAction;
    acDeleteLoad: TAction;
    acPrintFS: TAction;
    acPrintHyvelOrder: TAction;
    acLOAllaVerk: TAction;
    acPrintLOErtVerk: TAction;
    acPrintSpecAllaLasterLO: TAction;
    acPkgEntry: TAction;
    acStreckKodsinlasning: TAction;
    acPktNrSerie: TAction;
    acTaBortPaketPerPaketKod: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    acChangePKGLayout: TAction;
    acChangeLORowLayout: TAction;
    acChangeLOLayout: TAction;
    cxStyleSilver: TcxStyle;
    grdPkgsDBBandedTableView1Defsspno: TcxGridDBBandedColumn;
    acShowNewRow: TAction;
    dxBarButton1: TdxBarButton;
    grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn;
    acImportPackages: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    acCreateInternLO: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure lbCloseClick(Sender: TObject);

    procedure lbRemoveLONumberClick(Sender: TObject);
    procedure lbRemovePackageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pmPkgsPopup(Sender: TObject);
    procedure bbTally_Ver2Click(Sender: TObject);

    procedure acValidatePkgExecute(Sender: TObject);
    procedure acValidateAllPkgsExecute(Sender: TObject);
    procedure acInsertPkgToInventoryExecute(Sender: TObject);
    procedure acInsertAllPkgsToInventoryExecute(Sender: TObject);
    procedure acRemovePkgFromSystemExecute(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemExecute(Sender: TObject);
    procedure acUndoPkgOperationExecute(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsExecute(Sender: TObject);
    procedure acPkgInfoExecute(Sender: TObject);
    procedure acAddPkgExecute(Sender: TObject);
    procedure acValidatePkgUpdate(Sender: TObject);
    procedure acValidateAllPkgsUpdate(Sender: TObject);
    procedure acInsertPkgToInventoryUpdate(Sender: TObject);
    procedure acInsertAllPkgsToInventoryUpdate(Sender: TObject);
    procedure acRemovePkgFromSystemUpdate(Sender: TObject);
    procedure acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
    procedure acUndoPkgOperationUpdate(Sender: TObject);
    procedure acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
    procedure acPkgInfoUpdate(Sender: TObject);
    procedure acAddPkgByPkgCodeExecute(Sender: TObject);
    procedure acRemoveLOExecute(Sender: TObject);
    procedure acUndoRemoveLOExecute(Sender: TObject);
    procedure acAddLOExecute(Sender: TObject);
    procedure acRemoveLOUpdate(Sender: TObject);
    procedure acUndoRemoveLOUpdate(Sender: TObject);
    procedure acAddPkgUpdate(Sender: TObject);
    procedure acAddPkgByPkgCodeUpdate(Sender: TObject);
    procedure acPickPkgNosExecute(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
    procedure bcPhysInventoryPropertiesChange(Sender: TObject);
    procedure acSaveLoadExecute(Sender: TObject);

    procedure acPrintTallyUSNoteExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure grdLORowsDBBandedTableView1MATCHPropertiesChange(
      Sender: TObject);
    procedure acKopplaPaketMotLOManuelltExecute(Sender: TObject);
    procedure acSaveLoadUpdate(Sender: TObject);
    procedure acDeleteLoadExecute(Sender: TObject);
    procedure acDeleteLoadUpdate(Sender: TObject);
    procedure acPrintFSExecute(Sender: TObject);
    procedure acPrintHyvelOrderExecute(Sender: TObject);
    procedure acLOAllaVerkExecute(Sender: TObject);
    procedure acPrintLOErtVerkExecute(Sender: TObject);
    procedure acPrintSpecAllaLasterLOExecute(Sender: TObject);
    procedure acPrintFSUpdate(Sender: TObject);
    procedure acPrintSpecAllaLasterLOUpdate(Sender: TObject);
    procedure acPrintLOErtVerkUpdate(Sender: TObject);
    procedure acLOAllaVerkUpdate(Sender: TObject);
    procedure acPrintHyvelOrderUpdate(Sender: TObject);
    procedure acPkgEntryExecute(Sender: TObject);
    procedure acPkgEntryUpdate(Sender: TObject);
    procedure acStreckKodsinlasningExecute(Sender: TObject);
    procedure acPktNrSerieExecute(Sender: TObject);
    procedure acPktNrSerieUpdate(Sender: TObject);
    procedure acAddLOUpdate(Sender: TObject);
    procedure acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
    procedure acTaBortPaketPerPaketKodExecute(Sender: TObject);
    procedure acTaBortPaketPerPaketKodUpdate(Sender: TObject);
    procedure acStreckKodsinlasningUpdate(Sender: TObject);
    procedure grdLORowsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acChangePKGLayoutExecute(Sender: TObject);
    procedure acChangeLORowLayoutExecute(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acShowNewRowExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acImportPackagesExecute(Sender: TObject);
    procedure acImportPackagesUpdate(Sender: TObject);
    procedure acCreateInternLOExecute(Sender: TObject);

  private
    { Private declarations }
     LoadEnabled, AddingPkgsFromPkgEntry : Boolean ;
     procedure OpenInternLO(const LO : Integer) ;
     procedure InsertImportedPkgs(Sender: TObject) ;
     procedure SetLoadEnabled ;
     Procedure Get_LO_LookUp_SQL (const AVROP_CUSTOMERNO, Shipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer) ;
     function  DataSaved : Boolean ;
     procedure GetMarkedPkgs ;
     procedure SetLoadRowToChanged ;
     procedure InsertPkgNo(Sender: TObject) ;
     procedure CloseDataSets;

     function IdentifyPackageSupplier(
          const PkgNo,
          FSupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String;
          Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;


     function  ValidatePkg(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;
                             const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
     Procedure GetLO_Records_AfterAddingLO_Number(LO_Number : Integer) ;
     function  AddLoadDetailMatchByProductNo(Var CustcdsNo : Integer;const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
     procedure InsertPkgSerie(Sender: TObject) ;
     function  ValidatePkgInSerie(Sender: TObject; PkgNo: Integer) : TEditAction ;
     procedure AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer) ;

     function  ValidatePackage_ver2(
     Var CustcdsNo : Integer;
     PkgSupplier : string3;
     PkgNo       : Integer;
     var SuppShipPlanObjectNo      : Integer;
     Var PkgLog        : String;
     var LO_Number, OverrideRL    : Integer;
     const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer;

     //Används när paket har plockats
     function AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3) : TEditAction ;
     //Används när paket har plockats
     procedure ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
     //Används när paket har plockats
     function AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;

     function AddPkgTo_cds_LoadPackages(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3) : TEditAction ;

//     procedure ConnectPkgsToLO(Sender: TObject) ;

     procedure InsertSelectedPkgNos(Sender: TObject) ;
     function IsPkgReserved(
     const PkgNo : Integer;
     var PkgSupplierCode: String3;
     Var Res_UserName : String) : TEditAction;

     procedure ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);

     procedure LoadInventoryList(Sender: TObject);
     procedure InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
     procedure ShowPackages (Sender: TObject;const DeliveryMessageNumber : String);

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
    FOrderClientNo, FShipping, FShipToInvPointNo, FLoadingLocationNo : Integer ;

    constructor CreateWithNewLoad
      (AOwner: TComponent;
      const LocalCustomerNo,
      LocalSupplierNo,
      LO_No,
      ShipToInvPointNo,
      LoadingLocationNo,
      LoadNo,
      Shipping,
      OrderClientNo : Integer) ; //OrderClient är extern kund om shipping = 0 else orderclient = extern leverantör


    constructor CreateWithExistingLoad
    (AOwner: TComponent;
    const CustomerNo,
    LoadNo,
    Shipping,
    LLNo,
    OrderClientNo,
    SupplierNo,
    SPCustomerNo : Integer) ;

    destructor Destroy; override;
    function AfterAddedPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
    procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
    procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
  end;

 var  fLoadNoLo: TfLoadNoLo;

implementation

uses dmcLoadEntrySSP, VidaConst, dlgPickPkg,
  dmsVidaContact, UnitPackageEntry, dmsVidaProduct, UnitSelectLO_NumberSSP,
  VidaUser, UnitCRViewReport, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcVidaSystem , uPickPkgNo,
  uScanLoadPkgNo, uEntryField, dmsDataConn, dmsVidaPkg,
  MainU, uImportedPackages , dmc_ImportWoodx, dmcVidaLO, uLOform;

{$R *.dfm}

{ TfrmLoadEntry }

procedure TfLoadNoLo.SetLoadEnabled ;
Begin
 With dmLoadEntrySSP do
 Begin
   dmsSystem.sp_OneLoad.Close ;
   dmsSystem.sp_OneLoad.ParamByName('LoadNo').AsInteger := cds_LoadHeadLoadNo.AsInteger ;//LoadNo;
   dmsSystem.sp_OneLoad.Open ;
   LoadEnabled:= True ;
  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0) then
  Begin
   if ThisUser.UserID in [8] then
   Begin
    LoadEnabled:= True ;
    Caption := 'Lasten kan inte ändras, den är ankomstregistrerad' ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
//    grdPkgsDBBandedTableView1.OptionsView.NewItemRow:= True ;
   End
   else
   Begin
    MessageBeep(MB_ICONEXCLAMATION);
    Caption                                               := 'Lasten kan inte ändras, den är ankomstregistrerad' ;
    LoadEnabled                                           := False ;
    cds_LoadHead.ReadOnly                                 := True ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := True ;
    cds_LSP.ReadOnly                                      := True ;
    cds_LoadPackages.ReadOnly                             := True ;
   End ;
  End ;

   if ThisUser.UserID in [8] then
   Begin
    LoadEnabled:= True ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
   End ;

  dmsSystem.sp_OneLoad.Close ;
 End ;//with 
End ;

function TfLoadNoLo.DataSaved : Boolean ;
Begin
 With dmLoadEntrySSP do
 Begin
  Result:= True ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadHead.ChangeCount > 0 then
   Result:= False ;

  if cds_LSP.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LSP.ChangeCount > 0 then
   Result:= False ;

  if cds_LoadPackages.State in [dsEdit, dsInsert] then
   Result:= False ;
  if cds_LoadPackages.ChangeCount > 0 then
   Result:= False ;
 End ;
End ;

constructor TfLoadNoLo.CreateWithExistingLoad(
  AOwner   : TComponent;
  const CustomerNo ,
  LoadNo,
  Shipping,
  LLNo,
  OrderClientNo,
  SupplierNo,
  SPCustomerNo : Integer );
var
  Save_Cursor : TCursor;
  x           : Integer ;

  Procedure OpenLoadHead ;
  Begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadHead.Active:= False ;
    sq_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    sq_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
   End ;
  End ;

 Procedure GetLO_Records ;
 Begin
   With dmLoadEntrySSP do
   Begin
    cdsLORows.DisableControls ;
    Try
     cdsLORows.Active:= False ;
     sqLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
     cdsLORows.Active:= True ;

{    mtLoadShippingPlan.First ;
    While not mtLoadShippingPlan.Eof do
    Begin
     sq_GetLO_Records.Close ;
     sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
     sq_GetLO_Records.ParamByName('SupplierNo').AsInteger:= FSupplierNo ;
     sq_GetLO_Records.ParamByName('CustomerNo').AsInteger:= FCustomerNo ;
     sq_GetLO_Records.ParamByName('LoadingLocationNo').AsInteger:= mtLoadShippingPlanLoadingLocationNo.AsInteger ;
     sq_GetLO_Records.ParamByName('ShipToInvPointNo').AsInteger:= mtLoadShippingPlanShipToInvPointNo.AsInteger ;

     sq_GetLO_Records.Open ;
     While not sq_GetLO_Records.Eof do
     Begin
      mtLO_Records.Insert ;
      Try
      For x := 0 to 58 do
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
    sq_GetLO_Records.Close ; }

    Finally
     cdsLORows.EnableControls ;
    End ;
   End ;//with
 End ;

 Procedure Get_LoadPackages ;
 Begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadPackages.DisableControls ;
    cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex2' ;//LoadDetailNo
    Try
     cds_LoadPackages.Active:= False ;
     sq_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
     cds_LoadPackages.Active:= True ;
     cds_LoadPackages.Last ;
     GlobalLoadDetailNo := cds_LoadPackagesLoadDetailNo.AsInteger + 1 ;
    Finally
     cds_LoadPackages.IndexName:= 'cds_LoadPackagesIndex1' ;//PkgNo och SuppCode
     cds_LoadPackages.EnableControls ;
    End ;
   End ;//with
 End ;

Procedure Generate_LSP_Sales_SQL ;
Begin
   With dmLoadEntrySSP do
   Begin
    sq_LSP.SQL.Clear ;
    sq_LSP.SQL.Add(' SELECT DISTINCT') ;
    sq_LSP.SQL.Add('0 AS Shipping,') ;
    sq_LSP.SQL.Add('LS.LoadNo,') ;
    sq_LSP.SQL.Add('SSP.SupplierNo,') ;
    sq_LSP.SQL.Add('LS.ShippingPlanNo,') ;
    sq_LSP.SQL.Add('C.ClientName AS CUSTOMER,') ;

    sq_LSP.SQL.Add('SC.ClientName					AS SHIPPER,') ;
    sq_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,'+QuotedStr(' ')+')	AS READYDATE,') ;
    sq_LSP.SQL.Add('isNull(Cr.CarrierName,'+QuotedStr(' ')+ ')			AS VESSEL,') ;
    sq_LSP.SQL.Add('Vg.ETD						AS ETD,') ;
    sq_LSP.SQL.Add('Vg.ETA						AS ETA,') ;

    sq_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,') ;
    sq_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,') ;
    sq_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,') ;
    sq_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,') ;
    sq_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,') ;
    sq_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
    sq_LSP.SQL.Add('ELSE '+QuotedStr('PURCHASE')) ;
    sq_LSP.SQL.Add('END AS ORDERTYPE,') ;
    sq_LSP.SQL.Add('LS.CreatedUser,') ;
    sq_LSP.SQL.Add('LS.ModifiedUser,') ;
    sq_LSP.SQL.Add('LS.DateCreated,') ;
    sq_LSP.SQL.Add('SSP.CustomerNo,') ;
    sq_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,') ;
    sq_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,') ;
    sq_LSP.SQL.Add('SSP.ObjectType,') ;
    sq_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,') ;
    sq_LSP.SQL.Add('SSP.LoadingLocationNo,') ;
    sq_LSP.SQL.Add('SSP.ShipToInvPointNo,') ;
    sq_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,') ;
    sq_LSP.SQL.Add('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;



    sq_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    sq_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;

    sq_LSP.SQL.Add('   Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    sq_LSP.SQL.Add('        						                        AND 	SSP.SupplierNo = L.SupplierNo') ;
    sq_LSP.SQL.Add('                                            AND 	SSP.CustomerNo = L.CustomerNo') ;
    sq_LSP.SQL.Add('                                            AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    sq_LSP.SQL.Add('                                            AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;


    sq_LSP.SQL.Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
    sq_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

    sq_LSP.SQL.Add('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo') ;
    sq_LSP.SQL.Add('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo') ;

    sq_LSP.SQL.Add('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
    sq_LSP.SQL.Add('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo') ;

    sq_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH') ;
    sq_LSP.SQL.Add('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
    sq_LSP.SQL.Add('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
    sq_LSP.SQL.Add('  AND OH.OrderType = 0') ;
    sq_LSP.SQL.Add('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;


    sq_LSP.SQL.Add('  LEFT OUTER JOIN dbo.Booking		Bk') ;

//    sq_LSP.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo') ;

    sq_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    sq_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    sq_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    sq_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    sq_LSP.SQL.Add('WHERE') ;



      sq_LSP.SQL.Add('LS.LoadNo = '+IntToStr(LoadNo)) ;
      sq_LSP.SQL.Add('AND L.SupplierNo = '+IntToStr(FSupplierNo)) ;
      sq_LSP.SQL.Add('AND L.CustomerNo = '+IntToStr(FCustomerNo)) ;



//    if ThisUser.UserID = 8 then sq_LSP.SQL.SaveToFile('Generate_LSP_Sales_SQL.txt') ;


   End ;
End ;

Procedure Generate_LSP_Purchase_SQL ;
Begin
   With dmLoadEntrySSP do
   Begin
    sq_LSP.SQL.Clear ;
    sq_LSP.SQL.Add(' SELECT DISTINCT') ;
    sq_LSP.SQL.Add('1 AS Shipping,') ;
    sq_LSP.SQL.Add('LS.LoadNo,') ;
    sq_LSP.SQL.Add('SSP.SupplierNo,') ;
    sq_LSP.SQL.Add('LS.ShippingPlanNo,') ;
    sq_LSP.SQL.Add('C.ClientName AS CUSTOMER,') ;

    sq_LSP.SQL.Add('SC.ClientName					AS SHIPPER,') ;
    sq_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,'+QuotedStr(' ')+')	AS READYDATE,') ;
    sq_LSP.SQL.Add('isNull(Cr.CarrierName,'+QuotedStr(' ')+ ')			AS VESSEL,') ;
    sq_LSP.SQL.Add('Vg.ETD						AS ETD,') ;
    sq_LSP.SQL.Add('Vg.ETA						AS ETA,') ;

    sq_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,') ;
    sq_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,') ;
    sq_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,') ;
    sq_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,') ;
    sq_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,') ;
    sq_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
    sq_LSP.SQL.Add('ELSE '+QuotedStr('PURCHASE')) ;
    sq_LSP.SQL.Add('END AS ORDERTYPE,') ;
    sq_LSP.SQL.Add('LS.CreatedUser,') ;
    sq_LSP.SQL.Add('LS.ModifiedUser,') ;
    sq_LSP.SQL.Add('LS.DateCreated,') ;
    sq_LSP.SQL.Add('SSP.CustomerNo,') ;
    sq_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,') ;
    sq_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,') ;
    sq_LSP.SQL.Add('SSP.ObjectType,') ;
    sq_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,') ;
    sq_LSP.SQL.Add('SSP.LoadingLocationNo,') ;
    sq_LSP.SQL.Add('SSP.ShipToInvPointNo,') ;
    sq_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,') ;
    sq_LSP.SQL.Add('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

    sq_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    sq_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;
    sq_LSP.SQL.Add('        Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    sq_LSP.SQL.Add('        						AND 	SSP.SupplierNo = L.SupplierNo') ;
    sq_LSP.SQL.Add('    AND 	SSP.CustomerNo = L.CustomerNo') ;
    sq_LSP.SQL.Add('                                                        AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    sq_LSP.SQL.Add('                                                        AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;

    sq_LSP.SQL.Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
    sq_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;

    sq_LSP.SQL.Add('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo') ;
    sq_LSP.SQL.Add('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo') ;

    sq_LSP.SQL.Add('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
    sq_LSP.SQL.Add('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo') ;

    sq_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH') ;
    sq_LSP.SQL.Add('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
    sq_LSP.SQL.Add('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
    sq_LSP.SQL.Add('                                AND OH.OrderType = 1') ;
    sq_LSP.SQL.Add('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

    sq_LSP.SQL.Add('       	LEFT OUTER JOIN dbo.Booking		Bk') ;
//    sq_LSP.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo') ;
    sq_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    sq_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    sq_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    sq_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    sq_LSP.SQL.Add('WHERE') ;

    sq_LSP.SQL.Add('LS.LoadNo = '+IntToStr(LoadNo)) ;
    sq_LSP.SQL.Add('AND L.SupplierNo = '+IntToStr(FSupplierNo)) ;
    sq_LSP.SQL.Add('AND L.CustomerNo = '+IntToStr(FCustomerNo)) ;



//   if ThisUser.UserID = 8 then sq_LSP.SQL.SaveToFile('Generate_LSP_Purchase_SQL.txt') ;
   End ;
End ;

//Begin with procedure CreateWithExistingLoad(
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(AOwner, SPCustomerNo, SupplierNo {Lars}{CustomerNo} {supplierno}, 0, 0, LLNo, LoadNo, Shipping, -1{orderClient});
  fShipping           := Shipping ;
  With dmLoadEntrySSP do
  Begin
   ds_LoadPackages2.Enabled:= False ;
   OpenLoadHead ;
   LoadStatus     := cds_LoadHeadSenderLoadStatus.AsInteger ;
   FCustomerNo    := cds_LoadHeadCustomerNo.AsInteger ;
   FSupplierNo    := cds_LoadHeadSupplierNo.AsInteger ;
   FOrderClientNo := OrderClientNo ;

   cds_LSP.Active:= False ;
   if Shipping = 0 then
    Generate_LSP_Sales_SQL
     else
      Generate_LSP_Purchase_SQL ;
   cds_LSP.Active:= True ;

   GetLO_Records ;
   Get_LoadPackages ;

   dmLoadEntrySSP.Get_LO_LinesMatched (dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString) ;


//============================
   For x:= 0 to bcPhysInventory.Properties.Items.Count -1 do
//   if InventoryNo
   if cds_LSPPIPNo.AsInteger = integer(bcPhysInventory.Properties.Items.Objects[x]) then
   Begin
    bcPhysInventory.ItemIndex:= x ;
    InventoryNo:= integer(bcPhysInventory.Properties.Items.Objects[x]);
   End ;

  if bcPhysInventory.ItemIndex = -1 then
   if bcPhysInventory.Properties.Items.Count > 0 then
    bcPhysInventory.ItemIndex := 0 ;

  if bcLogicalInventory.Properties.Items.Count > 0 then
  For x:= 0 to bcLogicalInventory.Properties.Items.Count -1 do
  if cds_LSPPIPNo.AsInteger = integer(bcLogicalInventory.Properties.Items.Objects[x]) then
  Begin
   bcLogicalInventory.ItemIndex:= x ;
   LIPNo:= integer(bcLogicalInventory.Properties.Items.Objects[x]) ;
  End ;

  SetLoadEnabled ;
  ds_LoadPackages2.Enabled:= True ;
 End ; //with

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

constructor TfLoadNoLo.CreateWithNewLoad(
AOwner: TComponent;
const LocalCustomerNo,
      LocalSupplierNo,
      LO_No,
      ShipToInvPointNo,
      LoadingLocationNo,
      LoadNo,
      Shipping,
      OrderClientNo : Integer) ;

Var FLocalSupplierNo, x : Integer ;

begin
  inherited Create(AOwner);
  dmLoadEntrySSP      := TdmLoadEntrySSP.Create(Self);
  fShipToInvPointNo   := ShipToInvPointNo ;
  fLoadingLocationNo  := LoadingLocationNo ;
  fShipping           := Shipping ;
  FOrderClientNo      := OrderClientNo ;

  if fShipping = 0 then
  grdLODBTableView1CUSTOMER.Caption:= 'KUND'
  else
  grdLODBTableView1CUSTOMER.Caption:= 'LEVERANTÖR' ;

  LoadEnabled:= True ;

  With dmLoadEntrySSP do
  Begin
   cdsLORows.Active                         := False ;
   sqLORows.ParamByName('LoadNo').AsInteger := -1 ;
   cdsLORows.Active                         := True ;
   cds_LoadPackages.Active                  := True ;

   dmsContact.sp_Cities.Open ;
   dmsContact.cdsCities.Active              := True ;
   dmsContact.cds_LocalShipper.Active       := True ;

   cds_LoadHead.Active:= True ;

   if LoadNo < 1 then
   Begin
    cds_LoadHead.Insert ;
    cds_LoadHeadSenderLoadStatus.AsInteger := 0 ;
    cds_LoadHeadLoadedDate.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(Now) ;
    cds_LoadHead.Post ;
   End ;

   cds_LSP.Active:= True ;
   if LO_NO > 0 then
   Begin
    AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo, ShipToInvPointNo, LoadingLocationNo);
   End ;

//   SetLoadEnabled ;

{ if dmLoadEntrySSP.FAvrop_CustomerNo <> -1 then
 Begin //Purchase packages get external supplier SupplierCode
  dmsSystem.sq_GetInventoryNo.Close ;
  if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= LocalSupplierNo
    else
     dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= VIDA_WOOD_COMPANY_NO ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= LoadingLocationNo ;
  dmsSystem.sq_GetInventoryNo.Open ;
  InventoryNo := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ;
 End
 else
 Begin }

{  dmsSystem.sq_GetInventoryNo.Close ;
  if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= LocalSupplierNo
    else
     dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= VIDA_WOOD_COMPANY_NO ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= LoadingLocationNo ;
  dmsSystem.sq_GetInventoryNo.Open ;
  InventoryNo := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ; }
// End ;

//  bcPhysInventory.Items.Clear ;

  if fShipping = 0 then
  Begin
   if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, LocalSupplierNo{ InventoryOwnerNo}, ThisUser.CompanyNo)
   else
   if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, LocalSupplierNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo})
   else
//  dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, 741 {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, LocalSupplierNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
  End
  else
  Begin
   if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, LocalCustomerNo{ InventoryOwnerNo}, ThisUser.CompanyNo)
   else
   if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, LocalCustomerNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo})
   else
//  dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, 741 {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, LocalCustomerNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
  End ;


   For x:= 0 to bcPhysInventory.Properties.Items.Count -1 do
//   if InventoryNo
   if cds_LSPPIPNo.AsInteger = integer(bcPhysInventory.Properties.Items.Objects[x]) then
   Begin
    bcPhysInventory.ItemIndex:= x ;
    InventoryNo:= integer(bcPhysInventory.Properties.Items.Objects[x]);
   End ;

  if bcPhysInventory.ItemIndex = -1 then
   if bcPhysInventory.Properties.Items.Count > 0 then
    bcPhysInventory.ItemIndex := 0 ;

  if bcLogicalInventory.Properties.Items.Count > 0 then
  For x:= 0 to bcLogicalInventory.Properties.Items.Count -1 do
  if cds_LSPPIPNo.AsInteger = integer(bcLogicalInventory.Properties.Items.Objects[x]) then
  Begin
   bcLogicalInventory.ItemIndex:= x ;
   LIPNo:= integer(bcLogicalInventory.Properties.Items.Objects[x]) ;
  End ;
  End ; //with
end;

destructor TfLoadNoLo.Destroy;
begin
  CloseDataSets;
  dmLoadEntrySSP.Free ;
  inherited
end;

procedure TfLoadNoLo.CloseDataSets;
begin
   With dmLoadEntrySSP do
   Begin
    cds_LoadHead.Active               := False ;
    sq_LoadHead.Close ;
    cds_LoadPackages.Active           := False ;
    dmsContact.sp_Cities.Close ;
    dmsContact.cdsCities.Active       := False ;
    dmsContact.cds_LocalShipper.Active:= False ;
   End ;
end;

procedure TfLoadNoLo.lbCloseClick(Sender: TObject);
begin
 Close ;
end;

function TfLoadNoLo.AfterAddedPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo,
  SuppShipPlanObjectNo  : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
  OverrideRL            : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number:= dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog,
    LO_Number, OverrideRL, ProductNo, ProductLengthNo, NoOfLengths );

    cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'Längd matchar ej längdgruppen' ;
                     End ;
        ALL_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= ALL_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        BAD_PKG    : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_PKG ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'BAD_PKG';
                     End ;
{        PKG_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= PKG_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        NO_PRODUCT : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= NO_PRODUCT ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'NO MATCHING LO';
                     End ; }
        BAD_LENGTH : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_LENGTH ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'BAD_LENGTH ';
                     End ;
        VP_BadThickness : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadThickness ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadWidth ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadGrade ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSurfacing ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSpecies ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadIMP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadIMP ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;

    if (ValidPackage = ALL_OK) or
    ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
//    and (dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2)) then
//    and (cdsLORowsOverrideRL.AsInteger = 1)) then
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
//      and (OverrideRL = 1)) then
//    if ValidPackage <> BAD_PKG then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesShippingPlanNo.AsInteger             := LO_Number ;
//     cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;
    End
    else
    Begin
    if LO_Number > 0 then
     cds_LoadPackagesShippingPlanNo.AsInteger:= LO_Number ;
     cds_LoadPackagesDefsspno.AsInteger                   := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesOverrideRL.AsInteger                 := 0 ;
    End ;

    Try
//    cds_LoadPackages.Post ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage('Paketnr finns redan i lasten.') ;
     cds_LoadPackages.Cancel ;
     End ;
    End ; //Except
   end ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

function TfLoadNoLo.IdentifyPackageSupplier(
  const PkgNo,  FSupplierNo: Integer;
  var PkgSupplierCode: String3;
  var PkgSupplierNo: Integer;
  Var ProductNo : Integer;
  Var Res_UserName : String;
  Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;
const
  NO_USER_HAS_THIS_PACKAGE_RESERVED = '0' ;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
 //check that package is available in inventory and Get supplier code
    PkgSupplierCode := dmLoadEntrySSP.PkgNoToSuppCode(PkgNo,
    FSupplierNo,
    PkgSupplierNo,
    ProductNo,
    ProductLengthNo, NoOfLengths);
    if PkgSupplierCode = '' then
    Begin
     Result := eaREJECT;
    End
    else

//check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode,
        'TfLoadEntrySSP', //Self.Name,
        Res_UserName          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' //{ NO_USER_HAS_THIS_PACKAGE_RESERVED }
        then begin
          Result := eaACCEPT ;
          end
        else

        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

function TfLoadNoLo.AddLoadDetailMatchByProductNo(Var CustcdsNo : Integer;const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
begin
 if AddingPkgsFromPkgEntry = False then
 Begin
 With dmLoadEntrySSP do
 Begin
//if packages have multiple lengths then filter on random lengths LO's
//else filter on fixed length LO
//ProductLengthNo, NoOfLengths
 if cdsLORowsSpeciesNo.AsInteger = FuruGran then
 Begin
    if NoOfLengths > 1 then
    Begin
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND ACT_LENGTH < 1' ;

     {     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }
    End//if NoOfLengths > 1 then
    else
    Begin
     //Single lengths
     //Try match on pakettypnr
     cdsLORows.Filter:= 'PackageTypeNo = '+cds_LoadPackagesPackageTypeNo.AsString ;
     cdsLORows.Filtered:= True ;

     //Try match on PcsPerPkg
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH = '+cds_LoadPackagesALMM.AsString
     +' AND PCSPERPKG = '+cds_LoadPackagesPCS.AsString ;

     //Try on MainGrade and ProductNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH = '+cds_LoadPackagesALMM.AsString ;
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);



    //TRy match on MainGrade Only
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH = '+cds_LoadPackagesALMM.AsString ;

    //TRy match on RL med productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on RL utan productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString     
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }
    End ;

    End
    else
    //Specifikt träslag
    Begin
    if NoOfLengths > 1 then
    Begin
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString     
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString     
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }
    End//if NoOfLengths > 1 then
    else
    Begin
     //Single lengths
     //Try match on pakettypnr
     cdsLORows.Filter:= 'PackageTypeNo = '+cds_LoadPackagesPackageTypeNo.AsString ;
     cdsLORows.Filtered:= True ;

     //Try match on PcsPerPkg
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString     
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH = '+cds_LoadPackagesALMM.AsString
     +' AND PCSPERPKG = '+cds_LoadPackagesPCS.AsString ;

     //Try on MainGrade and ProductNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH = '+cds_LoadPackagesALMM.AsString ;
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);



    //TRy match on MainGrade Only
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH = '+cds_LoadPackagesALMM.AsString ;

    //TRy match on RL med productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = '+cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = '+IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on RL utan productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = '+cds_LoadPackagesActualThicknessMM.AsString
     +' AND ACT_WIDTH = '+cds_LoadPackagesActualWidthMM.AsString
     +' AND GradeNo = '+cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' +  cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }
    End ;
    End ;//Specifikt träslag

    cdsLORows.Filtered:= True ;
    cdsLORows.First ;
   if not cdsLORows.Eof then
   Begin
    Result    := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
    CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   End
   else
    Begin
     Result   := -1 ;
     CustcdsNo:= -1 ;
    End ;
 End ; //with
 End ;
end;

procedure TfLoadNoLo.LoadInventoryList(Sender: TObject);
Var x : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
{ if dmLoadEntrySSP.FAvrop_CustomerNo <> -1 then
 Begin //Purchase packages get external supplier SupplierCode
  dmsSystem.sq_GetInventoryNo.Close ;
  if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= dmLoadEntrySSP.FSupplierNo
    else
     dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= VIDA_WOOD_COMPANY_NO ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LO_LookUpLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmLoadEntrySSP.InventoryNo := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ;
 End
 else
 Begin }

{  dmsSystem.sq_GetInventoryNo.Close ;
   if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
    dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= dmLoadEntrySSP.FSupplierNo
     else
      dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger:= VIDA_WOOD_COMPANY_NO ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LO_LookUpLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmLoadEntrySSP.InventoryNo := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ; }

// End ;

//  bcPhysInventory.Items.Clear ;
(*  if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
  dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, dmLoadEntrySSP.FSupplierNo{ InventoryOwnerNo}, ThisUser.CompanyNo)
  else
  if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, dmLoadEntrySSP.FSupplierNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo})
    else
     dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, VIDA_WOOD_COMPANY_NO {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
  *)

{   For x:= 0 to bcPhysInventory.Properties.Items.Count -1 do
   if dmLoadEntrySSP.InventoryNo = integer(bcPhysInventory.Properties.Items.Objects[x]) then
   Begin
    bcPhysInventory.ItemIndex:= x ;
    dmLoadEntrySSP.InventoryNo:= integer(bcPhysInventory.Properties.Items.Objects[x]);
   End ;

  if bcPhysInventory.ItemIndex = -1 then
   if bcPhysInventory.Properties.Items.Count > 0 then
    bcPhysInventory.ItemIndex := 0 ; }


  if fShipping = 0 then
  Begin
   if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, dmLoadEntrySSP.FSupplierNo{ InventoryOwnerNo}, ThisUser.CompanyNo)
   else
   if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, dmLoadEntrySSP.FSupplierNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo})
   else
//  dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, 741 {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, VIDA_WOOD_COMPANY_NO {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
  End
  else
  Begin
   if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, dmLoadEntrySSP.FCustomerNo{ InventoryOwnerNo}, ThisUser.CompanyNo)
   else
   if dmsContact.IsClientVerk(ThisUser.CompanyNo) = cInternal_Mill then
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, dmLoadEntrySSP.FCustomerNo {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo})
   else
//  dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, 741 {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
   dmsContact.LoadPhysInventory(bcPhysInventory.Properties.Items, VIDA_WOOD_COMPANY_NO {InventoryOwnerNo}, ThisUser.CompanyNo { SupplierNo}) ;
  End ;


//============================
   For x:= 0 to bcPhysInventory.Properties.Items.Count -1 do
//   if InventoryNo
   if cds_LSPPIPNo.AsInteger = integer(bcPhysInventory.Properties.Items.Objects[x]) then
   Begin
    bcPhysInventory.ItemIndex:= x ;
    InventoryNo:= integer(bcPhysInventory.Properties.Items.Objects[x]);
   End ;

  if bcPhysInventory.ItemIndex = -1 then
   if bcPhysInventory.Properties.Items.Count > 0 then
    bcPhysInventory.ItemIndex := 0 ;

  if bcLogicalInventory.Properties.Items.Count > 0 then
  For x:= 0 to bcLogicalInventory.Properties.Items.Count -1 do
  if cds_LSPPIPNo.AsInteger = integer(bcLogicalInventory.Properties.Items.Objects[x]) then
  Begin
   bcLogicalInventory.ItemIndex:= x ;
   LIPNo:= integer(bcLogicalInventory.Properties.Items.Objects[x]) ;
  End ;
 End ;// With dmLoadEntrySSP do
End ;

procedure TfLoadNoLo.lbRemoveLONumberClick(Sender: TObject);
begin

end;

//Check if a package in load detail is Valid
function TfLoadNoLo.ValidatePkg(Sender: TObject;PkgNo : Integer;PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
var
  SuppShipPlanObjectNo,
  CustCdsNo             : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
  OverrideRL            : Integer ;
begin
 SuppShipPlanObjectNo := -1 ;
 CustcdsNo            := -1  ;
 LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;

 //LOLine is the SuppShipPlanObjectNo or SuppShipPlanObjectNo
 ValidPackage := ValidatePackage_ver2( CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog, LO_Number,
 OverrideRL, ProductNo, ProductLengthNo, NoOfLengths ) ;

 Result:= ValidPackage ;

   With dmLoadEntrySSP do
   Begin
    cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;
      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'Längd matchar ej längdgruppen' ;
                     End ;
        ALL_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= ALL_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        BAD_PKG    : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_PKG ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'BAD_PKG';
                     End ;
        BAD_LENGTH : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_LENGTH ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'BAD_LENGTH' ;
                     End ;
        VP_BadThickness : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadThickness ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadWidth ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadGrade ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSurfacing ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSpecies ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadIMP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadIMP ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;


    if (ValidPackage = ALL_OK) or 
    ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
//    and (dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2)) then
//    and (cdsLORowsOverrideRL.AsInteger = 1)) then
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                 := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     cds_LoadPackagesShippingPlanNo.AsInteger           := LO_Number ;
//     cds_LoadPackagesOverrideRL.AsInteger               := cdsLORowsOverrideRL.AsInteger ;
    End
    else
    Begin
     if LO_Number > 0 then
      cds_LoadPackagesShippingPlanNo.AsInteger          := LO_Number ;
     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
    End ;
   End ; //with
end;

procedure TfLoadNoLo.lbRemovePackageClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

  if dmLoadEntrySSP.cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
   dmLoadEntrySSP.cds_LoadPackages.Delete
   else
   Begin
    if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
    dmLoadEntrySSP.cds_LoadPackages.Edit ;
    dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
    dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger      := 1 ;
    dmLoadEntrySSP.cds_LoadPackages.Post ;
   End ;

  Finally
   dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
end;

Procedure TfLoadNoLo.GetLO_Records_AfterAddingLO_Number(LO_Number : Integer) ;
 Var x : integer ;
 Begin
   With dmLoadEntrySSP do
   Begin
    cdsLORows.DisableControls ;
    Try
    if cdsLORows.Active = False then
     cdsLORows.Active:= True ;

     sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger       := LO_Number ;
     sq_GetLO_Records.ParamByName('SupplierNo').AsInteger           := FSupplierNo ;
     sq_GetLO_Records.ParamByName('CustomerNo').AsInteger           := FCustomerNo ;
     sq_GetLO_Records.ParamByName('LoadingLocationNo').AsInteger    := cds_LSPLoadingLocationNo.AsInteger ;
     sq_GetLO_Records.ParamByName('ShipToInvPointNo').AsInteger     := cds_LSPShipToInvPointNo.AsInteger ;
     sq_GetLO_Records.Open ;
     While not sq_GetLO_Records.Eof do
     Begin
      cdsLORows.Insert ;
      Try
      For x := 0 to 34 do
       cdsLORows.Fields.Fields[x].AsVariant := sq_GetLO_Records.Fields.Fields[x].AsVariant ;

      cdsLORowsINCH_THICK.AsFloat   := StrToFloatDef(sq_GetLO_RecordsINCH_THICK.AsString,0) ;
      cdsLORowsINVCH_WIDTH.AsFloat  := StrToFloatDef(sq_GetLO_RecordsINVCH_WIDTH.AsString,0) ;
      cdsLORowsLoadNo.AsInteger     := cds_LoadHeadLoadNo.AsInteger ;
      cdsLORowsMATCH.AsInteger      := 0 ;
      cdsLORowsOverrideRL.AsInteger := sq_GetLO_RecordsOverrideRL.AsInteger ;
      cdsLORowsProductCategoryNo.AsInteger:= sq_GetLO_RecordsProductCategoryNo.AsInteger ;
      cdsLORows.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
      sq_GetLO_Records.Next ;
     End ; //while
    sq_GetLO_Records.Close ;
    Finally
     cdsLORows.EnableControls ;
    End ;
   End ; //with
 End ;

procedure TfLoadNoLo.FormCreate(Sender: TObject);
begin
  dmLoadEntrySSP.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry:= False ;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLO.Name, grdLODBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLORows.Name, grdLORowsDBBandedTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) = False then ;

  if ThisUser.CompanyNo = 741 then
   acImportPackages.Enabled:= True
    else
     acImportPackages.Enabled:= False ;
end;

procedure TfLoadNoLo.ResolvePkgNoAmbiguity(
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
    if ModalResult = mrOK then
     begin
      Choice     := SupplierCodeForSelectedPkg;
      SupplierNo := SupplierNoForSelectedpkg;
      ProductNo  := ProductNoForSelectedpkg ;
      NoOfLengths := NoOfLengthsForSelectedpkg ;
      ProductLengthNo := ProductLengthNoForSelectedpkg ;
     end
    else
      Choice := '';
  finally
    free;
    end;
end;

procedure TfLoadNoLo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if DataSaved = False then
   Begin
   dResult:= MessageDlg('Ändringar är inte sparade, vill du spara?',
    mtConfirmation, [mbYes, mbNo,mbCancel], 0) ;
   End
    else
    dResult:= mrNo ;

    if dResult = mrYes then
    Begin
     acSaveLoadExecute(Sender) ;
     CanClose := True ;
    End
    else
    if dResult = mrNo then
     Begin
      CanClose := True ;
     End
     else
      CanClose := False ;

 //Remove entries in Pkgs_Res
 if CanClose = True then
 Begin
  With dmsSystem do
  Begin
   Delete_ReservedPkgs ('TfLoadEntrySSP') ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLO.Name, grdLODBTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdLORows.Name, grdLORowsDBBandedTableView1) ;
   dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) ;
  End ;
 End ;
end;

procedure TfLoadNoLo.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmLoadEntrySSP do
 Begin
  cds_LoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+' paket läggs till lasten, vill du fortsätta?',
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
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger:= PkgNo ;
       if ValidatePkgInSerie(Sender, PkgNo) <> eaACCEPT then
        cds_LoadPackages.Cancel ;
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;

    End ;//For
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
     cds_LoadPackages.Post ;
     Finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
     End ;
    End ;//mrYes
   End ;
  Finally
   FreeAndNil(frmPkgNoSeries) ;//.Free ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; // with
End ;

function TfLoadNoLo.ValidatePkgInSerie(Sender: TObject; PkgNo: Integer) : TEditAction ;
var
  PkgSupplierCode: String3;
  PkgSupplierNo: Integer ;
  Action: TEditAction;
  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
  ProductLengthNo, NoOfLengths : Integer ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }

    Action := IdentifyPackageSupplier(
     PkgNo,
      dmLoadEntrySSP.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );

  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackages(Sender, PkgNo, PkgSupplierCode) ;
    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;
//     Accept:= False ;
    End ;
//    else     Accept:= True ;
//   dmLoadEntrySSP.cds_LoadPackages.Last ;
  End
   else
   if Action = eaREJECT then
    Begin
     dmLoadEntrySSP.cds_LoadPackages.Cancel ;
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;
  //   Accept:= False ;
    End
   else
   if Action = eaReserved then
    Begin
     dmLoadEntrySSP.cds_LoadPackages.Cancel ;
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' är reserverat av '+Res_UserName) ;
  //   Accept:= False ;
    End ;

  Result:= Action ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadNoLo.AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer);
Var  Save_Cursor:TCursor;
begin
 With dmLoadEntrySSP do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  cds_LO_LookUp.Filtered:= False ;
  Try
  if cds_LO_LookUp.Active = False then
   Begin
    Get_LO_LookUp_SQL (FOrderClientNo {AVROP_CUSTOMERNO}, fShipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo)  ;
    cds_LO_LookUp.Active:= True ;
   End ;

  if cds_LO_LookUp.RecordCount > 0 then
  Begin
   cds_LSP.Insert ;
   Try
    cds_LSPShippingPlanNo.AsInteger             := cds_LO_LookUpShippingPlanNo.AsInteger ;
    cds_LSPCUSTOMER.AsString                    := cds_LO_LookUpCUSTOMER.AsString ;
    cds_LSPOBJECTTYPE.AsInteger                 := cds_LO_LookUpOBJECTTYPE.AsInteger ;
    cds_LSPAVROP_CUSTOMERNO.AsInteger           := cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger ;
    cds_LSPSUPPLIER.AsString                    := cds_LO_LookUpSUPPLIER.AsString ;
    cds_LSPLOC_CUST.AsString                    := cds_LO_LookUpLOCAL_CUST.AsString ;
    cds_LSPLOADING_LOCATION.AsString            := cds_LO_LookUpLoadingLocation.AsString ;
    cds_LSPSHIP_TO.AsString                     := cds_LO_LookUpSHIP_TO.AsString ;
    cds_LSPPIPNo.AsInteger                      := cds_LO_LookUpPIPNo.AsInteger ;
    cds_LSPLIPNo.AsInteger                      := cds_LO_LookUpLIPNo.AsInteger ;


   sq_Booking_Data.Close ;
   sq_Booking_Data.ParamByName('ShippingPlanNo').AsInteger:= cds_LO_LookUpShippingPlanNo.AsInteger ;
   sq_Booking_Data.Open ;
   if not sq_Booking_Data.Eof then
   Begin
    cds_LSPShipper.AsString                 := sq_Booking_DataShipper.AsString ;
    cds_LSPREADYDATE.AsString               := sq_Booking_DataREADYDATE.AsString ;
    cds_LSPVESSEL.AsString                  := sq_Booking_DataVESSEL.AsString ;
    cds_LSPETD.AsSQLTimeStamp               := sq_Booking_DataETD.AsSQLTimeStamp ;
    cds_LSPETA.AsSQLTimeStamp               := sq_Booking_DataETA.AsSQLTimeStamp ;
    cds_LSPSHIPPER_REF.AsString             := sq_Booking_DataSHIPPER_REF.AsString ;
    cds_LSPSHIPPERID.AsString               := sq_Booking_DataSHIPPERID.AsString ;
    cds_LSPSHIPPERS_SHIPDATE.AsSQLTimeStamp := sq_Booking_DataSHIPPERS_SHIPDATE.AsSQLTimeStamp ;
    cds_LSPSHIPPERS_SHIPTIME.AsSQLTimeStamp := sq_Booking_DataSHIPPERS_SHIPTIME.AsSQLTimeStamp ;
   End ;
   cds_LSPORDERNO.AsString                  := cds_LO_LookUpORDERNO.AsString ;
   cds_LSPORDERTYPE.AsString                := cds_LO_LookUpORDERTYPE.AsString ;
   cds_LSPShipping.AsInteger                := cds_LO_LookUpShipping.AsInteger ;

    FCustomerNo                             := cds_LO_LookUpCustomerNo.AsInteger ;
    FSupplierNo                             := cds_LO_LookUpSupplierNo.AsInteger ;
    cds_LSPCustomerNo.AsInteger             := cds_LO_LookUpCustomerNo.AsInteger ;
    cds_LSPSupplierNo.AsInteger             := cds_LO_LookUpSupplierNo.AsInteger ;
    cds_LSPShipToInvPointNo.AsInteger       := cds_LO_LookUpShipToInvPointNo.AsInteger ;
    cds_LSPLoadingLocationNo.AsInteger      := cds_LO_LookUpLoadingLocationNo.AsInteger ;


{   if cds_LSPORDERTYPE.AsString = 'SALES' then
   Begin
    FAvrop_CustomerNo:= -1 ;
   End
   else
   Begin
    FAvrop_CustomerNo:= cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger ;
   End ;}

   cds_LSPFunction.AsInteger:= 1 ; //New
   cds_LSP.Post ;
   GetLO_Records_AfterAddingLO_Number( cds_LO_LookUpShippingPlanNo.AsInteger) ;

   Except
    on eDatabaseError do
    Raise ;
   End
  End
   else
   ShowMessage('Den här Last Ordern är inte tillgänglig, kanske LO status inte är accept eller att avropet inte är aktivt längre?') ;
  Finally
   Screen.Cursor := Save_Cursor;
   sq_Booking_Data.Close ;
   if cds_LO_LookUp.Active = True then
    cds_LO_LookUp.Active:= False ;
  End ;
 End ; //with
end;

function TfLoadNoLo.ValidatePackage_ver2(
  Var CustcdsNo   : Integer;
  PkgSupplier : string3;
  PkgNo       : Integer;
  var SuppShipPlanObjectNo      : Integer;
  var PkgLog        : String;
  var LO_Number, OverrideRL    : Integer;
  const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer ;
var
  BadLength : Real;
  LOLineKey,
  CustcdsNoKey : Integer;

//build list of references to SupplierShipPlanObjectNo to validate package against
  procedure BuildListOfLOLines;
  begin
   With dmLoadEntrySSP do
   Begin
//if no match then add by productno automatically
    if not cdsLORows.FindKey([cds_LoadPackagesDefsspno.AsInteger]) then
    Begin
    //Koppla paket mot LO rader
     LOLineKey:= AddLoadDetailMatchByProductNo(CustcdsNoKey, PkgNo, PkgSupplier, ProductNo, ProductLengthNo, NoOfLengths);
    End //if
    else
    Begin
     LOLineKey      := cds_LoadPackagesDefsspno.AsInteger ;
     CustcdsNoKey   := cds_LoadPackagesDefaultCustShipObjectNo.AsInteger ;
    End ;
   End ;
  end;

function ValideraLength : Integer ;
Begin
 Result:= BAD_LENGTH ;
  With dmLoadEntrySSP do
  Begin
   if cdsLORowsACT_LENGTH.AsInteger = 0 then
{     if (cdsLORowsProductLengthNo.AsInteger = 453)
     or (cdsLORowsProductLengthNo.AsInteger = 533)
     or (cdsLORowsProductLengthNo.AsInteger = 1960)
     or (cdsLORowsProductLengthNo.AsInteger = 1831)
     or (cdsLORowsProductLengthNo.AsInteger = 3187)
     or (cdsLORowsProductLengthNo.AsInteger = 3190) then }
     Begin
      SuppShipPlanObjectNo  := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
      LO_Number             := cdsLORowsShippingPlanNo.AsInteger ;
      CustcdsNo             := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
      OverrideRL            := cdsLORowsOverrideRL.AsInteger ;

      if dmsSystem.All_PkgLengths_In_LengthGroup (cds_LoadPackagesPACKAGETYPENO.AsInteger, cdsLORowsProductLengthGroupNo.AsInteger) then
      Result                := ALL_OK
      else
      Result:= VP_LengthNotInLengthGroup ;
     End
     else
     if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
     Begin
      if cdsLORowsACT_LENGTH.AsString = cds_LoadPackagesALMM.AsString then
//      if cds_LoadPackagesProductLengthNo.AsInteger = cdsLORowsProductLengthNo.AsInteger then
      Begin
       SuppShipPlanObjectNo   := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
       LO_Number              := cdsLORowsShippingPlanNo.AsInteger ;
       CustcdsNo              := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
       Result                 := ALL_OK ;
       OverrideRL             := cdsLORowsOverrideRL.AsInteger ;
      End
       else
       Begin
        PkgLog  := Format(rs_BAD_LENGTH,[BadLength]);
        Result  := BAD_LENGTH ;
        OverrideRL            := 0 ;
       End ;
     End//if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
     else
     if cds_LoadPackagesNoOfLengths.AsInteger > 1 then
     Begin
      PkgLog      := Format(rs_BAD_LENGTH,[BadLength]);
      Result      := BAD_LENGTH ;
      OverrideRL  := 0 ;
     End
  End ; //With
End ;

function ValideraProduktAttribut : Integer ;
Begin
//August 27 Matching LO to Pkgs
  With dmLoadEntrySSP do
  Begin
   if cds_LoadPackagesActualThicknessMM.AsFloat <> cdsLORowsACT_THICK.AsFloat then
   Begin
    PkgLog  := Format(rs_NO_Thick,[cds_LoadPackagesActualThicknessMM.AsFloat]) ;
    Result  := VP_BadThickness ;
    Exit ;
   End
   else
   if cds_LoadPackagesActualWidthMM.AsFloat <> cdsLORowsACT_WIDTH.AsFloat then
   Begin
    PkgLog  := Format(rs_NO_Width, [cds_LoadPackagesActualWidthMM.AsFloat]) ;
    Result  := VP_BadWidth ;
    Exit ;
   End
   else
   if cds_LoadPackagesMainGradeNo.AsInteger <> cdsLORowsGradeNo.AsInteger then
   Begin
    Result  := VP_BadGrade ;
    PkgLog  := rs_NO_Grade ;
    Exit ;
   End
   else
   if cds_LoadPackagesSurfacingNo.AsInteger <> cdsLORowsSurfacingNo.AsInteger then
   Begin
    Result  := VP_BadSurfacing ;
    PkgLog  := rs_NO_Surfacing ;
    Exit ;
   End
   else
   if cds_LoadPackagesSpeciesNo.AsInteger <> cdsLORowsSpeciesNo.AsInteger then
   Begin
    Result  := VP_BadSpecies ;
    PkgLog  := rs_NO_Species ;
    Exit ;
   End 
//LM måste fixas till med impregnerings kontrollen.
  else
   if cds_LoadPackagesProductCategoryNo.AsInteger <> cdsLORowsProductCategoryNo.AsInteger then
   Begin
    Result  := VP_BadIMP ;
    PkgLog  := rs_NO_IMP ;
    Exit ;
   End ;
//if we get to here all attributes are OK.
   Result:= ALL_OK ;
  End ; //With
End ;


function ValideraDimension : Integer ;
Begin
//August 27 Matching LO to Pkgs
  With dmLoadEntrySSP do
  Begin
   if cds_LoadPackagesActualThicknessMM.AsFloat <> cdsLORowsACT_THICK.AsFloat then
   Begin
    PkgLog  := Format(rs_NO_Thick,[cds_LoadPackagesActualThicknessMM.AsFloat]) ;
    Result  := VP_BadThickness ;
    Exit ;
   End
   else
   if cds_LoadPackagesActualWidthMM.AsFloat <> cdsLORowsACT_WIDTH.AsFloat then
   Begin
    PkgLog  := Format(rs_NO_Width, [cds_LoadPackagesActualWidthMM.AsFloat]) ;
    Result  := VP_BadWidth ;
    Exit ;
   End ;
//if we get to here all attributes are OK.
   Result:= ALL_OK ;
  End ; //With
End ;

begin
//procedure ValidatePackage_ver2
  CustcdsNo             := NO_MATCH;  // Changed below if validation succeeds.
  BadLength             := 0;
  SuppShipPlanObjectNo  := NO_MATCH;  // Changed below if validation succeeds.
  BuildListOfLOLines;
  SuppShipPlanObjectNo  := LOLineKey ;
  CustcdsNo             := CustcdsNoKey ;

  With dmLoadEntrySSP do
  Begin
   Try
   if SuppShipPlanObjectNo > 0 then
   Begin
//Filtrera fram LO records på current LoadDetailMatch
    cdsLORows.Filter   := 'SupplierShipPlanObjectNo = '+inttostr(SuppShipPlanObjectNo) ; //mtLoadDetailMatchSupplierShipPlanObjectNo.AsString ;
    cdsLORows.Filtered := True ;

    if cds_LoadPackagesOverrideMatch.AsInteger = 0 then
    Begin
     Result:= ValideraProduktAttribut ;
     if Result = ALL_OK then
      Result:= ValideraLength ;
    End
    else
    Begin
     Result:= ValideraDimension ;
     if Result = ALL_OK then
      Result:= ValideraLength ;
    End ;
   End
    else
     Begin
      Result:= VP_NoLOConnection ;
      PkgLog := rs_NO_LO_Connection ;
     End ;

//Kolla om det finns en match på Dimension, träslag, utförande och huvudkvalitet mellan
//LO och paket.
//Om det inte matchar skall det rapporteras tillbaka till användaren vilken parameter
//som inte matchade

//Är det en successfull match på produkten skall paketlängden matchas mot LO längden.

   Finally
    cdsLORows.Filtered:= False ;
   End ;
  End ; //With
end;

function TfLoadNoLo.AddPkgTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;



     cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger  := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger       := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString          := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger       := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger    := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger   := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString   := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger     := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat     := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger     := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger       := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger     := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat              := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger           := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger:= sq_OnePkgDetailDataProductCategoryNo.AsInteger ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
//LM    cds_LoadPackages.Post ;
//    if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
      ShowMessage('Paketnr finns redan i lasten.') ;
      cds_LoadPackages.Cancel ;
     End ;
    End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadNoLo.pmPkgsPopup(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  if cds_LoadPackagesOverrideMatch.AsInteger = 0 then
   bbMatcha.Caption:= 'Matcha manuellt'
    else
     bbMatcha.Caption:= 'Matcha automatiskt' ;
 End ;
end;

procedure TfLoadNoLo.bbTally_Ver2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 if dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE.RPT')
  else
  Begin
   dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
   dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL(False) ;
   FormCRViewReport.CreateCo('TALLY_VER2_NOTE.RPT') ;
  End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.InsertSelectedPkgNos(Sender: TObject) ;
Var SupplierShipPlanObjectNo : Integer ;
begin
 With dmsSystem, dmLoadEntrySSP do
 Begin
  SupplierShipPlanObjectNo:= cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  mtSelectedPkgNo.Filter:= 'MARKERAD = 1' ;
  mtSelectedPkgNo.Filtered:= True ;
  Try
   mtSelectedPkgNo.First ;
    While not mtSelectedPkgNo.Eof do
    Begin
      Try
       cds_LoadPackages.Insert ;

//       AddPkgTo_cds_LoadPackages(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString) ;
//       AddSelectedPkgDataTo_cds_LoadPackages(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString) ;
       cds_LoadPackagesPackageNo.AsInteger    := mtSelectedPkgNoPaketnr.AsInteger ;
       cds_LoadPackagesSupplierCode.AsString  := mtSelectedPkgNoLevKod.AsString ;
       cds_LoadPackagesDefsspno.AsInteger     := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
       cds_LoadPackagesOverrideRL.AsInteger   := cdsLORowsOverrideRL.AsInteger ;

       ValidatePkgNoSuppCode_WhenPickPkgNo(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString, mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
       if (cds_LoadPackagesPackageOK.AsInteger <> 0) AND (cds_LoadPackagesPackageOK.AsInteger <> 13) then
         ValidatePkgNoSuppCode(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
         mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;
     mtSelectedPkgNo.Next ;
     cdsLORows.Locate('SupplierShipPlanObjectNo', SupplierShipPlanObjectNo, []) ; 
    End ; //While
    if cds_LoadPackages.State in [dsEdit, dsInsert] then
     cds_LoadPackages.Post ;

  Finally
   mtSelectedPkgNo.Filtered:= False ;
   cds_LoadPackages.EnableControls ;
   cdsLORows.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfLoadNoLo.ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
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
   AddPkgTo_cds_LoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

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

function TfLoadNoLo.IsPkgReserved(
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
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Result := eaACCEPT ;
          end
        else

        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;
end;

procedure TfLoadNoLo.ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
const
  LF = #10;
var
  NewPkgNo : Integer ;
  PktNrLevKod : String3 ;//Lev koden i paketnrsträngen
  PkgSupplierCode: String3;
  Action: TEditAction;
//  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin
   Try
   NewPkgNo:= StrToInt(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod:= Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode:= dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
  End
   else //Length < 11
    Begin
     NewPkgNo:= StrToIntDef(PkgNo,0) ;
     PkgSupplierCode:= EgenPkgSupplierCode ;
     if NewPkgNo = 0 then
     Begin
      ShowMessage('Koden kunde inte översättas till ett Paketnr') ;
      Exit ;
     End ;
    End ;

  if dmLoadEntrySSP.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

    if Action = eaACCEPT then
     InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
      else
       if Action = eaReserved then
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' är reserverat av '+Res_UserName)
         else
          ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' finns inte') ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadNoLo.InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
Var
SuppShipPlanObjectNo,
CustcdsNo,
LO_Number,
OverrideRL : Integer ;
begin
 With dmLoadEntrySSP do
 Begin
  Try
   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
   CustcdsNo            := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   OverrideRL           := cdsLORowsOverrideRL.AsInteger ;


     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackages.Insert ;
      cds_LoadPackagesDefsspno.AsInteger                := SuppShipPlanObjectNo ;
      cds_LoadPackagesOverrideRL.AsInteger              := OverrideRL ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1 ;
      cds_LoadPackagesShippingPlanNo.AsInteger          := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger               := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString                  := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger               := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger            := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger           := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString             := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat                    := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat                    := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                       := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                      := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger                     := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString           := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger             := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger         := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat         := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat             := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger             := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger               := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger             := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat                      := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger                   := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger       := sq_OnePkgDetailDataProductCategoryNo.AsInteger ;

      cds_LoadPackagesPkg_State.AsInteger               := NEW_PACKAGE ;
      cds_LoadPackagesPkg_Function.AsInteger            := ADD_PKG_TO_LOAD ;
      cds_LoadPackagesChanged.AsInteger                 := 1 ;
      cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;



      sq_OnePkgDetailData.Close ;
      cds_LoadPackages.Post ;
     End
      else
       ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;

      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;

 End ; // with
End ;

procedure TfLoadNoLo.InsertPkgNo(Sender: TObject) ;
begin
 With dmLoadEntrySSP do
 Begin
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  Try

    mtPkgNos.First ;
    While not mtPkgNos.Eof do
    Begin
      Try
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger:= mtPkgNospackageno.AsInteger ;
       cds_LoadPackagesSupplierCode.AsString:= mtPkgNosSuppliercode.AsString ;
       ValidatePkgNoSuppCode(Sender, mtPkgNospackageno.AsInteger,
       mtPkgNosSuppliercode.AsString,
       mtPkgNosproductno.AsInteger, mtPkgNosproductlengthno.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;
     mtPkgNos.Next ;
    End ; //While
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ; 

  Finally
   cds_LoadPackages.EnableControls ;
   cdsLORows.EnableControls ;
  End ;
 End ; // with
End ;

procedure TfLoadNoLo.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo : Integer ;
  PktNrLevKod : String3 ;//Lev koden i paketnrsträngen
  PkgSupplierCode: String3;
  Action: TEditAction;
//  ProductNo : Integer ;
  Save_Cursor:TCursor;
  Res_UserName : String ;
  NoOfLengths, ProductLengthNo, ProductNo, PkgSupplierNo: Integer ;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  NewPkgNo:= 0 ;
  if Length(Trim(PkgNo)) > 10 then
  Begin //LÅNGA KODEN
   Try
   NewPkgNo:= StrToInt(Copy(PkgNo, dmsSystem.PktNrPos, dmsSystem.AntPosPktNr)) ;
   Except
    on E: EConvertError do
       ShowMessage(E.ClassName + LF + E.Message);
   End ;
   if NewPkgNo < 1 then
    Exit ;
   PktNrLevKod:= Copy(PkgNo, dmsSystem.LevKodPos, dmsSystem.AntPosLevKod) ;
   PkgSupplierCode:= dmsContact.GetSuppliercodeByPktLevKod (PktNrLevKod) ;
  End
   else //Length < 11
    Begin
     NewPkgNo:= StrToIntDef(PkgNo,0) ;
     if NewPkgNo = 0 then
     Begin
      ShowMessage('Koden kunde inte översättas till ett Paketnr') ;
      Exit ;
     End ;

      Action := IdentifyPackageSupplier(
      NewPkgNo,
      dmLoadEntrySSP.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );
    End ;

  if dmLoadEntrySSP.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
  Begin
   Action:= eaDuplicate ;
  End
  else
  Action := eaAccept ;

  if Action = eaAccept then
        if dmsSystem.Pkg_Reserved(
          NewPkgNo,
          PkgSupplierCode, 'TfLoadEntrySSP', Res_UserName
          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' { NO_USER_HAS_THIS_PACKAGE_RESERVED }then begin
          Action := eaACCEPT ;
          end
          else
           Action := eaReserved ;

    if Action = eaACCEPT then
     InsertScannedPkgNo(Sender, NewPkgNo, PkgSupplierCode)
      else
       if Action = eaReserved then
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' är reserverat av '+Res_UserName) 
         else
          ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' finns inte') ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadNoLo.acValidatePkgExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 Try
  if dmLoadEntrySSP.cds_LoadPackages.State = dsBrowse then
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   Try
    ValidatePkg(Sender, dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
    dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
     dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger) ;

    dmLoadEntrySSP.cds_LoadPackages.Post ;
   Except
    on eDatabaseError do
    Raise ;
   End ;

  End
  else
   ShowMessage('Raden ligger i ändringsläge, spara raden genom pil upp eller ner först.') ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLoadNoLo.acValidateAllPkgsExecute(Sender: TObject);
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.DataSet:= Nil ;
  cds_LoadPackages.DisableControls ;
  Try
   cds_LoadPackages.First ;
    While not cds_LoadPackages.Eof do
    Begin
     if cds_LoadPackagesPackageOK.AsInteger <> ALL_OK then
     Begin
      cds_LoadPackages.Edit ;
      Try
      ValidatePkg(Sender, dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger) ;
      cds_LoadPackages.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
     End ;//if
     cds_LoadPackages.Next ;
    End ; //while

  Finally
   ds_LoadPackages2.DataSet:= cds_LoadPackages ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;
  End ;
 End ;  //with
end;


procedure TfLoadNoLo.acInsertPkgToInventoryExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntrySSP do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;

  cds_LoadPackages.DisableControls ;
  try
  ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    if cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
     cds_LoadPackages.Delete
     else
     Begin
      if cds_LoadPackages.State = dsBrowse then
      cds_LoadPackages.Edit ;
      cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
      cds_LoadPackagesChanged.AsInteger      := 1 ;
      cds_LoadPackages.Post ;
     End ;
   End ;
   mtLoadPackages.Next ;
  End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   mtLoadPackages.Active:= False ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfLoadNoLo.acInsertAllPkgsToInventoryExecute(
  Sender: TObject);
Var Save_Cursor : TCursor ;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 dmLoadEntrySSP.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;
  dmLoadEntrySSP.cds_LoadPackages.First ;
  While not dmLoadEntrySSP.cds_LoadPackages.Eof do
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := REMOVE_PKG_FROM_LOAD ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
   dmLoadEntrySSP.cds_LoadPackages.Next ;
//April 22 2004
   Application.ProcessMessages ;
  End ;
 Finally
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
  dmLoadEntrySSP.cds_LoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfLoadNoLo.acRemovePkgFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 if MessageDlg('Är du säker? markerade paket kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadEntrySSP do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  Try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    dmLoadEntrySSP.cds_LoadPackages.Edit ;
    dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
    dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 1 ;
    dmLoadEntrySSP.cds_LoadPackages.Post ;
   End ;
   mtLoadPackages.Next ;
  End ;//While..

 Finally
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With..
end;

procedure TfLoadNoLo.acRemoveAllPkgsFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  if MessageDlg('Är du säker? paketen kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  dmLoadEntrySSP.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

  dmLoadEntrySSP.cds_LoadPackages.First ;
  While not dmLoadEntrySSP.cds_LoadPackages.Eof do
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
   dmLoadEntrySSP.cds_LoadPackages.Next ;
  End ;

  Finally
   dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
   dmLoadEntrySSP.cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; //if
end;

procedure TfLoadNoLo.acUndoPkgOperationExecute(Sender: TObject);
begin
//Undo
 Try
 dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= NIL ;

 Case dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger of
  DELETE_PKG            :
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
  End ;
  REMOVE_PKG_FROM_LOAD  :
  Begin
   dmLoadEntrySSP.cds_LoadPackages.Edit ;
   dmLoadEntrySSP.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntrySSP.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntrySSP.cds_LoadPackages.Post ;
  End ;
 End ; //case
 Finally
  dmLoadEntrySSP.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSP.ds_LoadPackages2DataChange ;
 End ;
end;

procedure TfLoadNoLo.acSetDefaultMatchOnAllPkgsExecute(
  Sender: TObject);
var
 Save_Cursor  : TCursor;
 CustcdsNo,
 SSPObjectNo  : Integer ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmLoadEntrySSP do
 Begin

 try
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   SSPObjectNo:= AddLoadDetailMatchByProductNo(CustcdsNo, cds_LoadPackagesPackageNo.AsInteger,
   cds_LoadPackagesSupplierCode.AsString, cds_LoadPackagesProductNo.AsInteger,cds_LoadPackagesProductLengthNo.AsInteger,
   cds_LoadPackagesNoOfLengths.AsInteger);

   cds_LoadPackages.Edit ;
   cds_LoadPackagesDefsspno.AsInteger                 := SSPObjectNo ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesChanged.AsInteger                  := 1 ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;

 finally
  cds_LoadPackages.EnableControls ;
  cdsLORows.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;//With
end;


procedure TfLoadNoLo.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := dmLoadEntrySSP.cds_LoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode := dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfLoadNoLo.acAddPkgExecute(Sender: TObject);
begin
 if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
  dmLoadEntrySSP.cds_LoadPackages.Append
   else
    ShowMessage('Spara lasten först.') ;
end;

procedure TfLoadNoLo.acValidatePkgUpdate(Sender: TObject);
begin
 acValidatePkg.Enabled:= (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acValidateAllPkgsUpdate(Sender: TObject);
begin
 acValidateAllPkgs.Enabled:= (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
 acInsertPkgToInventory.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
 acInsertAllPkgsToInventory.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
 acRemovePkgFromSystem.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
begin
 acRemoveAllPkgsFromSystem.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acUndoPkgOperationUpdate(Sender: TObject);
begin
 acUndoPkgOperation.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
begin
 acSetDefaultMatchOnAllPkgs.Enabled:=  (dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acPkgInfoUpdate(Sender: TObject);
begin
 acPkgInfo.Enabled:=  dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0 ;
end;

procedure TfLoadNoLo.acAddPkgByPkgCodeExecute(Sender: TObject);
Var Save_Cursor : TCursor;
    noofpkgs : integer ;
    fEntryField : TfEntryField ;
begin
 //Add pkgs by package code
 //ta coden från lo rad
 //mata in antal paket
 //hämta paket från lagret, äldsta paketnr först
 With dmLoadEntrySSP do
 Begin
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
  noofpkgs:= 0 ;

  fEntryField:= TfEntryField.Create(Nil);
  mtPkgNos.Active:= True ;
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   if strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) > 0 then
   Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }

    Try
    noofpkgs:= GetPkgsNos(cdsLORowsPKGCODE.AsString, strtointdef(Trim(fEntryField.eNoofpkgs.Text),0),
    integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ) ;
    if noofpkgs <> 0 then
    Begin
     if noofpkgs <> strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) then
     Begin
      if MessageDlg('Du begärde '+Trim(fEntryField.eNoofpkgs.Text)+' paket med det finns endast '+inttostr(noofpkgs)
      +' vill du lägga '+inttostr(noofpkgs)+' paket till lasten?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      InsertPkgNo(Sender) ;
     End
     else
     InsertPkgNo(Sender) ;
    End
    else
    showmessage('Det finns inga paket av pktkod '+trim(cdsLORowsPKGCODE.AsString)+' i lager '+Trim(bcPhysInventory.Text)
    +'/'+Trim(bcLogicalInventory.Text)) ;
    Finally
     Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End ;
   End ;
  End ;

  Finally
   FreeAndNil(fEntryField) ;//.Free ;
   mtPkgNos.Active:= False ;
  End ;

 End
 else
   ShowMessage('Spara lasten först.') ;
 End ; //with
end;

procedure TfLoadNoLo.acRemoveLOExecute(Sender: TObject);
begin
 //Remove LO
 With dmLoadEntrySSP do
 Begin
  if DoesLOHavePackages (cds_LSPShippingPlanNo.AsInteger) = False then
  Begin
  Try
//   cds_LSP.Edit ;
//   cds_LSPFunction.AsInteger:= 2 ; //Remove
//   cds_LSP.Post ;

    Try
    cdsLORows.Filter    := 'ShippingPlanNo = '+cds_LSPShippingPlanNo.AsString ;
    cdsLORows.Filtered  := True ;

    cdsLORows.First ;
    While not cdsLORows.Eof do
    Begin
     cdsLORows.Delete ;
    End ; //while
//   cds_LSP.Edit ;
   cds_LSP.Delete ;
//   cds_LSP.Post ;

   Finally
    cdsLORows.Filtered:= False ;
   End ;

  Except
  End ;
  End
   else
    ShowMessage('Kan inte ta bort en LO som har paket kopplade, LONr '+cds_LSPShippingPlanNo.AsString) ;
 End ; //with

end;

procedure TfLoadNoLo.acUndoRemoveLOExecute(Sender: TObject);
begin
(* With dmLoadEntrySSP do
 Begin
  if mtLoadShippingPlanFunction.AsInteger = 2 then
  Begin
   mtLoadShippingPlan.Edit ;
   mtLoadShippingPlanFunction.AsInteger:= 0 ;
   mtLoadShippingPlan.Post ;
   GetLO_Records_AfterAddingLO_Number(mtLoadShippingPlanShippingPlanNo.Asinteger) ;
  End ;
 End ; *)
end;

procedure TfLoadNoLo.acAddLOExecute(Sender: TObject);
Var  Save_Cursor            : TCursor;
     frmSelectLO_NumberSSP  : TfrmSelectLO_NumberSSP;
begin
 With dmLoadEntrySSP do
 Begin
  Save_Cursor           := Screen.Cursor;
  Screen.Cursor         := crHourGlass;
  cds_LO_LookUp.Filtered:= False ;
  frmSelectLO_NumberSSP := TfrmSelectLO_NumberSSP.Create(Nil) ;
  Try
  if cds_LO_LookUp.Active = False then
   Begin
    if cds_LSP.RecordCount > 0 then
    Begin
     if cds_LSPShipping.AsInteger <> 1 then
     Get_LO_LookUp_SQL (cds_LSPAvrop_CustomerNo.AsInteger, 0 {Shipping}, -1 {LONo}, cds_LSPCustomerNo.AsInteger, cds_LSPSupplierNo.AsInteger, cds_LSPShipToInvPointNo.AsInteger, cds_LSPLoadingLocationNo.AsInteger)
     else
     Get_LO_LookUp_SQL (cds_LSPAvrop_CustomerNo.AsInteger, 1 {Shipping}, -1 {LONo}, cds_LSPCustomerNo.AsInteger, cds_LSPSupplierNo.AsInteger, cds_LSPShipToInvPointNo.AsInteger, cds_LSPLoadingLocationNo.AsInteger)  ;
    End
     else
      Begin
       Get_LO_LookUp_SQL (-1, -1 {Shipping}, -1 {LONo}, -1, ThisUser.CompanyNo, -1, -1) ;
//       dmLoadEntrySSP.cds_LO_LookUp.Filter:= 'SHIPPING = 0' ;
//       dmLoadEntrySSP.cds_LO_LookUp.Filtered:= True ;
      End ;
   End ;

{    if cds_LSP.RecordCount > 0 then
    Begin
    //Sales
    cds_LO_LookUp.Active:= True ;
    if cds_LSP.RecordCount > 0 then
    Begin
     if cds_LSPShipping.AsInteger = 0 then
     cds_LO_LookUp.Filter:= 'SupplierNo = '+cds_LSPSupplierNo.AsString
     +' AND Shipping = '''+mtLoadShippingPlanShipping.AsString+''''
     +' AND ShipToInvPointNo = '''+cds_LSPShipToInvPointNo.AsString+''''
     +' AND CustomerNo = '''+IntToStr(fCustomerNo)+''''
     +' AND LoadingLocationNo = '''+cds_LSPLoadingLocationNo.AsString+''''

     else
     cds_LO_LookUp.Filter:= 'AVROP_CUSTOMERNO = '+mtLoadShippingPlanAVROP_CUSTOMERNO.AsString
     +' AND CustomerNo = '''+IntToStr(fCustomerNo)+''''
     +' AND Shipping = '''+mtLoadShippingPlanShipping.AsString+'''' ;

     cds_LO_LookUp.Filtered:= True ;
    End
    else
     Begin
       cds_LO_LookUp.Filtered:= False ;
     End ;
   End ; }

   cds_LO_LookUp.Active:= True ;
  if frmSelectLO_NumberSSP.ShowModal = mrOk then
  Begin
   if not cds_LSP.FindKey([cds_LO_LookUpShippingPlanNo.AsInteger]) then
   Begin
   cds_LSP.Insert ;
   Try

   cds_LSPShippingPlanNo.AsInteger    := cds_LO_LookUpShippingPlanNo.AsInteger ;
   cds_LSPCUSTOMER.AsString           := cds_LO_LookUpCUSTOMER.AsString ;
   cds_LSPOBJECTTYPE.AsInteger        := cds_LO_LookUpOBJECTTYPE.AsInteger ;
   cds_LSPAVROP_CUSTOMERNO.AsInteger  := cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger ;
   cds_LSPSUPPLIER.AsString           := cds_LO_LookUpSUPPLIER.AsString ;
   cds_LSPLOC_CUST.AsString           := cds_LO_LookUpLOCAL_CUST.AsString ;
   cds_LSPLOADING_LOCATION.AsString   := cds_LO_LookUpLoadingLocation.AsString ;
   cds_LSPSHIP_TO.AsString            := cds_LO_LookUpSHIP_TO.AsString ;


   sq_Booking_Data.Close ;
   sq_Booking_Data.ParamByName('ShippingPlanNo').AsInteger:= cds_LO_LookUpShippingPlanNo.AsInteger ;
   sq_Booking_Data.Open ;
   if not sq_Booking_Data.Eof then
   Begin
   cds_LSPShipper.AsString            := sq_Booking_DataShipper.AsString ;
   cds_LSPREADYDATE.AsString          := sq_Booking_DataREADYDATE.AsString ;
   cds_LSPVESSEL.AsString             := sq_Booking_DataVESSEL.AsString ;
   cds_LSPETD.AsSQLTimeStamp          := sq_Booking_DataETD.AsSQLTimeStamp ;
   cds_LSPETA.AsSQLTimeStamp          := sq_Booking_DataETA.AsSQLTimeStamp ;
   cds_LSPSHIPPER_REF.AsString        := sq_Booking_DataSHIPPER_REF.AsString ;
   cds_LSPSHIPPERID.AsString          := sq_Booking_DataSHIPPERID.AsString ;
   cds_LSPSHIPPERS_SHIPDATE.AsSQLTimeStamp:= sq_Booking_DataSHIPPERS_SHIPDATE.AsSQLTimeStamp ;
   cds_LSPSHIPPERS_SHIPTIME.AsSQLTimeStamp:= sq_Booking_DataSHIPPERS_SHIPTIME.AsSQLTimeStamp ;
   End ;
   cds_LSPORDERNO.AsString:= cds_LO_LookUpORDERNO.AsString ;


   cds_LSPORDERTYPE.AsString          := cds_LO_LookUpORDERTYPE.AsString ;
   cds_LSPShipping.AsInteger          := cds_LO_LookUpShipping.AsInteger ;

    FCustomerNo                       := cds_LO_LookUpCustomerNo.AsInteger ;
    FSupplierNo                       := cds_LO_LookUpSupplierNo.AsInteger ;
    FOrderClientNo                   := cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger ;
    cds_LSPCustomerNo.AsInteger       := cds_LO_LookUpCustomerNo.AsInteger ;
    cds_LSPSupplierNo.AsInteger       := cds_LO_LookUpSupplierNo.AsInteger ;
    cds_LSPShipToInvPointNo.AsInteger := cds_LO_LookUpShipToInvPointNo.AsInteger ;
    cds_LSPLoadingLocationNo.AsInteger:= cds_LO_LookUpLoadingLocationNo.AsInteger ;


{   if cds_LSPORDERTYPE.AsString = 'SALES' then
   Begin
    FAvrop_CustomerNo:= -1 ;
   End
   else

   Begin
    FAvrop_CustomerNo:= cds_LO_LookUpAVROP_CUSTOMERNO.AsInteger ;
   End ; }


   cds_LSPFunction.AsInteger:= 1 ; //New
   cds_LSP.Post ;


   GetLO_Records_AfterAddingLO_Number(cds_LO_LookUpShippingPlanNo.AsInteger) ;
   LoadInventoryList(Sender) ;
   Except
    on eDatabaseError do
    Raise ;
   End ;
   End
   else
   ShowMessage('LO numret finns redan i lasten.') ;
  End ;
  Finally
   FreeAndNil(frmSelectLO_NumberSSP) ;
   Screen.Cursor := Save_Cursor;
   sq_Booking_Data.Close ;
   if cds_LO_LookUp.Active = True then
    cds_LO_LookUp.Active:= False ;
  End ;
 End ; //with
end;

procedure TfLoadNoLo.acRemoveLOUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acRemoveLO.Enabled:= (cds_LSP.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.acUndoRemoveLOUpdate(Sender: TObject);
begin
 //Undo Remove LO
 With dmLoadEntrySSP do
 Begin
//  acUndoRemoveLO.Enabled:= mtLoadShippingPlanFunction.AsInteger = 2 ;
 End ; //with
end;

procedure TfLoadNoLo.acAddPkgUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acAddPkg.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.acAddPkgByPkgCodeUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acAddPkgByPkgCode.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.acPickPkgNosExecute(Sender: TObject);
var fPickPkgNo: TfPickPkgNo;
begin
 if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;

 With dmLoadEntrySSP do
 Begin
  fPickPkgNo:= TfPickPkgNo.Create(Nil);
  Try
   fPickPkgNo.ProductNo               := cdsLORowsProductNo.AsInteger ;
   fPickPkgNo.ProductLengthNo         := cdsLORowsProductLengthNo.AsInteger ;
   fPickPkgNo.ALMM                    := cdsLORowsACT_LENGTH.AsString ;
   fPickPkgNo.PIPNo                   := integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) ;
   fPickPkgNo.LONo                    := cdsLORowsShippingPlanNo.AsInteger ;
   fPickPkgNo.LabelProduct.Caption    := cdsLORowsINTERNPRODDESC.AsString ;//cdsLORowsPRODUCTDESCRIPTION.AsString ;
   fPickPkgNo.LabelLength.Caption     := cdsLORowsLENGTHDESC.AsString ;
   fPickPkgNo.LabelPIPName.Caption    := bcPhysInventory.Text ;
   fPickPkgNo.LabelOwner.Caption      := cds_LSPSUPPLIER.AsString ;
   fPickPkgNo.LabelLONr.Caption       := cdsLORowsShippingPlanNo.AsString ;
   if fPickPkgNo.ShowModal = mrOK then
    Begin
     Application.ProcessMessages ;
     InsertSelectedPkgNos(Sender) ;
//     lbSaveLoadClick(Sender) ;
    End ;
  Finally
   FreeAndNil(fPickPkgNo) ;//.Free ;
  End ;
 End ; //with
End ;

procedure TfLoadNoLo.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acPickPkgNos.Enabled:= (cdsLORows.RecordCount > 0)  and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.bcPhysInventoryPropertiesChange(Sender: TObject);
begin
 if (bcPhysInventory.Properties.Items.Count > 0) and (bcPhysInventory.ItemIndex > -1) then
 Begin
  dmsContact.LoadLogicalInventory(
  bcLogicalInventory.Properties.Items,
  integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) );
  bcLogicalInventory.Text:= bcPhysInventory.Properties.Items[bcPhysInventory.ItemIndex] ;
  bcLogicalInventory.ItemIndex:= 0 ;
 End ;
end;

procedure TfLoadNoLo.acSaveLoadExecute(Sender: TObject);
var
  Save_Cursor : TCursor;
Begin
 With dmLoadEntrySSP do
 Begin
//  if IS_Packages_OK then
  Begin
   if cds_LoadHead.State in [dsEdit, dsInsert] then
   cds_LoadHead.Post ;
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;
   cds_LoadPackages.DisableControls ;
   cds_LSP.DisableControls ;
   cdsLORows.DisableControls ;
   cds_LoadHead.DisableControls ;
   acValidateAllPkgsExecute(Sender) ;
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   try
    if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
    SaveLOData(cds_LoadHeadLoadNo.AsInteger, Sender)
     else
      ShowMessage('Lägg till minst en LO.') ;
    if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
     ShowMessage('Alla paket matchar inte, status kan inte sättas till OK.') ;
   finally
    cds_LoadPackages.EnableControls ;
    cds_LSP.EnableControls ;
    cdsLORows.EnableControls ;
    cds_LoadHead.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end;
  End ;
 End ;
end;

procedure TfLoadNoLo.SetLoadRowToChanged ;
Begin
 With dmLoadEntrySSP do
 Begin
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger   := 1 ;
  cds_LoadPackagesPackageOK.AsInteger := BAD_PKG ;
  cds_LoadPackages.Post ;
 End ;
End ;

procedure TfLoadNoLo.acPrintTallyUSNoteExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INTERNAL_USA_VER2_NOTE.RPT')
 else
 Begin
  dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
  dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL(False) ;
  FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  NewValue          : string;
  PkgSupplierCode   : String3;
  PkgSupplierNo     : Integer ;
  Action            : TEditAction;
  ProductNo         : Integer ;
  Save_Cursor       : TCursor;
  Res_UserName      : String ;
  ProductLengthNo   : Integer ;
  NoOfLengths       : Integer ;
begin
{ With dmLoadEntrySSP do
 Begin
 if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
 Begin
  ErrorText:= 'Inte tillåtet att skriva över paketnr som redan är sparade till lasten' ;
  Error:= True ;
  Exit ;
 End ;
 End ; }


  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   NewValue := DisplayValue ;
   if StrToIntDef(NewValue,0) > 0 then
   Begin

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      dmLoadEntrySSP.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );

//Får inte använda post själv, det gör rutinen automatiskt
  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackages(Sender, StrToInt(NewValue),PkgSupplierCode) ;
//Långsamt här
    if AfterAddedPkgNo(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths ) <> eaACCEPT then
    Begin
     ErrorText:= 'Package number '+NewValue+' does not exist' ;
     Error:= True ;
    End
    else
    Begin
     Error:= False ;
//     dmLoadEntrySSP.cds_LoadPackages.Post ;
    End ;
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
       ErrorText:= 'Paketnr '+NewValue+' är reserverat av '+Res_UserName ;
       Error:= True ;
      End
      else
       if Action = eaDuplicate then
        Begin
         ErrorText:= 'Paketnr '+NewValue+' är redan inmatat' ;
         Error:= True ;
        End ;
    End
     else
      Begin
       ErrorText:= 'Paketnr saknas.' ;
       Error:= True ;
      End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadNoLo.grdLORowsDBBandedTableView1MATCHPropertiesChange(
  Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  Try
  ds_LoadPackages2.OnDataChange:= nil ;
  if cds_LoadPackages.State = dsBrowse then
  cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger                 := 1 ;
  cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;

  if cdsLORowsMatch.AsInteger = 1 then
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesOverrideRL.AsInteger               := cdsLORowsOverrideRL.AsInteger ;
  End
  else
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
   cds_LoadPackagesOverrideRL.AsInteger               := 0 ;
  End ;
  cds_LoadPackages.Post ;

  Get_LO_LinesMatched (cds_LoadPackagesPackageNo.AsInteger,  Trim(cds_LoadPackagesSupplierCode.AsString)) ;
  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadNoLo.GetMarkedPkgs ;
 Var
 LoadDetailNo,
 i,
 RecIDX,
 ColIdx         : Integer ;
 Save_Cursor    : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 With dmLoadEntrySSP do
 Begin
  grdPkgsDBBandedTableView1.BeginUpdate ;
  grdPkgsDBBandedTableView1.DataController.BeginLocate ;
  ds_LoadPackages2.OnDataChange:= nil ;
  Try
   For I := 0 to grdPkgsDBBandedTableView1.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx          := grdPkgsDBBandedTableView1.Controller.SelectedRecords[i].RecordIndex ;
    ColIdx          := grdPkgsDBBandedTableView1.DataController.GetItemByFieldName('LoadDetailNo').Index;
    LoadDetailNo    := grdPkgsDBBandedTableView1.DataController.Values[RecIdx, ColIdx];

    mtLoadPackages.Insert ;
    mtLoadPackagesLoadDetailNo.AsInteger              := LoadDetailNo ;
    mtLoadPackagesSupplierShipPlanObjectNo.AsInteger  := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
    mtLoadPackagesCustcdsNo.AsInteger                 := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
    mtLoadPackages.Post ;
   End ;//for

 Finally
  grdPkgsDBBandedTableView1.DataController.EndLocate ;
  grdPkgsDBBandedTableView1.EndUpdate ;
  ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//with
end;

procedure TfLoadNoLo.acKopplaPaketMotLOManuelltExecute(
  Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  ds_LoadPackages2.OnDataChange:= nil ;
  Try
    mtLoadPackages.First ;
    While not mtLoadPackages.Eof do
    Begin
     if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
     Begin
      cds_LoadPackages.Edit ;
      cds_LoadPackagesDefsspno.AsInteger                := mtLoadPackagesSupplierShipPlanObjectNo.AsInteger ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := -1 ;
      cds_LoadPackagesOverrideRL.AsInteger              := 0 ; 
      cds_LoadPackagesChanged.AsInteger                 := 1 ;
      cds_LoadPackagesOverrideMatch.AsInteger           := 1 ;
      cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;
      cds_LoadPackagesProblemPackageLog.AsString        := 'Manuell koppling' ;
//Validera varje paket som har manuell koppling      
      ValidatePkg(Sender, dmLoadEntrySSP.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSP.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntrySSP.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSP.cds_LoadPackagesNoOfLengths.AsInteger) ;
      cds_LoadPackages.Post ;
     End ;
     mtLoadPackages.Next ;
    End ;
   Get_LO_LinesMatched (cds_LoadPackagesPackageNo.AsInteger, cds_LoadPackagesSupplierCode.AsString) ;
  Finally
   mtLoadPackages.Active:= False ;
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ;//With..
end;

procedure TfLoadNoLo.acSaveLoadUpdate(Sender: TObject);
begin
 acSaveLoad.Enabled:= (not DataSaved) and (LoadEnabled) ; 
end;

procedure TfLoadNoLo.acDeleteLoadExecute(Sender: TObject);
begin
 if dmLoadEntrySSP.cds_LoadPackages.RecordCount > 0 then
  Begin
   ShowMessage('Ta bort paketen från lasten först.') ;
  End
  else
  Begin
   if MessageDlg('Är du säker?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dmLoadEntrySSP.DeleteOneLoad(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger) ;
   Close ;
  End ;
end;

procedure TfLoadNoLo.acDeleteLoadUpdate(Sender: TObject);
begin
 acDeleteLoad.Enabled:= (dmLoadEntrySSP.cds_LoadPackages.Active) and (dmLoadEntrySSP.cds_LoadPackages.RecordCount = 0) ;
end;

procedure TfLoadNoLo.acPrintFSExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE.RPT')
  else
  Begin
   dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
   dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL(False) ;
   FormCRViewReport.CreateCo('TALLY_VER2_NOTE.RPT') ;
  End ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.acPrintHyvelOrderExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('HYVEL_ORDER.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger);
//  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntrySSP.ShippingPlanSupplierNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.acLOAllaVerkExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.acPrintLOErtVerkExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver2.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntrySSP.cds_LSPSupplierNo.AsInteger);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.acPrintSpecAllaLasterLOExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSP.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntrySSP.cds_LSPSupplierNo.AsInteger);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadNoLo.acPrintFSUpdate(Sender: TObject);
begin
 acPrintFS.Enabled:= DataSaved ;
end;

procedure TfLoadNoLo.acPrintSpecAllaLasterLOUpdate(Sender: TObject);
begin
 acPrintSpecAllaLasterLO.Enabled:= DataSaved ;
end;

procedure TfLoadNoLo.acPrintLOErtVerkUpdate(Sender: TObject);
begin
 acPrintLOErtVerk.Enabled:= DataSaved ;
end;

procedure TfLoadNoLo.acLOAllaVerkUpdate(Sender: TObject);
begin
 acLOAllaVerk.Enabled:= DataSaved ;
end;

procedure TfLoadNoLo.acPrintHyvelOrderUpdate(Sender: TObject);
begin
 acPrintHyvelOrder.Enabled:= DataSaved ;
end;

procedure TfLoadNoLo.acPkgEntryExecute(Sender: TObject);
Var x               : Integer ;
    frmPackageEntry : TfrmPackageEntry ;
//Var frmPkgEntry : TfrmPkgEntry ;
begin
{  dmsPkg:= TdmsPkg.Create(Nil) ;
  dmsPkg.ThisCurrentCompanyNo:= ThisUser.CompanyNo ;
  frmPkgEntry:= TfrmPkgEntry.Create(Nil);
  Try
   frmPkgEntry.ShowModal ; }

 if dmLoadEntrySSP.cds_LoadHeadLoadNo.AsInteger > 0 then
 Begin
 if dmLoadEntrySSP.cdsLORows.RecordCount > 0 then
 Begin
 Try
 dmsProduct:= TdmsProduct.Create(NIL) ;

// if dmLoadEntrySSP.FAvrop_CustomerNo <> -1 then
 if FShipping = 1 then
 Begin //Purchase packages get external supplier SupplierCode
  dmsProduct.SupplierNo     := FOrderClientNo ;//dmLoadEntrySSP.FAvrop_CustomerNo ;
  dmsProduct.SupplierCode   := //dmsContact.GetSupplierCode(dmLoadEntrySSP.mtLoadShippingPlanLoadingLocationNo.AsInteger) ;
  dmsContact.GetClientCode(FOrderClientNo) ;//dmLoadEntrySSP.FAvrop_CustomerNo) ;

  dmsProduct.OrderType          := c_Purchase ;
  dmsProduct.InventoryOwnerNo   := dmLoadEntrySSP.FCustomerNo ;//dmLoadEntrySSP.FSupplierNo ;

  if bcPhysInventory.Properties.Items.Count > 0 then
  dmsProduct.InventoryNo        := integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) ;

  if bcLogicalInventory.Properties.Items.Count > 0 then
  dmsProduct.LIPNo        := integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;

{  dmsSystem.sq_GetInventoryNo.Close ;
  dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := dmLoadEntrySSP.FCustomerNo ;//dmLoadEntrySSP.FSupplierNo ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmsProduct.InventoryNo        := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ; }
 End
 else
 Begin
  dmsProduct.OrderType        := c_Sales ;
  dmsProduct.InventoryNo      := dmLoadEntrySSP.cds_LSPShipToInvPointNo.AsInteger ;
  dmsProduct.SupplierNo       := dmLoadEntrySSP.FSupplierNo ;
//  dmsProduct.SupplierCode:= dmsContact.GetClientCode(dmLoadEntrySSP.FSupplierNo) ;
  dmsProduct.SupplierCode     := dmsContact.GetSupplierCode(dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger) ;

  dmsProduct.InventoryOwnerNo := dmLoadEntrySSP.FSupplierNo ;

  if bcPhysInventory.Properties.Items.Count > 0 then
  dmsProduct.InventoryNo        := integer(bcPhysInventory.Properties.Items.Objects[bcPhysInventory.ItemIndex]) ;

  if bcLogicalInventory.Properties.Items.Count > 0 then
  dmsProduct.LIPNo        := integer(bcLogicalInventory.Properties.Items.Objects[bcLogicalInventory.ItemIndex]) ;

{  dmsSystem.sq_GetInventoryNo.Close ;
  dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := dmLoadEntrySSP.FSupplierNo ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmsProduct.InventoryNo := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ; }
 End ;

 dmsProduct.mtLO_Records.Active:= True ;
 dmLoadEntrySSP.cdsLORows.First ;
 While not dmLoadEntrySSP.cdsLORows.Eof do
 Begin
  dmsProduct.mtLO_Records.Insert ;
  Try
  For x := 0 to 27 do
    dmsProduct.mtLO_Records.Fields.Fields[x].AsVariant  := dmLoadEntrySSP.cdsLORows.Fields.Fields[x].AsVariant ;
    dmsProduct.mtLO_RecordsMATCH.AsInteger              := 0 ;
    dmsProduct.mtLO_RecordsINCH_THICK.AsFloat           := StrToFloatDef(dmLoadEntrySSP.cdsLORowsINCH_THICK.AsString,0) ;
    dmsProduct.mtLO_RecordsINCH_WIDTH.AsFloat           := StrToFloatDef(dmLoadEntrySSP.cdsLORowsINVCH_WIDTH.AsString,0) ;
    dmsProduct.mtLO_RecordsOverrideRL.AsInteger         := dmLoadEntrySSP.cdsLORowsOverrideRL.AsInteger ;
    dmsProduct.mtLO_Records.Post ;
  Except
   on eDatabaseError do
   Raise ;
  End ;
  dmLoadEntrySSP.cdsLORows.Next ;
 End ; //while


 frmPackageEntry:= TfrmPackageEntry.Create(Nil);
 Try
  frmPackageEntry.ShowModal ;
  if frmPackageEntry.SavePkgs = True then
   acValidateAllPkgsExecute(Sender) ;

 Finally
  dmsProduct.mtpackages.Active:= False ;
//  dmsProduct.mtLoadDetailMatchLE.Active:= False ;
  FreeAndNil(frmPackageEntry) ; //.Free ;// .FreeANDNIL ;
//  frmPackageEntry:= Nil ;
 End ;

 Finally
  FreeAndNil(dmsProduct) ;//.Free ;
//  dmsProduct:= Nil ;
 End ;

 End
 else
  ShowMessage('Lägg till en LO först.') ;
End
 else
  ShowMessage('Spara lasten först.') ;
end;

procedure TfLoadNoLo.acPkgEntryUpdate(Sender: TObject);
begin
 acPkgEntry.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadNoLo.acStreckKodsinlasningExecute(Sender: TObject);
var fScanLoadPkgNo: TfScanLoadPkgNo ;
begin
 fScanLoadPkgNo:= TfScanLoadPkgNo.Create(Nil);
 Try
  fScanLoadPkgNo.EgenPkgSupplierCode:= dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
  fScanLoadPkgNo.cbEgenLevKod.Caption:= 'Scanna endast in paket med leverantörskod '+fScanLoadPkgNo.EgenPkgSupplierCode ;
  fScanLoadPkgNo.ShowModal ;
  acValidateAllPkgsExecute(Sender) ;
  acSaveLoad.Enabled:= True ;
 Finally
  fScanLoadPkgNo.Free ;
 End ;
end;

procedure TfLoadNoLo.acPktNrSerieExecute(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
   if cds_LoadPackages.State <> dsBrowse then
    Try
    cds_LoadPackages.Post ;
    Except
     on eDatabaseError do
     Begin
      Raise ;
     End ;
    End ;
    InsertPkgSerie(Sender) ;
 End ;
end;

procedure TfLoadNoLo.acPktNrSerieUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acPktNrSerie.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.acAddLOUpdate(Sender: TObject);
begin
 acAddLO.Enabled:= (LoadEnabled) ;
end;

procedure TfLoadNoLo.acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acKopplaPaketMotLOManuellt.Enabled:= (cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.acTaBortPaketPerPaketKodExecute(Sender: TObject);
Var x : Integer ;
   Save_Cursor : TCursor;
   fEntryField : TfEntryField ;
begin
 With dmLoadEntrySSP do
 Begin
  x := 0 ;
  fEntryField:= TfEntryField.Create(Nil);
  Try
  if fEntryField.ShowModal = mrOK then
  Begin
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }

   Try
   cds_LoadPackages.Filter:= 'packagecodeno = '+QuotedStr(cdsLORowsPKGCODE.AsString) ;
   cds_LoadPackages.Filtered:= True ;
   cds_LoadPackages.Last ;
   While (not cds_LoadPackages.Bof) and (strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) > x) do
   begin
    if dmLoadEntrySSP.cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
    lbRemovePackageClick(Sender)
    else
    Begin
     lbRemovePackageClick(Sender) ;
     cds_LoadPackages.Prior ;
    End ;
    x:= succ(x) ;
   end ;

   Finally
    cds_LoadPackages.Filtered:= False ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   End ;
  End ;
  Finally
   FreeAndNil(fEntryField) ;//.Free ;
  End ;
 End ;
end;

procedure TfLoadNoLo.acTaBortPaketPerPaketKodUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acAddPkgByPkgCode.Enabled:= (cds_LoadPackages.RecordCount > 0) and (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.acStreckKodsinlasningUpdate(Sender: TObject);
begin
 With dmLoadEntrySSP do
 Begin
  acStreckKodsinlasning.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadNoLo.Get_LO_LookUp_SQL (const AVROP_CUSTOMERNO, Shipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer) ;
Begin
 With dmLoadEntrySSP.sq_LO_LookUp.SQL do
 Begin
  Clear ;
//SALES normal LO
  if Shipping = 0 then
  Begin
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;



  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 0') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;

//UNION
  Add('UNION') ;

//Add och interna LO
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add(QuotedStr('')+'  AS CUSTOMER,') ;
  Add(QuotedStr('')+'  AS ORDERNO,') ;
  Add(QuotedStr('SALES')+' AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('-1 AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;


  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;
  Add('AND SSP.ObjectType < 2') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;
  End
  else

  if Shipping = 1 then
  Begin
//UNION
//  Add('UNION') ;

  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('1                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
  Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 1') ;

  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if AVROP_CUSTOMERNO <> -1 then
  Add('AND CSH.CustomerNo = '+inttostr(AVROP_CUSTOMERNO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;
  End
  else
  if Shipping = -1 then
  Begin
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 0') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;

//UNION
  Add('UNION') ;

//Add och interna LO
  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('0                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add(QuotedStr('')+'  AS CUSTOMER,') ;
  Add(QuotedStr('')+'  AS ORDERNO,') ;
  Add(QuotedStr('SALES')+' AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('-1 AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;


  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;
  Add('AND SSP.ObjectType < 2') ;

  if LoadingLocationNo <> -1 then
  Add('AND SSP.LoadingLocationNo = '+IntToStr(LoadingLocationNo)) ;
  if ShipToInvPointNo <> -1 then
  Add('AND SSP.ShipToInvPointNo = '+IntToStr(ShipToInvPointNo)) ;
  if SupplierNo <> -1 then
  Add('AND SSP.SupplierNo = '+IntToStr(SupplierNo)) ;
  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;

//UNION
  Add('UNION') ;

  Add('SELECT DISTINCT SSP.ShippingPlanStatus,') ;
  Add('1                         AS SHIPPING,') ;
  Add('SSP.ShippingPlanNo,') ;
  Add('SSP.CustomerNo,') ;
  Add('C.ClientName              AS CUSTOMER,') ;
  Add('OH.OrderNoText					  AS ORDERNO,') ;
  Add('CASE') ;
  Add('WHEN OH.OrderType = 1 then '+QuotedStr('PURCHASE')) ;
  Add('WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
  Add('ELSE '+QuotedStr('')) ;
  Add('END AS ORDERTYPE,') ;
  Add('SSP.SupplierNo,') ;
  Add('Supp.ClientName           AS SUPPLIER,') ;
  Add('Cust.ClientName           AS LOCAL_CUST,') ;
  Add('IName.CityName            AS LoadingLocation,') ;
  Add('STo.CityName              AS SHIP_TO,') ;
  Add('SSP.OBJECTTYPE,') ;
  Add('CSH.CustomerNo            AS AVROP_CUSTOMERNO,') ;
  Add('SSP.LoadingLocationNo,') ;
  Add('SSP.ShipToInvPointNo, SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

  Add('FROM dbo.SupplierShippingPlan SSP') ;
  Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
  Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;
  Add('Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
  Add('Inner Join dbo.Client		Cust 	ON  	Cust.ClientNo	= SSP.CustomerNo') ;
  Add('left outer JOIN dbo.Client_LoadingLocation CLL ON	CLL.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
  Add('                                              AND CLL.ClientNo          = SSP.SupplierNo') ;
  Add('Left outer Join dbo.City STo			ON	STo.CityNo = SSP.ShipToInvPointNo') ;
  Add('Left Outer JOIN dbo.City IName			ON	IName.CityNo = SSP.LoadingLocationNo') ;

  Add('Left Outer Join dbo.CustomerShippingPlanHeader  CSH') ;
  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders    OH        ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('                          ON CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('((SSP.ShippingPlanStatus > 0') ;
  Add('AND SSP.ShippingPlanStatus < 4') ;
  Add('AND SSP.ShippingPlanStatus <> 2)') ;
  Add('OR SSP.ShippingPlanStatus = 6)') ;

  Add('AND CSH.ShippingPlanStatus = 1') ;
  Add('AND SSP.ObjectType = 2') ;
  Add('AND OH.OrderType = 1') ;

  if LO_NO <> -1 then
  Add('AND SSP.ShippingPlanNo = '+IntToStr(LO_NO)) ;

  if AVROP_CUSTOMERNO <> -1 then
  Add('AND CSH.CustomerNo = '+inttostr(AVROP_CUSTOMERNO)) ;

  if CustomerNo <> -1 then
  Add('AND SSP.CustomerNo = '+IntToStr(CustomerNo)) ;
  End ;

//  if ThisUser.UserID = 8 then SaveToFile('sq_LO_LookUp.TXT') ;


{Order by SSP.ShippingPlanStatus, SSP.ShippingPlanNo }
 End ;//with
End ;

procedure TfLoadNoLo.grdLORowsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
//  AColumn: TcxCustomGridTableItem;
  Match : integer;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] <> null then
 Match:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] ;
 if Match = 1 then
 AStyle:= cxStyleSilver ;
end;

procedure TfLoadNoLo.grdPkgsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  PackageOK,
  Pkg_Function,
  OverrideRL : Integer;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('OverrideRL').Index] <> null then
 OverrideRL:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('OverrideRL').Index] ;

 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK').Index] <> null then
 PackageOK:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK').Index] ;
 Case PackageOK of
  1,2,3,4,5,6,7,8,9,10,11,12 : AStyle := cxStyleRed ;
  VP_LengthNotInLengthGroup  :
  Begin
   if OverrideRL = 1 then
    AStyle := cxStyleYellow
     else
      AStyle := cxStyleRed ;
  End ;
 End ;

 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] <> null then
 Pkg_Function:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] ;
 Case Pkg_Function of
   REMOVE_PKG_FROM_LOAD : AStyle := cxStyleBlue ;
   DELETE_PKG           : AStyle := cxStyleAqua ;
 End ;
end;

procedure TfLoadNoLo.acChangePKGLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadNoLo.acChangeLORowLayoutExecute(Sender: TObject);
begin
  if grdLORows.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLORows.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadNoLo.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadNoLo.grdPkgsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 if grdPkgsDBBandedTableView1.OptionsView.NewItemRow then
 AAllow := grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused
 else
 AAllow:= True ;
end;

procedure TfLoadNoLo.acShowNewRowExecute(Sender: TObject);
begin
 grdPkgsDBBandedTableView1.OptionsView.NewItemRow:= not grdPkgsDBBandedTableView1.OptionsView.NewItemRow ;
end;

procedure TfLoadNoLo.grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 With dmLoadEntrySSP do
 Begin
  if Key = VK_DOWN then
  Begin
   if grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused then
   if cds_LoadPackages.State in [dsInsert, dsEdit] then
//   cds_LoadPackages.Post ;
   cds_LoadPackages.Insert ;
  End
   else
    if Key = VK_RETURN then
     if cds_LoadPackages.State in [dsInsert] then ;
 End ;//with
end;

procedure TfLoadNoLo.acImportPackagesExecute(Sender: TObject);
Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.TabSheet2.TabVisible:= False ;
  XMLImportExport.ShowModal ;
  if XMLImportExport.ImportOfPkgsOK then //ShowModal = mrOK then
  Begin
   DeliveryMessageNumber:= XMLImportExport.DeliveryMessageNumber ;
   ShowPackages (Sender, DeliveryMessageNumber);
  End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TfLoadNoLo.ShowPackages (Sender: TObject;const DeliveryMessageNumber : String);
var fImportedPackages: TfImportedPackages;
Begin
 dmsProduct:= TdmsProduct.Create(Nil);
 Try
 fImportedPackages:= TfImportedPackages.Create(nil);
 try
  fImportedPackages.DeliveryMessageNumber                               := DeliveryMessageNumber ;
  dmsProduct.SupplierNo                                                 := FOrderClientNo ;
  dmsProduct.SupplierCode                                               := dmsContact.GetClientCode(FOrderClientNo) ;

  dmsProduct.OrderType                                                  := c_Purchase ;


//Lars 2 Aug 2007
  //  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSP.FSupplierNo ;
  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSP.FCustomerNo ;

  dmsSystem.sq_GetInventoryNo.Close ;
  dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := dmLoadEntrySSP.FCustomerNo ;//dmLoadEntrySSP.FSupplierNo ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSP.cds_LSPLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmsProduct.InventoryNo                                                := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ;


  dm_ImportWoodx.mtLoadProducts.Active:= True ;
  dmLoadEntrySSP.cdsLORows.First ;
  While not dmLoadEntrySSP.cdsLORows.Eof do
  Begin
   dm_ImportWoodx.mtLoadProducts.Insert ;
   dm_ImportWoodx.mtLoadProductsProductDisplayName.AsString := dmLoadEntrySSP.cdsLORowsPRODUCTDESCRIPTION.AsString ;
   dm_ImportWoodx.mtLoadProductsProductNo.AsInteger         := dmLoadEntrySSP.cdsLORowsPRODUCTNo.AsInteger ;
   dm_ImportWoodx.mtLoadProducts.Post ;
   dmLoadEntrySSP.cdsLORows.Next ;
  End ;

  fImportedPackages.ShowModal ;
  if fImportedPackages.AddPackagesToLoad then
   InsertImportedPkgs(Sender) ;

 finally
  FreeAndNil(fImportedPackages) ;
 end;
 Finally
  FreeAndNil(dmsProduct) ;
 End ;
End ;

procedure TfLoadNoLo.InsertImportedPkgs(Sender: TObject) ;
Var Save_Cursor : TCursor;
begin
 With dmLoadEntrySSP, dmsProduct do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  Try
  cds_LoadPackages.DisableControls ;
   Try
    mtPackages.First ;
    While not mtPackages.Eof do
    Begin
     ScanningEgnaPkgNo(Sender, mtPackages.Fields[cPACKAGENO].AsString, Trim(mtPackages.Fields[cSUPPLIERCODE].AsString)) ;
     mtPackages.Next ;
    End ;//While

    acValidateAllPkgsExecute(Sender) ;

   Finally
    cds_LoadPackages.EnableControls ;
   End ;
  Finally
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; // with
End ;

procedure TfLoadNoLo.acImportPackagesUpdate(Sender: TObject);
begin
 acImportPackages.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

function TfLoadNoLo.AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;



//     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;
//     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger   := PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString := PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackagesShippingPlanNo.AsInteger  := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger       := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString          := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger       := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger    := -1 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger   := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;
      cds_LoadPackagesPCS_PER_LENGTH.AsString   := sq_OnePkgDetailDataPCS_PER_LENGTH.AsString ;
      cds_LoadPackagesNoOfLengths.AsInteger     := sq_OnePkgDetailDataNoOfLengths.AsInteger ;
      cds_LoadPackagesProductLengthNo.AsInteger := sq_OnePkgDetailDataProductLengthNo.AsInteger ;

      cds_LoadPackagesActualThicknessMM.AsFloat := sq_OnePkgDetailDataActualThicknessMM.AsFloat ;
      cds_LoadPackagesActualWidthMM.AsFloat     := sq_OnePkgDetailDataActualWidthMM.AsFloat ;
      cds_LoadPackagesSurfacingNo.AsInteger     := sq_OnePkgDetailDataSurfacingNo.AsInteger ;
      cds_LoadPackagesSpeciesNo.AsInteger       := sq_OnePkgDetailDataSpeciesNo.AsInteger ;
      cds_LoadPackagesMainGradeNo.AsInteger     := sq_OnePkgDetailDataMainGradeNo.AsInteger ;
      cds_LoadPackagesALMM.AsFloat              := sq_OnePkgDetailDataALMM.AsFloat ;
      cds_LoadPackagesLIPNo.AsInteger           := sq_OnePkgDetailDataLIPNo.AsInteger ;
      cds_LoadPackagesProductCategoryNo.AsInteger:= sq_OnePkgDetailDataProductCategoryNo.AsInteger ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
//LM    cds_LoadPackages.Post ;
//    if cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
      ShowMessage('Paketnr finns redan i lasten.') ;
      cds_LoadPackages.Cancel ;
     End ;
    End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
  End ;
 End ; //with
end;

procedure TfLoadNoLo.ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
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
   AddSelectedPkgDataTo_cds_LoadPackages(Sender, PkgNo,PkgSupplierCode) ;
   if dmLoadEntrySSP.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo_WhenPickPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
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

function TfLoadNoLo.AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo,
  SuppShipPlanObjectNo  : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
  OverrideRL            : Integer ;
Begin
 With dmLoadEntrySSP do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntrySSP.cdsLORows.First ;
   LO_Number:= dmLoadEntrySSP.cdsLORowsShippingPlanNo.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog,
    LO_Number, OverrideRL, ProductNo, ProductLengthNo, NoOfLengths );

    cds_LoadPackagesOverrideRL.AsInteger                 := OverrideRL ;

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'Längd matchar ej längdgruppen' ;
                     End ;
        ALL_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= ALL_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        BAD_PKG    : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_PKG ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'BAD_PKG';
                     End ;
{        PKG_OK     : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= PKG_OK ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'OK';
                     End ;
        NO_PRODUCT : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= NO_PRODUCT ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'NO MATCHING LO';
                     End ; }
        BAD_LENGTH : Begin
                      cds_LoadPackagesPackageOK.AsInteger:= BAD_LENGTH ;
                      cds_LoadPackagesProblemPackageLog.AsString:= 'BAD_LENGTH ';
                     End ;
        VP_BadThickness : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadThickness ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadWidth : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadWidth ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadGrade : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadGrade ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSurfacing : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSurfacing ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadSpecies : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadSpecies ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_BadIMP     : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_BadIMP ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;

    if (ValidPackage = ALL_OK) or
    ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
//    and (dmLoadEntrySSP.cds_LSPObjectType.AsInteger <> 2)) then
//    and (cdsLORowsOverrideRL.AsInteger = 1)) then
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
//    if ValidPackage <> BAD_PKG then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesShippingPlanNo.AsInteger             := LO_Number ;
//     cds_LoadPackagesOverrideRL.AsInteger                 := cdsLORowsOverrideRL.AsInteger ;
    End
    else
    Begin
    if LO_Number > 0 then
     cds_LoadPackagesShippingPlanNo.AsInteger:= LO_Number ;
     cds_LoadPackagesDefsspno.AsInteger                   := -1 ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
     cds_LoadPackagesOverrideRL.AsInteger                 := 0 ;
    End ;

    Try
//    cds_LoadPackages.Post ;
    Except
//     On E : DatabaseError('Duplicate package number', cds_LoadPackages) ;
     on eDatabaseError do
     Begin
      Raise ;
     ShowMessage('Paketnr finns redan i lasten.') ;
     cds_LoadPackages.Cancel ;
     End ;
    End ; //Except
   end ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

procedure TfLoadNoLo.acCreateInternLOExecute(Sender: TObject);
Var LONo : Integer ;
begin
 With dmLoadEntrySSP do
 Begin
//Skapa ny Intern LO utifrån valda paket
//CreateLO(LoadNo, CustomerNo, DefaultShipToInvPointNo, SalesRegionNo, DefaultLIPNo, SupplierNo, Def_LoadingLocationNo  : Integer) : Integer ;
  LONo:= CreateLO(cds_LoadHeadLoadNo.AsInteger,
      ThisUser.CompanyNo, //CustomerNo
      1, //DefaultShipToInvPointNo
      dmsContact.GetSRByCompanyNo(ThisUser.CompanyNo), //SalesRegionNo
      1, //DefaultLIPNo
      ThisUser.CompanyNo, //SupplierNo
      1) ; //Def_LoadingLocationNo)  ;

 //Temp LOnr skall tas bort
{    cdsLORows.Filter    := 'ShippingPlanNo = '+cds_LSPShippingPlanNo.AsString ;
    cdsLORows.Filtered  := True ;
    cdsLORows.First ;
    While not cdsLORows.Eof do
    Begin
     cdsLORows.Delete ;
    End ;} //while
//   cds_LSP.Edit ;

   cds_LSP.Edit ;
   cds_LSPShippingPlanNo.AsInteger:= LONo ;
   cds_LSP.Post ;
   if cds_LSP.ChangeCount > 0 then
   cds_LSP.ApplyUpdates(0) ;

//AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo, ShipToInvPointNo, LoadingLocationNo);
//  AddLONumberOnOpenTheForm(LONo, 741, 741, 1, 1);
//  if cds_LSP.ChangeCount > 0 then
//   cds_LSP.ApplyUpdates(0) ;

  cdsLORows.Active:= False ;
  sqLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString ;
  cdsLORows.Filtered  := True ;

  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   cds_LoadPackages.Edit ;
   cds_LoadPackagesShippingPlanNo.AsInteger:= cds_LSPShippingPlanNo.AsInteger ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;

  if cds_LoadPackages.ChangeCount > 0 then
   cds_LoadPackages.ApplyUpdates(0) ;

  OpenInternLO(LONo) ;
//Set
 End ;

 //Tilldela värden till variabler
{ sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger       := LO_Number ;
 sq_GetLO_Records.ParamByName('SupplierNo').AsInteger           := FSupplierNo ;
 sq_GetLO_Records.ParamByName('CustomerNo').AsInteger           := FCustomerNo ;
     sq_GetLO_Records.ParamByName('LoadingLocationNo').AsInteger    := cds_LSPLoadingLocationNo.AsInteger ;
     sq_GetLO_Records.ParamByName('ShipToInvPointNo').AsInteger     := cds_LSPShipToInvPointNo.AsInteger ;}
end;

procedure TfLoadNoLo.OpenInternLO(const LO : Integer) ;
//Var Save_Cursor : TCursor;
//    fLOform     : TfLOform;
begin
// dmcLO:= TdmcLO.Create(nil) ;
// Try
//   if Assigned(fLOform) then
//   Begin
//    fLOform.Show ;
//    if fLOform.WindowState = wsMinimized then
//    fLOform.WindowState := wsNormal;
//    fLOform.BringToFront;
//   End
//   else
//   if dmcLO.cds_LO.RecordCount > 0 then
//   Begin
//   Save_Cursor := Screen.Cursor;
//   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
//   Try
    fLOform := TfLOform.Create(Nil) ;
    Try
    dmcLO.cds_IntHdr.Active:= False ;
    dmcLO.sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= LO ;
    dmcLO.cds_IntHdr.Active:= True ;

    dmcLO.cds_LO.Active:= False ;
    dmcLO.cds_LO.Active:= True ;

//    dmcLO.cds_ELOLayout.Active:= False ;
//    dmcLO.cds_ELOLayout.Active:= True ;

//    dmcLO.cds_ELOLengths.Active:= False ;
//    dmcLO.cds_ELOLengths.Active:= True ;

//    dmcLO.cds_ProdInstruct.Active:= False ;
//    dmcLO.sq_ProdInstruct.ParamByName('ShippingPlanNo').AsInteger:= LO ;
//    dmcLO.cds_ProdInstruct.Active:= True ;

//    dmcLO.cds_ProdInstruct.Filtered:= True ;
    fLOform.ShowModal ;
//    if fLOform.WindowState = wsMinimized then
//    fLOform.WindowState := wsNormal;
//    fLOform.BringToFront;
//    Application.ProcessMessages ;
   Finally
    FreeAndNil(fLOform) ;
//    fLOform:= NIL ;
//    Screen.Cursor := Save_Cursor ;
//    fLOform.SetFocus ;
   End ;
//   End ;
// Finally
//  FreeAndNil(dmcLO) ;
// End ;
end;

end.
