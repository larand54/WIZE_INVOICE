unit fInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,

  DBCtrls, StdCtrls, Mask, Menus,
  OleServer,
  Buttons, SqlTimSt, cxPC,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxRichEdit, cxDBRichEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, cxDBEdit,
  cxCalendar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDBLabel, cxCheckBox,
  Math, cxLookAndFeels, cxLookAndFeelPainters, cxSplitter, cxButtons,
  FMTBcd, Provider, SqlExpr, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGroupBox, cxRadioGroup, DateUtils, cxCalc, dxBar, DB, dxSkinsCore,
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
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxBarBuiltInMenu,
  System.Actions, siComp, siLngLnk;

type
  TfrmInvoice = class(TForm)
    pgInvoice: TcxPageControl;
    tsInvoiceHead: TcxTabSheet;
    tsShipToAddress: TcxTabSheet;
    tsAgent: TcxTabSheet;
    tsNotes: TcxTabSheet;
    DBText22: TDBText;
    pmInvoiceRow: TPopupMenu;
    AddRow1: TMenuItem;
    RemoveRow: TMenuItem;
    Label43: TLabel;
    pmLevAdr: TPopupMenu;
    AddShiptoaddress1: TMenuItem;
    Shape3: TShape;
    pmPrint: TPopupMenu;
    Invoice1: TMenuItem;
    RemoveShipToAddress1: TMenuItem;
    FakturaEngelsk1: TMenuItem;
    FakturaEngelskLength1: TMenuItem;
    tsStickyNote: TcxTabSheet;
    DBMemo2: TDBMemo;
    TRPBREV1: TMenuItem;
    SpecifikationSvenskVer2: TMenuItem;
    SpecEngVer2: TMenuItem;
    SpecifikationEngelskmedproducentver21: TMenuItem;
    SpecifikationEngelskAktuelldimensionVer21: TMenuItem;
    Specifikationutanpktnr1: TMenuItem;
    SpecifikationIdahostyle1: TMenuItem;
    FakturaEngelskfrAgust1: TMenuItem;
    FakturaEngelskLengthNM31: TMenuItem;
    FakturaEngelskLngdperpakettyp1: TMenuItem;
    Klientspecifikfaktura1: TMenuItem;
    Klientpaketspecifikation1: TMenuItem;
    FakturaSvenskutanmomsdk1: TMenuItem;
    FakturaEngelskdk1: TMenuItem;
    SpecifikationSvenskdk1: TMenuItem;
    SpecifikationEngelskdk1: TMenuItem;
    cxDBRichEdit1: TcxDBRichEdit;
    ActionList1: TActionList;
    acBooking: TAction;
    acGetInvoiceNo: TAction;
    acSave: TAction;
    acAddTab: TAction;
    acSummarize: TAction;
    ImageList1: TImageList;
    acPrintInvoices: TAction;
    acKlientInvoices: TAction;
    acClientPkgSpecar: TAction;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    acPrint: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    acClose: TAction;
    ndralayout1: TMenuItem;
    acPrintClientFakturaAndSpec: TAction;
    vriga1: TMenuItem;
    SkrivutKlientfakturaKlientspec1: TMenuItem;
    acEmailClientFakturaAndSpec: TAction;
    EmailaKlientfakturaKlientspec1: TMenuItem;
    acPrintTrpOrder: TAction;
    acPrintOrderAndSpec: TAction;
    SkrivutTrpbrevKlientspec1st1: TMenuItem;
    acAttestera: TAction;
    BitBtn8: TBitBtn;
    dblInFaktNr: TcxDBLabel;
    acChangeLayoutFakturaGrid: TAction;
    acRemoveRow: TAction;
    acAddRow: TAction;
    acAddShipToAdr: TAction;
    grdShipAdrDBTableView1: TcxGridDBTableView;
    grdShipAdrLevel1: TcxGridLevel;
    grdShipAdr: TcxGrid;
    grdShipAdrDBTableView1Reference: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressName: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine1: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine2: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine3: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine4: TcxGridDBColumn;
    grdShipAdrDBTableView1STATE: TcxGridDBColumn;
    grdShipAdrDBTableView1POSTAL_CODE: TcxGridDBColumn;
    grdShipAdrDBTableView1CITY: TcxGridDBColumn;
    grdShipAdrDBTableView1ADDR: TcxGridDBColumn;
    grdShipAdrDBTableView1COUNTRY: TcxGridDBColumn;
    grdShipAdrDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdShipAdrDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressNo: TcxGridDBColumn;
    acRemoveShipToAdr: TAction;
    acCopyInvoiceRow: TAction;
    dsrcInvoiceDetail: TDataSource;
    cxLookAndFeelController1: TcxLookAndFeelController;
    tsSpec: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    panelInvoiceTotal: TPanel;
    Label26: TLabel;
    DBText32: TDBText;
    Label27: TLabel;
    DBText33: TDBText;
    Label28: TLabel;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText37: TDBText;
    Label34: TLabel;
    DBText40: TDBText;
    DBText21: TDBText;
    Label41: TLabel;
    DBText9: TDBText;
    Label37: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBText7: TDBText;
    Label7: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    DBEdit1: TDBEdit;
    grdFaktura: TcxGrid;
    grdFakturaDBTableView1: TcxGridDBTableView;
    grdFakturaDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdFakturaDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdFakturaDBTableView1InvoiceDetailNo: TcxGridDBColumn;
    grdFakturaDBTableView1TypeOfRow: TcxGridDBColumn;
    grdFakturaDBTableView1LoadNo: TcxGridDBColumn;
    grdFakturaDBTableView1LoadID: TcxGridDBColumn;
    grdFakturaDBTableView1OrderLineNo: TcxGridDBColumn;
    grdFakturaDBTableView1Reference: TcxGridDBColumn;
    grdFakturaDBTableView1ProductDescription: TcxGridDBColumn;
    grdFakturaDBTableView1ProductNo: TcxGridDBColumn;
    grdFakturaDBTableView1LengthDescription: TcxGridDBColumn;
    grdFakturaDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdFakturaDBTableView1VolumeUnit: TcxGridDBColumn;
    grdFakturaDBTableView1ActualThicknessMM: TcxGridDBColumn;
    grdFakturaDBTableView1ActualWidthMM: TcxGridDBColumn;
    grdFakturaDBTableView1NominalThicknessMM: TcxGridDBColumn;
    grdFakturaDBTableView1NominalWidthMM: TcxGridDBColumn;
    grdFakturaDBTableView1NominalThicknessINCH: TcxGridDBColumn;
    grdFakturaDBTableView1NominalWidthINCH: TcxGridDBColumn;
    grdFakturaDBTableView1NoOfPkgs: TcxGridDBColumn;
    grdFakturaDBTableView1ActualNetM3: TcxGridDBColumn;
    grdFakturaDBTableView1NominalM3: TcxGridDBColumn;
    grdFakturaDBTableView1LinealMeter: TcxGridDBColumn;
    grdFakturaDBTableView1NoOfPieces: TcxGridDBColumn;
    grdFakturaDBTableView1CreatedUser: TcxGridDBColumn;
    grdFakturaDBTableView1ModifiedUser: TcxGridDBColumn;
    grdFakturaDBTableView1DateCreated: TcxGridDBColumn;
    grdFakturaDBTableView1NominalLengthMM: TcxGridDBColumn;
    grdFakturaDBTableView1CustShipPlanDetailObjectNo: TcxGridDBColumn;
    grdFakturaDBTableView1Volume_OrderUnit: TcxGridDBColumn;
    grdFakturaDBTableView1Price: TcxGridDBColumn;
    grdFakturaDBTableView1PriceUnit: TcxGridDBColumn;
    grdFakturaDBTableView1ProductValue: TcxGridDBColumn;
    grdFakturaDBTableView1OL_Reference: TcxGridDBColumn;
    grdFakturaLevel1: TcxGridLevel;
    panelLO: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    DBText24: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText28: TDBText;
    DBText29: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    DBText30: TDBText;
    Label25: TLabel;
    DBText31: TDBText;
    DBText44: TDBText;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    dcOrderNoText: TDBEdit;
    dcSalesMan: TDBEdit;
    dcCustRef: TDBEdit;
    dcOurRef: TDBEdit;
    bbNewCarrier: TBitBtn;
    DBEdit2: TDBEdit;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    dxDBMaskEdit1: TcxDBMaskEdit;
    dxDBMaskEdit2: TcxDBMaskEdit;
    lValuta: TcxLabel;
    TabControl1: TTabControl;
    grdPackageSpecDBTableView1: TcxGridDBTableView;
    grdPackageSpecLevel1: TcxGridLevel;
    grdPackageSpec: TcxGrid;
    grdPackageSpecDBTableView1LoadNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1LoadDetailNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1PRODUCT: TcxGridDBColumn;
    grdPackageSpecDBTableView1PACKAGENO: TcxGridDBColumn;
    grdPackageSpecDBTableView1NoOfPackages: TcxGridDBColumn;
    grdPackageSpecDBTableView1PACKAGETYPENO: TcxGridDBColumn;
    grdPackageSpecDBTableView1SupplierCode: TcxGridDBColumn;
    grdPackageSpecDBTableView1PackageOK: TcxGridDBColumn;
    grdPackageSpecDBTableView1ProblemPackageLog: TcxGridDBColumn;
    grdPackageSpecDBTableView1CreatedUser: TcxGridDBColumn;
    grdPackageSpecDBTableView1ModifiedUser: TcxGridDBColumn;
    grdPackageSpecDBTableView1DateCreated: TcxGridDBColumn;
    grdPackageSpecDBTableView1M3_NET: TcxGridDBColumn;
    grdPackageSpecDBTableView1PCS: TcxGridDBColumn;
    grdPackageSpecDBTableView1M3_NOM: TcxGridDBColumn;
    grdPackageSpecDBTableView1MFBM: TcxGridDBColumn;
    grdPackageSpecDBTableView1KVM: TcxGridDBColumn;
    grdPackageSpecDBTableView1LOPM: TcxGridDBColumn;
    grdPackageSpecDBTableView1ProductNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1DefaultCustShipObjectNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1PCS_PER_LENGTH: TcxGridDBColumn;
    grdPackageSpecDBTableView1NoOfLengths: TcxGridDBColumn;
    grdPackageSpecDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1ALMM: TcxGridDBColumn;
    grdPackageSpecDBTableView1ActualThicknessMM: TcxGridDBColumn;
    grdPackageSpecDBTableView1ActualWidthMM: TcxGridDBColumn;
    grdPackageSpecDBTableView1SurfacingNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1SpeciesNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1MainGradeNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1OverrideMatch: TcxGridDBColumn;
    grdPackageSpecDBTableView1LIPNo: TcxGridDBColumn;
    grdPackageSpecDBTableView1Pkg_State: TcxGridDBColumn;
    grdPackageSpecDBTableView1Changed: TcxGridDBColumn;
    grdPackageSpecDBTableView1Defsspno: TcxGridDBColumn;
    grdPackageSpecDBTableView1OverrideRL: TcxGridDBColumn;
    acAddPackagesToLoad: TAction;
    acAddPackagesToInventory: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxStyleRed: TcxStyle;
    cxStyleAqua: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleSilver: TcxStyle;
    eSearchPkgNo: TcxTextEdit;
    bGrupperingsruta: TcxButton;
    acGroupByBox: TAction;
    bGruppsummering: TcxButton;
    acGroupBySummary: TAction;
    acSpecFaltValjare: TAction;
    bbFaltvaljare: TcxButton;
    cxLabel3: TcxLabel;
    cxSplitter2: TcxSplitter;
    acAddPkg: TAction;
    acRemovePkg: TAction;
    pcSPEC: TcxPageControl;
    tsKortSkeppSpec: TcxTabSheet;
    tsLagdTillLagerSpec: TcxTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    bAdd: TcxButton;
    bRemove: TcxButton;
    cxButton1: TcxButton;
    grdSelectedPkgs: TcxGrid;
    grdSelectedPkgsDBTableView1: TcxGridDBTableView;
    grdSelectedPkgsDBTableView1LoadNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1LoadDetailNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PACKAGENO: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1SupplierCode: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PRODUCT: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1NoOfPackages: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PACKAGETYPENO: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PackageOK: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ProblemPackageLog: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1CreatedUser: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ModifiedUser: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1DateCreated: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PCS_PER_LENGTH: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1M3_NET: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1PCS: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1M3_NOM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1MFBM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1KVM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1LOPM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ProductNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1DefaultCustShipObjectNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1NoOfLengths: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ProductLengthNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ALMM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ActualThicknessMM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1ActualWidthMM: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1SurfacingNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1SpeciesNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1MainGradeNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1OverrideMatch: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1LIPNo: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1Pkg_State: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1Pkg_Function: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1Changed: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1Defsspno: TcxGridDBColumn;
    grdSelectedPkgsDBTableView1OverrideRL: TcxGridDBColumn;
    grdSelectedPkgsLevel1: TcxGridLevel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxButton3: TcxButton;
    cxButton7: TcxButton;
    cxButton9: TcxButton;
    grdToInventory: TcxGrid;
    grdToInventoryDBTableView1: TcxGridDBTableView;
    grdToInventoryLevel1: TcxGridLevel;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1Red: TcxStyle;
    acAddPkgToInventory: TAction;
    acRegretAddPkgToInventory: TAction;
    grdToInventoryDBTableView1PRODUCT: TcxGridDBColumn;
    grdToInventoryDBTableView1PACKAGENO: TcxGridDBColumn;
    grdToInventoryDBTableView1NoOfPackages: TcxGridDBColumn;
    grdToInventoryDBTableView1SupplierCode: TcxGridDBColumn;
    grdToInventoryDBTableView1M3_NET: TcxGridDBColumn;
    grdToInventoryDBTableView1PCS: TcxGridDBColumn;
    grdToInventoryDBTableView1M3_NOM: TcxGridDBColumn;
    grdToInventoryDBTableView1MFBM: TcxGridDBColumn;
    grdToInventoryDBTableView1KVM: TcxGridDBColumn;
    grdToInventoryDBTableView1LOPM: TcxGridDBColumn;
    grdToInventoryDBTableView1PCS_PER_LENGTH: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    lcPIP: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    lcLIP: TcxDBLookupComboBox;
    bMarkAllRows: TcxButton;
    acMarkAllRows: TAction;
    acSpecGroupByLoadNo: TAction;
    SpecifikationgrupperadperFSSvensk1: TMenuItem;
    PanelInvoiceHead: TPanel;
    Label1: TLabel;
    lInvoiceNo: TcxLabel;
    txtCustomer: TDBText;
    lKund: TcxLabel;
    lFakturaAdress: TcxLabel;
    Label42: TLabel;
    Label11: TLabel;
    lcSR: TcxDBLookupComboBox;
    deFakturaDatum: TcxDBDateEdit;
    Label2: TLabel;
    lcKonto: TcxDBLookupComboBox;
    Label6: TLabel;
    Label10: TLabel;
    lcSalesman: TcxDBLookupComboBox;
    Label31: TLabel;
    eSalesOrgNo: TcxDBTextEdit;
    rgDebitCredit: TDBRadioGroup;
    Label29: TLabel;
    DBText8: TDBText;
    DBText6: TDBText;
    lLeveransvillkor: TcxLabel;
    lcSprak: TcxDBLookupComboBox;
    lSprak: TcxLabel;
    lBetalningsvillkor: TcxLabel;
    DBText4: TDBText;
    Label35: TLabel;
    DBText42: TDBText;
    DBText18: TDBText;
    Label12: TLabel;
    Frhandsgranskaklientfaktura1: TMenuItem;
    acExportTyp1a: TAction;
    pmExport: TPopupMenu;
    acExportTyp11: TMenuItem;
    acExportTyp1b: TAction;
    ExporterapaketnrfilmedCframfrpaketnr1: TMenuItem;
    cxButton2: TcxButton;
    bPrint: TcxButton;
    cxLabel4: TcxLabel;
    tePkgNo: TcxTextEdit;
    acEmailaTrpBrev: TAction;
    Emailatransportbrevpaketspec1: TMenuItem;
    acExportInvoiceSpecWoodx: TAction;
    ExporteramedWoodxformat1: TMenuItem;
    acPrintMeny: TAction;
    EXPORT1: TMenuItem;
    acExportmeny: TAction;
    Skrivut1: TMenuItem;
    acKundSpecifika: TAction;
    Kundspecifikarapporter1: TMenuItem;
    cbSpecialMoms: TcxDBCheckBox;
    grdFakturaDBTableView1ProductValueWOFreight: TcxGridDBColumn;
    grdFakturaDBTableView1VatValue: TcxGridDBColumn;
    grdFakturaDBTableView1intNM3: TcxGridDBColumn;
    grdFakturaDBTableView1ArticleNo: TcxGridDBColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    grdFakturaDBTableView1ArticleName: TcxGridDBColumn;
    PanelInvoiceRowMissing: TPanel;
    grdFakturaDBTableView1Konto: TcxGridDBColumn;
    grdFakturaDBTableView1VatCode: TcxGridDBColumn;
    grdFakturaDBTableView1moms_konto: TcxGridDBColumn;
    deDueDate: TcxDBDateEdit;
    cxLabel5: TcxLabel;
    acEMailaFakturaSpecTillKundOchAgent: TAction;
    EmailakundAgentfakturaspec1: TMenuItem;
    rgFreightInDiscount: TcxDBRadioGroup;
    rgCommisionInDiscount: TcxDBRadioGroup;
    cbTrading: TcxDBCheckBox;
    cbCommissionPaidByCustomer: TcxDBCheckBox;
    cbVAT: TcxDBCheckBox;
    cbSnabbfaktura: TcxDBCheckBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    BitBtn2: TBitBtn;
    acGetKontoNr: TAction;
    lcIntraStatCountryNo: TcxDBLookupComboBox;
    Label3: TLabel;
    grdFakturaDBTableView1InclInPrice: TcxGridDBColumn;
    grdFakturaDBTableView1InclInInvoiceTotal: TcxGridDBColumn;
    cxStyleSpecialColumns: TcxStyle;
    pmInvoiceRows: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    acLenaExport: TAction;
    LenasExport1: TMenuItem;
    acLindaExport: TAction;
    acLindaExport1: TMenuItem;
    cbMoms: TcxDBCheckBox;
    acEDI: TAction;
    BitBtn9: TBitBtn;
    Medkvalitet1: TMenuItem;
    Utankvalitet1: TMenuItem;
    Medkvalitet2: TMenuItem;
    Utankvalitet2: TMenuItem;
    grdShipAdrDBTableView1GLN: TcxGridDBColumn;
    cxDBLabelCustomerGLNNo: TcxDBLabel;
    acPreviewKlientPkgSpec: TAction;
    Frhandsgranskaklientspecifikation1: TMenuItem;
    siLangLinked_frmInvoice: TsiLangLinked;
    N1: TMenuItem;
    procedure TabControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label16DblClick(Sender: TObject);
    procedure Label38DblClick(Sender: TObject);
    procedure Label5DblClick(Sender: TObject);
    procedure bbNewCarrierClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FakturaEngelsk1Click(Sender: TObject);
    procedure FakturaEngelskLength1Click(Sender: TObject);
    procedure grdInvoiceRowsProductValueValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    procedure TRPBREV1Click(Sender: TObject);
    procedure SpecifikationSvenskVer2Click(Sender: TObject);
    procedure SpecEngVer2Click(Sender: TObject);
    procedure SpecifikationEngelskmedproducentver21Click(Sender: TObject);
    procedure SpecifikationEngelskAktuelldimensionVer21Click(Sender: TObject);
    procedure Specifikationutanpktnr1Click(Sender: TObject);
    procedure SpecifikationIdahostyle1Click(Sender: TObject);
    procedure FakturaEngelskfrAgust1Click(Sender: TObject);
    procedure FakturaEngelskLengthNM31Click(Sender: TObject);
    procedure FakturaEngelskLngdperpakettyp1Click(Sender: TObject);
    procedure FakturaSvenskutanmomsdk1Click(Sender: TObject);
    procedure FakturaEngelskdk1Click(Sender: TObject);
    procedure SpecifikationSvenskdk1Click(Sender: TObject);
    procedure SpecifikationEngelskdk1Click(Sender: TObject);
    procedure acBookingExecute(Sender: TObject);
    procedure acGetInvoiceNoExecute(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acAddTabExecute(Sender: TObject);
    procedure acSummarizeExecute(Sender: TObject);
    procedure acPrintInvoicesExecute(Sender: TObject);
    procedure acKlientInvoicesExecute(Sender: TObject);
    procedure acClientPkgSpecarExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acBookingUpdate(Sender: TObject);
    procedure lValutaClick(Sender: TObject);
    procedure lKundClick(Sender: TObject);
    procedure lLeveransvillkorClick(Sender: TObject);
    procedure lBetalningsvillkorClick(Sender: TObject);
    procedure lSprakClick(Sender: TObject);
    procedure lFakturaAdressClick(Sender: TObject);
    procedure cxLabelSpeditorClick(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure acPrintClientFakturaAndSpecExecute(Sender: TObject);
    procedure acEmailClientFakturaAndSpecExecute(Sender: TObject);
    procedure acPrintTrpOrderExecute(Sender: TObject);
    procedure acPrintOrderAndSpecExecute(Sender: TObject);
    procedure acAttesteraExecute(Sender: TObject);
    procedure acChangeLayoutFakturaGridExecute(Sender: TObject);
    procedure acRemoveRowExecute(Sender: TObject);
    procedure acAddRowExecute(Sender: TObject);
    procedure acAddShipToAdrExecute(Sender: TObject);
    procedure acRemoveShipToAdrExecute(Sender: TObject);
    procedure acCopyInvoiceRowExecute(Sender: TObject);
    procedure acAddPackagesToLoadExecute(Sender: TObject);
    procedure acAddPackagesToInventoryExecute(Sender: TObject);
    procedure grdPackageSpecDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure pgInvoicePageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure acAddPackagesToLoadUpdate(Sender: TObject);
    procedure acAddPackagesToInventoryUpdate(Sender: TObject);
    procedure grdPackageSpecDBTableView1Pkg_FunctionGetDisplayText
      (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
    procedure acGroupByBoxExecute(Sender: TObject);
    procedure acGroupBySummaryExecute(Sender: TObject);
    procedure eSearchPkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSpecFaltValjareExecute(Sender: TObject);
    procedure acAddPkgExecute(Sender: TObject);
    procedure acRemovePkgExecute(Sender: TObject);
    procedure acAddPkgUpdate(Sender: TObject);
    procedure acRemovePkgUpdate(Sender: TObject);
    procedure grdPackageSpecDBTableView1DblClick(Sender: TObject);
    procedure grdSelectedPkgsDBTableView1DblClick(Sender: TObject);
    procedure grdSelectedPkgsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acAddPkgToInventoryExecute(Sender: TObject);
    procedure acRegretAddPkgToInventoryExecute(Sender: TObject);
    procedure acRegretAddPkgToInventoryUpdate(Sender: TObject);
    procedure acAddPkgToInventoryUpdate(Sender: TObject);
    procedure grdToInventoryDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdToInventoryDBTableView1DblClick(Sender: TObject);
    procedure acMarkAllRowsExecute(Sender: TObject);
    procedure grdPackageSpecDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSpecGroupByLoadNoExecute(Sender: TObject);
    procedure grdFakturaDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure acAddRowUpdate(Sender: TObject);
    procedure acRemoveRowUpdate(Sender: TObject);
    procedure acAddShipToAdrUpdate(Sender: TObject);
    procedure acRemoveShipToAdrUpdate(Sender: TObject);
    procedure acAddTabUpdate(Sender: TObject);
    procedure acCopyInvoiceRowUpdate(Sender: TObject);
    procedure acGetInvoiceNoUpdate(Sender: TObject);
    procedure acMarkAllRowsUpdate(Sender: TObject);
    procedure Frhandsgranskaklientfaktura1Click(Sender: TObject);
    procedure tePkgNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcSalesmanPropertiesChange(Sender: TObject);
    procedure acEmailaTrpBrevExecute(Sender: TObject);
    procedure acExportInvoiceSpecWoodxExecute(Sender: TObject);
    procedure acSummarizeUpdate(Sender: TObject);
    procedure acPrintMenyExecute(Sender: TObject);
    procedure acExportmenyExecute(Sender: TObject);
    procedure acKundSpecifikaExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acEMailaFakturaSpecTillKundOchAgentExecute(Sender: TObject);
    procedure lcLIPEnter(Sender: TObject);
    procedure lcLIPExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acGetKontoNrExecute(Sender: TObject);
    procedure acLenaExportExecute(Sender: TObject);
    procedure acLindaExportExecute(Sender: TObject);
    procedure acEDIExecute(Sender: TObject);
    procedure Medkvalitet1Click(Sender: TObject);
    procedure Utankvalitet1Click(Sender: TObject);
    procedure Medkvalitet2Click(Sender: TObject);
    procedure Utankvalitet2Click(Sender: TObject);
    procedure acPreviewKlientPkgSpecExecute(Sender: TObject);
  private
    { Private declarations }
    // Invoiced  : Boolean ;
    ExcelDir: String;
    TrpID: String;
    // Procedure CalcNetProductValue ;
    procedure ShowVerifikatLoggExecute(Sender: TObject);
    procedure SaveInvoice(Sender: TObject);
    function DoesInvoiceRowsHaveValues: Boolean;
    procedure DetermineIfInvoiceIsWithMoms;
    procedure SetReadOnlyProperties;
    procedure CheckIfInvoiceRowMissing;
    procedure SetInvoiceHeaderAsInvoiced;
    Function InvoiceSaved: Boolean;
    procedure PrintKundSpecifikFaktura(const RapportNamn: String);
    procedure DeleteInvoice(Sender: TObject);
    procedure GetBookingData(Sender: TObject; ShippingPlanNo, InternalInvoiceNo : Integer);
    // function  IsInvoiced(Sender: TObject) : Boolean ;
    // function  GetNextInvoice_DetailNo : Integer ;
    Procedure AddFreigthCost;
    Function ConvertFreightCostToCurrencyFromSEK( { Freight cost } FreightCost
      : Double; { Convert from } ToCurrencyNo: Integer): Double;
    Function ConvertFreightCostFromCurrencyToSEK( { Freight cost } FreightCost
      : Double; { Convert from } FromCurrencyNo: Integer): Double;
    procedure AddPkgsToSPEC(const SPEC: Integer);
    procedure MakeInvoice(Sender: TObject);
    procedure AddSPECPkg;
    procedure AddLagerPkg;
    procedure CheckValueExistInRows;
  public
    { Public declarations }
    NewInvoice: Boolean;
    procedure Summarize(Sender: TObject);
    procedure SummarizeForQuickInvoice(Sender: TObject);
  end;

  // var frmInvoice: TfrmInvoice;

implementation

uses VidaUser, dmsDataConn, UnitSelectClient, UnitdmModule1,
  UnitDestination, UnitAddress, UnitCurrency, UnitDelTerms,
  UnitPaymentTerms, UnitCRViewReport, UnitCarrier, dmBooking,
  dmcVidaInvoice, UnitBookingForm, dmsVidaContact, uStickyNote, VidaConst,
  UnitCRPrintReport, uLanguage, uSendMapiMail, UnitCRExportOneReport,
  UnitCRPrintOneReport, fAttestInvoice, dmsVidaSystem,
  uKundspecifika, uAddKundSpecifika, uArticle, uAccInv, uVerifikationLogg,
  udmLanguage, uReportController, uReport;

{$R *.dfm}

Function TfrmInvoice.InvoiceSaved: Boolean;
begin
  With dmVidaInvoice do
  Begin
    Result := True;
    if cdsInvoiceHead.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsInvoiceHead.ChangeCount > 0 then
      Result := False;

    if cdsInvoiceLO.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsInvoiceLO.ChangeCount > 0 then
      Result := False;

    if cdsInvoiceDetail.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsInvoiceDetail.ChangeCount > 0 then
      Result := False;

    if cdsInvoiceShipTo.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsInvoiceShipTo.ChangeCount > 0 then
      Result := False;

    if cdsInvoiceShipToAddress.State in [dsEdit, dsInsert] then
      Result := False;
    if cdsInvoiceShipToAddress.ChangeCount > 0 then
      Result := False;

    // NewInvoice:= False ; //set to false if user save

    if cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
      Result := False;
    if cds_IH_SpecLoad.ChangeCount > 0 then
      Result := False;
  End; // With
end;

procedure TfrmInvoice.TabControl1Change(Sender: TObject);
begin
  dmVidaInvoice.cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString +
    ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];

  dmVidaInvoice.cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString +
    ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];

  GetBookingData(Sender, StrToInt(TabControl1.Tabs[TabControl1.TabIndex]), dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
end;

procedure TfrmInvoice.Summarize(Sender: TObject);
Var
  SavePlace: TBookmark;
  ArticleGroupNo: Integer;
Begin
  with dmVidaInvoice do
  Begin
    if cdsInvoiceHeadInvoiced.AsInteger = 0 then
    Begin
      DetermineIfInvoiceIsWithMoms;

      // Sätter kontonr
      SetKontonr;

      if cdsInvoiceHead.Active = False then
        Exit;
      cdsInvoiceDetail.DisableControls;
      SavePlace := cdsInvoiceDetail.GetBookmark;
      Try
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat := 0;
        cdsInvoiceHeadSUM_FreigthCost.AsFloat := 0;

        cdsInvoiceDetail.Filtered := False;
        cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString;
        cdsInvoiceDetail.Filtered := True;

        cdsInvoiceDetail.First;
        While not cdsInvoiceDetail.Eof do
        Begin
          ArticleGroupNo := GetArticleGroupNo
            (cdsInvoiceDetailArticleNo.AsInteger);
          // SUM Product details
          // if ((cdsInvoiceDetailArticleNo.AsInteger = 1) or (cdsInvoiceDetailArticleNo.AsInteger = 3))
          // or (((cdsInvoiceDetailArticleNo.AsInteger = 2) or (cdsInvoiceDetailArticleNo.AsInteger = 4))
          if (ArticleGroupNo = 0) OR
            ((ArticleGroupNo = 1) and
            (cdsInvoiceDetailInclInPrice.AsInteger = 0)) then
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat :=
              cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
              cdsInvoiceDetailProductValue.AsFloat;

          // SUM non product details as freight
          // if ((cdsInvoiceDetailArticleNo.AsInteger = 2) or (cdsInvoiceDetailArticleNo.AsInteger = 4)) then
          if ArticleGroupNo = 1 then
          Begin
            if cdsInvoiceHeadDebit_Credit.AsInteger = 0 then
              cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
                cdsInvoiceHeadSUM_FreigthCost.AsFloat +
                Abs(cdsInvoiceDetailProductValue.AsFloat) * -1
            else
              cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
                cdsInvoiceHeadSUM_FreigthCost.AsFloat +
                Abs(cdsInvoiceDetailProductValue.AsFloat);
          End;
          cdsInvoiceDetail.Next;
        End;

        // Calculate
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat;
        // Calculate invoice value with no freight
        cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
          cdsInvoiceHeadSUM_FreigthCost.AsFloat;

        if cdsInvoiceHeadFreightInDiscount.AsInteger = 0 then
        // if rgFreightInDiscount.ItemIndex = 1 then
        // if cbFreightInDiscount.Checked = False then
        Begin
          // Calculate Invoice value to be paid, Freight NOT included in discount calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));

          cdsInvoiceHeadDiscount.AsFloat :=
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));
        End
        else
        Begin
          // Calculate Invoice value to be paid, Freight Included in discount calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));

          cdsInvoiceHeadDiscount.AsFloat :=
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));
        End;

        // if cbCommissionPaidByCustomer.Checked then
        if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then
        Begin
          // if cbFreightInComm.Checked = False then
          if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
          Begin
            // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
              cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
              (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End
          else
          Begin
            // Calculate Invoice value to be paid, Freight included in Commission calculation
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
              cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
              (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End;
        End;

        // if cbCommissionPaidByCustomer.Checked = False then
        if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then
        // Show commission VW is paying
        Begin
          // if rgCommisionInDiscount.ItemIndex = 1 then
          if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
          Begin
            // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End
          else
          Begin
            // Calculate Invoice value to be paid, Freight included in Commission calculation
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End;
        End;

        cdsInvoiceHeadCommission_and_Discount.AsFloat :=
          cdsInvoiceHeadCommission.AsFloat + cdsInvoiceHeadDiscount.AsFloat;
        cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
          cdsInvoiceHeadCommission_and_Discount.AsFloat;
        cdsInvoiceHeadVAT_Value.AsFloat := 0;

        // Calculate VAT Value
        if cdsInvoiceHeadMoms.AsInteger = 1 then
        Begin
          cdsInvoiceHeadVAT_Value.AsFloat :=
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * c_Moms;
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat +
            cdsInvoiceHeadVAT_Value.AsFloat);
          cdsInvoiceHeadVAT_Value.AsFloat :=
            cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * c_Moms;
          cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat +
            cdsInvoiceHeadVAT_Value.AsFloat);
        End
        else
        Begin
          cdsInvoiceHeadVAT_Value.AsFloat := 0;
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat);
          cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat);
        End;

        // Save to InvoiceHeader table
        cdsInvoiceHead.Post;
        CalcAndUpdateNetProductValueInInvoiceDetail;
      Finally

        cdsInvoiceDetail.Filtered := False;
        dmVidaInvoice.cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
          dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString +
          ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];

        cdsInvoiceDetail.Filtered := True;
        cdsInvoiceDetail.GotoBookmark(SavePlace);
        cdsInvoiceDetail.EnableControls;
      End; // finally
    End; // if cdsInvoiceHeadInvoiced.AsInteger = 0 then
  End; // with
