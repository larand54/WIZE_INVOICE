unit fCreatePayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, StdCtrls, dxEditor, dxExEdtr, dxEdLib,
  dxDBTLCl, dxGrClms, Menus, SqlTimSt, DBXpress, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxBar, cxClasses, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions ;

type
  TfrmCreatePayment = class(TfrmDBForm)
    grdConfirmedLoads: TdxDBGrid;
    Splitter1: TSplitter;
    Panel1: TPanel;
    grdPkgs: TdxDBGrid;
    grdPkgsLO: TdxDBGridMaskColumn;
    grdPkgsPACKAGE_NO: TdxDBGridMaskColumn;
    grdPkgsSUPPLIERCODE: TdxDBGridMaskColumn;
    grdPkgsM3_NET: TdxDBGridMaskColumn;
    grdPkgsPRODUCT_DESCRIPTION: TdxDBGridMaskColumn;
    grdPkgsPCS: TdxDBGridMaskColumn;
    grdPkgsPACKAGEOK: TdxDBGridMaskColumn;
    grdPkgsPACKAGE_LOG: TdxDBGridMaskColumn;
    ToolbtnRefresh: TToolButton;
    ToolButton2: TToolButton;
    ToolbtnCreatePayment: TToolButton;
    ListBox1: TListBox;
    grdPkgsM3_NOM: TdxDBGridColumn;
    Panel2: TPanel;
    bcCompany: TdxPickEdit;
    grdPkgsVALUE: TdxDBGridMaskColumn;
    Label1: TLabel;
    peMomsFilter: TdxPickEdit;
    grdConfirmedLoadsINITIALS: TdxDBGridMaskColumn;
    grdConfirmedLoadsVIS_FS: TdxDBGridMaskColumn;
    grdConfirmedLoadsMILL_FS: TdxDBGridMaskColumn;
    grdConfirmedLoadsLOAD_DATE: TdxDBGridColumn;
    grdConfirmedLoadsSUPPCODE: TdxDBGridMaskColumn;
    grdConfirmedLoadsINT_CUSTOMER: TdxDBGridMaskColumn;
    grdConfirmedLoadsCUSTOMERNO: TdxDBGridMaskColumn;
    grdPkgsPRICE: TdxDBGridMaskColumn;
    grdPkgsNOM_LINEAL_METER: TdxDBGridMaskColumn;
    grdPkgsEND_CUSTOMER: TdxDBGridMaskColumn;
    PopupMenu1: TPopupMenu;
    OpenLoad1: TMenuItem;
    atOpenLoad: TAction;
    atCustomizeLayout: TAction;
    grdConfirmedLoadsSKATTE_UPPLAG: TdxDBGridCheckColumn;
    ToolButton1: TToolButton;
    tbChangeCustomer: TToolButton;
    atChangeVerkCustomer: TAction;
    grdConfirmedLoadsINVPOINTNAME: TdxDBGridMaskColumn;
    ToolButton3: TToolButton;
    tbRemoveLoadFromList: TToolButton;
    pmLoadDetails: TPopupMenu;
    miPackageInfo: TMenuItem;
    grdConfirmedLoadsSUPPLIER_NO: TdxDBGridMaskColumn;
    procedure ToolbtnRefreshClick(Sender: TObject);
    procedure ToolbtnCreatePaymentClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcCompanyChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure peMomsFilterChange(Sender: TObject);
    procedure atOpenLoadExecute(Sender: TObject);
    procedure atCustomizeLayoutExecute(Sender: TObject);
    procedure atChangeVerkCustomerExecute(Sender: TObject);
    procedure tbRemoveLoadFromListClick(Sender: TObject);
    procedure miPackageInfoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Old_LO_No, New_LO_No : Integer ;
    TypeOfPayment: Integer ;
    fSupplierNo : Integer ;
    New_CustomerNo : Integer ;
    Old_CustomerNo : Integer ;
    fLoadNo : Integer ;
    Old_LogicalInventoryPointNo : Integer ;

    procedure Build_Sold_Loads_SQL(Sender: TObject);
    procedure Build_VW_SQL(Sender: TObject);
    procedure Build_LegoLoads_SQL(Sender: TObject);
    procedure Build_PurchaseLoads_SQL(Sender: TObject) ;
    function  CopySSP(Sender : TObject) : Boolean ;
    procedure ChangeRelatedChildTables(Sender : TObject;
              New_SupplierShipPlanObjectNo, Old_SupplierShipPlanObjectNo : Integer) ;
    function  SSP_Exist(Var SupplierShipPlanObjectNo: Integer) : Boolean ;
    procedure ChangeCustomerInLoad(Sender : TObject) ;
    function  ChangeInventoryLocationInPackages(Sender : TObject) : Boolean ;
    function  GetNewCustomersInventoryPoint (Sender : TObject) : Integer ;
    function  NoOfLoadsOnLO(Sender: TObject) : Integer ;
    Function  ValidLoad : Boolean ;
  public
    { Public declarations }
    constructor CreateCo(const CompanyNo,TypeOfPayment: Integer);
    destructor  Destroy;
  end;

var
  frmCreatePayment: TfrmCreatePayment;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, dmsDataConn, dmcVidaPayment, UnitAvrakning,
  dmsVidaContact, uSelectInventory, 
  UnitPkgInfo, dmcVidaSystem ;

{$R *.dfm}

constructor TfrmCreatePayment.CreateCo(const CompanyNo, TypeOfPayment: Integer);
Var x : Integer ;
begin
  self.TypeOfPayment:= TypeOfPayment ;

  dmsContact.LoadSuppliers(bcCompany.Items);

  if Thisuser.CompanyNo = VIDA_WOOD_COMPANY_NO then bcCompany.Enabled:= True ;

  For x:= 0 to bcCompany.Items.Count -1 do
  if ThisUser.CompanyNo = integer(bcCompany.Items.Objects[x]) then
  Begin
   bcCompany.ItemIndex:= x ;
   fSupplierNo:= integer(bcCompany.Items.Objects[x]);
  End ;

  if ThisUser.UserID in [4,7,8] then
  Begin
   tbChangeCustomer.Enabled:= True ;
   tbRemoveLoadFromList.Enabled:= True ;
  End ;


end;

destructor TfrmCreatePayment.Destroy;
begin
  inherited;
end;


//droplista
{0 Utlaster med moms
1 Utlaster utan moms
2 Inlaster Lego
3 Inlaster Köp }
procedure TfrmCreatePayment.ToolbtnRefreshClick(Sender: TObject);
var
  Save_Cursor:TCursor;
begin
  inherited;
 Save_Cursor := Screen.Cursor;

 With dmcPayment do
 Begin
  Try
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cdsArrivingLoads.DisableControls ;
  dsrcArrivingLoads.DataSet:= Nil ;

//Inlaster Lego
//Inlaster Köp
  if peMomsFilter.ItemIndex in [2,3] then
  Begin
//WHEN :Lista = 1 then SSP.CustomerPrice
   dmcPayment.Lista:= 1 ; //Inköp
   if ThisUser.UserID in [4,7,8] then
   tbChangeCustomer.Enabled:= True
   else
   tbChangeCustomer.Enabled:= False ;
  End
  else
//Utlaster med moms
//Utlaster utan moms
//WHEN :Lista = 1 then Internal price
  Begin
   dmcPayment.Lista:= 0 ; //Utlast
   tbChangeCustomer.Enabled:= False ;
  End ;
//2 Inlaster Lego
  if peMomsFilter.ItemIndex = 2 then
  Begin
   if ThisUser.UserID in [4,7,8] then
    ToolbtnCreatePayment.Enabled:= True
     else
      ToolbtnCreatePayment.Enabled:= False ;
  End
   else
    ToolbtnCreatePayment.Enabled:= True ;

  cdsArrivingLoads.Active:= False ;
  if fSupplierNo = VIDA_WOOD_COMPANY_NO then
  Begin
   Build_VW_SQL(Sender) ;
  End
  else
  Begin // 2 Inlaster Lego 3 Inlaster Köp }
   if (peMomsFilter.ItemIndex = 2) or (peMomsFilter.ItemIndex = 3) then
   Begin
    if peMomsFilter.ItemIndex = 3 then
     Build_PurchaseLoads_SQL(Sender)
      else
       Build_LegoLoads_SQL(Sender) ;
   End
   else //0 Utlaster utan moms, 1 Utlaster utan moms
    Build_Sold_Loads_SQL(Sender) ;
  End ;

  cdsArrivingLoads.Active:= True ;

  finally
   dsrcArrivingLoads.DataSet:= cdsArrivingLoads ;
   cdsArrivingLoads.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 end ;
