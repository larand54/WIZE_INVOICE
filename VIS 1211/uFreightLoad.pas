unit uFreightLoad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, dxBar, dxBarExtItems, DB, SqlTimSt, Menus, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, // StBase,
  cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox, Buttons,
  ActnList, ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, DateUtils,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  dxPScxCommon, FMTBcd,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxCurrencyEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxDBEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSSLnk, dxSkinsdxRibbonPainter,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxNavigator, System.Actions,
  siComp, siLngLnk;

type
  TfrmFreightLoad = class(TForm)
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    bbRefresh: TdxBarLargeButton;
    bbExit: TdxBarLargeButton;
    bbSave: TdxBarLargeButton;
    imglistActions: TImageList;
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    lbSaveToOld: TdxBarLargeButton;
    bbSparaUtanFF: TdxBarLargeButton;
    grdLoadsDBTableView1: TcxGridDBTableView;
    grdLoadsLevel1: TcxGridLevel;
    grdLoads: TcxGrid;
    Panel1: TPanel;
    nfSearchLOnr: TcxTextEdit;
    Label1: TLabel;
    ActionList1: TActionList;
    acNextFSSearch: TAction;
    Label2: TLabel;
    nfSearchLoadNo: TcxTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    acPrint: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    acAndraFraktforare: TAction;
    acChangePrice: TAction;
    pmGrdLoads: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    acShowGroupByBox: TAction;
    lbLoadNo: TListBox;
    sbNext: TSpeedButton;
    acFill_In_Price_MarkedRows: TAction;
    Label6: TLabel;
    cbDateFilter: TcxCheckBox;
    acAndraLastStalleOchLevTill: TAction;
    acRefreshGrid: TAction;
    acSaveNew: TAction;
    acSaveWithOutFF: TAction;
    acSaveTo: TAction;
    acClose: TAction;
    PopupMenu2: TPopupMenu;
    ndralaststlleochdestinationpmarkeradelaster1: TMenuItem;
    ndraprispmarkeradelasterF101: TMenuItem;
    Lggtillprispmarkeraderader1: TMenuItem;
    Skrivut1: TMenuItem;
    UppdateraF61: TMenuItem;
    SparanyF31: TMenuItem;
    SparatillF111: TMenuItem;
    SparautanffShiftF31: TMenuItem;
    grdLoadsDBTableView1Markerad: TcxGridDBColumn;
    grdLoadsDBTableView1Belopp: TcxGridDBColumn;
    grdLoadsDBTableView1PrisPerAM3SEK: TcxGridDBColumn;
    grdLoadsDBTableView1Lastnr: TcxGridDBColumn;
    grdLoadsDBTableView1FS: TcxGridDBColumn;
    grdLoadsDBTableView1LastID: TcxGridDBColumn;
    grdLoadsDBTableView1Utlastad: TcxGridDBColumn;
    grdLoadsDBTableView1Speditr: TcxGridDBColumn;
    grdLoadsDBTableView1Utlastningsort: TcxGridDBColumn;
    grdLoadsDBTableView1Destination: TcxGridDBColumn;
    grdLoadsDBTableView1AM3: TcxGridDBColumn;
    grdLoadsDBTableView1Paket: TcxGridDBColumn;
    grdLoadsDBTableView1SupplierNo: TcxGridDBColumn;
    grdLoadsDBTableView1LO: TcxGridDBColumn;
    dxBarLargeButton2: TdxBarLargeButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdLoadsDBTableView1NoOfFS: TcxGridDBColumn;
    teSearchFS: TcxTextEdit;
    grdLoadsDBTableView1ShippingCompanyNo: TcxGridDBColumn;
    acOpenLoad: TAction;
    acMarkAllMarkedLoads: TAction;
    grdLoadsDBTableView1Note: TcxGridDBColumn;
    dxBarButton5: TdxBarButton;
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
    cds_PropsShipper: TStringField;
    cds_PropsBokningstyp: TStringField;
    cds_PropsLaststalle: TStringField;
    cds_PropsAgentNamn: TStringField;
    ds_Props: TDataSource;
    lcVerk: TcxDBLookupComboBox;
    lcShipper: TcxDBLookupComboBox;
    deStartPeriod: TcxDBDateEdit;
    deEndPeriod: TcxDBDateEdit;
    cds_Shippers: TFDStoredProc;
    cds_ShippersClientNo: TIntegerField;
    cds_ShippersClientName: TStringField;
    siLangLinked_frmFreightLoad: TsiLangLinked;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure OpenLoad1Click(Sender: TObject);
    procedure nfSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nfSearchLOnrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acNextFSSearchExecute(Sender: TObject);
    procedure acPrintExecute(Sender: TObject);
    procedure acAndraFraktforareExecute(Sender: TObject);
    procedure acChangePriceExecute(Sender: TObject);
    procedure acShowGroupByBoxExecute(Sender: TObject);
    procedure grdLoadsDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDateFilterPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acAndraLastStalleOchLevTillExecute(Sender: TObject);
    procedure acRefreshGridExecute(Sender: TObject);
    procedure acSaveNewExecute(Sender: TObject);
    procedure acSaveWithOutFFExecute(Sender: TObject);
    procedure acSaveToExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure grdLoadsDBTableView1StylesGetContentStyle
      (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cbTypAvFraktPropertiesChange(Sender: TObject);
    procedure teSearchFSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acOpenLoadExecute(Sender: TObject);
    procedure cds_PropsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    function InsertAvrHeader(const AvrakningsNr, ShipperNo: Integer;
      const ShippersInvoiceNo: String): Integer;
    procedure SaveLoadNr(Sender: TObject);
    procedure SaveFakturaNr(Sender: TObject);
    function SaveFakturaDetails(Sender: TObject;
      const AvrakningsNo: Integer): Boolean;
    procedure DeleteSavedDetails(Sender: TObject);
    procedure DeleteSavedDetailsUtanFF(Sender: TObject);
    function IsSelectedShipperDifferent(Sender: TObject): Boolean;
    function IsSelectedShipperDifferentUtanFF(Sender: TObject): Boolean;
    function SaveDetails(Sender: TObject;
      const AvrakningsNo, ShippingCompanyNo: Integer; const ShipperName: String)
      : Boolean;
    function SaveDetailsUtanFF(Sender: TObject; const AvrakningsNo: Integer;
      const ShipperName: String): Boolean;
    procedure SetNewLoadValues(Sender: TObject; const LocalShipper, FromPlace,
      ToDest: String; const ShippingCompanyNo: Integer);
    function InsertHeader(const AvrakningsNr, ShipperNo: Integer;
      const ShippersInvoiceNo: String): Integer;
    function InsertHeaderUtanFF(const AvrakningsNr, ShipperNo: Integer;
      const ShippersInvoiceNo: String): Integer;
    function FinnsMarkeradeLaster: Boolean;
    procedure BuildInternaSQL;

    procedure SetLoadPrice;
    procedure SetLoadShipper;
    procedure SetLastStalleOchLevTill;
    procedure SetMarkedRowsSelected;
    procedure SetLoadAsMarked;
    procedure SaveUserProps(const Form: String);
    procedure LoadUserProps(const Form: String);
  public
    { Public declarations }
    procedure CreateCo;
  end;

var
  frmFreightLoad: TfrmFreightLoad;

implementation

uses UnitdmModule1, dmsDataConn, VidaUser, dmsVidaContact,
  uMultiplaShippers, VidaUtils, UnitAvrakningar, VidaConst,
  uSelectShipper, uEntryField, dmsVidaSystem, uSelectLastStalleAndShipTo,
  UnitLoadEntrySSP, udmLanguage;

{$R *.dfm}

procedure TfrmFreightLoad.CreateCo;
Var
  x: Integer;
begin
  // bcVerk.Properties.OnChange:= Nil ;
  Try
    dmsSystem.LoadGridLayout(ThisUser.UserID,
      Self.Name + '/' + grdLoadsDBTableView1.Name, grdLoadsDBTableView1);

    LoadUserProps(Self.Caption);

    cds_Shippers.Insert;
    cds_ShippersClientNo.AsInteger := 0;
    cds_ShippersClientName.AsString := 'Ingen fraktförare';
    cds_Shippers.Post;

    cds_Shippers.Insert;
    cds_ShippersClientNo.AsInteger := 1;
    cds_ShippersClientName.AsString := 'Alla';
    cds_Shippers.Post;

    cds_Props.Edit;
    cds_PropsVerkNo.AsInteger := ThisUser.CompanyNo;
    cds_Props.Post;

  Finally
    // bcVerk.Properties.OnChange:= bcVerkPropertiesChange ;
  End;
end;

(* procedure TfrmFreightLoad.BuildInternaSQL ;
  Begin
  with dmModule1 do
  Begin
  if cbDateFilter.Checked then
  Begin
  deStart.Date  := RecodeHour(deStart.Date,0) ;
  deStart.Date  := RecodeMinute(deStart.Date,0) ;
  deStart.Date  := RecodeSecond(deStart.Date,0) ;

  deEnd.Date    := RecodeHour(deEnd.Date,23) ;
  deEnd.Date    := RecodeMinute(deEnd.Date,59) ;
  deEnd.Date    := RecodeSecond(deEnd.Date,59) ;
  End ;

  sqLoadFC.SQL.Clear ;
  sqLoadFC.SQL.Add('SELECT distinct') ;
  sqLoadFC.SQL.Add('lo.LocalShippingCompanyNo,') ;
  sqLoadFC.SQL.Add('Lo.LoadNo 			AS LOAD_NO,') ;
  sqLoadFC.SQL.Add('Lo.FS				AS FS,') ;
  sqLoadFC.SQL.Add('Lo.LoadID			AS LOAD_ID,') ;
  sqLoadFC.SQL.Add('Lo.LoadedDate			AS LOADEDDATE,') ;
  sqLoadFC.SQL.Add('shipper.clientname		AS SHIPPER,') ;
  sqLoadFC.SQL.Add('FromPlace.CityName 		AS FROM_PLACE,') ;
  sqLoadFC.SQL.Add('ToPlace.CityName 		AS DESTINATION,') ;

  sqLoadFC.SQL.Add('SUM(PTD.Totalm3Actual) 		AS M3_NET,') ;


  sqLoadFC.SQL.Add('LFC.PricePerM3_NET		AS PRICE,') ;
  sqLoadFC.SQL.Add('LFC.TotalSUM			AS INVOICEAMOUNT,') ;
  sqLoadFC.SQL.Add('LFC.CreatedUser			AS CREATEDUSER,') ;
  sqLoadFC.SQL.Add('LFC.ModifiedUser		AS MODIFIEDUSER,') ;
  sqLoadFC.SQL.Add('LFC.DateCreated			AS DATECREATED,') ;
  sqLoadFC.SQL.Add('LFC.DateModified		AS DATEMODIFIED,') ;
  sqLoadFC.SQL.Add('Lo.SupplierNo			AS SUPPLIERNO,') ;
  sqLoadFC.SQL.Add('LSP.ShippingPlanNo AS LONo,') ;

  sqLoadFC.SQL.Add('Count(LD.PackageTypeNo) AS Paket') ;
  sqLoadFC.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL') ;
  sqLoadFC.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadingLocationNo = CLL.PhyInvPointNameNo') ;

  sqLoadFC.SQL.Add('INNER JOIN dbo.Loads LO 				ON	LO.LoadNo 		= LSP.LoadNo') ;

  sqLoadFC.SQL.Add('INNER JOIN dbo.Loaddetail LD ON	LD.LoadNo 		= LSP.LoadNo') ;
  sqLoadFC.SQL.Add('AND LD.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO') ;
  sqLoadFC.SQL.Add('INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.PackageTypeNo') ;

  sqLoadFC.SQL.Add('left  outer join Client Shipper	on shipper.clientno = lo.LocalShippingCompanyNo') ;
  sqLoadFC.SQL.Add('left  outer  join City FromPlace	on FromPlace.CityNo = lo.LocalLoadingLocation') ;
  sqLoadFC.SQL.Add('left  outer  join City ToPlace		on ToPlace.CityNo = lo.LocalDestinationNo') ;

  sqLoadFC.SQL.Add('left join LoadFreightCost LFC	on Lo.LoadNo = LFC.LoadNo') ;

  sqLoadFC.SQL.Add('Inner Join dbo.Confirmed_Load   CL ON CL.Confirmed_LoadNo = LSP.LoadNo') ;
  sqLoadFC.SQL.Add('  				and CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ; //Mars 9 2006
  sqLoadFC.SQL.Add('Inner Join ClientRole CR ON CR.ClientNo = Lo.CustomerNo') ;
  sqLoadFC.SQL.Add('AND CR.RoleType = 9') ;
  sqLoadFC.SQL.Add('where') ;

  if integer(bcVerk.Properties.Items.Objects[bcVerk.ItemIndex]) = VIDA_WOOD_COMPANY_NO then
  sqLoadFC.SQL.Add('CLL.ClientNo = '+IntToStr(VIDA_WOOD_COMPANY_NO))
  else
  sqLoadFC.SQL.Add('CLL.ClientNo = '+IntToStr(integer(bcVerk.Properties.Items.Objects[bcVerk.ItemIndex])) );

  if cbDateFilter.Checked then
  sqLoadFC.SQL.Add('AND LO.LoadedDate BETWEEN ' + QuotedStr(DateToStr(deStart.Date)) + ' AND ' + QuotedStr(DateToStr(deEnd.Date))) ;

  if peShippers.ItemIndex = 0 then
  sqLoadFC.SQL.Add('AND lo.LocalShippingCompanyNo IS NULL')
  else
  if peShippers.ItemIndex > 1 then
  sqLoadFC.SQL.Add('AND lo.LocalShippingCompanyNo = '+IntToStr(integer(peShippers.Properties.Items.Objects[peShippers.ItemIndex])) );

  sqLoadFC.SQL.Add('AND  Lo.LoadNo NOT IN (Select LoadNo FROM LoadFreightCost)') ;


  sqLoadFC.SQL.Add('group by lo.LocalShippingCompanyNo,Lo.LoadNo, Lo.FS, Lo.LoadID, Lo.LoadedDate, shipper.clientname,') ;
  sqLoadFC.SQL.Add('FromPlace.CityName, ToPlace.CityName, LFC.PricePerM3_NET, LFC.TotalSUM,LFC.CreatedUser,') ;
  sqLoadFC.SQL.Add('LFC.ModifiedUser, LFC.DateCreated, LFC.DateModified, Lo.SupplierNo, LSP.ShippingPlanNo') ;

  sqLoadFC.SQL.Add('Order by Lo.LoadNo desc') ;
  //  if ThisUser.UserID = 8 then sqLoadFC.SQL.SaveToFile('sqLoadFC.TXT');
  End ;
  End ;
*)

procedure TfrmFreightLoad.BuildInternaSQL;
Begin
  with dmModule1 do
  Begin
    if cbDateFilter.Checked then
    Begin
      { deStart.Date  := RecodeHour(deStart.Date,0) ;
        deStart.Date  := RecodeMinute(deStart.Date,0) ;
        deStart.Date  := RecodeSecond(deStart.Date,0) ;

        deEnd.Date    := RecodeHour(deEnd.Date,23) ;
        deEnd.Date    := RecodeMinute(deEnd.Date,59) ;
        deEnd.Date    := RecodeSecond(deEnd.Date,59) ; }
    End;

    cds_LoadFC.SQL.Clear;
    cds_LoadFC.SQL.Add('SELECT distinct ');
    cds_LoadFC.SQL.Add('L.LoadNo AS Lastnr,');
    cds_LoadFC.SQL.Add('L.FS AS FS,');
    cds_LoadFC.SQL.Add('L.LoadID AS LastID,');
    cds_LoadFC.SQL.Add('L.LoadedDate AS Utlastad,');
    cds_LoadFC.SQL.Add('Shipper.clientname AS Speditör,');
    cds_LoadFC.SQL.Add('FromPlace.CityName AS Utlastningsort,');
    cds_LoadFC.SQL.Add('ToPlace.CityName AS Destination,');

    cds_LoadFC.SQL.Add('SUM(PTD.Totalm3Actual) AS AM3,');
    cds_LoadFC.SQL.Add('Count(LD.PackageNo) AS Paket,');
    cds_LoadFC.SQL.Add('L.SupplierNo AS SupplierNo,');
    cds_LoadFC.SQL.Add('LSP.ShippingPlanNo AS LO,');

    cds_LoadFC.SQL.Add('0 AS Markerad, 0.000 AS Belopp,');
    cds_LoadFC.SQL.Add('0.000 AS PrisPerAM3SEK,');

    cds_LoadFC.SQL.Add
      ('(Select Count(L2.FS) from dbo.Client_LoadingLocation CLL2');
    cds_LoadFC.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP2 ON LSP2.LoadingLocationNo = CLL2.PhyInvPointNameNo');
    cds_LoadFC.SQL.Add('INNER JOIN dbo.Loads L2 ON L2.LoadNo = LSP2.LoadNo');
    cds_LoadFC.SQL.Add('WHERE L2.FS = L.FS');
    cds_LoadFC.SQL.Add('AND LSP2.ShippingPlanNo = LSP.ShippingPlanNo');
    if dmsContact.ThisUserIsRoleType(cds_PropsVerkNo.AsInteger, cSalesRegion) then //= VIDA_WOOD_COMPANY_NO then
      cds_LoadFC.SQL.Add('AND CLL2.ClientNo = ' + IntToStr(cds_PropsVerkNo.AsInteger))
    else
      cds_LoadFC.SQL.Add('AND CLL2.ClientNo = ' + cds_PropsVerkNo.AsString);

    cds_LoadFC.SQL.Add('AND NOT EXISTS (Select * FROM dbo.LoadFreightCost L3');
    cds_LoadFC.SQL.Add('WHERE L3.LoadNo = L2.LoadNo)) AS NoOfFS,');

    // cds_LoadFC.SQL.Add('AND L2.LoadNo NOT IN (Select L3.LoadNo FROM dbo.LoadFreightCost L3') ;
    // cds_LoadFC.SQL.Add('WHERE L3.LoadNo = L2.LoadNo)) AS NoOfFS,') ;

    cds_LoadFC.SQL.Add('L.LocalShippingCompanyNo AS ShippingCompanyNo,');
    cds_LoadFC.SQL.Add
      ('LSP.LoadingLocationNo, csh.CustomerNo, ssp.CustomerNo AS ssp_CustomerNo,');
    cds_LoadFC.SQL.Add(QuotedStr('                              ') +
      ' AS Note');

    cds_LoadFC.SQL.Add('FROM   dbo.Client_LoadingLocation     CLL');
    cds_LoadFC.SQL.Add
      ('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.LoadingLocationNo = CLL.PhyInvPointNameNo');

    cds_LoadFC.SQL.Add
      ('INNER JOIN dbo.Loads L 				ON	L.LoadNo 		= LSP.LoadNo');

    cds_LoadFC.SQL.Add
      ('INNER JOIN dbo.Loaddetail LD ON	LD.LoadNo 		= LSP.LoadNo');
    cds_LoadFC.SQL.Add('AND LD.SHIPPINGPLANNO = LSP.SHIPPINGPLANNO');
    cds_LoadFC.SQL.Add
      ('INNER JOIN dbo.PackageType PTD ON PTD.PackageTypeNo = LD.PackageTypeNo');

    cds_LoadFC.SQL.Add
      ('Left  outer join dbo.Client Shipper	on shipper.clientno = L.LocalShippingCompanyNo');
    cds_LoadFC.SQL.Add
      ('Left  outer  join dbo.City FromPlace	on FromPlace.CityNo = L.LocalLoadingLocation');
    cds_LoadFC.SQL.Add
      ('Left  outer  join dbo.City ToPlace		on ToPlace.CityNo = L.LocalDestinationNo');

    cds_LoadFC.SQL.Add
      ('Inner Join dbo.SupplierShippingPlan ssp on ssp.SupplierShipPlanObjectNo = LD.DefsspNo');

    cds_LoadFC.SQL.Add
      ('Left  outer  join dbo.CustomerShippingPlanHeader csh on csh.ShippingPlanNo = ssp.ShippingPlanNo');

    cds_LoadFC.SQL.Add
      ('Inner Join dbo.Confirmed_Load CL ON CL.Confirmed_LoadNo = LSP.LoadNo');
    cds_LoadFC.SQL.Add
      ('  				and CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo');
    cds_LoadFC.SQL.Add('where');

//    if cds_PropsVerkNo.AsInteger = VIDA_WOOD_COMPANY_NO then
    if dmsContact.ThisUserIsRoleType(cds_PropsVerkNo.AsInteger, cSalesRegion) then
      cds_LoadFC.SQL.Add('CLL.ClientNo = ' + IntToStr(cds_PropsVerkNo.AsInteger))
    else
      cds_LoadFC.SQL.Add('CLL.ClientNo = ' + cds_PropsVerkNo.AsString);

    if cbDateFilter.Checked then
      cds_LoadFC.SQL.Add('AND L.LoadedDate BETWEEN ' +
        QuotedStr(DateToStr(deStartPeriod.Date)) + ' AND ' +
        QuotedStr(DateToStr(deEndPeriod.Date)));

    if cds_PropsShipperNo.AsInteger < 1 then
      cds_LoadFC.SQL.Add('AND L.LocalShippingCompanyNo IS NULL')
    else if cds_PropsShipperNo.AsInteger > 1 then
      cds_LoadFC.SQL.Add('AND L.LocalShippingCompanyNo = ' +
        cds_PropsShipperNo.AsString);

    cds_LoadFC.SQL.Add
      ('and  not exists (Select lfc.LoadNo FROM dbo.LoadFreightCost lfc WHERE lfc.LoadNo = L.LoadNo)');

    cds_LoadFC.SQL.Add
      ('group by L.LocalShippingCompanyNo,L.LoadNo, L.FS, L.LoadID, L.LoadedDate, shipper.clientname,');
    cds_LoadFC.SQL.Add('FromPlace.CityName, ToPlace.CityName, ');
    cds_LoadFC.SQL.Add
      ('L.SupplierNo, LSP.ShippingPlanNo, L.LocalShippingCompanyNo,');
    cds_LoadFC.SQL.Add('LSP.LoadingLocationNo, csh.CustomerNo, ssp.CustomerNo');

    cds_LoadFC.SQL.Add('Order by L.LoadNo desc');
    // if ThisUser.UserID = 8 then cds_LoadFC.SQL.SaveToFile('sqLoadInternaFrakt.TXT');
  End;
End;

function TfrmFreightLoad.InsertHeader(const AvrakningsNr, ShipperNo: Integer;
  const ShippersInvoiceNo: String): Integer;
Begin
  with dmModule1 do
  Begin
    Result := -1;
    cds_LoadFreightCostHeader.Insert;
    Try
      cds_LoadFreightCostHeaderAvrakningsNo.AsInteger := AvrakningsNr;
      cds_LoadFreightCostHeaderAvrakningsDate.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cds_LoadFreightCostHeaderDateCreated.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cds_LoadFreightCostHeaderDateModified.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cds_LoadFreightCostHeaderCreatedUser.AsInteger := ThisUser.UserID;
      cds_LoadFreightCostHeaderModifiedUser.AsInteger := ThisUser.UserID;
      cds_LoadFreightCostHeaderStatus.AsInteger := 0;
      cds_LoadFreightCostHeaderShippersInvoiceNo.AsString := ShippersInvoiceNo;
      cds_LoadFreightCostHeaderLocalShipperNo.AsInteger := ShipperNo;
      if cds_PropsVerkNo.AsInteger > 0 then
        cds_LoadFreightCostHeaderVerkNo.AsInteger := cds_PropsVerkNo.AsInteger;
      cds_LoadFreightCostHeader.Post;
      Result := cds_LoadFreightCostHeaderAvrakningsNo.AsInteger;
    Except
      Result := -1;
    End;
  End;
End;

procedure TfrmFreightLoad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFreightLoad.FormDestroy(Sender: TObject);
begin
  frmFreightLoad := NIL;
end;

procedure TfrmFreightLoad.DeleteSavedDetails(Sender: TObject);
begin
  with dmModule1 do
  Begin
    cds_LoadFC.Filtered := True;
    Try
      mtShippers.First;
      While not mtShippers.Eof do
      Begin
        cds_LoadFC.Filter := 'Markerad = 1 AND ShippingCompanyNo = ' +
          mtShippersShipperNo.AsString;
        cds_LoadFC.Filtered := True;
        cds_LoadFC.First;
        While not cds_LoadFC.Eof do
        Begin
          cds_LoadFC.Delete;
        End;
        mtShippers.Next;
      End;
    Finally
      cds_LoadFC.Filtered := False;
    End;
  End;
End;

function TfrmFreightLoad.IsSelectedShipperDifferent(Sender: TObject): Boolean;
begin
  with dmModule1 do
  Begin
    Result := False;
    cds_LoadFC.Filter := 'Markerad = 1';
    cds_LoadFC.Filtered := True;
    cds_LoadFC.First;
    Try
      mtShippers.Active := False;
      mtShippers.Active := True;
      mtShippers.Insert;
      mtShippersShipper.AsString := cds_LoadFCSpeditr.AsString;
      mtShippersShipperNo.AsInteger := cds_LoadFCShippingCompanyNo.AsInteger;
      mtShippersAvrakningsNr.AsInteger :=
        dmsConnector.NextMaxNo('LoadFreightCostHeader');
      mtShippers.Post;
      cds_LoadFC.Next;

      While not cds_LoadFC.Eof do
      Begin
        if not mtShippers.Locate('ShipperNo',
          cds_LoadFCShippingCompanyNo.AsInteger, []) then
        Begin
          mtShippers.Insert;
          mtShippersShipper.AsString := cds_LoadFCSpeditr.AsString;
          mtShippersShipperNo.AsInteger :=
            cds_LoadFCShippingCompanyNo.AsInteger;
          mtShippersAvrakningsNr.AsInteger :=
            dmsConnector.NextMaxNo('LoadFreightCostHeader');

          mtShippers.Post;
        End;
        cds_LoadFC.Next;
      End;

      if mtShippers.RecordCount > 1 then
        Result := True
      else
        Result := False;

    Finally
      cds_LoadFC.Filtered := False;
    End;
  End;
End;

(* function TfrmFreightLoad.IsSelectedShipperDifferent(Sender: TObject) : Boolean ;

  Var LBShippers : TStringList ;
  x       : Integer ;
  begin
  LBShippers:= TStringList.Create ;
  with dmModule1 do
  Begin
  Result:= False ;
  tblLoadFreight.Filter:= 'Checked = TRUE' ;
  tblLoadFreight.Filtered:=  True ;
  tblLoadFreight.First ;
  Try

  LBShippers.Add(tblLoadFreightSHIPPER.AsString) ;
  While not tblLoadFreight.Eof do
  Begin
  For x := 0 to LBShippers.Count-1 do
  if LBShippers[x] <> tblLoadFreightSHIPPER.AsString then
  Begin
  Result:= True ;
  Break ;
  End ;
  {   if sameShipper then
  For x := 0 to LBShippers.Count-1 do
  if LBShippers[x] <> tblLoadFreightSHIPPER.AsString then
  Result:= False
  else }
  LBShippers.Add(tblLoadFreightSHIPPER.AsString) ;
  tblLoadFreight.Next ;
  End ;

  {function SameShipper : Boolean ;
  Begin
  For x := 0 to LBShippers.Count-1 do
  if LBShippers[x] 0 tblLoadFreightSHIPPER.AsString then
  Result:= True ;
  end ; }


  Finally
  LBShippers.Free ;
  tblLoadFreight.Filtered:=  False ;
  End ;
  End ;
  End ; *)

function TfrmFreightLoad.SaveDetails(Sender: TObject;
  const AvrakningsNo, ShippingCompanyNo: Integer;
  const ShipperName: String): Boolean;
begin
  with dmModule1 do
  Begin
    Result := True;
    cds_LoadFC.Filter := 'Markerad = 1 AND ShippingCompanyNo = ' +
      IntToStr(ShippingCompanyNo);
    cds_LoadFC.Filtered := True;
    cds_LoadFC.First;
    Try
      While not cds_LoadFC.Eof do
      Begin
        cdsLoadFreightCost.Insert;
        Try
          cdsLoadFreightCostAvrakningsNo.AsInteger := AvrakningsNo;
          cdsLoadFreightCostLoadNo.AsInteger := cds_LoadFCLastNr.AsInteger;
          cdsLoadFreightCostM3_NET.AsFloat := cds_LoadFCAM3.AsFloat;
          cdsLoadFreightCostPricePerM3_NET.AsFloat :=
            cds_LoadFCPrisPerAM3SEK.AsFloat;
          cdsLoadFreightCostTotalSUM.AsFloat := cds_LoadFCBelopp.AsFloat;
          cdsLoadFreightCostNote.AsString := cds_LoadFCNote.AsString;
          cdsLoadFreightCost.Post;
        Except
          Result := False;
        End;
        cds_LoadFC.Next;
      End;
    Finally
      cds_LoadFC.Filtered := False;
    End;
  End;
End;

procedure TfrmFreightLoad.OpenLoad1Click(Sender: TObject);
begin
  { try
    with TfLoadHead.CreateWithExistingLoad(
    Self,
    grdLoadsDBTableView1.DataController.DataSource.DataSet.FieldByName('LOADNO').AsInteger) do
    try
    if ShowModal = mrOK then
    SetNewLoadValues (Sender, lcLocalShipper.Text, lcFrom.Text, lcTo.Text, cds_LoadHeadLocalShippingCompanyNo.AsInteger) ;

    finally
    Free
    end;
    finally
    try

    except
    on E:Exception do
    end;
    end; }
end;

procedure TfrmFreightLoad.SetNewLoadValues(Sender: TObject;
  const LocalShipper, FromPlace, ToDest: String;
  const ShippingCompanyNo: Integer);
begin
  { with dmModule1 do
    Begin
    tblLoadFreight.Edit ;
    tblLoadFreightSHIPPER.AsString:= LocalShipper ;
    tblLoadFreightFROM_PLACE.AsString:= FromPlace ;
    tblLoadFreightDESTINATION.AsString:= ToDest ;
    tblLoadFreightLocalShippingCompanyNo.AsInteger:= ShippingCompanyNo ;
    tblLoadFreight.Post ;
    End ; }
end;

procedure TfrmFreightLoad.nfSearchLoadNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  grdLoadsDBTableView1.Controller.ClearSelection;
  with dmModule1 do
  Begin
    if not cds_LoadFC.Locate('LastNr', StrToIntDef(nfSearchLoadNo.Text, 0), [])
    then
    Begin
      ShowMessage('No Match...');
      nfSearchLoadNo.SetFocus;
    End
    else
    Begin
      grdLoads.SetFocus;
      grdLoadsDBTableView1.DataController.LocateByKey
        (cds_LoadFCLastNr.AsInteger);
      grdLoadsDBTableView1PrisPerAM3SEK.Focused := True;
      grdLoads.SetFocus;
    End;
  End; // with
end;

procedure TfrmFreightLoad.nfSearchLOnrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  procedure ClearLO;
  Begin
    with dmModule1 do
    Begin
      cds_LoadFC.DisableControls;
      cds_LoadFC.Filter := 'LO <> 0';
      cds_LoadFC.Filtered := True;
      Try
        While not cds_LoadFC.Eof do
        Begin
          cds_LoadFC.Edit;
          cds_LoadFCLO.AsInteger := 0;
          cds_LoadFC.Post;
        End;
      Finally
        cds_LoadFC.Filtered := False;
        cds_LoadFC.EnableControls;
      End;
    End;
  End;

begin
  if Key <> VK_RETURN then
    Exit;
  grdLoadsDBTableView1.Controller.ClearSelection;
  with dmModule1 do
  Begin
    cds_LoadFC.DisableControls;
    Try
      // ClearLO ;
      // Try
      // sq_GetLoadNo.ParamByName('LO').AsInteger:= StrToIntDef(nfSearchLOnr.Text,0) ;
      // sq_GetLoadNo.Open ;
      // While not sq_GetLoadNo.Eof do
      // Begin
      // if cds_LoadFC.FindKey([sq_GetLoadNoLoadNo.AsInteger]) then
      cds_LoadFC.Filter := 'LO = ' + nfSearchLOnr.Text;
      cds_LoadFC.Filtered := True;
      Try
        if cds_LoadFC.RecordCount > 1 then
          ShowMessage('There are many rows for LO number = ' + nfSearchLOnr.Text);
      Finally
        cds_LoadFC.Filtered := False;
      End;

      if cds_LoadFC.Locate('LO', StrToIntDef(nfSearchLOnr.Text, 0), []) then
      Begin
        grdLoads.SetFocus;
        // cds_LoadFC.Edit ;
        // cds_LoadFCLO.AsInteger:= StrToIntDef(nfSearchLOnr.Text,0) ;
        // cds_LoadFC.Post ;
      End
      else
        ShowMessage('No Match...');
      // sq_GetLoadNo.Next ;
      // End ;
      // Finally
      // sq_GetLoadNo.Close ;
      // End ;
    Finally
      cds_LoadFC.EnableControls;
    End;
  End; // with
end;

function TfrmFreightLoad.FinnsMarkeradeLaster: Boolean;
Begin
  (* Result:= False ;
    with dmModule1 do
    Begin
    if cds_LoadFC.Active then
    Begin
    Try
    cds_LoadFC.Filter    := 'Markerad = 1' ;
    cds_LoadFC.Filtered  :=  True ;
    if cds_LoadFC.RecordCount > 0 then
    Result:= True
    else
    Result:= False ;
    Finally
    cds_LoadFC.Filtered:=  False ;
    End ;
    End
    else
    Result  := False ;
    End ; *)

  with dmModule1 do
  Begin
    if cds_LoadFC.Active then
    Begin
      if cds_LoadFC.Locate('Markerad', 1, []) then
        Result := True
      else
        Result := False;
    End
    else
      Result := False;
  End;
End;

function TfrmFreightLoad.InsertHeaderUtanFF(const AvrakningsNr,
  ShipperNo: Integer; const ShippersInvoiceNo: String): Integer;
Begin
  with dmModule1 do
  Begin
    Result := -1;

    cds_LoadFreightCostHeader.Insert;
    Try
      cds_LoadFreightCostHeaderAvrakningsNo.AsInteger := AvrakningsNr;
      cds_LoadFreightCostHeaderAvrakningsDate.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cds_LoadFreightCostHeaderDateCreated.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cds_LoadFreightCostHeaderDateModified.AsSQLTimeStamp :=
        DateTimeToSQLTimeStamp(Now);
      cds_LoadFreightCostHeaderCreatedUser.AsInteger := ThisUser.UserID;
      cds_LoadFreightCostHeaderModifiedUser.AsInteger := ThisUser.UserID;
      cds_LoadFreightCostHeaderStatus.AsInteger := 0;
      cds_LoadFreightCostHeaderShippersInvoiceNo.AsString := ShippersInvoiceNo;
      cds_LoadFreightCostHeaderLocalShipperNo.AsInteger := ShipperNo;
      if cds_PropsVerkNo.AsInteger > 0 then
        cds_LoadFreightCostHeaderVerkNo.AsInteger := cds_PropsVerkNo.AsInteger;

      cds_LoadFreightCostHeader.Post;
      Result := cds_LoadFreightCostHeaderAvrakningsNo.AsInteger;
    Except
      Result := -1;
    End;
  End;
End;

function TfrmFreightLoad.IsSelectedShipperDifferentUtanFF
  (Sender: TObject): Boolean;
begin
  with dmModule1 do
  Begin
    Result := False;
    cds_LoadFC.Filter := 'Markerad = 1';
    cds_LoadFC.Filtered := True;
    cds_LoadFC.First;
    Try
      mtShippers.Active := False;
      mtShippers.Active := True;
      mtShippers.Insert;
      mtShippersShipper.AsString := cds_LoadFCSpeditr.AsString;
      mtShippersShipperNo.AsInteger := cds_LoadFCShippingCompanyNo.AsInteger;
      mtShippersAvrakningsNr.AsInteger :=
        dmsConnector.NextMaxNo('LoadFreightCostHeader');
      mtShippers.Post;

      { cds_LoadFC.Next ;

        While not cds_LoadFC.Eof do
        Begin
        if not mtShippers.FindKey([cds_LoadFCSpeditr.AsString]) then
        Begin
        mtShippers.Insert ;
        mtShippersShipper.AsString:= cds_LoadFCSpeditr.AsString ;
        mtShippersShipperNo.AsInteger:= cds_LoadFCShippingCompanyNo.AsInteger ;
        mtShippersAvrakningsNr.AsInteger:= dmsConnector.NextMaxNo('LoadFreightCostHeader') ;

        mtShippers.Post ;
        End ;
        cds_LoadFC.Next ;
        End ; }

      if mtShippers.RecordCount > 1 then
        Result := True
      else
        Result := False;

    Finally
      cds_LoadFC.Filtered := False;
    End;
  End;
End;

function TfrmFreightLoad.SaveDetailsUtanFF(Sender: TObject;
  const AvrakningsNo: Integer; const ShipperName: String): Boolean;
begin
  with dmModule1 do
  Begin
    Result := True;
    cds_LoadFC.Filter := 'Markerad = 1';
    cds_LoadFC.Filtered := True;
    cds_LoadFC.First;
    Try
      While not cds_LoadFC.Eof do
      Begin
        cdsLoadFreightCost.Insert;
        Try
          cdsLoadFreightCostAvrakningsNo.AsInteger := AvrakningsNo;
          cdsLoadFreightCostLoadNo.AsInteger := cds_LoadFCLastNr.AsInteger;
          cdsLoadFreightCostM3_NET.AsFloat := cds_LoadFCAM3.AsFloat;
          cdsLoadFreightCostPricePerM3_NET.AsFloat :=
            cds_LoadFCPrisPerAM3SEK.AsFloat;
          cdsLoadFreightCostTotalSUM.AsFloat := cds_LoadFCBelopp.AsFloat;
          cdsLoadFreightCostNote.AsString := cds_LoadFCNote.AsString;
          cdsLoadFreightCost.Post;
        Except
          Result := False;
        End;
        cds_LoadFC.Next;
      End; // While not cds_LoadFC.Eof do
    Finally
      cds_LoadFC.Filtered := False;
    End;
  End;
End;

procedure TfrmFreightLoad.DeleteSavedDetailsUtanFF(Sender: TObject);
begin
  with dmModule1 do
  Begin
    cds_LoadFC.Filtered := True;
    Try
      mtShippers.First;
      While not mtShippers.Eof do
      Begin
        cds_LoadFC.Filter := 'Markerad = 1';
        cds_LoadFC.Filtered := True;
        cds_LoadFC.First;

        While not cds_LoadFC.Eof do
        Begin
          cds_LoadFC.Delete;
        End;

        mtShippers.Next;
      End;

    Finally
      cds_LoadFC.Filtered := False;
    End;

  End;
End;

procedure TfrmFreightLoad.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FinnsMarkeradeLaster = True then
    if MessageDlg
      ('You have loads selected but not yet saved, do you want to quit anyway?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      with dmModule1 do
      Begin
        cds_LoadFC.Close;
        cds_LoadFreightCostHeader.Close;
        cdsLoadFreightCost.Close;
      End;
      CanClose := True;

    End
    else
      CanClose := False;
  if CanClose then
  Begin
    dmsSystem.StoreGridLayout(ThisUser.UserID,
      Self.Name + '/' + grdLoadsDBTableView1.Name, grdLoadsDBTableView1);
    SaveUserProps(Self.Caption);
  End;
end;

procedure TfrmFreightLoad.acNextFSSearchExecute(Sender: TObject);
Var
  Search: Boolean;
  S, T: String;
  Posn: Cardinal;
begin
  if teSearchFS.Text > '' then
  Begin
    Search := False;
    with dmModule1 do
    Begin
      cds_LoadFC.DisableControls;
      Try
        T := teSearchFS.Text;
        cds_LoadFC.Next;
        Repeat
          S := cds_LoadFCFS.AsString;
          if Pos(Trim(T), S) > 0 then
          Begin
            Search := True;
            // grdLoadsDBTableView1.ViewData.Records[1].Focused:= True ;
          End
          else
            cds_LoadFC.Next;
        Until (Search = True) or (cds_LoadFC.Eof = True);

        if Search = False then
          ShowMessage('No more matches...');
      Finally
        cds_LoadFC.EnableControls;
      End;
    End; // With
  End; // if...
end;

procedure TfrmFreightLoad.acPrintExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmFreightLoad.acAndraFraktforareExecute(Sender: TObject);
Var
  OutputVal, ColIdx, i, RecIDX: Integer;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  lbLoadNo.Items.Clear;

  with dmModule1 do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Lastnr').Index;
        OutputVal := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];
        lbLoadNo.Items.Add(IntToStr(OutputVal));
      End;

      SetLoadShipper;

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmFreightLoad.acChangePriceExecute(Sender: TObject);
Var
  OutputVal, ColIdx, i, RecIDX: Integer;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
  NewPrice: Double;
begin
  NewPrice := 99;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  lbLoadNo.Items.Clear;

  with dmModule1 do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Lastnr').Index;
        OutputVal := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];
        lbLoadNo.Items.Add(IntToStr(OutputVal));
      End;

      SetLoadPrice;

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

function ReplacePeriods(S: String): String;
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

procedure TfrmFreightLoad.SetLoadPrice;
Var
  x: Integer;
  Save_Cursor: TCursor;
  fEntryField: TfEntryField;
Begin
  fEntryField := TfEntryField.Create(Nil);
  Try
    fEntryField.Caption := 'Ange pris';
    fEntryField.Label1.Caption := 'Pris:';
    if fEntryField.ShowModal = mrOK then
    Begin
      with dmModule1 do
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cds_LoadFC.DisableControls;
        Try
          For x := 0 to lbLoadNo.Items.Count - 1 do
            if cds_LoadFC.Locate('Lastnr', lbLoadNo.Items[x], []) then
            Begin
              cds_LoadFC.Edit;
              cds_LoadFCPrisPerAM3SEK.AsFloat :=
                StrToFloat(ReplacePeriods(fEntryField.eNoofpkgs.Text));
              cds_LoadFC.Post;
            End;
        Finally
          cds_LoadFC.EnableControls;
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;
      End; // with
    End;
  Finally
    FreeAndNil(fEntryField); // .Free ;
  End;
End;

procedure TfrmFreightLoad.SetLoadShipper;
Var
  x: Integer;
  fSelectShipper: TfSelectShipper;
  Save_Cursor: TCursor;
Begin
  fSelectShipper := TfSelectShipper.Create(Self);
  Try
    fSelectShipper.mtShipper.Active := True;
    if fSelectShipper.ShowModal = mrOK then
      with dmModule1 do
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cds_LoadFC.DisableControls;
        Try
          For x := 0 to lbLoadNo.Items.Count - 1 do
            if cds_LoadFC.Locate('Lastnr', lbLoadNo.Items[x], []) then
            Begin
              cds_LoadFC.Edit;
              cds_LoadFCShippingCompanyNo.AsInteger :=
                fSelectShipper.mtShipperClientNo.AsInteger;
              cds_LoadFCSpeditr.AsString :=
                fSelectShipper.mtShipperShipper.AsString;
              cds_LoadFC.Post;
              UpdateLoad(fSelectShipper.mtShipperClientNo.AsInteger,
                StrToInt(lbLoadNo.Items[x]));
              // UpdateLoadII(const LocalLoadingLocation, LocalDestinationNo, LoadNo : Integer) ;
            End;
        Finally
          cds_LoadFC.EnableControls;
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;
      End;

  Finally
    fSelectShipper.mtShipper.Active := False;
    FreeAndNil(fSelectShipper);
  End;
End;

procedure TfrmFreightLoad.acShowGroupByBoxExecute(Sender: TObject);
begin
  grdLoadsDBTableView1.OptionsView.GroupByBox :=
    not grdLoadsDBTableView1.OptionsView.GroupByBox;
end;

procedure TfrmFreightLoad.grdLoadsDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = 32 then
    SetMarkedRowsSelected;
end;

procedure TfrmFreightLoad.SetMarkedRowsSelected;
Var
  OutputVal, ColIdx, i, RecIDX: Integer;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
  // NewPrice       : Double ;
begin
  // NewPrice:= 99 ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  lbLoadNo.Items.Clear;

  with dmModule1 do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Lastnr').Index;
        OutputVal := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];
        lbLoadNo.Items.Add(IntToStr(OutputVal));
      End;

      SetLoadAsMarked;

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmFreightLoad.SetLoadAsMarked;
Var
  x: Integer;
  Save_Cursor: TCursor;
  fEntryField: TfEntryField;