End;

procedure TfrmInvoice.SummarizeForQuickInvoice(Sender: TObject);
Var
  SavePlace: TBookmark;
  ArticleGroupNo: Integer;
Begin
  with dmVidaInvoice do
  Begin
    if cdsInvoiceHeadInvoiced.AsInteger = 0 then
    Begin
      DetermineIfInvoiceIsWithMoms;

      // Sätter kontonr
      SetKontonr;

      if cdsInvoiceHead.Active = False then
        Exit;
      cdsInvoiceDetail.DisableControls;
      SavePlace := cdsInvoiceDetail.GetBookmark;
      Try
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat := 0;
        cdsInvoiceHeadSUM_FreigthCost.AsFloat := 0;

        cdsInvoiceDetail.Filtered := False;
        cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString;
        cdsInvoiceDetail.Filtered := True;

        // dmVidaInvoice.cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger

        cdsInvoiceDetail.First;
        While not cdsInvoiceDetail.Eof do
        Begin

          ArticleGroupNo := GetArticleGroupNo
            (cdsInvoiceDetailArticleNo.AsInteger);

          // SUM Product details
          // if ((cdsInvoiceDetailArticleNo.AsInteger = 1) or (cdsInvoiceDetailArticleNo.AsInteger = 3))
          // or (((cdsInvoiceDetailArticleNo.AsInteger = 2) or (cdsInvoiceDetailArticleNo.AsInteger = 4))
          if (ArticleGroupNo = 0) OR
            ((ArticleGroupNo = 1) and
            (cdsInvoiceDetailInclInPrice.AsInteger = 0)) then
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat :=
              cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
              cdsInvoiceDetailProductValue.AsFloat;

          // SUM non product details as freight
          // if ((cdsInvoiceDetailArticleNo.AsInteger = 2) or (cdsInvoiceDetailArticleNo.AsInteger = 4)) then
          if ArticleGroupNo = 1 then

          Begin
            if cdsInvoiceHeadDebit_Credit.AsInteger = 0 then
              cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
                cdsInvoiceHeadSUM_FreigthCost.AsFloat +
                Abs(cdsInvoiceDetailProductValue.AsFloat) * -1
            else
              cdsInvoiceHeadSUM_FreigthCost.AsFloat :=
                cdsInvoiceHeadSUM_FreigthCost.AsFloat +
                Abs(cdsInvoiceDetailProductValue.AsFloat);
          End;

          cdsInvoiceDetail.Next;
        End;

        // Calculate
        cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat;

        // Calculate invoice value with no freight
        cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat +
          cdsInvoiceHeadSUM_FreigthCost.AsFloat;

        if cdsInvoiceHeadFreightInDiscount.AsInteger = 0 then
        // if rgFreightInDiscount.ItemIndex = 1 then
        Begin
          // Calculate Invoice value to be paid, Freight NOT included in discount calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));

          cdsInvoiceHeadDiscount.AsFloat :=
            (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));
        End
        else
        Begin
          // Calculate Invoice value to be paid, Freight Included in discount calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));

          cdsInvoiceHeadDiscount.AsFloat :=
            (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
            (cdsInvoiceHeadDiscount1.AsFloat / 100));
        End;

        (* // if rgCommisionInDiscount.ItemIndex = 1 then
          // Begin
          //  if rgCommisionInDiscount.ItemIndex = 1 then
          if cdsInvoiceHeadFreightInCommission.AsInteger = 1 then
          Begin
          // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
          (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
          cdsInvoiceHeadCommission.AsFloat:= (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
          End
          else
          Begin
          // Calculate Invoice value to be paid, Freight included in Commission calculation
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat:= cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
          (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;

          cdsInvoiceHeadCommission.AsFloat:=
          (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat * (cdsInvoiceHeadAgentCommission.AsFloat/100)) ;
          End ;
          // End ;
        *)

        // if cbCommissionPaidByCustomer.Checked then
        if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 1 then
        Begin
          // if cbFreightInComm.Checked = False then
          if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
          Begin
            // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
              cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
              (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End
          else
          Begin
            // Calculate Invoice value to be paid, Freight included in Commission calculation
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
              cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat -
              (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));

            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End;
        End;

        if cdsInvoiceHeadCommissionPaidByCustomer.AsInteger = 0 then
        // if cbCommissionPaidByCustomer.Checked = False then
        // Show commission VW is paying
        Begin
          // if rgCommisionInDiscount.ItemIndex = 1 then
          if cdsInvoiceHeadFreightInCommission.AsInteger = 0 then
          Begin
            // Calculate Invoice value to be paid, Freight NOT included in Commission calculation
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End
          else
          Begin
            // Calculate Invoice value to be paid, Freight included in Commission calculation
            cdsInvoiceHeadCommission.AsFloat :=
              (cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat *
              (cdsInvoiceHeadAgentCommission.AsFloat / 100));
          End;
        End;

        cdsInvoiceHeadCommission_and_Discount.AsFloat :=
          cdsInvoiceHeadCommission.AsFloat + cdsInvoiceHeadDiscount.AsFloat;
        cdsInvoiceHeadInv_Value_After_Deduct_DIS_COMM.AsFloat :=
          cdsInvoiceHeadTot_Inv_Inc_Freight_Extras.AsFloat -
          cdsInvoiceHeadCommission_and_Discount.AsFloat;

        cdsInvoiceHeadVAT_Value.AsFloat := 0;
        // Calculate VAT if Country is SWEDEN and cbVAT (Skatteupplag) checked
        if cdsInvoiceHeadMoms.AsInteger = 1 then
        Begin
          cdsInvoiceHeadVAT_Value.AsFloat :=
            cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat * c_Moms;
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat +
            cdsInvoiceHeadVAT_Value.AsFloat);
          cdsInvoiceHeadVAT_Value.AsFloat :=
            cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat * c_Moms;
          cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat +
            cdsInvoiceHeadVAT_Value.AsFloat);
        End
        else
        Begin
          cdsInvoiceHeadVAT_Value.AsFloat := 0;
          cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid.AsFloat);
          cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat :=
            Round(cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat);
        End;

        // Save to InvoiceHeader table
        cdsInvoiceHead.Post;
        CalcAndUpdateNetProductValueInInvoiceDetail;
      Finally
        cdsInvoiceDetail.Filtered := False;
        dmVidaInvoice.cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
          dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString +
          ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];

        cdsInvoiceDetail.Filtered := True;
        cdsInvoiceDetail.GotoBookmark(SavePlace);
        cdsInvoiceDetail.EnableControls;
      End; // finally
    End; // if cdsInvoiceHeadInvoiced.AsInteger = 0 then
  End; // with
End;

procedure TfrmInvoice.GetBookingData(Sender: TObject; ShippingPlanNo, InternalInvoiceNo: Integer);
begin
  with dmVidaInvoice do
  Begin
    cdsBookingData.Active := False;
    cdsBookingData.ParamByName('ShippingPlanNo').AsInteger    := ShippingPlanNo ;
    cdsBookingData.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
    cdsBookingData.Active := True;
    TrpID := cdsBookingDataSUPP_REFERENCE.AsString;
    if cdsBookingData.RecordCount = 0 then
      cdsBookingData.Active := False;
  End;
End;