end;

procedure TfrmCreatePayment.ToolbtnCreatePaymentClick(Sender: TObject);
Var PaymentNo, x, y : Integer ;
    Duplicate, myRollBack : Boolean ;
    Save_Cursor : TCursor;
    frmAvrakning: TfrmAvrakning;
begin
  inherited;
 With dmcPayment do
 Begin

 Save_Cursor := Screen.Cursor;

 dmcPayment.cdsArrivingPackages.DisableControls ;

 Try
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }

 myRollBack := False ;
 Duplicate := False ;


 ListBox1.Items.Clear ;

  for x := 0 to (grdConfirmedLoads.SelectedCount - 1) do
  begin

//  DataSource.DataSet.Bookmark := SelectedRows[x]; //1st variant
   grdConfirmedLoads.DataSource.DataSet.GotoBookmark(Pointer(grdConfirmedLoads.SelectedRows[x])); //2nd variant

//Interverk kan blanda customers, det är alltid vw som är customer för ett verk
   if fSupplierNo = VIDA_WOOD_COMPANY_NO then
   Begin
    For y := 0 to ListBox1.Items.Count -1 do
    if ListBox1.Items[y] <> cdsArrivingLoadsINT_CUSTOMER.AsString then
     Duplicate := True ;
   End ;



   ListBox1.Items.Add(cdsArrivingLoadsINT_CUSTOMER.AsString) ;
//   ListBox1.Items.Add(cdsArrivingLoadsSUPPCODE.AsString) ;
  end;

 if Duplicate = False then
 Begin



  Try
  cdsPaymentHead.Active:= True ;
  cdsPaymentLoads.Active:= True ;

 if grdConfirmedLoads.SelectedCount  > 0 then
 Begin
  cdsPaymentHead.Insert ;
  cdsPaymentHeadPaymentNo.AsInteger       := dmsConnector.NextMaxNo('PaymentHead') ;
  PaymentNo                               := cdsPaymentHeadPaymentNo.AsInteger ;
  cdsPaymentHeadSenderStatus.AsInteger    := 0 ;
  cdsPaymentHeadMILL_InvoiceNo.AsString   := '' ;
  cdsPaymentHeadReceiverStatus.AsInteger  := 0 ;
  cdsPaymentHeadCreatedUser.AsInteger     := ThisUser.UserID ;
  cdsPaymentHeadModifiedUser.AsInteger    := ThisUser.UserID ;
  cdsPaymentHeadDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;

  cdsPaymentHeadTypeOf.AsInteger          := peMomsFilter.ItemIndex ;

  //En försäljning är supplier alltid det verk som är valt som supplier i droplistan.
  if peMomsFilter.ItemIndex in [0,1] then
  cdsPaymentHeadSupplierNo.AsInteger:= fSupplierNo
  else
  // om det är ett köp är VW alltid supplier
  cdsPaymentHeadSupplierNo.AsInteger:= VIDA_WOOD_COMPANY_NO ;

  //Är det ett köp är customer det verk som är valt i droplistan.
  if peMomsFilter.ItemIndex = 3 then
   cdsPaymentHeadCustomerNo.AsInteger:= fSupplierNo
   else
   //är det en försäljning är VW alltid customer
   cdsPaymentHeadCustomerNo.AsInteger:= VIDA_WOOD_COMPANY_NO ;

  cdsPaymentHead.Post ;

  if cdsPaymentHead.ApplyUpdates(0)  > 0 then
  Begin
   myRollBack := True ;
   ShowMessage('Misslyckades med att spara avräkningshuvud') ;
   Exit ;
  End ;


 Try
 with grdConfirmedLoads do
 begin
//  ListBox1.Items.Clear ;
  DataSource.DataSet.DisableControls;
  Try
  for x := 0 to (SelectedCount - 1) do
  begin

   DataSource.DataSet.GotoBookmark(Pointer(SelectedRows[x])); //2nd variant

//Kalkylera volymer baserad på ssp dimensionen och inte paket dimensionen!
  dmcSystem.sq_PkgTypeForAvr.ParamByName('LoadNo').AsInteger:= cdsArrivingLoadsVIS_FS.AsInteger ;
  dmcSystem.sq_PkgTypeForAvr.ExecSQL(False) ;


   sq_SummaryLoadDetails.Close ;
   sq_SummaryLoadDetails.ParamByName('LoadNo').AsInteger    := cdsArrivingLoadsVIS_FS.AsInteger ;
   sq_SummaryLoadDetails.ParamByName('PaymentNo').AsInteger := PaymentNo ;
   sq_SummaryLoadDetails.Open ;
   While Not sq_SummaryLoadDetails.Eof do
   Begin
    cdsPaymentLoads.Insert ;
    cdsPaymentLoadsPaymentNo.AsInteger        := dmcPayment.cdsPaymentHeadPaymentNo.AsInteger ;
    cdsPaymentLoadsLoadNo.AsInteger           := dmcPayment.cdsArrivingLoadsVIS_FS.AsInteger ;
    cdsPaymentLoadsShippingPlanNo.AsInteger   := dmcPayment.sq_SummaryLoadDetailsLO.AsInteger ;

    cdsPaymentLoadsTypeOf.AsInteger                     := peMomsFilter.ItemIndex ;
    cdsPaymentLoadsCreatedUser.AsInteger                := ThisUser.UserID ;
    cdsPaymentLoadsModifiedUser.AsInteger               := ThisUser.UserID ;
    cdsPaymentLoadsDateCreated.AsSQLTimeStamp           := DateTimeToSQLTimeStamp(Now) ;
    cdsPaymentLoadsPrice.AsFloat                        := dmcPayment.sq_SummaryLoadDetailsPRICE.AsFloat ;
    cdsPaymentLoadsTotalm3Nominal.AsFloat               := dmcPayment.sq_SummaryLoadDetailsNOM_M3.AsFloat ;
    cdsPaymentLoadsTotalm3Actual.AsFloat                := dmcPayment.sq_SummaryLoadDetailsACT_M3.AsFloat ;
    cdsPaymentLoadsTotalLinealMeterNominalLength.AsFloat:= dmcPayment.sq_SummaryLoadDetailsNOM_LPM.AsFloat ;
    cdsPaymentLoadsACT_Thick.AsFloat                    := dmcPayment.sq_SummaryLoadDetailsAKT_THICK.AsFloat ;
    cdsPaymentLoadsACT_Width.AsFloat                    := dmcPayment.sq_SummaryLoadDetailsAKT_WIDTH.AsFloat ;
    cdsPaymentLoadsNOM_Thick.AsFloat                    := dmcPayment.sq_SummaryLoadDetailsNOM_THICK.AsFloat ;
    cdsPaymentLoadsNOM_Width.AsFloat                    := dmcPayment.sq_SummaryLoadDetailsNOM_WIDTH.AsFloat ;
    cdsPaymentLoadsGradeName.AsString                   := dmcPayment.sq_SummaryLoadDetailsGradeName.AsString ;


    cdsPaymentLoads.Post ;
    sq_SummaryLoadDetails.Next ;
   End ; //While not..
  end;
  Finally
   DataSource.DataSet.EnableControls;
  End ;
 End ; //with grdConfirmedLoads do

  if cdsPaymentLoads.ApplyUpdates(0)  > 0 then myRollBack := True ;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }

  if myRollBack = False then
  Begin
 //  ShowMessage('Avräkning skapad, se "Invoice.Payment"') ;
   sq_INS_PaymentLoad_ST.ParamByName('PaymentNo').AsInteger:= dmcPayment.cdsPaymentHeadPaymentNo.AsInteger ;
   sq_INS_PaymentLoad_ST.ExecSQL(False) ;
   sq_PaymentLoadList.DataSource:= Nil ;
   cdsPayHead.Active:= False ;
   sq_PayHead.Close ;
   sq_PayHead.ParamByName('PaymentNo').AsInteger:= PaymentNo ;
   sq_PayHead.Open ;
   cdsPayHead.Active:= True ;

   cdsPaymentLoadList.Active:= False ;
   sq_PaymentLoadList.Close ;
   sq_PaymentLoadList.ParamByName('PaymentNo').AsInteger:= PaymentNo ;
   sq_PaymentLoadList.Open ;
   cdsPaymentLoadList.Active:= True ;

   AngraAvrakning := False ;
   frmAvrakning:= TfrmAvrakning.Create(Nil);
   Try
    frmAvrakning.ShowModal ;
    Application.ProcessMessages ;
   Finally
    FreeAndNil(frmAvrakning) ;
    cdsPayHead.Active:= False ;
    sq_PayHead.Close ;
    cdsPaymentLoadList.Active:= False ;
    sq_PaymentLoadList.DataSource:= dsPaymentHead ;
   End ;
   if AngraAvrakning = False then
   ToolbtnRefreshClick(Sender) ;
  End
  else
  ShowMessage('Fel, Avräkning ej skapad') ;
 Except
  ShowMessage('Fel, Avräkning ej skapad') ;
      raise;
 End ;

 End ; //if grdConfirmedLoads.Select...

 Finally
  cdsPaymentHead.Active:= False ;
  cdsPaymentLoads.Active:= False ;
 End ;
 End
  else
   Begin
    ShowMessage('Alla laster måste ha samma kund') ;
   End ;

 Finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
  dmcPayment.cdsArrivingPackages.EnableControls ;
 End ;
 end ; // with
