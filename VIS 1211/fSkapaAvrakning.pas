unit fSkapaAvrakning;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls,
  Menus, SqlTimSt, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, fDBForm, dxBar,
  dxBarExtItems, cxCheckBox, cxSplitter, cxCurrencyEdit, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinsdxBarPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  System.Actions, siComp, siLngLnk;

type
  TfrmSkapaAvrakning = class(TForm)
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    pmLoadDetails: TPopupMenu;
    miPackageInfo: TMenuItem;
    ActionList1: TActionList;
    acCreatePayments: TAction;
    acChangeCustomer: TAction;
    acOpenLoad: TAction;
    acClose: TAction;
    Panel3: TPanel;
    acRefresh: TAction;
    acRemoveLoad: TAction;
    Panel2: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarDockControl2: TdxBarDockControl;
    dxBarLargeButton6: TdxBarLargeButton;
    imglistActions: TImageList;
    Panel6: TPanel;
    Panel1: TPanel;
    grdLoadRows: TcxGrid;
    grdLoadRowsDBTableView1: TcxGridDBTableView;
    grdLoadRowsDBTableView1LO: TcxGridDBColumn;
    grdLoadRowsDBTableView1END_CUSTOMER: TcxGridDBColumn;
    grdLoadRowsDBTableView1PACKAGE_NO: TcxGridDBColumn;
    grdLoadRowsDBTableView1LOADNO: TcxGridDBColumn;
    grdLoadRowsDBTableView1SUPPLIERCODE: TcxGridDBColumn;
    grdLoadRowsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn;
    grdLoadRowsDBTableView1PCS: TcxGridDBColumn;
    grdLoadRowsDBTableView1M3_NET: TcxGridDBColumn;
    grdLoadRowsDBTableView1M3_NOM: TcxGridDBColumn;
    grdLoadRowsDBTableView1PACKAGEOK: TcxGridDBColumn;
    grdLoadRowsDBTableView1PACKAGE_LOG: TcxGridDBColumn;
    grdLoadRowsDBTableView1LOAD_DETAILNO: TcxGridDBColumn;
    grdLoadRowsDBTableView1PRICE: TcxGridDBColumn;
    grdLoadRowsDBTableView1VALUE: TcxGridDBColumn;
    grdLoadRowsDBTableView1NOM_LINEAL_METER: TcxGridDBColumn;
    grdLoadRowsLevel1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel7: TPanel;
    grdLoads: TcxGrid;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsDBTableView1INITIALS: TcxGridDBColumn;
    grdLoadsDBTableView1VIS_FS: TcxGridDBColumn;
    grdLoadsDBTableView1MILL_FS: TcxGridDBColumn;
    grdLoadsDBTableView1LOAD_DATE: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPCODE: TcxGridDBColumn;
    grdLoadsDBTableView1INT_CUSTOMER: TcxGridDBColumn;
    grdLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn;
    grdLoadsDBTableView1SKATTE_UPPLAG: TcxGridDBColumn;
    grdLoadsDBTableView1SUPPLIER_NO: TcxGridDBColumn;
    grdLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn;
    grdLoadsLevel1: TcxGridLevel;
    Panel8: TPanel;
    grdLoadRowsDBTableView1NLMM: TcxGridDBColumn;
    grdLoadsDBTableView1PRISOK: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    acGetIntPrices: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    bbSavePrice: TBitBtn;
    acSavePrices: TAction;
    bbCancelPrice: TBitBtn;
    acCancelChangePrice: TAction;
    acConfirmLoads: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    grdLoadsDBTableView1Krediterad: TcxGridDBColumn;
    grdLoadRowsDBTableView1OldPrice: TcxGridDBColumn;
    acPrintAvrakning: TAction;
    grdLoadRowsDBTableView1ALMM: TcxGridDBColumn;
    Bytkund1: TMenuItem;
    StngF121: TMenuItem;
    GodknnlasterF31: TMenuItem;
    Skapaavrkning1: TMenuItem;
    UppdaterapriserShiftF61: TMenuItem;
    ppnalast1: TMenuItem;
    Skrivut1: TMenuItem;
    UppdateraF61: TMenuItem;
    abortlast1: TMenuItem;
    SparaprisShiftF31: TMenuItem;
    cds_Props: TFDQuery;
    cds_PropsUserID: TIntegerField;
    cds_PropsForm: TStringField;
    cds_PropsName: TStringField;
    cds_PropsVerkNo: TIntegerField;
    cds_PropsOwnerNo: TIntegerField;
    cds_PropsPIPNo: TIntegerField;
    cds_PropsLIPNo: TIntegerField;
    cds_PropsInputOption: TIntegerField;
    cds_PropsRegPointNo: TIntegerField;
    cds_PropsRegDate: TSQLTimeStampField;
    cds_PropsCopyPcs: TIntegerField;
    cds_PropsRunNo: TIntegerField;
    cds_PropsProducerNo: TIntegerField;
    cds_PropsAutoColWidth: TIntegerField;
    cds_PropsSupplierCode: TStringField;
    cds_PropsLengthOption: TIntegerField;
    cds_PropsLengthGroupNo: TIntegerField;
    cds_PropsNewItemRow: TIntegerField;
    cds_PropsSalesRegionNo: TIntegerField;
    cds_PropsMarketRegionNo: TIntegerField;
    cds_PropsOrderTypeNo: TIntegerField;
    cds_PropsStatus: TIntegerField;
    cds_PropsFilterOrderDate: TIntegerField;
    cds_PropsStartPeriod: TSQLTimeStampField;
    cds_PropsEndPeriod: TSQLTimeStampField;
    cds_PropsClientNo: TIntegerField;
    cds_PropsSalesPersonNo: TIntegerField;
    cds_PropsVerkSupplierNo: TIntegerField;
    cds_PropsVerkKundNo: TIntegerField;
    cds_PropsLOObjectType: TIntegerField;
    cds_PropsBarCodeNo: TIntegerField;
    cds_PropsGradeStampNo: TIntegerField;
    cds_PropsVolumeUnitNo: TIntegerField;
    cds_PropsLengthFormatNo: TIntegerField;
    cds_PropsLengthVolUnitNo: TIntegerField;
    cds_PropsGroupByBox: TIntegerField;
    cds_PropsGroupSummary: TIntegerField;
    cds_PropsAgentNo: TIntegerField;
    cds_PropsLoadingLocationNo: TIntegerField;
    cds_PropsShipperNo: TIntegerField;
    cds_PropsBookingTypeNo: TIntegerField;
    cds_PropsCustomerNo: TIntegerField;
    cds_PropsShowProduct: TIntegerField;
    cds_PropsMarknad: TStringField;
    cds_PropsKund: TStringField;
    cds_PropsSR: TStringField;
    cds_PropsSaljgrupp: TStringField;
    cds_PropsVerk: TStringField;
    ds_Props: TDataSource;
    lcVerk: TcxDBLookupComboBox;
    cxDBImageComboBox1: TcxDBImageComboBox;
    siLangLinked_frmSkapaAvrakning: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure miPackageInfoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acChangeCustomerExecute(Sender: TObject);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acRemoveLoadExecute(Sender: TObject);
    procedure acChangeCustomerUpdate(Sender: TObject);
    procedure acCreatePaymentsUpdate(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure grdLoadRowsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure acGetIntPricesExecute(Sender: TObject);
    procedure acSavePricesExecute(Sender: TObject);
    procedure acSavePricesUpdate(Sender: TObject);
    procedure acGetIntPricesUpdate(Sender: TObject);
    procedure acCancelChangePriceExecute(Sender: TObject);
    procedure acCancelChangePriceUpdate(Sender: TObject);
    procedure acConfirmLoadsExecute(Sender: TObject);
    procedure acPrintAvrakningExecute(Sender: TObject);
    procedure acConfirmLoadsUpdate(Sender: TObject);
    procedure cds_PropsVerkNoChange(Sender: TField);
    procedure cds_PropsStatusChange(Sender: TField);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    Old_LO_No, New_LO_No: Integer;
    TypeOfPayment: Integer;
    // fSupplierNo           : Integer ;
    New_CustomerNo: Integer;
    Old_CustomerNo: Integer;
    fLoadNo: Integer;
    Old_LogicalInventoryPointNo: Integer;

    procedure SaveUserProps(const Form: String);
    procedure LoadUserProps(const Form: String);
    procedure Build_Sold_Loads_SQL(Sender: TObject);
    // procedure Build_VW_SQL(Sender: TObject);
    // procedure Build_LegoLoads_SQL(Sender: TObject);
    procedure Build_PurchaseLoads_SQL(Sender: TObject);
    function CopySSP(Sender: TObject): Boolean;
    procedure ChangeRelatedChildTables(Sender: TObject;
      New_SupplierShipPlanObjectNo, Old_SupplierShipPlanObjectNo: Integer);
    function SSP_Exist(Var SupplierShipPlanObjectNo: Integer): Boolean;
    procedure ChangeCustomerInLoad(Sender: TObject);
    function ChangeInventoryLocationInPackages(Sender: TObject): Boolean;
    function GetNewCustomersInventoryPoint(Sender: TObject): Integer;
    function NoOfLoadsOnLO(Sender: TObject): Integer;
    Function ValidLoad: Boolean;
    function CustomerOnLoadsAreNotDuplicates(Sender: TObject): Boolean;
    function AreLoadsSameCredit(Sender: TObject): Boolean;
    function InsertTo_cdsPaymentLoads(const TypeOf, PaymentNo: Integer)
      : Boolean;
    function IsPriceOK(Sender: TObject): Boolean;
    Procedure RemoveLoads;
    Procedure UppdatePriceOnMarkedLoads;
    procedure CreatePackageSQL(const Customer: Boolean);
  public
    { Public declarations }
    Procedure CreateCo(const CompanyNo, TypeOfPayment: Integer);
  end;

var
  frmSkapaAvrakning: TfrmSkapaAvrakning;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils,
  dmsDataConn,
  dmsVidaContact,
  uSelectLIP,
  UnitPkgInfo,
  dmcVidaSystem,
  dmc_ArrivingLoads,
  dmsVidaSystem, dmcAvrakning, udmLanguage;

{$R *.dfm}

Procedure TfrmSkapaAvrakning.CreateCo(const CompanyNo, TypeOfPayment: Integer);
Var
  x: Integer;
begin
  self.TypeOfPayment := TypeOfPayment;

  dmsSystem.LoadGridLayout(ThisUser.UserID, self.Name + '/' + grdLoads.Name,
    grdLoadsDBTableView1);
  dmsSystem.LoadGridLayout(ThisUser.UserID, self.Name + '/' + grdLoadRows.Name,
    grdLoadRowsDBTableView1);

  LoadUserProps(self.Caption);

  cds_Props.Edit;
  cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo;
  cds_Props.Post;

  { bcCompany.Properties.OnChange:= nil ;
    Try
    dmsContact.LoadSuppliers(bcCompany.Properties.Items);

    if Thisuser.CompanyNo = VIDA_WOOD_COMPANY_NO then bcCompany.Enabled:= True ;

    For x:= 0 to bcCompany.Properties.Items.Count -1 do
    if ThisUser.CompanyNo = integer(bcCompany.Properties.Items.Objects[x]) then
    Begin
    bcCompany.ItemIndex:= x ;
    fSupplierNo:= integer(bcCompany.Properties.Items.Objects[x]);
    End ;

    if Thisuser.CompanyNo = VIDA_WOOD_COMPANY_NO then
    bcCompany.Properties.Items.Insert(0, 'ALLA');

    Finally
    bcCompany.Properties.OnChange:= bcCompanyPropertiesChange ;
    End ;
  }
end;

// droplista
{ 0 Utlaster med moms
  1 Utlaster utan moms
  2 Inlaster Lego
  3 Inlaster Köp }
procedure TfrmSkapaAvrakning.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSkapaAvrakning.Build_Sold_Loads_SQL(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    cdsArrivingLoads.Close;
    cdsArrivingLoads.SQL.Clear;
    cdsArrivingLoads.SQL.Add('SELECT DISTINCT');
    cdsArrivingLoads.SQL.Add
      ('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');
    cdsArrivingLoads.SQL.Add('US.INITIALS,');
    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,');

    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      INT_CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientNo                         AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientNo                      AS       SUPPLIER_NO,');
    cdsArrivingLoads.SQL.Add
      ('IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE_UPPLAG,');
    cdsArrivingLoads.SQL.Add
      ('  IsNull((Select Top 1 0 FROM dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add('  AND LDV.SupplierNo = SSP.SupplierNo');
    cdsArrivingLoads.SQL.Add('  AND LDV.Price = 0),1) AS PRISOK,');
    cdsArrivingLoads.SQL.Add('  isNull((SELECT Top 1 -1');
    cdsArrivingLoads.SQL.Add('FROM dbo.LastAvrDtl PL2');
    cdsArrivingLoads.SQL.Add('WHERE PL2.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND PL2.PaymentType = -1),1) AS Krediterad');

    { cdsArrivingLoads.SQL.Add('FROM dbo.Loads L 				-- ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON LSP.LoadNo = L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.SupplierShippingPlan       SSP   on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('AND SSP.ShiptoInvPointNo = LSP.ShipToInvPointNo') ;
      cdsArrivingLoads.SQL.Add('AND SSP.supplierno 		= L.SUPPLIERno') ;
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo 		= L.CustomerNo') ;
    }
    // cdsArrivingLoads.SQL.Add('INNER JOIN dbo.InternalOrderHead ioh on ioh.ShippingPlanNo = SSP.ShippingPlanNo') ;

    {
      cdsArrivingLoads.SQL.Add('FROM ') ;
      cdsArrivingLoads.SQL.Add('dbo.SupplierShippingPlan       SSP   	') ;     //ON CLL.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('						AND     L.supplierno 		= SSP.SUPPLIERno') ;
      cdsArrivingLoads.SQL.Add('						AND     L.CustomerNo 		= SSP.CustomerNo') ;
    }

    cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadDetail LD on LD.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo');
    cdsArrivingLoads.SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.SupplierShippingPlan       SSP   on SSP.SupplierShipPlanObjectNo = LD.DefsspNo');

    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName			ON	IName.CityNo=SSP.ShipToInvPointNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= L.CustomerNo');

    cdsArrivingLoads.SQL.Add
      ('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH');
    cdsArrivingLoads.SQL.Add
      (' INNER JOIN dbo.Orders O				ON	O.OrderNo		= CSH.OrderNo');
    cdsArrivingLoads.SQL.Add
      (' LEFT OUTER JOIN dbo.ClientPreference CP		ON	CP.ClientNo		= O.CustomerNo');
    cdsArrivingLoads.SQL.Add
      (' LEFT OUTER JOIN dbo.Address	A			ON	A.AddressNo = CSH.ClientBillingAddressNo');

    cdsArrivingLoads.SQL.Add('ON	CSH.ShippingPlanNo	= SSP.ShippingPlanNo');

    cdsArrivingLoads.SQL.Add('Inner Join dbo.Confirmed_Load   CL');
    cdsArrivingLoads.SQL.Add
      ('Left Outer join dbo.Users	US	ON	US.UserID = cl.CreatedUser');
    cdsArrivingLoads.SQL.Add('ON CL.Confirmed_LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo');
    cdsArrivingLoads.SQL.Add('AND CR.RoleType = 9');

    cdsArrivingLoads.SQL.Add('WHERE');
    cdsArrivingLoads.SQL.Add('L.LoadedDate > ' +
      QuotedStr('2012-06-01 00:00:00.000'));
    if cds_PropsVerkNo.AsInteger > 0 then
      cdsArrivingLoads.SQL.Add('AND SSP.SupplierNo  = ' +
        cds_PropsVerkNo.AsString);

    {
      0: Utlaster med moms
      1: Utlaster utan moms
      2: Inlaster Köp
      3: Interna mellan BTH och BTB
      4: Alla utlaster som saknar pris
      5: Alla inlaster som saknar pris }

    if (cds_PropsStatus.AsInteger = 3) AND (cds_PropsVerkNo.AsInteger = 2878)
    then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 172')
    else if (cds_PropsStatus.AsInteger = 3) AND (cds_PropsVerkNo.AsInteger = 172)
    then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 2878');

    if (cds_PropsStatus.AsInteger <> 3) AND (cds_PropsStatus.AsInteger <> 4)
    then
    Begin
      cdsArrivingLoads.SQL.Add
        ('AND ((SSP.CustomerNo  <> 172 AND SSP.CustomerNo <> 2878) OR ');
      cdsArrivingLoads.SQL.Add
        ('(SSP.CustomerNo  = 2878 AND SSP.SupplierNo <> 172) OR ');
      cdsArrivingLoads.SQL.Add
        ('(SSP.CustomerNo  = 172 AND SSP.SupplierNo <> 2878) OR ');
      cdsArrivingLoads.SQL.Add
        ('(SSP.CustomerNo  <> 2878 AND SSP.CustomerNo = 172))')
    End;

    if cds_PropsStatus.AsInteger = const_Utan_Moms then
    Begin
      cdsArrivingLoads.SQL.Add('AND  (SSP.ObjectType >= 2)');
      // Försäljning utom Sverige eller skatteupplag
      cdsArrivingLoads.SQL.Add
        ('AND ((  A.CountryNo <> 9  ) OR (CP.VAT_OnInvoice = 1))');
    End
    else
      // Laster med moms
      if cds_PropsStatus.AsInteger = const_Med_Moms then
      Begin
        cdsArrivingLoads.SQL.Add
          ('AND ( CP.VAT_OnInvoice = 0 and A.CountryNo = 9  )');
      End;

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');

    cdsArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LastAvr PL');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.LastAvrHdr PH on PH.PaymentNo = PL.PaymentNo');
    cdsArrivingLoads.SQL.Add('WHERE');
    cdsArrivingLoads.SQL.Add('PH.SupplierNo = SSP.SupplierNo');
    cdsArrivingLoads.SQL.Add('AND PL.LoadNo = L.LoadNo)');

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('IN (SELECT LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LoadDtlVal)');

    if cds_PropsStatus.AsInteger = 4 then
    Begin
      cdsArrivingLoads.SQL.Add('AND L.LoadNo in (Select LDV.LoadNo FROM');
      cdsArrivingLoads.SQL.Add
        ('dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add('AND LDV.SupplierNo = SSP.SupplierNo');
      cdsArrivingLoads.SQL.Add('AND LDV.Price = 0)');
    End;

    cdsArrivingLoads.SQL.Add('UNION');

    cdsArrivingLoads.SQL.Add('SELECT DISTINCT');
    cdsArrivingLoads.SQL.Add
      ('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');
    cdsArrivingLoads.SQL.Add('US.INITIALS,');
    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,');

    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      INT_CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientNo                         AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientNo                      AS       SUPPLIER_NO,');
    cdsArrivingLoads.SQL.Add
      ('IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE_UPPLAG,');
    cdsArrivingLoads.SQL.Add
      ('  IsNull((Select Top 1 0 FROM dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add('  AND LDV.SupplierNo = SSP.SupplierNo');
    cdsArrivingLoads.SQL.Add('  AND LDV.Price = 0),1) AS PRISOK,');
    cdsArrivingLoads.SQL.Add('  isNull((SELECT Top 1 -1');
    cdsArrivingLoads.SQL.Add('FROM dbo.LastAvrDtl PL2');
    cdsArrivingLoads.SQL.Add('WHERE PL2.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND PL2.PaymentType = -1),1) AS Krediterad');

    { cdsArrivingLoads.SQL.Add('FROM dbo.Loads L 				-- ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON LSP.LoadNo = L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('Inner Join dbo.SupplierShippingPlan       SSP   on SSP.ShippingPlanNo = LSP.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('AND SSP.ShiptoInvPointNo = LSP.ShipToInvPointNo') ;
      cdsArrivingLoads.SQL.Add('AND SSP.supplierno 		= L.SUPPLIERno') ;
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo 		= L.CustomerNo') ; }

    cdsArrivingLoads.SQL.Add('FROM dbo.Loads L');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadDetail LD on LD.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP ON LSP.LoadNo = LD.LoadNo');
    cdsArrivingLoads.SQL.Add('AND LSP.ShippingPlanNo = LD.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.SupplierShippingPlan       SSP   on SSP.SupplierShipPlanObjectNo = LD.DefsspNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.InternalOrderHead ioh on ioh.ShippingPlanNo = SSP.ShippingPlanNo');

    { cdsArrivingLoads.SQL.Add('FROM ') ;
      cdsArrivingLoads.SQL.Add('dbo.SupplierShippingPlan       SSP   	') ;//ON CLL.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.InternalOrderHead ioh on ioh.ShippingPlanNo = SSP.ShippingPlanNo') ;

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
      cdsArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;

      cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
      cdsArrivingLoads.SQL.Add('						AND     L.supplierno 		= SSP.SUPPLIERno') ;
      cdsArrivingLoads.SQL.Add('						AND     L.CustomerNo 		= SSP.CustomerNo') ;
    }

    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName			ON	IName.CityNo=SSP.ShipToInvPointNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= L.CustomerNo');

    cdsArrivingLoads.SQL.Add
      ('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH');
    cdsArrivingLoads.SQL.Add
      (' INNER JOIN dbo.Orders O				ON	O.OrderNo		= CSH.OrderNo');
    cdsArrivingLoads.SQL.Add
      (' LEFT OUTER JOIN dbo.ClientPreference CP		ON	CP.ClientNo		= O.CustomerNo');
    cdsArrivingLoads.SQL.Add
      (' LEFT OUTER JOIN dbo.Address	A			ON	A.AddressNo = CSH.ClientBillingAddressNo');
    cdsArrivingLoads.SQL.Add('ON	CSH.ShippingPlanNo	= SSP.LO_No');

    cdsArrivingLoads.SQL.Add('Inner Join dbo.Confirmed_Load   CL');
    cdsArrivingLoads.SQL.Add
      ('Left Outer join dbo.Users	US	ON	US.UserID = cl.CreatedUser');
    cdsArrivingLoads.SQL.Add('ON CL.Confirmed_LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add
      ('Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo');
    cdsArrivingLoads.SQL.Add('AND CR.RoleType = 9');

    cdsArrivingLoads.SQL.Add('WHERE');
    cdsArrivingLoads.SQL.Add('L.LoadedDate > ' +
      QuotedStr('2012-06-01 00:00:00.000'));
    if cds_PropsVerkNo.AsInteger > 0 then
      cdsArrivingLoads.SQL.Add('AND SSP.SupplierNo  = ' +
        cds_PropsVerkNo.AsString);

    {
      0: Utlaster med moms
      1: Utlaster utan moms
      2: Inlaster Köp
      3: Interna mellan BTH och BTB
      4: Alla utlaster som saknar pris
      5: Alla inlaster som saknar pris }

    if (cds_PropsStatus.AsInteger = 3) AND (cds_PropsVerkNo.AsInteger = 2878)
    then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 172')
    else if (cds_PropsStatus.AsInteger = 3) AND (cds_PropsVerkNo.AsInteger = 172)
    then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 2878');

    if (cds_PropsStatus.AsInteger <> 3) and (cds_PropsStatus.AsInteger <> 4)
    then
    Begin
      cdsArrivingLoads.SQL.Add
        ('AND ((SSP.CustomerNo  <> 172 AND SSP.CustomerNo <> 2878) OR ');
      cdsArrivingLoads.SQL.Add
        ('(SSP.CustomerNo  = 2878 AND SSP.SupplierNo <> 172) OR ');
      cdsArrivingLoads.SQL.Add
        ('(SSP.CustomerNo  = 172 AND SSP.SupplierNo <> 2878) OR ');
      cdsArrivingLoads.SQL.Add
        ('(SSP.CustomerNo  <> 2878 AND SSP.CustomerNo = 172))')
    End;

    { if (fSupplierNo = 2878) then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 172')
      else
      if (peMomsFilter.ItemIndex = 3) AND (fSupplierNo = 172) then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 2878') ; }

    if (cds_PropsStatus.AsInteger = 3) AND (cds_PropsVerkNo.AsInteger = 2878)
    then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 172')
    else if (cds_PropsStatus.AsInteger = 3) AND (cds_PropsVerkNo.AsInteger = 172)
    then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo  = 2878');

    if cds_PropsStatus.AsInteger = const_Utan_Moms then
    Begin
      cdsArrivingLoads.SQL.Add('AND ( ((SSP.ObjectType = 1)');
      cdsArrivingLoads.SQL.Add
        ('AND  ((A.CountryNo <> 9  ) OR (CP.VAT_OnInvoice = 1)))');
      cdsArrivingLoads.SQL.Add
        ('OR ( (SSP.ObjectType = 0) AND (ioh.VatExempt = 1) ) )');
    End
    else
      // Laster med moms
      if cds_PropsStatus.AsInteger = const_Med_Moms then
      Begin
        cdsArrivingLoads.SQL.Add
          ('AND (  ( SSP.ObjectType = 1 AND ( CP.VAT_OnInvoice = 0 and A.CountryNo = 9  ))');
        cdsArrivingLoads.SQL.Add
          ('OR (SSP.ObjectType = 0 and ioh.VatExempt = 0))');
        cdsArrivingLoads.SQL.Add('AND ioh.VatExempt = 0');

      End;

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LastAvr PL');
    cdsArrivingLoads.SQL.Add
      ('Inner Join dbo.LastAvrHdr PH on PH.PaymentNo = PL.PaymentNo');
    cdsArrivingLoads.SQL.Add('WHERE');
    cdsArrivingLoads.SQL.Add('PH.SupplierNo = SSP.SupplierNo');
    cdsArrivingLoads.SQL.Add('AND PL.LoadNo = L.LoadNo)');

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)');

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('IN (SELECT LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LoadDtlVal)');

    if cds_PropsStatus.AsInteger = 4 then
    Begin
      cdsArrivingLoads.SQL.Add('AND L.LoadNo in (Select LDV.LoadNo FROM');
      cdsArrivingLoads.SQL.Add
        ('dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add('AND LDV.SupplierNo = SSP.SupplierNo');
      cdsArrivingLoads.SQL.Add('AND LDV.Price = 0)');
    End;


    // if ThisUser.UserID = 8 then cdsArrivingLoads.SQL.SaveToFile('Build_Sold_Loads_SQL.txt');
    // Fel kan vara att skatteupplag inte är varken bockad eller ej (bara grå)

    CreatePackageSQL(False);

  End; // With dm_Avrakning do
End;

(* procedure TfrmSkapaAvrakning.Build_LegoLoads_SQL(Sender: TObject);
  begin
  With dm_Avrakning do
  Begin
  cdsArrivingLoads.Close ;
  cdsArrivingLoads.SQL.Clear ;
  cdsArrivingLoads.SQL.Add('SELECT DISTINCT') ;
  cdsArrivingLoads.SQL.Add('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,') ;
  cdsArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,') ;

  cdsArrivingLoads.SQL.Add('(SELECT US.INITIALS  FROM dbo.Confirmed_Load   CL, dbo.Users	US') ;
  cdsArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
  cdsArrivingLoads.SQL.Add('AND US.UserID = cl.CreatedUser) AS INITIALS,') ;

  cdsArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,') ;
  cdsArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,') ;
  cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,') ;
  cdsArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
  cdsArrivingLoads.SQL.Add('Cust.ClientCode                         AS      INT_CUSTOMER,') ;
  cdsArrivingLoads.SQL.Add('Cust.ClientNo                         AS      CUSTOMERNO,') ;
  cdsArrivingLoads.SQL.Add('Mill.ClientNo                      AS       SUPPLIER_NO,') ;
  cdsArrivingLoads.SQL.Add('0                        AS      SKATTE_UPPLAG,') ;
  cdsArrivingLoads.SQL.Add('  IsNull((Select Top 1 0 FROM dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo') ;
  cdsArrivingLoads.SQL.Add('  AND LDV.SupplierNo = SSP.SupplierNo') ;
  cdsArrivingLoads.SQL.Add('  AND LDV.Price = 0),1) AS PRISOK,') ;
  cdsArrivingLoads.SQL.Add('  isNull((SELECT Top 1 -1') ;
  cdsArrivingLoads.SQL.Add('FROM dbo.LastAvrDtl PL2') ;
  cdsArrivingLoads.SQL.Add('WHERE PL2.LoadNo = L.LoadNo') ;
  cdsArrivingLoads.SQL.Add('AND PL2.PaymentType = -1),1) AS Krediterad') ;


  cdsArrivingLoads.SQL.Add('FROM  dbo.Client_LoadingLocation     CLL 	') ;

  cdsArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	CLL.PhyInvPointNameNo = IName.CityNo') ;

  cdsArrivingLoads.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SSP   	ON	CLL.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
  cdsArrivingLoads.SQL.Add('Left Outer Join dbo.Orders O ON O.OrderNo = SSP.OrderNo') ;
  cdsArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
  cdsArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;

  cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
  cdsArrivingLoads.SQL.Add(' AND     L.supplierno 		= SSP.SUPPLIERno') ;
  cdsArrivingLoads.SQL.Add(' AND     L.CustomerNo 		= SSP.CustomerNo') ;
  cdsArrivingLoads.SQL.Add(' INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SSP.SupplierNo') ;
  cdsArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SSP.CustomerNo') ;
  cdsArrivingLoads.SQL.Add(' WHERE') ;

  //if Inlaster köp then
  cdsArrivingLoads.SQL.Add('CLL.ClientNo = '+IntToStr(fSupplierNo)) ; // to get list of loads to pay
  cdsArrivingLoads.SQL.Add('AND L.SenderLoadStatus = 2') ; // to get list of loads to pay
  cdsArrivingLoads.SQL.Add('AND L.LoadedDate > '+QuotedStr('2006-12-31 00:00:00.000')) ;

  cdsArrivingLoads.SQL.Add('AND Cust.ClientNo <> '+IntToStr(fSupplierNo)) ;



  cdsArrivingLoads.SQL.Add('AND L.LOADNO IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_Load )') ;

  cdsArrivingLoads.SQL.Add('AND') ;
  cdsArrivingLoads.SQL.Add('L.LoadNo') ;
  cdsArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo') ;
  cdsArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)') ;


  cdsArrivingLoads.SQL.Add('AND') ;
  cdsArrivingLoads.SQL.Add('L.LoadNo') ;
  cdsArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo') ;
  cdsArrivingLoads.SQL.Add('FROM dbo.LastAvr PL, dbo.LastAvrHdr PH') ;
  cdsArrivingLoads.SQL.Add('WHERE') ;
  cdsArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo') ;
  cdsArrivingLoads.SQL.Add('AND (PH.SupplierNo = '+IntToStr(fSupplierNo)) ;
  cdsArrivingLoads.SQL.Add('OR PH.SupplierNo = 741))') ;

  cdsArrivingLoads.SQL.Add('AND') ;
  cdsArrivingLoads.SQL.Add('L.LoadNo') ;
  cdsArrivingLoads.SQL.Add('IN (SELECT LoadNo') ;
  cdsArrivingLoads.SQL.Add('FROM dbo.LoadDtlVal)') ;


  //  if ThisUser.UserID = 8 then  cdsArrivingLoads.SQL.SaveToFile('LegoLoads.txt');
  End ; //With dm_Avrakning do
  End ; *)

procedure TfrmSkapaAvrakning.Build_PurchaseLoads_SQL(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    cdsArrivingLoads.Close;
    cdsArrivingLoads.SQL.Clear;
    cdsArrivingLoads.SQL.Add('SELECT DISTINCT');
    cdsArrivingLoads.SQL.Add
      ('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,');
    cdsArrivingLoads.SQL.Add('isNull(IName.CityName, ' + QuotedStr('') +
      ')		AS	INVPOINTNAME,');

    cdsArrivingLoads.SQL.Add
      ('(SELECT US.INITIALS  FROM dbo.Confirmed_Load   CL, dbo.Users	US');
    cdsArrivingLoads.SQL.Add
      ('WHERE CL.Confirmed_LoadNo = LSP.LoadNo AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add('AND US.UserID = cl.CreatedUser) AS INITIALS,');

    cdsArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,');
    cdsArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,');
    cdsArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientCode                         AS      SUPPCODE,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientCode                         AS      INT_CUSTOMER,');
    cdsArrivingLoads.SQL.Add
      ('Cust.ClientNo                         AS      CUSTOMERNO,');
    cdsArrivingLoads.SQL.Add
      ('Mill.ClientNo                      AS       SUPPLIER_NO,');
    cdsArrivingLoads.SQL.Add('0                        AS      SKATTE_UPPLAG,');
    cdsArrivingLoads.SQL.Add
      ('  IsNull((Select Top 1 0 FROM dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add('  AND LDV.SupplierNo = SSP.CustomerNo');
    cdsArrivingLoads.SQL.Add('  AND LDV.Price = 0),1) AS PRISOK,');

    cdsArrivingLoads.SQL.Add('  isNull((SELECT Top 1 -1');
    cdsArrivingLoads.SQL.Add('FROM dbo.LastAvrDtl PL2');
    cdsArrivingLoads.SQL.Add('WHERE PL2.LoadNo = L.LoadNo');
    cdsArrivingLoads.SQL.Add('AND PL2.PaymentType = -1),1) AS Krediterad');

    cdsArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SSP   	');
    cdsArrivingLoads.SQL.Add
      ('inner JOIN dbo.City IName			ON	IName.CityNo = SSP.ShipToInvPointNo');
    cdsArrivingLoads.SQL.Add
      ('Left Outer Join dbo.Orders O ON O.OrderNo = SSP.OrderNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo');
    cdsArrivingLoads.SQL.Add
      ('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo');

    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo');
    cdsArrivingLoads.SQL.Add(' AND     L.CustomerNo 		= SSP.CustomerNo');
    cdsArrivingLoads.SQL.Add
      (' INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo');
    cdsArrivingLoads.SQL.Add
      ('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SSP.CustomerNo');
    cdsArrivingLoads.SQL.Add(' WHERE');
    cdsArrivingLoads.SQL.Add('L.LoadedDate > ' +
      QuotedStr('2006-12-31 00:00:00.000'));
    // if Inlaster köp then
    if cds_PropsVerkNo.AsInteger > 0 then
      cdsArrivingLoads.SQL.Add('AND SSP.CustomerNo = ' +
        cds_PropsVerkNo.AsString); // to get list of loads to pay
    cdsArrivingLoads.SQL.Add('AND L.SenderLoadStatus = 2');
    // to get list of loads to pay

    cdsArrivingLoads.SQL.Add
      ('AND L.LOADNO IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_Load )');

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)');

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LastAvr PL, dbo.LastAvrHdr PH');
    cdsArrivingLoads.SQL.Add('WHERE');
    cdsArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo');
    // cdsArrivingLoads.SQL.Add('AND PH.CustomerNo = '+IntToStr(fSupplierNo)+')') ;
    cdsArrivingLoads.SQL.Add('AND PH.CustomerNo = SSP.CustomerNo)');

    cdsArrivingLoads.SQL.Add('AND');
    cdsArrivingLoads.SQL.Add('L.LoadNo');
    cdsArrivingLoads.SQL.Add('IN (SELECT LoadNo');
    cdsArrivingLoads.SQL.Add('FROM dbo.LoadDtlVal)');

    if cds_PropsStatus.AsInteger = 5 then
    Begin
      cdsArrivingLoads.SQL.Add('AND L.LoadNo in (Select LDV.LoadNo FROM');
      cdsArrivingLoads.SQL.Add
        ('dbo.LoadDtlVal LDV	WHERE LDV.LoadNo = L.LoadNo');
      cdsArrivingLoads.SQL.Add('AND LDV.SupplierNo = SSP.CustomerNo');
      cdsArrivingLoads.SQL.Add('AND LDV.Price = 0)');
    End;

    // if ThisUser.UserID = 8 then cdsArrivingLoads.SQL.SaveToFile('PurchaseLoads_SQL.txt');
    CreatePackageSQL(True);
  End; // With dm_Avrakning do
End;

procedure TfrmSkapaAvrakning.FormCreate(Sender: TObject);
begin
  if (not Assigned(dmArrivingLoads)) then
    dmArrivingLoads := TdmArrivingLoads.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmSkapaAvrakning', 'dmArrivingLoads');

  if (not Assigned(dm_Avrakning)) then
    dm_Avrakning := Tdm_Avrakning.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmSkapaAvrakning1', 'dm_Avrakning');

  dm_Avrakning.Lista := 0; // Utlast
  // peMomsFilter.ItemIndex := 0 ;
  if ThisUser.UserID in [4, 5, 7, 8] then
  Begin
    grdLoadRowsDBTableView1PRICE.Properties.ReadOnly := False;
    bbSavePrice.Visible := True;
    bbCancelPrice.Visible := True;
  End
  else
  Begin
    grdLoadRowsDBTableView1PRICE.Properties.ReadOnly := True;
    bbSavePrice.Visible := False;
    bbCancelPrice.Visible := False;
  End;
end;

function TfrmSkapaAvrakning.NoOfLoadsOnLO(Sender: TObject): Integer;
Var
  TempLOList: TStrings;
  x: Integer;
Begin
  With dm_Avrakning do
  Begin
    Result := 0;
    TempLOList := TStringList.Create;
    Try
      cdsArrivingPackages.First;
      TempLOList.Add(cdsArrivingPackagesLO.AsString);
      While not cdsArrivingPackages.Eof do
      Begin
        for x := 0 to TempLOList.Count - 1 do
        Begin
          if cdsArrivingPackagesLO.AsString <> TempLOList.Strings[x] then
            TempLOList.Add(cdsArrivingPackagesLO.AsString);
        End; // for x
        cdsArrivingPackages.Next;
      End;

      for x := 0 to TempLOList.Count - 1 do
      Begin
        sq_NoOfLoads_LO.Close;
        sq_NoOfLoads_LO.ParamByName('ShippingPlanNo').AsInteger :=
          StrToInt(TempLOList.Strings[x]);
        sq_NoOfLoads_LO.Open;
        if sq_NoOfLoads_LONoOfLoads.AsInteger > Result then
          Result := sq_NoOfLoads_LONoOfLoads.AsInteger;
      End; // for x
    Finally
      TempLOList.Free;
    End;
  End; // With
End;

function TfrmSkapaAvrakning.ChangeInventoryLocationInPackages
  (Sender: TObject): Boolean;
Var
  NEW_LogicalInventoryPointNo: Integer;
Begin
  NEW_LogicalInventoryPointNo := 0;
  Old_LogicalInventoryPointNo := 0;
  Result := True;
  With dm_Avrakning do
  Begin
    cds_Pkgs.Close;
    cds_Pkgs.ParamByName('LoadNo').AsInteger := fLoadNo;
    cds_Pkgs.Active := True;
    cds_Pkgs.First;
    // NEW_LogicalInventoryPointNo:= default inventory
    While (not cds_Pkgs.Eof) and (Result = True) do
    Begin
      Try
        if Old_LogicalInventoryPointNo <> cds_PkgsLogicalInventoryPointNo.AsInteger
        then
        Begin
          Old_LogicalInventoryPointNo :=
            cds_PkgsLogicalInventoryPointNo.AsInteger;
          NEW_LogicalInventoryPointNo := GetNewCustomersInventoryPoint(Sender);
        End;

        cds_Pkgs.Edit;
        cds_PkgsLogicalInventoryPointNo.AsInteger :=
          NEW_LogicalInventoryPointNo; // New_LogicalInventoryPointNo ;
        cds_Pkgs.Post;
        Result := True;
      Except
        Result := False;
      End;
      cds_Pkgs.Next;
    End; // while
  End; // with
End;

function TfrmSkapaAvrakning.GetNewCustomersInventoryPoint
  (Sender: TObject): Integer;
var
  fSelectLIP: TfSelectLIP;
Begin
  With dm_Avrakning do
  Begin
    sq_GetNewLIPno.Close;
    sq_GetNewLIPno.ParamByName('New_OwnerNo').AsInteger := New_CustomerNo;
    sq_GetNewLIPno.ParamByName('Old_LogicalInventoryPointNo').AsInteger :=
      Old_LogicalInventoryPointNo;
    sq_GetNewLIPno.Open;
    if (not sq_GetNewLIPno.Eof) and
      (sq_GetNewLIPnoNew_LogicalInventoryPointNo.AsInteger > 0) then
      Result := sq_GetNewLIPnoNew_LogicalInventoryPointNo.AsInteger
    else
    Begin
      Result := -1;
      // Paketet ligger på detta lager nu, välj vilket lager det skall ligga på
      fSelectLIP := TfSelectLIP.Create(Nil);
      Try
        fSelectLIP.LIPNo := -1;
        fSelectLIP.LO_CUSTOMERNO := cds_PropsVerkNo.AsInteger;
        fSelectLIP.LoadDefaultLager;
        // fSelectLIP.Label1.Caption   := 'Välj lager ';
        if fSelectLIP.ShowModal = mrOk then
          Result := fSelectLIP.LIPNo
        else
          Result := -1;
      Finally
        FreeAndNil(fSelectLIP);
      End;
    End;
    sq_GetNewLIPno.Close;
  End; // with
End;

procedure TfrmSkapaAvrakning.ChangeCustomerInLoad(Sender: TObject);
Begin
  With dm_Avrakning do
  Begin
    cds_LoadHead.ParamByName('LoadNo').AsInteger := fLoadNo;
    cds_LoadHead.Active := True;
    cds_LoadHead.Edit;
    cds_LoadHeadCustomerNo.AsInteger := New_CustomerNo;
    cds_LoadHead.Post;
  End;
End;

function TfrmSkapaAvrakning.CopySSP(Sender: TObject): Boolean;
Var
  i, x: Integer;
  SSP: Array of array of variant;
  Old_SupplierShipPlanObjectNo, New_SupplierShipPlanObjectNo
    : Array [1 .. 100] of Integer;
  MakeInternalOrderHead: Boolean;
Begin
  x := 1;
  MakeInternalOrderHead := False;
  Result := False;
  Fillchar(New_SupplierShipPlanObjectNo,
    SizeOf(New_SupplierShipPlanObjectNo), 0);
  Fillchar(Old_SupplierShipPlanObjectNo,
    SizeOf(Old_SupplierShipPlanObjectNo), 0);
  New_LO_No := -1;
  Old_LO_No := -1;

  With dm_Avrakning do
  Begin
    cds_SSP.Close;
    cds_SSP.ParamByName('CustomerNo').AsInteger :=
      cdsArrivingLoadsCustomerNo.AsInteger;
    cds_SSP.Active := True;
    cds_Update_SSP.Close;
    cds_Update_SSP.ParamByName('LoadNo').AsInteger := fLoadNo;
    cds_Update_SSP.ParamByName('CustomerNo').AsInteger :=
      cdsArrivingLoadsCustomerNo.AsInteger;
    cds_Update_SSP.Active := True;
    cds_Update_SSP.First;
    // Copy SSP to ARRAY
    While not cds_Update_SSP.Eof do
    Begin // Innehåller värde om det finns en LO redan
      if cds_SSP.FindKey([cds_Update_SSPSupplierShipPlanObjectNo.AsInteger])
      then
      Begin
        if SSP_Exist(New_SupplierShipPlanObjectNo[x]) = False then
        // Match on Supplier, LOnr, ProductNo, LengthNo, Shipto, LoadingLocation
        Begin
          SetLength(SSP, x);
          // if SSP is not a normal LO then get New LO #
          if cds_SSPObjectType.AsInteger <> 2 then
          Begin
            if Old_LO_No <> cds_Update_SSPShippingPlanNo.AsInteger then
              New_LO_No := dmsConnector.NextMaxNo('CustomerShippingPlanHeader');

            Old_LO_No := cds_Update_SSPShippingPlanNo.AsInteger;
            // Ändra LO # i redan gjorda avräkningar
            ChangeLOno_In_PaymentLoad(fLoadNo, Old_LO_No, New_LO_No);
          End
          else
            // otherwise if normal LO then use same LO # as others
            New_LO_No := cds_Update_SSPShippingPlanNo.AsInteger;

          SetLength(SSP[x - 1], cds_SSP.FieldCount);

          for i := 0 to cds_SSP.FieldCount - 1 do
            SSP[x - 1, i] := cds_SSP.Fields[i].Value;

          Old_SupplierShipPlanObjectNo[x] := cds_SSP.FieldValues
            ['SupplierShipPlanObjectNo'];

          cds_SSP.Append;
          For i := 0 to cds_SSP.FieldCount - 1 do
            cds_SSP.Fields[i].Value := SSP[x - 1, i];
          cds_SSP.FieldByName('ShippingPlanNo').AsInteger := New_LO_No;

          cds_SSP.FieldByName('CustomerNo').AsInteger := New_CustomerNo;
          cds_SSP.FieldByName('SupplierShipPlanObjectNo').AsInteger :=
            dmsConnector.NextMaxNo('SupplierShippingPlan');
          New_SupplierShipPlanObjectNo[x] :=
            cds_SSP.FieldByName('SupplierShipPlanObjectNo').AsInteger;
          cds_SSP.FieldByName('ModifiedUser').AsInteger := ThisUser.UserID;
          cds_SSP.FieldByName('CreatedUser').AsInteger := ThisUser.UserID;
          cds_SSP.FieldByName('DateCreated').AsSQLTimeStamp :=
            DateTimeToSQLTimeStamp(Now);
          cds_SSP.FieldByName('ShippingPlanStatus').AsInteger :=
            STATUS_COMPLETE;
          cds_SSP.Post;

          ChangeRelatedChildTables(Sender, New_SupplierShipPlanObjectNo[x],
            Old_SupplierShipPlanObjectNo[x]);
          MakeInternalOrderHead := True;

          x := succ(x);
        End
        Else
        BEGIN
          Old_SupplierShipPlanObjectNo[x] := cds_SSP.FieldValues
            ['SupplierShipPlanObjectNo'];
          cds_SSP.Edit;
          cds_SSP.FieldByName('CustomerNo').AsInteger := New_CustomerNo;
          cds_SSP.FieldByName('ModifiedUser').AsInteger := ThisUser.UserID;
          cds_SSP.FieldByName('DateCreated').AsSQLTimeStamp :=
            DateTimeToSQLTimeStamp(Now);
          cds_SSP.Post;
          ChangeRelatedChildTables(Sender, New_SupplierShipPlanObjectNo[x],
            Old_SupplierShipPlanObjectNo[x]);
          x := succ(x);
        END;
      End
      else
      Begin
        Result := True;
        Exit;
      End;
      cds_Update_SSP.Next;
    End; // while

    if (MakeInternalOrderHead = True) and (New_LO_No > 0) then
    Begin
      cds_IntOrderHead.Insert;
      cds_IntOrderHeadOrderNo.AsInteger :=
        dmsConnector.NextMaxNo('InternalOrderHead');
      cds_IntOrderHeadShippingPlanNo.AsInteger := New_LO_No;
      cds_IntOrderHeadCustomerNo.AsInteger := cds_SSPCustomerNo.AsInteger;
      cds_IntOrderHeadDefaultShipToInvPointNo.AsInteger :=
        cds_SSPShipToInvPointNo.AsInteger;
      cds_IntOrderHeadStatus.AsInteger := 1;
      cds_IntOrderHeadOrderNoText.AsString := IntToStr(New_LO_No);
      cds_IntOrderHeadLanguageCode.AsInteger := 1;
      cds_IntOrderHeadOrderType.AsInteger := 0;
      cds_IntOrderHeadSalesRegionNo.AsInteger := VIDA_WOOD_COMPANY_NO;
      cds_IntOrderHead.Post;
    End;

  End; // With
End;

procedure TfrmSkapaAvrakning.ChangeRelatedChildTables(Sender: TObject;
  New_SupplierShipPlanObjectNo, Old_SupplierShipPlanObjectNo: Integer);
Begin
  With dm_Avrakning do
  Begin
    cds_LS.Filter := 'ShippingPlanNo = ' + IntToStr(Old_LO_No);
    cds_LS.Filtered := True;
    cds_LS.First;
    While cds_LS.RecordCount > 0 do
    Begin
      cds_LS.Edit;
      cds_LSShippingPlanNo.AsInteger := New_LO_No;
      cds_LS.Post;
    End;
  End; // With
End;

function TfrmSkapaAvrakning.SSP_Exist(Var SupplierShipPlanObjectNo
  : Integer): Boolean;
Begin
  With dm_Avrakning do
  Begin
    SupplierShipPlanObjectNo := 0;
    sq_SSP_Exist.Close;
    sq_SSP_Exist.ParamByName('ShippingPlanNo').AsInteger :=
      cds_Update_SSP.FieldValues['ShippingPlanNo'];
    sq_SSP_Exist.ParamByName('SupplierNo').AsInteger :=
      cds_Update_SSP.FieldValues['SupplierNo'];
    sq_SSP_Exist.ParamByName('CustomerNo').AsInteger := New_CustomerNo;
    sq_SSP_Exist.ParamByName('ObjectType').AsInteger :=
      cds_Update_SSP.FieldValues['ObjectType'];
    sq_SSP_Exist.ParamByName('LoadingLocationNo').AsInteger :=
      cds_Update_SSP.FieldValues['LoadingLocationNo'];
    sq_SSP_Exist.ParamByName('ShipToInvPointNo').AsInteger :=
      cds_Update_SSP.FieldValues['ShipToInvPointNo'];
    sq_SSP_Exist.ParamByName('ProductNo').AsInteger :=
      cds_Update_SSP.FieldValues['ProductNo'];
    sq_SSP_Exist.ParamByName('ProductLengthNo').AsInteger :=
      cds_Update_SSP.FieldValues['ProductLengthNo'];
    sq_SSP_Exist.Open;

    if not sq_SSP_Exist.Eof then
    Begin
      SupplierShipPlanObjectNo := sq_SSP_ExistSupplierShipPlanObjectNo.
        AsInteger;
      Result := True;
    End
    else
      Result := False;
    sq_SSP_Exist.Close;
  End;
End;

Function TfrmSkapaAvrakning.ValidLoad(): Boolean;
Begin
  With dm_Avrakning do
  Begin
    Result := False;
    sq_LO_Type.Close;
    sq_LO_Type.ParamByName('LoadNo').AsInteger := fLoadNo;
    sq_LO_Type.ParamByName('CustomerNo').AsInteger :=
      cdsArrivingLoadsCustomerNo.AsInteger;
    sq_LO_Type.Open;

    if ((sq_LO_TypeOrderType.AsInteger = 1) AND
      (sq_LO_TypeObjectType.AsInteger = 2))

      OR (sq_LO_TypeObjectType.AsInteger = -1) OR
      (sq_LO_TypeObjectType.AsInteger = 0) OR
      (sq_LO_TypeObjectType.AsInteger = 1) then

      Result := True
    else
      Result := False;

    sq_LO_Type.Close;
  End;
End;

procedure TfrmSkapaAvrakning.miPackageInfoClick(Sender: TObject);
Var
  frmPkgInfo: TfrmPkgInfo;
begin
  frmPkgInfo := TfrmPkgInfo.Create(Nil);
  Try
    frmPkgInfo.PackageNo := dm_Avrakning.cdsArrivingPackagesPACKAGE_NO.
      AsInteger;
    frmPkgInfo.SupplierCode :=
      dm_Avrakning.cdsArrivingPackagesSupplierCode.AsString;
    frmPkgInfo.ShowModal;
  Finally
    FreeAndNil(frmPkgInfo);
  End;
end;

procedure TfrmSkapaAvrakning.FormDestroy(Sender: TObject);
begin
  frmSkapaAvrakning := Nil;

  if dmsSystem.DeleteAssigned('TfrmSkapaAvrakning', 'dmArrivingLoads') = True
  then
  Begin
    dmArrivingLoads.Free;
    dmArrivingLoads := Nil;
  End;

  if dmsSystem.DeleteAssigned('TfrmSkapaAvrakning1', 'dm_Avrakning') = True then
  Begin
    dm_Avrakning.Free;
    dm_Avrakning := Nil;
  End;
end;

procedure TfrmSkapaAvrakning.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmsSystem.StoreGridLayout(ThisUser.UserID, self.Name + '/' + grdLoads.Name,
    grdLoadsDBTableView1);
  dmsSystem.StoreGridLayout(ThisUser.UserID, self.Name + '/' + grdLoadRows.Name,
    grdLoadRowsDBTableView1);

  SaveUserProps(self.Caption);

  With dm_Avrakning do
  Begin
    cdsArrivingLoads.Active := False;
    cdsArrivingPackages.Active := False;
  End;
  CanClose := True;
end;

procedure TfrmSkapaAvrakning.acChangeCustomerExecute(Sender: TObject);
Var
  fRollBack: Boolean;
  NoOfLoads: Integer;
  Save_Cursor: TCursor;
begin
  With dm_Avrakning do
  Begin

    Try
      cds_IntOrderHead.Active := True;
      fRollBack := False;
      Old_CustomerNo := cdsArrivingLoadsCustomerNo.AsInteger;
      if Old_CustomerNo = VIDA_WOOD_COMPANY_NO then
        New_CustomerNo := cds_PropsVerkNo.AsInteger
      else
        New_CustomerNo := VIDA_WOOD_COMPANY_NO; // fSupplierNo ;

      fLoadNo := cdsArrivingLoadsVIS_FS.AsInteger;

      if NoOfLoadsOnLO(Sender) = 0 then
      Begin
        ShowMessage('0 loads');
        NoOfLoads := 0;
        Exit;
      End
      else if NoOfLoadsOnLO(Sender) = 1 then
      Begin
        ShowMessage('1 load');
        NoOfLoads := 1;
      End
      else if NoOfLoadsOnLO(Sender) > 1 then
      Begin
        ShowMessage('More than 1 load on this LO');
        NoOfLoads := 2;
      End;

      if ValidLoad = False then
      Begin
        ShowMessage('Sales Load cannot be changed!');
        Exit;
      End;

      // 9168

      if New_CustomerNo = VIDA_WOOD_COMPANY_NO then
      Begin
        if MessageDlg('Kunden kommer att ändras från ' +
          cdsArrivingLoadsINT_CUSTOMER.AsString +
          ' till VWS i denna last, fortsätta?', mtConfirmation, [mbYes, mbNo],
          0) = mrNo then
          Exit;
      End
      else
      Begin
        if MessageDlg('Kunden kommer att ändras från ' +
          cdsArrivingLoadsINT_CUSTOMER.AsString + ' till ' + lcVerk.Text +
          ' i denna last, fortsätta?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
        then
          Exit;
      End;

      Save_Cursor := Screen.Cursor;
      Screen.Cursor := crHourGlass;
      Try

        // Start Transaction
        dmsConnector.StartTransaction;
        Try

          cds_LS.Close;
          cds_LS.ParamByName('LoadNo').AsInteger := fLoadNo;
          cds_LS.Active := True;

          fRollBack := CopySSP(Sender);
          // Copy and Make a new, well check if there is such LO already before create a new
          ChangeCustomerInLoad(Sender);
          if ChangeInventoryLocationInPackages(Sender) = False then
            fRollBack := True;

          if fRollBack = False then
          Begin
            if cds_IntOrderHead.ChangeCount > 0 then
              if cds_IntOrderHead.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cds_IntOrderHead.CommitUpdates;
          End;

          // set ssp update före loadhead
          if fRollBack = False then
          Begin
            if cds_SSP.ChangeCount > 0 then
              if cds_SSP.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cds_SSP.CommitUpdates;
          End;

          // set ssp update före loadhead
          if fRollBack = False then
          Begin
            if (cds_Update_SSP.Active) AND (cds_Update_SSP.ChangeCount > 0) then
              if cds_Update_SSP.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cds_Update_SSP.CommitUpdates;
          End;

          if fRollBack = False then
          Begin
            if cds_LoadHead.ChangeCount > 0 then
              if cds_LoadHead.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cds_LoadHead.CommitUpdates;
          End;

          if fRollBack = False then
          Begin
            if cds_LS.ChangeCount > 0 then
              if cds_LS.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cds_LS.CommitUpdates;
          End;

          if fRollBack = False then
          Begin
            if cds_Pkgs.ChangeCount > 0 then
              if cds_Pkgs.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cds_Pkgs.CommitUpdates;
          End;

          if fRollBack = True then
          Begin
            dmsConnector.Rollback;
            ShowMessage('Failed to change, rollback');
          End
          else
          Begin
            dmsConnector.Commit;
            ShowMessage('Customer changed on Load');
          End;

        Except
          dmsConnector.Rollback;
          Exit;
        End;

      finally
        Screen.Cursor := Save_Cursor; { Always restore to normal }
      End;

    finally
      cds_Update_SSP.Active := False;
      cds_SSP.Active := False;
      // sq_SSP.Close ;
      cds_LoadHead.Active := False;
      cds_Pkgs.Active := False;
      cds_LS.Active := False;
      cds_IntOrderHead.Active := False;
    end;
  End;

  // Ändra verk i Last.
  // Ändrar inte statusen på paket.

  // Get the current LO by LoadShippingPlan

  // Add Copies of the LO but with different customer (selected by user)
  // However check that thoses LO's does not already exist!
  // Change Customer in Loads table

  // No need to change LoadShippingPlan.ShipToInvPointNo as it refers to City.CityNo

  // Only need to change these 2 tables if a new SSP was done.
  // Change LoadDetailMatch.SupplierShipPlanObjectNo
  // Change LoadDetailPkgLength.SupplierShipPlanObjectNo

  // Change logical inventory point for packages in load
  // Only change package that are in inventory = where status is 1
  // Get LogicalInventoryPointNo for new Verk Customer

  // Set PackageNumber.LogicalInventoryPointNo = New_LogicalInventoryPointNo

end;

procedure TfrmSkapaAvrakning.acOpenLoadExecute(Sender: TObject);
begin
  {
    try
    with TfLoad.CreateWithExistingLoad(
    Self,
    grdConfirmedLoads.DataSource.DataSet.FieldByName('SUPPLIER_NO').AsInteger,
    grdConfirmedLoads.DataSource.DataSet.FieldByName('VIS_FS').AsInteger,
    0) do
    try
    ShowModal ;
    //        = mrOK then         SetNewLoadValues (Sender, dbeLokalFraktforare.Text, dbeFrom.Text, dbeTo.Text) ;

    finally
    Free
    end;
    finally
    try

    except
    on E:Exception do

    end;
    end;
  }

end;

procedure TfrmSkapaAvrakning.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmSkapaAvrakning.acRefreshExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  With dm_Avrakning do
  Begin
    Try
      dsrcArrivingLoads.OnDataChange := nil;
      cdsArrivingPackages.Active := False;
      Screen.Cursor := crHourGlass; { Show hourglass cursor }
      cdsArrivingLoads.DisableControls;
      cdsArrivingLoads.Active := False;
      // 2 Inlaster Lego 3 Inlaster Köp }
      if (cds_PropsStatus.AsInteger = 2) or (cds_PropsStatus.AsInteger = 5) then
      Begin
        Build_PurchaseLoads_SQL(Sender);
      End
      else // 0 Utlaster utan moms, 1 Utlaster utan moms
        Build_Sold_Loads_SQL(Sender);

      cdsArrivingLoads.Active := True;
      Refresh_ArrivingLoads;
      grdLoads.SetFocus;
    finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
      cdsArrivingLoads.EnableControls;
      dsrcArrivingLoads.OnDataChange := dsrcArrivingLoadsDataChange;
    end;
  end;
end;

procedure TfrmSkapaAvrakning.acRemoveLoadExecute(Sender: TObject);
var
  Save_Cursor: TCursor;
  Duplicate, myRollBack: Boolean;
  x: Integer;
begin
  (* With dm_Avrakning do
    Begin
    Save_Cursor := Screen.Cursor;
    dm_Avrakning.cdsArrivingPackages.DisableControls ;
    Try
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    myRollBack := False ;
    Duplicate := False ;
    ListBox1.Items.Clear ;
    cds_LoadRemAvr.Active:= True ;

    if grdConfirmedLoads.SelectedCount  > 0 then
    Begin
    Try
    with grdConfirmedLoads do
    begin
    for x := 0 to (SelectedCount - 1) do
    begin
    //  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
    DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant
    cds_LoadRemAvr.Insert ;
    cds_LoadRemAvrLoadNo.AsInteger:= cdsArrivingLoadsVIS_FS.AsInteger ;
    cds_LoadRemAvrDateCreated.AsDateTime:= Now ;
    cds_LoadRemAvrCreatedUser.AsInteger:= ThisUser.UserID ;
    cds_LoadRemAvr.Post ;
    end; //for

    End ; //with grdConfirmedLoads do
    if cds_LoadRemAvr.ChangeCount > 0 then
    if cds_LoadRemAvr.ApplyUpdates(0)  > 0 then myRollBack := True ;

    if myRollBack = False then
    Begin
    acRefreshExecute(Sender) ;
    End
    else
    ShowMessage('Fel, laster ej borttagna') ;
    Except
    ShowMessage('Fel, Avräkning ej skapad') ;
    raise;
    End ;
    End ; //if grdConfirmedLoads.Select...

    Finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    dm_Avrakning.cdsArrivingPackages.EnableControls ;
    cds_LoadRemAvr.Active:= False ;
    End ;
    end ; // with

  *)
end;

function TfrmSkapaAvrakning.CustomerOnLoadsAreNotDuplicates
  (Sender: TObject): Boolean;
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
  IntCustomer: String;
begin
  Result := False;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  grdLoadsDBTableView1.BeginUpdate;
  grdLoadsDBTableView1.DataController.BeginLocate;
  Try
    ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
    For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
    Begin
      RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex;
      RecID := grdLoadsDBTableView1.DataController.GetRecordId(RecIDX);
      ADATASET.Locate('VIS_FS', RecID, []);

      if (i = 0) then
        IntCustomer := ADATASET.FieldByName('INT_CUSTOMER').AsString;
      if (i <> 0) and (IntCustomer <> ADATASET.FieldByName('INT_CUSTOMER')
        .AsString) then
        Result := True;
    End;

  Finally
    grdLoadsDBTableView1.DataController.EndLocate;
    grdLoadsDBTableView1.EndUpdate;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

function TfrmSkapaAvrakning.AreLoadsSameCredit(Sender: TObject): Boolean;
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
  Kredit: Integer;
begin
  Result := True;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  grdLoadsDBTableView1.BeginUpdate;
  grdLoadsDBTableView1.DataController.BeginLocate;
  Try
    ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
    For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
    Begin
      RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex;
      RecID := grdLoadsDBTableView1.DataController.GetRecordId(RecIDX);
      ADATASET.Locate('VIS_FS', RecID, []);

      if (i = 0) then
        Kredit := ADATASET.FieldByName('Krediterad').AsInteger;
      if (i <> 0) and (Kredit <> ADATASET.FieldByName('Krediterad').AsInteger)
      then
        Result := False;
    End;

  Finally
    grdLoadsDBTableView1.DataController.EndLocate;
    grdLoadsDBTableView1.EndUpdate;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

function TfrmSkapaAvrakning.IsPriceOK(Sender: TObject): Boolean;
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
begin
  Result := True;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  grdLoadsDBTableView1.BeginUpdate;
  grdLoadsDBTableView1.DataController.BeginLocate;
  Try
    ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
    For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
    Begin
      RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i].RecordIndex;
      RecID := grdLoadsDBTableView1.DataController.GetRecordId(RecIDX);
      ADATASET.Locate('VIS_FS', RecID, []);

      if ADATASET.FieldByName('PRISOK').AsInteger = 0 then
        Result := False;
    End;

  Finally
    grdLoadsDBTableView1.DataController.EndLocate;
    grdLoadsDBTableView1.EndUpdate;
    Screen.Cursor := Save_Cursor; { Always restore to normal }
  End;
end;

Procedure TfrmSkapaAvrakning.RemoveLoads;
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
begin
  With dm_Avrakning do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cdsArrivingLoads.DisableControls;
    Try
      ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        RecID := grdLoadsDBTableView1.DataController.GetRecordId(RecIDX);
        if cdsArrivingLoads.Locate('VIS_FS', RecID, []) then
          cdsArrivingLoads.Delete;
      End;

    Finally
      cdsArrivingLoads.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End;
end;

Procedure TfrmSkapaAvrakning.UppdatePriceOnMarkedLoads;
Var
  i, RecIDX: Integer;
  RecID: variant;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
begin
  With dm_Avrakning do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cdsArrivingLoads.DisableControls;
    Try
      ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        RecID := grdLoadsDBTableView1.DataController.GetRecordId(RecIDX);
        { 0)Utlaster med moms
          1)Utlaster utan moms
          2)Inlaster Köp
          3)Interna mellan BTH och BTB
          4)Alla utlaster som saknar pris
          5)Alla inlaster som saknar pris }

        if (cds_PropsStatus.AsInteger = 0) or (cds_PropsStatus.AsInteger = 1) or
          (cds_PropsStatus.AsInteger = 3) or (cds_PropsStatus.AsInteger = 4)
        then
          dmArrivingLoads.GetIntPrice(cdsArrivingLoadsSUPPLIER_NO.AsInteger, 0,
            -1, RecID, True)
        else
          dmArrivingLoads.GetIntPrice(cdsArrivingLoadsCustomerNo.AsInteger, 0,
            -1, RecID, True);

        // dmArrivingLoads.GetIntPrice(fSupplierNo, 0,-1, RecID, True) ;

        if (cds_PropsStatus.AsInteger = 0) or (cds_PropsStatus.AsInteger = 1) or
          (cds_PropsStatus.AsInteger = 3) or (cds_PropsStatus.AsInteger = 4)
        then
        Begin
          if dm_Avrakning.priceOk(RecID, cdsArrivingLoadsSUPPLIER_NO.AsInteger)
          then
          Begin
            if ADATASET.Locate('VIS_FS', RecID, []) then
            Begin
              ADATASET.Edit;
              ADATASET.FieldByName('PRISOK').AsInteger := 1;
              ADATASET.Post;
            End;
          End;
        End // if (peMomsFilter.ItemIndex = 0) or (peMomsFilter.ItemIndex = 1) or (peMomsFilter.ItemIndex = 3) or (peMomsFilter.ItemIndex = 4) then
        else
        Begin
          if dm_Avrakning.priceOk(RecID, cdsArrivingLoadsCustomerNo.AsInteger)
          then
          Begin
            if ADATASET.Locate('VIS_FS', RecID, []) then
            Begin
              ADATASET.Edit;
              ADATASET.FieldByName('PRISOK').AsInteger := 1;
              ADATASET.Post;
            End;
          End; // if dm_Avrakning.priceOk(RecID, fSupplierNo) then
        End;

        (* if dm_Avrakning.priceOk(RecID, fSupplierNo) then
          Begin
          if ADataSet.Locate('VIS_FS', RecID,[]) then
          Begin
          ADataSet.Edit ;
          ADataSet.FieldByName('PRISOK').AsInteger:= 1 ;
          ADataSet.Post ;
          End ;
          End ;//if dm_Avrakning.priceOk(RecID, fSupplierNo) then *)

      End; // For
      cdsArrivingPackages.Refresh;
    Finally
      cdsArrivingLoads.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End;
end;

function TfrmSkapaAvrakning.InsertTo_cdsPaymentLoads(const TypeOf,
  PaymentNo: Integer): Boolean;
Var
  i, RecIDX: Integer;
  RecID: variant;
  fRollBack: Boolean;
Begin
  With dm_Avrakning do
  Begin
    // Start Transaction
    dmsConnector.StartTransaction;
    fRollBack := False;
    Try

      grdLoadsDBTableView1.BeginUpdate;
      grdLoadsDBTableView1.DataController.BeginLocate;
      Try
        For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
        Begin
          RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
            .RecordIndex;
          RecID := grdLoadsDBTableView1.DataController.GetRecordId(RecIDX);
          if fRollBack = False then
          Begin
            cdsPaymentLoads.Insert;
            cdsPaymentLoadsPaymentType.AsInteger := 1;
            cdsPaymentLoadsPaymentNo.AsInteger := PaymentNo;
            cdsPaymentLoadsLoadNo.AsInteger := RecID;
            cdsPaymentLoadsTypeOf.AsInteger := TypeOf;
            cdsPaymentLoads.Post;

            cdsLastAvr.Insert;
            cdsLastAvrPaymentNo.AsInteger := PaymentNo;
            cdsLastAvrLoadNo.AsInteger := RecID;
            cdsLastAvr.Post;

            if cdsPaymentLoads.ApplyUpdates(0) > 0 then
              fRollBack := True
            else
              cdsPaymentLoads.CommitUpdates;

            if fRollBack = False then
              if cdsLastAvr.ApplyUpdates(0) > 0 then
                fRollBack := True
              else
                cdsLastAvr.CommitUpdates;
            Screen.Cursor := crHourGlass; { Show hourglass cursor }
          End;
          if fRollBack = False then
          Begin
            Try
              sq_UpdLoadDtlValSingleLoad.ParamByName('SetPaymentNo').AsInteger
                := PaymentNo;
              sq_UpdLoadDtlValSingleLoad.ParamByName('PaymentNo')
                .AsInteger := -1;
              sq_UpdLoadDtlValSingleLoad.ParamByName('PaymentType')
                .AsInteger := 1;
              sq_UpdLoadDtlValSingleLoad.ParamByName('LoadNo')
                .AsInteger := RecID;
              sq_UpdLoadDtlValSingleLoad.ParamByName('SupplierNo').AsInteger :=
                cds_PropsVerkNo.AsInteger;
              sq_UpdLoadDtlValSingleLoad.ExecSQL;
            Except
              On E: Exception do
              Begin
                // dmsSystem.FDoLog(E.Message) ;
                ShowMessage(E.Message);
                fRollBack := True;
                // Raise ;
              End;

            End;

            { sq_UpdateLoadDtlVal.ParamByName('SetPaymentNo').AsInteger        := PaymentNo ;
              sq_UpdateLoadDtlVal.ParamByName('PaymentNo').AsInteger           := PaymentNo ;
              sq_UpdateLoadDtlVal.ParamByName('PaymentType').AsInteger         := 1 ;//peMomsFilter.ItemIndex ;
              sq_UpdateLoadDtlVal.ParamByName('LoadDtlValPaymentNo').AsInteger := -1 ;
              sq_UpdateLoadDtlVal.ParamByName('SupplierNo').AsInteger          := fSupplierNo ;
              sq_UpdateLoadDtlVal.ExecSQL(False) ; }
          End;
        End; // for

        if fRollBack = True then
        Begin
          dmsConnector.Rollback;
          ShowMessage('Godkänna laster failed');
        End
        else
        Begin
          dmsConnector.Commit;
          // ShowMessage('Customer changed on Load') ;
        End;

      Except
        dmsConnector.Rollback;
        Exit;
      End;

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Result := fRollBack;
      // Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End;
  End; // With dm_Avrakning do
End; // proc

procedure TfrmSkapaAvrakning.acChangeCustomerUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acChangeCustomer.Enabled := (ThisUser.UserID in [4, 5, 7, 8]) and
      (cdsArrivingLoads.Active) and (cdsArrivingLoads.RecordCount > 0) and
      ((cds_PropsStatus.AsInteger <> 4) and (cds_PropsStatus.AsInteger <> 5));
  End;
end;

procedure TfrmSkapaAvrakning.acCreatePaymentsUpdate(Sender: TObject);
begin
  acCreatePayments.Enabled := ((cds_PropsStatus.AsInteger = 2) and
    (ThisUser.UserID in [4, 7, 8])) or (cds_PropsStatus.AsInteger <> 2) and
    (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0);
end;

procedure TfrmSkapaAvrakning.grdLoadsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  PrisOK: Integer;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRISOK').
    Index] <> null then
    PrisOK := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PRISOK').Index];

  if PrisOK = 0 then
    AStyle := cxStyleRed;
end;

procedure TfrmSkapaAvrakning.grdLoadRowsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
Var
  PRICE: Double;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('PRICE').
    Index] <> null then
    PRICE := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('PRICE').Index];

  if PRICE = 0 then
    AStyle := cxStyleRed;
end;

procedure TfrmSkapaAvrakning.acGetIntPricesExecute(Sender: TObject);
begin
  UppdatePriceOnMarkedLoads;
end;

procedure TfrmSkapaAvrakning.acSavePricesExecute(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    if cdsArrivingPackages.State in [dsEdit] then
      cdsArrivingPackages.Post;
    if cdsArrivingPackages.ChangeCount > 0 then
    Begin
      cdsArrivingPackages.ApplyUpdates(0);
      cdsArrivingPackages.CommitUpdates;
    End;

    if (cds_PropsStatus.AsInteger = 0) or (cds_PropsStatus.AsInteger = 1) or
      (cds_PropsStatus.AsInteger = 3) or (cds_PropsStatus.AsInteger = 4) then
    Begin
      if dm_Avrakning.priceOk(cdsArrivingLoadsVIS_FS.AsInteger,
        cdsArrivingLoadsSUPPLIER_NO.AsInteger) then
      Begin
        if cdsArrivingLoads.Locate('VIS_FS',
          cdsArrivingLoadsVIS_FS.AsInteger, []) then
        Begin
          cdsArrivingLoads.Edit;
          cdsArrivingLoads.FieldByName('PRISOK').AsInteger := 1;
          cdsArrivingLoads.Post;
        End;
      End;
    End // if (peMomsFilter.ItemIndex = 0) or (peMomsFilter.ItemIndex = 1) or (peMomsFilter.ItemIndex = 3) or (peMomsFilter.ItemIndex = 4) then
    else
    Begin
      if dm_Avrakning.priceOk(cdsArrivingLoadsVIS_FS.AsInteger,
        cdsArrivingLoadsCustomerNo.AsInteger) then
      Begin
        if cdsArrivingLoads.Locate('VIS_FS',
          cdsArrivingLoadsVIS_FS.AsInteger, []) then
        Begin
          cdsArrivingLoads.Edit;
          cdsArrivingLoads.FieldByName('PRISOK').AsInteger := 1;
          cdsArrivingLoads.Post;
        End;
      End; // if dm_Avrakning.priceOk(RecID, fSupplierNo) then
    End;

  End;
end;

procedure TfrmSkapaAvrakning.acSavePricesUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acSavePrices.Enabled := (cdsArrivingPackages.Active) and
      ((cdsArrivingPackages.State in [dsEdit]) or
      (cdsArrivingPackages.ChangeCount > 0));
  End;
end;

procedure TfrmSkapaAvrakning.acGetIntPricesUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acGetIntPrices.Enabled := (cdsArrivingPackages.Active) and
      (cdsArrivingPackages.State in [dsBrowse]) and
      (cdsArrivingPackages.ChangeCount = 0) and (cdsArrivingLoads.Active) and
      (cdsArrivingLoads.RecordCount > 0) and
      (grdLoadsDBTableView1.Controller.SelectedRecordCount > 0);
  End;
end;

procedure TfrmSkapaAvrakning.acCancelChangePriceExecute(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    if cdsArrivingPackages.State in [dsEdit] then
      cdsArrivingPackages.Cancel;
    if cdsArrivingPackages.ChangeCount > 0 then
      cdsArrivingPackages.CancelUpdates;
  End;
end;

procedure TfrmSkapaAvrakning.acCancelChangePriceUpdate(Sender: TObject);
begin
  With dm_Avrakning do
  Begin
    acCancelChangePrice.Enabled := (cdsArrivingPackages.Active) and
      ((cdsArrivingPackages.State in [dsEdit]) or
      (cdsArrivingPackages.ChangeCount > 0));
  End;
end;

procedure TfrmSkapaAvrakning.acConfirmLoadsExecute(Sender: TObject);
// Kolla först om det finns en passande aktiv avräkning, i annat fall skapa en ny
// En passande avräkning är samma typeof, kund och aktiv
Var
  PaymentNo, x, y: Integer;
  Duplicate, myRollBack: Boolean;
  Save_Cursor: TCursor;
  // frmAvrakning          : TfrmAvrakning;
begin
  With dm_Avrakning do
  Begin
    Save_Cursor := Screen.Cursor;
    // dm_Avrakning.cdsArrivingPackages.DisableControls ;

    Try
      Screen.Cursor := crHourGlass; { Show hourglass cursor }

      myRollBack := False;
      Duplicate := False;

      if IsPriceOK(Sender) = False then
      Begin
        ShowMessage
          ('En eller flera laster saknar pris för vissa produkter, se röda rader!');
        Exit;
      End;

      if AreLoadsSameCredit(Sender) = False then
      Begin
        ShowMessage('Kan inte blanda tidigare krediterade med "nya"!');
        Exit;
      End;

      // Kolla att alla markerade laster har samma kund!
      { if CustomerOnLoadsAreNotDuplicates(Sender) then
        Begin
        ShowMessage('Alla laster måste ha samma kund!') ;
        Exit ;
        End ; }

      cdsLastAvr.Active := True;
      cdsPaymentLoads.Active := True;
      Try
        cdsPayHead.Active := False;
        // if (peMomsFilter.ItemIndex = 2) then//inköp
        // sq_PayHead.ParamByName('SupplierNo').AsInteger   := 741 //fSupplierNo ;
        // else
        if cds_PropsStatus.AsInteger in [0, 1, 3] then
          cdsPayHead.ParamByName('SupplierNo').AsInteger :=
            cds_PropsVerkNo.AsInteger
        else
          cdsPayHead.ParamByName('SupplierNo').AsInteger :=
            VIDA_WOOD_COMPANY_NO;

        // if (peMomsFilter.ItemIndex < 2) then
        // cdsPayHead.ParamByName('CustomerNo').AsInteger   := 741 //cdsArrivingLoadsCUSTOMERNO.AsInteger ;
        // else
        // Är det ett köp är customer det verk som är valt i droplistan.
        if cds_PropsStatus.AsInteger = 2 then
          cdsPayHead.ParamByName('CustomerNo').AsInteger :=
            cds_PropsVerkNo.AsInteger
        else
          // är det en försäljning är VW alltid customer om inte INTERN!
          if cds_PropsStatus.AsInteger = 3 then
            cdsPayHead.ParamByName('CustomerNo').AsInteger :=
              cdsArrivingLoadsCustomerNo.AsInteger
          else
            cdsPayHead.ParamByName('CustomerNo').AsInteger :=
              VIDA_WOOD_COMPANY_NO;

        // cdsPayHead.ParamByName('CustomerNo').AsInteger   := cdsArrivingLoadsCUSTOMERNO.AsInteger ;

        // ** Ändring. Laster som avräknas går alltid till en debit avräkning
        // inte som tidigare att den gick till en öppen kreditavräkning om lasten tidigare krediterats.
        cdsPayHead.ParamByName('TypeOf').AsInteger := cds_PropsStatus.AsInteger;
        cdsPayHead.ParamByName('PaymentType').AsInteger := 1;
        // **cdsArrivingLoadsKrediterad.AsInteger ;
        cdsPayHead.ParamByName('SenderStatus').AsInteger := 0;
        cdsPayHead.Active := True;
        if cdsPayHeadPaymentNo.AsInteger > 0 then
        Begin
          PaymentNo := cdsPayHeadPaymentNo.AsInteger;
          cdsPayHead.Edit;
          cdsPayHeadDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
          cdsPayHead.Post;
          if cdsPayHead.ChangeCount > 0 then
            if cdsPayHead.ApplyUpdates(0) > 0 then
            Begin
              myRollBack := True;
              ShowMessage('Misslyckades med att spara avräkningshuvud');
              Exit;
            End
            else
              cdsPayHead.CommitUpdates;
        End
        else
        Begin
          cdsPayHead.Insert;
          cdsPayHeadPaymentType.AsInteger := 1;
          cdsPayHeadPaymentNo.AsInteger := dmsConnector.NextMaxNo('LastAvrHdr');
          PaymentNo := cdsPayHeadPaymentNo.AsInteger;
          cdsPayHeadSenderStatus.AsInteger := 0;
          cdsPayHeadMILL_InvoiceNo.AsString := '';
          cdsPayHeadReceiverStatus.AsInteger := 0;
          cdsPayHeadCreatedUser.AsInteger := ThisUser.UserID;
          cdsPayHeadModifiedUser.AsInteger := ThisUser.UserID;
          cdsPayHeadDateCreated.AsSQLTimeStamp := DateTimeToSQLTimeStamp(Now);
          cdsPayHeadTypeOf.AsInteger := cds_PropsStatus.AsInteger;
          // En försäljning är supplier alltid det verk som är valt som supplier i droplistan.
          if cds_PropsStatus.AsInteger in [0, 1, 3] then
            cdsPayHeadSupplierNo.AsInteger := cds_PropsVerkNo.AsInteger
          else
            // om det är ett köp är VW alltid supplier
            cdsPayHeadSupplierNo.AsInteger := VIDA_WOOD_COMPANY_NO;

          // Är det ett köp är customer det verk som är valt i droplistan.
          if cds_PropsStatus.AsInteger = 2 then
            cdsPayHeadCustomerNo.AsInteger := cds_PropsVerkNo.AsInteger
          else
            // är det en försäljning är VW alltid customer om inte INTERN!
            if cds_PropsStatus.AsInteger = 3 then
              cdsPayHeadCustomerNo.AsInteger :=
                cdsArrivingLoadsCustomerNo.AsInteger
            else
              cdsPayHeadCustomerNo.AsInteger := VIDA_WOOD_COMPANY_NO;

          cdsPayHead.Post;

          if cdsPayHead.ApplyUpdates(0) > 0 then
          Begin
            myRollBack := True;
            ShowMessage('Misslyckades med att spara avräkningshuvud');
            Exit;
          End
          else
            cdsPayHead.CommitUpdates;
        End; // if cdsPayHead...

        if myRollBack = False then
        Begin
          Try
            if InsertTo_cdsPaymentLoads(cds_PropsStatus.AsInteger, PaymentNo) = False
            then
              RemoveLoads;

            { if cdsPaymentLoads.ApplyUpdates(0)  > 0 then myRollBack := True ;
              if myRollBack = False then
              if cdsLastAvr.ApplyUpdates(0)  > 0 then myRollBack := True ;
              Screen.Cursor := crHourGlass;
              if MyRollBack = False then
              Begin
              sq_UpdateLoadDtlVal.ParamByName('SetPaymentNo').AsInteger        := PaymentNo ;
              sq_UpdateLoadDtlVal.ParamByName('PaymentNo').AsInteger           := PaymentNo ;
              sq_UpdateLoadDtlVal.ParamByName('PaymentType').AsInteger         := 1 ;//peMomsFilter.ItemIndex ;
              sq_UpdateLoadDtlVal.ParamByName('LoadDtlValPaymentNo').AsInteger := -1 ;
              sq_UpdateLoadDtlVal.ParamByName('SupplierNo').AsInteger          := fSupplierNo ;

              sq_UpdateLoadDtlVal.ExecSQL(False) ;
              RemoveLoads ;
              End ; }
          Except
            ShowMessage('Error lägga laster till avräkning!');
            raise;
          End;
        End;

      Finally
        cdsPayHead.Active := False;
        cdsPaymentLoads.Active := False;
        cdsLastAvr.Active := False;
      End;

    Finally
      Screen.Cursor := Save_Cursor; { Always restore to normal }
      // dm_Avrakning.cdsArrivingPackages.EnableControls ;
    End;
  end; // with
end;

procedure TfrmSkapaAvrakning.acPrintAvrakningExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSkapaAvrakning.acConfirmLoadsUpdate(Sender: TObject);
begin
  acConfirmLoads.Enabled := (grdLoadsDBTableView1.Controller.SelectedRecordCount
    > 0) and ((cds_PropsStatus.AsInteger <> 4) and
    (cds_PropsStatus.AsInteger <> 5)) and (not cds_PropsVerkNo.isNull) and
    (cds_PropsVerkNo.AsInteger > 0);
end;

procedure TfrmSkapaAvrakning.CreatePackageSQL(const Customer: Boolean);
Begin
  With dm_Avrakning.cdsArrivingPackages do
  Begin
    SQL.Clear;
    SQL.Add('SELECT DISTINCT');
    SQL.Add(
      'SSP.SupplierNo AS SSP_SupplierNo, LSP.ShippingPlanNo		AS	LO, LD.PackageNo AS	PACKAGE_NO, LD.SUPPLIERCODE	AS 	SUPPLIERCODE,');
    SQL.Add(
      'PTD.m3Actual	AS 	M3_NET, PTD.m3Nominal	AS M3_NOM, PR.ProductDisplayName	AS	PRODUCT_DESCRIPTION,');
    SQL.Add
      ('PTD.NoOfPieces		    AS	PCS, LD.PACKAGEOK			    AS	PACKAGEOK, LD.ProblemPackageLog	AS	PACKAGE_LOG,');
    SQL.Add('LSP.LoadNo            AS  LSPLOADNO, LD.LoadDetailNo AS  LOAD_DETAILNO, LDV.SubSum,');
    SQL.Add('LDV.Price             AS  PRICE, LDV.OldPrice, PTD.m3Net AS  NOM_LINEAL_METER,');
    SQL.Add('OC.ClientName         AS	END_CUSTOMER, PTD.ProductLengthNo AS  PTDProductLengthNo,');
    SQL.Add('PL.NominalLengthMM	  AS  NLMM, PL.ActualLengthMM	    AS  ALMM,');
    SQL.Add('LDV.LoadNo, LDV.LoadDetailNo, LDV.ProductLengthNo, LDV.PaymentNo, LDV.PaymentType, LDV.SupplierNo');

    SQL.Add('FROM dbo.LoadShippingPlan LSP');
    SQL.Add('INNER JOIN dbo.Loads L			ON 	L.LoadNo = LSP.LoadNo');

    SQL.Add('INNER JOIN dbo.Loaddetail LD		ON 	LD.LoadNo = LSP.LoadNo');
    SQL.Add('and LD.ShippingPlanNo = LSP.ShippingPlanNo');

    SQL.Add('INNER JOIN dbo.SupplierShippingPlan SSP ON SSP.SupplierShipPlanObjectNo = LD.DefsspNo');

    SQL.Add('INNER JOIN dbo.PackageTypeDetail PTD		ON 	PTD.PackageTypeNo = LD.PackageTypeNo');

    SQL.Add('INNER JOIN dbo.ProductLength PL on PL.ProductLengthNo = PTD.ProductLengthNo');

    SQL.Add('LEFT OUTER JOIN dbo.LoadDtlVal LDV	ON LDV.LoadNo = LD.LoadNo');
    SQL.Add('AND LDV.LoadDetailNo = LD.LoadDetailNo');
    SQL.Add('AND LDV.ProductLengthNo = PTD.ProductLengthNo');
    SQL.Add('AND LDV.PaymentNo = -1');
    if Customer then
      SQL.Add('AND LDV.SupplierNo = SSP.CustomerNo')
    else
      SQL.Add('AND LDV.SupplierNo = SSP.SupplierNo');

    SQL.Add('INNER JOIN dbo.PackageType P		ON 	P.PackageTypeNo = LD.PackageTypeNo');

    SQL.Add('INNER JOIN dbo.Product PR		ON	PR.ProductNo = P.ProductNo');
    SQL.Add('LEFT OUTER JOIN dbo.InteralPrice	IP	ON 	IP.InteralPriceGroupNo  = PR.InteralPriceGroupNo');
    SQL.Add('AND	IP.SawMillNo	= L.SupplierNo');

    SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH');

    SQL.Add
      ('INNER JOIN dbo.Client OC				ON	OC.ClientNo 		= CSH.CustomerNo');
    SQL.Add('ON	CSH.ShippingPlanNo	= LSP.ShippingPlanNo');

    SQL.Add('WHERE');
    SQL.Add('LSP.LoadNo = :LoadNo');

    // SQL.SaveToFile('skapaavräkning sq_ArrivingPackages.TXT');
  End; // With dm_Avrakning.sq_ArrivingPackages do
End;

procedure TfrmSkapaAvrakning.cds_PropsVerkNoChange(Sender: TField);
begin
  With dm_Avrakning do
  Begin
    cdsArrivingLoads.Active := False;
    cdsArrivingPackages.Active := False;
  End;
end;

procedure TfrmSkapaAvrakning.cds_PropsStatusChange(Sender: TField);
begin
  With dm_Avrakning do
  Begin
    cdsArrivingLoads.Active := False;
    cdsArrivingPackages.Active := False;
    if cds_PropsStatus.AsInteger < 2 then
      grdLoadRowsDBTableView1END_CUSTOMER.Caption := 'Slutkund'
    else
      grdLoadRowsDBTableView1END_CUSTOMER.Caption := 'Leverantör';
  End;
end;

procedure TfrmSkapaAvrakning.LoadUserProps(const Form: String);
Var
  x: Integer;
  SalesGroup, ClientNo, MarknadNo, RegionNo: Integer;
Begin
  cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID;
  cds_Props.ParamByName('Form').AsString := Form;
  cds_Props.Active := True;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_Props.Post;
  End;
End;

procedure TfrmSkapaAvrakning.SaveUserProps(const Form: String);
Var
  x: Integer;
Begin
  // cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  // cds_Props.ParamByName('Form').AsString    := Form ;
  // cds_Props.Active:= True ;
  if cds_Props.Eof then
  Begin
    cds_Props.Insert;
    cds_PropsForm.AsString := Form;
    cds_PropsUserID.AsInteger := ThisUser.UserID;
  End;
  // else
  // cds_Props.Edit ;

  if cds_Props.State in [dsEdit, dsInsert] then
    cds_Props.Post;

  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

procedure TfrmSkapaAvrakning.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := self.Caption;
end;

end.