procedure TfrmInvoice.FormShow(Sender: TObject);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFaktura.Name,
    grdFakturaDBTableView1);
  dmsSystem.LoadGridLayout(ThisUser.UserID,
    Self.Name + '/' + grdPackageSpec.Name, grdPackageSpecDBTableView1);

  grdFakturaDBTableView1InclInInvoiceTotal.Visible := False;
  Caption := 'Faktura - Försäljningsregion ' +
    dmVidaInvoice.cdsInvoiceHeadSR.AsString;

  lInvoiceNo.Caption :=
    intToStr(dmVidaInvoice.GetInvoiceNo
    (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger));

  dmVidaInvoice.cdsInvoiceShipToAddress.Active := True;

  GetBookingData(Sender, StrToInt(TabControl1.Tabs[TabControl1.TabIndex]), dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

  with dmVidaInvoice, dm_Booking, dmsSystem do
  Begin
    cds_LoadPackagesII.Active := True;
    cds_LIP.Active := False;
    cds_LIP.Active := True;

    if cds_IH_SpecLoadPIPNo.isNull then
      cds_LIP.Filter := 'PIPNo = -1'
    else
      cds_LIP.Filter := 'PIPNo = ' + cds_IH_SpecLoadPIPNo.AsString;
    cds_LIP.Filtered := True;

    cdsVoyageInvoice.Active := True;
    cdsCarrier.Active := True;
    cdsShippers.Active := True;

    cdsBookingInvoice.Active := False;
    cdsBookingInvoice.ParamByName('ShippingPlanNo').AsInteger :=
      StrToInt(TabControl1.Tabs[TabControl1.TabIndex]);
    cdsBookingInvoice.Active := True;

    if cdsBookingInvoice.Eof then
    Begin
      cdsBookingInvoice.Active := False;
      cdsCarrier.Active := False;
      cdsShippers.Active := False;
      cdsVoyageInvoice.Active := False;
    End
    else
    Begin
      cdsCarrier.Active := True;
      cdsVoyageInvoice.Active := False;
      cdsVoyageInvoice.Active := True;
    End;

    Label42.Caption := Trim(cdsInvoiceHeadAddressLine1.AsString) + ', ' +
      Trim(cdsInvoiceHeadAddressLine2.AsString) + ', ' +
      Trim(cdsInvoiceHeadAddressLine3.AsString) + ', ' +
      Trim(cdsInvoiceHeadAddressLine4.AsString) + ', ' +
      Trim(cdsInvoiceHeadCityName.AsString) + ', ' +
      Trim(cdsInvoiceHeadStateOrProvince.AsString) + ', ' +
      Trim(cdsInvoiceHeadPostalCode.AsString) + ', ' +
      Trim(cdsInvoiceHeadCountryName.AsString);

    Label43.Caption := Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString) +
      ', ' + Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString) + ', ' +
      Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString) + ', ' +
      Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString) + ', ' +
      Trim(cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString) + ', ' +
      Trim(cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString) + ', ' +
      Trim(cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString) + ', ' +
      Trim(cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString);

    if Length(cdsInvoiceHeadStickyNote.AsString) > 0 then
    Begin
      frmStickyNote := TfrmStickyNote.Create(Self);
      frmStickyNote.mStickyNote.Lines.Clear;
      frmStickyNote.mStickyNote.Lines.Add(cdsInvoiceHeadStickyNote.AsString);
      frmStickyNote.Show;
    End;

    OpenKortSkeppFS(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
    OpenInvoiceSpec(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
    OpenPkgsRemovedToInventory(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
      AsInteger);

    acSummarizeExecute(Sender);

    SetReadOnlyProperties;
  End; // With
end;

procedure TfrmInvoice.SetReadOnlyProperties;
Begin
  with dmVidaInvoice do
  Begin
    // if (cdsInvoiceHeadInvoiced.AsInteger <> 1) and ()
    if (StrToIntDef(lInvoiceNo.Caption, 0) > 0) and
      (not(ThisUser.UserID in [4, 8])) then
    Begin
      PanelInvoiceHead.Enabled := False;
      panelLO.Enabled := False;
    End;
    if (StrToIntDef(lInvoiceNo.Caption, 0) > 0) then
    Begin
      PanelInvoiceHead.Color := clSkyBlue;
      panelLO.Color := clSkyBlue;
      panelInvoiceTotal.Color := clSkyBlue;
      { lKund
        lFakturaAdress
        rgDebitCredit
        lLeveransvillkor
        lSprak
        lBetalningsvillkor }

    End;
  End;
End;

procedure TfrmInvoice.FormCreate(Sender: TObject);
begin
  if (not Assigned(dm_Booking)) then
    dm_Booking := Tdm_Booking.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmInvoice', 'dm_Booking');

  if not dmsSystem.cds_Currency.Active then
    dmsSystem.cds_Currency.Active := True;

  dmsContact.cds_Users.Active := True;
  with dmVidaInvoice do
  Begin
    ExcelDir := dmsSystem.Get_Dir('ExcelDir');
    TrpID := '';
    if not dmsSystem.cds_Language.Active then
      dmsSystem.cds_Language.Active := True;
    cdsInvoiceShipTo.Active := True;
  End;
end;

procedure TfrmInvoice.Label16DblClick(Sender: TObject);
Var
  FormSelectClient: TFormSelectClient;
begin
  with dmVidaInvoice, dmModule1 do
  Begin
    // if IsInvoiced(Sender) then Exit ;
    if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Exit;
    // if Invoiced then Exit ;

    FormSelectClient := TFormSelectClient.Create(Nil);
    Try
      dmModule1.cdsClient.Active := False;
      dmModule1.cdsClient.ParamByName('@RoleType').AsInteger := 3;
      dmModule1.cdsClient.Active := True;
      if FormSelectClient.ShowModal = mrOk then
      Begin
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;

        cdsInvoiceHeadAgentNo.AsInteger :=
          dmModule1.cdsClientClientNo.AsInteger;
        cdsInvoiceHeadAgentName.AsString :=
          dmModule1.cdsClientClientName.AsString;
      End;
    Finally
      dmModule1.cdsClient.Active := False;
      FreeAndNil(FormSelectClient); // .Free ;
    End;
  End;
end;

procedure TfrmInvoice.Label38DblClick(Sender: TObject);
Var
  FormAddress: TFormAddress;
begin
  with dmVidaInvoice, dmModule1 do
  Begin
    // if IsInvoiced(Sender) then Exit ;
    if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Exit;
    // if Invoiced then Exit ;
    FormAddress := TFormAddress.Create(Nil);
    Try
      cdsClientAddress.Active := False;
      cdsClientAddress.Close;
      cdsClientAddress.ParamByName('ClientNo').AsInteger :=
        cdsInvoiceHeadAgentNo.AsInteger;
      cdsClientAddress.ParamByName('AddressType').AsInteger := 1;
      cdsClientAddress.Active := True;

      if FormAddress.ShowModal = mrOk then
      Begin
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;

        cdsInvoiceHeadAGENT_ADDRESS_NAME.AsString :=
          cdsClientAddressADDRESS_NAME.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString :=
          cdsClientAddressADDRESSLINE1.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString :=
          cdsClientAddressADDRESSLINE2.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString :=
          cdsClientAddressADDRESSLINE3.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString :=
          cdsClientAddressADDRESSLINE4.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString :=
          cdsClientAddressPROVINCE.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString :=
          cdsClientAddressPOSTALCODE.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString :=
          cdsClientAddressCITY.AsString;
        cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString :=
          cdsClientAddressCOUNTRY.AsString;

        Label43.Caption :=
          Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE1.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE2.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE3.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_ADDRESSLINE4.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_CITY.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_PROVINCE.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_POSTALCODE.AsString) + ', ' +
          Trim(cdsInvoiceHeadAGENT_SHIPTO_COUNTRY.AsString);

        cdsInvoiceHead.Post;
      End;

    Finally
      FreeAndNil(FormAddress); // .Free ;
    End;

  End; // with
end;

(* function TfrmInvoice.GetNextInvoice_DetailNo : Integer ;
  Var
  SavePlace: TBookmark;
  InvoiceDetailNo : Integer ;
  Begin
  InvoiceDetailNo:= 0 ;
  with dmVidaInvoice do
  Begin
  SavePlace:= cdsInvoiceDetail.GetBookmark ;
  Try
  cdsInvoiceDetail.First ;
  While not cdsInvoiceDetail.Eof do
  Begin
  if InvoiceDetailNo < cdsInvoiceDetailInvoiceDetailNo.AsInteger then
  InvoiceDetailNo:= cdsInvoiceDetailInvoiceDetailNo.AsInteger ;
  cdsInvoiceDetail.Next ;
  End ; //While

  Finally
  Result:= InvoiceDetailNo + 1 ;
  cdsInvoiceDetail.GotoBookmark(SavePlace) ;
  cdsInvoiceDetail.FreeBookmark(SavePlace) ;
  End ; //finally

  End ; //With
  End ;
*)

procedure TfrmInvoice.Label5DblClick(Sender: TObject);
var
  FormDestination: TFormDestination;
begin
  with dmVidaInvoice, dmModule1 do
  Begin

    FormDestination := TFormDestination.Create(Nil);
    Try
      cdsDestination.Active := True;
      if FormDestination.ShowModal = mrOk then
      Begin

        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadDestinationNo.AsInteger := cdsDestinationCityNo.AsInteger;
        cdsInvoiceHeadDestination.AsString := cdsDestinationCityName.AsString;
        cdsInvoiceHead.Post;
      End;
    Finally
      cdsDestination.Active := False;
      FreeAndNil(FormDestination);
    End;
  End;
end;

procedure TfrmInvoice.bbNewCarrierClick(Sender: TObject);
var
  FormCarrier: TFormCarrier;
begin
  if dm_Booking.cdsBookingInvoice.Active = True then
  Begin
    FormCarrier := TFormCarrier.Create(Nil);
    Try
      FormCarrier.ShowModal;
    Finally
      FreeAndNil(FormCarrier); // .Free ;
    End;
  End;
end;

procedure TfrmInvoice.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;

  { if dmVidaInvoice.cdsInvoiceHead.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cdsInvoiceHead.Post ;

    if dmVidaInvoice.cdsInvoiceLO.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cdsInvoiceLO.Post ;

    if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cdsInvoiceDetail.Post ;


    if (dmVidaInvoice.cdsInvoiceHead.ChangeCount > 0) or
    (dmVidaInvoice.cdsInvoiceLO.ChangeCount > 0) or
    (dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0) or
    (dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0)  then }

  // if not InvoiceSaved then
  if StrToIntDef(lInvoiceNo.Caption, 0) = 0 then
  Begin
    if MessageDlg('This is a preliminary invoice, do you want to delete it?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CanClose := True;
      // if NewInvoice = True then
      DeleteInvoice(Sender);

      // if (IsInvoiced(Sender) = False) and (rgDebitCredit.ItemIndex = 1) and (dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger <> 5) then
      // Begin
      // ShowMessage('Detta är en kredit faktura, Fakturanummer måste genereras innan du kan stänga formuläret.') ;
      // CanClose:= False ;
      // End ;

    end
    else
    Begin
      SaveInvoice(Sender);
      // CanClose := False ;
    End
  End
  else
  Begin
    CanClose := True;
    // if NewInvoice = True then
    // DeleteInvoice(Sender) ;

    // if (IsInvoiced(Sender) = False) and (rgDebitCredit.ItemIndex = 1) then
    // Begin
    // ShowMessage('Detta är en kredit faktura, Fakturanummer måste genereras innan du kan stänga formuläret.') ;
    // CanClose:= False ;
    // End ;
  End;

  if CanClose then
  Begin
    Try
      dmsSystem.StoreGridLayout(ThisUser.UserID,
        Self.Name + '/' + grdFaktura.Name, grdFakturaDBTableView1);
      dmsSystem.StoreGridLayout(ThisUser.UserID,
        Self.Name + '/' + grdPackageSpec.Name, grdPackageSpecDBTableView1);
    Except
    End;

    dmVidaInvoice.cds_LoadPackages.Active := False;
    dmVidaInvoice.cds_LoadPackages.ParamByName('InternalInvoiceNo')
      .AsInteger := -1;
    dmVidaInvoice.cds_LoadPackages.Active := True;

    dmVidaInvoice.cds_LoadPackagesII.Active := False;

    dm_Booking.cdsBookingInvoice.DataSource := Nil;

    dmVidaInvoice.cdsInvoiceDetail.UpdateOptions.ReadOnly := False;

    dm_Booking.cdsVoyageInvoice.Active := False;
    dmsSystem.cdsCarrier.Active := True;
    dm_Booking.cdsShippers.Active := True;

    dmVidaInvoice.cdsInvoiceShipToAddress.Active := False;
    dmVidaInvoice.cdsInvoiceShipTo.Active := True;
    dmsSystem.cds_Language.Active := False;
    dmsContact.cds_Users.Active := False;
    dmVidaInvoice.cds_LIP.Active := False;
    dmVidaInvoice.cds_PIP.Active := False;
  End;
end;

procedure TfrmInvoice.DeleteInvoice(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  try
    With dmVidaInvoice do
    Begin
      Screen.Cursor := crSQLWait; { Show hourglass cursor }
      if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger <> 1)
      then
      Begin
        dmVidaInvoice.DeleteInvoice(cdsInvoiceHeadInternalInvoiceNo.AsInteger);
      End
      else
        ShowMessage
          ('Cannot delete an invoice that has a invoice number asssigned.');
    End;
  finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  end;
end;

procedure TfrmInvoice.FakturaEngelsk1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
     //LGA OBS!!! Denna rapport finns ej !!!!
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.FakturaEngelskLength1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
     //LGA OBS!!! Denna rapport finns ej !!!!

    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_ENG_längd_NOTE.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.grdInvoiceRowsProductValueValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if dmVidaInvoice.cdsInvoiceDetailTypeOfRow.AsInteger = 2 then
    Accept := True
  else
  Begin
    Accept := False;
    ErrorText := 'Cannot change this cell! (press Esc to undo)';
  End;
end;

procedure TfrmInvoice.TRPBREV1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RepNo: Integer;
  Params: TCMParams;
  RC: TCMReportController;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin
    RepNo := 42; // TRP_BREV.fr3
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
        AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    dmsContact.InsertUserIssueReport(ThisUser.UserID,
      dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRViewReport.CreateCo('TRP_BREV.RPT', A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport); // .Free ;
    End;
  end;
end;

procedure TfrmInvoice.Utankvalitet1Click(Sender: TObject);
begin
  dmVidaInvoice.PrepareExportFiles(lInvoiceNo.Caption,
    dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger, 1 { No "C" } ,
    0 { without grade } );
end;

procedure TfrmInvoice.Utankvalitet2Click(Sender: TObject);
begin
  dmVidaInvoice.PrepareExportFiles(lInvoiceNo.Caption,
    dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger, 0 { No "C" } ,
    0 { without grade } );
end;

procedure TfrmInvoice.SpecifikationSvenskVer2Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RepNo: Integer;
  Params: TCMParams;
  RC: TCMReportController;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;
  if uReportController.useFR then begin
    RepNo := 82; // SPECIFICATION_SV_VER3.fr3
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
        AsInteger);
      RC.RunReport(RepNo, Params, frPreview, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2.RPT', A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport); // .Free ;
    End;
  end;
end;

procedure TfrmInvoice.SpecEngVer2Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPECIFICATION_VER2.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;

end;

procedure TfrmInvoice.SpecifikationEngelskmedproducentver21Click
  (Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin

  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try

    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPECIFICATION_PROD_VER2.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.SpecifikationEngelskAktuelldimensionVer21Click
  (Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin

  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPEC_ACT_VER2.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.Specifikationutanpktnr1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPEC_NOPKGNO.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.SpecifikationIdahostyle1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPECIFICATION_IDAHO_VER2.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.FakturaEngelskfrAgust1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin

  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_ENG_IDAHO_NOTE.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.FakturaEngelskLengthNM31Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin

  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_ENG_längd_plus_NM3_NOTE.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.FakturaEngelskLngdperpakettyp1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin

  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_ENG_PKTTYP_NOTE.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.FakturaSvenskutanmomsdk1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_u_moms_NOTE_dk.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;

end;

procedure TfrmInvoice.FakturaEngelskdk1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('FAKTURA_ENG_NOTE_dk.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;

end;

procedure TfrmInvoice.SpecifikationSvenskdk1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try

    FormCRViewReport.CreateCo('SPECIFICATION_SV_VER2_dk.RPT', A);
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;

end;

procedure TfrmInvoice.SpecifikationEngelskdk1Click(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPECIFICATION_VER2_dk.RPT', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.acBookingExecute(Sender: TObject);
var
  FormBookingForm: TFormBookingForm;
begin
  FormBookingForm := TFormBookingForm.Create(Nil);
  try
    dm_Booking.InternalInvoiceNo  :=  dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    FormBookingForm.CreateCo(StrToInt(TabControl1.Tabs[TabControl1.TabIndex]));

    { if acGetInvoiceNo.Enabled then
      FormBookingForm.ReadMeOnly:= False
      else
      FormBookingForm.ReadMeOnly:= True ; }

    if acGetInvoiceNo.Enabled then
    Begin
      FormBookingForm.lcCurrency.Properties.ReadOnly        := False;
      FormBookingForm.eFreightCost.Properties.ReadOnly      := False;
      FormBookingForm.lcFreightVolUnit.Properties.ReadOnly  := False;
    End
    else
    Begin
      FormBookingForm.lcCurrency.Properties.ReadOnly        := True;
      FormBookingForm.eFreightCost.Properties.ReadOnly      := True;
      FormBookingForm.lcFreightVolUnit.Properties.ReadOnly  := True;
    End;

    FormBookingForm.ShowModal;
    if FormBookingForm.ReadMeOnly = False then
    Begin
      GetBookingData(Sender, StrToInt(TabControl1.Tabs[TabControl1.TabIndex]), dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
      if dmVidaInvoice.cdsInvoiceHeadQuickInvoice.AsInteger = 0 then
        ShowMessage
          ('If freight cost changed then you need to create the invoice again.');
      if FormBookingForm.BookingNo <> -1 then
      Begin
        if dmVidaInvoice.cdsInvoiceLO.State in [dsBrowse] then
          dmVidaInvoice.cdsInvoiceLO.Edit;
        dmVidaInvoice.cdsInvoiceLOBookingNo.AsInteger :=
          FormBookingForm.BookingNo;
        // dmVidaInvoice.cdsInvoiceLOShipper.AsString    := FormBookingForm.dblookcombShipper.Text ;
        // dmVidaInvoice.cdsInvoiceLOCarrierName.AsString:= FormBookingForm.cmbCarrier.Text ;
        // dmVidaInvoice.cdsInvoiceLOETD.AsSQLTimeStamp  := DateTimeToSQLTimeStamp(FormBookingForm.deETD.Date) ;
        // dmVidaInvoice.cdsInvoiceLOETA.AsSQLTimeStamp  := dm_Booking.cdsVoyageETA.AsSQLTimeStamp ;
        // dmVidaInvoice.cdsInvoiceLOTrpID.AsString      := FormBookingForm.dxDBTrpID.Text ;
        dmVidaInvoice.cdsInvoiceLO.Post;
      End; // if FormBookingForm.BookingNo <> -1 then
      if dmVidaInvoice.cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
        AddFreigthCost;
    End; // if FormBookingForm.ReadMeOnly = False then
    if TrpID <> dmVidaInvoice.cdsInvoiceLOTrpID.AsString then
    Begin
      dmVidaInvoice.cdsInvoiceLO.Edit;
      dmVidaInvoice.cdsInvoiceLOTrpID.AsString := TrpID;
      dmVidaInvoice.cdsInvoiceLO.Post;
    End;

  finally
    FreeAndNil(FormBookingForm);
  end;
end;

procedure TfrmInvoice.ShowVerifikatLoggExecute(Sender: TObject);
var
  fVerifikationLogg: TfVerifikationLogg;
begin
  with dmVidaInvoice do
  Begin
    // mt_VerLogg.Active := True ;
    Try
      fVerifikationLogg := TfVerifikationLogg.Create(nil);
      Try
        fVerifikationLogg.Caption := 'Verifikatlogg - Internfakturanr: ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString;
        fVerifikationLogg.ShowModal;
      Finally
        FreeAndNil(fVerifikationLogg);
      End;
    Finally
      mt_VerLogg.Active := False;
    End;
  End; // With
end;

procedure TfrmInvoice.acGetInvoiceNoExecute(Sender: TObject);
Var
  OkAttAndraFakturaDatum: Boolean;
  Msg: String;
begin
  Msg := dmVidaInvoice.Check_DoesInvoiceValueCorrespondWith_Debit_Credit;
  if Length(Msg) = 0 then
  Begin
    if MessageDlg('Did you check the invoice?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
    Begin
      { if (dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger = 0) or
        (dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger >= 4) then
        Begin
        if not dmVidaInvoice.InsertVerifikatLogg (True, 0, dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
        dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
        dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger) then
        Begin
        ShowMessage('Fakturan balanserar inte, kolla verifikatlogg') ;
        ShowVerifikatLoggExecute(Sender) ;
        Exit ;
        End
        else
        dmVidaInvoice.mt_VerLogg.Active  := False ;
        End; }

      if DoesInvoiceRowsHaveValues = False then
      Begin
        ShowMessage('One or many invoice rows are missing value, please correct.');
        Exit;
      End;

      with dmVidaInvoice do
      Begin

        if not ControlInvoiceData(Msg) then
        Begin
          ShowMessage(Msg);
          Exit;
        End;

        OkAttAndraFakturaDatum := ControlInvDateForInvoice;
        if OkAttAndraFakturaDatum then
        Begin
          dmVidaInvoice.AssignInvoiceNumber
            (cdsInvoiceHeadInternalInvoiceNo.AsInteger);
          lInvoiceNo.Caption :=
            intToStr(dmVidaInvoice.GetInvoiceNo
            (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
            dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger));
          if StrToIntDef(lInvoiceNo.Caption, 0) > 0 then
          Begin
            SetInvoiceHeaderAsInvoiced;
            SetReadOnlyProperties;
          End;
        End // OkAttAndraFakturaDatum  := ControlInvDateForInvoice ;
        else
          ShowMessage('Invoice date is in conflict with the latest inventory count.');
      End; // With
    End; // if
  End
  else
    ShowMessage(Msg);
end;

procedure TfrmInvoice.SetInvoiceHeaderAsInvoiced;
Begin
  With dmVidaInvoice do
  Begin
    if cdsInvoiceHead.State in [dsBrowse] then
      cdsInvoiceHead.Edit;
    cdsInvoiceHeadInvoiced.AsInteger := 1;
    cdsInvoiceHead.Post;
    if cdsInvoiceHead.ChangeCount > 0 then
    Begin
      cdsInvoiceHead.ApplyUpdates(0);
      cdsInvoiceHead.CommitUpdates;
    End;
  End;
End;

function TfrmInvoice.DoesInvoiceRowsHaveValues: Boolean;
Var
  SavePlace: TBookmark;
Begin
  with dmVidaInvoice do
  Begin
    Result := True;
    cdsInvoiceDetail.DisableControls;
    SavePlace := cdsInvoiceDetail.GetBookmark;
    Try
      cdsInvoiceDetail.Filtered := False;
      cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
        cdsInvoiceHeadInternalInvoiceNo.AsString;
      cdsInvoiceDetail.Filtered := True;

      cdsInvoiceDetail.First;
      While not cdsInvoiceDetail.Eof do
      Begin
        if cdsInvoiceDetailProductValue.AsFloat = 0 then
          Result := False;
        cdsInvoiceDetail.Next;
      End;

    Finally
      cdsInvoiceDetail.Filtered := False;
      dmVidaInvoice.cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
        dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsString +
        ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];

      cdsInvoiceDetail.Filtered := True;
      cdsInvoiceDetail.GotoBookmark(SavePlace);
      cdsInvoiceDetail.EnableControls;
    End; // finally
  End; // with
End;

procedure TfrmInvoice.acSaveExecute(Sender: TObject);
Var
  DagensDag, FakturaDatumDag: Integer;
begin
  With dmVidaInvoice do
  Begin

    DagensDag := DayOfTheMonth(Date);

    FakturaDatumDag := DayOfTheMonth(cdsInvoiceHeadInvoiceDate.AsDateTime);

    if DagensDag <> FakturaDatumDag then
      if MessageDlg('Do you want to change to todays date?', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
      begin
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadInvoiceDate.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
      End;

    if (cdsInvoiceHeadFreeDelMonth.AsInteger = 1) and
      (cdsInvoiceHeadDueDate.isNull) then
      ShowMessage('Due date is empty.');

  End;

  SaveInvoice(Sender);
end;

procedure TfrmInvoice.SaveInvoice(Sender: TObject);
begin
  if dmVidaInvoice.cdsInvoiceHeadSUM_FreigthCost.AsFloat <> 0 then
  Begin
    if Abs(dmVidaInvoice.cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat) /
      Abs(dmVidaInvoice.cdsInvoiceHeadSUM_FreigthCost.AsFloat) > 150 then
      ShowMessage('Please check your freight cost.');
  End;

  if (dmVidaInvoice.cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat > 0) and
    (dmVidaInvoice.cdsInvoiceHeadDebit_Credit.AsInteger = 1) then
    ShowMessage
      ('Note, the invoice is marked as a credit but the amount is positive.');

  if (dmVidaInvoice.cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat < 0) and
    (dmVidaInvoice.cdsInvoiceHeadDebit_Credit.AsInteger = 0) then
    ShowMessage
      ('Note, the invoice is marked a debit but the amount is negative.');

  if dmVidaInvoice.cdsInvoiceHeadCurrencyName.AsString <= '' then
  Begin
    ShowMessage('Cannot save because currency is missing.');
    Exit;
  End;
  if dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger < 1 then
  Begin
    ShowMessage('Cannot save because customer is missing.');
    Exit;
  End;

  // if not  IsInvoiced(Sender) then
  // if Invoiced = False then
  // Begin

  if dmVidaInvoice.cdsInvoiceHeadQuickInvoice.AsInteger = 0 then
    Summarize(Sender)
  else
    SummarizeForQuickInvoice(Sender);
  // End ;//if not IsInvoiced(Sender) then

  Try
    if dmVidaInvoice.cdsInvoiceHead.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cdsInvoiceHead.Post;
    if dmVidaInvoice.cdsInvoiceHead.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cdsInvoiceHead.ApplyUpdates(0);
      dmVidaInvoice.cdsInvoiceHead.CommitUpdates;
    End;

    // if not IsInvoiced(Sender) then
    // if Invoiced = False then
    // Begin
    if dmVidaInvoice.cdsInvoiceLO.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cdsInvoiceLO.Post;
    if dmVidaInvoice.cdsInvoiceLO.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cdsInvoiceLO.ApplyUpdates(0);
      dmVidaInvoice.cdsInvoiceLO.CommitUpdates;
    End;

    if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cdsInvoiceDetail.Post;
    if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(0);
      dmVidaInvoice.cdsInvoiceDetail.CommitUpdates;
    End;

    if dmVidaInvoice.cdsInvoiceShipTo.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cdsInvoiceShipTo.Post;
    if dmVidaInvoice.cdsInvoiceShipTo.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cdsInvoiceShipTo.ApplyUpdates(0);
      dmVidaInvoice.cdsInvoiceShipTo.CommitUpdates;
    End;

    if dmVidaInvoice.cdsInvoiceShipToAddress.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cdsInvoiceShipToAddress.Post;
    if dmVidaInvoice.cdsInvoiceShipToAddress.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cdsInvoiceShipToAddress.ApplyUpdates(0);
      dmVidaInvoice.cdsInvoiceShipToAddress.CommitUpdates;
    End;

    NewInvoice := False; // set to false if user save

    if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cds_IH_SpecLoad.Post;
    if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0);
      dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates;
    End;

  except
    On E: Exception do
    Begin
      dmsSystem.FDoLog(E.Message);
      // ShowMessage(E.Message);
      Raise;
    End;
  end;

  CheckValueExistInRows;
end;

procedure TfrmInvoice.acAddTabExecute(Sender: TObject);
Var
  MostNegativeNumber, x: Integer;
begin
  // MostNegativeNumber:= 0 ;
  // GetNextTabNumber
  { for x:= 0 to TabControl1.Tabs.Count - 1 do
    if StrToInt(TabControl1.Tabs[x]) < MostNegativeNumber then
    MostNegativeNumber:= StrToInt(TabControl1.Tabs[x]) ;

    MostNegativeNumber:= Pred(MostNegativeNumber) ; }
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;

  with dmVidaInvoice do
  Begin

    cdsInvoiceLO.Insert;
    cdsInvoiceLOInternalInvoiceNo.AsInteger :=
      cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    cdsInvoiceLOShippingPlanNo.AsInteger := dmsConnector.NextMinNo('LO_Neg');
    // MostNegativeNumber ; mars 18 2006
    MostNegativeNumber := cdsInvoiceLOShippingPlanNo.AsInteger;
    cdsInvoiceLOOrderNoText.AsString := '';
    cdsInvoiceLOReference.AsString := '';
    cdsInvoiceLOOurReference.AsString := '';
    cdsInvoiceLOSalesMan.AsString := dmsContact.GetFullUserName
      (ThisUser.UserID);

    cdsInvoiceLOBookingNo.AsInteger := -1;
    cdsInvoiceLOTotalFreightCost.AsFloat := 0; // Get total freight cost
    cdsInvoiceLOFreightCostPerUnit.AsFloat := 0; // Get freight cost per unit
    dmVidaInvoice.cdsInvoiceLOInvoiceAdditionAmount.AsFloat := 0;
    cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger := 0;
    cdsInvoiceLOInvoiceAdditionDescription.AsString := '';
    cdsInvoiceLOCreatedUser.AsInteger := ThisUser.UserID;
    cdsInvoiceLOModifiedUser.AsInteger := ThisUser.UserID;
    cdsInvoiceLODateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
    cdsInvoiceLO.Post;

    SaveInvoice(Sender);

    TabControl1.Tabs.Add(intToStr(MostNegativeNumber));
  End; // with
end;

procedure TfrmInvoice.acSummarizeExecute(Sender: TObject);
begin
  // if not IsInvoiced(Sender) then
  // if Invoiced = False then
  // Begin
  if dmVidaInvoice.cdsInvoiceHeadQuickInvoice.AsInteger = 0 then
    Summarize(Sender)
  else
    SummarizeForQuickInvoice(Sender);
  // End ;
end;

procedure TfrmInvoice.acPrintInvoicesExecute(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try

    FormCRViewReport.CreateCo('FAKTURA_NOTE.RPT', A);
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;

  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.acKlientInvoicesExecute(Sender: TObject);
Var
  FormCRPrintReport: TFormCRPrintReport;
  A: array of variant;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;
  RoleType := 1;
  DocTyp := cFaktura;
  ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;
  if uReportController.useFR then begin

    Params := TCMParams.Create();
    Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

    RC := TCMReportController.Create;
    Try
      RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPrint);
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    End;
  end
  else begin
    FormCRPrintReport := TFormCRPrintReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRPrintReport.CreateCo(1, clientNo, RoleType, DocTyp, A);
    Finally
      FreeAndNil(FormCRPrintReport); // .Free ;
    End;
  end;
end;

procedure TfrmInvoice.acClientPkgSpecarExecute(Sender: TObject);
Var
  FormCRPrintReport: TFormCRPrintReport;
  A: array of variant;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
  RC: TCMReportController;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;
  RoleType := 1;
  DocTyp := cPkgSpec;
  ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;
  if uReportController.useFR then begin

    Params := TCMParams.Create();
    Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
      AsInteger);

    RC := TCMReportController.Create;
    Try
      RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPrint);
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    End;
  end
  else begin
    FormCRPrintReport := TFormCRPrintReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRPrintReport.CreateCo(1, ClientNo, RoleType, DocTyp, A);
    Finally
      FreeAndNil(FormCRPrintReport); // .Free ;
    End;
  end;
end;

procedure TfrmInvoice.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmInvoice.acBookingUpdate(Sender: TObject);
begin
  // acBooking.Enabled:= StrToInt(TabControl1.Tabs[TabControl1.TabIndex]) > 0 ;
end;

procedure TfrmInvoice.lValutaClick(Sender: TObject);
var
  FormCurrency: TFormCurrency;
begin
  with dmVidaInvoice, dmModule1, dmsSystem do
  Begin

    FormCurrency := TFormCurrency.Create(Nil);
    Try
      if not cds_Currency.Active then
        cds_Currency.Active := True;
      if FormCurrency.ShowModal = mrOk then
      Begin
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;

        cdsInvoiceHeadCurrencyNo.AsInteger := cds_CurrencyCurrencyNo.AsInteger;
        cdsInvoiceHeadCurrencyName.AsString :=
          cds_CurrencyCurrencyName.AsString;

        cdsInvoiceHeadPaymentText.AsVariant :=
          GetPaymentText(cdsInvoiceHeadCurrencyNo.AsInteger,
          cdsInvoiceHeadLanguageCode.AsInteger,
          cdsInvoiceHeadClientBillingAddressNo.AsInteger);

        cdsInvoiceHead.Post;
      End;

    Finally
      // cdsCurrency.Active:= False ;
      FreeAndNil(FormCurrency); // .Free ;
    End;
  End; // with
end;

procedure TfrmInvoice.lKundClick(Sender: TObject);
var
  FormSelectClient: TFormSelectClient;
begin
  with dmVidaInvoice, dmModule1 do
  Begin
    if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Exit;

    if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
    Begin
      FormSelectClient := TFormSelectClient.Create(Nil);
      Try
        dmModule1.cdsClient.Active := True;
        dmModule1.cdsClient.ParamByName('@RoleType').AsInteger := 1;
        dmModule1.cdsClient.Active := True;
        if FormSelectClient.ShowModal = mrOk then
        Begin
          if cdsInvoiceHead.State = dsBrowse then
            cdsInvoiceHead.Edit;

          cdsInvoiceHeadCustomerNo.AsInteger :=
            dmModule1.cdsClientClientNo.AsInteger;
          cdsInvoiceHeadCustomerName.AsString :=
            dmModule1.cdsClientClientName.AsString;

          sq_ClientData.Close;
          sq_ClientData.ParamByName('ClientNo').AsInteger :=
            dmModule1.cdsClientClientNo.AsInteger;
          sq_ClientData.Open;

          cdsInvoiceHeadLanguageCode.AsInteger :=
            sq_ClientDataLanguageCode.AsInteger;

          cdsInvoiceHeadLanguageCode.AsInteger :=
            sq_ClientDataLanguageCode.AsInteger;

          cdsInvoiceHeadInvoiceText.AsVariant :=
            GetInvoiceTextByClient(cdsInvoiceHeadCustomerNo.AsInteger);
          // sq_ClientDataInvoiceText.AsVariant ; //
          cdsInvoiceHeadDeliveryTerm.AsString :=
            sq_ClientDataDeliveryTerm.AsString;

          cdsInvoiceHeadDeliveryTermsNo.AsInteger :=
            sq_ClientDataDeliveryTerm_No.AsInteger;

          cdsInvoiceHeadPaymentDescription.AsString :=
            sq_ClientDataPayDesc.AsString;

          cdsInvoiceHeadPaymentTermsNo.AsInteger :=
            sq_ClientDataPaymentTermsNo.AsInteger;

          cdsInvoiceHeadFreightInDiscount.AsInteger :=
            sq_ClientDataFreightInDiscount.AsInteger;
          cdsInvoiceHeadFreightInCommission.AsInteger :=
            sq_ClientDataFreightInCommission.AsInteger;
          cdsInvoiceHeadCommissionPaidByCustomer.AsInteger :=
            sq_ClientDataCommissionPaidByCustomer.AsInteger;
          cdsInvoiceHeadDiscount1.AsFloat := sq_ClientDataDiscount1.AsFloat;
          // if (cdsInvoiceHeadCurrencyName.AsString <= '') and (cdsInvoiceHeadCurrencyNo.AsInteger < 1) then
          if (not sq_ClientDataCurrencyNo.isNull) and
            (sq_ClientDataCurrencyNo.AsInteger > 0) then
          Begin
            cdsInvoiceHeadCurrencyName.AsString :=
              sq_ClientDataCURRENCYNAME.AsString;
            cdsInvoiceHeadCurrencyNo.AsInteger :=
              sq_ClientDataCurrencyNo.AsInteger;
          End;

          cdsInvoiceHeadClientBillingAddressNo.AsInteger :=
            sq_ClientDataDefaultBillingAddressNo.AsInteger;
          cdsInvoiceHeadAddressName.AsString :=
            sq_ClientDataBILL_ADDRESS_NAME.AsString;
          cdsInvoiceHeadAddressLine1.AsString :=
            sq_ClientDataBILL_ADDRESSLINE1.AsString;
          cdsInvoiceHeadAddressLine2.AsString :=
            sq_ClientDataBILL_ADDRESSLINE2.AsString;
          cdsInvoiceHeadAddressLine3.AsString :=
            sq_ClientDataBILL_ADDRESSLINE3.AsString;
          cdsInvoiceHeadAddressLine4.AsString :=
            sq_ClientDataBILL_ADDRESSLINE4.AsString;
          cdsInvoiceHeadStateOrProvince.AsString :=
            sq_ClientDataBILL_STATEORPROVINCE.AsString;
          cdsInvoiceHeadPostalCode.AsString :=
            sq_ClientDataBILL_POSTALCODE.AsString;
          cdsInvoiceHeadCityName.AsString :=
            sq_ClientDataBILL_ADDRESSCITY.AsString;
          cdsInvoiceHeadCountryName.AsString :=
            sq_ClientDataBILL_ADDRESSCOUNTRY.AsString;

          Label42.Caption := Trim(cdsInvoiceHeadAddressLine1.AsString) + ', ' +
            Trim(cdsInvoiceHeadAddressLine2.AsString) + ', ' +
            Trim(cdsInvoiceHeadAddressLine3.AsString) + ', ' +
            Trim(cdsInvoiceHeadAddressLine4.AsString) + ', ' +
            Trim(cdsInvoiceHeadCityName.AsString) + ', ' +
            Trim(cdsInvoiceHeadStateOrProvince.AsString) + ', ' +
            Trim(cdsInvoiceHeadPostalCode.AsString) + ', ' +
            Trim(cdsInvoiceHeadCountryName.AsString);

          cdsInvoiceHeadST_AddressLine1.AsString :=
            sq_ClientDataSHIPTO_ADDRESSLINE1.AsString;
          cdsInvoiceHeadST_AddressLine2.AsString :=
            sq_ClientDataSHIPTO_ADDRESSLINE2.AsString;
          cdsInvoiceHeadST_AddressLine3.AsString :=
            sq_ClientDataSHIPTO_ADDRESSLINE3.AsString;
          cdsInvoiceHeadST_AddressLine4.AsString :=
            sq_ClientDataSHIPTO_ADDRESSLINE4.AsString;
          cdsInvoiceHeadST_StateOrProvince.AsString :=
            sq_ClientDataSHIPTO_PROVINCE.AsString;
          cdsInvoiceHeadST_PostalCode.AsString :=
            sq_ClientDataSHIPTO_POSTALCODE.AsString;
          cdsInvoiceHeadST_CityName.AsString :=
            sq_ClientDataSHIPTO_CITY.AsString;
          cdsInvoiceHeadST_CountryName.AsString :=
            sq_ClientDataSHIPTO_COUNTRY.AsString;

          cdsInvoiceHeadPaymentText.AsVariant :=
            GetPaymentText(cdsInvoiceHeadCurrencyNo.AsInteger,
            cdsInvoiceHeadLanguageCode.AsInteger,
            cdsInvoiceHeadClientBillingAddressNo.AsInteger);

          CalculateDueDate;

          cdsInvoiceHead.Post;
          sq_ClientData.Close;
        End;
      Finally
        dmModule1.cdsClient.Active := False;
        dmModule1.cdsClient.Close;
        FreeAndNil(FormSelectClient); // .Free ;
      End;
    End // if..
    else
      ShowMessage('Not allowed to change customer, only allowed in quick invoice.');
  End; // with
end;

procedure TfrmInvoice.lLeveransvillkorClick(Sender: TObject);
var
  FormDelTerms: TFormDelTerms;
begin
  with dmVidaInvoice, dmsContact do
  Begin
    if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Exit;
    FormDelTerms := TFormDelTerms.Create(Nil);
    Try
      cdsDelTerms.Active := True;
      if FormDelTerms.ShowModal = mrOk then
      Begin

        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadDeliveryTermsNo.AsInteger :=
          cdsDelTermsDeliveryTerm_No.AsInteger;
        cdsInvoiceHeadDeliveryTerm.AsString := cdsDelTermsDeliveryTerm.AsString;
        cdsInvoiceHead.Post;
      End;
    Finally
      cdsDelTerms.Active := False;
      FreeAndNil(FormDelTerms); // .Free ;
    End;
  End;
end;

procedure TfrmInvoice.lBetalningsvillkorClick(Sender: TObject);
var
  FormPaymentTerms: TFormPaymentTerms;
begin
  with dmVidaInvoice, dmsSystem do
  Begin
    if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Exit;
    FormPaymentTerms := TFormPaymentTerms.Create(Nil);
    Try
      cdsPaymentTerm.Active := False;
      cdsPaymentTerm.ParamByName('LanguageCode').AsInteger :=
        cdsInvoiceHeadLanguageCode.AsInteger;
      cdsPaymentTerm.Active := True;
      if FormPaymentTerms.ShowModal = mrOk then
      Begin

        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadPaymentDescription.AsString :=
          cdsPaymentTermDescription.AsString;
        cdsInvoiceHeadPaymentTermsNo.AsInteger :=
          cdsPaymentTermPaymentTermsNo.AsInteger;
        cdsInvoiceHeadFreightInDiscount.AsInteger :=
          cdsPaymentTermFreightInDiscount.AsInteger;
        cdsInvoiceHeadFreightInCommission.AsInteger :=
          cdsPaymentTermFreightInCommission.AsInteger;
        cdsInvoiceHeadDiscount1.AsFloat := cdsPaymentTermDiscount1.AsFloat;
        cdsInvoiceHeadCommissionPaidByCustomer.AsInteger :=
          cdsPaymentTermCommissionPaidByCustomer.AsInteger;

        CalculateDueDate;

        cdsInvoiceHead.Post;
      End;
    Finally
      cdsPaymentTerm.Active := False;
      FreeAndNil(FormPaymentTerms); // .Free ;
    End;
  End;
end;

procedure TfrmInvoice.lSprakClick(Sender: TObject);
var
  frmLanguage: TfrmLanguage;
begin
  with dmVidaInvoice, dmModule1, dmsSystem do
  Begin
    if (cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Exit;
    frmLanguage := TfrmLanguage.Create(Nil);
    Try
      if not cds_Language.Active then
        cds_Language.Active := True;
      if frmLanguage.ShowModal = mrOk then
      Begin

        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;
        cdsInvoiceHeadLanguageCode.AsInteger :=
          cds_LanguageLanguageNo.AsInteger;

        cdsInvoiceHeadPaymentText.AsVariant :=
          GetPaymentText(cdsInvoiceHeadCurrencyNo.AsInteger,
          cdsInvoiceHeadLanguageCode.AsInteger,
          cdsInvoiceHeadClientBillingAddressNo.AsInteger);

        cdsInvoiceHead.Post;
      End;
    Finally
      FreeAndNil(frmLanguage); // .Free ;
    End;
  End;
end;

procedure TfrmInvoice.lFakturaAdressClick(Sender: TObject);
var
  FormAddress: TFormAddress;
begin
  with dmVidaInvoice, dmModule1 do
  Begin
    FormAddress := TFormAddress.Create(Nil);
    Try
      cdsClientAddress.Active := False;
      cdsClientAddress.ParamByName('ClientNo').AsInteger :=
        cdsInvoiceHeadCustomerNo.AsInteger;
      cdsClientAddress.ParamByName('AddressType').AsInteger := 1;
      cdsClientAddress.Active := True;

      if FormAddress.ShowModal = mrOk then
      Begin
        if cdsInvoiceHead.State = dsBrowse then
          cdsInvoiceHead.Edit;

        cdsInvoiceHeadClientBillingAddressNo.AsInteger :=
          cdsClientAddressADDRESS_NO.AsInteger;
        cdsInvoiceHeadAddressName.AsString :=
          cdsClientAddressADDRESS_NAME.AsString;
        cdsInvoiceHeadAddressLine1.AsString :=
          cdsClientAddressADDRESSLINE1.AsString;
        cdsInvoiceHeadAddressLine2.AsString :=
          cdsClientAddressADDRESSLINE2.AsString;
        cdsInvoiceHeadAddressLine3.AsString :=
          cdsClientAddressADDRESSLINE3.AsString;
        cdsInvoiceHeadAddressLine4.AsString :=
          cdsClientAddressADDRESSLINE4.AsString;
        cdsInvoiceHeadStateOrProvince.AsString :=
          cdsClientAddressPROVINCE.AsString;
        cdsInvoiceHeadPostalCode.AsString :=
          cdsClientAddressPOSTALCODE.AsString;
        cdsInvoiceHeadCityName.AsString := cdsClientAddressCITY.AsString;
        cdsInvoiceHeadCountryName.AsString := cdsClientAddressCOUNTRY.AsString;

        Label42.Caption := Trim(cdsInvoiceHeadAddressLine1.AsString) + ', ' +
          Trim(cdsInvoiceHeadAddressLine2.AsString) + ', ' +
          Trim(cdsInvoiceHeadAddressLine3.AsString) + ', ' +
          Trim(cdsInvoiceHeadAddressLine4.AsString) + ', ' +
          Trim(cdsInvoiceHeadCityName.AsString) + ', ' +
          Trim(cdsInvoiceHeadStateOrProvince.AsString) + ', ' +
          Trim(cdsInvoiceHeadPostalCode.AsString) + ', ' +
          Trim(cdsInvoiceHeadCountryName.AsString);

        cdsInvoiceHeadPaymentText.AsVariant :=
          GetPaymentText(cdsInvoiceHeadCurrencyNo.AsInteger,
          cdsInvoiceHeadLanguageCode.AsInteger,
          cdsInvoiceHeadClientBillingAddressNo.AsInteger);

        cdsInvoiceHead.Post;
      End;

    Finally
      FreeAndNil(FormAddress); // .Free ;
    End;

  End; // with

end;

procedure TfrmInvoice.cxLabelSpeditorClick(Sender: TObject);
var
  FormSelectClient: TFormSelectClient;
begin
  { with dmVidaInvoice, dmModule1 do
    Begin
    if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
    Begin
    FormSelectClient:= TFormSelectClient.Create(Nil);
    Try
    dmModule1.cdsClient.ParamByName('RoleType').AsInteger:= 8 ;
    dmModule1.cdsClient.Open ;
    dmModule1.cdsClient.Active:= True ;
    if FormSelectClient.ShowModal = mrOk then
    Begin
    if cdsInvoiceLO.State = dsBrowse then
    cdsInvoiceLO.Edit ;
    cdsInvoiceLOShipper.AsString:= dmModule1.cdsClientClientName.AsString ;
    cdsInvoiceLO.Post ;
    End ;
    Finally
    dmModule1.cdsClient.Active:= False ;
    dmModule1.cdsClient.Close ;
    FreeAndNil(FormSelectClient) ;//.Free ;
    End ;
    End //if..
    else
    ShowMessage('Bara tillåtet i snabbfaktura.') ;
    End ; //with }
end;

procedure TfrmInvoice.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  Caption := 'Faktura - Försäljningsregion ' +
    dmVidaInvoice.cdsInvoiceHeadSR.AsString;
end;

procedure TfrmInvoice.acPreviewKlientPkgSpecExecute(Sender: TObject);
var
  ReportName: String;
  promptUser: OleVariant;
  numberOfCopy: OleVariant;
  collated: OleVariant;
  PrinterSetup: Integer;
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  Save_Cursor: TCursor;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  Try
    if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
      Exit;

    RoleType := 1;
    DocTyp := cPkgSpec;
    ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;
    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
        AsInteger);

      RC := TCMReportController.Create;
      Try
        RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPreview);
      Finally
        FreeAndNil(Params);
        FreeAndNil(RC);
      End;
    end
    else begin
      dmsContact.GetClientDocPrefs(ClientNo, DocTyp, ReportName, numberOfCopy,
        promptUser, collated, PrinterSetup);
      if (Length(ReportName) < 4) then Begin
        ShowMessage('The report is not assigned to the client.');
        Exit;
      End; // if

      FormCRViewReport := TFormCRViewReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        FormCRViewReport.CreateCo(ReportName, A);

        if FormCRViewReport.ReportFound then Begin
          FormCRViewReport.ShowModal;
        End;
      Finally
        FreeAndNil(FormCRViewReport);
      End;
    end;
  Finally
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

procedure TfrmInvoice.acPrintClientFakturaAndSpecExecute(Sender: TObject);
Var
  FormCRPrintReport: TFormCRPrintReport;
  A: array of variant;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;
  RoleType := 1;
  ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;
  if uReportController.useFR then begin

    Params := TCMParams.Create();
    Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

    RC := TCMReportController.Create;
    Try
      DocTyp := cFaktura;
      RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPrint);
      DocTyp := cPkgSpec;
      RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPrint);
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    End;
  end
  else begin
    FormCRPrintReport := TFormCRPrintReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      // const OverRideNoOfCopies, ClientNo, DocTyp : Integer;const A: array of variant);
      FormCRPrintReport.CreateCo(0, clientNo, RoleType, cFaktura, A);
      FormCRPrintReport.CreateCo(0, clientNo, RoleType, cPkgSpec, A);
    Finally
      FreeAndNil(FormCRPrintReport); // .Free ;
    End;
  end;
end;

procedure TfrmInvoice.acEmailClientFakturaAndSpecExecute(Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddressAgent, MailToAddressKund, MailToAddress, InvoiceNo: String;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportInvoiceFile: string;
  ExportSpecFile: string;
begin
  InvoiceNo := intToStr(dmVidaInvoice.GetInvoiceNo
    (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger));

  if (not dmVidaInvoice.cdsInvoiceHeadAgentNo.isNull) and
    (dmVidaInvoice.cdsInvoiceHeadAgentNo.AsInteger > 0) then
    MailToAddressAgent := dmsContact.GetEmailAddress
      (dmVidaInvoice.cdsInvoiceHeadAgentNo.AsInteger);

  MailToAddressKund := dmsContact.GetEmailAddress
    (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger);

  if (Length(MailToAddressAgent) > 0) and (Length(MailToAddressKund) > 0) then
    MailToAddress := MailToAddressAgent + MailToAddressKund
  else if (Length(MailToAddressAgent) > 0) then
    MailToAddress := MailToAddressAgent
  else if (Length(MailToAddressKund) > 0) then
    MailToAddress := MailToAddressKund;

  if Length(MailToAddress) > 0 then
  Begin
    if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
      Exit;

    ExportInvoiceFile := ExcelDir + 'InvoiceNo ' + InvoiceNo + '.pdf';
    ExportSpecFile := ExcelDir + 'Specification ' + InvoiceNo + '.pdf';
    ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;

    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

      RC := TCMReportController.Create;
      RoleType := -1;

      Try
        RC.setExportFile(ExportInvoiceFile);
        RC.RunReport(0, ClientNo, RoleType, cFaktura, Params, frFile);
        RC.setExportFile(ExportSpecFile);
        RC.RunReport(0, ClientNo, RoleType, cPkgSpec, Params, frFile);
      Finally
        FreeAndNil(Params);
        FreeAndNil(RC);
      End;
      if not (FileExists(ExportInvoiceFile) and FileExists(ExportSpecFile)) then begin
        ShowMessage('Report files were not created.');
        Exit;
      end;
    end
    else begin
      FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        // const ClientNo, DocTyp : Integer;const A: array of variant);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;

        FormCRExportOneReport.CreateCo
          (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cFaktura, A,
          ExcelDir + 'InvoiceNo ' + InvoiceNo);
        FormCRExportOneReport.CreateCo
          (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cPkgSpec, A,
          ExcelDir + 'Specification ' + InvoiceNo);
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    // ExtractFilePath(Forms.Application.ExeName) + '\'+ExportFile+'.pdf';

    SetLength(Attach, 2);

    Attach[0] := ExportInvoiceFile;
    Attach[1] := ExportSpecFile;

    // Attach[0]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'InvoiceNo '+InvoiceNo+'.pdf' ;
    // Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+InvoiceNo+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Faktura/paketspecifikation. Fakturanr: ' +
        InvoiceNo + ' - Invoice/package specification. InvoiceNo: ' + InvoiceNo,
        'Faktura och paketspecifikation bifogad. ' + LF + '' +
        'Invoice and package specification attached. ' + LF + '' + LF + '' + LF
        + 'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
        (ThisUser.UserID), dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
        Attach, False);

      dmVidaInvoice.MailaCopyToVIDASTORE(InvoiceNo,
        dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
        dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger);

    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Email address is missing for the client.');
end;

procedure TfrmInvoice.acPrintTrpOrderExecute(Sender: TObject);
var
  FormCRPrintOneReport: TFormCRPrintOneReport;
  A: array of variant;
  RC: TCMReportController;
  Params: TCMParams;
  RepNo: Integer;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;
  dmsContact.InsertUserIssueReport(ThisUser.UserID,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

  if uReportController.useFR then begin

    RepNo := 42; // Trp_Brev.fr3
    RC := TCMReportController.Create;
    try
      Params := TCMParams.Create();
      Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
      RC.RunReport(RepNo, Params, frPrint, 0);
    finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    end;
  end
  else begin
    FormCRPrintOneReport := TFormCRPrintOneReport.Create(Nil);
    Try
      // CreateCo(const numberOfCopy : Integer ;const PrinterSetup, promptUser : Boolean;const A: array of variant;const ReportName : String);

      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRPrintOneReport.CreateCo(1, False, False, A, 'TRP_BREV.RPT')

    Finally
      FreeAndNil(FormCRPrintOneReport);
    End;
  end;
end;

procedure TfrmInvoice.acPrintOrderAndSpecExecute(Sender: TObject);
begin
  acPrintTrpOrderExecute(Sender);
  acClientPkgSpecarExecute(Sender);
end;

procedure TfrmInvoice.acAttesteraExecute(Sender: TObject);
Var
  x: Integer;
  Save_Cursor: TCursor;
  frmAttestInvoice: TfrmAttestInvoice;
  OldFilter: String;
begin
  with dmVidaInvoice do
  Begin
    if Assigned(frmStickyNote) then
      // FreeAndNil(frmStickyNote) ;
      frmStickyNote.Close;
    mt_AttestRow.Active := False;
    mt_AttestRow.Active := True;
    mt_InvDtl_Att.Active := False;
    mt_InvDtl_Att.Active := True;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    // ta bort next och prior, ladda inte allt, går det att undvika
    // cdsInvoiceShipToAddress.DataSource:= dsrcInvoiceHead_II ;
    frmAttestInvoice := TfrmAttestInvoice.Create(Nil);
    OldFilter := cdsInvoiceLO.Filter;
    Try

      if cdsInvoiceHeadInvoiceType.AsInteger = 3 then
        frmAttestInvoice.LCustomer.Caption := 'Leverantör:'
      else
        frmAttestInvoice.LCustomer.Caption := 'Kund:';

      frmAttestInvoice.cbInvoiceType.ItemIndex :=
        cdsInvoiceHeadInvoiceType.AsInteger;
      // frmAttestInvoice.cbInvoiceType.ReadOnly   := True ;
      mt_AttestRow.Active := True;
      mt_InvDtl_Att.Active := True;
      cdsInvoiceShipTo.Active := True;
      frmAttestInvoice.TabControl1.Tabs.Clear;
      cdsInvoiceHead_II.Active := False;
      OpenInvoiceHeaderForAttest(cdsInvoiceHeadInternalInvoiceNo.AsInteger,
        cdsInvoiceHeadInvoiceType.AsInteger);
      cdsInvoiceHead_II.Active := True;
      if cdsInvoiceHead_II.RecordCount > 0 then
      Begin
        cdsInvoiceLO.Close;
        cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;

        cdsInvoiceLO.Active := True;

        cdsInvoiceLO.First;
        While not cdsInvoiceLO.Eof do
        Begin
          frmAttestInvoice.TabControl1.Tabs.Add
            (cdsInvoiceLOShippingPlanNo.AsString);
          cdsInvoiceLO.Next;
        End;

        cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHead_IIInternalInvoiceNo.AsString + ' AND ShippingPlanNo = '
          + frmAttestInvoice.TabControl1.Tabs[0];
        cdsInvoiceLO.Filtered := True;

        dmVidaInvoice.cds_Att_Ext_ServicesII.Active := False;
        dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo')
          .AsInteger :=
          dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
        dmVidaInvoice.cds_Att_Ext_ServicesII.Active := True;

        dmVidaInvoice.cds_InvDtl_Att.Close;
        dmVidaInvoice.cds_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger
          := cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;

        // dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;

        cds_InvDtl_Att.Active := True;
        While not cds_InvDtl_Att.Eof do
        Begin
          mt_InvDtl_Att.Insert;
          For x := 0 to 15 do
            mt_InvDtl_Att.Fields.Fields[x].AsVariant :=
              cds_InvDtl_Att.Fields.Fields[x].AsVariant;
          mt_InvDtl_AttSequensNo.AsInteger := 0;
          mt_InvDtl_AttChecked.AsInteger := 0;
          mt_InvDtl_Att.Post;
          cds_InvDtl_Att.Next;
        End;

        sq_GetAttestRow.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
        sq_GetAttestRow.Open;
        While not sq_GetAttestRow.Eof do
        Begin
          mt_AttestRow.Insert;
          For x := 0 to 3 do
            mt_AttestRow.Fields.Fields[x].AsVariant :=
              sq_GetAttestRow.Fields.Fields[x].AsVariant;
          mt_AttestRow.Post;
          sq_GetAttestRow.Next;
        End;

        sq_GetAttestRow.Close;
        frmAttestInvoice.ShowModal;
      End
      else
        ShowMessage('Cannot focus internal invoice number ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString);

    Finally
      // cdsInvoiceShipToAddress.DataSource:= dsrcInvoiceHead ;
      fInternalInvoiceNo := -1;
      cdsInvoiceLO.Filter := OldFilter;
      cdsInvoiceLO.Active := False;
      cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
        cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      cdsInvoiceLO.Active := True;

      cds_InvDtl_Att.Active := False;
      mt_InvDtl_Att.Active := False;
      mt_AttestRow.Active := False;
      FreeAndNil(frmAttestInvoice); // .Free ;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmInvoice.acChangeLayoutFakturaGridExecute(Sender: TObject);
begin
  if grdFaktura.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdFaktura.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmInvoice.acRemoveRowExecute(Sender: TObject);
begin
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;
  with dmVidaInvoice do
  Begin
    if dmVidaInvoice.cdsInvoiceDetailTypeOfRow.AsInteger = 2 then
      cdsInvoiceDetail.Delete
    else
      ShowMessage('Cannot remove invoice rows.');
  End;
end;

procedure TfrmInvoice.acAddRowExecute(Sender: TObject);
// Var NextInvoiceDetailNo: Integer ;
var
  fArticle: TfArticle;
begin
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;
  With dmVidaInvoice do
  Begin
    if not dmsSystem.cds_Article.Active then
      dmsSystem.cds_Article.Active := True;
    fArticle := TfArticle.Create(nil);
    Try
      if fArticle.ShowModal = mrOk then
      Begin
        cdsInvoiceDetail.Append;
        cdsInvoiceDetailArticleNo.AsInteger :=
          dmsSystem.cds_ArticleArticleNo.AsInteger;
        cdsInvoiceDetailProductDescription.AsString :=
          dmsSystem.cds_ArticleArticleName.AsString;
        if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
        Begin
          cdsInvoiceDetailReference.AsString := '1';
        End;
        if cdsInvoiceHeadDebit_Credit.AsInteger = 1 then
        Begin
          cdsInvoiceDetailReference.AsString := '1';
          if (cdsInvoiceShipToAddress.Active) and
            (cdsInvoiceShipToAddress.RecordCount > 0) then
          Begin
            if cdsInvoiceShipToAddress.State in [dsBrowse] then
              cdsInvoiceShipToAddress.Edit;
            cdsInvoiceShipToAddressReference.AsString := '1';
          End;
        End;

        cdsInvoiceDetailShippingPlanNo.AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger;
        cdsInvoiceDetailTypeOfRow.AsInteger := 2; // Additional
        cdsInvoiceDetailInclInPrice.AsInteger := 0;
        cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 1;

        cdsInvoiceDetail.Post;
        SaveInvoice(Sender);
      End;
    Finally
      FreeAndNil(fArticle);
    End;
    // NextInvoiceDetailNo                                 := GetNextInvoice_DetailNo ;//cdsInvoiceDetail.RecordCount + 1 ;

    { cdsInvoiceDetail.Append ;
      if cdsInvoiceHeadQuickInvoice.AsInteger = 1 then
      cdsInvoiceDetailReference.AsString                  := '1' ;
      //  cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
      cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
      //  cdsInvoiceDetailInvoiceDetailNo.AsInteger           := NextInvoiceDetailNo ;
      cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additional
      {  cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
      cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
    }
    // cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ; }
    // cdsInvoiceDetail.Post ;
  End;
end;

procedure TfrmInvoice.acAddShipToAdrExecute(Sender: TObject);
var
  FormAddress: TFormAddress;
begin
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;
  with dmVidaInvoice, dmModule1 do
  Begin
    FormAddress := TFormAddress.Create(Nil);
    Try
      cdsClientAddress.Active := False;
      cdsClientAddress.Close;
      cdsClientAddress.ParamByName('ClientNo').AsInteger :=
        cdsInvoiceHeadCustomerNo.AsInteger;
      cdsClientAddress.ParamByName('AddressType').AsInteger := 2;
      cdsClientAddress.Active := True;

      if FormAddress.ShowModal = mrOk then
      Begin
        if cdsInvoiceShipTo.Locate('InternalInvoiceNo;ShippingPlanNo;Reference',
          VarArrayof([cdsInvoiceDetailInternalInvoiceNo.AsInteger,
          cdsInvoiceDetailShippingPlanNo.AsInteger,
          cdsInvoiceDetailReference.AsString]), []) then
        Begin
          cdsInvoiceShipToAddress.Edit;

          cdsInvoiceShipToAddressAddressName.AsString :=
            cdsClientAddressADDRESS_NAME.AsString;

          cdsInvoiceShipToAddressReference.AsString :=
            cdsInvoiceDetailReference.AsString;

          if cdsInvoiceHeadDebit_Credit.AsInteger = 1 then
          Begin
            cdsInvoiceShipToAddressReference.AsString := '1';
          End;

          cdsInvoiceShipToAddressInternalInvoiceNo.AsInteger :=
            cdsInvoiceDetailInternalInvoiceNo.AsInteger;
          cdsInvoiceShipToAddressShippingPlanNo.AsInteger :=
            cdsInvoiceDetailShippingPlanNo.AsInteger;

          cdsInvoiceShipToAddressAddressNo.AsInteger :=
            cdsClientAddressADDRESS_NO.AsInteger;
          cdsInvoiceShipToAddressADDR.AsString :=
            Trim(cdsClientAddressADDRESSLINE1.AsString) + ', ' +
            Trim(cdsClientAddressADDRESSLINE2.AsString) + ', ' +
            Trim(cdsClientAddressADDRESSLINE3.AsString) + ', ' +
            Trim(cdsClientAddressADDRESSLINE4.AsString) + ', ' +
            Trim(cdsClientAddressCITY.AsString) + ', ' +
            Trim(cdsClientAddressPOSTALCODE.AsString) + ', ' +
            Trim(cdsClientAddressPOSTALCODE.AsString);
          cdsInvoiceShipToAddress.Post;

        end
        else
        Begin
          cdsInvoiceShipToAddress.Insert;
          cdsInvoiceShipToAddressAddressName.AsString :=
            cdsClientAddressADDRESS_NAME.AsString;
          cdsInvoiceShipToAddressReference.AsString :=
            cdsInvoiceDetailReference.AsString;
          cdsInvoiceShipToAddressInternalInvoiceNo.AsInteger :=
            cdsInvoiceDetailInternalInvoiceNo.AsInteger;
          cdsInvoiceShipToAddressShippingPlanNo.AsInteger :=
            cdsInvoiceDetailShippingPlanNo.AsInteger;
          cdsInvoiceShipToAddressAddressNo.AsInteger :=
            cdsClientAddressADDRESS_NO.AsInteger;
          cdsInvoiceShipToAddressADDR.AsString :=
            Trim(cdsClientAddressADDRESSLINE1.AsString) + ', ' +
            Trim(cdsClientAddressADDRESSLINE2.AsString) + ', ' +
            Trim(cdsClientAddressADDRESSLINE3.AsString) + ', ' +
            Trim(cdsClientAddressADDRESSLINE4.AsString) + ', ' +
            Trim(cdsClientAddressCITY.AsString) + ', ' +
            Trim(cdsClientAddressPOSTALCODE.AsString) + ', ' +
            Trim(cdsClientAddressPOSTALCODE.AsString);
          if (Length(Trim(cdsInvoiceShipToAddressReference.AsString)) = 0) or
            (cdsInvoiceShipToAddressReference.isNull) then
            cdsInvoiceShipToAddressReference.AsString :=
              'Lägg till referens här';
          cdsInvoiceShipToAddress.Post;
        End;
      End;

    Finally
      FreeAndNil(FormAddress); // .Free ;
    End;

  End; // with
end;

procedure TfrmInvoice.acRemoveShipToAdrExecute(Sender: TObject);
begin
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;
  with dmVidaInvoice do
  Begin
    cdsInvoiceShipToAddress.Delete;
  End;
end;

procedure TfrmInvoice.acCopyInvoiceRowExecute(Sender: TObject);
begin
  //
end;

Function TfrmInvoice.ConvertFreightCostFromCurrencyToSEK
  ( { Freight cost } FreightCost: Double;
  { Convert from } FromCurrencyNo: Integer): Double;
Var
  ConvertFromXRate: Double;
Begin // us to sek for example or SEK to US
  // dmModule1.sq_GetXRate.ParamByName('CurrencyNo').AsInteger:= FromCurrencyNo ;
  // dmModule1.sq_GetXRate.Open ;
  ConvertFromXRate := dmsSystem.GetExRate(FromCurrencyNo);

  Result := FreightCost * ConvertFromXRate;
  // dmModule1.sq_GetXRate.Close ;
End;

Function TfrmInvoice.ConvertFreightCostToCurrencyFromSEK
  ( { Freight cost } FreightCost: Double;
  { Convert from } ToCurrencyNo: Integer): Double;
Var
  ConvertToXRate: Double;
Begin // us to sek for example or SEK to US
  Result := 0;
  // dmModule1.sq_GetXRate.ParamByName('CurrencyNo').AsInteger:= ToCurrencyNo ;
  // dmModule1.sq_GetXRate.Open ;
  ConvertToXRate := dmsSystem.GetExRate(ToCurrencyNo);

  if ConvertToXRate > 0 then
    Result := FreightCost / ConvertToXRate;
  // dmModule1.sq_GetXRate.Close ;
End;

Procedure TfrmInvoice.AddFreigthCost;
Var
  M3Nom, M3Net, FreightCost: Double;
  NoOfPieces: Integer;
  // NextInvoice_DetailNo      : Integer ;
Begin
  FreightCost := 0;
  M3Net := 0;
  M3Nom := 0;
  NoOfPieces := 0;
  // NextInvoice_DetailNo:= 0 ;
  with dmVidaInvoice do
  begin
    // NextInvoice_DetailNo := GetNextInvoice_DetailNo ;
    sq_GetFreightCost.Close;
    sq_GetFreightCost.ParamByName('ShippingPlanNo').AsInteger :=
      cdsInvoiceLOShippingPlanNo.AsInteger;
    sq_GetFreightCost.Open;
    // if ThisUser.UserID = 8 then
    // mLog.Lines.Add('After add freight cost sq_GetFreightCost.Open') ;
    // if not sq_GetFreightCost.Eof then
    if (not sq_GetFreightCost.Eof) and (sq_GetFreightCostFreightCost.AsFloat > 0)
    then
    Begin
      if cdsInvoiceDetail.Locate('TypeOfRow', 3, []) then
        cdsInvoiceDetail.Edit
      else
        cdsInvoiceDetail.Insert;
      // if ThisUser.UserID = 8 then
      // mLog.Lines.Add('After add freight cdsInvoiceDetail.Insert') ;
      // if ThisUser.UserID = 8 then
      // mLog.Lines.Add('After cdsInvoiceDetail.Insert') ;
      // cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
      cdsInvoiceDetailShippingPlanNo.AsInteger :=
        cdsInvoiceLOShippingPlanNo.AsInteger;
      if cdsInvoiceDetail.State = dsInsert then
        // cdsInvoiceDetailInvoiceDetailNo.AsInteger           := NextInvoice_DetailNo ;//
        cdsInvoiceDetailTypeOfRow.AsInteger := 3; // Freigth cost
      cdsInvoiceDetailProductDescription.AsString := 'Freight Cost';
      cdsInvoiceDetailPriceUnit.AsString :=
        sq_GetFreightCostTemplateUnitName.AsString;

      if sq_GetFreightCostFreightCostCurrency.AsInteger <>
        cdsInvoiceHeadCurrencyNo.AsInteger then
      Begin
        if cdsInvoiceHeadCurrencyNo.AsInteger = 10001 { SEK } then
        Begin
          FreightCost := ConvertFreightCostFromCurrencyToSEK
            ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
            { Convert from } sq_GetFreightCostFreightCostCurrency.AsInteger);
          cdsInvoiceDetailPrice.AsFloat := RoundTo(FreightCost, -2);
        End
        else
        Begin
          if sq_GetFreightCostFreightCostCurrency.AsInteger <> 10001 { SEK }
          then
          Begin
            FreightCost := ConvertFreightCostFromCurrencyToSEK
              ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
              { Convert from } sq_GetFreightCostFreightCostCurrency.AsInteger);
            FreightCost := ConvertFreightCostToCurrencyFromSEK
              ( { Freight cost } FreightCost,
              cdsInvoiceHeadCurrencyNo.AsInteger);
          End
          else
            FreightCost := ConvertFreightCostToCurrencyFromSEK
              ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
              cdsInvoiceHeadCurrencyNo.AsInteger);
          cdsInvoiceDetailPrice.AsFloat := RoundTo(FreightCost, -2);
        End;
      End
      else
        cdsInvoiceDetailPrice.AsFloat := sq_GetFreightCostFreightCost.AsFloat;

      sq_GetFreightCost.Close;

      if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxL' then
      Begin
        cdsInvoiceDetailProductValue.AsFloat :=
          RoundTo(M3Net * cdsInvoiceDetailPrice.AsFloat, -3);
        // cdsInvoiceDetailProductValue.AsFloat                := M3Net *  cdsInvoiceDetailPrice.AsFloat ;
      End
      else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
      Begin
        cdsInvoiceDetailProductValue.AsFloat :=
          RoundTo(M3Nom * cdsInvoiceDetailPrice.AsFloat, -2);
        // cdsInvoiceDetailProductValue.AsFloat                := M3Nom *  cdsInvoiceDetailPrice.AsFloat ;
      End
      else if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
      Begin
        // cdsInvoiceDetailProductValue.AsFloat                := NoOfPieces *  cdsInvoiceDetailPrice.AsFloat ;
        cdsInvoiceDetailProductValue.AsFloat :=
          RoundTo(NoOfPieces * cdsInvoiceDetailPrice.AsFloat, -2);
      End
      else
      Begin
        cdsInvoiceDetailProductValue.AsFloat := cdsInvoiceDetailPrice.AsFloat;
      End;

      { cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
        cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
        cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ; }
      // if ThisUser.UserID = 8 then
      // mLog.Lines.Add('Before add freight cost cdsInvoiceDetail.Post') ;
      cdsInvoiceDetail.Post;
      // if ThisUser.UserID = 8 then
      // mLog.Lines.Add('After add freight cost cdsInvoiceDetail.Post') ;
      // y:= Succ(y) ;
    End; // if..
  End; // with
End;

procedure TfrmInvoice.acAddPackagesToLoadExecute(Sender: TObject);
begin
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;
  if MessageDlg('Do you want to save your changes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    with dmVidaInvoice do
    Begin
      // Application.ProcessMessages ;
      if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
        dmVidaInvoice.cds_IH_SpecLoad.Post;

      SaveInvoiceSpecChanges(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
        AsInteger);
      SaveInvoiceSpecToInventory
        (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
      DeleteEmptyLoadsForInternalInvoiceNo
        (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

      if dmVidaInvoice.cds_LoadPackages.RecordCount > 0 then
      Begin
        MakeInvoice(Sender);
        SaveInvoice(Sender);
      End
      else
      Begin
        DeletePreliminaryInvoice
          (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
        Close;
      End;
    End;
end;

procedure TfrmInvoice.AddPkgsToSPEC(const SPEC: Integer);
Var
  ColIdx, OutputVal, i, RecIDX, x: Integer;
  RecID: variant;
  Save_Cursor: TCursor;
  // AT, AB, ALMM, KV, TS, UT, SearchName : String ;
  // PCS : Integer ;
  // ADATASET    : TDATASET;
begin
  with dmVidaInvoice do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    // grdPackageSpecDBTableView1.BeginUpdate ;
    // grdPackageSpecDBTableView1.DataController.BeginLocate ;
    // ADataSet := grdPackageSpecDBTableView1.DataController.DataSource.DataSet ;
    cds_LoadPackages.DisableControls;
    Try
      For i := 0 to grdPackageSpecDBTableView1.Controller.
        SelectedRecordCount - 1 do
      Begin
        RecIDX := grdPackageSpecDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        RecID := grdPackageSpecDBTableView1.DataController.GetRecordId(RecIDX);

        if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', RecID, []) then
        Begin
          if SPEC = 1 then
          Begin
            cds_LoadPackagesII.Insert;
            For x := 0 to 36 do // cds_LoadPackagesII.FieldCount - 1 do
            Begin
              cds_LoadPackagesII.Fields.Fields[x].AsVariant :=
                cds_LoadPackages.Fields.Fields[x].AsVariant;
            End;
            cds_LoadPackagesIINoOfPackages.AsInteger := 2;
            cds_LoadPackagesII.Post;
            cds_LoadPackages.Delete;
          End
          else
          Begin
            cds_LoadPackagesIII.Insert;
            For x := 0 to 36 do // cds_LoadPackages.FieldCount - 1 do
            Begin
              cds_LoadPackagesIII.Fields.Fields[x].AsVariant :=
                cds_LoadPackages.Fields.Fields[x].AsVariant;
            End;
            cds_LoadPackagesIIINoOfPackages.AsInteger := 2;
            cds_LoadPackagesIIIInternalInvoiceNo.AsInteger :=
              cdsInvoiceHeadInternalInvoiceNo.AsInteger;
            cds_LoadPackagesIIIPIPNo.AsInteger :=
              cds_IH_SpecLoadPIPNo.AsInteger;
            cds_LoadPackagesIIILIPNo.AsInteger :=
              cds_IH_SpecLoadLIPNo.AsInteger;
            cds_LoadPackagesIII.Post;
            cds_LoadPackages.Delete;
          End;
        End; // if cds_LoadPackages.Locate('LoadNo;LoadDetailNo', RecID,[]) then

        { RecIDx:= grdPackageSpecDBTableView1.Controller.SelectedRecords[i].RecordIndex ;

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('PkgCodePPNo').Index;
          OutputVal := grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('ProductNo').Index;
          ProductNo:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('ProdInstruNo').Index;
          if grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx] > 0 then
          ProdInstruNo:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx]
          else
          ProdInstruNo:= -1 ;

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('oThickness').Index;
          AT:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];
        }
        (* ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('oWidth').Index;
          AB:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];
          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('SpeciesName').Index;
          TS:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];
          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('SurfacingName').Index;
          UT:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];
          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('GradeName').Index;
          KV:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('oLength').Index;
          ALMM:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('TotalPieces').Index;
          PCS:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];



          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('ProductLengthNo').Index;
          ProductLengthNo:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('ProductGroupNo').Index;
          ProductGroupNo:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('TotalPieces').Index;
          PPP:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('PackageTypeNo').Index;
          PackageTypeNo:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          ColIdx := grdPackageSpecDBTableView1.DataController.GetItemByFieldName('PackageCodeNo').Index;
          SearchName:= grdPackageSpecDBTableView1.DataController.Values[RecIdx, ColIdx];

          cds_PkgCodeTrf.FindKey([OutputVal]) ; *)

      End; // For...

    Finally
      // grdPackageSpecDBTableView1.DataController.EndLocate ;
      // grdPackageSpecDBTableView1.EndUpdate ;
      cds_LoadPackages.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with

end;

procedure TfrmInvoice.acAddPackagesToInventoryExecute(Sender: TObject);
begin
  // if IsInvoiced(Sender) then exit ;
  // if Invoiced then Exit ;
  if MessageDlg('Do you want to save your changes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
    with dmVidaInvoice do
    Begin
      if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
        dmVidaInvoice.cds_IH_SpecLoad.Post;

      SaveInvoiceSpecToInventory
        (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
      SaveInvoiceSpecChanges(dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
        AsInteger);
      DeleteEmptyLoadsForInternalInvoiceNo
        (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

      if dmVidaInvoice.cds_LoadPackages.RecordCount > 0 then
      Begin
        MakeInvoice(Sender);
        SaveInvoice(Sender);
      End
      else
      Begin
        DeletePreliminaryInvoice
          (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
        Close;
      End;
    End;
end;

procedure TfrmInvoice.grdPackageSpecDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  PackageOK, Pkg_Function, OverrideRL: Integer;
begin
  if not ARecord.IsData then
    Exit;

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('OverrideRL').Index] <> null then
    OverrideRL := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('OverrideRL').Index];

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PackageOK')
    .Index] <> null then
    PackageOK := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PackageOK').Index];
  Case PackageOK of
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12:
      AStyle := cxStyleRed;
    VP_LengthNotInLengthGroup:
      Begin
        if OverrideRL = 1 then
          AStyle := cxStyleYellow
        else
          AStyle := cxStyleRed;
      End;
  End;
end;

procedure TfrmInvoice.pgInvoicePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  with dmVidaInvoice do
  Begin
    if NewPage = tsSpec then
    Begin
      pgInvoice.Height := 643;
    End
    else
      pgInvoice.Height := 188;

    if NewPage = tsShipToAddress then
      CheckIfInvoiceRowMissing
  End; // With
end;

procedure TfrmInvoice.CheckIfInvoiceRowMissing;
Begin
  with dmVidaInvoice do
  Begin
    if (cdsInvoiceDetail.Active) and (cdsInvoiceDetail.RecordCount > 0) then
      PanelInvoiceRowMissing.Visible := False
    else
      PanelInvoiceRowMissing.Visible := True;
  End;
End;

procedure TfrmInvoice.acAddPackagesToLoadUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acAddPackagesToLoad.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and
      ((cds_LoadPackagesII.Active) and (cds_LoadPackagesII.RecordCount > 0));
    // and (not Invoiced) ;

    // and (grdPackageSpecDBTableView1.Controller.SelectedRecordCount > 0)
    // and (dsp_LoadPackages.DataSet = sq_LoadPackages) ;
  End;
end;

procedure TfrmInvoice.acAddPackagesToInventoryUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acAddPackagesToInventory.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and
      ((cds_LoadPackagesIII.Active) and (cds_LoadPackagesIII.RecordCount > 0))
    // and (not Invoiced)
      and ((cds_IH_SpecLoad.Active) and (cds_IH_SpecLoadLIPNo.AsInteger > 0));
    // and (grdPackageSpecDBTableView1.Controller.SelectedRecordCount > 0)
    // and (dsp_LoadPackages.DataSet = sq_LoadPackages) ;
  End;
end;

procedure TfrmInvoice.grdPackageSpecDBTableView1Pkg_FunctionGetDisplayText
  (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  if AText = '0' then
    AText := ''
  else if AText = '2' then
    AText := 'Lager'
  else if AText = '3' then
    AText := 'Kortskepp.';
end;

procedure TfrmInvoice.MakeInvoice(Sender: TObject);
Var
  y, x: Integer;
  FreightCost: Double;
  // M3Net,
  // M3Nom,
  // LopM_ACT              : Double ;
  NoOfPieces: Integer;
  Trans1: TTransactionDesc;
  Save_Cursor: TCursor;

  // For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads
  (*
    function GetTotalUnitsForLO(const FieldName : String) : Double ;
    Var NoOfUnits : Extended ;
    Begin
    with dmVidaInvoice do
    begin
    Try
    Result           := 0 ;
    NoOfUnits        := 0 ;

    sq_GetInvoiceDetailData.Close ;
    sq_GetInvoiceDetailData.ParamByName('CustomerNo').AsInteger        := cdsInvoiceHeadCustomerNo.AsInteger ; //daMoLM1.cdsAvropCLIENTNO.AsInteger ; // Avrop customerNo
    sq_GetInvoiceDetailData.ParamByName('ShippingPlanNo').AsInteger    := cdsInvoiceLOShippingPlanNo.AsInteger ;
    sq_GetInvoiceDetailData.ParamByName('InternalInvoiceNo').AsInteger := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    sq_GetInvoiceDetailData.Open ;
    //   if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + '3After sq_GetInvoiceDetailData.Open') ;
    While not sq_GetInvoiceDetailData.Eof do
    Begin
    //   if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + '3cdsInvoiceDetailNominalWidthINCH.AsString=' + cdsInvoiceDetailNominalWidthINCH.AsString) ;

    NoOfUnits      := NoOfUnits + sq_GetInvoiceDetailData.FieldByName(FieldName).AsFloat ;

    //   if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After TempLineMet_ACT') ;

    sq_GetInvoiceDetailData.Next ;
    y:= Succ(y) ;
    End ; //While not sq_GetInvoiceDetailData.Eof do
    sq_GetInvoiceDetailData.Close ;

    Result :=  NoOfUnits ;
    except
    On E: Exception do
    Begin
    dmsSystem.FDoLog(E.Message) ;
    //   ShowMessage(E.Message);
    Raise ;
    End ;
    end;
    End ; //with
    End ;
  *)
  function GetTotalUnitsForLO(const FieldName: String): Double;
  Var
    OldFilter: String;
  Begin
    with dmVidaInvoice do
    begin
      OldFilter := cdsInvoiceDetail.Filter;
      Try
        cdsInvoiceDetail.Filter := 'ShippingPlanNo = ' +
          sq_LONoInInvoiceShippingPlanNo.AsString +
          ' AND (ArticleNo = 1 OR ArticleNo = 3)';
        cdsInvoiceDetail.First;
        While not cdsInvoiceDetail.Eof do
        Begin
          Result := Result + cdsInvoiceDetail.FieldByName(FieldName).AsFloat;
          cdsInvoiceDetail.Next;
        End; // While not cdsInvoiceDetail.Eof do

      Finally
        cdsInvoiceDetail.Filter := OldFilter;
      End;
    End; // with
  End;

  function GetFreightArticleNo: Integer;
  Var
    OldFilter: String;
  Begin
    with dmVidaInvoice do
    begin
      OldFilter := cdsInvoiceDetail.Filter;
      Try
        cdsInvoiceDetail.Filter := 'ShippingPlanNo = ' +
          sq_LONoInInvoiceShippingPlanNo.AsString +
          ' AND (ArticleNo = 1 OR ArticleNo = 3)';
        cdsInvoiceDetail.First;
        While not cdsInvoiceDetail.Eof do
        Begin
          Result := cdsInvoiceDetailArticleNo.AsInteger;
          cdsInvoiceDetail.Next;
        End; // While not cdsInvoiceDetail.Eof do

        Result := Result + 1;
      Finally
        cdsInvoiceDetail.Filter := OldFilter;
      End;
    End; // with
  End;

  procedure AddLOData;
  Begin
    with dmVidaInvoice do
    begin
      sq_GetLODataII.Close;
      sq_GetLODataII.ParamByName('InternalInvoiceNo').AsInteger :=
        cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      sq_GetLODataII.ParamByName('ShippingPlanNo').AsInteger :=
        sq_LONoInInvoiceShippingPlanNo.AsInteger;
      sq_GetLODataII.ParamByName('CustomerNo').AsInteger :=
        cdsInvoiceHeadCustomerNo.AsInteger;
      sq_GetLODataII.Open;
      // if ThisUser.UserID = 8 then    mLog.Lines.Add('sq_GetLODataII.Open') ;

      // Insert Invoice ShippingPlanNo
      if not sq_GetLODataII.Eof then
      Begin
        // if not cdsInvoiceLO.Locate('ShippingPlanNo
        cdsInvoiceLO.Insert;
        // if ThisUser.UserID = 8 then    mLog.Lines.Add('After cdsInvoiceLO.Insert') ;

        cdsInvoiceLOInternalInvoiceNo.AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        cdsInvoiceLOShippingPlanNo.AsInteger :=
          sq_LONoInInvoiceShippingPlanNo.AsInteger; // StrToInt(LO_String[x]) ;
        cdsInvoiceLOOrderNoText.AsString := sq_GetLODataIIORDERNUMBER.AsString;
        cdsInvoiceLOReference.AsString := sq_GetLODataIIReference.AsString;
        cdsInvoiceLOOurReference.AsString :=
          sq_GetLODataIIOurReference.AsString;
        cdsInvoiceLOSalesMan.AsString := sq_GetLODataIISalesMan.AsString;
        cdsInvoiceLOBookingNo.AsInteger := sq_GetLODataIIBookingNo.AsInteger;
        cdsInvoiceLOTotalFreightCost.AsFloat := 0; // Get total freight cost
        cdsInvoiceLOFreightCostPerUnit.AsFloat := 0;
        // Get freight cost per unit
        cdsInvoiceLOInvoiceAdditionAmount.AsFloat :=
          sq_GetLODataIIADDITION_AMOUNT.AsFloat;
        cdsInvoiceLOInvoiceAdditionUnitNo.AsInteger :=
          sq_GetLODataIIADDITION_UNITNO.AsInteger;
        cdsInvoiceLOInvoiceAdditionDescription.AsString :=
          sq_GetLODataIIADDITION_DESC.AsString;
        cdsInvoiceLOCreatedUser.AsInteger := ThisUser.UserID;
        cdsInvoiceLOModifiedUser.AsInteger := ThisUser.UserID;
        cdsInvoiceLODateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);

        cdsInvoiceLOCarrierName.AsString := sq_GetLODataIICarrierName.AsString;
        cdsInvoiceLOETD.AsSQLTimeStamp := sq_GetLODataIIETD.AsSQLTimeStamp;
        cdsInvoiceLOETA.AsSQLTimeStamp := sq_GetLODataIIETA.AsSQLTimeStamp;
        cdsInvoiceLOShipper.AsString := sq_GetLODataIIShipper.AsString;
        cdsInvoiceLOTrpID.AsString := sq_GetLODataIITrpID.AsString;

        // if ThisUser.UserID = 8 then    mLog.Lines.Add('Before cdsInvoiceLO.Post') ;
        cdsInvoiceLO.Post;
        // if ThisUser.UserID = 8 then    mLog.Lines.Add('After cdsInvoiceLO.Post') ;
      End;
    End; // with
  End;

  Function GetTotalUnitsPerLOStep1: Double;
  Begin
    with dmVidaInvoice do
    begin
      if sq_GetFreightCostTemplateUnitName.AsString = 'm3 aDxL' then
      Begin
        Result := GetTotalUnitsForLO('ActualNetM3');
        // cdsInvoiceDetailProductValue.AsFloat:= RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -3) ;
      End
      else if sq_GetFreightCostTemplateUnitName.AsString = 'm3 nDxnL' then
      Begin
        Result := GetTotalUnitsForLO('NominalM3');
        // cdsInvoiceDetailProductValue.AsFloat:= RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -2) ;
      End
      else if sq_GetFreightCostTemplateUnitName.AsString = 'Stycketal' then
      Begin
        Result := GetTotalUnitsForLO('NoOfPieces');
        // cdsInvoiceDetailProductValue.AsFloat:= RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -2) ;
      End;
      // else
      // Begin
      // cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceDetailPrice.AsFloat ;
      // End ;
    End; // with dmVidaInvoice do
  End;

// Lägger till en fakturarad för fraktkostnad, frakten finns specificerad i bokningen för LO nr.
  Procedure AddFreigthCost_II;
  Var
    TotalUnitsPerLO: Double;
    FreightArticleNo: Integer;
  Begin
    with dmVidaInvoice do
    begin
      Try
        // GetTotalAM3ForLO ;
        sq_GetFreightCost.Close;
        sq_GetFreightCost.ParamByName('ShippingPlanNo').AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger;
        sq_GetFreightCost.Open;
        // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After add freight cost sq_GetFreightCost.Open') ;
        if (not sq_GetFreightCost.Eof) and
          (sq_GetFreightCostFreightCost.AsFloat > 0) then
        Begin
          TotalUnitsPerLO := GetTotalUnitsPerLOStep1;
          FreightArticleNo := GetFreightArticleNo;
          cdsInvoiceDetail.Insert;
          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After add freight cdsInvoiceDetail.Insert') ;
          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After cdsInvoiceDetail.Insert') ;

          cdsInvoiceDetailShippingPlanNo.AsInteger :=
            cdsInvoiceLOShippingPlanNo.AsInteger;

          // Fraktkostnaden inkluderad i pris om DeliveryTerms säger så
          if cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger = 1 then
          Begin
            cdsInvoiceDetailTypeOfRow.AsInteger := 3; // Freigth cost
            cdsInvoiceDetailInclInPrice.AsInteger := 1;
            cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 0;
          End
          else
          Begin
            cdsInvoiceDetailTypeOfRow.AsInteger := 2;
            // Freigth cost not inkluded in pris
            cdsInvoiceDetailInclInPrice.AsInteger := 0;
            cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 1;
          End;

          cdsInvoiceDetailProductDescription.AsString := 'Freight Cost';
          cdsInvoiceDetailPriceUnit.AsString :=
            sq_GetFreightCostTemplateUnitName.AsString;

          if sq_GetFreightCostFreightCostCurrency.AsInteger <>
            cdsInvoiceHeadCurrencyNo.AsInteger then
          Begin
            if cdsInvoiceHeadCurrencyNo.AsInteger = 10001 { SEK } then
            Begin
              FreightCost := ConvertFreightCostFromCurrencyToSEK
                ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                { Convert from } sq_GetFreightCostFreightCostCurrency.
                AsInteger);
              cdsInvoiceDetailPrice.AsFloat := RoundTo(FreightCost, -2);
            End
            else
            Begin
              if sq_GetFreightCostFreightCostCurrency.AsInteger <> 10001 { SEK }
              then
              Begin
                FreightCost := ConvertFreightCostFromCurrencyToSEK
                  ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                  { Convert from } sq_GetFreightCostFreightCostCurrency.
                  AsInteger);
                FreightCost := ConvertFreightCostToCurrencyFromSEK
                  ( { Freight cost } FreightCost,
                  cdsInvoiceHeadCurrencyNo.AsInteger);
              End
              else
                FreightCost := ConvertFreightCostToCurrencyFromSEK
                  ( { Freight cost } sq_GetFreightCostFreightCost.AsFloat,
                  cdsInvoiceHeadCurrencyNo.AsInteger);
              cdsInvoiceDetailPrice.AsFloat := RoundTo(FreightCost, -2);
            End;
          End
          else
            cdsInvoiceDetailPrice.AsFloat :=
              sq_GetFreightCostFreightCost.AsFloat;

          sq_GetFreightCost.Close;

          if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxL' then
          Begin
            // TotalUnitsPerLO  := GetTotalUnitsForLO('ActualNetM3') ;
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -3);
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
          Begin
            // TotalUnitsPerLO  := GetTotalUnitsForLO('NominalM3') ;
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -2);
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
          Begin
            // TotalUnitsPerLO  := GetTotalUnitsForLO('NoOfPieces') ;
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TotalUnitsPerLO * cdsInvoiceDetailPrice.AsFloat, -2);
          End
          else
          Begin
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailPrice.AsFloat;
          End;

          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Before add freight cost cdsInvoiceDetail.Post') ;

          if cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger = 1 then
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat * -1
          else
            cdsInvoiceDetailProductValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat;

          cdsInvoiceDetailArticleNo.AsInteger := FreightArticleNo;
          // dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger) ;
          // cdsInvoiceDetailInclInPrice.AsInteger               := 1 ;
          // cdsInvoiceDetailInclInInvoiceTotal.AsInteger        := 0 ;

          cdsInvoiceDetail.Post;
          // if ThisUser.UserID = 8 then  mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After add freight cost cdsInvoiceDetail.Post') ;
          y := Succ(y);
        End;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