Begin
  // fEntryField:= TfEntryField.Create(Nil);
  // Try
  // fEntryField.Caption:= 'Ange pris' ;
  // fEntryField.Label1.Caption:= 'Pris:' ;
  // if fEntryField.ShowModal = mrOK then
  // Begin
  with dmModule1 do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    cds_LoadFC.DisableControls;
    Try
      For x := 0 to lbLoadNo.Items.Count - 1 do
        if cds_LoadFC.Locate('Lastnr', lbLoadNo.Items[x], []) then
        Begin
          cds_LoadFC.Edit;
          cds_LoadFCMarkerad.AsInteger := 1;
          cds_LoadFC.Post;
        End;
    Finally
      cds_LoadFC.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // with
  // End ; //if..
  // Finally
  // FreeAndNil(fEntryField) ;//.Free ;
  // End ;
End;

procedure TfrmFreightLoad.cbDateFilterPropertiesChange(Sender: TObject);
begin
  if cbDateFilter.Checked then
  Begin
    deStartPeriod.Enabled := True;
    deEndPeriod.Enabled := True;
  End
  else
  Begin
    deStartPeriod.Enabled := False;
    deEndPeriod.Enabled := False;
  End;
end;

procedure TfrmFreightLoad.FormShow(Sender: TObject);
begin
  // deStartPeriod.Date := Date - 30 ;
  // deEndPeriod.Date   := Date ;
