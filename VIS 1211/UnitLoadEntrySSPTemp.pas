unit UnitLoadEntrySSPTemp;

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
  dxBarExtItems, Menus, cxLookAndFeelPainters, cxCalc, cxButtons, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter, dxSkinOffice2013White, cxNavigator ;

type
  TfLoadEntrySSPTemp = class(TForm)
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
    acOpenLOForm: TAction;
    dxBarButton2: TdxBarButton;
    acClose: TAction;
    acSaveAndOK: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    acPrintMeny: TAction;
    pmPrint: TdxBarPopupMenu;
    PopupMenu1: TPopupMenu;
    LggtillLO1: TMenuItem;
    Lggtillpaket1: TMenuItem;
    Lggtillpaketperpaketkod1: TMenuItem;
    Fltvljaren1: TMenuItem;
    ndralayout1: TMenuItem;
    Fltvljaren2: TMenuItem;
    StngF121: TMenuItem;
    KopplamarkeradepaketmotLOrad1: TMenuItem;
    AutoLO1: TMenuItem;
    abortlastF51: TMenuItem;
    Importpaket1: TMenuItem;
    Lggallapakettilllagret1: TMenuItem;
    Lggmarkeradepakettillbakstilllager1: TMenuItem;
    KopplamarkeradepaketmotLOmanuellt1: TMenuItem;
    Lastorderallaverk1: TMenuItem;
    ppnaLO1: TMenuItem;
    Plockapaketnr1: TMenuItem;
    PktinmatF91: TMenuItem;
    Paketinformation1: TMenuItem;
    Pktnrserie1: TMenuItem;
    Fljesedel1: TMenuItem;
    Hyvelorder1: TMenuItem;
    Lastorderertverk1: TMenuItem;
    SkrivutF81: TMenuItem;
    SpecificationallalasterLO1: TMenuItem;
    FljesedelUSA1: TMenuItem;
    abortallapaketfrnsystemet1: TMenuItem;
    StatusOKSparaF101: TMenuItem;
    SparaF31: TMenuItem;
    Sttstandardmatchningpallapaket1: TMenuItem;
    Inmatningsrad1: TMenuItem;
    Streckkod1: TMenuItem;
    abortpaketperpaketkod1: TMenuItem;
    ngra1: TMenuItem;
    ngratabort1: TMenuItem;
    ngratabort2: TMenuItem;
    Validerapaket1: TMenuItem;
    acPrintFSMisMatch: TAction;
    dxBarButton3: TdxBarButton;
    acDeleteNotCompletePkgs: TAction;
    acMailaFS: TAction;
    dxBarButton4: TdxBarButton;
    grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn;
    acSetStatusPrelandSave: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    lcPIP: TcxDBLookupComboBox;
    lcLIP: TcxDBLookupComboBox;
    acFixedPaket: TAction;
    dxBarButton5: TdxBarButton;
    acSend700Message: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    acGetHTFFile: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    acAktiveraLast: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    grdPkgsDBBandedTableView1CustomPcs: TcxGridDBBandedColumn;
    lcLeveransAdress: TcxDBLookupComboBox;
    Label9: TLabel;
    teNoteLine1: TcxDBTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    teNoteLine2: TcxDBTextEdit;
    Label12: TLabel;
    teNoteLine3: TcxDBTextEdit;
    lcDepartAdress: TcxDBLookupComboBox;
    Label13: TLabel;
    tsTransferFiles: TcxTabSheet;
    Panel3: TPanel;
    cxButton2: TcxButton;
    grdTransferFiles: TcxGrid;
    grdTransferFilesDBTableView1: TcxGridDBTableView;
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
    grdTransferFilesLevel1: TcxGridLevel;
    acRefreshTransferFiles: TAction;
    teNoteLine4: TcxDBTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    teNoteLine5: TcxDBTextEdit;
    Label16: TLabel;
    teNoteLine6: TcxDBTextEdit;
    Label17: TLabel;
    teEndUserRequisition: TcxDBTextEdit;
    teTransportHandler: TcxDBTextEdit;
    Label18: TLabel;
    acCreateAddress: TAction;
    cxButton1: TcxButton;


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
    procedure acShowNewRowExecute(Sender: TObject);
    procedure grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure acImportPackagesExecute(Sender: TObject);
    procedure acImportPackagesUpdate(Sender: TObject);
    procedure acCreateInternLOExecute(Sender: TObject);
    procedure acCreateInternLOUpdate(Sender: TObject);
    procedure acOpenLOFormExecute(Sender: TObject);
    procedure acOpenLOFormUpdate(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acSaveAndOKExecute(Sender: TObject);
    procedure acSaveAndOKUpdate(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acPrintFSMisMatchExecute(Sender: TObject);
    procedure acDeleteNotCompletePkgsExecute(Sender: TObject);
    procedure acMailaFSExecute(Sender: TObject);
    procedure acSetStatusPrelandSaveExecute(Sender: TObject);
    procedure acSetStatusPrelandSaveUpdate(Sender: TObject);
    procedure acFixedPaketExecute(Sender: TObject);
    procedure acSend700MessageExecute(Sender: TObject);
    procedure acGetHTFFileExecute(Sender: TObject);
    procedure acAktiveraLastExecute(Sender: TObject);
    procedure acAktiveraLastUpdate(Sender: TObject);
    procedure acGetHTFFileUpdate(Sender: TObject);
    procedure acRefreshTransferFilesExecute(Sender: TObject);
    procedure acCreateAddressExecute(Sender: TObject);
    procedure acSend700MessageUpdate(Sender: TObject);

  private
    { Private declarations }

     LoadEnabled, AddingPkgsFromPkgEntry : Boolean ;
     function  NoOfPkgsInLoad : Integer ;
     procedure SetPackagesToChanged ;
     procedure GetFileFromHTF ;
     function  ControlInvDate : Boolean ;
     procedure ValidateAllPkgs ;
     procedure SaveLoad ;
     Procedure Generate_LSP_Sales_SQL (const LoadNo : Integer) ;
     procedure UpdateInternLO ;
     procedure CreateInternLO ;
     procedure OpenInternLO(const LO : Integer) ;
     procedure InsertImportedPkgs(Sender: TObject) ;
     procedure SetLoadEnabled ;
     Procedure Get_LO_LookUp_SQL (const AVROP_CUSTOMERNO, Shipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo, LO_ETT : Integer) ;
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


     function  ValidatePkg(const PkgNo : Integer;const PkgSupplierCode : String3;
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

     procedure InsertSelectedPkgNos(Sender: TObject) ;
     function IsPkgReserved(
     const PkgNo : Integer;
     var PkgSupplierCode: String3;
     Var Res_UserName : String) : TEditAction;

     procedure ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
            PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);


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

 var  fLoadEntrySSPTemp: TfLoadEntrySSPTemp;

implementation

uses //dmcLoadEntrySSP,
  VidaConst, dlgPickPkg,
  dmsVidaContact, UnitPackageEntry, dmsVidaProduct, //UnitSelectLO_NumberSSP,
  VidaUser, UnitCRViewReport, UnitPkgInfo,
  UnitPkgNoSeries, dmcVidaOrder, dmsVidaSystem, dmcVidaSystem , uPickPkgNo,
  uScanLoadPkgNo, uEntryField, dmsDataConn, //dmsVidaPkg,
  MainU, //uImportedPackages ,
  dmc_ImportWoodx, dmcVidaLO, //uLOform ,
  UnitCRExportOneReport, uSendMapiMail, dmc_UserProps, VidaUtils ,
  dmcLoadEntrySSPTemp, dmcVidaInvoice, uWait,
  fShipToAddress ;

{$R *.dfm}

{ TfrmLoadEntry }

procedure TfLoadEntrySSPTemp.SetLoadEnabled ;
Var LoadAR  : Boolean ;
Begin
 With dmLoadEntrySSPTemp do
 Begin
   LoadAR := dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;

   LoadEnabled:= True ;

//  if (dmsSystem.sp_OneLoadConfirmed.AsInteger > 0) or (dmsSystem.sp_OneLoadInvoiced.AsInteger > 0)
   if (LoadAR)  or (cds_LoadHeadSenderLoadStatus.AsInteger = 2) then
  Begin
   if ThisUser.UserID = 888 then
   Begin
    LoadEnabled:= True ;

    if LoadAR then
    Caption                                               := 'Lasten kan inte ändras för att den är ankomstregistrerad'
    else
    Caption                                               := 'Lasten kan inte ändras för att status är "Avslutad"' ;

    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
   End
   else


   Begin
    MessageBeep(MB_ICONEXCLAMATION);

    if LoadAR then
    Caption                                               := 'Lasten kan inte ändras för att den är ankomstregistrerad'
    else
    Caption                                               := 'Lasten kan inte ändras för att status är "Avslutad"' ;

    LoadEnabled                                           := False ;
    cds_LoadHead.UpdateOptions.ReadOnly                                 := True ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := True ;
    cds_LSP.UpdateOptions.ReadOnly                                      := True ;
    cds_LoadPackages.UpdateOptions.ReadOnly                             := True ;
   End ;
  End //if LoadAR
  else
   Begin
    MessageBeep(MB_ICONEXCLAMATION);

    Caption                                               := 'Lasten kan ändras.' ;

    LoadEnabled                                           := True ;
    cds_LoadHead.UpdateOptions.ReadOnly                                 := False ;
    grdLORowsDBBandedTableView1MATCH.Properties.ReadOnly  := False ;
    cds_LSP.UpdateOptions.ReadOnly                                      := False ;
    cds_LoadPackages.UpdateOptions.ReadOnly                             := False ;
   End ;

   if ThisUser.UserID = 888 then
   Begin
    LoadEnabled:= True ;
    grdPkgsDBBandedTableView1DefaultCustShipObjectNo.Visible  := True ;
    grdPkgsDBBandedTableView1Defsspno.Visible                 := True ;
    grdPkgsDBBandedTableView1Defsspno.Hidden                  := False ;
   End ;

//  dmsSystem.sp_OneLoad.Close ;
 End ;//with 
End ;

function TfLoadEntrySSPTemp.DataSaved : Boolean ;
Begin
 With dmLoadEntrySSPTemp do
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

Procedure TfLoadEntrySSPTemp.Generate_LSP_Sales_SQL(const LoadNo : Integer) ;
Begin
   With dmLoadEntrySSPTemp do
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
    cds_LSP.SQL.Add('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;



    cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    cds_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;

    cds_LSP.SQL.Add('   Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    cds_LSP.SQL.Add('        						                        AND 	SSP.SupplierNo = L.SupplierNo') ;
    cds_LSP.SQL.Add('                                            AND 	SSP.CustomerNo = L.CustomerNo') ;
    cds_LSP.SQL.Add('                                            AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    cds_LSP.SQL.Add('                                            AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;


    cds_LSP.SQL.Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.LoadingLocationNo') ;
    cds_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.SupplierNo') ;

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


    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    cds_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    cds_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('WHERE') ;
    cds_LSP.SQL.Add('LS.LoadNo = '+IntToStr(LoadNo)) ;
//    if ThisUser.UserID = 8 then cds_LSP.SQL.SaveToFile('Generate_LSP_Sales_SQL.txt') ;
   End ;
End ;

constructor TfLoadEntrySSPTemp.CreateWithExistingLoad(
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

  Procedure OpenLoadHead ;
  Begin
   With dmLoadEntrySSPTemp do
   Begin
    cds_LoadHead.Active:= False ;
    cds_LoadHead.ParamByName('LoadNo').AsInteger:= LoadNo ;
    cds_LoadHead.Open ;
    cds_LoadHead.Active:= True ;
   End ;
  End ;

 Procedure GetLO_Records ;
 Begin
   With dmLoadEntrySSPTemp do
   Begin
    cdsLORows.DisableControls ;
    Try
     cdsLORows.Active:= False ;
     cdsLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
     cdsLORows.Active:= True ;

    Finally
     cdsLORows.EnableControls ;
    End ;
   End ;//with
 End ;

 Procedure Get_LoadPackages ;
 Begin
 // dmLoadEntrySSPTemp.GlobalLoadDetailNo :=  1 + dmLoadEntrySSPTemp.GetMaxLoadDetailNoMaxLoadDetailNo(LoadNo) ;

   With dmLoadEntrySSPTemp do
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

Procedure Generate_LSP_Purchase_SQL ;
Begin
   With dmLoadEntrySSPTemp do
   Begin
    cds_LSP.SQL.Clear ;
    cds_LSP.SQL.Add(' SELECT DISTINCT') ;
    cds_LSP.SQL.Add('1 AS Shipping,') ;
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
    cds_LSP.SQL.Add('ShipTo.CityName AS SHIP_TO, 0 AS "Function", SSP.LIPNo, PIP.PhysicalInventoryPointNo AS PIPNo') ;

    cds_LSP.SQL.Add('FROM dbo.LoadShippingPlan LS') ;
    cds_LSP.SQL.Add('        Inner Join dbo.Loads L                          ON      L.LoadNo = LS.LoadNo') ;
    cds_LSP.SQL.Add('        Inner Join dbo.SupplierShippingPlan SSP 	ON 	SSP.ShippingPlanNo = LS.ShippingPlanNo') ;
    cds_LSP.SQL.Add('        						AND 	SSP.SupplierNo = L.SupplierNo') ;
    cds_LSP.SQL.Add('    AND 	SSP.CustomerNo = L.CustomerNo') ;
    cds_LSP.SQL.Add('                                                        AND SSP.LoadingLocationNo = LS.LoadingLocationNo') ;
    cds_LSP.SQL.Add('                                                        AND SSP.ShipToInvPointNo = LS.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Left Outer Join dbo.PhysicalInventoryPoint PIP		ON PIP.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
    cds_LSP.SQL.Add('	AND PIP.OwnerNo = SSP.CustomerNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.City	Loading		ON Loading.CityNo = SSP.LoadingLocationNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.City	ShipTo		ON ShipTo.CityNo = SSP.ShipToInvPointNo') ;

    cds_LSP.SQL.Add('	Inner Join dbo.Client		Supp 	ON  	Supp.ClientNo	= SSP.SupplierNo') ;
    cds_LSP.SQL.Add('	Inner Join dbo.Client		LocCust	ON  	LocCust.ClientNo	= SSP.CustomerNo') ;

    cds_LSP.SQL.Add('  Left Outer Join dbo.CustomerShippingPlanHeader CSH') ;
    cds_LSP.SQL.Add('  Inner Join dbo.Client		C 	ON  	C.ClientNo	= CSH.CustomerNo') ;
    cds_LSP.SQL.Add('  Inner JOIN dbo.Orders 		OH	ON	OH.OrderNo 		= CSH.OrderNo') ;
    cds_LSP.SQL.Add('                                AND OH.OrderType = 1') ;
    cds_LSP.SQL.Add('                              ON      CSH.ShippingPlanNo = SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('       	LEFT OUTER JOIN dbo.Booking		Bk') ;
//    cds_LSP.SQL.Add('	LEFT OUTER JOIN dbo.VoyageDestination	VD 	ON  	Bk.BookingNo		= vd.BookingNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Voyage		Vg 	ON  	Bk.VoyageNo		= Vg.VoyageNo') ;
    cds_LSP.SQL.Add('	Left Outer JOIN dbo.Client		SC 	ON  	Bk.ShippingCompanyNo 	= SC.ClientNo') ;
    cds_LSP.SQL.Add('	Left outer JOIN dbo.Carrier            	Cr 	ON  	Vg.CarrierNo    	= Cr.CarrierNo') ;
    cds_LSP.SQL.Add('							ON  	Bk.ShippingPlanNo	= SSP.ShippingPlanNo') ;

    cds_LSP.SQL.Add('WHERE') ;

    cds_LSP.SQL.Add('LS.LoadNo = '+IntToStr(LoadNo)) ;
    cds_LSP.SQL.Add('AND L.SupplierNo = '+IntToStr(FSupplierNo)) ;
    cds_LSP.SQL.Add('AND L.CustomerNo = '+IntToStr(FCustomerNo)) ;



//   if ThisUser.UserID = 8 then cds_LSP.SQL.SaveToFile('Generate_LSP_Purchase_SQL.txt') ;
   End ;
End ;

//Begin with procedure CreateWithExistingLoad(
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
  CreateWithNewLoad(AOwner, SPCustomerNo, SupplierNo {Lars}{CustomerNo} {supplierno}, 0, 0, LLNo, LoadNo, Shipping, -1{orderClient});
  fShipping           := Shipping ;
  With dmLoadEntrySSPTemp do
  Begin
   ds_LoadPackages2.Enabled:= False ;
   OpenLoadHead ;
   LoadStatus     := cds_LoadHeadSenderLoadStatus.AsInteger ;
   FCustomerNo    := cds_LoadHeadCustomerNo.AsInteger ;
   FSupplierNo    := cds_LoadHeadSupplierNo.AsInteger ;
   FOrderClientNo := OrderClientNo ;

   dmsConnector.UpdateMaxSecByLoad(LoadNo) ;

   cds_LSP.Active:= False ;
   if Shipping = 0 then
    Generate_LSP_Sales_SQL(LoadNo)
     else
      Generate_LSP_Purchase_SQL ;
   cds_LSP.Active:= True ;

   GetLO_Records ;
   Get_LoadPackages ;

   dmLoadEntrySSPTemp.Get_LO_LinesMatched (dmLoadEntrySSPTemp.cds_LoadPackagesPackageNo.AsInteger, dmLoadEntrySSPTemp.cds_LoadPackagesSupplierCode.AsString) ;

  dmLoadEntrySSPTemp.csdUnit_OpenLagerLookup ;
  cds_LoadHead.Refresh ;

  SetLoadEnabled ;
  ds_LoadPackages2.Enabled:= True ;
 End ; //with

 Finally
  Screen.Cursor := Save_Cursor ;
 End ;
end;

constructor TfLoadEntrySSPTemp.CreateWithNewLoad(
AOwner: TComponent;
const LocalCustomerNo,
      LocalSupplierNo,
      LO_No,
      ShipToInvPointNo,
      LoadingLocationNo,
      LoadNo,
      Shipping,
      OrderClientNo : Integer) ;

//Var FLocalSupplierNo, x : Integer ;
Var ReservedByUser  : String ;

begin
  inherited Create(AOwner);

  dmLoadEntrySSPTemp      := TdmLoadEntrySSPTemp.Create(Self);
  fShipToInvPointNo   := ShipToInvPointNo ;
  fLoadingLocationNo  := LoadingLocationNo ;
  fShipping           := Shipping ;
  FOrderClientNo      := OrderClientNo ;

  if fShipping = 0 then
  grdLODBTableView1CUSTOMER.Caption:= 'KUND'
  else
  grdLODBTableView1CUSTOMER.Caption:= 'LEVERANTÖR' ;

  LoadEnabled:= True ;

 With dmLoadEntrySSPTemp do
 Begin
   cdsLORows.Active                         := False ;
   cdsLORows.ParamByName('LoadNo').AsInteger := -1 ;
   cdsLORows.Active                         := True ;
   cds_LoadPackages.Active                  := True ;

   dmsContact.cdsCities.Active              := False ;
   dmsContact.cdsCities.Active              := True ;
   dmsContact.cds_LocalShipper.Active       := True ;

   cds_LoadHead.Active:= True ;

   if LoadNo < 1 then
   Begin
    cds_LoadHead.Insert ;
    cds_LoadHeadSenderLoadStatus.AsInteger    := 0 ;
    cds_LoadHeadLoadedDate.AsSQLTimeStamp     := DateTimeToSQLTimeStamp(Now) ;
    cds_LoadHeadPIPNo.AsInteger               := cds_LSPPIPNo.AsInteger ;
    cds_LoadHeadLIPNo.AsInteger               := cds_LSPLIPNo.AsInteger ;
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
    AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo, ShipToInvPointNo, LoadingLocationNo);
   End ;


   if fShipping = 0 then
   dm_UserProps.Refresh_cds_PIP2(LocalSupplierNo, LocalSupplierNo)
   else
   dm_UserProps.Refresh_cds_PIP2(LocalCustomerNo, LocalCustomerNo) ;


  if (cds_LSP.Active) and (cds_LSP.RecordCount > 0) then
   SaveLoad ;
 End ; //with

end;

destructor TfLoadEntrySSPTemp.Destroy;
begin
  CloseDataSets;
  dmLoadEntrySSPTemp.Free ;
  inherited
end;

procedure TfLoadEntrySSPTemp.CloseDataSets;
begin
   With dmLoadEntrySSPTemp do
   Begin
    cds_LoadHead.Active               := False ;
    cds_LoadPackages.Active           := False ;
//    dmsContact.cdsCities.Active       := False ;
    dmsContact.cds_LocalShipper.Active:= False ;
   End ;
end;

function TfLoadEntrySSPTemp.AfterAddedPkgNo(Sender: TObject;
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
 With dmLoadEntrySSPTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSPTemp.cdsLORows.First ;
   LO_Number:= dmLoadEntrySSPTemp.cdsLORowsShippingPlanNo.AsInteger ;

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
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                   := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger    := -1 ;
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
    Except
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

function TfLoadEntrySSPTemp.IdentifyPackageSupplier(
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
    PkgSupplierCode := dmLoadEntrySSPTemp.PkgNoToSuppCode(
    //Const
    PkgNo,
    FSupplierNo,
    dmLoadEntrySSPTemp.cds_LoadHeadPIPNo.AsInteger,
    //Var
    PkgSupplierNo,
    ProductNo,
    ProductLengthNo, NoOfLengths);

    if PkgSupplierCode = '' then
    Begin
     Result := eaREJECT;
    End
    else

//  check that no user has reserved the package
        if dmsSystem.Pkg_Reserved(PkgNo,
        PkgSupplierCode,
        'TfLoadEntrySSP', //Self.Name,
        Res_UserName          ) = ThisUser.UserName+'/'+'TfLoadEntrySSP' //{ NO_USER_HAS_THIS_PACKAGE_RESERVED }
        then
         begin
          Result := eaACCEPT ;
         end
        else
        begin
          MessageBeep(MB_ICONEXCLAMATION);
          Result := eaReserved ; //eaREJECT;
        end;


//    if dmLoadEntrySSPTemp.cds_LoadPackages.FindKey([PkgNo, PkgSupplierCode]) then
//    Begin
//      Result:= eaDuplicate ;
//    End
//     else
end;

function TfLoadEntrySSPTemp.AddLoadDetailMatchByProductNo(Var CustcdsNo : Integer;const PkgNo : Integer; const SUPP_CODE : String3;const ProductNo, ProductLengthNo, NoOfLengths : Integer) : Integer ;
begin
 if AddingPkgsFromPkgEntry = False then
 Begin
 With dmLoadEntrySSPTemp do
 Begin
//if packages have multiple lengths then filter on random lengths LO's
//else filter on fixed length LO
//ProductLengthNo, NoOfLengths
 if cdsLORowsSpeciesNo.AsInteger = FuruGran then
 Begin
    if NoOfLengths > 1 then
    Begin
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ProductNo = ' + IntToStr(ProductNo)
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND ACT_LENGTH < 1' ;

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;

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
     +' AND ACT_LENGTH = ' + cds_LoadPackagesALMM.AsString
     +' AND PCSPERPKG = ' + ReplaceCommas(cds_LoadPackagesPCS.AsString) ;

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
     +' AND ACT_LENGTH = ' + cds_LoadPackagesALMM.AsString ;

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

     //TRy match on RL utan productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
//     +' AND SpeciesNo = '+cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;
    End ;

    End
    else
    //Specifikt träslag
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

     //TRy match on MainGrade only!
     if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' + cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;
    End//if NoOfLengths > 1 then
    else
    Begin
     //Single lengths
     //Try match on pakettypnr
     if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
     cdsLORows.Filter:= 'PackageTypeNo = ' + cds_LoadPackagesPackageTypeNo.AsString
     else
     cdsLORows.Filter:= 'PackageTypeNo = -1' ;

     cdsLORows.Filtered:= True ;

    if cds_LoadPackagesPackageTypeNo.AsInteger > 0 then
    Begin
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

     //TRy match on RL utan productNo
    if cdsLORows.RecordCount = 0 then
     cdsLORows.Filter:= 'ACT_THICK = ' + ReplaceCommas(cds_LoadPackagesActualThicknessMM.AsString)
     +' AND ACT_WIDTH = ' + ReplaceCommas(cds_LoadPackagesActualWidthMM.AsString)
     +' AND GradeNo = ' + cds_LoadPackagesMainGradeNo.AsString
     +' AND SurfacingNo = ' +  cds_LoadPackagesSurfacingNo.AsString
     +' AND ProductCategoryNo = ' + cds_LoadPackagesProductCategoryNo.AsString
     +' AND SpeciesNo = ' + cds_LoadPackagesSpeciesNo.AsString
     +' AND ACT_LENGTH < 1' ;
   End
    else
     cdsLORows.Filter:= 'ACT_THICK = -1' ;
     
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



//Check if a package in load detail is Valid
function TfLoadEntrySSPTemp.ValidatePkg(const PkgNo : Integer;const PkgSupplierCode : String3;
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
 LO_Number            := dmLoadEntrySSPTemp.cdsLORowsShippingPlanNo.AsInteger ;

 //LOLine is the SuppShipPlanObjectNo or SuppShipPlanObjectNo
 ValidPackage := ValidatePackage_ver2( CustcdsNo, PkgSupplierCode, PkgNo, SuppShipPlanObjectNo, PkgLog, LO_Number,
 OverrideRL, ProductNo, ProductLengthNo, NoOfLengths ) ;

 Result:= ValidPackage ;

   With dmLoadEntrySSPTemp do
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
    and (cds_LoadPackagesOverrideRL.AsInteger = 1)) then
    Begin
     cds_LoadPackagesDefsspno.AsInteger                 := SuppShipPlanObjectNo ;
     cds_LoadPackagesDefaultCustShipObjectNo.AsInteger  := -1 ;
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

procedure TfLoadEntrySSPTemp.lbRemovePackageClick(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= NIL ;

  if dmLoadEntrySSPTemp.cds_LoadPackagesPkg_State.AsInteger =  NEW_PACKAGE then
   dmLoadEntrySSPTemp.cds_LoadPackages.Delete
   else
   Begin
    if dmLoadEntrySSPTemp.cds_LoadPackages.State = dsBrowse then
    dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
    dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger := REMOVE_PKG_FROM_LOAD ;
    dmLoadEntrySSPTemp.cds_LoadPackagesChanged.AsInteger      := 1 ;
    dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
   End ;

  Finally
   dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSPTemp.ds_LoadPackages2DataChange ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
end;

Procedure TfLoadEntrySSPTemp.GetLO_Records_AfterAddingLO_Number(LO_Number : Integer) ;
 Var x : integer ;
 Begin
   With dmLoadEntrySSPTemp do
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

      cdsLORowsINCH_THICK.AsFloat           := StrToFloatDef(sq_GetLO_RecordsINCH_THICK.AsString,0) ;
      cdsLORowsINVCH_WIDTH.AsFloat          := StrToFloatDef(sq_GetLO_RecordsINVCH_WIDTH.AsString,0) ;
      cdsLORowsLoadNo.AsInteger             := cds_LoadHeadLoadNo.AsInteger ;
      cdsLORowsMATCH.AsInteger              := 0 ;
      cdsLORowsOverrideRL.AsInteger         := sq_GetLO_RecordsOverrideRL.AsInteger ;
      cdsLORowsProductCategoryNo.AsInteger  := sq_GetLO_RecordsProductCategoryNo.AsInteger ;
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

procedure TfLoadEntrySSPTemp.FormCreate(Sender: TObject);
begin
  dmLoadEntrySSPTemp.OnAmbiguousPkgNo := ResolvePkgNoAmbiguity;
  AddingPkgsFromPkgEntry:= False ;

  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLO.Name, grdLODBTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdLORows.Name, grdLORowsDBBandedTableView1) = False then ;
  if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdPkgs.Name, grdPkgsDBBandedTableView1) = False then ;

  if ThisUser.CompanyNo = 741 then
   acImportPackages.Enabled:= True
    else
     acImportPackages.Enabled:= False ;
end;

procedure TfLoadEntrySSPTemp.ResolvePkgNoAmbiguity(
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

procedure TfLoadEntrySSPTemp.FormCloseQuery(Sender: TObject;
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

   dmsSystem.DelLoad_Res(dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger) ;
  End ;
 End ;
end;

procedure TfLoadEntrySSPTemp.InsertPkgSerie(Sender: TObject) ;
Var     NoOfPkgsInSerie, PkgNo : Integer ;
        ResultButton : word ;
        Save_Cursor:TCursor;
        frmPkgNoSeries : TfrmPkgNoSeries ;
begin
 ResultButton:= mrYes ;
 With dmLoadEntrySSPTemp do
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

function TfLoadEntrySSPTemp.ValidatePkgInSerie(Sender: TObject; PkgNo: Integer) : TEditAction ;
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
      dmLoadEntrySSPTemp.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );

  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackages(Sender, PkgNo, PkgSupplierCode) ;
    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     dmLoadEntrySSPTemp.cds_LoadPackages.Cancel ;
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte') ;
    End
   else
   if Action = eaReserved then
    Begin
     dmLoadEntrySSPTemp.cds_LoadPackages.Cancel ;
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' är reserverat av '+Res_UserName) ;
    End ;

  Result:= Action ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSPTemp.AddLONumberOnOpenTheForm(LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo : Integer);
Var Save_Cursor : TCursor;
begin
 With dmLoadEntrySSPTemp do
 Begin
  Save_Cursor             := Screen.Cursor;
  Screen.Cursor           := crHourGlass;
  cds_LO_LookUp.Filtered  := False ;
  Try
  if cds_LO_LookUp.Active = False then
   Begin
    Get_LO_LookUp_SQL (FOrderClientNo {AVROP_CUSTOMERNO}, fShipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo, 1)  ;
    cds_LO_LookUp.Active:= True ;
{    if ThisUser.UserID = 8 then
    Begin
     sq_LO_LookUp.SQL.Add('-- cds_LO_LookUp.RecordCount = ' + IntToStr(cds_LO_LookUp.RecordCount)) ;
     dmsSystem.ShowMemo(sq_LO_LookUp.SQL) ;
    End ; }
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

    if cds_LoadHead.State = dsBrowse then
    cds_LoadHead.Edit ;
    cds_LoadHeadPIPNo.AsInteger             := cds_LSPPIPNo.AsInteger ;
    cds_LoadHeadLIPNo.AsInteger             := dmsContact.GetMaxLIPNoOfPIPNo(cds_LSPPIPNo.AsInteger) ;
    cds_LoadHead.Post ;


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

function TfLoadEntrySSPTemp.ValidatePackage_ver2(
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
   With dmLoadEntrySSPTemp do
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
  With dmLoadEntrySSPTemp do
  Begin
   if cdsLORowsACT_LENGTH.AsInteger = 0 then
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
  With dmLoadEntrySSPTemp do
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
  With dmLoadEntrySSPTemp do
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

  With dmLoadEntrySSPTemp do
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

function TfLoadEntrySSPTemp.AddPkgTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSPTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
   dmLoadEntrySSPTemp.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSPTemp.cdsLORowsShippingPlanNo.AsInteger ;
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

       cds_LoadPackagesCustomPcs.AsInteger      := cds_LoadPackagesPcs.AsInteger ;

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
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger:= sq_OnePkgDetailDataPackageTypeNo.AsInteger ;

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

procedure TfLoadEntrySSPTemp.pmPkgsPopup(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  if cds_LoadPackagesOverrideMatch.AsInteger = 0 then
   bbMatcha.Caption:= 'Matcha manuellt'
    else
     bbMatcha.Caption:= 'Matcha automatiskt' ;
 End ;
end;

procedure TfLoadEntrySSPTemp.bbTally_Ver2Click(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 SetLength(A, 1);
 A[0]:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;

 if dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT', A)
  else
  Begin
   Try
   dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
   dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT', A) ;
  End ;

 if FormCRViewReport.ReportFound then
 Begin

  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
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

procedure TfLoadEntrySSPTemp.InsertSelectedPkgNos(Sender: TObject) ;
Var SupplierShipPlanObjectNo : Integer ;
begin
 With dmsSystem, dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.ValidatePkgNoSuppCode(Sender: TObject; const PkgNo: Integer;
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
   if dmLoadEntrySSPTemp.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager ' + Trim(lcPIP.Text)
    +'/'+'') ;//Trim(bcLogicalInventory.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
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

function TfLoadEntrySSPTemp.IsPkgReserved(
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

procedure TfLoadEntrySSPTemp.ScanningEgnaPkgNo(Sender: TObject; PkgNo, EgenPkgSupplierCode : String) ;
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

  if dmLoadEntrySSPTemp.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
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

procedure TfLoadEntrySSPTemp.InsertScannedPkgNo(Sender : TObject;const PkgNo : Integer;const PkgSupplierCode : String) ;
Var
SuppShipPlanObjectNo,
CustcdsNo,
LO_Number,
OverrideRL : Integer ;
begin
 With dmLoadEntrySSPTemp do
 Begin
  Try
   dmLoadEntrySSPTemp.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSPTemp.cdsLORowsShippingPlanNo.AsInteger ;
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
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger        := sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString             := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat                    := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat                    := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat                       := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat                      := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger                     := sq_OnePkgDetailDataPCS.AsInteger ;

       cds_LoadPackagesCustomPcs.AsInteger              := cds_LoadPackagesPcs.AsInteger ;

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

procedure TfLoadEntrySSPTemp.InsertPkgNo(Sender: TObject) ;
begin
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.ScanningPkgNo(Sender: TObject; PkgNo : String) ;
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
      dmLoadEntrySSPTemp.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );
    End ;

  if dmLoadEntrySSPTemp.cds_LoadPackages.FindKey([NewPkgNo, PkgSupplierCode]) then
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

procedure TfLoadEntrySSPTemp.acValidatePkgExecute(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 Try
  if dmLoadEntrySSPTemp.cds_LoadPackages.State = dsBrowse then
  Begin
   dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
   Try
    ValidatePkg(dmLoadEntrySSPTemp.cds_LoadPackagesPACKAGENO.AsInteger,
    dmLoadEntrySSPTemp.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSPTemp.cds_LoadPackagesProductNo.AsInteger,
     dmLoadEntrySSPTemp.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSPTemp.cds_LoadPackagesNoOfLengths.AsInteger) ;

    dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
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

procedure TfLoadEntrySSPTemp.acValidateAllPkgsExecute(Sender: TObject);
begin
 ValidateAllPkgs ;
end;

procedure TfLoadEntrySSPTemp.ValidateAllPkgs ;
Var Save_Cursor : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 With dmLoadEntrySSPTemp do
 Begin
  ds_LoadPackages2.DataSet:= Nil ;
  cds_LoadPackages.DisableControls ;
  Try
   cds_LoadPackages.First ;
    While not cds_LoadPackages.Eof do
    Begin
//     if cds_LoadPackagesPackageOK.AsInteger <> ALL_OK then
//     Begin
      cds_LoadPackages.Edit ;
      Try
      ValidatePkg(dmLoadEntrySSPTemp.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSPTemp.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSPTemp.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntrySSPTemp.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSPTemp.cds_LoadPackagesNoOfLengths.AsInteger) ;
      cds_LoadPackages.Post ;
      Except
       on eDatabaseError do
       Raise ;
      End ;
//     End ;//if
     cds_LoadPackages.Next ;
    End ; //while

  Finally
   ds_LoadPackages2.DataSet:= cds_LoadPackages ;
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;
  End ;
 End ;  //with
end;

procedure TfLoadEntrySSPTemp.acInsertPkgToInventoryExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.acInsertAllPkgsToInventoryExecute(
  Sender: TObject);
Var Save_Cursor : TCursor ;
Begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 dmLoadEntrySSPTemp.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= NIL ;
  dmLoadEntrySSPTemp.cds_LoadPackages.First ;
  While not dmLoadEntrySSPTemp.cds_LoadPackages.Eof do
  Begin
   dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
   dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger  := REMOVE_PKG_FROM_LOAD ;
   dmLoadEntrySSPTemp.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
   dmLoadEntrySSPTemp.cds_LoadPackages.Next ;
//April 22 2004
   Application.ProcessMessages ;
  End ;
 Finally
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSPTemp.ds_LoadPackages2DataChange ;
  dmLoadEntrySSPTemp.cds_LoadPackages.EnableControls ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
end;

procedure TfLoadEntrySSPTemp.acRemovePkgFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 if MessageDlg('Är du säker? markerade paket kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 With dmLoadEntrySSPTemp do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  mtLoadPackages.Active:= True ;
  GetMarkedPkgs ;
  Try
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= NIL ;

  mtLoadPackages.First ;
  While not mtLoadPackages.Eof do
  Begin
   if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', VarArrayOf([cds_LoadHeadLoadNo.AsInteger, mtLoadPackagesLoadDetailNo.AsInteger]),[]) then
   Begin
    dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
    dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
    dmLoadEntrySSPTemp.cds_LoadPackagesChanged.AsInteger       := 1 ;
    dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
   End ;
   mtLoadPackages.Next ;
  End ;//While..

 Finally
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSPTemp.ds_LoadPackages2DataChange ;
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;
 End ;//With..
end;

procedure TfLoadEntrySSPTemp.acRemoveAllPkgsFromSystemExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
  if MessageDlg('Är du säker? paketen kommer att fösvinna från systemet!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  dmLoadEntrySSPTemp.cds_LoadPackages.DisableControls ;
 Try
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= NIL ;

  dmLoadEntrySSPTemp.cds_LoadPackages.First ;
  While not dmLoadEntrySSPTemp.cds_LoadPackages.Eof do
  Begin
   dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
   dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger  := DELETE_PKG ;
   dmLoadEntrySSPTemp.cds_LoadPackagesChanged.AsInteger       := 1 ;
   dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
   dmLoadEntrySSPTemp.cds_LoadPackages.Next ;
  End ;

  Finally
   dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSPTemp.ds_LoadPackages2DataChange ;
   dmLoadEntrySSPTemp.cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ; //if
end;

procedure TfLoadEntrySSPTemp.acUndoPkgOperationExecute(Sender: TObject);
begin
//Undo
 Try
 dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= NIL ;

 Case dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger of
  DELETE_PKG            :
  Begin
   dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
   dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntrySSPTemp.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
  End ;
  REMOVE_PKG_FROM_LOAD  :
  Begin
   dmLoadEntrySSPTemp.cds_LoadPackages.Edit ;
   dmLoadEntrySSPTemp.cds_LoadPackagesPkg_Function.AsInteger  := ADD_PKG_TO_LOAD ;
   dmLoadEntrySSPTemp.cds_LoadPackagesChanged.AsInteger       := 0 ;
   dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
  End ;
 End ; //case
 Finally
  dmLoadEntrySSPTemp.ds_LoadPackages2.OnDataChange:= dmLoadEntrySSPTemp.ds_LoadPackages2DataChange ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acSetDefaultMatchOnAllPkgsExecute(
  Sender: TObject);
var
 Save_Cursor  : TCursor;
 CustcdsNo,
 SSPObjectNo  : Integer ;
Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 With dmLoadEntrySSPTemp do
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


procedure TfLoadEntrySSPTemp.acPkgInfoExecute(Sender: TObject);
var frmPkgInfo : TfrmPkgInfo;
begin
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo    := dmLoadEntrySSPTemp.cds_LoadPackagesPackageNo.AsInteger ;
  frmPkgInfo.SupplierCode := dmLoadEntrySSPTemp.cds_LoadPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acAddPkgExecute(Sender: TObject);
begin
 if dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger > 0 then
  dmLoadEntrySSPTemp.cds_LoadPackages.Append
   else
    ShowMessage('Spara lasten först.') ;
end;

procedure TfLoadEntrySSPTemp.acValidatePkgUpdate(Sender: TObject);
begin
 acValidatePkg.Enabled:= (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acValidateAllPkgsUpdate(Sender: TObject);
begin
 acValidateAllPkgs.Enabled:= (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acInsertPkgToInventoryUpdate(Sender: TObject);
begin
 acInsertPkgToInventory.Enabled:=  (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acInsertAllPkgsToInventoryUpdate(Sender: TObject);
begin
 acInsertAllPkgsToInventory.Enabled:=  (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acRemovePkgFromSystemUpdate(Sender: TObject);
begin
 acRemovePkgFromSystem.Enabled:=  (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acRemoveAllPkgsFromSystemUpdate(Sender: TObject);
begin
 acRemoveAllPkgsFromSystem.Enabled:=  (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acUndoPkgOperationUpdate(Sender: TObject);
begin
 acUndoPkgOperation.Enabled:=  (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acSetDefaultMatchOnAllPkgsUpdate(Sender: TObject);
begin
 acSetDefaultMatchOnAllPkgs.Enabled:=  (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acPkgInfoUpdate(Sender: TObject);
begin
 acPkgInfo.Enabled:=  dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0 ;
end;

procedure TfLoadEntrySSPTemp.acAddPkgByPkgCodeExecute(Sender: TObject);
Var Save_Cursor : TCursor;
    noofpkgs : integer ;
    fEntryField : TfEntryField ;
begin
 //Add pkgs by package code
 //ta coden från lo rad
 //mata in antal paket
 //hämta paket från lagret, äldsta paketnr först
 With dmLoadEntrySSPTemp do
 Begin
  if cds_LoadHeadLoadNo.AsInteger > 0 then
  Begin
  noofpkgs:= 0 ;

  if cds_LoadPackages.State in [dsEdit, dsInsert] then
  Try
  cds_LoadPackages.Post ;
  Except
   cds_LoadPackages.Cancel ;
  End ;

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
    cds_LoadHeadLIPNo.AsInteger) ;
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
   ShowMessage('Spara lasten först.') ;
 End ; //with
end;

procedure TfLoadEntrySSPTemp.acAddPkgUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acAddPkg.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acAddPkgByPkgCodeUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acAddPkgByPkgCode.Enabled:= (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acPickPkgNosExecute(Sender: TObject);
var fPickPkgNo: TfPickPkgNo;
begin
 if dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger < 1 then
 Begin
  ShowMessage('Spara lasten först.') ;
  Exit ;
 End ;

 With dmLoadEntrySSPTemp do
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
   fPickPkgNo.PIPNo                   := dmLoadEntrySSPTemp.cds_LoadHeadPIPNo.AsInteger ;
   fPickPkgNo.LONo                    := cdsLORowsShippingPlanNo.AsInteger ;
   fPickPkgNo.LabelProduct.Caption    := cdsLORowsINTERNPRODDESC.AsString ;//cdsLORowsPRODUCTDESCRIPTION.AsString ;
   fPickPkgNo.LabelLength.Caption     := cdsLORowsLENGTHDESC.AsString ;
   fPickPkgNo.LabelPIPName.Caption    := lcPIP.Text ;
   fPickPkgNo.LabelOwner.Caption      := cds_LSPSUPPLIER.AsString ;
   fPickPkgNo.LabelLONr.Caption       := cdsLORowsShippingPlanNo.AsString ;
   fPickPkgNo.ObjectType              := cds_LSPOBJECTTYPE.AsInteger ;
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

procedure TfLoadEntrySSPTemp.acPickPkgNosUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acPickPkgNos.Enabled:= (cdsLORows.RecordCount > 0)  and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acSaveLoadExecute(Sender: TObject);
Begin
 SaveLoad ;
end;

function TfLoadEntrySSPTemp.ControlInvDate : Boolean ;
const
  LF = #10;
Var
    LastInvNr   : Integer ;
    InvDate     : TDateTime ;
    MaxDateMsg  : String ;
Begin
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.SaveLoad ;
var
  Save_Cursor   : TCursor;
  LastInvNr     : Integer ;
  InvDate       : TDateTime ;
  MaxDateMsg    : String ;
Begin
 With dmLoadEntrySSPTemp do
 Begin
  if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) <= Now then
  Begin


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
      ShowMessage('Lägg till minst en LO.') ;
    if (cds_LoadHeadSenderLoadStatus.AsInteger = 1) and (cds_LoadPackages.RecordCount > 0) then
    Begin
     ShowMessage('Alla paket matchar inte, status kan inte sättas till OK.') ;
    End ;
 //   else
 //   if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (cds_LoadPackages.RecordCount > 0) then
//    Refresh_PkgList(cds_LoadHeadLoadNo.AsInteger) ;
   finally
    cds_LoadPackages.EnableControls ;
    cds_LSP.EnableControls ;
    cdsLORows.EnableControls ;
    cds_LoadHead.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
   end;


  End //if SQLTimeStampToDateTime(cds_LoadHeadLoadedDate.AsSQLTimeStamp) < Date then
   else
    ShowMessage('Utlastningsdatum får inte vara större än aktuellt datum&tid, var vänlig justera.') ;


  if (cds_LoadHeadSenderLoadStatus.AsInteger = 2) and (not ControlInvDate) then
  Begin
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadSenderLoadStatus.AsInteger := 0 ;
   cds_LoadHead.Post ;
   if cds_LoadHead.ChangeCount > 0 then
    cds_LoadHead.ApplyUpdates(0) ;

   ShowMessage('Lasten kan inte sätta Status till OK pga att utlastningsdatum är före inventerings eller maxdatum i en inventering där lagergruppen ingår') ;
  End ;



 End ;//With
end;

procedure TfLoadEntrySSPTemp.SetLoadRowToChanged ;
Begin
 With dmLoadEntrySSPTemp do
 Begin
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;
  cds_LoadPackagesChanged.AsInteger   := 1 ;
  cds_LoadPackagesPackageOK.AsInteger := BAD_PKG ;
  cds_LoadPackages.Post ;
 End ;
End ;

procedure TfLoadEntrySSPTemp.acPrintTallyUSNoteExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;
 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger <> 2 then
 FormCRViewReport.CreateCo('TALLY_INTERNAL_USA_VER2_NOTE.RPT')
 else
 Begin
  Try
  dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
  FormCRViewReport.CreateCo('TALLY_US_NOTE.RPT') ;
 End ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
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

procedure TfLoadEntrySSPTemp.grdPkgsDBBandedTableView1PACKAGENOPropertiesValidate(
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
 With dmLoadEntrySSPTemp do
 Begin
 if cds_LoadPackagesPkg_State.AsInteger = EXISTING_PACKAGE then
 Begin
  ErrorText:= 'Inte tillåtet att skriva över paketnr som redan är sparade till lasten' ;
  Error:= True ;
  Exit ;
 End ;
 End ;


  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  try
    { Do some lengthy operation }
   NewValue := DisplayValue ;
   if StrToIntDef(NewValue,0) > 0 then
   Begin

   Action := IdentifyPackageSupplier(
      StrToInt(NewValue),
      dmLoadEntrySSPTemp.FSupplierNo,
      PkgSupplierCode,
      PkgSupplierNo, ProductNo, Res_UserName, ProductLengthNo, NoOfLengths );

//Får inte använda post själv, det gör rutinen automatiskt
  if Action = eaACCEPT then
  Begin
    AddPkgTo_cds_LoadPackages(Sender, StrToInt(NewValue),PkgSupplierCode) ;
//Långsamt här
    if AfterAddedPkgNo(Sender, StrToInt(NewValue),PkgSupplierCode, ProductNo, ProductLengthNo, NoOfLengths ) <> eaACCEPT then
    Begin
     ErrorText  := 'Paketnr ' + NewValue + ' finns inte i lager ' + Trim(lcPIP.Text) ;
     Error      := True ;
    End
    else
    Begin
     Error:= False ;
//     dmLoadEntrySSPTemp.cds_LoadPackages.Post ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ErrorText  := 'Paketnr ' + NewValue + ' finns inte i lager ' + Trim(lcPIP.Text) ;
     Error      := True ;
    End
    else
     if Action = eaReserved then
      Begin
       ErrorText  := 'Paketnr ' + NewValue+' är reserverat av '+Res_UserName ;
       Error      := True ;
      End
      else
       if Action = eaDuplicate then
        Begin
         ErrorText  := 'Paketnr ' + NewValue+' är redan inmatat' ;
         Error      := True ;
        End ;
    End
     else
      Begin
       ErrorText  := 'Paketnr saknas.' ;
       Error      := True ;
      End ;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

procedure TfLoadEntrySSPTemp.grdLORowsDBBandedTableView1MATCHPropertiesChange(
  Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.GetMarkedPkgs ;
 Var
 LoadDetailNo,
 i,
 RecIDX,
 ColIdx         : Integer ;
 Save_Cursor    : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.acKopplaPaketMotLOManuelltExecute(
  Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
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
      ValidatePkg(dmLoadEntrySSPTemp.cds_LoadPackagesPACKAGENO.AsInteger,
      dmLoadEntrySSPTemp.cds_LoadPackagesSupplierCode.AsString, dmLoadEntrySSPTemp.cds_LoadPackagesProductNo.AsInteger,
      dmLoadEntrySSPTemp.cds_LoadPackagesProductLengthNo.AsInteger, dmLoadEntrySSPTemp.cds_LoadPackagesNoOfLengths.AsInteger) ;
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

procedure TfLoadEntrySSPTemp.acSaveLoadUpdate(Sender: TObject);
begin
 acSaveLoad.Enabled:= (not DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acDeleteLoadExecute(Sender: TObject);
begin
 if dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount > 0 then
  Begin
   ShowMessage('Ta bort paketen från lasten först.') ;
  End
  else
  Begin
   if MessageDlg('Är du säker?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dmLoadEntrySSPTemp.DeleteOneLoad(dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger) ;
   Close ;
  End ;
end;

procedure TfLoadEntrySSPTemp.acDeleteLoadUpdate(Sender: TObject);
begin
 acDeleteLoad.Enabled:=
 (DataSaved)
 and (LoadEnabled)
 and (dmLoadEntrySSPTemp.cds_LoadPackages.Active)
 and (dmLoadEntrySSPTemp.cds_LoadPackages.RecordCount = 0) ;
end;

procedure TfLoadEntrySSPTemp.acPrintFSExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
 if dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger <> 2 then
  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER3_NOTE.RPT')
  else
  Begin
   Try
   dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
   dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;
   FormCRViewReport.CreateCo('TALLY_VER3_NOTE.RPT') ;
  End ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
  Try
  dmsSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
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

procedure TfLoadEntrySSPTemp.acPrintHyvelOrderExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('HYVEL_ORDER.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LSPShippingPlanNo.AsInteger);
//  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntrySSPTemp.ShippingPlanSupplierNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acLOAllaVerkExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
  FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
    FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acPrintLOErtVerkExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver3.RPT') ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntrySSPTemp.cds_LSPSupplierNo.AsInteger);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acPrintSpecAllaLasterLOExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try

 FormCRViewReport.CreateCo('SPEC_ALLA_LASTER_VERK_III.RPT') ;

 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LSPShippingPlanNo.AsInteger);
  FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(dmLoadEntrySSPTemp.cds_LSPSupplierNo.AsInteger);

  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;

  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acPrintFSUpdate(Sender: TObject);
begin
 acPrintFS.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSPTemp.acPrintSpecAllaLasterLOUpdate(Sender: TObject);
begin
 acPrintSpecAllaLasterLO.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSPTemp.acPrintLOErtVerkUpdate(Sender: TObject);
begin
 acPrintLOErtVerk.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSPTemp.acLOAllaVerkUpdate(Sender: TObject);
begin
 acLOAllaVerk.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSPTemp.acPrintHyvelOrderUpdate(Sender: TObject);
begin
 acPrintHyvelOrder.Enabled:= DataSaved ;
end;

procedure TfLoadEntrySSPTemp.acPkgEntryExecute(Sender: TObject);
Var x               : Integer ;
    frmPackageEntry : TfrmPackageEntry ;
begin
 if dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger > 0 then
 Begin
 if (dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.AsInteger > 0) and (dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.IsNull = False) then
 Begin
 if dmLoadEntrySSPTemp.cdsLORows.RecordCount > 0 then
 Begin
 Try
 dmsProduct:= TdmsProduct.Create(NIL) ;
 dmsProduct.CSD:= 4 ;


// if dmLoadEntrySSPTemp.FAvrop_CustomerNo <> -1 then
 if FShipping = 1 then
 Begin //Purchase packages get external supplier SupplierCode
  dmsProduct.SupplierNo     := FOrderClientNo ;//dmLoadEntrySSPTemp.FAvrop_CustomerNo ;
  dmsProduct.SupplierCode   := //dmsContact.GetSupplierCode(dmLoadEntrySSPTemp.mtLoadShippingPlanLoadingLocationNo.AsInteger) ;
  dmsContact.GetClientCode(FOrderClientNo) ;//dmLoadEntrySSPTemp.FAvrop_CustomerNo) ;

  dmsProduct.OrderType          := c_Purchase ;
  dmsProduct.InventoryOwnerNo   := dmLoadEntrySSPTemp.FCustomerNo ;//dmLoadEntrySSPTemp.FSupplierNo ;

  if dmLoadEntrySSPTemp.cds_LoadHeadPIPNo.AsInteger > 0 then
  dmsProduct.InventoryNo        := dmLoadEntrySSPTemp.cds_LoadHeadPIPNo.AsInteger ;

  if dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.AsInteger > 0 then
  dmsProduct.LIPNo        := dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.AsInteger ;
 End
 else
 Begin
  dmsProduct.OrderType        := c_Sales ;
  dmsProduct.InventoryNo      := dmLoadEntrySSPTemp.cds_LSPShipToInvPointNo.AsInteger ;
  dmsProduct.SupplierNo       := dmLoadEntrySSPTemp.FSupplierNo ;
//  dmsProduct.SupplierCode:= dmsContact.GetClientCode(dmLoadEntrySSPTemp.FSupplierNo) ;
  dmsProduct.SupplierCode     := dmsContact.GetSupplierCode(dmLoadEntrySSPTemp.cds_LSPLoadingLocationNo.AsInteger) ;

  dmsProduct.InventoryOwnerNo := dmLoadEntrySSPTemp.FSupplierNo ;

  if dmLoadEntrySSPTemp.cds_LoadHeadPIPNo.AsInteger > 0 then
  dmsProduct.InventoryNo        := dmLoadEntrySSPTemp.cds_LoadHeadPIPNo.AsInteger ;

  if dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.AsInteger > 0 then
  dmsProduct.LIPNo        := dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.AsInteger ;
 End ;

 dmsProduct.mtLO_Records.Active:= True ;
 dmLoadEntrySSPTemp.cdsLORows.First ;
 While not dmLoadEntrySSPTemp.cdsLORows.Eof do
 Begin
  dmsProduct.mtLO_Records.Insert ;
  Try
  For x := 0 to 27 do
    dmsProduct.mtLO_Records.Fields.Fields[x].AsVariant  := dmLoadEntrySSPTemp.cdsLORows.Fields.Fields[x].AsVariant ;
    dmsProduct.mtLO_RecordsMATCH.AsInteger              := 0 ;
    dmsProduct.mtLO_RecordsINCH_THICK.AsFloat           := StrToFloatDef(dmLoadEntrySSPTemp.cdsLORowsINCH_THICK.AsString,0) ;
    dmsProduct.mtLO_RecordsINCH_WIDTH.AsFloat           := StrToFloatDef(dmLoadEntrySSPTemp.cdsLORowsINVCH_WIDTH.AsString,0) ;
    dmsProduct.mtLO_RecordsOverrideRL.AsInteger         := dmLoadEntrySSPTemp.cdsLORowsOverrideRL.AsInteger ;
    dmsProduct.mtLO_RecordsVaruSlag.AsInteger           := dmLoadEntrySSPTemp.cdsLORowsVaruSlag.AsInteger ;
    dmsProduct.mtLO_Records.Post ;
  Except
   on eDatabaseError do
   Raise ;
  End ;
  dmLoadEntrySSPTemp.cdsLORows.Next ;
 End ; //while


 frmPackageEntry:= TfrmPackageEntry.Create(Nil);
 Try
 if dmLoadEntrySSPTemp.cds_LoadHeadSupplierNo.AsInteger = dmLoadEntrySSPTemp.cds_LoadHeadCustomerNo.AsInteger then
  frmPackageEntry.cbSaveToProdLogg.Checked  := True ;
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
  ShowMessage('Lägg till en LO först.') ;
 End//if (dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.AsInteger > 0) and (dmLoadEntrySSPTemp.cds_LoadHeadLIPNo.IsNull = False) then
 else
 ShowMessage('Välj en Lagergrupp först.') ;
 End
 else
  ShowMessage('Spara lasten först.') ;
end;

procedure TfLoadEntrySSPTemp.acPkgEntryUpdate(Sender: TObject);
begin
 acPkgEntry.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

procedure TfLoadEntrySSPTemp.acStreckKodsinlasningExecute(Sender: TObject);
var fScanLoadPkgNo: TfScanLoadPkgNo ;
begin
 fScanLoadPkgNo:= TfScanLoadPkgNo.Create(Nil);
 Try
  fScanLoadPkgNo.EgenPkgSupplierCode  := dmsSystem.GetPkgPos (ThisUser.CompanyNo) ;
  fScanLoadPkgNo.cbEgenLevKod.Caption := 'Scanna endast in paket med leverantörskod ' + fScanLoadPkgNo.EgenPkgSupplierCode ;
  fScanLoadPkgNo.ShowModal ;
  acValidateAllPkgsExecute(Sender) ;
  acSaveLoad.Enabled:= True ;
 Finally
  fScanLoadPkgNo.Free ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acPktNrSerieExecute(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.acPktNrSerieUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acPktNrSerie.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acKopplaPaketMotLOManuelltUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acKopplaPaketMotLOManuellt.Enabled:= (cds_LoadPackages.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acTaBortPaketPerPaketKodExecute(Sender: TObject);
Var x : Integer ;
   Save_Cursor : TCursor;
   fEntryField : TfEntryField ;
begin
 With dmLoadEntrySSPTemp do
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
    if dmLoadEntrySSPTemp.cds_LoadPackagesPkg_State.AsInteger = NEW_PACKAGE then
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

procedure TfLoadEntrySSPTemp.acTaBortPaketPerPaketKodUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acAddPkgByPkgCode.Enabled:= (cds_LoadPackages.RecordCount > 0) and (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acStreckKodsinlasningUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acStreckKodsinlasning.Enabled:= (cds_LoadHeadLoadNo.AsInteger > 0) AND (cdsLORows.RecordCount > 0) and (LoadEnabled) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.Get_LO_LookUp_SQL (const AVROP_CUSTOMERNO, Shipping, LO_NO, CustomerNo, SupplierNo, ShipToInvPointNo, LoadingLocationNo, LO_ETT : Integer) ;
Begin
 With dmLoadEntrySSPTemp.cds_LO_LookUp.SQL do
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
//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;



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

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;
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

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;

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

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;

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

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then
  Add('AND SSP.ShippingPlanNo > 1') ;
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

//  Add('SSP.ShippingPlanStatus = 1') ;
  if LO_ETT = -1 then  
  Add('AND SSP.ShippingPlanNo > 1') ;

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

{
Add('-- AVROP_CUSTOMERNO, ' + inttostr(AVROP_CUSTOMERNO)) ;
Add('-- Shipping, ' + inttostr(Shipping)) ;
Add('-- LO_NO, ' + inttostr(LO_NO)) ;
Add('-- CustomerNo, ' + inttostr(CustomerNo)) ;
Add('-- SupplierNo, ' + inttostr(SupplierNo)) ;
Add('-- ShipToInvPointNo, ' + inttostr(SupplierNo)) ;
Add('-- LoadingLocationNo, ' + inttostr(LoadingLocationNo)) ;
Add('-- LO_ETT ' + inttostr(LO_ETT)) ;
 }

{Order by SSP.ShippingPlanStatus, SSP.ShippingPlanNo }
 End ;//with
End ;

procedure TfLoadEntrySSPTemp.grdLORowsDBBandedTableView1StylesGetContentStyle(
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

procedure TfLoadEntrySSPTemp.grdPkgsDBBandedTableView1StylesGetContentStyle(
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

procedure TfLoadEntrySSPTemp.acChangePKGLayoutExecute(Sender: TObject);
begin
  if grdPkgs.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPkgs.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadEntrySSPTemp.acChangeLORowLayoutExecute(Sender: TObject);
begin
  if grdLORows.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLORows.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadEntrySSPTemp.acChangeLOLayoutExecute(Sender: TObject);
begin
  if grdLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdLO.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLoadEntrySSPTemp.grdPkgsDBBandedTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
 if grdPkgsDBBandedTableView1.OptionsView.NewItemRow then
 AAllow := grdPkgsDBBandedTableView1.Controller.NewItemRecordFocused
 else
 AAllow:= True ;
 
end;

procedure TfLoadEntrySSPTemp.acShowNewRowExecute(Sender: TObject);
begin
 grdPkgsDBBandedTableView1.OptionsView.NewItemRow:= not grdPkgsDBBandedTableView1.OptionsView.NewItemRow ;
end;

procedure TfLoadEntrySSPTemp.grdPkgsDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 With dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.acImportPackagesExecute(Sender: TObject);
Var DeliveryMessageNumber : String ;
begin
 XMLImportExport:= TXMLImportExport.Create(nil);
 try
  XMLImportExport.tsExport.TabVisible:= False ;
  XMLImportExport.ShowModal ;
  if XMLImportExport.ImportOfPkgsOK then //ShowModal = mrOK then
  Begin
   DeliveryMessageNumber:= dmsSystem.DeliveryMessageNumber ;
   ShowPackages (Sender, DeliveryMessageNumber);
  End ;
 finally
  FreeAndNil(XMLImportExport) ;
 end;
end;

procedure TfLoadEntrySSPTemp.ShowPackages (Sender: TObject;const DeliveryMessageNumber : String);
//var fImportedPackages: TfImportedPackages;
Begin
(* LMX1
 dmsProduct:= TdmsProduct.Create(Nil);
 Try
 fImportedPackages:= TfImportedPackages.Create(nil);
 try
  fImportedPackages.DeliveryMessageNumber                               := DeliveryMessageNumber ;
  dmsProduct.SupplierNo                                                 := FOrderClientNo ;
  dmsProduct.SupplierCode                                               := dmsContact.GetClientCode(FOrderClientNo) ;

  dmsProduct.OrderType                                                  := c_Purchase ;


//Lars 2 Aug 2007
  //  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSPTemp.FSupplierNo ;
  dmsProduct.InventoryOwnerNo                                           := dmLoadEntrySSPTemp.FCustomerNo ;

  dmsSystem.sq_GetInventoryNo.Close ;
  dmsSystem.sq_GetInventoryNo.ParamByName('OwnerNo').AsInteger          := dmLoadEntrySSPTemp.FCustomerNo ;//dmLoadEntrySSPTemp.FSupplierNo ;
  dmsSystem.sq_GetInventoryNo.ParamByName('PhyInvPointNameNo').AsInteger:= dmLoadEntrySSPTemp.cds_LSPLoadingLocationNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Open ;
  dmsProduct.InventoryNo                                                := dmsSystem.sq_GetInventoryNoPhysicalInventoryPointNo.AsInteger ;
  dmsSystem.sq_GetInventoryNo.Close ;


  dm_ImportWoodx.mtLoadProducts.Active:= True ;
  dmLoadEntrySSPTemp.cdsLORows.First ;
  While not dmLoadEntrySSPTemp.cdsLORows.Eof do
  Begin
   dm_ImportWoodx.mtLoadProducts.Insert ;
   dm_ImportWoodx.mtLoadProductsProductDisplayName.AsString := dmLoadEntrySSPTemp.cdsLORowsPRODUCTDESCRIPTION.AsString ;
   dm_ImportWoodx.mtLoadProductsProductNo.AsInteger         := dmLoadEntrySSPTemp.cdsLORowsPRODUCTNo.AsInteger ;
   dm_ImportWoodx.mtLoadProducts.Post ;
   dmLoadEntrySSPTemp.cdsLORows.Next ;
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
 *)
End ;

procedure TfLoadEntrySSPTemp.InsertImportedPkgs(Sender: TObject) ;
Var Save_Cursor : TCursor;
begin
 With dmLoadEntrySSPTemp, dmsProduct do
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

procedure TfLoadEntrySSPTemp.acImportPackagesUpdate(Sender: TObject);
begin
 acImportPackages.Enabled:= (DataSaved) and (LoadEnabled) ;
end;

function TfLoadEntrySSPTemp.AddSelectedPkgDataTo_cds_LoadPackages(Sender: TObject;
const PkgNo : Integer;
const PkgSupplierCode : String3) : TEditAction ;
var
  SuppShipPlanObjectNo  : Integer;
  LO_Number             : Integer ;
Begin
 With dmLoadEntrySSPTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;

  Try
  Result:= eaACCEPT ;

  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;


  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntrySSPTemp.cdsLORows.First ;
   LO_Number            := dmLoadEntrySSPTemp.cdsLORowsShippingPlanNo.AsInteger ;
   SuppShipPlanObjectNo := cdsLORowsSupplierShipPlanObjectNo.AsInteger ;

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
      cds_LoadPackagesOLDPACKAGETYPENO.AsInteger:= sq_OnePkgDetailDataPackageTypeNo.AsInteger ;
      cds_LoadPackagesSupplierCode.AsString     := Trim(PkgSupplierCode) ;
      cds_LoadPackagesM3_NET.AsFloat            := sq_OnePkgDetailDataM3_NET.AsFloat ;
      cds_LoadPackagesM3_NOM.AsFloat            := sq_OnePkgDetailDataM3_NOM.AsFloat ;
      cds_LoadPackagesKVM.AsFloat               := sq_OnePkgDetailDataKVM.AsFloat ;
      cds_LoadPackagesLopM.AsFloat              := sq_OnePkgDetailDataLopM.AsFloat ;
      cds_LoadPackagesPCS.AsInteger             := sq_OnePkgDetailDataPCS.AsInteger ;

       cds_LoadPackagesCustomPcs.AsInteger      := cds_LoadPackagesPcs.AsInteger ;

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

procedure TfLoadEntrySSPTemp.ValidatePkgNoSuppCode_WhenPickPkgNo(Sender: TObject; const PkgNo: Integer;
PkgSupplierCode: String3; const ProductNo, ProductLengthNo : Integer);
var
  Action        : TEditAction;
  Save_Cursor   : TCursor;
  Res_UserName  : String ;
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
   if dmLoadEntrySSPTemp.cds_LoadPackages.FindKey([PkgNo, Trim(PkgSuppliercode)]) then

    if AfterAddedPkgNo_WhenPickPkgNo(Sender, PkgNo,PkgSupplierCode, ProductNo, ProductLengthNo, 1 {NoOfLengths}) <> eaACCEPT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
    +'/'+'') ;//Trim(lcLIP.Text)) ;
    End ;
  End
   else
   if Action = eaREJECT then
    Begin
     ShowMessage('Paketnr '+IntToStr(PkgNo)+' finns inte i lager '
     +Trim(lcPIP.Text)
    +'/'+'');//Trim(lcLIP.Text)) ;
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

function TfLoadEntrySSPTemp.AfterAddedPkgNo_WhenPickPkgNo(Sender: TObject;
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
 With dmLoadEntrySSPTemp do
 Begin
  ds_LoadPackages2.OnDataChange:= Nil ;
  cds_LoadPackages.DisableControls ;

  Try
  Result:= eaACCEPT ;
  if cds_LoadPackages.State = dsBrowse then
   cds_LoadPackages.Edit ;

  Begin
  //Default LO number in case there is no match the LoadDetail must get a value
//   dmLoadEntrySSPTemp.cdsLORows.First ;
   LO_Number:= dmLoadEntrySSPTemp.cdsLORowsShippingPlanNo.AsInteger ;

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
//    and (dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger <> 2)) then
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

procedure TfLoadEntrySSPTemp.acCreateInternLOExecute(Sender: TObject);
Var LONo : Integer ;
begin
 With dmLoadEntrySSPTemp do
 Begin
  if (cds_LSP.Active) and (cds_LSPShippingPlanNo.AsInteger = 1) then
   CreateInternLO
    else
     if (cds_LSP.Active) then
      UpdateInternLO ;
  acValidateAllPkgsExecute(Sender) ;
  acSaveLoadExecute(Sender) ;   
 End ;
end;

procedure TfLoadEntrySSPTemp.UpdateInternLO ;
begin
 With dmLoadEntrySSPTemp do
 Begin
//Updatera Intern LO utifrån valda paket
  UpdateLO(cds_LoadHeadLoadNo.AsInteger) ;

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

  cds_LSP.Active:= False ;
  Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger) ;
  cds_LSP.Active:= True ;

  cds_LoadHead.Edit ;
  if cds_LoadHeadLocalLoadingLocation.IsNull then
  cds_LoadHeadLocalLoadingLocation.AsInteger  :=  cds_LSPLoadingLocationNo.AsInteger ;
  if cds_LoadHeadLocalDestinationNo.IsNull then
  cds_LoadHeadLocalDestinationNo.AsInteger    :=  cds_LSPShipToInvPointNo.AsInteger ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;

  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString ;
  cdsLORows.Filtered  := True ;

 End ;
end;

procedure TfLoadEntrySSPTemp.CreateInternLO ;
Var LONo : Integer ;
begin
 With dmLoadEntrySSPTemp do
 Begin
//Skapa ny Intern LO utifrån valda paket
//CreateLO(LoadNo, CustomerNo, DefaultShipToInvPointNo, SalesRegionNo, DefaultLIPNo, SupplierNo, Def_LoadingLocationNo  : Integer) : Integer ;
  LONo:= CreateLO(cds_LoadHeadLoadNo.AsInteger,
      cds_LoadHeadCustomerNo.AsInteger, //ThisUser.CompanyNo, //CustomerNo
//      1, //DefaultShipToInvPointNo
      dmsContact.GetSRByCompanyNo(cds_LoadHeadSupplierNo.AsInteger), //dmsContact.GetSRByCompanyNo(ThisUser.CompanyNo), //SalesRegionNo
//      1, //DefaultLIPNo
      cds_LoadHeadSupplierNo.AsInteger) ; //ThisUser.CompanyNo, //SupplierNo
//      1) ; //Def_LoadingLocationNo)  ;

   cds_LSP.Edit ;
   cds_LSPShippingPlanNo.AsInteger:= LONo ;
   cds_LSP.Post ;
   if cds_LSP.ChangeCount > 0 then
   cds_LSP.ApplyUpdates(0) ;

//AddLONumberOnOpenTheForm(LO_NO, LocalCustomerNo, LocalSupplierNo, ShipToInvPointNo, LoadingLocationNo);
//  AddLONumberOnOpenTheForm(LONo, 741, 741, 1, 1);
//  if cds_LSP.ChangeCount > 0 then
//   cds_LSP.ApplyUpdates(0) ;

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

  UpdateLSP(LONo) ;

  UpdateLoad(cds_LoadHeadLoadNo.AsInteger) ;

  cds_LSP.Active:= False ;
  Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger) ;
  cds_LSP.Active:= True ;


  cds_LoadHead.Edit ;
  if cds_LoadHeadLocalLoadingLocation.IsNull then
  cds_LoadHeadLocalLoadingLocation.AsInteger  :=  cds_LSPLoadingLocationNo.AsInteger ;
  if cds_LoadHeadLocalDestinationNo.IsNull then
  cds_LoadHeadLocalDestinationNo.AsInteger    :=  cds_LSPShipToInvPointNo.AsInteger ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;


  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString ;
  cdsLORows.Filtered  := True ;
//Set
 End ;
end;

procedure TfLoadEntrySSPTemp.OpenInternLO(const LO : Integer) ;
begin
{LMX1    fLOform := TfLOform.Create(Nil) ;
    Try
    dmcLO.cds_IntHdr.Active:= False ;
    dmcLO.sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= LO ;
    dmcLO.cds_IntHdr.Active:= True ;

    dmcLO.cds_LO.Active:= False ;
    dmcLO.cds_LO.Active:= True ;
    fLOform.ShowModal ;
   Finally
    FreeAndNil(fLOform) ;
   End ;
   }
end;

procedure TfLoadEntrySSPTemp.acCreateInternLOUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acCreateInternLO.Enabled:= (DataSaved) and (LoadEnabled)
  and (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and (cds_LSPObjectType.AsInteger = 0)
  and ((cds_LoadPackages.Active) and (cds_LoadPackages.RecordCount > 0)) ;
 End ;
end;

//todo
//Använd längder från LO lengths för att validera
procedure TfLoadEntrySSPTemp.acOpenLOFormExecute(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  OpenInternLO(cds_LSPShippingPlanNo.AsInteger) ;

  UpdateLSP(cds_LSPShippingPlanNo.AsInteger) ;

  UpdateLoad(cds_LoadHeadLoadNo.AsInteger) ;

  cds_LSP.Active:= False ;
  Generate_LSP_Sales_SQL(cds_LoadHeadLoadNo.AsInteger) ;
  cds_LSP.Active:= True ;


  cds_LoadHead.Edit ;
  if cds_LoadHeadLocalLoadingLocation.IsNull then
  cds_LoadHeadLocalLoadingLocation.AsInteger  :=  cds_LSPLoadingLocationNo.AsInteger ;
  if cds_LoadHeadLocalDestinationNo.IsNull then
  cds_LoadHeadLocalDestinationNo.AsInteger    :=  cds_LSPShipToInvPointNo.AsInteger ;
  if cds_LoadHead.State in [dsEdit, dsInsert] then
  cds_LoadHead.Post ;


  cdsLORows.Active:= False ;
  cdsLORows.ParamByName('LoadNo').AsInteger:= cds_LoadHeadLoadNo.AsInteger ;
  cdsLORows.Active:= True ;
  cdsLORows.Filter    := 'ShippingPlanNo = ' + cds_LSPShippingPlanNo.AsString ;
  cdsLORows.Filtered  := True ;

  acSaveLoadExecute(Sender) ;
 End ;//with 
end;

procedure TfLoadEntrySSPTemp.acOpenLOFormUpdate(Sender: TObject);
begin
 With dmLoadEntrySSPTemp do
 Begin
  acOpenLOForm.Enabled:= (cds_LSP.Active) and (cds_LSP.RecordCount > 0) and (cds_LSPOBJECTTYPE.AsInteger = 0)
  and (cds_LSPShippingPlanNo.AsInteger > 1) and (DataSaved) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLoadEntrySSPTemp.acSaveAndOKExecute(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
  if cds_LoadHead.State in [dsBrowse] then
  cds_LoadHead.Edit ;
  cds_LoadHeadSenderLoadStatus.AsInteger := 2 ; //OK
  cds_LoadHead.Post ;
  SaveLoad ;
  SetLoadEnabled ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acSaveAndOKUpdate(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
  acSaveAndOK.Enabled:= //(not DataSaved) and (LoadEnabled) and
  (cds_LoadHeadSenderLoadStatus.AsInteger <> 2)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 0) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acPrintMenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300, 200) ;
end;

procedure TfLoadEntrySSPTemp.acPrintFSMisMatchExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
    A                 : array of variant ;
begin
 teLoadID.SetFocus ;

 FormCRViewReport:= TFormCRViewReport.Create(Nil);
 Try
// if dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger <> 2 then
//  FormCRViewReport.CreateCo('TALLY_INTERNAL_VER2_NOTE_MM.RPT')
//  else
//  Begin
//Dont use   dmcSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
//Dont use   dmcSystem.sq_PkgType_InvoiceByLO.ExecSQL(False) ;
   FormCRViewReport.CreateCo('TALLY_VER2_NOTE_MM.RPT') ;
//  End ;
 if FormCRViewReport.ReportFound then
 Begin
  FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger);
  FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
  FormCRViewReport.CRViewer91.ViewReport ;
  FormCRViewReport.ShowModal ;
 End ;
{  Try
  dmcSystem.sq_DelPkgType.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
  dmcSystem.sq_DelPkgType.ExecSQL(False) ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end; }
 Finally
  FreeAndNil(FormCRViewReport)  ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acDeleteNotCompletePkgsExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntrySSPTemp do
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
      cds_LoadPackagesPkg_Function.AsInteger := TA_BORT_EJ_COMPLETE_PKG_FROM_LOAD ;
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

procedure TfLoadEntrySSPTemp.acMailaFSExecute(Sender: TObject);
const
  LF = #10;
Var FormCRExportOneReport   : TFormCRExportOneReport ;
    A                       : array of variant ;
    dm_SendMapiMail         : Tdm_SendMapiMail;
    Attach                  : array of String ;
    MailToAddress           : String ;
    ReportType              : Integer ;
    ExcelDir                : String ;
begin
 ExcelDir            := dmsSystem.Get_Dir('ExcelDir') ;
 if (dmLoadEntrySSPTemp.cds_LSPAvrop_CustomerNo.AsInteger > 0) and (dmLoadEntrySSPTemp.cds_LSPAvrop_CustomerNo.IsNull = False) then
 MailToAddress:= dmsContact.GetEmailAddress(dmLoadEntrySSPTemp.cds_LSPAvrop_CustomerNo.AsInteger)
 else
 MailToAddress:= dmsContact.GetEmailAddress(dmLoadEntrySSPTemp.cds_LSPCustomerNo.AsInteger) ;
 if Length(MailToAddress) = 0 then
 Begin
  MailToAddress:= 'ange@adress.nu' ;
  ShowMessage('Emailadress saknas för klienten, ange adressen direkt i mailet(outlook)') ;
 End ;
 if Length(MailToAddress) > 0 then
 Begin
 FormCRExportOneReport:= TFormCRExportOneReport.Create(Nil);
 Try
  SetLength(A, 1);
  A[0]:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;


  if dmLoadEntrySSPTemp.cds_LSPObjectType.AsInteger <> 2 then
  ReportType := cFoljesedelIntern
  else
  Begin

   Try
   dmsSystem.sq_PkgType_InvoiceByLO.ParamByName('LoadNo').AsInteger:= dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsInteger ;
   dmsSystem.sq_PkgType_InvoiceByLO.ExecSQL ;
     except
      On E: Exception do
      Begin
       dmsSystem.FDoLog(E.Message) ;
//      ShowMessage(E.Message);
       Raise ;
      End ;
     end;


   if dmsContact.Client_Language(dmLoadEntrySSPTemp.cds_LSPAvrop_CustomerNo.AsInteger) = cSwedish then
    ReportType := cFoljesedel
     else
      ReportType := cFoljesedel_eng ;
  End ;

  FormCRExportOneReport.CreateCo(1, ReportType, A, ExcelDir + 'FS ' + dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsString) ;
 if FormCRExportOneReport.ReportFound = False then Exit ;
 Finally
  FreeAndNil(FormCRExportOneReport) ;//.Free ;
 End ;
 SetLength(Attach, 1);
 Attach[0]        := ExcelDir + 'FS ' + dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsString+'.pdf' ;
 dm_SendMapiMail  := Tdm_SendMapiMail.Create(nil);
 Try
  dm_SendMapiMail.SendMail('Följesedel. FSnr: '+dmLoadEntrySSPTemp.cds_LoadHeadLoadNo.AsString,
  'Följesedel bifogad. '
  +LF+''
  +'Load tally attached. '
  +LF+''
  +LF+''
  +LF+'MVH/Best Regards, '
  +LF+''
  +dmsContact.GetFirstAndLastName(ThisUser.UserID),
  dmsSystem.Get_Dir('MyEmailAddress'),
  MailToAddress,
  Attach, False) ;
 Finally
  FreeAndNil(dm_SendMapiMail) ;
 End ;
 End
  else
   ShowMessage('Emailadress saknas för klienten!') ;
end;

procedure TfLoadEntrySSPTemp.acSetStatusPrelandSaveExecute(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
  if not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) then
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
     ShowMessage('Lasten kan inte sättas till preliminär för att den är ankomstregistrerad.');
     SetLoadEnabled ;
    End ; 
 End ;
end;

procedure TfLoadEntrySSPTemp.acSetStatusPrelandSaveUpdate(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
//  acSetStatusPrelandSave.Enabled := not dmsSystem.IsLoadAR(cds_LoadHeadLoadNo.AsInteger) ;
  acSetStatusPrelandSave.Enabled := (cds_LoadHeadPackageEntryOption.AsInteger = 0) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acFixedPaketExecute(Sender: TObject);
Var  Save_Cursor:TCursor;
Begin
 With dmLoadEntrySSPTemp do
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
   cds_LoadPackages.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;

procedure TfLoadEntrySSPTemp.acSend700MessageExecute(Sender: TObject);
Var DeleteTdmVidaInvoice  : Boolean ;
    fWait                 : TfWait;
begin
 fWait:= TfWait.Create(nil);
 Try
 fWait.cxLabel1.Caption  := 'Vänta, exporterar lasten...' ;

 fWait.Show ;
 Application.ProcessMessages ;


 with dmLoadEntrySSPTemp do
 Begin

 Try
 Try

 if not Assigned(dmVidaInvoice) then
  Begin
   DeleteTdmVidaInvoice:= True ;
   dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
  End ;
  dmVidaInvoice.ExportTypSoftSet(cds_LSPLoadNo.AsInteger,
  cds_LSPShippingPlanNo.AsInteger, 7{RecordType}, 'INTERN', -1) ;
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

procedure TfLoadEntrySSPTemp.acGetHTFFileExecute(Sender: TObject);
Var fWait                 : TfWait;
begin
 fWait:= TfWait.Create(nil);
 Try
 fWait.cxLabel1.Caption  := 'Vänta, importerar lasten...' ;
 fWait.Show ;
 Application.ProcessMessages ;

 //Hämta just filen för denna last
 with dmLoadEntrySSPTemp do
 Begin
  GetFileFromHTF ;
  cds_LoadPackages.Active := False ;
  cds_LoadPackages.Active := True ;
 End ;

 Finally
  FreeAndNil(fWait) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.acAktiveraLastExecute(Sender: TObject);
Begin
 if NoOfPkgsInLoad > 0 then
 Begin
  with dmLoadEntrySSPTemp do
  Begin
   SetPackagesToChanged ;
   if cds_LoadHead.State in [dsBrowse] then
   cds_LoadHead.Edit ;
   cds_LoadHeadPackageEntryOption.AsInteger := 0 ;
   cds_LoadHead.Post ;
   SaveLoad ;
  End
 End
  else
   ShowMessage('Lasten måste innehålla minst 1 paket för att kunna aktiveras') ;
End ;

procedure TfLoadEntrySSPTemp.acAktiveraLastUpdate(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
  acAktiveraLast.Enabled := (cds_LoadHead.Active)
  and (cds_LoadHead.RecordCount > 0)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ;
end;

procedure TfLoadEntrySSPTemp.GetFileFromHTF ;
Var DeleteTdmVidaInvoice : Boolean ;
    LoadFile,
    FileName  : String ;
begin
 with dmLoadEntrySSPTemp do
 Begin

 Try
 Try

 if not Assigned(dmVidaInvoice) then
  Begin
   DeleteTdmVidaInvoice:= True ;
   dmVidaInvoice:= TdmVidaInvoice.Create(Nil) ;
  End ;

(*

  LoadFile := dmVidaInvoice.HamtaEnUtleveransFran_PackageStatusHTF(cds_LSPLoadNo.AsInteger) ;

  if LoadFile <> 'LoadOK' then
  Begin


  Try
   //Hämta lastfiler och statusfiler och lägger in header i TransferFile och details(paket) i PackageStatusHTF
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
   //Sparar ev ändringar i paket och lägger upp ev nya paket
  dmVidaInvoice.ChangeVISPaketInCaseDifferentNoOfPiecesFromHTF ;
  except
   On E: Exception do
   Begin
    dmsSystem.FDoLog(E.Message) ;
    ShowMessage(E.Message);
    Raise ;
   End ;
  end;

  End ;//if LoadFile <> 'LoadOK' then

*)  

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
 End ;//with dmLoadEntrySSPTemp do
end;

procedure TfLoadEntrySSPTemp.acGetHTFFileUpdate(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
  acGetHTFFile.Enabled:= (DataSaved) and (LoadEnabled)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ;  
end;

procedure TfLoadEntrySSPTemp.SetPackagesToChanged ;
begin
 with dmLoadEntrySSPTemp do
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

procedure TfLoadEntrySSPTemp.acRefreshTransferFilesExecute(
  Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
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
 End ;//with dmLoadEntrySSPTemp do
end;

procedure TfLoadEntrySSPTemp.acCreateAddressExecute(Sender: TObject);
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
    dmLoadEntrySSPTemp.cds_DelAdress.Refresh ;
   End ;//if..
   Finally
    cds_Comp_DelAdr.Active  := False ;
   End ;
  End ;
 End ;
// End
//  else
//   ShowMessage('Spara dina ändringar först.') ;
end;

procedure TfLoadEntrySSPTemp.acSend700MessageUpdate(Sender: TObject);
begin
 with dmLoadEntrySSPTemp do
 Begin
  acSend700Message.Enabled:= (DataSaved) and (LoadEnabled)
  and (cds_LoadHeadPackageEntryOption.AsInteger = 1) ;
 End ;
end;

function TfLoadEntrySSPTemp.NoOfPkgsInLoad : Integer ;
begin
 with dmLoadEntrySSPTemp do
 Begin
  Result  := cds_LoadPackages.RecordCount ;
 End ;
End ;

end.