(*
  //ADD FREIGHT COST IN TO  INVOICE DETAIL if Booking exist for current ShippingPlanNo Number
  Procedure AddFreigthCost_II ;
  Begin
  with dmVidaInvoice do
  begin
  sq_GetFreightCost.Close ;
  sq_GetFreightCost.ParamByName('ShippingPlanNo').AsInteger:= cdsInvoiceLOShippingPlanNo.AsInteger ;
  sq_GetFreightCost.Open ;
  //    if ThisUser.UserID = 8 then     mLog.Lines.Add('After add freight cost sq_GetFreightCost.Open') ;
  //   if not sq_GetFreightCost.Eof then
  if (not sq_GetFreightCost.Eof) and (sq_GetFreightCostFreightCost.AsFloat > 0) then
  Begin
  cdsInvoiceDetail.Insert ;
  //    if ThisUser.UserID = 8 then     mLog.Lines.Add('After add freight cdsInvoiceDetail.Insert') ;
  //    if ThisUser.UserID = 8 then     mLog.Lines.Add('After cdsInvoiceDetail.Insert') ;
  //    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
  cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
  //    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
  cdsInvoiceDetailTypeOfRow.AsInteger                 := 3 ; //Freigth cost
  cdsInvoiceDetailProductDescription.AsString         := 'Freight Cost' ;
  cdsInvoiceDetailPriceUnit.AsString                  := sq_GetFreightCostTemplateUnitName.AsString ;

  if sq_GetFreightCostFreightCostCurrency.AsInteger <> cdsInvoiceHeadCurrencyNo.AsInteger then
  Begin
  if cdsInvoiceHeadCurrencyNo.AsInteger = 10001{SEK} then
  Begin
  FreightCost:= ConvertFreightCostFromCurrencyToSEK({Freight cost}sq_GetFreightCostFreightCost.AsFloat,{Convert from}sq_GetFreightCostFreightCostCurrency.AsInteger) ;
  cdsInvoiceDetailPrice.AsFloat:= RoundTo(FreightCost,-2) ;
  End
  else
  Begin
  if sq_GetFreightCostFreightCostCurrency.AsInteger <> 10001{SEK} then
  Begin
  FreightCost:= ConvertFreightCostFromCurrencyToSEK({Freight cost}sq_GetFreightCostFreightCost.AsFloat,{Convert from}sq_GetFreightCostFreightCostCurrency.AsInteger) ;
  FreightCost:= ConvertFreightCostToCurrencyFromSEK({Freight cost}FreightCost,cdsInvoiceHeadCurrencyNo.AsInteger) ;
  End
  else
  FreightCost:= ConvertFreightCostToCurrencyFromSEK({Freight cost}sq_GetFreightCostFreightCost.AsFloat,cdsInvoiceHeadCurrencyNo.AsInteger) ;
  cdsInvoiceDetailPrice.AsFloat:= RoundTo(FreightCost,-2) ;
  End ;
  End
  else
  cdsInvoiceDetailPrice.AsFloat:= sq_GetFreightCostFreightCost.AsFloat ;

  sq_GetFreightCost.Close ;

  if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxL' then
  Begin
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Net*cdsInvoiceDetailPrice.AsFloat, -3) ;
  //      cdsInvoiceDetailProductValue.AsFloat                := M3Net *  cdsInvoiceDetailPrice.AsFloat ;
  End
  else
  if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
  Begin
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Nom*cdsInvoiceDetailPrice.AsFloat, -2) ;
  //      cdsInvoiceDetailProductValue.AsFloat                := M3Nom *  cdsInvoiceDetailPrice.AsFloat ;
  End
  else
  if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
  Begin
  //      cdsInvoiceDetailProductValue.AsFloat                := NoOfPieces *  cdsInvoiceDetailPrice.AsFloat ;
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(NoOfPieces*cdsInvoiceDetailPrice.AsFloat, -2) ;
  End
  else
  Begin
  cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceDetailPrice.AsFloat ;
  End ;

  cdsInvoiceDetailArticleNo.AsInteger   := dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger) ;

  {    cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
  cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
  cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ; }
  //    if ThisUser.UserID = 8 then     mLog.Lines.Add('Before add freight cost cdsInvoiceDetail.Post') ;
  cdsInvoiceDetail.Post ;
  //    if ThisUser.UserID = 8 then     mLog.Lines.Add('After add freight cost cdsInvoiceDetail.Post') ;
  y:= Succ(y) ;
  End ;
  End ; //with
  End ;