end;

procedure TfrmCreatePayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 inherited;
 Action:= caFree ;
end;

procedure TfrmCreatePayment.Build_VW_SQL(Sender: TObject);
begin
 With dmcPayment do
 Begin
  sq_ArrivingLoads.Close ;
  sq_ArrivingLoads.SQL.Clear ;
  sq_ArrivingLoads.SQL.Add('SELECT DISTINCT') ;
  sq_ArrivingLoads.SQL.Add('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,') ;
  sq_ArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,') ;

  sq_ArrivingLoads.SQL.Add('US.INITIALS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,') ;

  sq_ArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientCode                         AS      INT_CUSTOMER,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientNo                         AS      CUSTOMERNO,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientNo                      AS       SUPPLIER_NO,') ;

  sq_ArrivingLoads.SQL.Add('0                      AS      SKATTE_UPPLAG') ;


  sq_ArrivingLoads.SQL.Add('FROM dbo.Loads L ') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= L.CustomerNo') ;


//Must be a confirmed load

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LS			ON	LS.LoadNo		= L.LoadNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.SupplierShippingPlan SSP		ON 	SSP.ShippingPlanNo	= LS.ShippingPlanNo') ;
  sq_ArrivingLoads.SQL.Add('  AND SSP.ShiptoInvPointNo = LS.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SSP.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH') ;
  sq_ArrivingLoads.SQL.Add(' INNER JOIN dbo.Orders O				ON	O.OrderNo		= CSH.OrderNo') ;

  sq_ArrivingLoads.SQL.Add(' LEFT OUTER JOIN dbo.ClientPreference CP		ON	CP.ClientNo		= O.CustomerNo') ;

  sq_ArrivingLoads.SQL.Add(' LEFT OUTER JOIN dbo.Address	A			ON	A.AddressNo = CSH.ClientBillingAddressNo') ;

  sq_ArrivingLoads.SQL.Add('ON	CSH.ShippingPlanNo	= LS.ShippingPlanNo') ;



  sq_ArrivingLoads.SQL.Add('Inner Join dbo.Confirmed_Load   CL') ;
  sq_ArrivingLoads.SQL.Add('Left Outer join dbo.Users	US	ON	US.UserID = cl.CreatedUser') ;
  sq_ArrivingLoads.SQL.Add('ON CL.Confirmed_LoadNo = L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add('AND CR.RoleType = 9') ;

  sq_ArrivingLoads.SQL.Add('WHERE') ;

//  sq_ArrivingLoads.SQL.Add('l.CustomerNo <> 741') ;
//  sq_ArrivingLoads.SQL.Add('AND l.SupplierNo <> l.CustomerNo') ;

//  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM PaymentLoad PL)') ;//, PaymentHead PH') ;
//  sq_ArrivingLoads.SQL.Add('WHERE') ;
//  sq_ArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo') ;
//  sq_ArrivingLoads.SQL.Add('AND PH.SupplierNo = '+IntToStr(fSupplierNo)+')') ;

  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)') ;


//  if ThisUser.UserID = 8 then  sq_ArrivingLoads.SQL.SaveToFile('Build_VW_SQL.txt');
//  sq_ArrivingLoads.Open ;

 End ; //With dmcPayment do
End ;

procedure TfrmCreatePayment.Build_Sold_Loads_SQL(Sender: TObject);
begin
 With dmcPayment do
 Begin
  sq_ArrivingLoads.Close ;
  sq_ArrivingLoads.SQL.Clear ;
  sq_ArrivingLoads.SQL.Add('SELECT DISTINCT') ;
  sq_ArrivingLoads.SQL.Add('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,') ;
  sq_ArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,') ;
  sq_ArrivingLoads.SQL.Add('US.INITIALS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,') ;

  sq_ArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientCode                         AS      INT_CUSTOMER,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientNo                         AS      CUSTOMERNO,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientNo                      AS       SUPPLIER_NO,') ;
          sq_ArrivingLoads.SQL.Add('IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE_UPPLAG') ;


  sq_ArrivingLoads.SQL.Add('FROM ') ;

//  sq_ArrivingLoads.SQL.Add('dbo.Client_LoadingLocation     CLL') ;

  sq_ArrivingLoads.SQL.Add('dbo.SupplierShippingPlan       SSP   	') ;     //ON CLL.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
  sq_ArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;
    
  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('						AND     L.supplierno 		= SSP.SUPPLIERno') ;
  sq_ArrivingLoads.SQL.Add('						AND     L.CustomerNo 		= SSP.CustomerNo') ;

  sq_ArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo=SSP.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= L.CustomerNo') ;