end;

procedure TfrmFreightLoad.acAndraLastStalleOchLevTillExecute(Sender: TObject);
Var
  OutputVal, ColIdx, i, RecIDX: Integer;
  ADATASET: TDataSet;
  Save_Cursor: TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  lbLoadNo.Items.Clear;

  with dmModule1 do
  Begin
    grdLoadsDBTableView1.BeginUpdate;
    grdLoadsDBTableView1.DataController.BeginLocate;
    Try
      ADATASET := grdLoadsDBTableView1.DataController.DataSource.DataSet;
      For i := 0 to grdLoadsDBTableView1.Controller.SelectedRecordCount - 1 do
      Begin
        RecIDX := grdLoadsDBTableView1.Controller.SelectedRecords[i]
          .RecordIndex;
        ColIdx := grdLoadsDBTableView1.DataController.GetItemByFieldName
          ('Lastnr').Index;
        OutputVal := grdLoadsDBTableView1.DataController.Values[RecIDX, ColIdx];
        lbLoadNo.Items.Add(IntToStr(OutputVal));
      End;

      SetLastStalleOchLevTill;

    Finally
      grdLoadsDBTableView1.DataController.EndLocate;
      grdLoadsDBTableView1.EndUpdate;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // with
end;

procedure TfrmFreightLoad.SetLastStalleOchLevTill;
Var
  x: Integer;
  fSelectLastStalleAndShipTo: TfSelectLastStalleAndShipTo;
  Save_Cursor: TCursor;