*)

// ADD INVOICE DETAIL for an Additional costs if such exist for current ShippingPlanNo Number
  procedure AddAdditionalCost;
  Var
    TempVal: Double;

    procedure GetVolumeForAddAdditionalCost;
    Begin
      with dmVidaInvoice do
      begin
        // sq_GetPkgType_Invoice.ParamByName('InternalInvoiceNo').AsInteger := InternalInvoiceNo ;
        sq_GetPkgType_Invoice.ParamByName('SupplierNo').AsInteger :=
          cdsInvoiceHeadSupplierNo.AsInteger;
        // mtCompSelRowsSALESREGIONNO.AsInteger ;//VIDA_WOOD_CLIENTNO ;
        sq_GetPkgType_Invoice.ParamByName('ShippingPlanNo').AsInteger :=
          cdsInvoiceLOShippingPlanNo.AsInteger; // mtCompSelRowsLONo.AsInteger ;
        sq_GetPkgType_Invoice.ParamByName('CustomerNo').AsInteger :=
          cdsInvoiceHeadCustomerNo.AsInteger;
        // mtCompSelRowsCLIENTNO.AsInteger ; // Avrop customerNo
        Try
          sq_GetPkgType_Invoice.Open;

          if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAM3.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceNM3.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
          Begin
            TempVal := sq_GetPkgType_InvoicePcs.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 FDxnL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAdNl.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxaL' then
          Begin
            TempVal := sq_GetPkgType_InvoiceNdAl.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Kvm aB' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAM2AW.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Lopm a' then
          Begin
            TempVal := sq_GetPkgType_InvoiceAM1.AsFloat;
          End
          else if cdsInvoiceDetailPriceUnit.AsString = 'Lopm n' then
          Begin
            TempVal := sq_GetPkgType_InvoiceNM1.AsFloat;
          End;

        Finally
          sq_GetPkgType_Invoice.Close;
        End;
      End; // With
    End;

  // main AddAdditionalCost ;
  Begin
    with dmVidaInvoice do
    begin
      Try
        TempVal := 0;
        if (cdsInvoiceLOInvoiceAdditionAmount.AsFloat > 0) or
          (cdsInvoiceLOInvoiceAdditionAmount.AsFloat < 0) then
        Begin
          cdsInvoiceDetail.Insert;
          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After add cost cdsInvoiceDetail.Insert ') ;
          cdsInvoiceDetailShippingPlanNo.AsInteger :=
            cdsInvoiceLOShippingPlanNo.AsInteger;
          cdsInvoiceDetailTypeOfRow.AsInteger := 2; // Additional cost
          cdsInvoiceDetailPriceUnit.AsString :=
            sq_GetLODataADDITION_PRICEUNIT.AsString;
          cdsInvoiceDetailProductDescription.AsString :=
            cdsInvoiceLOInvoiceAdditionDescription.AsString;
          cdsInvoiceDetailPrice.AsFloat :=
            cdsInvoiceLOInvoiceAdditionAmount.AsFloat;
          cdsInvoiceDetailVolumeUnit.AsString :=
            cdsInvoiceLOInvoiceAdditionUnitNo.AsString; // Get unit name ;

          GetVolumeForAddAdditionalCost;

          if cdsInvoiceDetailPriceUnit.AsString = 'SUM' then
          Begin
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(cdsInvoiceDetailPrice.AsFloat, -2);
          End
          else
            cdsInvoiceDetailProductValue.AsFloat :=
              RoundTo(TempVal * cdsInvoiceDetailPrice.AsFloat, -2);

          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Before add cost cdsInvoiceDetail.Post ') ;

          cdsInvoiceDetailArticleNo.AsInteger :=
            dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger);

          cdsInvoiceDetailInclInPrice.AsInteger := 0;
          cdsInvoiceDetailInclInInvoiceTotal.AsInteger := 1;

          cdsInvoiceDetail.Post;
          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After add cost cdsInvoiceDetail.Post ') ;
          y := Succ(y);
        End;
        sq_GetLOData.Close;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