//  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LS			ON	LS.LoadNo		= L.LoadNo') ;

  sq_ArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH') ;
  sq_ArrivingLoads.SQL.Add(' INNER JOIN dbo.Orders O				ON	O.OrderNo		= CSH.OrderNo') ;
  sq_ArrivingLoads.SQL.Add(' LEFT OUTER JOIN dbo.ClientPreference CP		ON	CP.ClientNo		= O.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add(' LEFT OUTER JOIN dbo.Address	A			ON	A.AddressNo = CSH.ClientBillingAddressNo') ;

  sq_ArrivingLoads.SQL.Add('ON	CSH.ShippingPlanNo	= SSP.ShippingPlanNo') ;



  sq_ArrivingLoads.SQL.Add('Inner Join dbo.Confirmed_Load   CL') ;
  sq_ArrivingLoads.SQL.Add('Left Outer join dbo.Users	US	ON	US.UserID = cl.CreatedUser') ;
  sq_ArrivingLoads.SQL.Add('ON CL.Confirmed_LoadNo = L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add('AND CR.RoleType = 9') ;

  sq_ArrivingLoads.SQL.Add('WHERE') ;

   sq_ArrivingLoads.SQL.Add('SSP.SupplierNo  = '+IntToStr(fSupplierNo)) ;


   if peMomsFilter.itemIndex = const_Utan_Moms then
   Begin
    sq_ArrivingLoads.SQL.Add('AND  (SSP.ObjectType = 2)') ;
    sq_ArrivingLoads.SQL.Add('AND ((  A.CountryNo <> 9  ) OR (CP.VAT_OnInvoice = 1))') ;
   End
   else
//Laster med moms
   if peMomsFilter.itemIndex = const_Med_Moms then
   Begin
    sq_ArrivingLoads.SQL.Add('AND ( CP.VAT_OnInvoice = 0 and A.CountryNo = 9  )') ;
   End ;

  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM PaymentLoad PL, PaymentHead PH') ;
  sq_ArrivingLoads.SQL.Add('WHERE') ;
  sq_ArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo') ;
  sq_ArrivingLoads.SQL.Add('AND PH.SupplierNo = '+IntToStr(fSupplierNo)+')') ;

//  sq_ArrivingLoads.SQL.Add('GROUP BY  US.INITIALS, L.LoadNo, L.FS, L.LoadedDate, ') ;
//  sq_ArrivingLoads.SQL.Add('CP.VAT_OnInvoice, Mill.ClientCode, Cust.ClientCode, Cust.ClientNo') ;
//  sq_ArrivingLoads.SQL.Add(',Mill.ClientNo') ;

  sq_ArrivingLoads.SQL.Add('UNION') ;


  sq_ArrivingLoads.SQL.Add('SELECT DISTINCT') ;
  sq_ArrivingLoads.SQL.Add('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,') ;
  sq_ArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,') ;
  sq_ArrivingLoads.SQL.Add('US.INITIALS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,') ;

  sq_ArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientCode                         AS      INT_CUSTOMER,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientNo                         AS      CUSTOMERNO,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientNo                      AS       SUPPLIER_NO,') ;
  sq_ArrivingLoads.SQL.Add('IsNull(CP.VAT_OnInvoice,0)                        AS      SKATTE_UPPLAG') ;


  sq_ArrivingLoads.SQL.Add('FROM ') ;
//  sq_ArrivingLoads.SQL.Add('dbo.Client_LoadingLocation     CLL') ;

  sq_ArrivingLoads.SQL.Add('dbo.SupplierShippingPlan       SSP   	') ;//ON CLL.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;


  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
    sq_ArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;
    
  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('						AND     L.supplierno 		= SSP.SUPPLIERno') ;
  sq_ArrivingLoads.SQL.Add('						AND     L.CustomerNo 		= SSP.CustomerNo') ;

  sq_ArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo=SSP.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= L.SupplierNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= L.CustomerNo') ;


//  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LS			ON	LS.LoadNo		= L.LoadNo') ;

//  sq_ArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.InternalOrderHead	IOH		ON	IOH.ShippingPlanNo = LS.ShippingPlanNo') ;

  sq_ArrivingLoads.SQL.Add('LEFT OUTER JOIN dbo.CustomerShippingPlanHeader CSH') ;
  sq_ArrivingLoads.SQL.Add(' INNER JOIN dbo.Orders O				ON	O.OrderNo		= CSH.OrderNo') ;
  sq_ArrivingLoads.SQL.Add(' LEFT OUTER JOIN dbo.ClientPreference CP		ON	CP.ClientNo		= O.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add(' LEFT OUTER JOIN dbo.Address	A			ON	A.AddressNo = CSH.ClientBillingAddressNo') ;
  sq_ArrivingLoads.SQL.Add('ON	CSH.ShippingPlanNo	= SSP.LO_No') ;

  sq_ArrivingLoads.SQL.Add('Inner Join dbo.Confirmed_Load   CL') ;
  sq_ArrivingLoads.SQL.Add('Left Outer join dbo.Users	US	ON	US.UserID = cl.CreatedUser') ;
  sq_ArrivingLoads.SQL.Add('ON CL.Confirmed_LoadNo = L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('Inner Join ClientRole CR ON CR.ClientNo = L.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add('AND CR.RoleType = 9') ;

  sq_ArrivingLoads.SQL.Add('WHERE') ;


   sq_ArrivingLoads.SQL.Add('SSP.SupplierNo  = '+IntToStr(fSupplierNo)) ;


   if peMomsFilter.itemIndex = const_Utan_Moms then
   Begin
    sq_ArrivingLoads.SQL.Add('AND  (SSP.ObjectType = 1)') ;

//LARS Dec 19 laster på svenskt land och skatteupplag kom inte med
//    sq_ArrivingLoads.SQL.Add('AND (  A.CountryNo <> 9  )') ;

    sq_ArrivingLoads.SQL.Add('AND ((  A.CountryNo <> 9  ) OR (CP.VAT_OnInvoice = 1))') ;
   End
   else
//Laster med moms
   Begin
    sq_ArrivingLoads.SQL.Add('AND (  ( SSP.ObjectType = 1 AND ( CP.VAT_OnInvoice = 0 and A.CountryNo = 9  ))') ;
    sq_ArrivingLoads.SQL.Add('OR (SSP.ObjectType = 0))') ;

   End ;

  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM PaymentLoad PL, PaymentHead PH') ;
  sq_ArrivingLoads.SQL.Add('WHERE') ;
  sq_ArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo') ;
  sq_ArrivingLoads.SQL.Add('AND PH.SupplierNo = '+IntToStr(fSupplierNo)+')') ;

  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)') ;


//  sq_ArrivingLoads.SQL.Add('GROUP BY  US.INITIALS, L.LoadNo, L.FS, L.LoadedDate, ') ;
//  sq_ArrivingLoads.SQL.Add('CP.VAT_OnInvoice, Mill.ClientCode, Cust.ClientCode, Cust.ClientNo') ;
//  sq_ArrivingLoads.SQL.Add(',Mill.ClientNo') ;

//  if ThisUser.UserID = 8 then  sq_ArrivingLoads.SQL.SaveToFile('Build_Sold_Loads_SQL.txt');

//  sq_ArrivingLoads.Open ;

 End ; //With dmcPayment do
End ;

procedure TfrmCreatePayment.Build_LegoLoads_SQL(Sender: TObject);
begin
 With dmcPayment do
 Begin
  sq_ArrivingLoads.Close ;
  sq_ArrivingLoads.SQL.Clear ;
  sq_ArrivingLoads.SQL.Add('SELECT DISTINCT') ;
  sq_ArrivingLoads.SQL.Add('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,') ;
  sq_ArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,') ;

  sq_ArrivingLoads.SQL.Add('(SELECT US.INITIALS  FROM dbo.Confirmed_Load   CL, dbo.Users	US') ;
  sq_ArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
  sq_ArrivingLoads.SQL.Add('AND US.UserID = cl.CreatedUser) AS INITIALS,') ;

  sq_ArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientCode                         AS      INT_CUSTOMER,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientNo                         AS      CUSTOMERNO,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientNo                      AS       SUPPLIER_NO,') ;
  sq_ArrivingLoads.SQL.Add('0                        AS      SKATTE_UPPLAG') ;


  sq_ArrivingLoads.SQL.Add('FROM  dbo.Client_LoadingLocation     CLL 	') ;

  sq_ArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	CLL.PhyInvPointNameNo = IName.CityNo') ;

//  sq_ArrivingLoads.SQL.Add('Inner JOIN dbo.CITY		ST_AdrCY	ON	ST_AdrCY.CityNo 	= IName.CityNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.SupplierShippingPlan       SSP   	ON	CLL.PhyInvPointNameNo = SSP.ShipToInvPointNo') ;
  sq_ArrivingLoads.SQL.Add('Left Outer Join dbo.Orders O ON O.OrderNo = SSP.OrderNo') ;
  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
    sq_ArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add(' AND     L.supplierno 		= SSP.SUPPLIERno') ;
  sq_ArrivingLoads.SQL.Add(' AND     L.CustomerNo 		= SSP.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add(' INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SSP.SupplierNo') ;
  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SSP.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add(' WHERE') ;

//if Inlaster köp then
   sq_ArrivingLoads.SQL.Add('CLL.ClientNo = '+IntToStr(fSupplierNo)) ; // to get list of loads to pay
   sq_ArrivingLoads.SQL.Add('AND L.SenderLoadStatus = 2') ; // to get list of loads to pay

   sq_ArrivingLoads.SQL.Add('AND Cust.ClientNo <> '+IntToStr(fSupplierNo)) ;



   sq_ArrivingLoads.SQL.Add('AND L.LOADNO IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_Load )') ;

  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)') ;


  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM PaymentLoad PL, PaymentHead PH') ;
  sq_ArrivingLoads.SQL.Add('WHERE') ;
  sq_ArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo') ;
  sq_ArrivingLoads.SQL.Add('AND (PH.SupplierNo = '+IntToStr(fSupplierNo)) ;
  sq_ArrivingLoads.SQL.Add('OR PH.SupplierNo = 741))') ;


//  if ThisUser.UserID = 8 then  sq_ArrivingLoads.SQL.SaveToFile('LegoLoads.txt');
//  sq_ArrivingLoads.Open ;

 End ; //With dmcPayment do
End ;

procedure TfrmCreatePayment.Build_PurchaseLoads_SQL(Sender: TObject) ;
begin
 With dmcPayment do
 Begin
  sq_ArrivingLoads.Close ;
  sq_ArrivingLoads.SQL.Clear ;
  sq_ArrivingLoads.SQL.Add('SELECT DISTINCT') ;
  sq_ArrivingLoads.SQL.Add('isNull(SSP.ShipToInvPointNo,-1)		AS	INVPOINTNO,') ;
  sq_ArrivingLoads.SQL.Add('isNull(IName.CityName, '+QuotedStr('')+')		AS	INVPOINTNAME,') ;

  sq_ArrivingLoads.SQL.Add('(SELECT US.INITIALS  FROM dbo.Confirmed_Load   CL, dbo.Users	US') ;
  sq_ArrivingLoads.SQL.Add('WHERE CL.Confirmed_LoadNo = LSP.LoadNo AND CL.Confirmed_ShippingPlanNo = LSP.ShippingPlanNo') ;
  sq_ArrivingLoads.SQL.Add('AND US.UserID = cl.CreatedUser) AS INITIALS,') ;

  sq_ArrivingLoads.SQL.Add('L.LoadNo				AS	VIS_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.FS				        AS	MILL_FS,') ;
  sq_ArrivingLoads.SQL.Add('L.LoadedDate				AS	LOAD_DATE,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientCode                         AS      SUPPCODE,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientCode                         AS      INT_CUSTOMER,') ;
  sq_ArrivingLoads.SQL.Add('Cust.ClientNo                         AS      CUSTOMERNO,') ;
  sq_ArrivingLoads.SQL.Add('Mill.ClientNo                      AS       SUPPLIER_NO,') ;
  sq_ArrivingLoads.SQL.Add('0                        AS      SKATTE_UPPLAG') ;


//  sq_ArrivingLoads.SQL.Add('FROM  dbo.Client_LoadingLocation     CLL 	') ;

  sq_ArrivingLoads.SQL.Add('FROM dbo.SupplierShippingPlan       SSP   	') ;
  sq_ArrivingLoads.SQL.Add('inner JOIN dbo.City IName			ON	IName.CityNo = SSP.ShipToInvPointNo') ;
  sq_ArrivingLoads.SQL.Add('Left Outer Join dbo.Orders O ON O.OrderNo = SSP.OrderNo') ;
  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.LoadShippingPlan LSP 		ON 	LSP.ShippingPlanNo = SSP.ShippingPlanNo') ;
  sq_ArrivingLoads.SQL.Add('  AND LSP.ShiptoInvPointNo = SSP.ShipToInvPointNo') ;

  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Loads L 				ON	LSP.LoadNo 		= L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add(' AND     L.supplierno 		= SSP.SUPPLIERno') ;
  sq_ArrivingLoads.SQL.Add(' AND     L.CustomerNo 		= SSP.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add(' INNER JOIN dbo.Client Mill			ON	Mill.ClientNo 		= SSP.SupplierNo') ;
  sq_ArrivingLoads.SQL.Add('INNER JOIN dbo.Client Cust			ON	Cust.ClientNo 		= SSP.CustomerNo') ;
  sq_ArrivingLoads.SQL.Add(' WHERE') ;

//if Inlaster köp then
   sq_ArrivingLoads.SQL.Add('SSP.CustomerNo = '+IntToStr(fSupplierNo)) ; // to get list of loads to pay
   sq_ArrivingLoads.SQL.Add('AND L.SenderLoadStatus = 2') ; // to get list of loads to pay

   sq_ArrivingLoads.SQL.Add('AND L.LOADNO IN (SELECT Confirmed_LoadNo FROM dbo.Confirmed_Load )') ;


  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM dbo.LoadRemAvr)') ;


  sq_ArrivingLoads.SQL.Add('AND') ;
  sq_ArrivingLoads.SQL.Add('L.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('NOT IN (SELECT PL.LoadNo') ;
  sq_ArrivingLoads.SQL.Add('FROM PaymentLoad PL, PaymentHead PH') ;
  sq_ArrivingLoads.SQL.Add('WHERE') ;
  sq_ArrivingLoads.SQL.Add('PH.PaymentNo = PL.PaymentNo') ;
  sq_ArrivingLoads.SQL.Add('AND PH.CustomerNo = '+IntToStr(fSupplierNo)+')') ;


//  if ThisUser.UserID = 8 then  sq_ArrivingLoads.SQL.SaveToFile('PurchaseLoads_SQL.txt');
//  sq_ArrivingLoads.Open ;

 End ; //With dmcPayment do
End ;

procedure TfrmCreatePayment.FormShow(Sender: TObject);
begin
  inherited;
   ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmCreatePayment.bcCompanyChange(Sender: TObject);
begin
  inherited;
// SomethingChanged := True ;
 fSupplierNo:= integer(bcCompany.Items.Objects[bcCompany.ItemIndex]);
 ToolbtnRefreshClick(Sender) ;

end;

procedure TfrmCreatePayment.FormCreate(Sender: TObject);
begin
  inherited;
 dmcPayment.Lista:= 0 ; //Utlast
 peMomsFilter.ItemIndex:= 0 ;
end;

procedure TfrmCreatePayment.peMomsFilterChange(Sender: TObject);
begin
  inherited;
 ToolbtnRefreshClick(Sender) ;
end;

procedure TfrmCreatePayment.atOpenLoadExecute(Sender: TObject) ;
begin
{  inherited;
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

procedure TfrmCreatePayment.atCustomizeLayoutExecute(Sender: TObject);
begin
  inherited;
 grdConfirmedLoads.ColumnsCustomizing ;
end;

function TfrmCreatePayment.NoOfLoadsOnLO(Sender: TObject) : Integer ;
Var TempLOList : TStrings ; x : Integer ;
Begin
 With dmcPayment do
 Begin
  Result:= 0 ;
 TempLOList:= TStringList.Create ;
 Try
  cdsArrivingPackages.First ;
  TempLOList.Add(cdsArrivingPackagesLO.AsString) ;
  While not cdsArrivingPackages.Eof do
  Begin
   for x := 0 to TempLOList.Count-1 do
   Begin
    if cdsArrivingPackagesLO.AsString <> TempLOList.Strings[x] then
     TempLOList.Add(cdsArrivingPackagesLO.AsString) ;
   End ; //for x
   cdsArrivingPackages.Next ;
  End ;

  for x := 0 to TempLOList.Count-1 do
  Begin
   sq_NoOfLoads_LO.Close ;
   sq_NoOfLoads_LO.ParamByName('ShippingPlanNo').AsInteger:= StrToInt(TempLOList.Strings[x]) ;
   sq_NoOfLoads_LO.Open ;
   if sq_NoOfLoads_LONoOfLoads.AsInteger > Result then
    Result:= sq_NoOfLoads_LONoOfLoads.AsInteger ;
  End ; //for x
 Finally
  TempLOList.Free ;
 End ;
 End ; //With
End ;

procedure TfrmCreatePayment.atChangeVerkCustomerExecute(Sender: TObject);
Var fRollBack   : Boolean ;
    NoOfLoads   : Integer ;
    Trans1      : TTransactionDesc ;
    Save_Cursor : TCursor;
begin
  inherited;
 With dmcPayment do
 Begin

 Try
 cds_IntOrderHead.Active:= True ;
 fRollBack:= False ;
  Old_CustomerNo:= cdsArrivingLoadsCUSTOMERNO.AsInteger ;
  if Old_CustomerNo = VIDA_WOOD_COMPANY_NO then
   New_CustomerNo:= fSupplierNo
    else New_CustomerNo:= VIDA_WOOD_COMPANY_NO ;//fSupplierNo ;

  fLoadNo:= cdsArrivingLoadsVIS_FS.AsInteger ;


  if NoOfLoadsOnLO(Sender) = 0 then
  Begin
   ShowMessage('0 loads') ;
   NoOfLoads:= 0 ;
   Exit ;
  End
   else
  if NoOfLoadsOnLO(Sender) = 1 then
  Begin
   ShowMessage('1 load') ;
   NoOfLoads:= 1 ;
  End
  else
  if NoOfLoadsOnLO(Sender) > 1 then
  Begin
   ShowMessage('More than 1 load on this LO') ;
   NoOfLoads:= 2 ;
  End ;


 if ValidLoad = False then
 Begin
  ShowMessage('Sales Load cannot be changed!') ;
  Exit ;
 End ;

//9168

  if New_CustomerNo = VIDA_WOOD_COMPANY_NO then
  Begin
   if MessageDlg('Kunden kommer att ändras från '+cdsArrivingLoadsINT_CUSTOMER.AsString+' till VWS i denna last, fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit ;
  End
  else
  Begin
   if MessageDlg('Kunden kommer att ändras från '+cdsArrivingLoadsINT_CUSTOMER.AsString+' till '+bcCompany.Text+' i denna last, fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit ;
  End ;



 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 Try

 //Start Transaction
  Trans1.TransactionID:= 1 ;
  Trans1.IsolationLevel:= xilREADCOMMITTED ;
  dmsConnector.SQLConnection.StartTransaction(Trans1);
  Try



  sq_LS.Close ;
  sq_LS.ParamByName('LoadNo').AsInteger:= fLoadNo ;
  cds_LS.Active := True ;

//  sq_ConfLoad.Close ;
//  sq_ConfLoad.ParamByName('LoadNo').AsInteger:= fLoadNo ;
//  cds_ConfLoad.Active:= True ;


//  if NoOfLoads = 1 then
//   Change_SSP(Sender) //there is only one load so we change the existing LO
//   else
//   if NoOfLoads = 2 then
  fRollBack:=  CopySSP(Sender) ; //Copy and Make a new, well check if there is such LO already before create a new

  ChangeCustomerInLoad(Sender) ;

  if ChangeInventoryLocationInPackages(Sender) = False then fRollBack:= True ;



  if fRollBack = False then
  Begin
  if cds_IntOrderHead.ChangeCount > 0 then
   if cds_IntOrderHead.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ;

//set ssp update före loadhead
  if fRollBack = False then
  Begin
  if cds_SSP.ChangeCount > 0 then
   if cds_SSP.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ;


//set ssp update före loadhead
  if fRollBack = False then
  Begin
  if (cds_Update_SSP.Active) AND (cds_Update_SSP.ChangeCount > 0) then
   if cds_Update_SSP.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ;

  if fRollBack = False then
  Begin
  if cds_LoadHead.ChangeCount > 0 then
   if cds_LoadHead.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ;

  if fRollBack = False then
  Begin
   if cds_LS.ChangeCount > 0 then
   if cds_LS.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ;


{  if fRollBack = False then
  Begin
   if cds_LoadDetail.ChangeCount > 0 then
   if cds_LoadDetail.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ; }


  if fRollBack = False then
  Begin
  if cds_Pkgs.ChangeCount > 0 then
   if cds_Pkgs.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ;

{  if fRollBack = False then
  Begin
  if cds_ConfLoad.ChangeCount > 0 then
   if cds_ConfLoad.ApplyUpdates(0) > 0 then fRollBack:= True ;
  End ; }


  if fRollBack = True then
   Begin
    dmsConnector.SQLConnection.Rollback(Trans1) ;
    ShowMessage('Failed to change, rollback') ;
   End
   else
   Begin
    dmsConnector.SQLConnection.Commit(Trans1) ;
    ShowMessage('Customer changed on Load') ;
//    ToolbtnRefreshClick(Sender) ;
   End ;

//   dmsConnector.SQLConnection.Commit(Trans1) ;
  Except
   dmsConnector.SQLConnection.Rollback(Trans1);
   Exit ;
  End ;

 finally
  Screen.Cursor := Save_Cursor;  { Always restore to normal }
 End ;

  finally
   cds_Update_SSP.Active:= False ;
   cds_SSP.Active:= False ;
   sq_SSP.Close ;
   cds_LoadHead.Active:= False ;
   cds_Pkgs.Active:= False ;
//   cds_LoadDetail.Active := False ;
   cds_LS.Active := False ;
   cds_IntOrderHead.Active:= False ;
  end;
 End ;

 //Ändra verk i Last.
 //Ändrar inte statusen på paket.

 //Get the current LO by LoadShippingPlan

 //Add Copies of the LO but with different customer (selected by user)
 //However check that thoses LO's does not already exist!
 //Change Customer in Loads table

 //No need to change LoadShippingPlan.ShipToInvPointNo as it refers to City.CityNo

 //Only need to change these 2 tables if a new SSP was done.
 //Change LoadDetailMatch.SupplierShipPlanObjectNo
 //Change LoadDetailPkgLength.SupplierShipPlanObjectNo

 //Change logical inventory point for packages in load
 //Only change package that are in inventory = where status is 1
 //Get LogicalInventoryPointNo for new Verk Customer

 //Set PackageNumber.LogicalInventoryPointNo = New_LogicalInventoryPointNo

end;

function TfrmCreatePayment.ChangeInventoryLocationInPackages(Sender : TObject) : Boolean ;
Var
 NEW_LogicalInventoryPointNo : Integer ;
Begin
 NEW_LogicalInventoryPointNo:= 0 ;
 Old_LogicalInventoryPointNo := 0 ;
 Result:= True ;
 With dmcPayment do
 Begin
//  New_LogicalInventoryPointNo := GetNewCustomersInventoryPoint (Sender) ;
//  if New_LogicalInventoryPointNo > -1 then
//  Begin
//  if New_LogicalInventoryPointNo > 0 then
//  Begin
  sq_Pkgs.Close ;
  sq_Pkgs.ParamByName('LoadNo').AsInteger:= fLoadNo ;
  cds_Pkgs.Active:= True ;
  cds_Pkgs.First ;
//  NEW_LogicalInventoryPointNo:= default inventory
  While (not cds_Pkgs.Eof) and (Result = True) do
  Begin
   Try
   if Old_LogicalInventoryPointNo <> cds_PkgsLogicalInventoryPointNo.AsInteger then
   Begin
    Old_LogicalInventoryPointNo:= cds_PkgsLogicalInventoryPointNo.AsInteger ;
    NEW_LogicalInventoryPointNo:=  GetNewCustomersInventoryPoint (Sender) ;
   End ;

   cds_Pkgs.Edit ;


   cds_PkgsLogicalInventoryPointNo.AsInteger:= NEW_LogicalInventoryPointNo ;// New_LogicalInventoryPointNo ;
   cds_Pkgs.Post ;
   Result:= True ;
   Except
    Result:= False ;
   End ;
   cds_Pkgs.Next ;
  End ; //while
// sq_LoadPackages.Close ;
//  End ;
//  End
//  else
//   Result:= False ;
 End ; //with
End ;

function TfrmCreatePayment.GetNewCustomersInventoryPoint (Sender : TObject) : Integer ;
var frmSelectInventory: TfrmSelectInventory;
Begin
 With dmcPayment do
 Begin
  sq_GetNewLIPno.Close ;
  sq_GetNewLIPno.ParamByName('New_OwnerNo').AsInteger                 := New_CustomerNo ;
  sq_GetNewLIPno.ParamByName('Old_LogicalInventoryPointNo').AsInteger := Old_LogicalInventoryPointNo ;
  sq_GetNewLIPno.Open ;
  if (not sq_GetNewLIPno.Eof) and (sq_GetNewLIPnoNew_LogicalInventoryPointNo.AsInteger > 0) then
   Result:= sq_GetNewLIPnoNew_LogicalInventoryPointNo.AsInteger
   else
   Begin
    Result:= -1 ;
    //Paketet ligger på detta lager nu, välj vilket lager det skall ligga på
    frmSelectInventory:= TfrmSelectInventory.Create(Nil) ;
    Try
    frmSelectInventory.Inventory_Owner  := fSupplierNo ;
    frmSelectInventory.Label1.Caption   := 'Välj lager plats ';
    if frmSelectInventory.ShowModal = mrOk then
     Result:= frmSelectInventory.LIP_No
      else
       Result:= -1 ;
    Finally
     FreeAndNil(frmSelectInventory) ;
    End ;
   End ;
  sq_GetNewLIPno.Close ;
 End ;//with
End ;

procedure TfrmCreatePayment.ChangeCustomerInLoad(Sender : TObject) ;
Begin
 With dmcPayment do
 Begin
  sq_LoadHead.ParamByName('LoadNo').AsInteger:= fLoadNo ;
  cds_LoadHead.Active:= True ;
  cds_LoadHead.Edit ;
  cds_LoadHeadCustomerNo.AsInteger:= New_CustomerNo ;
  cds_LoadHead.Post ;
 End ;
End ;

function TfrmCreatePayment.CopySSP(Sender : TObject) : Boolean ;
Var i,x    : Integer ;
    SSP    : Array of array of variant ;
    Old_SupplierShipPlanObjectNo,
    New_SupplierShipPlanObjectNo : Array[1..100] of Integer ;
    MakeInternalOrderHead : Boolean ;
Begin
  x:= 1 ;
 MakeInternalOrderHead:= False ;
 Result:= False ;
 Fillchar( New_SupplierShipPlanObjectNo,SizeOf( New_SupplierShipPlanObjectNo),0);
 Fillchar( Old_SupplierShipPlanObjectNo,SizeOf( Old_SupplierShipPlanObjectNo),0);
 New_LO_No:= -1 ;
 Old_LO_No:= -1 ;

 With dmcPayment do
 Begin
  sq_SSP.Close ;
  sq_SSP.ParamByName('CustomerNo').AsInteger:= cdsArrivingLoadsCustomerNo.AsInteger ;
  cds_SSP.Active:= True ;
  sq_Update_SSP.Close ;
  sq_Update_SSP.ParamByName('LoadNo').AsInteger     := fLoadNo ;
  sq_Update_SSP.ParamByName('CustomerNo').AsInteger := cdsArrivingLoadsCustomerNo.AsInteger ;
  cds_Update_SSP.Active:= True ;
  cds_Update_SSP.First ;
//Copy SSP to ARRAY
  While not cds_Update_SSP.Eof do
  Begin         //Innehåller värde om det finns en LO redan
//   if SSP_Exist(New_SupplierShipPlanObjectNo[x]) = False then //Match on Supplier, LOnr, ProductNo, LengthNo, Shipto, LoadingLocation
//   Begin
    if cds_SSP.FindKey([cds_Update_SSPSupplierShipPlanObjectNo.AsInteger]) then
    Begin
  if SSP_Exist(New_SupplierShipPlanObjectNo[x]) = False then //Match on Supplier, LOnr, ProductNo, LengthNo, Shipto, LoadingLocation
  Begin
     SetLength(SSP, x) ;
     //if SSP is not a normal LO then get New LO #
     if cds_SSPObjectType.AsInteger <> 2 then
     Begin
      if Old_LO_No <> cds_Update_SSPShippingPlanNo.AsInteger then
       New_LO_No:= dmsConnector.NextMaxNo('CustomerShippingPlanHeader') ;


      Old_LO_No:= cds_Update_SSPShippingPlanNo.AsInteger ;
      //Ändra LO # i redan gjorda avräkningar
      ChangeLOno_In_PaymentLoad(fLoadNo, Old_LO_No, New_LO_No) ;
     End
      else
       //otherwise if normal LO then use same LO # as others 
       New_LO_No:= cds_Update_SSPShippingPlanNo.AsInteger ;


     SetLength(SSP[x-1], cds_SSP.FieldCount) ;

     for i:= 0 to cds_SSP.FieldCount-1 do
      SSP[x-1,i]:= cds_SSP.Fields[i].Value ;

     Old_SupplierShipPlanObjectNo[x]:= cds_SSP.FieldValues['SupplierShipPlanObjectNo'] ;

     cds_SSP.Append ;
     For i := 0 to cds_SSP.FieldCount-1 do
     cds_SSP.Fields[i].Value:= SSP[x-1,i] ;
     cds_SSP.FieldByName('ShippingPlanNo').AsInteger:= New_LO_No ;

     cds_SSP.FieldByName('CustomerNo').AsInteger                := New_CustomerNo ;
     cds_SSP.FieldByName('SupplierShipPlanObjectNo').AsInteger  := dmsConnector.NextMaxNo('SupplierShippingPlan') ;
     New_SupplierShipPlanObjectNo[x]                            := cds_SSP.FieldByName('SupplierShipPlanObjectNo').AsInteger ;
     cds_SSP.FieldByName('ModifiedUser').AsInteger              := ThisUser.UserID ;
     cds_SSP.FieldByName('CreatedUser').AsInteger               := ThisUser.UserID ;
     cds_SSP.FieldByName('DateCreated').AsSQLTimeStamp          := DateTimeToSQLTimeStamp(Now) ;
     cds_SSP.FieldByName('ShippingPlanStatus').AsInteger        := STATUS_COMPLETE ;
     cds_SSP.Post ;

     ChangeRelatedChildTables(Sender, New_SupplierShipPlanObjectNo[x],Old_SupplierShipPlanObjectNo[x]) ;
     MakeInternalOrderHead:= True ;

     x:= succ(x) ;
  End
  Else
  BEGIN
     Old_SupplierShipPlanObjectNo[x]:= cds_SSP.FieldValues['SupplierShipPlanObjectNo'] ;
     cds_SSP.Edit ;

     cds_SSP.FieldByName('CustomerNo').AsInteger:= New_CustomerNo ;
     cds_SSP.FieldByName('ModifiedUser').AsInteger:= ThisUser.UserID ;

     cds_SSP.FieldByName('DateCreated').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
//     cds_SSP.FieldByName('ShippingPlanStatus').AsInteger:= STATUS_COMPLETE ;
     cds_SSP.Post ;



     ChangeRelatedChildTables(Sender, New_SupplierShipPlanObjectNo[x],Old_SupplierShipPlanObjectNo[x]) ;

     x:= succ(x) ;
  END ;
    End
    else
     Begin
      Result:= True ;
      Exit ;
     End ;
{   End  //if
    else
     Begin
      Old_SupplierShipPlanObjectNo[x]:= cds_Update_SSP.FieldValues['SupplierShipPlanObjectNo'] ;
      ChangeRelatedChildTables(Sender, New_SupplierShipPlanObjectNo[x],Old_SupplierShipPlanObjectNo[x]) ;
      x:= succ(x) ;
     End ; }
   cds_Update_SSP.Next ;
  End ; //while

  if (MakeInternalOrderHead = True) and (New_LO_No > 0) then
  Begin
   cds_IntOrderHead.Insert ;
   cds_IntOrderHeadOrderNo.AsInteger                := dmsConnector.NextMaxNo('InternalOrderHead') ;
   cds_IntOrderHeadShippingPlanNo.AsInteger         := New_LO_No ;
   cds_IntOrderHeadCustomerNo.AsInteger             := cds_SSPCustomerNo.AsInteger ;
   cds_IntOrderHeadDefaultShipToInvPointNo.AsInteger:= cds_SSPShipToInvPointNo.AsInteger ;
   cds_IntOrderHeadStatus.AsInteger                 := 1 ;
   cds_IntOrderHeadOrderNoText.AsString             := IntToStr(New_LO_No) ;
   cds_IntOrderHeadLanguageCode.AsInteger           := 1 ;
   cds_IntOrderHeadOrderType.AsInteger              := 0 ;
   cds_IntOrderHeadSalesRegionNo.AsInteger          := VIDA_WOOD_COMPANY_NO ;
   cds_IntOrderHead.Post ;
  End ;


 End ;//With
End ;

(*
procedure TfrmCreatePayment.SetNewLoad_Confirmed(Sender: TObject;fNewLoadNo: Integer) ;
Begin
 with dmArrivingLoads do
 Begin
   cdsConfirmed_Load.Insert ;
   cdsConfirmed_LoadConfirmed_LoadNo.AsInteger:= fNewLoadNo ;
   cdsConfirmed_LoadConfirmed_ShippingPlanNo.AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cdsConfirmed_LoadNewLoadNo.AsInteger:= fNewLoadNo ; //dmArrivingLoads.cdsOneLoadLoadNo.AsInteger ;
   cdsConfirmed_LoadNewShippingPlanNo.AsInteger:= mtLoadShippingPlanShippingPlanNo.AsInteger ;
   cdsConfirmed_LoadDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
   cdsConfirmed_LoadCreatedUser.AsInteger:= ThisUser.UserID ;
   cdsConfirmed_LoadModifiedUser.AsInteger:= ThisUser.UserID ;
   cdsConfirmed_Load.Post ;
 End ; //with
End ; *)


(*
procedure TfrmCreatePayment.CopySSP(Sender : TObject) ;
Var NoOfSSP, i,x    : Integer ;
    SSP    : Array of array of variant ;
    Old_SupplierShipPlanObjectNo,
    New_SupplierShipPlanObjectNo : Array[1..100] of Integer ;
Begin
  x:= 1 ;
 Fillchar( New_SupplierShipPlanObjectNo,SizeOf( New_SupplierShipPlanObjectNo),0);
 Fillchar( Old_SupplierShipPlanObjectNo,SizeOf( New_SupplierShipPlanObjectNo),0);

 With dmcPayment do
 Begin
  sq_Update_SSP.Close ;
  sq_Update_SSP.ParamByName('LoadNo').AsInteger:= fLoadNo ;
  sq_Update_SSP.ParamByName('CustomerNo').AsInteger:= cdsArrivingLoadsCustomerNo.AsInteger ;
  cds_Update_SSP.Active:= True ;
  cds_Update_SSP.First ;
//Copy SSP to ARRAY
  While not cds_Update_SSP.Eof do
  Begin         //Innehåller värde om det finns en LO redan
   if SSP_Exist(New_SupplierShipPlanObjectNo[x]) = False then //Match on Supplier, LOnr, ProductNo, LengthNo, Shipto, LoadingLocation
   Begin
    sq_SSP.Close ;
    sq_SSP.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cds_Update_SSPSupplierShipPlanObjectNo.AsInteger ;
    cds_SSP.Active:= True ;
    if not cds_SSP.Eof then
    Begin
     SetLength(SSP, x) ;

     SetLength(SSP[x-1], cds_SSP.FieldCount) ;

     for i:= 0 to cds_SSP.FieldCount-1 do
     Begin
      SSP[x-1,i]:= cds_SSP.Fields[i].Value ;
     End ;
     Old_SupplierShipPlanObjectNo[x]:= cds_SSP.FieldValues['SupplierShipPlanObjectNo'] ;

     x:= succ(x) ;
     NoOfSSP:= succ(NoOfSSP) ;
    End ;
   End  //if
    else
     Begin
      Old_SupplierShipPlanObjectNo[x]:= cds_Update_SSP.FieldValues['SupplierShipPlanObjectNo'] ;
      x:= succ(x) ;
      NoOfSSP:= succ(NoOfSSP) ;
     End ;
   cds_Update_SSP.Next ;

   cds_SSP.Active:= False ;
  End ; //while

  cds_SSP.Active:= True ;
  //Insert new SSP
//  x:= NoOfSSP ;
//  x:= High(SSP) ;
  For x := 1 to NoOfSSP do
//  For x := Low(SSP)+1 to High(SSP)+1 do
  Begin //Om det inte fanns en LO så läggs en ny in
//   if New_SupplierShipPlanObjectNo[x] = 0 then
   if High(SSP) > 10 then
   Begin
    cds_SSP.Append ;
    For i := 0 to cds_SSP.FieldCount-1 do
    cds_SSP.Fields[i].Value:= SSP[x-1,i] ;
    cds_SSP.FieldByName('CustomerNo').AsInteger:= New_CustomerNo ;
    cds_SSP.FieldByName('SupplierShipPlanObjectNo').AsInteger:= dmsConnector.NextMaxNo('SupplierShippingPlan') ;
    New_SupplierShipPlanObjectNo[x]:= cds_SSP.FieldByName('SupplierShipPlanObjectNo').AsInteger ;
    cds_SSP.FieldByName('ModifiedUser').AsInteger:= ThisUser.UserID ;
    cds_SSP.FieldByName('CreatedUser').AsInteger:= ThisUser.UserID ;
    cds_SSP.FieldByName('DateCreated').AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
    cds_SSP.Post ;
   End ; //if
    ChangeRelatedChildTables(Sender, New_SupplierShipPlanObjectNo[x],Old_SupplierShipPlanObjectNo[x]) ;
  End ; //For x

 End ;//With
End ;
*)

(* procedure TfrmCreatePayment.Change_SSP(Sender : TObject) ;
Begin
 With dmcPayment do
 Begin
  sq_Update_SSP.Close ;
  sq_Update_SSP.ParamByName('LoadNo').AsInteger:= fLoadNo ;
  sq_Update_SSP.ParamByName('CustomerNo').AsInteger:= cdsArrivingLoadsCustomerNo.AsInteger ;
  cds_Update_SSP.Active:= True ;
  cds_Update_SSP.First ;

  While not cds_Update_SSP.Eof do
  Begin
   cds_Update_SSP.Edit ;
   cds_Update_SSP.FieldByName('ModifiedUser').AsInteger:= ThisUser.UserID ;
   cds_Update_SSP.FieldByName('CustomerNo').AsInteger:= New_CustomerNo ;
   cds_Update_SSP.Post ;
   cds_Update_SSP.Next ;
  End ; //while
 End ;//With
End ; *)

procedure TfrmCreatePayment.ChangeRelatedChildTables(Sender : TObject;
New_SupplierShipPlanObjectNo, Old_SupplierShipPlanObjectNo : Integer) ;
Begin
 With dmcPayment do
 Begin
  cds_LS.Filter:= 'ShippingPlanNo = '+IntToStr(Old_LO_No) ;
  cds_LS.Filtered:= True ;
  cds_LS.First ;
  While cds_LS.RecordCount > 0 do
  Begin
   cds_LS.Edit ;
   cds_LSShippingPlanNo.AsInteger:= New_LO_No ;
   cds_LS.Post ;
  End ;
 End ;//With
End ;

function TfrmCreatePayment.SSP_Exist(Var SupplierShipPlanObjectNo: Integer) : Boolean ;
Begin
 With dmcPayment do
 Begin
  SupplierShipPlanObjectNo:= 0 ;
  sq_SSP_Exist.Close ;
  sq_SSP_Exist.ParamByName('ShippingPlanNo').AsInteger      := cds_Update_SSP.FieldValues['ShippingPlanNo'] ;
  sq_SSP_Exist.ParamByName('SupplierNo').AsInteger          := cds_Update_SSP.FieldValues['SupplierNo'] ;
  sq_SSP_Exist.ParamByName('CustomerNo').AsInteger          := New_CustomerNo ;
  sq_SSP_Exist.ParamByName('ObjectType').AsInteger          := cds_Update_SSP.FieldValues['ObjectType'] ;
  sq_SSP_Exist.ParamByName('LoadingLocationNo').AsInteger   := cds_Update_SSP.FieldValues['LoadingLocationNo'] ;
  sq_SSP_Exist.ParamByName('ShipToInvPointNo').AsInteger    := cds_Update_SSP.FieldValues['ShipToInvPointNo'] ;
  sq_SSP_Exist.ParamByName('ProductNo').AsInteger           := cds_Update_SSP.FieldValues['ProductNo'] ;
  sq_SSP_Exist.ParamByName('ProductLengthNo').AsInteger     := cds_Update_SSP.FieldValues['ProductLengthNo'] ;
  sq_SSP_Exist.Open ;

  if not sq_SSP_Exist.Eof then
  Begin
   SupplierShipPlanObjectNo:= sq_SSP_ExistSupplierShipPlanObjectNo.AsInteger ;
   Result := True ;
  End
  else
  Result:= False ;
  sq_SSP_Exist.Close ;
 End ;
End ;

Function TfrmCreatePayment.ValidLoad() : Boolean ;
//Var SSP_Type : Integer ;
Begin
 With dmcPayment do
 Begin
  Result:= False ;
  sq_LO_Type.Close ;
  sq_LO_Type.ParamByName('LoadNo').AsInteger:= fLoadNo ;
  sq_LO_Type.ParamByName('CustomerNo').AsInteger:= cdsArrivingLoadsCustomerNo.AsInteger ;
  sq_LO_Type.Open ;

  if ((sq_LO_TypeOrderType.AsInteger = 1)
  AND (sq_LO_TypeObjectType.AsInteger = 2))

  OR (sq_LO_TypeObjectType.AsInteger = -1)
  OR (sq_LO_TypeObjectType.AsInteger = 0)
  OR (sq_LO_TypeObjectType.AsInteger = 1) then

  Result:= True
  else
  Result:= False ;

  sq_LO_Type.Close ;

{  While not cds_Update_SSP.Eof do
  Begin
//   if cds_Update_SSPObjectType.AsInteger = 2 then
   Result:= cds_Update_SSPObjectType.AsInteger ;
  End ;                           }
//  cds_Update_SSP.Active:= False ;
 End ;
End ;

procedure TfrmCreatePayment.tbRemoveLoadFromListClick(Sender: TObject);
var
  Save_Cursor:TCursor;
  Duplicate, myRollBack : Boolean ;
  x : Integer ;
begin
  inherited;
 With dmcPayment do
 Begin
  Save_Cursor := Screen.Cursor;
  dmcPayment.cdsArrivingPackages.DisableControls ;
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
        ToolbtnRefreshClick(Sender) ;
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
  dmcPayment.cdsArrivingPackages.EnableControls ;
  cds_LoadRemAvr.Active:= False ;
 End ;
 end ; // with


end;

procedure TfrmCreatePayment.miPackageInfoClick(Sender: TObject);
Var frmPkgInfo : TfrmPkgInfo ;
begin
  inherited;
 frmPkgInfo:= TfrmPkgInfo.Create(Nil);
 Try
  frmPkgInfo.PackageNo:= dmcPayment.cdsArrivingPackagesPACKAGE_NO.AsInteger ;
  frmPkgInfo.SupplierCode:= dmcPayment.cdsArrivingPackagesSupplierCode.AsString ;
  frmPkgInfo.ShowModal ;
 Finally
  FreeAndNil(frmPkgInfo) ;
 End ;
end;

procedure TfrmCreatePayment.FormDestroy(Sender: TObject);
begin
  inherited;
 frmCreatePayment:= Nil ;
end;

procedure TfrmCreatePayment.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 inherited;
 dmcPayment.cdsArrivingLoads.Active:= False ;
 CanClose:= True ;
end;

end.