Begin
  fSelectLastStalleAndShipTo := TfSelectLastStalleAndShipTo.Create(Self);
  Try
    fSelectLastStalleAndShipTo.mtShipper.Active := True;
    if fSelectLastStalleAndShipTo.ShowModal = mrOK then
      with dmModule1 do
      Begin
        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crSQLWait; { Show hourglass cursor }
        cds_LoadFC.DisableControls;
        Try
          For x := 0 to lbLoadNo.Items.Count - 1 do
            if cds_LoadFC.Locate('Lastnr', lbLoadNo.Items[x], []) then
            Begin
              cds_LoadFC.Edit;
              // cds_LoadFCShippingCompanyNo.AsInteger := fSelectLastStalleAndShipTo.mtShipperClientNo.AsInteger ;
              cds_LoadFCUtlastningsort.AsString :=
                fSelectLastStalleAndShipTo.mtShipperLaststalle.AsString;
              cds_LoadFCDestination.AsString :=
                fSelectLastStalleAndShipTo.mtShipperDestination.AsString;
              cds_LoadFC.Post;
              UpdateLoadII
                (fSelectLastStalleAndShipTo.mtShipperLocalLoadingLocation.
                AsInteger,
                fSelectLastStalleAndShipTo.mtShipperLocalDestinationNo.
                AsInteger, StrToInt(lbLoadNo.Items[x]));
            End;
        Finally
          cds_LoadFC.EnableControls;
          Screen.Cursor := Save_Cursor; { Always restore to normal }
        End;
      End;

  Finally
    fSelectLastStalleAndShipTo.mtShipper.Active := False;
    FreeAndNil(fSelectLastStalleAndShipTo);
  End;