(*
  procedure  AddAdditionalCost ;
  //Var FreightCost: Double ;
  Begin
  with dmVidaInvoice do
  begin
  if (cdsInvoiceLOInvoiceAdditionAmount.AsFloat > 0) //then
  or    (cdsInvoiceLOInvoiceAdditionAmount.AsFloat < 0) then
  Begin
  cdsInvoiceDetail.Insert ;
  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('After add cost cdsInvoiceDetail.Insert ') ;
  //    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
  cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
  //    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
  cdsInvoiceDetailTypeOfRow.AsInteger                 := 2 ; //Additional cost
  cdsInvoiceDetailPriceUnit.AsString                  := sq_GetLODataIIADDITION_PRICEUNIT.AsString ;

  cdsInvoiceDetailProductDescription.AsString         := cdsInvoiceLOInvoiceAdditionDescription.AsString ;
  cdsInvoiceDetailPrice.AsFloat                       := cdsInvoiceLOInvoiceAdditionAmount.AsFloat ;
  cdsInvoiceDetailVolumeUnit.AsString                 := cdsInvoiceLOInvoiceAdditionUnitNo.AsString ;//Get unit name ;
  //    cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceLOInvoiceAdditionAmount.AsFloat ;

  if cdsInvoiceDetailPriceUnit.AsString = 'm3 aDxL' then
  Begin
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Net*cdsInvoiceDetailPrice.AsFloat, -2) ;
  //      cdsInvoiceDetailProductValue.AsFloat                := M3Net *  cdsInvoiceDetailPrice.AsFloat ;
  End
  else
  if cdsInvoiceDetailPriceUnit.AsString = 'm3 nDxnL' then
  Begin
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(M3Nom*cdsInvoiceDetailPrice.AsFloat, -2) ;
  //      cdsInvoiceDetailProductValue.AsFloat                := M3Nom *  cdsInvoiceDetailPrice.AsFloat ;
  End
  else
  if cdsInvoiceDetailPriceUnit.AsString = 'Stycketal' then
  Begin
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(NoOfPieces*cdsInvoiceDetailPrice.AsFloat, -2) ;
  //      cdsInvoiceDetailProductValue.AsFloat                := NoOfPieces *  cdsInvoiceDetailPrice.AsFloat ;
  End
  else
  Begin
  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(cdsInvoiceDetailPrice.AsFloat, -2) ;
  //      cdsInvoiceDetailProductValue.AsFloat                := cdsInvoiceDetailPrice.AsFloat ;
  End ;

  {    cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
  cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
  cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ; }
  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('Before add cost cdsInvoiceDetail.Post ') ;
  cdsInvoiceDetailArticleNo.AsInteger   := dmVidaInvoice.GetArticleNo(cdsInvoiceLOShippingPlanNo.AsInteger) ;
  cdsInvoiceDetail.Post ;
  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('After add cost cdsInvoiceDetail.Post ') ;
  y:= Succ(y) ;
  End ;
  sq_GetLODataII.Close ;
  End ; //with
  End ;

*)

  function ReplaceCommas(S: String): String;
  begin
    { Convert commas to period }
    { while Pos(',', S) > 0 do
      S[Pos(',', S)] := '.';
      Result:= S ; }

    { Convert period to commas }
    while Pos('.', S) > 0 do
      S[Pos('.', S)] := ',';
    Result := S;
  end;


// For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads
(* Procedure AddProductData ;
  Var TempVol,
  TempACT_M3,
  TempNOM_M3,
  TempLineMet_ACT   : Extended ;
  ThicknessINCH,
  WidthINCH         : String ;
  n                 : Cardinal ;
  Begin
  with dmVidaInvoice do
  begin
  n := 1 ;
  LopM_ACT:= 0 ;
  M3Net:= 0 ;
  M3Nom:= 0 ;
  NoOfPieces := 0 ;
  TempACT_M3:= 0 ; TempNOM_M3:= 0 ; TempLineMet_ACT:= 0 ;

  sq_GetInvoiceDetailDataII.Close ;
  sq_GetInvoiceDetailDataII.ParamByName('InternalInvoiceNo').AsInteger := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
  sq_GetInvoiceDetailDataII.Open ;
  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('After sq_GetInvoiceDetailDataII.Open') ;
  While not sq_GetInvoiceDetailDataII.Eof do
  Begin
  cdsInvoiceDetail.Insert ;
  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('After cdsInvoiceDetail.Insert') ;
  cdsInvoiceDetailCustShipPlanDetailObjectNo.AsInteger:= sq_GetInvoiceDetailDataIICustShipPlanDetailObjectNo.AsInteger ;
  //    cdsInvoiceDetailInternalInvoiceNo.AsInteger         := cdsInvoiceLOInternalInvoiceNo.AsInteger ;
  cdsInvoiceDetailShippingPlanNo.AsInteger            := cdsInvoiceLOShippingPlanNo.AsInteger ;
  //    cdsInvoiceDetailInvoiceDetailNo.AsInteger           := y ;
  cdsInvoiceDetailTypeOfRow.AsInteger                 := 1 ; //Product

  cdsInvoiceDetailOrderLineNo.AsInteger               := sq_GetInvoiceDetailDataIIORDERLINENO.AsInteger ;
  cdsInvoiceDetailReference.AsString                  := sq_GetInvoiceDetailDataIIREFERENCE.AsString ;
  cdsInvoiceDetailProductDescription.AsString         := sq_GetInvoiceDetailDataIIPRODUCTDESCRIPTION.AsString ;
  cdsInvoiceDetailProductNo.AsInteger                 := sq_GetInvoiceDetailDataIIPRODUCTNO.AsInteger ;
  cdsInvoiceDetailLengthDescription.AsString          := sq_GetInvoiceDetailDataIILENGTHDESCRIPTION.AsString ;
  cdsInvoiceDetailProductLengthNo.AsInteger           := sq_GetInvoiceDetailDataIIPRODUCTLENGTHNO.AsInteger ;
  cdsInvoiceDetailPrice.AsFloat                       := sq_GetInvoiceDetailDataIIPRICE.AsFloat ;
  cdsInvoiceDetailVolumeUnit.AsString                 := sq_GetInvoiceDetailDataIIVOLUMEUNIT.AsString ;
  cdsInvoiceDetailPriceUnit.AsString                  := sq_GetInvoiceDetailDataIIPRICEUNIT.AsString ;

  cdsInvoiceDetailActualThicknessMM.AsFloat           := sq_GetInvoiceDetailDataIIActualThicknessMM.AsFloat ;
  cdsInvoiceDetailActualWidthMM.AsFloat               := sq_GetInvoiceDetailDataIIActualWidthMM.AsFloat ;

  cdsInvoiceDetailNominalThicknessMM.AsFloat          := sq_GetInvoiceDetailDataIINominalThicknessMM.AsFloat ;
  cdsInvoiceDetailNominalWidthMM.AsFloat              := sq_GetInvoiceDetailDataIINominalWidthMM.AsFloat ;

  cdsInvoiceDetailNominalLengthMM.AsFloat             := sq_GetInvoiceDetailDataIINominalLengthMM.AsFloat ;


  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('Before ThicknessINCH') ;

  ThicknessINCH := sq_GetInvoiceDetailDataIINominalThicknessINCH.AsString ;
  WidthINCH := sq_GetInvoiceDetailDataIINominalWidthINCH.AsString ;

  ThicknessINCH :=  ReplaceCommas(ThicknessINCH) ;
  WidthINCH :=  ReplaceCommas(WidthINCH) ;

  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('After ThicknessINCH='+ThicknessINCH) ;
  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('After WidthINCH='+WidthINCH) ;

  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('After ThicknessINCH') ;
  Try
  cdsInvoiceDetailNominalThicknessINCH.AsString       := ThicknessINCH ;
  Except
  End ;
  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('cdsInvoiceDetailNominalThicknessINCH.AsString='+cdsInvoiceDetailNominalThicknessINCH.AsString) ;
  Try
  cdsInvoiceDetailNominalWidthINCH.AsString           := WidthINCH ;
  Except
  End ;


  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('cdsInvoiceDetailNominalWidthINCH.AsString='+cdsInvoiceDetailNominalWidthINCH.AsString) ;

  TempACT_M3:= RoundTo(sq_GetInvoiceDetailDataIIM3ACTUAL.AsFloat , -3) ;
  TempNOM_M3:= RoundTo(sq_GetInvoiceDetailDataIIM3NOMINAL.AsFloat , -3) ;
  TempLineMet_ACT:= RoundTo(sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER.AsFloat , -3) ;
  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('After TempLineMet_ACT') ;

  cdsInvoiceDetailActualNetM3.AsFloat                 := TempACT_M3 ; //sq_GetInvoiceDetailDataIIM3ACTUAL.AsFloat ;
  cdsInvoiceDetailLinealMeter.AsFloat                 := TempLineMet_ACT ; //sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER.AsFloat ;

  cdsInvoiceDetailNominalM3.AsFloat                   := TempNOM_M3 ; //sq_GetInvoiceDetailDataIIM3NOMINAL.AsFloat ;
  cdsInvoiceDetailNoOfPieces.AsInteger                := sq_GetInvoiceDetailDataIINOOFPIECES.AsInteger ;
  cdsInvoiceDetailNoOfPkgs.AsInteger                  := sq_GetInvoiceDetailDataIINoOfPkgs.AsInteger ;
  cdsInvoiceDetailOL_Reference.AsString               := sq_GetInvoiceDetailDataIIOL_Reference.AsString ;


  TempVol:= RoundTo(sq_GetInvoiceDetailDataIIVOLUME_ORDERUNIT.AsFloat, -3) ;
  cdsInvoiceDetailVolume_OrderUnit.AsFloat            := TempVol ;
  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('After cdsInvoiceDetailVolume_OrderUnit.AsFloat') ;


  cdsInvoiceDetailProductValue.AsFloat:= RoundTo(TempVol*sq_GetInvoiceDetailDataIIPRICE.AsFloat, -2) ;

  {    cdsInvoiceDetailCreatedUser.AsInteger               := ThisUser.UserID ;
  cdsInvoiceDetailModifiedUser.AsInteger              := ThisUser.UserID ;
  cdsInvoiceDetailDateCreated.AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ; }


  M3Net       := M3Net + cdsInvoiceDetailActualNetM3.AsFloat ;
  M3Nom       := M3Nom + cdsInvoiceDetailNominalM3.AsFloat ;
  NoOfPieces  := NoOfPieces + cdsInvoiceDetailNoOfPieces.AsInteger ;
  LopM_ACT    := LopM_ACT + cdsInvoiceDetailLinealMeter.AsFloat ;

  cdsInvoiceDetailintNM3.AsFloat                      := sq_GetInvoiceDetailDataintNM3.AsFloat ;

  cdsInvoiceDetailArticleNo.AsInteger                 := sq_GetInvoiceDetailDataIIArticleNo.AsInteger ;

  cdsInvoiceDetailNettoSEKPerNM3.AsFloat   := dmVidaInvoice.GetNettoPris(sq_GetInvoiceDetailDataOrderNo.AsInteger, sq_GetInvoiceDetailDataOrderLineNo.AsInteger) ;
  cdsInvoiceDetailBruttoSEKPerNM3.AsFloat  := dmVidaInvoice.GetBruttoPris(sq_GetInvoiceDetailDataOrderNo.AsInteger, sq_GetInvoiceDetailDataOrderLineNo.AsInteger) ;
  //   if ThisUser.UserID = 8 then     mLog.Lines.Add('After LopM_ACT') ;


  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('Before cdsInvoiceDetail.Post ') ;
  cdsInvoiceDetail.Post ;
  //   if ThisUser.UserID = 8 then    mLog.Lines.Add('After cdsInvoiceDetail.Post ') ;
  sq_GetInvoiceDetailDataII.Next ;
  y:= Succ(y) ;
  End ; //While not sq_GetInvoiceDetailDataII.Eof do
  sq_GetInvoiceDetailDataII.Close ;
  End ; //with
  End ;
*)

