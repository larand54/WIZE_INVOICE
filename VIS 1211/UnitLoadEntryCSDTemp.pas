unit UnitLoadEntryCSDTemp ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar,

  VidaType, db,
  kbmMemTable, StdCtrls, ImgList, SqlTimSt, cxPC, cxControls,
  Grids, DBGrids, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, ActnList, cxGraphics, cxLabel,
  cxImageComboBox, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo,
  dxBarExtItems, Menus, cxLookAndFeelPainters, cxButtons, cxSplitter,
  cxCalc, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter ;

type
  TfLoadEntryCSDTemp = class(TForm)
    dxBarManager1: TdxBarManager;
    dxPageControl1: TcxPageControl;
    tsLoadData: TcxTabSheet;
    pLoadHead: TPanel;
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
    detLoaded: TcxDBDateEdit;
    acPickPkgNos: TAction;
    PanelToolbar: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    PanelLORows: TPanel;
    Panel1: TPanel;
    PanelPackages: TPanel;
    Panel2: TPanel;
    acSaveLoad: TAction;
    PanelLager: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
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
    grdLODBTableView1CustomerNo: TcxGridDBColumn;
    grdLODBTableView1ObjectType: TcxGridDBColumn;
    grdLODBTableView1SUPPLIER: TcxGridDBColumn;
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
    acGetTallyOfLoadPlan: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    acInmatningsrad: TAction;
    dxBarButton1: TdxBarButton;
    grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    acClose: TAction;
    acPrint: TAction;
    acSaveAndOK: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    acPrintMeny: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    pmPrint: TdxBarPopupMenu;
    grdPkgsDBBandedTableView1Column1: TcxGridDBBandedColumn;
    ImageList1: TImageList;
    acSetStatusPrelAndSave: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    acSend700: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    lcPIP: TcxDBLookupComboBox;
    lcLIP: TcxDBLookupComboBox;
    cxStyleGreen: TcxStyle;
    acSetLoadToNormal: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    acGetFileFromHTF: TAction;
    acSetPkgAsFixed: TAction;
    dxBarButton2: TdxBarButton;
    grdPkgsDBBandedTableView1CustomPcs: TcxGridDBBandedColumn;
    lcLeveransAdress: TcxDBLookupComboBox;
    Label9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label12: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDepartAdress: TcxDBLookupComboBox;
    Label13: TLabel;
    tsTransferFiles: TcxTabSheet;
    Panel3: TPanel;
    cxButton2: TcxButton;
    grdTransferFilesDBTableView1: TcxGridDBTableView;
    grdTransferFilesLevel1: TcxGridLevel;
    grdTransferFiles: TcxGrid;
    grdTransferFilesDBTableView1FileName: TcxGridDBColumn;
    grdTransferFilesDBTableView1TransferType: TcxGridDBColumn;
    grdTransferFilesDBTableView1DateCreated: TcxGridDBColumn;
    grdTransferFilesDBTableView1CreatedUser: TcxGridDBColumn;
    grdTransferFilesDBTableView1Complete: TcxGridDBColumn;
    grdTransferFilesDBTableView1SendDate: TcxGridDBColumn;
    grdTransferFilesDBTableView1LONo: TcxGridDBColumn;
    grdTransferFilesDBTableView1HTF_FS: TcxGridDBColumn;
    grdTransferFilesDBTableView1LoadNo: TcxGridDBColumn;
    grdTransferFilesDBTableView1Meddelande: TcxGridDBColumn;
    grdTransferFilesDBTableView1InOut: TcxGridDBColumn;
    acRefreshTransferFiles: TAction;
    Label17: TLabel;
    Label18: TLabel;
    teTransportHandler: TcxDBTextEdit;
    teEndUserRequisition: TcxDBTextEdit;
    Label15: TLabel;
    Label16: TLabel;
    teNoteLine6: TcxDBTextEdit;
    teNoteLine5: TcxDBTextEdit;
    teNoteLine4: TcxDBTextEdit;
    Label14: TLabel;
    btnCreateAddress: TcxButton;
    acCreateAddress: TAction;

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
    procedure acAddPkgUpdate(Sender: TObject);
    procedure acAddPkgByPkgCodeUpdate(Sender: TObject);
    procedure acPickPkgNosExecute(Sender: TObject);
    procedure acPickPkgNosUpdate(Sender: TObject);
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
    procedure acPrintFSUpdate(Sender: TObject);
    procedure acPrintSpecAllaLasterLOUpdate(Sender: TObject);
    procedure acPrintLOErtVerkUpdate(Sender: TObject);
    procedure acLOAllaVerkUpdate(Sender: TObject);
    procedure acPrintHyvelOrderUpdate(Sender: TObject);
    procedure acPkgEntryUpdate(Sender: TObject);
    procedure acStreckKodsinlasningExecute(Sender: TObject);
    procedure acPktNrSerieExecute(Sender: TObject);
    procedure acPktNrSerieUpdate(Sender: TObject);
    procedure acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
    procedure acTaBortPaketPerPaketKodExecute(Sender: TObject);
    procedure acTaBortPaketPerPaketKodUpdate(Sender: TObject);
    procedure acStreckKodsinlasningUpdate(Sender: TObject);
    procedure grdLORowsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdPkgsDBBandedTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acChangePKGLayoutExecute(Sender: TObject);
    procedure acChangeLORowLayoutExecute(Sender: TObject);
    procedure acChangeLOLayoutExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1Editing(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var AAllow: Boolean);
    procedure acInmatningsradExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acPkgEntryExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acSaveAndOKExecute(Sender: TObject);
    procedure acSaveAndOKUpdate(Sender: TObject);
    procedure lcToExit(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acSetStatusPrelAndSaveExecute(Sender: TObject);
    procedure acSend700Execute(Sender: TObject);
    procedure acSend700Update(Sender: TObject);
    procedure acSetStatusPrelAndSaveUpdate(Sender: TObject);
    procedure acSetLoadToNormalExecute(Sender: TObject);
    procedure acSetLoadToNormalUpdate(Sender: TObject);
    procedure acGetFileFromHTFExecute(Sender: TObject);
    procedure acGetFileFromHTFUpdate(Sender: TObject);
    procedure acSetPkgAsFixedExecute(Sender: TObject);
    procedure acSetPkgAsFixedUpdate(Sender: TObject);
    procedure acRefreshTransferFilesExecute(Sender: TObject);
    procedure acCreateAddressExecute(Sender: TObject);

  private
    { Private declarations }
     LoadEnabled, AddingPkgsFromPkgEntry : Boolean ;
     function  NoOfPkgsInLoad : Integer ;
     procedure GetFileFromHTF ;
     procedure SetPackagesToChanged ;
     function  ControlInvDate : Boolean ;
     procedure ValidateAllPkgs ;
     procedure AddPkg ;
     procedure SaveLoad ;
     procedure SetLoadEnabled ;
     Procedure Get_LO_LookUp_SQL (const LO_NO, SalesRegionNo, CustomerNo : Integer) ;
     function  DataSaved : Boolean ;
     procedure GetMarkedPkgs ;
     procedure SetLoadRowToChanged ;
     procedure InsertPkgNo(Sender: TObject) ;
     procedure CloseDataSets;

     function IdentifyPackageSupplier(
          const PkgNo,
          SupplierNo: Integer;
          var PkgSupplierCode: String3;
          var PkgSupplierNo: Integer;
          Var ProductNo : Integer;
          Var Res_UserName : String;
          Var ProductLengthNo, NoOfLengths : Integer) : TEditAction;


     function  ValidatePkg(const PkgNo : Integer;const PkgSupplierCode : String3;
                             const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
     Procedure GetLO_Records_AfterAddingLO_Number(const LO_Number : Integer) ;
     function  AddLoadDetailMatchByProductNo(const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
     procedure InsertPkgSerie(Sender: TObject) ;
     function  ValidatePkgInSerie(Sender: TObject; const PkgNo: Integer) : TEditAction ;
     procedure AddLONumberOnOpenTheForm(const LO_NO, SalesRegionNo : Integer) ;

     function  ValidatePackage_ver2(
     Var CustcdsNo : Integer;
     PkgSupplier : string3;
     PkgNo       : Integer;
//     var SuppShipPlanObjectNo      : Integer;
     Var PkgLog        : String;
     var LO_Number    : Integer;
     const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer;

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

     //Anv�nds vid plocka paketnr
     procedure ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
     //Anv�nds vid plocka paketnr
     function AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
        const PkgNo : Integer;
        const PkgSupplierCode : String3) : TEditAction ;
     //Anv�nds vid plocka paketnr
     function AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;

     procedure InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;

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
//    FOrderClientNo, FShipping, FShipToInvPointNo, FLoadingLocationNo : Integer ;


    constructor CreateWithNewLoad      (AOwner: TComponent; const CustomerNo, SalesRegionNo, LoadNo, LO_NO : Integer);
    constructor CreateWithExistingLoad (AOwner: TComponent; const CustomerNo, LoadNo, SalesRegionNo : Integer );

    destructor Destroy; override;
    function AfterAddedPkgNo(Sender: TObject;const PkgNo : Integer;const PkgSupplierCode : String3;const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
    procedure ScanningPkgNo(Sender: TObject; PkgNo : String) ;
    procedure ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
  end;

 var  fLoadEntryCSDTemp: TfLoadEntryCSDTemp;

implementation

uses VidaConst, dlgPickPkg,
    dmsVidaContact, VidaUser, UnitCRViewReport, UnitPkgInfo,
    UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcVidaSystem , uPickPkgNo,
    uScanLoadPkgNo, uEntryField, dmsDataConn, dmcLoadEntryCSDTemp,
    dmsVidaProduct, UnitPackageEntry, dmcVidaInvoice, VidaUtils , uWait,
    fShipToAddress;

{$R *.dfm}

{ TfrmLoadEntry }

procedure TfLoadEntryCSDTemp.SetLoadEnabled ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  if dmsSystem.IsLoadInvoiced(cds_LoadHeadLoadNo.AsInteger) then
   LoadEnabled:= False
    else
     LoadEnabled:= True ;

  if (LoadEnabled = False) or (cds_LoadHeadSenderLoadStatus.AsInteger = 2) then
  Begin
   if ThisUser.UserID = 888 then
   Begin
    LoadEnabled:= True ;
    Caption := 'Lasten kan inte �ndras, den �r fakturerad.' ;
   End
   else

   Begin
    MessageBeep(MB_ICONEXCLAMATION);
    if LoadEnabled = False then
    Caption                                               := 'Lasten kan inte �ndras, den �r fakturerad.'
    else
    Caption                                               := 'Lasten kan inte �ndras f�r att status �r "Avslutad"' ;

    LoadEnabled                                           := False ;
    cds_LoadHead.UpdateOptions.ReadOnly                   := True ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := True ;
    cds_LSP.UpdateOptions.ReadOnly                        := True ;
    cds_LoadPackages.UpdateOptions.ReadOnly               := True ;
   End ;
  End
  else
   Begin
    MessageBeep(MB_ICONEXCLAMATION);

    Caption                                               := 'Lasten kan �ndras.' ;

    LoadEnabled                                           := True ;
    cds_LoadHead.UpdateOptions.ReadOnly                   := False ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := False ;
    cds_LSP.UpdateOptions.ReadOnly                        := False ;
    cds_LoadPackages.UpdateOptions.ReadOnly               := False ;
   End ;

   if ThisUser.UserID = 888 then
   Begin
//    LoadEnabled:= True ;
//    Caption := 'Lasten kan inte �ndras, den �r fakturerad.' ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Hidden   := False ;
   End ;

 End ;//with
End ;

function TfLoadEntryCSDTemp.DataSaved : Boolean ;
Begin
 With dmLoadEntryCSDTemp do
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

  if (cds_LoadDelAdress.Active) and (cds_LoadDelAdress.State in [dsEdit, dsInsert]) then
   Result:= False ;
  if (cds_LoadDelAdress.Active) and (cds_LoadDelAdress.ChangeCount > 0) then
   Result:= False ;
 End ;
End ;

constructor TfLoadEntryCSDTemp.CreateWithExistingLoad(AOwner : TComponent;const CustomerNo, LoadNo, SalesRegionNo : Integer);
var
  Save_Cursor : TCursor;
  x           : Integer ;

  Procedure OpenLoadHead ;
  Begin
   With dmLoadEntryCSDTemp do
   Begin
    cds_LoadHead.Active:= False ;
    cds_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    cds_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
   End ;
  End ;

 Procedure GetLO_Records ;
 Begin
   With dmLoadEntryCSDTemp do
   Begin
    cdsLORows.DisableControls ;
    Try
     cdsLORows.Active:= False ;
     cdsLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
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
 // dmLoadEntryCSDTemp.GlobalLoadDetailNo :=  1 + dmLoadEntryCSDTemp.GetMaxLoadDetailNoMaxLoadDetailNo(LoadNo) ;

   With dmLoadEntryCSDTemp do
   Begin
    cds_LoadPackages.DisableControls ;
    Try
     cds_LoadPackages.Active:= False ;
     cds_LoadPackages.ParamByName('LoadNo').AsInteger:= LoadNo ;
     cds_LoadPackages.Active:= True ;
    Finally
     cds_LoadPackages.EnableControls ;
    End ;
   End ;//with
 End ;

Procedure Generate_LSP_Sales_SQL ;
Begin
   With dmLoadEntryCSDTemp do
   Begin
    cds_LSP.SQL.Clear ;
    cds_LSP.SQL.Add(' SELECT DISTINCT') ;
    cds_LSP.SQL.Add('0 AS Shipping,') ;
    cds_LSP.SQL.Add('LS.LoadNo,') ;
    cds_LSP.SQL.Add('SSP.SupplierNo,') ;
    cds_LSP.SQL.Add('LS.ShippingPlanNo,') ;
    cds_LSP.SQL.Add('C.ClientName AS CUSTOMER,') ;

    cds_LSP.SQL.Add('SC.ClientName					AS SHIPPER,') ;
    cds_LSP.SQL.Add('isNull(Bk.PreliminaryRequestedPeriod,'+QuotedStr(' ')+')	AS READYDATE,') ;
    cds_LSP.SQL.Add('isNull(Cr.CarrierName,'+QuotedStr(' ')+ ')			AS VESSEL,') ;
    cds_LSP.SQL.Add('Vg.ETD						AS ETD,') ;
    cds_LSP.SQL.Add('Vg.ETA						AS ETA,') ;

    cds_LSP.SQL.Add('Bk.SupplierReference				AS SHIPPER_REF,') ;
    cds_LSP.SQL.Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,') ;
    cds_LSP.SQL.Add('Bk.ShippersShipDate				AS SHIPPERS_SHIPDATE,') ;
    cds_LSP.SQL.Add('Bk.ShippersShipTime				AS SHIPPERS_SHIPTIME,') ;
    cds_LSP.SQL.Add('OH.OrderNoText					AS ORDERNO,') ;
    cds_LSP.SQL.Add('CASE WHEN OH.OrderType = 0 then '+QuotedStr('SALES')) ;
    cds_LSP.SQL.Add('ELSE '+QuotedStr('PURCHASE')) ;
    cds_LSP.SQL.Add('END AS ORDERTYPE,') ;
    cds_LSP.SQL.Add('LS.CreatedUser,') ;
    cds_LSP.SQL.Add('LS.ModifiedUser,') ;
    cds_LSP.SQL.Add('LS.DateCreated,') ;
    cds_LSP.SQL.Add('SSP.CustomerNo,') ;
    cds_LSP.SQL.Add('Supp.ClientName AS SUPPLIER,') ;
    cds_LSP.SQL.Add('LocCust.ClientName AS LOC_CUST,') ;
    cds_LSP.SQL.Add('SSP.ObjectType,') ;
    cds_LSP.SQL.Add('CSH.CustomerNo AS Avrop_CustomerNo,') ;
    cds_LSP.SQL.Add('SSP.LoadingLocationNo,') ;
    cds_LSP.SQL.Add('SSP.ShipToInvPointNo,') ;
    cds_LSP.SQL.Add('Loading.CityName AS LOADING_LOCATION,') ;
    cds_LSP.SQL.Add('OH.SalesRegionNo, 0 AS "Function",') ;
    cds_LSP.SQL.Add('CSH.LoadingLocationNo AS LoadingPIPNo, CSH.LoadingLIPNo') ;


    cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    cds_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;

    cds_LSP.SQL.Add('   Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    cds_LSP.SQL.Add('        						                        AND 	SSP.SupplierNo = L.SupplierNo') ;
    cds_LSP.SQL.Add('                                            AND 	SSP.CustomerNo = L.CustomerNo') ;
    cds_LSP.SQL.Add('                                            AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    cds_LSP.SQL.Add('                                            AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo') ;

    cds_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH') ;
    cds_LSP.SQL.Add('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
    cds_LSP.SQL.Add('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
    cds_LSP.SQL.Add('  AND OH.OrderType = 0') ;
    cds_LSP.SQL.Add('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;


    cds_LSP.SQL.Add('  LEFT OUTER JOIN dbo.Booking		Bk') ;

//    cds_LSP.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo') ;

    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    cds_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    cds_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('WHERE') ;



      cds_LSP.SQL.Add('LS.LoadNo = '+IntToStr(LoadNo)) ;
//      cds_LSP.SQL.Add('AND L.SupplierNo = '+IntToStr(FSupplierNo)) ;
//      cds_LSP.SQL.Add('AND L.CustomerNo = '+IntToStr(FCustomerNo)) ;



//    if ThisUser.UserID = 8 then     cds_LSP.SQL.SaveToFile('Generate_LSP_Sales_SQL.txt') ;


   End ;
End ;


//Begin with procedure CreateWithExistingLoad(
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(AOwner, 0,SalesRegionNo, LoadNo, -1 {LO_NO});

  With dmLoadEntryCSDTemp do
  Begin
   ds_LoadPackages2.Enabled:= False ;


  OpenLoadHead ;

  FCustomerNo     := cds_LoadHeadCustomerNo.AsInteger ;
  FSalesRegionNo  := cds_LoadHeadSupplierNo.AsInteger ;
  LoadStatus      := cds_LoadHeadSenderLoadStatus.AsInteger ;

  dmsConnector.UpdateMaxSecByLoad(LoadNo) ;

  cds_LSP.Active:= False ;
  cds_LSP.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
  cds_LSP.Active:= True ;

  GetLO_Records ;

  Get_LoadPackages ;

  dmLoadEntryCSDTemp.Get_LO_LinesMatched (dmLoadEntryCSDTemp.mtLoadpackagesPackageNo.AsInteger,
  dmLoadEntryCSDTemp.mtLoadpackagesSUPP_CODE.AsString) ;

  ds_LoadPackages2.Enabled:= True ;

  dmLoadEntryCSDTemp.csdUnit_OpenLagerLookup ;
  cds_LoadHead.Refresh ;

//************' Load PIP & LIP

  SetLoadEnabled ;



 End ; //with
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

constructor TfLoadEntryCSDTemp.CreateWithNewLoad(AOwner: TComponent; const CustomerNo, SalesRegionNo, LoadNo, LO_NO : Integer);
Var x               : Integer ;
    ReservedByUser  : String ;
begin
  inherited Create(AOwner);
  dmLoadEntryCSDTemp:= TdmLoadEntryCSDTemp.Create(Nil);

  LoadEnabled:= True ;
  With dmLoadEntryCSDTemp do
  Begin

   cdsLORows.Active                         := False ;
   cdsLORows.ParamByName('LoadNo').AsInteger := -1 ;
   cdsLORows.Active                         := True ;

   FCustomerNo                              := CustomerNo;
   FSalesRegionNo                           := SalesRegionNo ;

   cdsLORows.Active                         := False ;
   cdsLORows.ParamByName('LoadNo').AsInteger := -1 ;
   cdsLORows.Active                         := True ;
   cds_LoadPackages.Active                  := True ;

   dmsContact.cdsCities.Active              := False ;
   dmsContact.cdsCities.Active              := True ;
   dmsContact.cds_LocalShipper.Active       := True ;

   cds_LoadHead.Active                      := True ;

   if LoadNo < 1 then
   Begin
    cds_LoadHead.Insert ;
    cds_LoadHeadSenderLoadStatus.AsInteger    := 0 ;
    cds_LoadHeadLoadedDate.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
    cds_LoadHeadPIPNo.AsInteger               := cds_LSPLoadingPIPNo.AsInteger ;
    cds_LoadHeadLIPNo.AsInteger               := cds_LSPLoadingLIPNo.AsInteger ;
    cds_LoadHeadPackageEntryOption.AsInteger  := 1 ;
    cds_LoadHead.Post ;

    ReservedByUser := dmsSystem.Load_Reserved(cds_LoadHeadLoadNo.AsInteger) ;

    if Length(ReservedByUser) > 0 then
    begin
      ShowMessage('Cannot create, Load is locked by user ' + ReservedByUser) ;
//      Exit ;
    end;
   End ;


   cds_LSP.Active:= True ;
   if LO_NO > 0 then
   Begin
    AddLONumberOnOpenTheForm(LO_NO, FSalesRegionNo);
    GetDefault_cds_LoadDelAdress_Values ;
   End ;

   dmLoadEntryCSDTemp.LogicalTransferInventoryNo:= 0 ;




   //if (cds_LSP.Active) and (cds_LSP.RecordCount > 0) then SaveLoad ;
   if LoadNo < 1 then
   Begin
    SaveLoad ;
   End ;

   pIsLoadInvoiced  := dmsSystem.IsLoadInvoiced(cds_LoadHeadLoadNo.AsInteger) ;
  End ; //with
end;


destructor TfLoadEntryCSDTemp.Destroy;
begin
  CloseDataSets;
  dmLoadEntryCSDTemp.Free ;
  inherited
end;

procedure TfLoadEntryCSDTemp.CloseDataSets;
begin
   With dmLoadEntryCSDTemp do
   Begin
    cds_LoadHead.Active                 := False ;
    cds_LoadHead.Close ;
    cds_LoadPackages.Active             := False ;

//    dmsContact.cdsCities.Active         := False ;
    dmsContact.cds_LocalShipper.Active  := False ;
    sp_TransferFiles.Active             := False ;
   End ;
end;

function TfLoadEntryCSDTemp.AfterAddedPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo             : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntryCSDTemp.cdsLORows.First ;
   LO_Number:= dmLoadEntryCSDTemp.cdsLORowsShippingPlanNo.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo, PkgLog,
    LO_Number, ProductNo, ProductLengthNo, NoOfLengths );

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger         := VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString  := 'L�ngd matchar ej l�ngdgruppen' ;
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
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;

    if (ValidPackage = ALL_OK)  //or (cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup) then
//    if ValidPackage <> BAD_PKG then
    OR ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := -1 ;//SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := CustcdsNo ;
     cds_LoadPackagesShippingPlanNo.AsInteger             := LO_Number ;
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

    End ;
   end ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

   //Kollar om paketet finns i, finns det flera med samma paketnr men olika prefix m�ste ett v�ljas
function TfLoadEntryCSDTemp.IdentifyPackageSupplier(
  const PkgNo,  SupplierNo: Integer;
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
    PkgSupplierCode := dmLoadEntryCSDTemp.PkgNoToSuppCode(PkgNo,
    SupplierNo,
    dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger,
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

function TfLoadEntryCSDTemp.AddLoadDetailMatchByProductNo(const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
begin
 if AddingPkgsFromPkgEntry = False then
 Begin
 With dmLoadEntryCSDTemp do
 Begin
//if packages have multiple lengths then filter on random lengths LO's
//else filter on fixed length LO
//ProductLengthNo, NoOfLengths
 if cds_LoadPackagesVaruslag.AsInteger = 0 then
 Begin
 if cdsLORowsSpeciesNo.AsInteger = FuruGran then
 Begin

    if NoOfLengths > 1 then
    Begin
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
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
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
     +' AND PCSPERPKG = ' + cds_LoadPackagesPCS.AsString ;

     //Try on MainGrade and ProductNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString) ;
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);



    //TRy match on MainGrade Only
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString) ;

    //TRy match on RL med productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on RL utan productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
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
   //Specifikt tr�slag
   Begin
    if NoOfLengths > 1 then
    Begin
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;
{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
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
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString)
     +' AND PCSPERPKG = ' + cds_LoadPackagesPCS.AsString ;

     //Try on MainGrade and ProductNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString) ;
//    +' AND ProductLengthNo = '+IntToStr(ProductLengthNo);



    //TRy match on MainGrade Only
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH = ' + ReplaceCommas(cds_LoadPackagesALMM.AsString) ;

    //TRy match on RL med productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ACT_LENGTH < 1' ;

{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }

     //TRy match on RL utan productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;
{     +' AND (ProductLengthNo = 453'
     +' OR ProductLengthNo = 533'
     +' OR ProductLengthNo = 1960'
     +' OR ProductLengthNo = 1831'
     +' OR ProductLengthNo = 3187'
     +' OR ProductLengthNo = 3190)'            ; }
    End ;
   End ;//Specfikt tr�slag
   End//
   else //Stolp och Pall
   Begin
//    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;
   End ;


   cdsLORows.Filtered:= True ;
   cdsLORows.First ;
   if not cdsLORows.Eof then
   Begin
    Result    := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
//    CustcdsNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   End
   else
    Begin
     Result   := -1 ;
//     CustcdsNo:= -1 ;
    End ;

 End ; //with
 End ;
end;


procedure TfLoadEntryCSDTemp.lbRemoveLONumberClick(Sender: TObject);
begin

end;

//Check if a package in load detail is Valid
function TfLoadEntryCSDTemp.ValidatePkg(const PkgNo : Integer;const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : Integer ;
var
  CustCdsNo             : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
begin
// SuppShipPlanObjectNo:= -1 ;
 CustcdsNo:= -1  ;
 LO_Number:= dmLoadEntryCSDTemp.cdsLORowsShippingPlanNo.AsInteger ;

 //LOLine is the CustCdsNo
 ValidPackage := ValidatePackage_ver2( CustcdsNo, PkgSupplierCode, PkgNo, PkgLog, LO_Number, ProductNo,
 ProductLengthNo, NoOfLengths ) ;

 Result:= ValidPackage ;

   With dmLoadEntryCSDTemp do
   Begin
      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger         := VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString  := 'L�ngd matchar ej l�ngdgruppen' ;
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
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;

    if (ValidPackage = ALL_OK) //or (cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
    OR ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                 := -1 ;//SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := CustcdsNo ;
     cds_LoadPackagesShippingPlanNo.AsInteger           := LO_Number ;
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

procedure TfLoadEntryCSDTemp.lbRemovePackageClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= NIL ;

  if dmLoadEntryCSDTemp.cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
   dmLoadEntryCSDTemp.cds_LoadPackages.Delete
   else
   Begin
    if dmLoadEntryCSDTemp.cds_LoadPackages.State = dsBrowse then
    dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
    dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
    dmLoadEntryCSDTemp.cds_LoadPackagesChanged.AsInteger      := 1 ;
    dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
   End ;

  Finally
   dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntryCSDTemp.ds_LoadPackages2DataChange ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
end;

Procedure TfLoadEntryCSDTemp.GetLO_Records_AfterAddingLO_Number(const LO_Number : Integer) ;
 Var x : integer ;
 Begin
   With dmLoadEntryCSDTemp do
   Begin
    cdsLORows.DisableControls ;
    Try
    if cdsLORows.Active = False then
     cdsLORows.Active:= True ;

     sq_GetLO_Records.ParamByName('ShippingPlanNo').AsInteger:= LO_Number ;
//     sq_GetLO_Records.ParamByName('SupplierNo').AsInteger:= FSupplierNo ;
     sq_GetLO_Records.ParamByName('CustomerNo').AsInteger:= FCustomerNo ;
//     sq_GetLO_Records.ParamByName('LoadingLocationNo').AsInteger:= cds_LSPLoadingLocationNo.AsInteger ;
//     sq_GetLO_Records.ParamByName('ShipToInvPointNo').AsInteger:= cds_LSPShipToInvPointNo.AsInteger ;
     sq_GetLO_Records.Open ;
     While not sq_GetLO_Records.Eof do
     Begin
      cdsLORows.Insert ;
      Try
      For x := 0 to 33 do
       cdsLORows.Fields.Fields[x].AsVariant := sq_GetLO_Records.Fields.Fields[x].AsVariant ;

       cdsLORowsINCH_THICK.AsFloat            := StrToFloatDef(sq_GetLO_RecordsINCH_THICK.AsString,0) ;
       cdsLORowsINVCH_WIDTH.AsFloat           := StrToFloatDef(sq_GetLO_RecordsINVCH_WIDTH.AsString,0) ;
       cdsLORowsOverrideRL.AsInteger          := sq_GetLO_RecordsOverrideRL.AsInteger ;
       cdsLORowsProductCategoryNo.AsInteger   := sq_GetLO_RecordsProductCategoryNo.AsInteger ;
       cdsLORowsVaruSlag.AsInteger            := sq_GetLO_RecordsVaruSlag.AsInteger ;

      cdsLORowsLoadNo.AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
      cdsLORowsMATCH.AsInteger:= 0 ;
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

procedure TfLoadEntryCSDTemp.FormCreate(Sender: TObject);
begin
  dmLoadEntryCSDTemp.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry:= False ;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLO.Name, grdLODBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdLORows.Name, grdLORowsDBBandedTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+grdPkgs.Name, grdPkgsDBBandedTableView1) = False then ;
end;

procedure TfLoadEntryCSDTemp.ResolvePkgNoAmbiguity(
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

procedure TfLoadEntryCSDTemp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var dResult: Integer ;
begin
  if DataSaved = False then
   Begin
   dResult:= MessageDlg('�ndringar �r inte sparade, vill du spara?',
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

   dmsSystem.DelLoad_Res(dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger) ;
   
  End ;
 End ;
end;

procedure TfLoadEntryCSDTemp.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmLoadEntryCSDTemp do
 Begin
  cds_LoadPackages.DisableControls ;
  frmPkgNoSeries:= TfrmPkgNoSeries.Create(Nil) ;
  Try
   if frmPkgNoSeries.ShowModal = mrOk then
   Begin
    NoOfPkgsInSerie:= StrToInt(Trim(frmPkgNoSeries.eToPkgNo.Text))-
    StrToInt(Trim(frmPkgNoSeries.eFromPkgNo.Text)) ;

    if NoOfPkgsInSerie > 100 then
    ResultButton:= MessageDlg(IntToStr(NoOfPkgsInSerie)+' paket l�ggs till lasten, vill du forts�tta?',
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

    End ;//for
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

function TfLoadEntryCSDTemp.ValidatePkgInSerie(Sender: TObject; const PkgNo: Integer) : TEditAction ;
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
      dmLoadEntryCSDTemp.FSalesRegionNo,
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
//   dmLoadEntryCSDTemp.cds_LoadPackages.Last ;
  End
   else
   if Action = eaREJECT then
    Begin
     dmLoadEntryCSDTemp.cds_LoadPackages.Cancel ;
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;
  //   Accept:= False ;
    End
   else
   if Action = eaReserved then
    Begin
     dmLoadEntryCSDTemp.cds_LoadPackages.Cancel ;
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' �r reserverat av '+Res_UserName) ;
  //   Accept:= False ;
    End ;

  Result:= Action ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntryCSDTemp.AddLONumberOnOpenTheForm(const LO_NO, SalesRegionNo : Integer);
Var
  Save_Cursor  : TCursor;
begin
 With dmLoadEntryCSDTemp do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  cds_LO_LookUp.Filtered:= False ;
  Try
  if cds_LO_LookUp.Active = False then
   Begin
    Get_LO_LookUp_SQL (LO_NO, FSalesRegionNo, -1)  ;
    cds_LO_LookUp.Active:= True ;
   End ;

  if cds_LO_LookUp.RecordCount > 0 then
  Begin
   cds_LSP.Insert ;
   Try
    cds_LSPShippingPlanNo.AsInteger             := cds_LO_LookUpShippingPlanNo.AsInteger ;
    cds_LSPCUSTOMER.AsString                    := cds_LO_LookUpCUSTOMER.AsString ;
    cds_LSPSALESREGIONNO.AsInteger              := cds_LO_LookUpSALESREGIONNO.AsInteger ;
    cds_LSPSalesRegion.AsString                 := cds_LO_LookUpSALESREGION.AsString ;



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
   FCustomerNo                              := cds_LO_LookUpCustomerNo.AsInteger ;
   cds_LSPCustomerNo.AsInteger              := cds_LO_LookUpCustomerNo.AsInteger ;
   cds_LSPFunction.AsInteger                := 1 ; //New
   cds_LSPLoadingPIPNo.AsInteger            := cds_LO_LookUpLoadingPIPNo.AsInteger ;
   cds_LSPLoadingLIPNo.AsInteger            := cds_LO_LookUpLoadingLIPNo.AsInteger ;
   cds_LSP.Post ;

   if cds_LoadHead.State = dsBrowse then
   cds_LoadHead.Edit ;
   cds_LoadHeadPIPNo.AsInteger              := cds_LSPLoadingPIPNo.AsInteger ;
   cds_LoadHeadLIPNo.AsInteger              := cds_LSPLoadingLIPNo.AsInteger ;
   cds_LoadHead.Post ;

   GetLO_Records_AfterAddingLO_Number( cds_LO_LookUpShippingPlanNo.AsInteger) ;

   Except
    on eDatabaseError do
    Raise ;
   End
  End
   else
   ShowMessage('Den h�r Last Ordern �r inte tillg�nglig, kanske LO status inte �r accept eller att avropet inte �r aktivt l�ngre?') ;
  Finally
   Screen.Cursor := Save_Cursor;
   sq_Booking_Data.Close ;
   if cds_LO_LookUp.Active = True then
    cds_LO_LookUp.Active:= False ;
  End ;
 End ; //with

end;

function TfLoadEntryCSDTemp.ValidatePackage_ver2(
  Var CustcdsNo   : Integer;
  PkgSupplier : string3;
  PkgNo       : Integer;
//  var SuppShipPlanObjectNo      : Integer;
  var PkgLog        : String;
  var LO_Number    : Integer;
  const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : integer ;
var
  BadLength     : Real;
  CustcdsNoKey  : Integer;

//build list of references to SupplierShipPlanObjectNo to validate package against
  procedure BuildListOfLOLines;
  begin
   With dmLoadEntryCSDTemp do
   Begin

//if no match then add by productno automatically
    //if not dmLoadEntryCSDTemp.mtLoadDetailMatch.FindKey([PkgNo,PkgSupplier]) then
    if not cdsLORows.FindKey([cds_LoadPackagesDefaultCustShipObjectNo.AsInteger]) then
    Begin
    //Koppla paket mot LO rader
     CustcdsNoKey:= AddLoadDetailMatchByProductNo(PkgNo, PkgSupplier, ProductNo, ProductLengthNo, NoOfLengths);
    End //if
    else
    Begin
//     LOLineKey  := cds_LoadPackagesDefsspno.AsInteger ;
//     CustcdsNoKey
     CustcdsNoKey:= cds_LoadPackagesDefaultCustShipObjectNo.AsInteger ;
    End ;
{    Try
     While not dmLoadEntryCSDTemp.mtLoadDetailMatch.Eof do
     Begin
      LOLineKey := dmLoadEntryCSDTemp.mtLoadDetailMatchSupplierShipPlanObjectNo.AsInteger ;
//      LOLines.Add(Pointer(LOLineKey));
      dmLoadEntryCSDTemp.mtLoadDetailMatch.Next ;
     End ;//while
    Finally
    End ; }
   End ;
  end;

function ValideraLength : Integer ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
 if cds_LoadPackagesVaruslag.AsInteger = 0 then
 Begin
 Result:= BAD_LENGTH ;

     if (cdsLORowsProductLengthNo.AsInteger = 453)
     or (cdsLORowsProductLengthNo.AsInteger = 533)
     or (cdsLORowsProductLengthNo.AsInteger = 1960)
     or (cdsLORowsProductLengthNo.AsInteger = 1831)
     or (cdsLORowsProductLengthNo.AsInteger = 3187)
     or (cdsLORowsProductLengthNo.AsInteger = 3190)          then
     Begin
      CustcdsNo             := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
      LO_Number             := cdsLORowsShippingPlanNo.AsInteger ;

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
       CustcdsNoKey           := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
       LO_Number              := cdsLORowsShippingPlanNo.AsInteger ;
       Result                 := ALL_OK ;
      End
       else
       Begin
        PkgLog  := Format(rs_BAD_LENGTH,[BadLength]);
        Result  := BAD_LENGTH ;
       End ;
     End//if cds_LoadPackagesNoOfLengths.AsInteger = 1 then
     else
     if cds_LoadPackagesNoOfLengths.AsInteger > 1 then
     Begin
      PkgLog  := Format(rs_BAD_LENGTH,[BadLength]);
      Result  := BAD_LENGTH ;
     End
 End
 else
  Begin
   CustcdsNoKey           := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   LO_Number              := cdsLORowsShippingPlanNo.AsInteger ;
   Result                 := ALL_OK ;
  End ;
 End ; //With  
End ;

function ValideraProduktAttribut : Integer ;
Begin
//August 27 Matching LO to Pkgs
  With dmLoadEntryCSDTemp do
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
  With dmLoadEntryCSDTemp do
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
//  SuppShipPlanObjectNo  := NO_MATCH;  // Changed below if validation succeeds.
  BuildListOfLOLines ;

//  SuppShipPlanObjectNo  := LOLineKey ;
  CustcdsNo             := CustcdsNoKey ;

  With dmLoadEntryCSDTemp do
  Begin
   Try
   if CustcdsNo > 0 then
   Begin
//Filtrera fram LO records p� current LoadDetailMatch
    cdsLORows.Filter   := 'CustShipPlanDetailObjectNo = '+inttostr(CustcdsNo) ; 
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

//Kolla om det finns en match p� Dimension, tr�slag, utf�rande och huvudkvalitet mellan
//LO och paket.
//Om det inte matchar skall det rapporteras tillbaka till anv�ndaren vilken parameter
//som inte matchade

//�r det en successfull match p� produkten skall paketl�ngden matchas mot LO l�ngden.

   Finally
    cdsLORows.Filtered:= False ;
   End ;
  End ; //With
end;

function TfLoadEntryCSDTemp.AddPkgTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntryCSDTemp.cdsLORows.First ;
   LO_Number            := dmLoadEntryCSDTemp.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;


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
      cds_LoadPackagesNoOfPackages.AsInteger    := 0 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger   := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;

      cds_LoadPackagesCustomPcs.AsInteger       := cds_LoadPackagesPcs.AsInteger ;

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
      cds_LoadPackagesVaruslag.AsInteger      := sq_OnePkgDetailDataVaruslag.AsInteger ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
//    cds_LoadPackages.Post ;
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

procedure TfLoadEntryCSDTemp.pmPkgsPopup(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  if cds_LoadPackagesOverrideMatch.AsInteger = 0 then
   bbMatcha.Caption:= 'Matcha manuellt'
    else
     bbMatcha.Caption:= 'Matcha automatiskt' ;
 End ;
end;

procedure TfLoadEntryCSDTemp.bbTally_Ver2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  Try
  dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger:= dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntryCSDTemp.InsertSelectedPkgNos(Sender: TObject) ;
Var CustShipPlanDetailObjectNo : Integer ;
begin
 With dmsSystem, dmLoadEntryCSDTemp do
 Begin
  CustShipPlanDetailObjectNo:= cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
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

       cds_LoadPackagesPackageNo.AsInteger    := mtSelectedPkgNoPaketnr.AsInteger ;
       cds_LoadPackagesSupplierCode.AsString  := mtSelectedPkgNoLevKod.AsString ;
//       cds_LoadPackagesDefsspno.AsInteger     := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;
       cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
       cds_LoadPackagesOverrideRL.AsInteger   := cdsLORowsOverrideRL.AsInteger ;

       ValidatePkgNoSuppCode_WhenPickPkgNo(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString, mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);

       if (cds_LoadPackagesPackageOK.AsInteger <> 0) AND (cds_LoadPackagesPackageOK.AsInteger <> 13) then
         ValidatePkgNoSuppCode(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,
         mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);       

//       ValidatePkgNoSuppCode(Sender, mtSelectedPkgNoPaketnr.AsInteger, mtSelectedPkgNoLevKod.AsString,  mtSelectedPkgNoproductno.AsInteger, mtSelectedPkgNoNOOFLENGTHS.AsInteger);
      Except
       on eDatabaseError do
       Begin
        Raise ;
        cds_LoadPackages.Cancel ;
       End ;
      End ;
     mtSelectedPkgNo.Next ;
     cdsLORows.Locate('CustShipPlanDetailObjectNo', CustShipPlanDetailObjectNo, []) ;
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

procedure TfLoadEntryCSDTemp.ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
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
   if dmLoadEntryCSDTemp.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
    +'/'+'') ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
    +'/'+'') ;
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' �r reserverat av '+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfLoadEntryCSDTemp.IsPkgReserved(
  const PkgNo : Integer;
  var PkgSupplierCode: String3;
  Var Res_UserName : String) : TEditAction;
const
  NO_LOAD_HAS_THIS_PACKAGE = -1;
  PACKAGE_NOT_IN_INVENTORY = 0 ;
begin
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

procedure TfLoadEntryCSDTemp.ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
const
  LF = #10;
var
  NewPkgNo : Integer ;
  PktNrLevKod : String3 ;//Lev koden i paketnrstr�ngen
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
      ShowMessage('Koden kunde inte �vers�ttas till ett Paketnr') ;
      Exit ;
     End ;
    End ;

  if dmLoadEntryCSDTemp.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
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
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' �r reserverat av '+Res_UserName) 
         else
          ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' finns inte') ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntryCSDTemp.InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
Var
  CustcdsNo,
  LO_Number,
  OverrideRL : Integer ;
begin
 With dmLoadEntryCSDTemp do
 Begin
  Try
   dmLoadEntryCSDTemp.cdsLORows.First ;
   LO_Number            := dmLoadEntryCSDTemp.cdsLORowsShippingPlanNo.AsInteger ;
//   SuppShipPlanObjectNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   CustcdsNo            := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   OverrideRL           := cdsLORowsOverrideRL.AsInteger ;


     sq_OnePkgDetailData.ParamByName('PackageNo').AsInteger:= PkgNo ;
     sq_OnePkgDetailData.ParamByName('SupplierCode').AsString:= PkgSupplierCode ;
     sq_OnePkgDetailData.Open ;
     if not sq_OnePkgDetailData.Eof then
     Begin
      cds_LoadPackages.Insert ;
      cds_LoadPackagesDefsspno.AsInteger                := -1 ;//SuppShipPlanObjectNo ;
      cds_LoadPackagesOverrideRL.AsInteger              := OverrideRL ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := CustcdsNo ;
      cds_LoadPackagesShippingPlanNo.AsInteger          := LO_Number ;
      cds_LoadPackagesProductNo.AsInteger               := sq_OnePkgDetailDataProductNo.AsInteger ;
      cds_LoadPackagesPRODUCT.AsString                  := sq_OnePkgDetailDataPRODUCT.AsString ;
      cds_LoadPackagesPACKAGENO.AsInteger               := sq_OnePkgDetailDataPackageNo.AsInteger ;
      cds_LoadPackagesNoOfPackages.AsInteger            := 0 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger           := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString             := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat                    := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat                    := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                       := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                      := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger                     := sq_OnePkgDetailDataPCS.AsInteger ;

      cds_LoadPackagesCustomPcs.AsInteger               := cds_LoadPackagesPcs.AsInteger ;

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
      cds_LoadPackagesVaruslag.AsInteger              := sq_OnePkgDetailDataVaruslag.AsInteger ;

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

procedure TfLoadEntryCSDTemp.InsertPkgNo(Sender: TObject) ;
begin
 With dmLoadEntryCSDTemp do
 Begin
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  Try
    mtPkgNos.First ;
    While not mtPkgNos.Eof do
    Begin
      Try
       cds_LoadPackages.Insert ;
       cds_LoadPackagesPackageNo.AsInteger    := mtPkgNospackageno.AsInteger ;
       cds_LoadPackagesSupplierCode.AsString  := mtPkgNosSuppliercode.AsString ;
       ValidatePkgNoSuppCode(Sender, mtPkgNospackageno.AsInteger,
        mtPkgNosSuppliercode.AsString,
        mtPkgNosproductno.AsInteger,
        mtPkgNosproductlengthno.AsInteger);
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

procedure TfLoadEntryCSDTemp.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
const
  LF = #10;
var
  NewPkgNo : Integer ;
  PktNrLevKod : String3 ;//Lev koden i paketnrstr�ngen
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
  Begin //L�NGA KODEN
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
      ShowMessage('Koden kunde inte �vers�ttas till ett Paketnr') ;
      Exit ;
     End ;

      Action := IdentifyPackageSupplier(
      NewPkgNo,
      dmLoadEntryCSDTemp.FSalesRegionNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );
    End ;

  if dmLoadEntryCSDTemp.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
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
        ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' �r reserverat av '+Res_UserName)
         else
          ShowMessage('Paketnr '+IntToStr(NewPkgNo)+' finns inte') ;

  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntryCSDTemp.acValidatePkgExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 Try
  if dmLoadEntryCSDTemp.cds_LoadPackages.State = dsBrowse then
  Begin
   dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
   Try
    ValidatePkg(dmLoadEntryCSDTemp.cds_LoadPackagesPACKAGENO.AsInteger,
    dmLoadEntryCSDTemp.cds_LoadPackagesSupplierCode.AsString, dmLoadEntryCSDTemp.cds_LoadPackagesProductNo.AsInteger,
     dmLoadEntryCSDTemp.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntryCSDTemp.cds_LoadPackagesNoOfLengths.AsInteger) ;

    dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
   Except
    on eDatabaseError do
    Raise ;
   End ;

  End
  else
   ShowMessage('Raden ligger i �ndringsl�ge, spara raden genom pil upp eller ner f�rst.') ;
 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
end;

procedure TfLoadEntryCSDTemp.acValidateAllPkgsExecute(Sender: TObject);
begin
 ValidateAllPkgs ;
end;

procedure TfLoadEntryCSDTemp.ValidateAllPkgs ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 With dmLoadEntryCSDTemp do
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
      ValidatePkg(dmLoadEntryCSDTemp.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntryCSDTemp.cds_LoadPackagesSupplierCode.AsString, dmLoadEntryCSDTemp.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntryCSDTemp.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntryCSDTemp.cds_LoadPackagesNoOfLengths.AsInteger) ;
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

procedure TfLoadEntryCSDTemp.acInsertPkgToInventoryExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;

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
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfLoadEntryCSDTemp.acInsertAllPkgsToInventoryExecute(
  Sender: TObject);
Var Save_Cursor : TCursor ;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 dmLoadEntryCSDTemp.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= NIL ;
  dmLoadEntryCSDTemp.cds_LoadPackages.First ;
  While not dmLoadEntryCSDTemp.cds_LoadPackages.Eof do
  Begin
   dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
   dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger  := REMOVE_PKG_FROM_LOAD ;
   dmLoadEntryCSDTemp.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
   dmLoadEntryCSDTemp.cds_LoadPackages.Next ;
//April 22 2004
   Application.ProcessMessages ;
  End ;
 Finally
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntryCSDTemp.ds_LoadPackages2DataChange ;
  dmLoadEntryCSDTemp.cds_LoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfLoadEntryCSDTemp.acRemovePkgFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 if MessageDlg('�r du s�ker? markerade paket kommer att f�svinna fr�n systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadEntryCSDTemp do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  Try
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
    dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
    dmLoadEntryCSDTemp.cds_LoadPackagesChanged.AsInteger       := 1 ;
    dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
   End ;
   mtLoadPackages.Next ;
  End ;//While..

 Finally
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntryCSDTemp.ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With..
end;

procedure TfLoadEntryCSDTemp.acRemoveAllPkgsFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  if MessageDlg('�r du s�ker? paketen kommer att f�svinna fr�n systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  dmLoadEntryCSDTemp.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= NIL ;

  dmLoadEntryCSDTemp.cds_LoadPackages.First ;
  While not dmLoadEntryCSDTemp.cds_LoadPackages.Eof do
  Begin
   dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
   dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
   dmLoadEntryCSDTemp.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
   dmLoadEntryCSDTemp.cds_LoadPackages.Next ;
  End ;

  Finally
   dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntryCSDTemp.ds_LoadPackages2DataChange ;
   dmLoadEntryCSDTemp.cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; //if
end;

procedure TfLoadEntryCSDTemp.acUndoPkgOperationExecute(Sender: TObject);
begin
//Undo
 Try
 dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= NIL ;

 Case dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger of
  DELETE_PKG            :
  Begin
   dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
   dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntryCSDTemp.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
  End ;
  REMOVE_PKG_FROM_LOAD  :
  Begin
   dmLoadEntryCSDTemp.cds_LoadPackages.Edit ;
   dmLoadEntryCSDTemp.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntryCSDTemp.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntryCSDTemp.cds_LoadPackages.Post ;
  End ;
 End ; //case
 Finally
  dmLoadEntryCSDTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntryCSDTemp.ds_LoadPackages2DataChange ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSetDefaultMatchOnAllPkgsExecute(
  Sender: TObject);
var
 Save_Cursor  : TCursor;
 CustcdsNo    : Integer ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmLoadEntryCSDTemp do
 Begin

 try
  cds_LoadPackages.DisableControls ;
  cdsLORows.DisableControls ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   CustcdsNo:= AddLoadDetailMatchByProductNo(cds_LoadPackagesPackageNo.AsInteger,
   cds_LoadPackagesSupplierCode.AsString, cds_LoadPackagesProductNo.AsInteger,cds_LoadPackagesProductLengthNo.AsInteger,
   cds_LoadPackagesNoOfLengths.AsInteger);

   cds_LoadPackages.Edit ;
   cds_LoadPackagesDefsspno.AsInteger                 := -1 ;//SSPObjectNo ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := CustcdsNo ;
   cds_LoadPackagesChanged.AsInteger                  := 1 ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;

 finally
//  mtLoadDetailMatch.EnableControls ;
  cds_LoadPackages.EnableControls ;
  cdsLORows.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 end;
 End ;//With
end;


procedure TfLoadEntryCSDTemp.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmLoadEntryCSDTemp.cds_LoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode:= dmLoadEntryCSDTemp.cds_LoadPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acAddPkgExecute(Sender: TObject);
begin
 if dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger > 0 then
 Begin
  grdPkgs.SetFocus ; 
  dmLoadEntryCSDTemp.cds_LoadPackages.Append ;
 End
   else
    ShowMessage('Spara lasten f�rst.') ;
end;

procedure TfLoadEntryCSDTemp.AddPkg ;
begin
 if dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
   dmLoadEntryCSDTemp.cds_LoadPackages.Append ;
   grdPkgs.SetFocus ;
  End
   else
    ShowMessage('Spara lasten f�rst.') ;
end;

procedure TfLoadEntryCSDTemp.acValidatePkgUpdate(Sender: TObject);
begin
 acValidatePkg.Enabled:= (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acValidateAllPkgsUpdate(Sender: TObject);
begin
 acValidateAllPkgs.Enabled:= (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
 acInsertPkgToInventory.Enabled:=  (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
 acInsertAllPkgsToInventory.Enabled:=  (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
 acRemovePkgFromSystem.Enabled:=  (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
begin
 acRemoveAllPkgsFromSystem.Enabled:=  (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acUndoPkgOperationUpdate(Sender: TObject);
begin
 acUndoPkgOperation.Enabled:=  (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
begin
 acSetDefaultMatchOnAllPkgs.Enabled:=  (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acPkgInfoUpdate(Sender: TObject);
begin
 acPkgInfo.Enabled:=  dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntryCSDTemp.acAddPkgByPkgCodeExecute(Sender: TObject);
Var Save_Cursor : TCursor;
    noofpkgs : integer ;
    fEntryField : TfEntryField ;
begin
 //Add pkgs by package code
 //ta coden fr�n lo rad
 //mata in antal paket
 //h�mta paket fr�n lagret, �ldsta paketnr f�rst
 With dmLoadEntryCSDTemp do
 Begin
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin

  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  Try
  cds_LoadPackages.Post ;
  Except
   cds_LoadPackages.Cancel ;
  End ;

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
    dmLoadEntryCSDTemp.cds_LoadHeadLIPNo.AsInteger) ;
    if noofpkgs <> 0 then
    Begin
     if noofpkgs <> strtointdef(Trim(fEntryField.eNoofpkgs.Text),0) then
     Begin
      if MessageDlg('Du beg�rde '+Trim(fEntryField.eNoofpkgs.Text)+' paket med det finns endast '+inttostr(noofpkgs)
      +' vill du l�gga '+inttostr(noofpkgs)+' paket till lasten?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      InsertPkgNo(Sender) ;
     End
     else
     InsertPkgNo(Sender) ;
    End
    else
    showmessage('Det finns inga paket av pktkod '+trim(cdsLORowsPKGCODE.AsString)+' i lager '+Trim(lcPIP.Text)
    +'/'+Trim(lcLIP.Text)) ;
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
   ShowMessage('Spara lasten f�rst.') ;
 End ; //with
end;

procedure TfLoadEntryCSDTemp.acAddPkgUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acAddPkg.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acAddPkgByPkgCodeUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acAddPkgByPkgCode.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acPickPkgNosExecute(Sender: TObject);
var fPickPkgNo: TfPickPkgNo;
begin
 if dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  ShowMessage('Spara lasten f�rst.') ;
  Exit ;
 End ;

 With dmLoadEntryCSDTemp do
 Begin
  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  Try
   cds_LoadPackages.Post ;
  Except
   cds_LoadPackages.Cancel ;
  End ;

  fPickPkgNo:= TfPickPkgNo.Create(Nil);
  Try
   fPickPkgNo.ProductNo               := cdsLORowsProductNo.AsInteger ;
   fPickPkgNo.ProductLengthNo         := cdsLORowsProductLengthNo.AsInteger ;
   fPickPkgNo.ALMM                    := cdsLORowsACT_LENGTH.AsString ;
   fPickPkgNo.PIPNo                   := dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger ;
   fPickPkgNo.LONo                    := cdsLORowsShippingPlanNo.AsInteger ;
   fPickPkgNo.LabelProduct.Caption    := cdsLORowsPRODUCTDESCRIPTION.AsString ;
   fPickPkgNo.LabelLength.Caption     := cdsLORowsLENGTHDESC.AsString ;
   fPickPkgNo.LabelPIPName.Caption    := lcPIP.Text ;
   fPickPkgNo.LabelOwner.Caption      := cds_LSPSalesRegion.AsString ;
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

procedure TfLoadEntryCSDTemp.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acPickPkgNos.Enabled:= (cdsLORows.RecordCount > 0)  and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSaveLoadExecute(Sender: TObject);
Begin
 SaveLoad ;
end;

function TfLoadEntryCSDTemp.ControlInvDate : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  cds_LoadPackages.DisableControls ;
  Try
  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  cds_LoadPackages.Post ;
  Result  := True ;
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   LastInvNr  := dmsSystem.IsRegDateBeforeInvDate(cds_LoadPackagesLIPNo.AsInteger, SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp), InvDate, MaxDateMsg) ;
   if LastInvNr > -1 then
   Begin
    cds_LoadPackages.Edit ;
    cds_LoadPackagesInvNr.AsInteger := LastInvNr ;
    cds_LoadPackages.Post ;
    Result  := False ;
   End ;
   cds_LoadPackages.Next ;
  End ;
  Finally
   cds_LoadPackages.EnableControls ;
  End ;
 End ;//With
end;

procedure TfLoadEntryCSDTemp.SaveLoad ;
var
  Save_Cursor : TCursor;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) <= Now then
  Begin
//   dmLoadEntryCSDTemp.LogicalTransferInventoryNo:=    dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger ;

   if cds_LoadHead.State in [dsEdit, dsInsert] then
   cds_LoadHead.Post ;
   if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;
   cds_LoadPackages.DisableControls ;
   cds_LSP.DisableControls ;
   cdsLORows.DisableControls ;
   cds_LoadHead.DisableControls ;
   ValidateAllPkgs ;
   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   try
    if (cds_LSP.Active) AND (cds_LSP.RecordCount > 0) then
    SaveLOData(cds_LoadHeadLoadNo.AsInteger)
     else
      ShowMessage('L�gg till minst en LO.') ;
    if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
    ShowMessage('Alla paket matchar inte, status kan inte s�ttas till OK.') ;
   finally
    cds_LoadPackages.EnableControls ;
    cds_LSP.EnableControls ;
    cdsLORows.EnableControls ;
    cds_LoadHead.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end;
  End //if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) < Date then
   else
    ShowMessage('Utlastningsdatum f�r inte vara st�rre �n dagen datum, var v�nlig justera.') ;

  if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (not ControlInvDate) then
  Begin
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := 0 ;
   cds_LoadHead.Post ;
   if cds_LoadHead.ChangeCount > 0 then
   Begin
    cds_LoadHead.ApplyUpdates(0) ;
    cds_LoadHead.CommitUpdates ;
   End ;

   ShowMessage('Lasten kan inte s�tta Status till OK pga att utlastningsdatum �r f�re inventerings eller maxdatum i en inventering d�r lagergruppen ing�r') ;
  End ;

 End ;//With
end;

procedure TfLoadEntryCSDTemp.SetLoadRowToChanged ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger   := 1 ;
  cds_LoadPackagesPackageOK.AsInteger := BAD_PKG ;
  cds_LoadPackages.Post ;
 End ;
End ;

procedure TfLoadEntryCSDTemp.acPrintTallyUSNoteExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

  Try
  dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger:= dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT') ;


 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntryCSDTemp.grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
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
 With dmLoadEntryCSDTemp do
 Begin
 if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
 Begin
  ErrorText:= 'Inte till�tet att skriva �ver paketnr som redan �r sparade till lasten' ;
  Error:= True ;
  Exit ;
 End ;
 End ;

  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   NewValue := DisplayValue ;

   //Kollar om paketet finns i, finns det flera med samma paketnr men olika prefix m�ste ett v�ljas
   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      dmLoadEntryCSDTemp.FSalesRegionNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );


  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackages(Sender, StrToInt(NewValue),PkgSupplierCode) ;
//L�ngsamt h�r
    if AfterAddedPkgNo(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths ) <> eaACCEPT then
    Begin
     ErrorText:= 'Package number '+NewValue+' does not exist' ;
     Error:= True ;
    End
    else
    Begin
     Error:= False ;
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
     ErrorText:= 'Paketnr '+NewValue+' �r reserverat av '+Res_UserName ;
     Error:= True ;
    End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntryCSDTemp.grdLORowsDBBandedTableView1MATCHPropertiesChange(
  Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  Try
  ds_LoadPackages2.OnDataChange:= nil ;
  if cds_LoadPackages.State = dsBrowse then
  cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger                 := 1 ;
  cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;

  if cdsLORowsMatch.AsInteger = 1 then
  Begin
   cds_LoadPackagesDefsspno.AsInteger                 := -1 ;//cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
   cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;
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

procedure TfLoadEntryCSDTemp.GetMarkedPkgs ;
 Var
 LoadDetailNo,
 i,
 RecIDX,
 ColIdx         : Integer ;
 Save_Cursor    : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 With dmLoadEntryCSDTemp do
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
    mtLoadPackagesSupplierShipPlanObjectNo.AsInteger  := -1 ;
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

procedure TfLoadEntryCSDTemp.acKopplaPaketMotLOManuelltExecute(
  Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
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
      cds_LoadPackagesDefsspno.AsInteger                := -1 ;
      cds_LoadPackagesDefaultCustShipObjectNo.AsInteger := mtLoadPackagesCustcdsNo.AsInteger ;
      cds_LoadPackagesOverrideRL.AsInteger              := 0 ;
      cds_LoadPackagesChanged.AsInteger                 := 1 ;
      cds_LoadPackagesOverrideMatch.AsInteger           := 1 ;
      cds_LoadPackagesPackageOK.AsInteger               := BAD_PKG ;
      cds_LoadPackagesProblemPackageLog.AsString        := 'Manuell koppling' ;
//Validera varje paket som har manuell koppling      
      ValidatePkg(dmLoadEntryCSDTemp.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntryCSDTemp.cds_LoadPackagesSupplierCode.AsString, dmLoadEntryCSDTemp.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntryCSDTemp.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntryCSDTemp.cds_LoadPackagesNoOfLengths.AsInteger) ;
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

procedure TfLoadEntryCSDTemp.acSaveLoadUpdate(Sender: TObject);
begin
 acSaveLoad.Enabled:= (not DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acDeleteLoadExecute(Sender: TObject);
begin
// if dmLoadEntryCSDTemp.IsLoadMadeInAvrop(dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger) then
// Begin
 if dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0 then
  Begin
   ShowMessage('Ta bort paketen fr�n lasten f�rst.') ;
  End
  else
  Begin
   if MessageDlg('�r du s�ker?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then

    dmLoadEntryCSDTemp.DeleteOneLoad(dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger) ;
   Close ;
  End ;
// End
//  else
//   ShowMessage('�ngra i ankomstregistreringen!');
end;

procedure TfLoadEntryCSDTemp.acDeleteLoadUpdate(Sender: TObject);
begin
 acDeleteLoad.Enabled:= (dmLoadEntryCSDTemp.cds_LoadPackages.Active) and (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount = 0) ;
end;

procedure TfLoadEntryCSDTemp.acPrintFSExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  Try
  dmsSystem.sq_PkgType_InvoiceByCSD.ParamByName('LoadNo').AsInteger:= dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_PkgType_InvoiceByCSD.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_DelPkgType.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acPrintHyvelOrderExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('HYVEL_ORDER.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntryCSDTemp.cds_LSPShippingPlanNo.AsInteger);
//  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntryCSDTemp.ShippingPlanSupplierNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acLOAllaVerkExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntryCSDTemp.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acPrintFSUpdate(Sender: TObject);
begin
 acPrintFS.Enabled:= DataSaved ;
end;

procedure TfLoadEntryCSDTemp.acPrintSpecAllaLasterLOUpdate(Sender: TObject);
begin
 acPrintSpecAllaLasterLO.Enabled:= DataSaved ;
end;

procedure TfLoadEntryCSDTemp.acPrintLOErtVerkUpdate(Sender: TObject);
begin
 acPrintLOErtVerk.Enabled:= DataSaved ;
end;

procedure TfLoadEntryCSDTemp.acLOAllaVerkUpdate(Sender: TObject);
begin
 acLOAllaVerk.Enabled:= DataSaved ;
end;

procedure TfLoadEntryCSDTemp.acPrintHyvelOrderUpdate(Sender: TObject);
begin
 acPrintHyvelOrder.Enabled:= DataSaved ;
end;

procedure TfLoadEntryCSDTemp.acPkgEntryUpdate(Sender: TObject);
begin
 acPkgEntry.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acStreckKodsinlasningExecute(Sender: TObject);
var fScanLoadPkgNo: TfScanLoadPkgNo ;
begin
 fScanLoadPkgNo:= TfScanLoadPkgNo.Create(Nil);
 Try
  fScanLoadPkgNo.EgenPkgSupplierCode:= dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
  fScanLoadPkgNo.cbEgenLevKod.Caption:= 'Scanna endast in paket med leverant�rskod '+fScanLoadPkgNo.EgenPkgSupplierCode ;
  fScanLoadPkgNo.ShowModal ;
  acValidateAllPkgsExecute(Sender) ;
  acSaveLoad.Enabled:= True ;
 Finally
  fScanLoadPkgNo.Free ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acPktNrSerieExecute(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
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

procedure TfLoadEntryCSDTemp.acPktNrSerieUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acPktNrSerie.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acKopplaPaketMotLOManuellt.Enabled:= (cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acTaBortPaketPerPaketKodExecute(Sender: TObject);
Var x : Integer ;
   Save_Cursor : TCursor;
   fEntryField : TfEntryField ;
begin
 With dmLoadEntryCSDTemp do
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
    if dmLoadEntryCSDTemp.cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
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

procedure TfLoadEntryCSDTemp.acTaBortPaketPerPaketKodUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acAddPkgByPkgCode.Enabled:= (cds_LoadPackages.RecordCount > 0) and (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acStreckKodsinlasningUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acStreckKodsinlasning.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.Get_LO_LookUp_SQL (const LO_NO, SalesRegionNo, CustomerNo : Integer) ;
Begin
 With dmLoadEntryCSDTemp.cds_LO_LookUp.SQL do
 Begin
  Clear ;
//SALES normal LO
  Add('SELECT DISTINCT') ;
  Add('isNull(OH.OrderType,0) AS Shipping,') ;
  Add('OH.SalesRegionNo,') ;
  Add('CSH.ShippingPlanNo,') ;
  Add('C.ClientName AS CUSTOMER,') ;

  Add('SC.ClientName					AS SHIPPER,') ;
  Add('isNull(Bk.PreliminaryRequestedPeriod,' + QuotedStr('') + ')	AS READYDATE,') ;
  Add('isNull(Cr.CarrierName,' + QuotedStr('') + ')			AS VESSEL,') ;
  Add('Vg.ETD						              AS ETD,') ;
  Add('Vg.ETD						              AS ETA,') ;

  Add('Bk.SupplierReference				    AS SHIPPER_REF,') ;
  Add('Bk.ShippingCompanyBookingID			AS SHIPPERID,') ;
  Add('Bk.ShippersShipDate				      AS SHIPPERS_SHIPDATE,') ;
  Add('Bk.ShippersShipTime				      AS SHIPPERS_SHIPTIME,') ;
  Add('OH.OrderNoText					        AS ORDERNO,') ;
  Add('CASE WHEN OH.OrderType = 0 then ' + QuotedStr('SALES')) ;
  Add('ELSE ' + QuotedStr('PURCHASE')) ;
  Add('END AS ORDERTYPE,') ;

  Add('CSH.CustomerNo,') ;
  Add('SR.ClientName AS SalesRegion,') ;
  Add('0 AS "Function",') ;
  Add('CSH.LoadingLocationNo AS LoadingPIPNo, CSH.LoadingLIPNo') ;


  Add('FROM dbo.CustomerShippingPlanHeader CSH') ;

  Add('Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
  Add('Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
  Add('Inner Join dbo.Client		SR 	ON  	SR.ClientNo	= OH.SalesRegionNo') ;

  Add('LEFT OUTER JOIN dbo.Booking		Bk') ;
  Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
  Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
  Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
  Add('							ON  	Bk.ShippingPlanNo	= CSH.ShippingPlanNo') ;

  Add('WHERE') ;
  Add('OH.SalesRegionNo = ' + inttostr(SalesRegionNo)) ;
  if LO_NO > 0 then
  Add('AND CSH.ShippingPlanNo = ' + inttostr(LO_NO)) ;
  if CustomerNo > 0 then
  Add('AND CSH.CustomerNo = ' + inttostr(CustomerNo)) ;

//  if thisuser.userid = 8 then SaveToFile('sq_LO_LookUp.TXT') ;


{Order by SSP.ShippingPlanStatus, SSP.ShippingPlanNo }
 End ;//with
End ;

procedure TfLoadEntryCSDTemp.grdLORowsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
//  AColumn: TcxCustomGridTableItem;
  Match : integer;
begin
 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] <> null then
 Match:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('MATCH').Index] ;
 if Match = 1 then
 AStyle:= cxStyleSilver ;
end;

procedure TfLoadEntryCSDTemp.grdPkgsDBBandedTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
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
  VP_LengthNotInLengthGroup  :   Begin
                                  if OverrideRL = 1 then 
                                  AStyle := cxStyleYellow
                                  else
                                  AStyle := cxStyleRed ;
                                 End ;
  VP_NyaHTFPaket              : AStyle  := cxStyleGreen ;                                      
 End ;

 if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] <> null then
 Pkg_Function:= ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('Pkg_Function').Index] ;
 Case Pkg_Function of
   REMOVE_PKG_FROM_LOAD : AStyle := cxStyleBlue ;
   DELETE_PKG           : AStyle := cxStyleAqua ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acChangePKGLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadEntryCSDTemp.acChangeLORowLayoutExecute(Sender: TObject);
begin
  if grdLORows.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLORows.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadEntryCSDTemp.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadEntryCSDTemp.grdPkgsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 if grdPkgsDBBandedTableView1.OptionsView.NewItemRow then
 AAllow := grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused
 else
 AAllow:= True ;
end;

procedure TfLoadEntryCSDTemp.acInmatningsradExecute(Sender: TObject);
begin
 grdPkgsDBBandedTableView1.OptionsView.NewItemRow:= not grdPkgsDBBandedTableView1.OptionsView.NewItemRow ;
end;

procedure TfLoadEntryCSDTemp.grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 With dmLoadEntryCSDTemp do
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

procedure TfLoadEntryCSDTemp.ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
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
   if dmLoadEntryCSDTemp.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo_WhenPickPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
    +'/'+'') ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
    +'/'+'');
    End
   else
   if Action = eaReserved then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' �r reserverat av '+Res_UserName) ;
    End
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TfLoadEntryCSDTemp.AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntryCSDTemp.cdsLORows.First ;
   LO_Number            := dmLoadEntryCSDTemp.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsCustShipPlanDetailObjectNo.AsInteger ;



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
      cds_LoadPackagesNoOfPackages.AsInteger    := 0 ;
      cds_LoadPackagesPACKAGETYPENO.AsInteger   := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;

      cds_LoadPackagesCustomPcs.AsInteger       := cds_LoadPackagesPcs.AsInteger ;

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
      cds_LoadPackagesVaruslag.AsInteger      := sq_OnePkgDetailDataVaruslag.AsInteger ;

      sq_OnePkgDetailData.Close ;
     End ;

    Try
//    cds_LoadPackages.Post ;
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

function TfLoadEntryCSDTemp.AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3;
const ProductNo, ProductLengthNo, NoOfLengths  : Integer) : TEditAction ;
var
  CustCdsNo             : Integer;
  ValidPackage          : Integer;
  PkgLog                : String ;
  LO_Number             : Integer ;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntryCSDTemp.cdsLORows.First ;
   LO_Number:= dmLoadEntryCSDTemp.cdsLORowsShippingPlanNo.AsInteger ;

  //LOLine is SuppShipPlanObjectNo
    ValidPackage := ValidatePackage_ver2(CustcdsNo, PkgSupplierCode, PkgNo, PkgLog,
    LO_Number, ProductNo, ProductLengthNo, NoOfLengths );

      case ValidPackage of
        VP_LengthNotInLengthGroup : Begin
                      cds_LoadPackagesPackageOK.AsInteger         := VP_LengthNotInLengthGroup ;
                      cds_LoadPackagesProblemPackageLog.AsString  := 'L�ngd matchar ej l�ngdgruppen' ;
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
        VP_NoLOConnection : Begin
                           cds_LoadPackagesPackageOK.AsInteger:= VP_NoLOConnection ;
                           cds_LoadPackagesProblemPackageLog.AsString:= PkgLog ;
                          End ;
        else
        end;

    if (ValidPackage = ALL_OK) //or (cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup) then
    OR ((cds_LoadPackagesPackageOK.AsInteger = VP_LengthNotInLengthGroup)
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := -1 ;//SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := CustcdsNo ;
     cds_LoadPackagesShippingPlanNo.AsInteger             := LO_Number ;
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

    End ;
   end ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   cds_LoadPackages.EnableControls ;
  End ;
 End ; //with
end;

procedure TfLoadEntryCSDTemp.acPkgEntryExecute(Sender: TObject);
Var x               : Integer ;
    frmPackageEntry : TfrmPackageEntry ;
begin
 if dmLoadEntryCSDTemp.cds_LoadHeadLoadNo.AsInteger > 0 then
 Begin
 if dmLoadEntryCSDTemp.cdsLORows.RecordCount > 0 then
 Begin
 Try
 dmsProduct:= TdmsProduct.Create(NIL) ;
 dmsProduct.CSD:= 3 ;

// if dmLoadEntryCSDTemp.FAvrop_CustomerNo <> -1 then
 if dmLoadEntryCSDTemp.cds_LSPShipping.AsInteger = 1 then
 Begin //Purchase packages get external supplier SupplierCode
  dmsProduct.SupplierNo     := dmLoadEntryCSDTemp.cds_LSPCustomerNo.AsInteger ;//FOrderClientNo ;//dmLoadEntryCSDTemp.FAvrop_CustomerNo ;
  dmsProduct.SupplierCode   := //dmsContact.GetSupplierCode(dmLoadEntryCSDTemp.mtLoadShippingPlanLoadingLocationNo.AsInteger) ;
  dmsContact.GetClientCode(dmLoadEntryCSDTemp.cds_LSPCustomerNo.AsInteger) ;//dmLoadEntryCSDTemp.FAvrop_CustomerNo) ;

  dmsProduct.OrderType          := c_Purchase ;
  dmsProduct.InventoryOwnerNo   := dmLoadEntryCSDTemp.cds_LSPSalesRegionNo.AsInteger ;//dmLoadEntryCSDTemp.FCustomerNo ;//dmLoadEntryCSDTemp.FSupplierNo ;

  if dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger > 0 then
  dmsProduct.InventoryNo        :=   dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger ;

  if dmLoadEntryCSDTemp.cds_LoadHeadLIPNo.AsInteger > 0 then
  dmsProduct.LIPNo        :=    dmLoadEntryCSDTemp.cds_LoadHeadLIPNo.AsInteger ;
 End
 else
 Begin
  dmsProduct.OrderType        := c_Sales ;
//  dmsProduct.InventoryNo      := dmLoadEntryCSDTemp.cds_LSPShipToInvPointNo.AsInteger ;
  dmsProduct.SupplierNo       := dmLoadEntryCSDTemp.cds_LSPSalesRegionNo.AsInteger ;//dmLoadEntryCSDTemp.FSupplierNo ;
  dmsProduct.SupplierCode     := dmsContact.GetSupplierCode(dmLoadEntryCSDTemp.cds_LSPLoadingLocationNo.AsInteger) ;

  dmsProduct.InventoryOwnerNo := dmLoadEntryCSDTemp.cds_LSPSalesRegionNo.AsInteger ;//dmLoadEntryCSDTemp.FSupplierNo ;

  if dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger > 0 then
  dmsProduct.InventoryNo        :=   dmLoadEntryCSDTemp.cds_LoadHeadPIPNo.AsInteger ;

  if dmLoadEntryCSDTemp.cds_LoadHeadLIPNo.AsInteger > 0 then
  dmsProduct.LIPNo        :=    dmLoadEntryCSDTemp.cds_LoadHeadLIPNo.AsInteger ;
 End ;

 dmsProduct.mtLO_Records.Active:= True ;
 dmLoadEntryCSDTemp.cdsLORows.First ;
 While not dmLoadEntryCSDTemp.cdsLORows.Eof do
 Begin
  dmsProduct.mtLO_Records.Insert ;
  Try
  For x := 0 to 27 do
    dmsProduct.mtLO_Records.Fields.Fields[x].AsVariant  := dmLoadEntryCSDTemp.cdsLORows.Fields.Fields[x].AsVariant ;
    dmsProduct.mtLO_RecordsMATCH.AsInteger              := 0 ;
    dmsProduct.mtLO_RecordsINCH_THICK.AsFloat           := StrToFloatDef(dmLoadEntryCSDTemp.cdsLORowsINCH_THICK.AsString,0) ;
    dmsProduct.mtLO_RecordsINCH_WIDTH.AsFloat           := StrToFloatDef(dmLoadEntryCSDTemp.cdsLORowsINVCH_WIDTH.AsString,0) ;
    dmsProduct.mtLO_RecordsOverrideRL.AsInteger         := dmLoadEntryCSDTemp.cdsLORowsOverrideRL.AsInteger ;
    dmsProduct.mtLO_RecordsVaruSlag.AsInteger           := dmLoadEntryCSDTemp.cdsLORowsVaruSlag.AsInteger ;
    dmsProduct.mtLO_Records.Post ;
  Except
   on eDatabaseError do
   Raise ;
  End ;
  dmLoadEntryCSDTemp.cdsLORows.Next ;
 End ; //while


 frmPackageEntry:= TfrmPackageEntry.Create(Nil);
 Try
  frmPackageEntry.ShowModal ;
  if frmPackageEntry.SavePkgs = True then
   acValidateAllPkgsExecute(Sender) ;

  SaveLoad ;


 Finally
  dmsProduct.mtpackages.Active:= False ;
  FreeAndNil(frmPackageEntry) ; //.Free ;// .FreeANDNIL ;
 End ;

 Finally
  FreeAndNil(dmsProduct) ;//.Free ;
 End ;

 End
 else
  ShowMessage('L�gg till en LO f�rst.') ;
End
 else
  ShowMessage('Spara lasten f�rst.') ;

end;


procedure TfLoadEntryCSDTemp.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLoadEntryCSDTemp.FormShow(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  if (cds_LoadPackages.Active) and (cds_LoadPackages.RecordCount = 0) then
   lcPIP.SetFocus ;
//   AddPkg ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSaveAndOKExecute(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  if cds_LoadHead.State in [dsBrowse] then
  cds_LoadHead.Edit ;
  cds_LoadHeadSenderLoadStatus.AsInteger := 2 ; //OK
  cds_LoadHead.Post ;
  SaveLoad ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSaveAndOKUpdate(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  acSaveAndOK.Enabled:= //(not DataSaved) and (LoadEnabled) and
  (cds_LoadHeadSenderLoadStatus.AsInteger <> 2)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 0) ;
 End ; 
end;

procedure TfLoadEntryCSDTemp.lcToExit(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  if cds_LoadPackages.State in [dsEdit, dsInsert] then
   cds_LoadPackages.Post ;
  if (cds_LoadPackages.Active) and (cds_LoadPackages.RecordCount = 0) then
   AddPkg ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acPrintMenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300, 200);
end;

procedure TfLoadEntryCSDTemp.acSetStatusPrelAndSaveExecute(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  if not dmsSystem.IsLoadInvoiced(cds_LoadHeadLoadNo.AsInteger) then
  Begin
   if cds_LoadPackages.UpdateOptions.ReadOnly then
    cds_LoadPackages.UpdateOptions.ReadOnly := False ;
   if cds_LoadHead.UpdateOptions.ReadOnly then
    cds_LoadHead.UpdateOptions.ReadOnly := False ;
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := 0 ; //Prel
   cds_LoadHead.Post ;
   SaveLoad ;
   SetLoadEnabled ;
  End
   else
    Begin
     ShowMessage('Lasten kan inte s�ttas till prelimin�r f�r den �r fakturerad.');
     SetLoadEnabled ;
    End ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSend700Execute(Sender: TObject);
Var DeleteTdmVidaInvoice  : Boolean ;
    fWait                 : TfWait;
begin
 fWait:= TfWait.Create(nil);
 Try
 fWait.cxLabel1.Caption  := 'V�nta, exporterar lasten...' ;
 fWait.Show ;
 Application.ProcessMessages ;

 with dmLoadEntryCSDTemp do
 Begin
  Try
  Try

  if not Assigned(dmVidaInvoice) then
   Begin
    DeleteTdmVidaInvoice:= True ;
    dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
   End ;



   dmVidaInvoice.ExportTypSoftSet(cds_LSPLoadNo.AsInteger,
   cds_LSPShippingPlanNo.AsInteger, 7{RecordType}, 'NA', -1) ;
   ShowMessage('Last-filen uppladdad till Hampen.') ;
   except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
//   ShowMessage(E.Message);
     Raise ;
    End ;
   end;

  Finally
   if DeleteTdmVidaInvoice = True then
    FreeAndNil(dmVidaInvoice) ;//.Free ;
  // Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ; //Finally
 End ;//with dmLoadEntryCSDTemp do
 Finally
  FreeAndNil(fWait) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSend700Update(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  acSend700.Enabled:= (DataSaved) and (LoadEnabled)
  and (cds_LSP.Active)
  and (cds_LSPORDERTYPE.AsString = 'SALES')
  and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ;//With
end;

procedure TfLoadEntryCSDTemp.acSetStatusPrelAndSaveUpdate(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  acSetStatusPrelAndSave.Enabled := not pIsLoadInvoiced
  and (cds_LoadHeadPackageEntryOption.AsInteger = 0) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSetLoadToNormalExecute(Sender: TObject);
begin
 if NoOfPkgsInLoad > 0 then
 Begin
  with dmLoadEntryCSDTemp do
  Begin
   SetPackagesToChanged ;
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadPackageEntryOption.AsInteger := 0 ;
   cds_LoadHead.Post ;
   SaveLoad ;
  End ;
 End
  else
   ShowMessage('Lasten m�ste inneh�lla minst 1 paket f�r att kunna aktiveras') ;
end;

procedure TfLoadEntryCSDTemp.SetPackagesToChanged ;
begin
 with dmLoadEntryCSDTemp do
 Begin
  cds_LoadPackages.First ;
  While not cds_LoadPackages.Eof do
  Begin
   cds_LoadPackages.Edit ;
   cds_LoadPackagesChanged.AsInteger  := 1 ;
   cds_LoadPackages.Post ;
   cds_LoadPackages.Next ;
  End ;
 End ;
End ;

procedure TfLoadEntryCSDTemp.acSetLoadToNormalUpdate(Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  acSetLoadToNormal.Enabled := (cds_LoadHead.Active)
  and (cds_LoadHead.RecordCount > 0)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acGetFileFromHTFExecute(Sender: TObject);
Var  fWait                 : TfWait;
begin
 fWait:= TfWait.Create(nil);
 Try
 fWait.cxLabel1.Caption  := 'V�nta, importerar lasten...' ;
 fWait.Show ;
 Application.ProcessMessages ;

 //H�mta just filen f�r denna last
 with dmLoadEntryCSDTemp do
 Begin
  GetFileFromHTF ;
  cds_LoadPackages.Active := False ;
  cds_LoadPackages.Active := True ;
 End ;
 Finally
  FreeAndNil(fWait) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.GetFileFromHTF ;
Var DeleteTdmVidaInvoice : Boolean ;
    LoadFile,
    FileName  : String ;
begin
 with dmLoadEntryCSDTemp do
 Begin

 Try
 Try

 if not Assigned(dmVidaInvoice) then
  Begin
   DeleteTdmVidaInvoice:= True ;
   dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
  End ;

//  LoadFile := dmVidaInvoice.HamtaEnUtleveransFran_PackageStatusHTF(cds_LSPLoadNo.AsInteger) ;

//  if LoadFile <> 'LoadOK' then
//  Begin

{  Try
   //H�mta lastfiler och statusfiler och l�gger in header i TransferFile och details(paket) i PackageStatusHTF
  dmVidaInvoice.HamtaFilerFranFTPOchUppdatera ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end; }


{  Try
   //Sparar ev �ndringar i paket och l�gger upp ev nya paket
  dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end; }

//  End ;//if LoadFile = 'LoadOK' then

  LoadFile := dmVidaInvoice.HamtaEnUtleveransFran_PackageStatusHTF(cds_LSPLoadNo.AsInteger) ;

  if LoadFile = 'LoadOK' then
  Begin
  With dmVidaInvoice do
  Begin
   Try
   CreateLoadToShip(cds_LSPShippingPlanNo.AsInteger, cds_LSPLoadNo.AsInteger) ;

   FileName := dmVidaInvoice.GetFileNameOfLoadNoFileName(cds_LSPLoadNo.AsInteger) ;
   SetTransferFileCompleteValue(FileName, c_ImportLoadFile, 1 {Complete}) ;

//   sq_TransferFiles.Edit ;
//   sq_TransferFilesComplete.AsInteger := 2 ;
//   sq_TransferFiles.Post ;

   Except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
//   ShowMessage(E.Message);
     Raise ;
    End ;
   End ;
  End ;//With
  End //if LoadFile <> 'No_Match' then
   else
    ShowMessage(LoadFile) ;

  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
//   ShowMessage(E.Message);
    Raise ;
   End ;
  end;

 Finally
  if DeleteTdmVidaInvoice = True then
   FreeAndNil(dmVidaInvoice) ;//.Free ;
 // Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ; //Finally
 End ;//with dmLoadEntryCSDTemp do
end;

(*procedure TfLoadEntryCSDTemp.GetFileFromHTF ;
Var DeleteTdmVidaInvoice : Boolean ;
    LoadFile,
    FileName  : String ;
begin
 with dmLoadEntryCSDTemp do
 Begin

 Try
 Try

 if not Assigned(dmVidaInvoice) then
  Begin
   DeleteTdmVidaInvoice:= True ;
   dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
  End ;

  LoadFile := dmVidaInvoice.HamtaEnUtleveransFran_PackageStatusHTF(cds_LSPLoadNo.AsInteger) ;

  if LoadFile <> 'LoadOK' then
  Begin

  Try
   //H�mta lastfiler och statusfiler och l�gger in header i TransferFile och details(paket) i PackageStatusHTF
  dmVidaInvoice.HamtaFilerFranFTPOchUppdatera ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end;


  Try
   //Sparar ev �ndringar i paket och l�gger upp ev nya paket
  dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end;

  End ;//if LoadFile = 'LoadOK' then

  LoadFile := dmVidaInvoice.HamtaEnUtleveransFran_PackageStatusHTF(cds_LSPLoadNo.AsInteger) ;

  if LoadFile = 'LoadOK' then
  Begin
  With dmVidaInvoice do
  Begin
   Try
   CreateLoadToShip(cds_LSPShippingPlanNo.AsInteger, cds_LSPLoadNo.AsInteger) ;

   FileName := dmVidaInvoice.GetFileNameOfLoadNoFileName(cds_LSPLoadNo.AsInteger) ;
   SetTransferFileCompleteValue(FileName, c_ImportLoadFile, 1 {Complete}) ;

//   sq_TransferFiles.Edit ;
//   sq_TransferFilesComplete.AsInteger := 2 ;
//   sq_TransferFiles.Post ;

   Except
    On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
//   ShowMessage(E.Message);
     Raise ;
    End ;
   End ;
  End ;//With
  End //if LoadFile <> 'No_Match' then
   else
    ShowMessage('Hittar ingen fil till lasten') ;

  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
//   ShowMessage(E.Message);
    Raise ;
   End ;
  end;

 Finally
  if DeleteTdmVidaInvoice = True then
   FreeAndNil(dmVidaInvoice) ;//.Free ;
 // Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ; //Finally
 End ;//with dmLoadEntryCSDTemp do
end;
*)

procedure TfLoadEntryCSDTemp.acGetFileFromHTFUpdate(Sender: TObject);
begin
 With dmLoadEntryCSDTemp do
 Begin
  acGetFileFromHTF.Enabled:= (DataSaved) and (LoadEnabled)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ;
end;

procedure TfLoadEntryCSDTemp.acSetPkgAsFixedExecute(Sender: TObject);

Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntryCSDTemp do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;

  try
  ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
      if cds_LoadPackages.State = dsBrowse then
      cds_LoadPackages.Edit ;
      if cds_LoadPackagesNoOfPackages.AsInteger = c_FixedPkg then
      cds_LoadPackagesNoOfPackages.AsInteger := c_Not_FixedPkg
      else
      cds_LoadPackagesNoOfPackages.AsInteger := c_FixedPkg ;
      cds_LoadPackagesChanged.AsInteger      := 1 ;
      cds_LoadPackages.Post ;

   End ;
   mtLoadPackages.Next ;
  End ;

  Finally
   ds_LoadPackages2.OnDataChange:= ds_LoadPackages2DataChange ;
   mtLoadPackages.Active:= False ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfLoadEntryCSDTemp.acSetPkgAsFixedUpdate(Sender: TObject);
begin
 acSetPkgAsFixed.Enabled  := (dmLoadEntryCSDTemp.cds_LoadPackages.Active) and (dmLoadEntryCSDTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntryCSDTemp.acRefreshTransferFilesExecute(
  Sender: TObject);
begin
 with dmLoadEntryCSDTemp do
 Begin
  sp_TransferFiles.Active := False ;
  sp_TransferFiles.ParamByName('@LoadNo').AsInteger := cds_LoadHeadLoadNo.AsInteger ;
  Try
   sp_TransferFiles.Active := True ;
  except
   On E: Exception do
    Begin
     dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
     Raise ;
    End ;
  end;
 End ;//with dmLoadEntryCSDTemp do
end;

procedure TfLoadEntryCSDTemp.acCreateAddressExecute(Sender: TObject);
Var AddressNo : Integer ;
    AddressName : String ;
begin
 //Open dialog to create a new delivery address
// if IsDataSaved = True then
// Begin
 OpenShipToAddressForm(AddressName, AddressNo);
 if AddressNo <> -1 then
 Begin
  With dmsContact do
  Begin
   if not cds_Comp_DelAdr.Active then
    cds_Comp_DelAdr.Active  := True ;
   Try
   if not cds_Comp_DelAdr.Locate('AddressNo',AddressNo, []) then // .FindKey([AddressNo]) then
   Begin
    cds_Comp_DelAdr.Insert ;
    cds_Comp_DelAdrAddressNo.AsInteger:= AddressNo ;
    cds_Comp_DelAdr.Post ;
    if cds_Comp_DelAdr.ChangeCount > 0 then
    Begin
     cds_Comp_DelAdr.ApplyUpdates(0) ;
     cds_Comp_DelAdr.CommitUpdates ;
    End ;
//    cds_Comp_DelAdr.Active:= False ;
//    cds_Comp_DelAdr.Active:= True ;
    dmLoadEntryCSDTemp.cds_DelAdress.Refresh ;
   End ;//if..
   Finally
    cds_Comp_DelAdr.Active  := False ;
   End ;
  End ;
 End ;
// End
//  else
//   ShowMessage('Spara dina �ndringar f�rst.') ;
end;

function TfLoadEntryCSDTemp.NoOfPkgsInLoad : Integer ;
begin
 with dmLoadEntryCSDTemp do
 Begin
  Result  := cds_LoadPackages.RecordCount ;
 End ;
End ;


end.