End;

procedure TfrmFreightLoad.acRefreshGridExecute(Sender: TObject);
Var
  x: Byte;
  Save_Cursor: TCursor;
Begin
  if FinnsMarkeradeLaster = True then
    if MessageDlg
      ('Click button "Yes" if you want to remove the selections.',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

  if (cds_PropsShipperNo.AsInteger > -1) and (cds_PropsVerkNo.AsInteger > 0)
  then
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    with dmModule1 do
    Begin
      cds_LoadFC.DisableControls;
      Try
        cds_LoadFC.Active := False;
        BuildInternaSQL;
        cds_LoadFC.Active := True;
      Finally
        cds_LoadFC.EnableControls;
        Screen.Cursor := Save_Cursor;
      End;
    End; // with
  End;
end;

procedure TfrmFreightLoad.acSaveNewExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
  fMultiplaShippers: TfMultiplaShippers;
begin
  if FinnsMarkeradeLaster then
  Begin
    with dmModule1 do
    Begin
      cds_LoadFC.DisableControls;
      cds_LoadFreightCostHeader.Active := True;
      cdsLoadFreightCost.Active := True;

      Try
        if cds_LoadFC.State = dsedit then
          cds_LoadFC.Post;

        if IsSelectedShipperDifferent(Sender) = True then;

        if mtShippers.RecordCount > 0 then
        Begin
          fMultiplaShippers := TfMultiplaShippers.Create(Nil);
          Try
            if fMultiplaShippers.ShowModal = mrCancel then
              Exit;
          Finally
            FreeAndNil(fMultiplaShippers);
            // Application.ProcessMessages ;
          End;
        End
        else
          Exit;

        SaveLoadNr(Sender);

      Finally
        cdsLoadFreightCost.Active := False;
        cds_LoadFreightCostHeader.Active := False;
        cds_LoadFC.First;
        cds_LoadFC.EnableControls;
      End;
    End; // with
  End
  else
    ShowMessage('There are no loads selected.');
end;

procedure TfrmFreightLoad.acSaveWithOutFFExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
  fMultiplaShippers: TfMultiplaShippers;
begin
  if FinnsMarkeradeLaster then
  Begin
    with dmModule1 do
    Begin
      cds_LoadFC.DisableControls;
      cds_LoadFreightCostHeader.Active := True;
      cdsLoadFreightCost.Active := True;
      Try
        if cds_LoadFC.State = dsedit then
          cds_LoadFC.Post;
        if IsSelectedShipperDifferentUtanFF(Sender) = True then;
        if mtShippers.RecordCount > 0 then
        Begin
          fMultiplaShippers := TfMultiplaShippers.Create(Nil);
          Try
            if fMultiplaShippers.ShowModal = mrCancel then
              Exit;
          Finally
            FreeAndNil(fMultiplaShippers);
          End;
        End
        else
          Exit;

        Save_Cursor := Screen.Cursor;
        Screen.Cursor := crHourGlass; { Show hourglass cursor }
        Try
          mtShippers.First;
          While not mtShippers.Eof do
          Begin
            InsertHeaderUtanFF(mtShippersAvrakningsNr.AsInteger,
              mtShippersShipperNo.AsInteger,
              mtShippersShippersInvoiceNo.AsString);
            if mtShippersAvrakningsNr.AsInteger <> -1 then
            Begin
              if SaveDetailsUtanFF(Sender, mtShippersAvrakningsNr.AsInteger,
                mtShippersShipper.AsString) then;
            End
            else
              ShowMessage('Error in settlement.');
            mtShippers.Next;
          End; // While not mtShippers.

          if (cds_LoadFreightCostHeader.ChangeCount > 0) and
            (cdsLoadFreightCost.ChangeCount > 0) then
          Begin
            cds_LoadFreightCostHeader.ApplyUpdates(0);
            cdsLoadFreightCost.ApplyUpdates(0);
            DeleteSavedDetailsUtanFF(Sender);
          End
          else
          Begin
            cds_LoadFreightCostHeader.CancelUpdates;
            cdsLoadFreightCost.CancelUpdates;
          End;

        Finally
          Screen.Cursor := Save_Cursor;
        End;

      Finally
        cdsLoadFreightCost.Active := False;
        cds_LoadFreightCostHeader.Active := False;
        cds_LoadFC.First;
        cds_LoadFC.EnableControls;
      End;
    End; // with
  End
  else
    ShowMessage('No loads selected.');
end;

procedure TfrmFreightLoad.acSaveToExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
  AvrakningsNo: Integer;
  mr: Word;
  Shipper: String;
begin
  if FinnsMarkeradeLaster then
  Begin
    with dmModule1 do
    Begin
      cds_LoadFC.DisableControls;
      cdsLoadFreightCost.Active := True;

      Try
        if cds_LoadFC.State = dsedit then
          cds_LoadFC.Post;

        if IsSelectedShipperDifferent(Sender) = True then
        Begin
          ShowMessage
            ('All loads must have same freight company when adding to an existing freight settlement.');
          Exit;
        End;
        // Select Avräkning
        if Assigned(frmAvrakningar) then
          FreeAndNil(frmAvrakningar); // .Free

        frmAvrakningar := TfrmAvrakningar.Create(Nil);
        Try
          frmAvrakningar.CreateCo(ThisUser.CompanyNo);
          cds_LoadFreightCostHeader2.Filter := 'STATUS = ' +
            cds_PropsStatus.AsString + ' AND SHIPPER = ' +
            QuotedStr(lcShipper.Text);
          cds_LoadFreightCostHeader2.Filtered := True;

          mr := frmAvrakningar.ShowModal;
          Shipper := dmModule1.cds_LoadFreightCostHeader2SHIPPER.AsString;
          AvrakningsNo :=
            dmModule1.cds_LoadFreightCostHeader2AvrakningsNo.AsInteger;
        Finally
          FreeAndNil(frmAvrakningar);
        End;

        if Shipper <> mtShippersShipper.AsString then
        Begin
          ShowMessage
            ('Freight company must be the same as it is in the selected settlement.');
          Exit;
        End;

        if mr = mrOK then
        Begin
          Save_Cursor := Screen.Cursor;
          Screen.Cursor := crHourGlass; { Show hourglass cursor }
          Try
            // Endast en shipper i detta fall
            mtShippers.First;
            if AvrakningsNo <> -1 then
              if SaveDetails(Sender, AvrakningsNo,
                mtShippersShipperNo.AsInteger, mtShippersShipper.AsString) = False
              then
                ShowMessage('Error saving freight settlement rows.');

            if cdsLoadFreightCost.ChangeCount > 0 then
            Begin
              cdsLoadFreightCost.ApplyUpdates(0);
              if cds_PropsShipperNo.AsInteger = 0 then
                DeleteSavedDetailsUtanFF(Sender)
              else
                DeleteSavedDetails(Sender);
            End
            else
            Begin
              cdsLoadFreightCost.CancelUpdates;
            End;

          Finally
            Screen.Cursor := Save_Cursor;
          End;
        End;

      Finally
        cdsLoadFreightCost.Active := False;
        cds_LoadFC.First;
        cds_LoadFC.EnableControls;
      End;
    End; // with

  End
  else
    ShowMessage('No loads selected.');
end;

procedure TfrmFreightLoad.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFreightLoad.grdLoadsDBTableView1StylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  NoOfFS: Integer;
begin
  if ARecord.Values[TcxGridDBTableView(Sender).GetColumnByFieldName('NoOfFS').
    Index] <> null then
    NoOfFS := ARecord.Values[TcxGridDBTableView(Sender)
      .GetColumnByFieldName('NoOfFS').Index];
  if NoOfFS > 1 then
    AStyle := cxStyle1;
End;

procedure TfrmFreightLoad.cbTypAvFraktPropertiesChange(Sender: TObject);
begin
  if cds_PropsShipperNo.AsInteger > 0 then
    acRefreshGridExecute(Sender);
end;

procedure TfrmFreightLoad.SaveLoadNr(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  with dmModule1 do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    Try
      mtShippers.First;
      While not mtShippers.Eof do
      Begin
        InsertHeader(mtShippersAvrakningsNr.AsInteger,
          mtShippersShipperNo.AsInteger, mtShippersShippersInvoiceNo.AsString);
        if mtShippersAvrakningsNr.AsInteger <> -1 then
        Begin
          if cds_PropsShipperNo.AsInteger = 0 then
          Begin
            if SaveDetailsUtanFF(Sender, mtShippersAvrakningsNr.AsInteger,
              mtShippersShipper.AsString) then;
          End
          else if SaveDetails(Sender, mtShippersAvrakningsNr.AsInteger,
            mtShippersShipperNo.AsInteger, mtShippersShipper.AsString) then;
        End
        else
          ShowMessage('Error in settlement.');
        mtShippers.Next;
      End; // While not mtShippers.

      if (cds_LoadFreightCostHeader.ChangeCount > 0) and
        (cdsLoadFreightCost.ChangeCount > 0) then
      Begin
        cds_LoadFreightCostHeader.ApplyUpdates(0);
        cdsLoadFreightCost.ApplyUpdates(0);

        if cds_PropsShipperNo.AsInteger = 0 then
          DeleteSavedDetailsUtanFF(Sender)
        else
          DeleteSavedDetails(Sender);
      End
      else
      Begin
        cds_LoadFreightCostHeader.CancelUpdates;
        cdsLoadFreightCost.CancelUpdates;
      End;

    Finally
      Screen.Cursor := Save_Cursor;
    End;

  End; // with
end;

procedure TfrmFreightLoad.SaveFakturaNr(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  with dmModule1 do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass; { Show hourglass cursor }
    Try
      dmsConnector.StartTransaction;
      try
        mtShippers.First;
        While not mtShippers.Eof do
        Begin

          InsertAvrHeader(mtShippersAvrakningsNr.AsInteger,
            mtShippersShipperNo.AsInteger,
            mtShippersShippersInvoiceNo.AsString);
          if mtShippersAvrakningsNr.AsInteger <> -1 then
          Begin
            SaveFakturaDetails(Sender, mtShippersAvrakningsNr.AsInteger);
            { if peShippers.ItemIndex = 0 then
              Begin
              if SaveDetailsUtanFF(Sender, mtShippersAvrakningsNr.AsInteger, mtShippersShipper.AsString ) then ;
              End
              else
              if SaveDetails(Sender, mtShippersAvrakningsNr.AsInteger, mtShippersShipperNo.AsInteger, mtShippersShipper.AsString ) then ;
            }
          End
          else
            ShowMessage('Error in settlement.');
          mtShippers.Next;
        End; // While not mtShippers.

        dmsConnector.Commit;
        DeleteSavedDetailsUtanFF(Sender);
      except
        dmsConnector.Rollback;
      end;

    Finally
      Screen.Cursor := Save_Cursor;
    End;

  End; // with
end;

function TfrmFreightLoad.SaveFakturaDetails(Sender: TObject;
  const AvrakningsNo: Integer): Boolean;
begin
  { with dmModule1 do
    Begin
    Result:= True ;
    cds_LoadFC.Filter   := 'Markerad = 1' ;
    cds_LoadFC.Filtered :=  True ;
    cds_LoadFC.First ;
    Try
    While not cds_LoadFC.Eof do
    Begin
    Try
    sq_InsFakturaLoads.ParamByName('InternalInvoiceNo').AsInteger  := cds_LoadFCInternalInvoiceNo.AsInteger ;
    sq_InsFakturaLoads.ParamByName('AvrakningNr').AsInteger        := AvrakningsNo ;
    sq_InsFakturaLoads.ParamByName('TotalFrakt').AsFloat           := cds_LoadFCBelopp.AsFloat ;
    sq_InsFakturaLoads.ExecSQL(False) ;
    except
    On E: Exception do
    Begin
    dmsSystem.FDoLog(E.Message) ;
    Result:= False ;
    //      ShowMessage(E.Message);
    Raise ;
    End ;
    end;

    cds_LoadFC.Next ;
    End ;
    Finally
    cds_LoadFC.Filtered:=  False ;
    End ;
    End ;
  }
End;

function TfrmFreightLoad.InsertAvrHeader(const AvrakningsNr, ShipperNo: Integer;
  const ShippersInvoiceNo: String): Integer;
Begin
  with dmModule1 do
  Begin
    Result := -1;

    cds_LoadFreightCostHeader.Insert;
    Try
      sq_InsAvrHdr.ParamByName('AvrakningsNr').AsInteger := AvrakningsNr;
      sq_InsAvrHdr.ParamByName('Status').AsInteger := 0;
      sq_InsAvrHdr.ParamByName('ShipperNo').AsInteger := ShipperNo;
      sq_InsAvrHdr.ParamByName('UserID').AsInteger := ThisUser.UserID;
      sq_InsAvrHdr.ParamByName('Note').AsString := '';
      sq_InsAvrHdr.ParamByName('ShippersInvoiceNo').AsString :=
        ShippersInvoiceNo;
      if cds_PropsVerkNo.AsInteger > 0 then
        sq_InsAvrHdr.ParamByName('VerkNo').AsInteger :=
          cds_PropsVerkNo.AsInteger
      else
        sq_InsAvrHdr.ParamByName('VerkNo').AsInteger := -1;
      sq_InsAvrHdr.execSQL;

      Result := AvrakningsNr;
    except
      On E: Exception do
      Begin
        dmsSystem.FDoLog(E.Message);
        Result := -1;
        // ShowMessage(E.Message);
        Raise;
      End;
    end;
  End;
End;

procedure TfrmFreightLoad.teSearchFSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  Search: Boolean;
  S, T: String;
  Posn: Cardinal;
  LastNr: Integer;
begin
  grdLoadsDBTableView1.Controller.ClearSelection;
  Search := False;
  if Key <> VK_RETURN then
    Exit;
  with dmModule1 do
  Begin
    cds_LoadFC.DisableControls;
    Try

      cds_LoadFC.Filter := 'FS LIKE ' + QuotedStr('%' + teSearchFS.Text + '%');
      cds_LoadFC.Filtered := True;
      Try
        if cds_LoadFC.RecordCount > 1 then
          ShowMessage('There are many rows where FS = ' + teSearchFS.Text);
        if cds_LoadFC.RecordCount > 0 then
          LastNr := cds_LoadFCLastNr.AsInteger;
      Finally
        cds_LoadFC.Filtered := False;
      End;

      if cds_LoadFC.Locate('LastNr', LastNr, []) then
        grdLoads.SetFocus;

      { T := teSearchFS.Text ;
        cds_LoadFC.First ;
        Repeat
        S := cds_LoadFCFS.AsString ;
        if Pos(Trim(T), S) > 0 then
        Search := True
        else
        cds_LoadFC.Next ;
        Until (Search = True) or  (cds_LoadFC.Eof = True) ;
        if Search = False then
        ShowMessage('Ingen Match...')
        else
        Begin
        grdLoads.SetFocus ;
        //     grdLoadsDBTableView1.DataController.LocateByKey(cds_LoadFCLastNr.AsInteger) ;
        //     grdLoadsDBTableView1.Controller.FocusedColumnIndex:= grdLoadsDBTableView1PRICE.Index-1 ;
        //     grdLoadsDBTableView1. .Controller.SelectedColumnCount
        grdLoads.SetFocus ;
        End ;
      }

    Finally
      cds_LoadFC.EnableControls;
    End;
  End; // With
end;

procedure TfrmFreightLoad.acOpenLoadExecute(Sender: TObject);
Var
  LSupplierNo: Integer;
begin
  with dmModule1 do
  Begin
    // if (grdFSDBTableView1.DataController.DataSet.Active) and (grdFSDBTableView1.DataController.DataSet.RecordCount > 0) then
    // Begin
    // dmcOrder.SupplierNo är valt företag i droplistan
    // Endast vidawood användare kan välja ett annat än sitt eget företag
    // Väljer en vida wood användare ett annat företag används LO.supplierNo som supplier till last form.

    { if ThisUser.CompanyNo = VIDA_WOOD_COMPANY_NO then
      LSupplierNo:= grdLODBTableView1.DataController.DataSet.FieldByName('Supplier').AsInteger
      else //dmcOrder.SupplierNo kan vara tex en lego
      LSupplierNo:= dmcOrder.SupplierNo ; }

    LockWindowUpdate(grdLoads.Handle);
    try
      // LoadBM := grdLoads.DataSource.DataSet.Bookmark;
      try
        with TfLoadEntrySSP.CreateWithExistingLoad(Self,
          // om användaren är vida wood skall supplierno vara LOens supplierno
          // då är det ingen risk att fel lager väljs
          // dmcOrder.SupplierNo,
          cds_LoadFCSupplierNo.AsInteger, cds_LoadFCLastNr.AsInteger, 0,
          // OrderType
          cds_LoadFCLoadingLocationNo.AsInteger, cds_LoadFCCustomerNo.AsInteger,
          // Avrop kund
          cds_LoadFCSupplierNo.AsInteger, cds_LoadFCssp_CustomerNo.AsInteger
          // LO customer
          ) do
          try
            ShowModal;
            Application.ProcessMessages;
          finally
            Free
          end;
      finally
        try
          // grdLoads.DataSource.DataSet.Bookmark := LoadBM;
        except
          on E: Exception do
            { Nothing };
        end;
      end;
    finally
      LockWindowUpdate(0);
    end;
    // End ;//if..
  End; // with dmModule1 do
end;

procedure TfrmFreightLoad.LoadUserProps(const Form: String);
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

procedure TfrmFreightLoad.SaveUserProps(const Form: String);
Var
  x: Integer;
Begin
  // cds_Props.ParamByName('UserID').AsInteger := ThisUser.UserID ;
  // cds_Props.ParamByName('Form').AsString    := Form ;
  // cds_Props.Active:= True ;
  { if cds_Props.Eof then
    Begin
    cds_Props.Insert ;
    cds_PropsForm.AsString    := Form ;
    cds_PropsUserID.AsInteger := ThisUser.UserID ;
    End ; }
  // else
  // cds_Props.Edit ;

  if cds_Props.State in [dsedit, dsInsert] then
    cds_Props.Post;

  if cds_Props.ChangeCount > 0 then
  Begin
    cds_Props.ApplyUpdates(0);
    cds_Props.CommitUpdates;
  End;

  cds_Props.Active := False;
End;

procedure TfrmFreightLoad.cds_PropsAfterInsert(DataSet: TDataSet);
begin
  cds_PropsUserID.AsInteger := ThisUser.UserID;
  cds_PropsForm.AsString := Self.Caption;
end;

end.