// For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads
  Procedure AddProductData;
  Var
    Temp_VOLUME_ORDERUNIT: Extended;
    ThicknessINCH, WidthINCH: String;
  Begin
    with dmVidaInvoice do
    begin
      Try

        sq_GetInvoiceDetailDataII.Close;
        sq_GetInvoiceDetailDataII.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        sq_GetInvoiceDetailDataII.Open;
        // if ThisUser.UserID = 8 then    mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After sq_GetInvoiceDetailData.Open') ;
        While not sq_GetInvoiceDetailDataII.Eof do
        Begin
          cdsInvoiceDetail.Insert;
          // if ThisUser.UserID = 8 then    mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After cdsInvoiceDetail.Insert') ;
          cdsInvoiceDetailCustShipPlanDetailObjectNo.AsInteger :=
            sq_GetInvoiceDetailDataIICustShipPlanDetailObjectNo.AsInteger;
          cdsInvoiceDetailShippingPlanNo.AsInteger :=
            cdsInvoiceLOShippingPlanNo.AsInteger;
          cdsInvoiceDetailTypeOfRow.AsInteger := 1; // Product
          cdsInvoiceDetailOrderLineNo.AsInteger :=
            sq_GetInvoiceDetailDataIIORDERLINENO.AsInteger;
          cdsInvoiceDetailReference.AsString :=
            sq_GetInvoiceDetailDataIIREFERENCE.AsString;
          cdsInvoiceDetailProductDescription.AsString :=
            sq_GetInvoiceDetailDataIIPRODUCTDESCRIPTION.AsString;
          cdsInvoiceDetailProductNo.AsInteger :=
            sq_GetInvoiceDetailDataIIPRODUCTNO.AsInteger;
          cdsInvoiceDetailLengthDescription.AsString :=
            sq_GetInvoiceDetailDataIILENGTHDESCRIPTION.AsString;
          cdsInvoiceDetailProductLengthNo.AsInteger :=
            sq_GetInvoiceDetailDataIIPRODUCTLENGTHNO.AsInteger;
          cdsInvoiceDetailPrice.AsFloat :=
            sq_GetInvoiceDetailDataIIPRICE.AsFloat;
          cdsInvoiceDetailVolumeUnit.AsString :=
            sq_GetInvoiceDetailDataIIVOLUMEUNIT.AsString;
          cdsInvoiceDetailPriceUnit.AsString :=
            sq_GetInvoiceDetailDataIIPRICEUNIT.AsString;
          cdsInvoiceDetailActualThicknessMM.AsFloat :=
            sq_GetInvoiceDetailDataIIActualThicknessMM.AsFloat;
          cdsInvoiceDetailActualWidthMM.AsFloat :=
            sq_GetInvoiceDetailDataIIActualWidthMM.AsFloat;
          cdsInvoiceDetailNominalThicknessMM.AsFloat :=
            sq_GetInvoiceDetailDataIINominalThicknessMM.AsFloat;
          cdsInvoiceDetailNominalWidthMM.AsFloat :=
            sq_GetInvoiceDetailDataIINominalWidthMM.AsFloat;
          cdsInvoiceDetailNominalLengthMM.AsFloat :=
            sq_GetInvoiceDetailDataIINominalLengthMM.AsFloat;
          cdsInvoiceDetailintNM3.AsFloat :=
            sq_GetInvoiceDetailDataIIintNM3.AsFloat;
          cdsInvoiceDetailArticleNo.AsInteger :=
            sq_GetInvoiceDetailDataIIArticleNo.AsInteger;

          // if ThisUser.UserID = 8 then     mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Before ThicknessINCH') ;

          ThicknessINCH :=
            sq_GetInvoiceDetailDataIINominalThicknessINCH.AsString;
          WidthINCH := sq_GetInvoiceDetailDataIINominalWidthINCH.AsString;

          ThicknessINCH := ReplaceCommas(ThicknessINCH);
          WidthINCH := ReplaceCommas(WidthINCH);

          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After ThicknessINCH=' + ThicknessINCH) ;
          // if ThisUser.UserID = 8 then  mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After WidthINCH=' + WidthINCH) ;
          // if ThisUser.UserID = 8 then  mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After ThicknessINCH') ;
          Try
            cdsInvoiceDetailNominalThicknessINCH.AsString := ThicknessINCH;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;
          // if ThisUser.UserID = 8 then mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'cdsInvoiceDetailNominalThicknessINCH.AsString=' + cdsInvoiceDetailNominalThicknessINCH.AsString) ;
          Try
            cdsInvoiceDetailNominalWidthINCH.AsString := WidthINCH;
          except
            On E: Exception do
            Begin
              dmsSystem.FDoLog(E.Message);
              // ShowMessage(E.Message);
              Raise;
            End;
          end;

          cdsInvoiceDetailActualNetM3.AsFloat :=
            RoundTo(sq_GetInvoiceDetailDataIIM3ACTUAL.AsFloat, -3);
          // Temp_AM3 ; //sq_GetInvoiceDetailDataM3ACTUAL.AsFloat ;
          cdsInvoiceDetailLinealMeter.AsFloat :=
            RoundTo(sq_GetInvoiceDetailDataIIACTUAL_LINEALMETER.AsFloat, -3);
          // Temp_AM1 ; //sq_GetInvoiceDetailDataACTUAL_LINEALMETER.AsFloat ;
          cdsInvoiceDetailNominalM3.AsFloat :=
            RoundTo(sq_GetInvoiceDetailDataIIM3NOMINAL.AsFloat, -3);
          // Temp_NM3 ; //sq_GetInvoiceDetailDataM3NOMINAL.AsFloat ;

          cdsInvoiceDetailNoOfPieces.AsInteger :=
            sq_GetInvoiceDetailDataIINOOFPIECES.AsInteger;
          cdsInvoiceDetailNoOfPkgs.AsInteger :=
            sq_GetInvoiceDetailDataIINoOfPkgs.AsInteger;
          cdsInvoiceDetailOL_Reference.AsString :=
            sq_GetInvoiceDetailDataIIOL_Reference.AsString;

          Temp_VOLUME_ORDERUNIT :=
            RoundTo(sq_GetInvoiceDetailDataIIVOLUME_ORDERUNIT.AsFloat, -3);
          cdsInvoiceDetailVolume_OrderUnit.AsFloat := Temp_VOLUME_ORDERUNIT;

          // if ThisUser.UserID = 8 then  mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After cdsInvoiceDetailVolume_OrderUnit.AsFloat') ;

          cdsInvoiceDetailProductValue.AsFloat :=
            RoundTo(Temp_VOLUME_ORDERUNIT *
            sq_GetInvoiceDetailDataIIPRICE.AsFloat, -2);

          if cdsInvoiceHeadMoms.AsInteger = 1 then
            cdsInvoiceDetailVatValue.AsFloat :=
              cdsInvoiceDetailProductValue.AsFloat * c_Moms
          else
            cdsInvoiceDetailVatValue.AsFloat := 0;

          // Räknar ut varuvärde, belopp - frakt
          { if TotalAM3LO > 0 then
            Begin
            if cdsInvoiceHeadIncludeFreightCostInPrice.AsInteger = 1 then
            cdsInvoiceDetailProductValueWOFreight.AsFloat :=
            cdsInvoiceDetailProductValue.AsFloat -
            ((cdsInvoiceDetailActualNetM3.AsFloat / TotalAM3LO)
            * TotalFraktKostnadPerLO)
            else
            cdsInvoiceDetailProductValueWOFreight.AsFloat := cdsInvoiceDetailProductValue.AsFloat ;

            cdsInvoiceDetailFreightCostCurr.AsFloat  :=  cdsInvoiceDetailProductValue.AsFloat - cdsInvoiceDetailProductValueWOFreight.AsFloat
            End
            else
            cdsInvoiceDetailProductValueWOFreight.AsFloat := cdsInvoiceDetailProductValue.AsFloat ;
          }
          // NoOfPieces  := NoOfPieces + cdsInvoiceDetailNoOfPieces.AsInteger ;

          // Hämta netto och bruttopris
          cdsInvoiceDetailNettoSEKPerNM3.AsFloat :=
            dmVidaInvoice.GetNettoPris
            (sq_GetInvoiceDetailDataIIOrderNo.AsInteger,
            sq_GetInvoiceDetailDataIIORDERLINENO.AsInteger);
          cdsInvoiceDetailBruttoSEKPerNM3.AsFloat :=
            dmVidaInvoice.GetBruttoPris
            (sq_GetInvoiceDetailDataIIOrderNo.AsInteger,
            sq_GetInvoiceDetailDataIIORDERLINENO.AsInteger);

          // if ThisUser.UserID = 8 then  mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'Before cdsInvoiceDetail.Post ') ;
          cdsInvoiceDetail.Post;
          // if ThisUser.UserID = 8 then  mLog.Lines.Add(Datetimetostr(now) + ':  ' + 'After cdsInvoiceDetail.Post ') ;
          sq_GetInvoiceDetailDataII.Next;
          y := Succ(y);
        End; // While not sq_GetInvoiceDetailData.Eof do
        sq_GetInvoiceDetailDataII.Close;

      except
        On E: Exception do
        Begin
          dmsSystem.FDoLog(E.Message);
          // ShowMessage(E.Message);
          Raise;
        End;
      end;

    End; // with
  End;

// Main block MakeInvoice
BEGIN
  Save_Cursor := Screen.Cursor;
  Try

    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    with dmVidaInvoice do
    Begin
      Try
        sq_LONoInInvoice.Close;
        sq_LONoInInvoice.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        sq_LONoInInvoice.Open;
        sq_LONoInInvoice.First;
        While not sq_LONoInInvoice.Eof do
        Begin
          // Check if there is some loads to invoice for these parameters
          // sq_LoadToInvoice tittar bara på laster som är kopplade till InternalInvoiceNo genom "Invoiced_Load"
          sq_LoadToInvoice.ParamByName('InternalInvoiceNo').AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger;
          sq_LoadToInvoice.Open;
          Try
            if sq_LoadToInvoice.Eof then
            Begin
              ShowMessage('There are no loads to invoice.');
              Exit;
            End;
          Finally
            sq_LoadToInvoice.Close;
          End;
          sq_LONoInInvoice.Next;
        end; // While not sq_LONoInInvoice.Eof...

        sq_DelPkgTypeByIntInv.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        sq_DelPkgTypeByIntInv.ExecSQL;
        sq_PkgType_Inv.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        sq_PkgType_Inv.ExecSQL;

        with dm_Booking do
        Begin
          sq_GetLoadIDII.ParamByName('InternalInvoiceNo').AsInteger :=
            cdsInvoiceHeadInternalInvoiceNo.AsInteger; // VIDA_WOOD_CLIENTNO ;
          sq_GetLoadIDII.ParamByName('SupplierNo').AsInteger :=
            cdsInvoiceHeadSupplierNo.AsInteger; // VIDA_WOOD_CLIENTNO ;
          sq_GetLoadIDII.ParamByName('ShippingPlanNo').AsInteger :=
            sq_LONoInInvoiceShippingPlanNo.AsInteger;
          sq_GetLoadIDII.ParamByName('CustomerNo').AsInteger :=
            cdsInvoiceHeadCustomerNo.AsInteger; // Avrop customerNo
          sq_GetLoadIDII.Open;

          cdsBookingInvoice.Active := False;
          cdsBookingInvoice.ParamByName('ShippingPlanNo').AsInteger :=
            sq_LONoInInvoiceShippingPlanNo.AsInteger;
          // Juli 6 2006 daMoLM1.cdsAvropShippingPlanNo.AsInteger ;
          cdsBookingInvoice.Active := True;

          if cdsBookingInvoice.RecordCount > 0 then
          Begin
            cdsBookingInvoice.Edit;
            cdsBookingInvoiceSupplierReference.AsString :=
              sq_GetLoadIDIILoadID.AsString;
            cdsBookingInvoice.Post;
            if cdsBookingInvoice.ChangeCount > 0 then
            Begin
              cdsBookingInvoice.ApplyUpdates(0);
              cdsBookingInvoice.CommitUpdates;
            End;
          End;

          sq_GetLoadIDII.Close;
          cdsBookingInvoice.Active := False;
        End; // with dm_Booking

        // Start Transaction
      //  dmsConnector.StartTransaction;
        Try
          cdsInvoiceDetail.First;
          While not cdsInvoiceDetail.Eof do
            cdsInvoiceDetail.Delete;
          if cdsInvoiceDetail.ChangeCount > 0 then
          Begin
            cdsInvoiceDetail.ApplyUpdates(0);
            cdsInvoiceDetail.CommitUpdates;
          End;

          cdsInvoiceLO.First;
          While not cdsInvoiceLO.Eof do
            cdsInvoiceLO.Delete;
          if cdsInvoiceLO.ChangeCount > 0 then
          Begin
            cdsInvoiceLO.ApplyUpdates(0);
            cdsInvoiceLO.CommitUpdates;
          End;

          cdsInvoiceShipTo.Active := False;
          cdsInvoiceShipTo.Active := True;
          x := 0;
          Screen.Cursor := crSQLWait; { Show hourglass cursor }

          // Go through all ShippingPlanNo #, Get ShippingPlanNo data and insert to csdInvoiceLO
          sq_LONoInInvoice.First;
          While not sq_LONoInInvoice.Eof do
          Begin
            AddLOData;
            y := 1; // use this for InvoiceDetailNo
            // ADD INVOICE DETAIL for an Additional costs if such exist for current ShippingPlanNo Number
            // For each ShippingPlanNo # ADD INVOICE DETAIL - Products from Loads
            AddProductData;
            AddAdditionalCost;

            // Get and Insert ship to address
            sq_GetShipToAddress.ParamByName('ShippingPlanNo').AsInteger :=
              sq_LONoInInvoiceShippingPlanNo.AsInteger;
            // StrToInt(LO_String[x]) ;
            sq_GetShipToAddress.Open;
            // if ThisUser.UserID = 8 then    mLog.Lines.Add('After sq_GetShipToAddress.Open') ;
            While not sq_GetShipToAddress.Eof do
            Begin
              cdsInvoiceShipTo.Insert;
              cdsInvoiceShipToReference.AsString :=
                sq_GetShipToAddressReference.AsString;
              cdsInvoiceShipToInternalInvoiceNo.AsInteger :=
                cdsInvoiceHeadInternalInvoiceNo.AsInteger;
              cdsInvoiceShipToShippingPlanNo.AsInteger :=
                sq_GetShipToAddressShippingPlanNo.AsInteger;
              cdsInvoiceShipToAddressNo.AsInteger :=
                sq_GetShipToAddressAddressNo.AsInteger;
              cdsInvoiceShipTo.Post;
              sq_GetShipToAddress.Next;
            End;

            sq_GetShipToAddress.Close;

            // ADD FREIGHT COST IN TO  INVOICE DETAIL if Booking exist for current ShippingPlanNo Number
            AddFreigthCost_II;

            sq_LONoInInvoice.Next;
          End; // While not sq_LONoInInvoice.eof

          CalcAndUpdateNetProductValueInInvoiceDetail;

          Summarize(Sender);
          if cdsInvoiceLO.ChangeCount > 0 then
          Begin
            cdsInvoiceLO.ApplyUpdates(0);
            cdsInvoiceLO.CommitUpdates;
          End;

          if cdsInvoiceDetail.ChangeCount > 0 then
          Begin
            cdsInvoiceDetail.ApplyUpdates(0);
            cdsInvoiceDetail.CommitUpdates;
          End;

          if cdsInvoiceShipTo.ChangeCount > 0 then
          Begin
            cdsInvoiceShipTo.ApplyUpdates(0);
            cdsInvoiceShipTo.CommitUpdates;
          End;

   //       dmsConnector.Commit;
        Except
     //     dmsConnector.Rollback;
          Exit;
        End;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }

        sq_LONoInInvoice.Close;
        sq_LONoInInvoice.ParamByName('InternalInvoiceNo').AsInteger :=
          cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        sq_LONoInInvoice.Open;
        sq_LONoInInvoice.First;
        cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
          sq_LONoInInvoiceShippingPlanNo.AsString; // LO_String[0] ;
        cdsInvoiceLO.Filtered := True;
        cdsInvoiceDetail.Filter := 'InternalInvoiceNo = ' +
          cdsInvoiceHeadInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
          sq_LONoInInvoiceShippingPlanNo.AsString; // LO_String[0] ;

        cdsInvoiceDetail.Filtered := True;

        TabControl1.Tabs.Clear;

        sq_LONoInInvoice.First;
        While not sq_LONoInInvoice.Eof do
        Begin
          TabControl1.Tabs.Add(sq_LONoInInvoiceShippingPlanNo.AsString);
          sq_LONoInInvoice.Next;
        End;

        NewInvoice := True;

      Finally
        { if cdsInvoiceHead.Active then
          cdsInvoiceHead.EmptyDataSet ;
          if cdsInvoiceLO.Active then
          cdsInvoiceLO.EmptyDataSet ;
          if cdsInvoiceDetail.Active then
          cdsInvoiceDetail.EmptyDataSet ;
          if cdsInvoiceShipTo.Active then
          cdsInvoiceShipTo.EmptyDataSet ;

          cdsInvoiceHead.Active:= False ;

          sq_InvoiceDetail.Close ;
          cdsInvoiceLO.Filtered:= False ;
          cdsInvoiceLO.Active:= False ;
          cdsInvoiceDetail.Filtered:= False ;
          cdsInvoiceDetail.Filter:= '';
          cdsInvoiceDetail.Active:= False ;
          cdsInvoiceShipTo.Active:= False ; }
        // grdcxAvropDBBandedTableView1.Controller.ClearSelection ;
        // cxDBRichEdit3.Free ;
      End;
    End; //

  Finally
    // if DeleteTdmVidaInvoice = True then
    // FreeAndNil(dmVidaInvoice) ;//.Free ;

    // LockWindowUpdate(0);
    // daMoLM1.RefreshAvropLoads;
    // sq_LONoInInvoice.Active := False ;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End; // Finally
  // End  // if CompareSelectedRows = 1 then
  // else
  // if SelectedRows <> -1 then
  // ShowMessage('Inget avrop valt.') ;
End;

procedure TfrmInvoice.Medkvalitet1Click(Sender: TObject);
begin
  dmVidaInvoice.PrepareExportFiles(lInvoiceNo.Caption,
    dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger, 1 { No "C" } ,
    1 { with grade } );
end;

procedure TfrmInvoice.Medkvalitet2Click(Sender: TObject);
begin
  dmVidaInvoice.PrepareExportFiles(lInvoiceNo.Caption,
    dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger, 0 { No "C" } ,
    1 { without grade } );
end;

procedure TfrmInvoice.acGroupByBoxExecute(Sender: TObject);
begin
  grdPackageSpecDBTableView1.OptionsView.GroupByBox :=
    not grdPackageSpecDBTableView1.OptionsView.GroupByBox;
end;

procedure TfrmInvoice.acGroupBySummaryExecute(Sender: TObject);
begin
  if grdPackageSpecDBTableView1.OptionsView.GroupFooters = gfInvisible then
    grdPackageSpecDBTableView1.OptionsView.GroupFooters := gfAlwaysVisible
  else
    grdPackageSpecDBTableView1.OptionsView.GroupFooters := gfInvisible;
end;

procedure TfrmInvoice.eSearchPkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(Trim(eSearchPkgNo.Text), 0) < 10 then
    Exit;
  with dmVidaInvoice do
  Begin
    if (cds_LoadPackages.Active) then
    Begin
      if cds_LoadPackages.Locate('PACKAGENO',
        StrToIntDef(Trim(eSearchPkgNo.Text), 0), []) then
      Begin
        // grdPackageSpec.SetFocus ;
        if pcSPEC.ActivePage = tsKortSkeppSpec then
          AddSPECPkg
        else
        Begin
          if cds_IH_SpecLoadLIPNo.AsInteger > 1 then
            AddLagerPkg
          else
            ShowMessage('Inventory group is missing.');
        End;
        eSearchPkgNo.Text := '';
      End;
    End; // If active...
  End; // With
end;

procedure TfrmInvoice.AddLagerPkg;
Var
  PkgNo, x: Integer;
begin
  with dmVidaInvoice do
  Begin
    cds_LoadPackagesIII.Insert;
    For x := 0 to cds_LoadPackages.FieldCount - 1 do
    Begin
      cds_LoadPackagesIII.Fields.Fields[x].AsVariant :=
        cds_LoadPackages.Fields.Fields[x].AsVariant;
    End;
    cds_LoadPackagesIIINoOfPackages.AsInteger := 2;
    cds_LoadPackagesIIIInternalInvoiceNo.AsInteger :=
      cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    cds_LoadPackagesIIIPIPNo.AsInteger := cds_IH_SpecLoadPIPNo.AsInteger;
    cds_LoadPackagesIIILIPNo.AsInteger := cds_IH_SpecLoadLIPNo.AsInteger;
    PkgNo := cds_LoadPackagesPackageNo.AsInteger;
    cds_LoadPackagesIII.Post;

    cds_LoadPackages.Delete;

    cds_LoadPackages.SetKey;
    cds_LoadPackages.FieldByName('PackageNo').AsInteger := PkgNo;
    cds_LoadPackages.GotoNearest;
  End;
end;

procedure TfrmInvoice.AddSPECPkg;
Var
  PkgNo, x: Integer;
begin
  with dmVidaInvoice do
  Begin
    cds_LoadPackagesII.Insert;
    For x := 0 to cds_LoadPackagesII.FieldCount - 1 do
    Begin
      cds_LoadPackagesII.Fields.Fields[x].AsVariant :=
        cds_LoadPackages.Fields.Fields[x].AsVariant;
    End;
    cds_LoadPackagesIINoOfPackages.AsInteger := 2;
    PkgNo := cds_LoadPackagesPackageNo.AsInteger;
    cds_LoadPackagesII.Post;
    cds_LoadPackages.Delete;

    cds_LoadPackages.SetKey;
    cds_LoadPackages.FieldByName('PackageNo').AsInteger := PkgNo;
    cds_LoadPackages.GotoNearest;
  End;
end;

procedure TfrmInvoice.acSpecFaltValjareExecute(Sender: TObject);
begin
  if grdPackageSpec.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdPackageSpec.FocusedView.Controller) do
    begin
      Customization := True;
      CustomizationForm.AlphaBlendValue := 255;
      CustomizationForm.AlphaBlend := True;
    end;
end;

procedure TfrmInvoice.acAddPkgExecute(Sender: TObject);
// Var x : Integer ;
begin
  AddPkgsToSPEC(1);

  { with dmVidaInvoice do
    Begin
    cds_LoadPackagesII.Insert ;
    For x := 0 to cds_LoadPackagesII.FieldCount - 1 do
    Begin
    cds_LoadPackagesII.Fields.Fields[x].AsVariant:= cds_LoadPackages.Fields.Fields[x].AsVariant ;
    End ;
    cds_LoadPackagesIINoOfPackages.AsInteger:= 2 ;
    cds_LoadPackagesII.Post ;
    cds_LoadPackages.Delete ;
    End ; }
end;

procedure TfrmInvoice.acRemovePkgExecute(Sender: TObject);
Var
  x: Integer;
begin
  with dmVidaInvoice do
  Begin
    if cds_LoadPackagesIINoOfPackages.AsInteger = 2 then
    Begin
      cds_LoadPackages.Insert;
      For x := 0 to cds_LoadPackages.FieldCount - 1 do
      Begin
        cds_LoadPackages.Fields.Fields[x].AsVariant :=
          cds_LoadPackagesII.Fields.Fields[x].AsVariant;
      End;
      cds_LoadPackages.Post;
      cds_LoadPackagesII.Delete;
    End; // if
  End;
end;

procedure TfrmInvoice.acAddPkgUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acAddPkg.Enabled := (cds_LoadPackages.Active) and
      (cds_LoadPackages.RecordCount > 0);
  End;
end;

procedure TfrmInvoice.acRemovePkgUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acRemovePkg.Enabled := (cds_LoadPackagesII.Active) and
      (cds_LoadPackagesII.RecordCount > 0) and
      (cds_LoadPackagesIINoOfPackages.AsInteger = 2);
    tePkgNo.Enabled := acRemovePkg.Enabled;
  End;
end;

procedure TfrmInvoice.grdPackageSpecDBTableView1DblClick(Sender: TObject);
begin
  if pcSPEC.ActivePage = tsKortSkeppSpec then
    AddSPECPkg
  else if dmVidaInvoice.cds_IH_SpecLoadLIPNo.AsInteger > 1 then
    AddLagerPkg
  else
    ShowMessage('Inventory group is missing.');
end;

procedure TfrmInvoice.grdSelectedPkgsDBTableView1DblClick(Sender: TObject);
begin
  acRemovePkgExecute(Sender);
end;

procedure TfrmInvoice.grdSelectedPkgsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  NoOfPackages: Integer;
Begin
  if not ARecord.IsData then
    Exit;

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('NoOfPackages').Index] <> null then
    NoOfPackages := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('NoOfPackages').Index];

  if NoOfPackages = 2 then
    AStyle := cxStyleRed;

end;

procedure TfrmInvoice.acAddPkgToInventoryExecute(Sender: TObject);
Var
  x: Integer;
begin
  AddPkgsToSPEC(0); // 0 ej till spec

  { with dmVidaInvoice do
    Begin
    cds_LoadPackagesIII.Insert ;
    For x := 0 to cds_LoadPackages.FieldCount - 1 do
    Begin
    cds_LoadPackagesIII.Fields.Fields[x].AsVariant:= cds_LoadPackages.Fields.Fields[x].AsVariant ;
    End ;
    cds_LoadPackagesIIINoOfPackages.AsInteger       := 2 ;
    cds_LoadPackagesIIIInternalInvoiceNo.AsInteger  := cdsInvoiceHeadInternalInvoiceNo.AsInteger ;
    cds_LoadPackagesIIIPIPNo.AsInteger              := cds_IH_SpecLoadPIPNo.AsInteger ;
    cds_LoadPackagesIIILIPNo.AsInteger              := cds_IH_SpecLoadLIPNo.AsInteger ;
    cds_LoadPackagesIII.Post ;
    cds_LoadPackages.Delete ;
    End ; }
end;

procedure TfrmInvoice.acRegretAddPkgToInventoryExecute(Sender: TObject);
Var
  x: Integer;
begin
  with dmVidaInvoice do
  Begin
    if cds_LoadPackagesIIINoOfPackages.AsInteger = 2 then
    Begin
      cds_LoadPackages.Insert;
      For x := 0 to cds_LoadPackages.FieldCount - 1 do
      Begin
        cds_LoadPackages.Fields.Fields[x].AsVariant :=
          cds_LoadPackagesIII.Fields.Fields[x].AsVariant;
      End;
      cds_LoadPackages.Post;
      cds_LoadPackagesIII.Delete;
    End; // if
  End;
end;

procedure TfrmInvoice.acRegretAddPkgToInventoryUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acRegretAddPkgToInventory.Enabled := (cds_LoadPackagesIII.Active) and
      (cds_LoadPackagesIII.RecordCount > 0) and
      (cds_LoadPackagesIIINoOfPackages.AsInteger = 2);
  End;
end;

procedure TfrmInvoice.acAddPkgToInventoryUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acAddPkgToInventory.Enabled := (cds_LoadPackages.Active) and
      (cds_LoadPackages.RecordCount > 0) and
      ((cds_IH_SpecLoad.Active) and (cds_IH_SpecLoadLIPNo.AsInteger > 0));
  End;
end;

procedure TfrmInvoice.grdToInventoryDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  NoOfPackages: Integer;
Begin
  if not ARecord.IsData then
    Exit;

  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName
    ('NoOfPackages').Index] <> null then
    NoOfPackages := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('NoOfPackages').Index];

  if NoOfPackages = 2 then
    AStyle := cxStyleRed;

end;

procedure TfrmInvoice.grdToInventoryDBTableView1DblClick(Sender: TObject);
begin
  acRegretAddPkgToInventoryExecute(Sender);
end;

procedure TfrmInvoice.acMarkAllRowsExecute(Sender: TObject);
begin
  grdPackageSpecDBTableView1.Controller.SelectAll;
end;

procedure TfrmInvoice.grdPackageSpecDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with dmVidaInvoice do
  Begin
    if (Key = 32) and (cds_LoadPackages.Active) and
      (cds_LoadPackages.RecordCount > 0) then
    Begin
      if pcSPEC.ActivePage = tsKortSkeppSpec then
        AddSPECPkg
      else if dmVidaInvoice.cds_IH_SpecLoadLIPNo.AsInteger > 1 then
        AddLagerPkg
      else
        ShowMessage('Inventory group is missing.');
    End; // if (Key = 32) and (cds_LoadPackages.Active) and (cds_LoadPackages.RecordCount > 0) then
  End; // With
end;

procedure TfrmInvoice.acSpecGroupByLoadNoExecute(Sender: TObject);
var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  FormCRViewReport := TFormCRViewReport.Create(Nil);
  Try
    SetLength(A, 1);
    A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    FormCRViewReport.CreateCo('SPECIFICATION_SV_GrpLast_VER2.rpt', A);
    if FormCRViewReport.ReportFound then
    Begin
      FormCRViewReport.ShowModal;
    End;
  Finally
    FreeAndNil(FormCRViewReport); // .Free ;
  End;
end;

procedure TfrmInvoice.CheckValueExistInRows;
Begin
  with dmVidaInvoice do
  Begin
    cdsInvoiceDetail.First;
    While not cdsInvoiceDetail.Eof do
    Begin
      // SUM Product details
      // kolla varför värde inte skapas i snabbfaktura
      if cdsInvoiceDetailProductValue.AsFloat = 0 then
        ShowMessage('Value is missing in row ' + cdsInvoiceDetailInvoiceDetailNo.
          AsString + '.  Product: ' + cdsInvoiceDetailProductDescription.
          AsString);
      cdsInvoiceDetail.Next;
    End;
  End; // With
End;

procedure TfrmInvoice.grdFakturaDBTableView1Editing
  (Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
Var
  x: Integer;
begin
  with dmVidaInvoice do
  Begin
    // if ((cdsInvoiceHead.Active) and (cdsInvoiceHeadInvoiced.AsInteger <> 1))
    // and

    { if (cdsInvoiceHead.Active)
      and ((cdsInvoiceHeadQuickInvoice.AsInteger = 0) and (cdsInvoiceHeadInvoiced.AsInteger <> 1) // (not Invoiced)
      and (cdsInvoiceDetailShippingPlanNo.AsInteger > 0))
      and  ((cdsInvoiceDetailTypeOfRow.AsInteger <> 2)  and (cdsInvoiceHeadInvoiced.AsInteger <> 1)) then //(not Invoiced)) then
    }

    if ThisUser.UserID = 8 then
    Begin
      AAllow := True;
      grdFakturaDBTableView1Price.Properties.ReadOnly := False;
      grdFakturaDBTableView1PriceUnit.Properties.ReadOnly := False;
      grdFakturaDBTableView1ProductValue.Properties.ReadOnly := False;
      grdFakturaDBTableView1Volume_OrderUnit.Properties.ReadOnly := False;
      grdFakturaDBTableView1NoOfPkgs.Properties.ReadOnly := False;
      grdFakturaDBTableView1ActualNetM3.Properties.ReadOnly := False;
      grdFakturaDBTableView1NominalM3.Properties.ReadOnly := False;
      grdFakturaDBTableView1LinealMeter.Properties.ReadOnly := False;
      grdFakturaDBTableView1NoOfPieces.Properties.ReadOnly := False;
      grdFakturaDBTableView1intNM3.Properties.ReadOnly := False;
    End
    else
    Begin
      if (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      Begin
        AAllow := False;
      End // if (cdsInvoiceHeadInvoiced.AsInteger = 1) then
      else
      Begin
        if (dmVidaInvoice.cdsInvoiceHeadQuickInvoice.AsInteger = 1) OR
          (dmVidaInvoice.cdsInvoiceHeadDelKredit.AsInteger = 1)
        // (cdsInvoiceDetailTypeOfRow.AsInteger = 1) or
          OR ((cdsInvoiceDetailTypeOfRow.AsInteger = 2) or
          (cdsInvoiceDetailTypeOfRow.AsInteger = 3)) then
        Begin
          AAllow := True;
          grdFakturaDBTableView1Price.Properties.ReadOnly := False;
          grdFakturaDBTableView1PriceUnit.Properties.ReadOnly := False;
          grdFakturaDBTableView1ProductValue.Properties.ReadOnly := False;
          grdFakturaDBTableView1Volume_OrderUnit.Properties.ReadOnly := False;
          grdFakturaDBTableView1NoOfPkgs.Properties.ReadOnly := False;
          grdFakturaDBTableView1ActualNetM3.Properties.ReadOnly := False;
          grdFakturaDBTableView1NominalM3.Properties.ReadOnly := False;
          grdFakturaDBTableView1LinealMeter.Properties.ReadOnly := False;
          grdFakturaDBTableView1NoOfPieces.Properties.ReadOnly := False;
          grdFakturaDBTableView1NoOfPieces.Properties.ReadOnly := False;
        End
        else
        Begin
          AAllow := True;
          grdFakturaDBTableView1Price.Properties.ReadOnly := True;
          grdFakturaDBTableView1PriceUnit.Properties.ReadOnly := True;
          grdFakturaDBTableView1ProductValue.Properties.ReadOnly := True;
          grdFakturaDBTableView1Volume_OrderUnit.Properties.ReadOnly := True;
          grdFakturaDBTableView1NoOfPkgs.Properties.ReadOnly := True;
          grdFakturaDBTableView1ActualNetM3.Properties.ReadOnly := True;
          grdFakturaDBTableView1NominalM3.Properties.ReadOnly := True;
          grdFakturaDBTableView1LinealMeter.Properties.ReadOnly := True;
          grdFakturaDBTableView1NoOfPieces.Properties.ReadOnly := True;
          grdFakturaDBTableView1intNM3.Properties.ReadOnly := True;
        End;
      End;

    End;

    if (ThisUser.UserID = 8) then
      grdFakturaDBTableView1InclInPrice.Properties.ReadOnly := False
    else if cdsInvoiceDetailTypeOfRow.AsInteger = 1 then
      grdFakturaDBTableView1InclInPrice.Properties.ReadOnly := True;

  End; // with dmVidaInvoice do
end;

procedure TfrmInvoice.acAddRowUpdate(Sender: TObject);
begin
  // acAddRow.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acAddRow.Enabled := ((cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1)) or (ThisUser.UserID = 8);
  End;
end;

procedure TfrmInvoice.acRemoveRowUpdate(Sender: TObject);
begin
  // acRemoveRow.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acRemoveRow.Enabled := ((cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1)) or (ThisUser.UserID = 8);
  End;
end;

procedure TfrmInvoice.acAddShipToAdrUpdate(Sender: TObject);
begin
  // acAddShipToAdr.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acAddShipToAdr.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and
      ((cdsInvoiceDetail.Active) and (cdsInvoiceDetail.RecordCount > 0));
  End;
end;

procedure TfrmInvoice.acRemoveShipToAdrUpdate(Sender: TObject);
begin
  // acRemoveShipToAdr.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acRemoveShipToAdr.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and
      (cdsInvoiceShipToAddress.Active) and
      ((cdsInvoiceShipToAddress.RecordCount > 0) or
      (cdsInvoiceShipToAddress.State in [dsInsert, dsEdit]));
  End;
end;

procedure TfrmInvoice.acAddTabUpdate(Sender: TObject);
begin
  // acAddTab.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acAddTab.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1);
  End;
end;

procedure TfrmInvoice.acCopyInvoiceRowUpdate(Sender: TObject);
begin
  // acCopyInvoiceRow.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acCopyInvoiceRow.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1);
  End;
end;

procedure TfrmInvoice.acGetInvoiceNoUpdate(Sender: TObject);
begin
  // acGetInvoiceNo.Enabled:= not Invoiced ;
  with dmVidaInvoice do
  Begin
    acGetInvoiceNo.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and (InvoiceSaved);
  End;
end;

procedure TfrmInvoice.acMarkAllRowsUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acMarkAllRows.Enabled := (cds_LoadPackages.Active) and
      (cds_LoadPackages.RecordCount > 1);
  End;
end;

procedure TfrmInvoice.Frhandsgranskaklientfaktura1Click(Sender: TObject);
var
  ReportName: String;
  promptUser: OleVariant;
  numberOfCopy: OleVariant;
  collated: OleVariant;
  PrinterSetup: Integer;
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  DocTyp, RoleType, ClientNo: Integer;
  Params: TCMParams;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  DocTyp := cFaktura;
  ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;
  if uReportController.useFR then begin

    Params := TCMParams.Create();
    Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

    RC := TCMReportController.Create;
    RoleType := -1;

    Try
      RC.RunReport(0, ClientNo, RoleType, DocTyp, Params, frPreview);
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    End;
  end
  else begin
    dmsContact.GetClientDocPrefs(clientNo, DocTyp, ReportName, numberOfCopy,
                                  promptUser, collated, PrinterSetup);
    if (Length(ReportName) < 4) then Begin
      ShowMessage('The report is not assigned to the client.');
      Exit;
    End; // if

    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRViewReport.CreateCo(ReportName, A);
      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmInvoice.tePkgNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  x: Integer;
begin
  if Key <> VK_RETURN then
    Exit;
  if StrToIntDef(Trim(tePkgNo.Text), 0) < 10 then
    Exit;
  with dmVidaInvoice do
  Begin
    if (cds_LoadPackages.Active) then
      if cds_LoadPackagesII.Locate('PACKAGENO', StrToIntDef(Trim(tePkgNo.Text),
        0), []) then
      Begin
        if cds_LoadPackagesIINoOfPackages.AsInteger = 2 then
        Begin
          cds_LoadPackages.Insert;
          For x := 0 to cds_LoadPackages.FieldCount - 1 do
          Begin
            cds_LoadPackages.Fields.Fields[x].AsVariant :=
              cds_LoadPackagesII.Fields.Fields[x].AsVariant;
          End;
          cds_LoadPackages.Post;
          cds_LoadPackagesII.Delete;
          tePkgNo.Text := '';
        End; // if cds_LoadPackagesIINoOfPackages.AsInteger = 2 then
      End // if cds_LoadPackagesII.Locate('PACKAGENO', StrToIntDef(Trim(tePkgNo.Text),0), []) then
      else
        ShowMessage('Cannot find package number ' + tePkgNo.Text);
  End; // with dmVidaInvoice do
End;

procedure TfrmInvoice.lcSalesmanPropertiesChange(Sender: TObject);
begin
  { With dmVidaInvoice do
    Begin
    if cdsInvoiceLO.Active then
    Begin
    if cdsInvoiceLO.State in [dsBrowse] then
    cdsInvoiceLO.Edit ;
    cdsInvoiceLOSalesMan.AsString:= dmsContact.GetFullUserName(cdsInvoiceHeadResponsibleSeller.AsInteger) ;
    cdsInvoiceLO.Post ;
    End ;
    End ; }
end;

procedure TfrmInvoice.acEmailaTrpBrevExecute(Sender: TObject);
{
  const
    LF = #10;
}
{
  Var
    FormCRExportOneReport: TFormCRExportOneReport;
    A: array of variant;
    dm_SendMapiMail: Tdm_SendMapiMail;
    Attach: array of String;
    MailToAddress: String;
    x: Integer;
}
begin
  With dmVidaInvoice do
  Begin
    EmailaTrpBrevExecute(cdsInvoiceHeadInternalInvoiceNo.AsInteger,
      StrToIntDef(lInvoiceNo.Caption, 0),
      cdsInvoiceHeadCustomerNo.AsInteger,
      StrToIntDef(TabControl1.Tabs[TabControl1.TabIndex], 0),
      cdsInvoiceLOOrderNoText.AsString);

    // EmailaTrpBrevExecute(const IntInvNo, InvoiceNo, CustomerNo, LONo : Integer) ;
  End;
end;

procedure TfrmInvoice.acExportInvoiceSpecWoodxExecute(Sender: TObject);
begin
  dmVidaInvoice.ExportInvoiceSpecWoodxExecute
    (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
    lInvoiceNo.Caption);
  // ExportInvoiceSpecWoodxExecute(const IntInvNo : Integer;const InvoiceNo : String) ;
end;

procedure TfrmInvoice.acSummarizeUpdate(Sender: TObject);
begin
  // acSummarize.Enabled:= not Invoiced ;

  with dmVidaInvoice do
  Begin
    acSummarize.Enabled := ((cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1)) or (ThisUser.UserID = 8);
  End;

end;

procedure TfrmInvoice.acPrintMenyExecute(Sender: TObject);
begin
  pmPrint.Popup(300, 200);
end;

procedure TfrmInvoice.acExportmenyExecute(Sender: TObject);
begin
  pmExport.Popup(400, 200);
end;

procedure TfrmInvoice.acKundSpecifikaExecute(Sender: TObject);
var
  fAddKundSpecifika: TfAddKundSpecifika;
begin
  with dmVidaInvoice do
  Begin
    dmsSystem.Open_ClientPrefDocs;
    fAddKundSpecifika := TfAddKundSpecifika.Create(nil);
    try
      if fAddKundSpecifika.ShowModal = mrOk then
        PrintKundSpecifikFaktura(dmsSystem.cdsClientPrefDocsRAPPORT.AsString);
    finally
      FreeAndNil(fAddKundSpecifika);
      dmsSystem.Close_ClientPrefDocs;
    end;
  End; // With
end;

procedure TfrmInvoice.PrintKundSpecifikFaktura(const RapportNamn: String);
Var
  FormCRViewReport: TFormCRViewReport;
  A: array of variant;
  RC: TCMReportController;
  Params: TCMParams;
begin
  if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
    Exit;

  if uReportController.useFR then begin

    Params := TCMParams.Create();
    Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.
      AsInteger);

    RC := TCMReportController.Create;
    Try
      RC.RunReport(RapportNamn, Params, frPreview,0);    // Any.fr3
    Finally
      FreeAndNil(Params);
      FreeAndNil(RC);
    End;
  end
  else begin
    FormCRViewReport := TFormCRViewReport.Create(Nil);
    Try
      SetLength(A, 1);
      A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
      FormCRViewReport.CreateCo(RapportNamn, A);

      if FormCRViewReport.ReportFound then Begin
        FormCRViewReport.ShowModal;
      End;
    Finally
      FreeAndNil(FormCRViewReport);
    End;
  end;
end;

procedure TfrmInvoice.acSaveUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acSave.Enabled := not InvoiceSaved;
  End;
end;

// Kollar om fakturan är med moms och sätter fältet
// cdsInvoiceHeadMoms
procedure TfrmInvoice.DetermineIfInvoiceIsWithMoms;
Begin
  with dmVidaInvoice do
  Begin
    if cdsInvoiceHead.Active = False then
      Exit;

    if cdsInvoiceHead.State = dsBrowse then
      cdsInvoiceHead.Edit;

    // Calculate VAT if Country is SWEDEN and cbVAT (Skatteupplag) checked
    if ((Trim(cdsInvoiceHeadCountryName.AsString) = 'SWEDEN') and
      ((cdsInvoiceHeadSupplierNo.AsInteger = VIDA_WOOD_COMPANY_NO) OR
      (cdsInvoiceHeadSupplierNo.AsInteger = VIDA_BORGSTENA_BOTLR)
      OR (cdsInvoiceHeadSupplierNo.AsInteger = cVidaPackaging))

      OR (Trim(cdsInvoiceHeadCountryName.AsString) = 'DENMARK') and
      (cdsInvoiceHeadSupplierNo.AsInteger = VIDA_DANMARK))

      OR (cdsInvoiceHeadSpecialMoms.AsInteger = 1) then
    Begin
      if (cbVAT.Checked = False) or (cdsInvoiceHeadSpecialMoms.AsInteger = 1)
      then
      Begin
        cdsInvoiceHeadMoms.AsInteger := 1;
      End
      else
      Begin
        cdsInvoiceHeadMoms.AsInteger := 0;
      End;
    End
    else
      cdsInvoiceHeadMoms.AsInteger := 0;

    // Calculate VAT if Country is Denmark and cbVAT (Skatteupplag) checked
    { if (Trim(cdsInvoiceHeadCountryName.AsString) = 'DENMARK') and (cdsInvoiceHeadSupplierNo.AsInteger = VIDA_DANMARK)
      OR (cdsInvoiceHeadSpecialMoms.AsInteger = 1) then
      Begin
      if (cbVAT.Checked = False) or (cdsInvoiceHeadSpecialMoms.AsInteger = 1) then
      Begin
      cdsInvoiceHeadMoms.AsInteger := 1 ;
      End
      else
      Begin
      cdsInvoiceHeadMoms.AsInteger := 0 ;
      End ;
      End  ; }

    // Save to InvoiceHeader table
    cdsInvoiceHead.Post;
  End; // with
End;

procedure TfrmInvoice.acEDIExecute(Sender: TObject);
begin
  if MessageDlg('Do you want to send the invoice as a EDI message to the customer?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    dmVidaInvoice.SendInvoiceAsEDI
      (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  End;
end;

procedure TfrmInvoice.acEMailaFakturaSpecTillKundOchAgentExecute
  (Sender: TObject);
const
  LF = #10;
Var
  FormCRExportOneReport: TFormCRExportOneReport;
  A: array of variant;
  dm_SendMapiMail: Tdm_SendMapiMail;
  Attach: array of String;
  MailToAddress, AgentMailToAddress, InvoiceNo: String;
  RC: TCMReportController;
  DocTyp,
  RoleType,
  ClientNo: integer;
  Params: TCMParams;
  ExportInvoiceFile: string;
  ExportSpecFile: string;
begin
  InvoiceNo := intToStr(dmVidaInvoice.GetInvoiceNo
    (dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInvoiceType.AsInteger));
  MailToAddress := dmsContact.GetEmailAddress
    (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger);
  AgentMailToAddress := dmsContact.GetEmailAddress
    (dmVidaInvoice.cdsInvoiceHeadAgentNo.AsInteger);
  if Length(AgentMailToAddress) > 0 then
    MailToAddress := MailToAddress + ';' + AgentMailToAddress;
  if Length(MailToAddress) > 0 then Begin
    if dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger < 1 then
      Exit;
    ExportInvoiceFile := ExcelDir + 'InvoiceNo ' + InvoiceNo + '.pdf';
    ExportSpecFile := ExcelDir + 'Specification ' + InvoiceNo + '.pdf';
    ClientNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;

    if uReportController.useFR then begin

      Params := TCMParams.Create();
      Params.Add('@INVOICENO', dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);

      RC := TCMReportController.Create;
      RoleType := -1;

      Try
        RC.setExportFile(ExportInvoiceFile);
        RC.RunReport(0, ClientNo, RoleType, cFaktura, Params, frFile);
        RC.setExportFile(ExportSpecFile);
        RC.RunReport(0, ClientNo, RoleType, cPkgSpec, Params, frFile);
      Finally
        FreeAndNil(Params);
        FreeAndNil(RC);
      End;
      if not (FileExists(ExportInvoiceFile) and FileExists(ExportSpecFile)) then begin
        ShowMessage('The report files were not created.');
        Exit;
      end;
    end
    else begin
      FormCRExportOneReport := TFormCRExportOneReport.Create(Nil);
      Try
        SetLength(A, 1);
        A[0] := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
        // const ClientNo, DocTyp : Integer;const A: array of variant);
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cFaktura, A, ExcelDir + 'InvoiceNo '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;
        // FormCRExportOneReport.CreateCo(dmVidaInvoice.cdsInvoiceListCustomerNo.AsInteger, cPkgSpec, A, ExcelDir + 'Specification '+dmVidaInvoice.cdsInvoiceListINVOICE_NO.AsString) ;

        FormCRExportOneReport.CreateCo
          (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cFaktura, A,
          ExcelDir + 'InvoiceNo ' + InvoiceNo);
        FormCRExportOneReport.CreateCo
          (dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger, cPkgSpec, A,
          ExcelDir + 'Specification ' + InvoiceNo);
      Finally
        FreeAndNil(FormCRExportOneReport); // .Free ;
      End;
    end;
    // ExtractFilePath(Forms.Application.ExeName) + '\'+ExportFile+'.pdf';

    SetLength(Attach, 2);

    Attach[0] := ExportInvoiceFile;
    Attach[1] := ExportSpecFile;

    // Attach[0]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'InvoiceNo '+InvoiceNo+'.pdf' ;
    // Attach[1]:= ExtractFilePath(Forms.Application.ExeName) + '\'+'Specification '+InvoiceNo+'.pdf' ;
    dm_SendMapiMail := Tdm_SendMapiMail.Create(nil);
    Try
      dm_SendMapiMail.SendMail('Faktura/paketspecifikation. Fakturanr: ' +
        InvoiceNo + ' - Invoice/package specification. InvoiceNo: ' + InvoiceNo,
        'Faktura och paketspecifikation bifogad. ' + LF + '' +
        'Invoice and package specification attached. ' + LF + '' + LF + '' + LF
        + 'MVH/Best Regards, ' + LF + '' + dmsContact.GetFirstAndLastName
        (ThisUser.UserID), dmsSystem.Get_Dir('MyEmailAddress'), MailToAddress,
        // 'lars.makiaho@falubo.se', //getinvoice emailaddress

        Attach, False);
    Finally
      FreeAndNil(dm_SendMapiMail);
    End;
  End
  else
    ShowMessage('Email address is missing for the client.');
end;

procedure TfrmInvoice.lcLIPEnter(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    if not cds_IH_SpecLoadPIPNo.isNull then
    Begin
      cds_LIP.Filter := 'PIPNo = ' + cds_IH_SpecLoadPIPNo.AsString;
      cds_LIP.Filtered := True;
      if cds_LIP.RecordCount = 1 then
        cds_IH_SpecLoadLIPNo.AsInteger := cds_LIPLIPNo.AsInteger
      else
        cds_IH_SpecLoadLIPNo.AsInteger := -1;
    End
    else
    Begin
      cds_LIP.Filter := 'PIPNo = -1';
      cds_LIP.Filtered := True;
      cds_IH_SpecLoadLIPNo.AsInteger := -1;
    End;
  End; // With
end;

procedure TfrmInvoice.lcLIPExit(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    cds_LIP.Filtered := False;
  End; // With
end;

procedure TfrmInvoice.FormDestroy(Sender: TObject);
begin
  if dmsSystem.DeleteAssigned('TfrmInvoice', 'dm_Booking') = True then
  Begin
    dm_Booking.Free;
    dm_Booking := Nil;
  End;
end;

procedure TfrmInvoice.acGetKontoNrExecute(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    // Sätter kontonr
    SetKontonr;
    if dmVidaInvoice.cdsInvoiceDetail.State in [dsEdit, dsInsert] then
      dmVidaInvoice.cdsInvoiceDetail.Post;
    if dmVidaInvoice.cdsInvoiceDetail.ChangeCount > 0 then
    Begin
      dmVidaInvoice.cdsInvoiceDetail.ApplyUpdates(0);
      dmVidaInvoice.cdsInvoiceDetail.CommitUpdates;
    End;
  End; // With

end;

procedure TfrmInvoice.acLenaExportExecute(Sender: TObject);
var
  fAccInv: TfAccInv;
begin
  fAccInv := TfAccInv.Create(nil);
  Try
    fAccInv.IntInvNo := dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger;
    fAccInv.teInvoiceNo.Text := lInvoiceNo.Caption;
    fAccInv.CustomerNo := dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger;
    fAccInv.AgentNo := dmVidaInvoice.cdsInvoiceHeadAgentNo.AsInteger;

    fAccInv.acRefreshExecute(Sender);
    fAccInv.ShowModal;
  Finally
    FreeAndNil(fAccInv);
  End;
end;

procedure TfrmInvoice.acLindaExportExecute(Sender: TObject);
begin
  dmVidaInvoice.PrepareLindaExcelFile(lInvoiceNo.Caption,
    dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger,
    dmVidaInvoice.cdsInvoiceHeadInternalInvoiceNo.AsInteger);
  // PrepareLindaExcelFile(const InvoiceNo : String;const CustomerNo, InternalInvoiceNo : Integer) ;
end;

End.
