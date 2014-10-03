unit uLOform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, ComCtrls, dxBar, dxBarExtItems, 
  Menus, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, StdCtrls, Grids, DBGrids, cxImageComboBox, cxGroupBox,
  cxRadioGroup, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, DBActns, 
  cxDBExtLookupComboBox, cxButtonEdit, Buttons, cxCheckBox, cxSpinEdit,
  cxMemo, dxStatusBar, StdActns, FMTBcd, DBClient, Provider, SqlExpr,
  cxEditRepositoryItems, ExtDlgs, cxImage, SqlTimSt, cxLabel,
  cxLookAndFeels, cxCalendar, cxCurrencyEdit, cxLookAndFeelPainters,
  cxButtons, cxSplitter, ImgList ;

Const
  CM_MOVEIT  = WM_USER + 1;
    
type
  TfLOform = class(TForm)
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    cxPageControl1: TcxPageControl;
    tsKUND: TcxTabSheet;
    tsParametrar: TcxTabSheet;
    tsTexter: TcxTabSheet;
    tsLORad: TcxTabSheet;
    eOrderNoText: TcxDBTextEdit;
    leSR: TcxDBLookupComboBox;
    Label1: TLabel;
    leKund: TcxDBLookupComboBox;
    Label2: TLabel;
    eOrderNo: TcxDBTextEdit;
    Label3: TLabel;
    lcShipTo: TcxDBLookupComboBox;
    eCustomerNo: TcxDBTextEdit;
    eSalesRegionNo: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    eLONr: TcxDBTextEdit;
    icbStatus: TcxDBImageComboBox;
    Label6: TLabel;
    Label7: TLabel;
    eETD: TcxDBTextEdit;
    Label8: TLabel;
    eETA: TcxDBTextEdit;
    rgFraktBestallsAv: TcxDBRadioGroup;
    Label9: TLabel;
    lcDefaultPaymentTermsNo: TcxDBLookupComboBox;
    leValuta: TcxDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    leDelTerms: TcxDBLookupComboBox;
    Label12: TLabel;
    leDimFormat: TcxDBLookupComboBox;
    Label13: TLabel;
    leLengthFormat: TcxDBLookupComboBox;
    Panel1: TPanel;
    tvINTLO: TcxGridDBTableView;
    glLO: TcxGridLevel;
    grdINTLO: TcxGrid;
    tvINTLOPackageCode: TcxGridDBColumn;
    tvINTLOVERK: TcxGridDBColumn;
    tvINTLOShippingPlanStatus: TcxGridDBColumn;
    tvINTLOProductDescription: TcxGridDBColumn;
    tvINTLOLengthDescription: TcxGridDBColumn;
    tvINTLOLASTSTALLE: TcxGridDBColumn;
    tvINTLOLEVERERA_TILL: TcxGridDBColumn;
    tvINTLONoOfUnits: TcxGridDBColumn;
    tvINTLOStartETDYearWeek: TcxGridDBColumn;
    tvINTLOEndETDYearWeek: TcxGridDBColumn;
    tvINTLOPrice: TcxGridDBColumn;
    tvINTLOCustomerPrice: TcxGridDBColumn;
    tvINTLOActualM3Net: TcxGridDBColumn;
    tvINTLOMinActualLengthMM: TcxGridDBColumn;
    tvINTLOPcsPerPkg: TcxGridDBColumn;
    tvINTLOPkgCode: TcxGridDBColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    ActionList1: TActionList;
    eProduct: TcxDBButtonEdit;
    Label14: TLabel;
    DeleteLOrow: TDataSetDelete;
    Label15: TLabel;
    ePrice: TcxDBTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    lcPriceUnit: TcxDBLookupComboBox;
    eNoOfUnits: TcxDBTextEdit;
    Label18: TLabel;
    lcVolumeUnit: TcxDBLookupComboBox;
    Label19: TLabel;
    ePcsPerPkg: TcxDBTextEdit;
    Label20: TLabel;
    eLengthDesc: TcxDBTextEdit;
    leProductCode: TcxDBLookupComboBox;
    Label21: TLabel;
    Label22: TLabel;
    acNewPIrecord: TAction;
    pmLOGrd: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    Label42: TLabel;
    eAM3: TcxDBTextEdit;
    lbNewIntHdr: TdxBarLargeButton;
    lbCancelUpdates: TdxBarLargeButton;
    acAngraAllt: TAction;
    acSpara: TAction;
    bbChangeDimFormat: TBitBtn;
    bbUppdateraLangd: TBitBtn;
    Label43: TLabel;
    lcLanguage: TcxDBLookupComboBox;
    bbUppdateraSprak: TBitBtn;
    acPrintPreviewLO: TAction;
    lbPrint: TdxBarLargeButton;
    pmPrint: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    acNewLOSet: TAction;
    acClose: TAction;
    lbClose: TdxBarLargeButton;
    tvINTLOLengths: TcxGridDBColumn;
    lcLength: TcxDBLookupComboBox;
    eAvgLength: TcxDBTextEdit;
    Label44: TLabel;
    acChangeLayout: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    acSearchLO: TAction;
    lbSearchLO: TdxBarLargeButton;
    acCopyLO: TAction;
    lbCopyLO: TdxBarLargeButton;
    acDeleteALL_LO: TAction;
    lbDeleteALL_LO: TdxBarLargeButton;
    acShowFooter: TAction;
    dxBarButton3: TdxBarButton;
    Label41: TLabel;
    eCustNo: TcxDBTextEdit;
    lcSalesMan: TcxDBLookupComboBox;
    Label46: TLabel;
    P: TBitBtn;
    tvINTLOLEV: TcxGridDBColumn;
    tvINTLOREST: TcxGridDBColumn;
    cxDBMemo1: TcxDBMemo;
    tvINTLOLengthTyp: TcxGridDBColumn;
    acCopyLORow: TAction;
    acDeleteLORow: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    deCreated: TcxDBDateEdit;
    Label48: TLabel;
    Label49: TLabel;
    deLORowCreated: TcxDBDateEdit;
    lcLagerGrupp: TcxDBLookupComboBox;
    Label50: TLabel;
    acOpenPackageCodeForm: TAction;
    lcMarket: TcxDBLookupComboBox;
    cbFilterOnMarketRegion: TCheckBox;
    Label51: TLabel;
    acPrintLO: TAction;
    dxBarButton4: TdxBarButton;
    lcPrisListaLORow: TcxDBLookupComboBox;
    Label53: TLabel;
    tvINTLOPrisLista: TcxGridDBColumn;
    cbVatExempt: TcxDBCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle7: TcxStyle;
    ssOrderRow: TcxGridTableViewStyleSheet;
    ssAvropRow: TcxGridTableViewStyleSheet;
    ssLO: TcxGridTableViewStyleSheet;
    ssELO: TcxGridTableViewStyleSheet;
    cxLabel1: TcxLabel;
    tvINTLOInternKundFrakt: TcxGridDBColumn;
    meInternKundFrakt: TcxDBMaskEdit;
    meIntHdrInternKundFrakt: TcxDBMaskEdit;
    Label54: TLabel;
    acSetPreliminaryStatusToNew: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    acPrintLOKontroll: TAction;
    dxBarButton5: TdxBarButton;
    lcSupplier: TcxDBLookupComboBox;
    Label56: TLabel;
    leLastStalle: TcxDBLookupComboBox;
    Label57: TLabel;
    Panel4: TPanel;
    bbSelectProdinInv: TcxButton;
    bbSelectProduct: TcxButton;
    bbSelectPkgCode: TcxButton;
    acSelectProducts: TAction;
    acSelectProductByLager: TAction;
    bbCopyRow: TBitBtn;
    bbDeleteRow: TBitBtn;
    acNextOrderTab: TAction;
    acPrevOrderTab: TAction;
    bbNewRow: TBitBtn;
    BitBtn1: TBitBtn;
    bbNextInParameter: TBitBtn;
    Panel5: TPanel;
    BitBtn4: TBitBtn;
    bbPrevOrderRadFlik: TBitBtn;
    BitBtn6: TBitBtn;
    bbForeg: TBitBtn;
    acSearchProduct: TAction;
    Label52: TLabel;
    lcPrislista: TcxDBLookupComboBox;
    Label23: TLabel;
    lcAT: TcxDBLookupComboBox;
    Label40: TLabel;
    lcAW: TcxDBLookupComboBox;
    Label47: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    bGrupperingsruta: TcxButton;
    bGruppsummering: TcxButton;
    bbFaltvaljare: TcxButton;
    acGroupByBox: TAction;
    acGroupSummary: TAction;
    acCopyPI: TAction;
    tvINTLOSupplierShipPlanObjectNo: TcxGridDBColumn;
    tvINTLOProdInstructNo: TcxGridDBColumn;
    acNewLORows: TAction;
    eReference: TcxDBTextEdit;
    Label39: TLabel;
    acAddLayout: TAction;
    acRemoveLayout: TAction;
    acLOLengths: TAction;
    dxBarButton6: TdxBarButton;
    cbAutoPkgCode: TcxDBCheckBox;
    tvINTLOPkgCodePPNo: TcxGridDBColumn;
    acGetStandardLayout: TAction;
    tvINTLOPackageWidth: TcxGridDBColumn;
    tvINTLOPackageHeight: TcxGridDBColumn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    Images2424: TImageList;
    Edit1: TEdit;
    acPrintmeny: TAction;
    procedure lbExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acNewPIrecordExecute(Sender: TObject);
    procedure tvLOPkgCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure lbNewIntHdrClick(Sender: TObject);
    procedure acAngraAlltExecute(Sender: TObject);
    procedure acSparaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbChangeDimFormatClick(Sender: TObject);
    procedure bbUppdateraLangdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvINTLOEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure leProductCodeEnter(Sender: TObject);
    procedure eLengthDescEnter(Sender: TObject);
    procedure eProductEnter(Sender: TObject);
    procedure acPrintPreviewLOExecute(Sender: TObject);
    procedure acNewLOSetExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure tvINTLODBColumn2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxDBLookupComboBox3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure acChangeLayoutExecute(Sender: TObject);
    procedure leKundPropertiesInitPopup(Sender: TObject);
    procedure lcShipToPropertiesInitPopup(Sender: TObject);
    procedure acSearchLOExecute(Sender: TObject);
    procedure acCopyLOExecute(Sender: TObject);
    procedure acDeleteALL_LOExecute(Sender: TObject);
    procedure acShowFooterExecute(Sender: TObject);
    procedure PClick(Sender: TObject);
    procedure acCopyLORowExecute(Sender: TObject);
    procedure acDeleteLORowExecute(Sender: TObject);
    procedure acSparaUpdate(Sender: TObject);
    procedure acAngraAlltUpdate(Sender: TObject);
    procedure acCopyLOUpdate(Sender: TObject);
    procedure acNewLOSetUpdate(Sender: TObject);
    procedure acNewPIrecordUpdate(Sender: TObject);
    procedure lcLagerGruppPropertiesInitPopup(Sender: TObject);
    procedure lcLagerGruppPropertiesCloseUp(Sender: TObject);
    procedure lcShipToPropertiesChange(Sender: TObject);
    procedure lcShipToPropertiesCloseUp(Sender: TObject);
    procedure lcLagerGruppPropertiesChange(Sender: TObject);
    procedure acOpenPackageCodeFormExecute(Sender: TObject);
    procedure cbFilterOnMarketRegionClick(Sender: TObject);
    procedure acPrintLOExecute(Sender: TObject);
    procedure tvINTLOPriceStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure acSetPreliminaryStatusToNewExecute(Sender: TObject);
    procedure acPrintLOKontrollExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure leLastStallePropertiesCloseUp(Sender: TObject);
    procedure leLastStallePropertiesInitPopup(Sender: TObject);
    procedure lcSupplierPropertiesInitPopup(Sender: TObject);
    procedure acSelectProductsExecute(Sender: TObject);
    procedure acSelectProductByLagerExecute(Sender: TObject);
    procedure acNextOrderTabExecute(Sender: TObject);
    procedure acPrevOrderTabExecute(Sender: TObject);
    procedure acSearchProductExecute(Sender: TObject);
    procedure acSearchProductUpdate(Sender: TObject);
    procedure acGroupByBoxExecute(Sender: TObject);
    procedure acGroupSummaryExecute(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure acCopyPIExecute(Sender: TObject);
    procedure bbLoadPictureClick(Sender: TObject);
    procedure acDeleteLORowUpdate(Sender: TObject);
    procedure acNewLORowsExecute(Sender: TObject);
    procedure tvINTLOLASTSTALLEPropertiesCloseUp(Sender: TObject);
    procedure tvINTLOLASTSTALLEPropertiesInitPopup(Sender: TObject);
    procedure lcTruckStroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcPaketstorlekKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcWrapTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcPressTreatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcBarCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcGradeStampKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acAddLayoutExecute(Sender: TObject);
    procedure acRemoveLayoutExecute(Sender: TObject);
    procedure acRemoveLayoutUpdate(Sender: TObject);
    procedure acLOLengthsExecute(Sender: TObject);
    procedure acGetStandardLayoutExecute(Sender: TObject);
    procedure tvINTLOEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure leLastStallePropertiesChange(Sender: TObject);
    procedure lcLagerGruppEnter(Sender: TObject);
    procedure lcLagerGruppExit(Sender: TObject);
    procedure leLastStalleEnter(Sender: TObject);
    procedure leLastStalleExit(Sender: TObject);
    procedure acPrintmenyExecute(Sender: TObject);

  private
    { Private declarations }
    PackageCode_Layout  : Array of array of variant ;
    procedure SetLengthFilter(Sender: TObject);
    function  DataSaved : Boolean ;
    procedure SetReadOnly ;
//    function  CopyLO : Integer ;
    function  CopyLORow : Integer ;
//    procedure AddSelectedPkgCodesToLOLines ;
//    procedure InsertProductsFromLager ;
//    procedure InsertProductsFromSelectedProducts ;
//    procedure GetMarkedRows ;
//    procedure SparaProdInstruForSelectedLORows(const vProdInstruNo : Integer) ;
//    procedure UpdatePackageCode_Layout (const SupplierShipPlanObjectNo : Integer) ;
//    procedure SparaLayouterForSelectedADDLORows(const SupplierShipPlanObjectNo : Integer) ;
//    procedure GetADDLOLAYOUTS ;
    procedure CMMoveIt (var Msg: TMessage); message CM_MOVEIT;
  public
    { Public declarations }
  end;

var fLOform: TfLOform;

implementation

uses dmsDataConn, dmcVidaLO, dmsVidaContact, dmsVidaProduct, UnitGetProduct,
  dmsVidaSystem, VidaConst, VidaUser , UnitCRViewReport, //uProductForm ,
//  dmcPkgCode, dmsProdInstru, uPkgCodeTrf,
  UnitCRPrintReport ;
//  uGetProductByLager, uTruckSticks, uWrapType, uImpForm, uBarCodeForm,  uGradeStampForm, uPackageSize, uINTLOLengths;

{$R *.dfm}

procedure TfLOform.CMMoveIt(var Msg: TMessage);
var AGoForward: Boolean;
begin
  AGoForward := Boolean(Msg.WParam);
  tvINTLO.Controller.EditingController.HideEdit(True);
  tvINTLO.Controller.FocusNextCell(AGoForward)
end;

procedure TfLOform.lbExitClick(Sender: TObject);
begin
 Close ;
end;

procedure TfLOform.FormShow(Sender: TObject);
Var x : Integer ;
begin
 With dmsContact do
 Begin
  dmcLO.cds_LIP.Active:= True ;
  cxPageControl1.ActivePage:= tsKUND ;
  if dmcLO.cds_LOCustomerNo.AsInteger > 0 then
  cds_PhysInvByCityNo.Filter:= 'OwnerNo = '+dmcLO.cds_LOCustomerNo.AsString ;
  cds_PhysInvByCityNo.Filtered:= True ;

  //show loading location that belong to current supplier
  if dmcLO.cds_LOSupplierNo.AsInteger > 0 then
   cds_LL_Verk.Filter:= 'OwnerNo = '+dmcLO.cds_LOSupplierNo.AsString ;
   cds_LL_Verk.Filtered:= False ;

{  dmProduct.cds_Prod_Lengths.Active:= False ;
  dmProduct.sq_Prod_Lengths.ParamByName('ProductGroupNo').AsInteger:= dmcLO.cds_LOProductGroupNo.AsInteger ;
  dmProduct.cds_Prod_Lengths.Active:= True ;
  dmProduct.cds_Prod_Lengths.Filtered:= False ; }

  dmcLO.cds_ProdLength.Active:= False ;
//  dmsProduct.sq_PL.ParamByName('ProductGroupNo').AsInteger:= dmcLO.cds_LOProductGroupNo.AsInteger ;
  dmcLO.cds_ProdLength.Active:= True ;
//   dmcLO.RefreshPackageCode ;
//    For x := 13 to tvINTLO.ColumnCount-1 do     tvINTLO.Columns[x].Visible:= False ;

  Self.Caption:= 'Lastorder ' + dmcLO.cds_IntHdrShippingPlanNo.AsString ;

 End ;//With dmsContact do
end;

procedure TfLOform.SetLengthFilter(Sender: TObject);
begin
{ with tvLengths.DataController.Filter.Root do
  begin
    //clear all existing filter conditions

    Clear;
    //set the logical operator
    //by which new conditions are combined
    BoolOperatorKind := fboOr;
    //add new filter conditions
    AddItem(tvLengthsproductgroupno, foEqual, dmcLO.cds_LOProductGroupNo.AsInteger, 'produktgrupp');
  end;
 }
end;

procedure TfLOform.acNewPIrecordExecute(Sender: TObject);
Var ProdInstruNo : Integer ;
begin
(* With dmcLO do
 Begin
  ds_LO.OnDataChange:= Nil ;
  Try
  if cds_ProdInstruct.RecordCount = 0 then
  Begin
   cds_ProdInstruct.ReadOnly  := False ;
   cds_ProdInstruct.Insert ;
   ProdInstruNo               := cds_ProdInstructProdInstruNo.AsInteger ;
//   cds_ProdInstruct.Filter:='ProdInstruNo = '+cds_ProdInstructProdInstruNo.AsString ;
   if cds_LO.State in [dsBrowse] then
    cds_LO.Edit ;
   cds_LOProdInstructNo.AsInteger:= ProdInstruNo ;
   if cds_LO.State in [dsEdit, dsInsert] then
    cds_LO.Post ;
  End ;
  Finally
   ds_LO.OnDataChange:= ds_LODataChange ;
  End ;
 End ; //with
 *)
end;

procedure TfLOform.tvLOPkgCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
//Var PkgCodePPNo, ProductGroupNo, PkgTypeNo, ProductLengthNo, PPP : Integer ;
begin
 //PackageTypeNo finns i SequensNo
 //Hämta produkt
(* With dmcLO do
 Begin
  ds_LO.OnDataChange:= Nil ;
  Try

 if  DisplayValue > ' ' then
 Begin
  cds_LOProductNo.AsInteger:= dmsProduct.GetProductNoByPkgcode( DisplayValue, ProductGroupNo, PkgTypeNo, ProductLengthNo, PPP, PkgCodePPNo) ;
  if cds_LOProductNo.AsInteger > 0 then
  Begin
//   if dmsProduct.cds_Prod_Lengths.FindKey([ProductLengthNo]) then
   if dmsProduct.cds_ProdLength.FindKey([ProductLengthNo]) then

   Begin
    cds_LOProductGroupNo.AsInteger    := ProductGroupNo ;
    cds_LOProductLengthNo.AsInteger   := ProductLengthNo ;
    dmsProduct.cds_ProdList.Active     := False ;
    dmsProduct.sq_ProdList.ParamByName('LanguageCode').AsInteger := cSwedish ;
    dmsProduct.sq_ProdList.ParamByName('ProductNo').AsInteger    := cds_LOProductNo.AsInteger ;
    dmsProduct.cds_ProdList.Active     := True ;

    cds_LOProductDescription.AsString := GetProductDescription ; //dmsProduct.GetProdDesc(cds_LOProductGroupNo.AsInteger,cds_LOProductNo.AsInteger) ;
    cds_LOSequenceNo.AsInteger        := PkgTypeNo ;
    cds_LOPackageCode.AsString        := DisplayValue ;
    cds_LOPcsPerPkg.AsInteger         := PPP ;
    cds_LOVolumeUnitNo.AsInteger      := c_Packages ;
    cds_LOPkgCodePPNo.AsInteger       := PkgCodePPNo ;
    
    Error:= False ;
    NyProdInstructRecord ;
   End
   else
    Begin
     ErrorText:= 'finns inte' ;
     Error:= True ;
    End ;
  End
 End
 else
 Begin
  ErrorText:= 'finns inte' ;
  Error:= True ;
 End ;
  Finally
   ds_LO.OnDataChange:= ds_LODataChange ;
  End ;
 End ; //with
 *)
end;

function TfLOform.DataSaved : Boolean ;
begin
 Result:= True ;
 With dmcLO do
 Begin
  Try
   if cds_IntHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_IntHdr.ChangeCount > 0 then
    Result:= False ;

   if cds_LO.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_LO.ChangeCount > 0 then
    Result:= False ;

//   if cds_ProdInstruct.State in [dsEdit, dsInsert] then
//    Result:= False ;
//   if cds_ProdInstruct.ChangeCount > 0 then
//    Result:= False ;

//   if cds_ELOLayout.State in [dsEdit, dsInsert] then
//    Result:= False ;
//   if cds_ELOLayout.ChangeCount > 0 then
//    Result:= False ;

{   if cds_ELOLengths.State in [dsEdit, dsInsert] then
    Result:= False ;
   if cds_ELOLengths.ChangeCount > 0 then
    Result:= False ;     }

  Except
  End ;
 End ;
end;

procedure TfLOform.lbNewIntHdrClick(Sender: TObject);
begin
 With dmcLO do
 Begin
  if DataSaved = False then
   ShowMessage('Data är inte sparad, spara eller ångra.')
    else
     cds_IntHdr.Insert ;
 End ;
end;

procedure TfLOform.acAngraAlltExecute(Sender: TObject);
Var Save_Cursor               : TCursor;
    SupplierShipPlanObjectNo  : Integer ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try

 With dmcLO do
 Begin
  SupplierShipPlanObjectNo:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
  Try
//   if cds_ProdInstruct.State in [dsEdit, dsInsert] then
//    cds_ProdInstruct.Cancel ;
//   if cds_ProdInstruct.ChangeCount > 0 then
//    cds_ProdInstruct.CancelUpdates ;

   if cds_LO.State in [dsEdit, dsInsert] then
    cds_LO.Cancel ;
   if cds_LO.ChangeCount > 0 then
    cds_LO.CancelUpdates ;

   if cds_IntHdr.State in [dsEdit, dsInsert] then
    cds_IntHdr.Cancel ;
   if cds_IntHdr.ChangeCount > 0 then
    cds_IntHdr.CancelUpdates ;

   dmcLO.cds_LO.Active:= False ;
   dmcLO.cds_LO.Active:= True ;

//   dmcLO.cds_ProdInstruct.Active:= False ;
//   dmcLO.sq_ProdInstruct.ParamByName('ShippingPlanNo').AsInteger:= cds_IntHdrShippingPlanNo.AsInteger ;
//   dmcLO.cds_ProdInstruct.Active:= True ;


   cds_LO.Locate('SupplierShipPlanObjectNo', SupplierShipPlanObjectNo, []) ;

//   dmcLO.RefreshPackageCode ;

   if (cds_IntHdr.Active) and (cds_IntHdr.RecordCount > 0) then
    Self.Caption:= 'Lastorder ' + cds_IntHdrShippingPlanNo.AsString
     else
      Self.Caption:= 'Lastorder ' ;


  Except
  End ;
 End ;
 Finally
  Screen.Cursor := Save_Cursor ;
 End ;

end;

procedure TfLOform.acSparaExecute(Sender: TObject);
Var Save_Cursor               : TCursor;
    SupplierShipPlanObjectNo  : Integer ;
    InfoList                  : TStrings ;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 Try
 With dmcLO do
 Begin
  if (cds_LO.Active) and (cds_LO.RecordCount > 0) then
  SupplierShipPlanObjectNo:= cds_LOSupplierShipPlanObjectNo.AsInteger
  else
  SupplierShipPlanObjectNo:= -1 ;
   
  SetILO_Records ;//
  InfoList:= TStringList.Create ;
  Try
//   SetLOBeforeSave ;
   if cds_IntHdr.State in [dsEdit, dsInsert] then
    cds_IntHdr.Post ;
   if cds_IntHdr.ChangeCount > 0 then
    cds_IntHdr.ApplyUpdates(0) ;

//   if cds_IntHdrAutoPkgCode.AsInteger = 1 then    CheckIfPkgCodeNeedsToBeGeneratedFor_ELO (InfoList) ;

   if cds_LO.State in [dsEdit, dsInsert] then
    cds_LO.Post ;
   if cds_LO.ChangeCount > 0 then
    cds_LO.ApplyUpdates(0) ;

//   if cds_ProdInstruct.State in [dsEdit, dsInsert] then
//    cds_ProdInstruct.Post ;
//   if cds_ProdInstruct.ChangeCount > 0 then
//    cds_ProdInstruct.ApplyUpdates(0) ;

//   if cds_ELOLayout.State in [dsEdit, dsInsert] then
//    cds_ELOLayout.Post ;
//   if cds_ELOLayout.ChangeCount > 0 then
//    cds_ELOLayout.ApplyUpdates(0) ;

{   if cds_ELOLengths.State in [dsEdit, dsInsert] then
    cds_ELOLengths.Post ;
   if cds_ELOLengths.ChangeCount > 0 then
    cds_ELOLengths.ApplyUpdates(0) ;   }
  Except
  End ;


//  dmsProduct.cds_PkgCode.Active:= False ;
//  dmsProduct.cds_PkgCode.Active:= True ;

  if SupplierShipPlanObjectNo > -1 then
  cds_LO.Locate('SupplierShipPlanObjectNo', SupplierShipPlanObjectNo, []) ;
 End ;//With
  if InfoList.Count > 0 then
  Begin
   dmsSystem.ShowMemo(InfoList) ;
  End ;
 Finally
  InfoList.Free ;
  Screen.Cursor := Save_Cursor ;
 End ;
end;

procedure TfLOform.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if dmcLO.InternalPriceMissingOnInternalLO then
  if MessageDlg('En eller flera LOs saknar internpris, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose := True
      else
       Begin
        CanClose := False ;
        Exit ;
       End ;

 if DataSaved = False then
  if MessageDlg('Ändringar är inte sparade, vill du avsluta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     CanClose := True
      else
       CanClose := False ;

 if CanClose then
  dmsSystem.StoreGridLayout(ThisUser.UserID, Self.Name+'/'+tvINTLO.Name, tvINTLO) ;
//  tvINTLO.StoreToIniFile(dmsConnector.InifilesMap+'ViskLOForm'+'.'+ThisUser.UserName,False,[],'');
end;

procedure TfLOform.bbChangeDimFormatClick(Sender: TObject);
begin
 With dmcLO do
 Begin
  cds_LO.DisableControls ;
  Try
   cds_LO.First ;
   While not cds_LO.Eof do
   Begin
    cds_ProdList.Active:= False ;
    sq_ProdList.ParamByName('ProductNo').AsInteger    := cds_LOProductNo.AsInteger ;
    sq_ProdList.ParamByName('LanguageCode').AsInteger := cSwedish ; //cds_IntHdrLanguageCode.AsInteger ;
    cds_ProdList.Active:= True ;

    cds_LO.Edit ;
    cds_LOProductDescription.AsString:= GetProductDescription ;
    cds_LO.Next ;
   End ;
  Finally
   cds_LO.EnableControls ;
  End ;
 End ; //With
end;

procedure TfLOform.bbUppdateraLangdClick(Sender: TObject);
begin
 With dmcLO, dmsProduct do
 Begin
  cds_LO.DisableControls ;
//  cds_Prod_Lengths.Filtered := True ;
  Try
   cds_LO.First ;
   While not cds_LO.Eof do
   Begin
//    cds_Prod_Lengths.Filter:= 'ProductLengthNo = '+cds_LOProductLengthNo.AsString ;
    cds_LO.Edit ;
    SetLengthDesc ;
    cds_LO.Next ;
   End ;
  Finally
//   cds_Prod_Lengths.Filtered:= False ;
   cds_LO.EnableControls ;
  End ;
 End ; //With
end;

procedure TfLOform.FormCreate(Sender: TObject);
begin
 dmcLO:= TdmcLO.Create(Nil) ;
 if dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name+'/'+tvINTLO.Name, tvINTLO) = False then ;

 dmcLO.cds_PL.Active:= False ;
 dmcLO.cds_PL.Active:= True ;

 dmsContact.cds_Market.Active:= False ;
 dmsContact.cds_Market.Active:= True ;

 dmsContact.cds_Verk.Active:= False ;
 dmsContact.cds_Verk.Active:= True ;

 dmsContact.cds_SR.Active:= False ;
 dmsContact.cds_SR.Active:= True ;

 dmsContact.cds_PhysInvByCityNo.Active:= False ;
 dmsContact.cds_PhysInvByCityNo.Active:= True ;

 dmsContact.cds_LL_Verk.Active:= False ;
 dmsContact.cds_LL_Verk.Active:= True ;

 dmsContact.cdsPaymentTerm.Active:= False ;
 dmsContact.sq_PaymentTerm.ParamByName('LanguageCode').AsInteger:= 1 ;
 dmsContact.cdsPaymentTerm.Active:= True ;

 dmsContact.cdsCurrency.Active:= False ;
 dmsContact.cdsCurrency.Active:= True ;

 dmsSystem.cds_Language.Active:= False ;
 dmsSystem.cds_Language.Active:= True ;

 dmsContact.cdsPriceUnit.Active:= False ;
 dmsContact.cdsPriceUnit.Active:= True ;

 dmsContact.cds_volunit.Active:= False ;
 dmsContact.cds_volunit.Active:= True ;

 dmsSystem.cds_PriceList.Active:= False ;
 dmsSystem.cds_PriceList.Active:= True ;

 dmsContact.cdsDelTerms.Active:= False ;
 dmsContact.cdsDelTerms.Active:= True ;
end;

procedure TfLOform.FormDestroy(Sender: TObject);
begin
 FreeAndNil(dmcLO) ;
 fLOform:= nil ;
end;

procedure TfLOform.tvINTLOEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
Var x : Integer ;
begin
// dmsProduct.cds_ProdLength.Active:= False ;
// dmsProduct.sq_PL.ParamByName('ProductGroupNo').AsInteger:= dmcLO.cds_LOProductGroupNo.AsInteger ;
// dmsProduct.cds_ProdLength.Active:= True ;
   if dmsSystem.DoesLOHaveLoadsConfirmed(dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) then
   Begin
    For x := 0 to tvINTLO.ColumnCount-1 do
     tvINTLO.Columns[x].Properties.ReadOnly         := True ;
//     eLengthDesc.Properties.ReadOnly:= True ;
//     eProduct.Properties.ReadOnly:= True ;
     leProductCode.Properties.ReadOnly              := True ;
     lcLength.Properties.ReadOnly                   := True ;
     tvINTLOShippingPlanStatus.Properties.ReadOnly  := False ;
     tvINTLONoOfUnits.Properties.ReadOnly           := False ;
     tvINTLOLengthDescription.Properties.ReadOnly   := False ;
     tvINTLOProductDescription.Properties.ReadOnly  := False ;
     tvINTLOCustomerPrice.Properties.ReadOnly       := False ;
     tvINTLOPrice.Properties.ReadOnly               := False ;
     tvINTLOMinActualLengthMM.Properties.ReadOnly   := False ;
     tvINTLOPrice.Properties.ReadOnly               := False ;
     tvINTLOPrisLista.Properties.ReadOnly           := False ;
     tvINTLOInternKundFrakt.Properties.ReadOnly     := False ;
   End
   else
    Begin
     For x := 0 to tvINTLO.ColumnCount-1 do
      tvINTLO.Columns[x].Properties.ReadOnly:= False ;
     lcLength.Properties.ReadOnly                   := False ; 
    End ; 
end;

procedure TfLOform.SetReadOnly ;
Var x : Integer ;
begin
   if dmsSystem.DoesLOHaveLoadsConfirmed(dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) then
   Begin
    For x := 0 to tvINTLO.ColumnCount-1 do
     tvINTLO.Columns[x].Properties.ReadOnly:= True ;
     leProductCode.Properties.ReadOnly:= True ;
     lcLength.Properties.ReadOnly:= True ;
     tvINTLOShippingPlanStatus.Properties.ReadOnly:= False ;
     tvINTLOCustomerPrice.Properties.ReadOnly:= False ;
     tvINTLOPrice.Properties.ReadOnly:= False ;
   End
   else
    Begin
     For x := 0 to tvINTLO.ColumnCount-1 do
      tvINTLO.Columns[x].Properties.ReadOnly:= False ;

     leProductCode.Properties.ReadOnly:= False ;
     lcLength.Properties.ReadOnly:= False ;
    End ; 
end;


procedure TfLOform.leProductCodeEnter(Sender: TObject);
begin
 SetReadOnly ;
end;

procedure TfLOform.eLengthDescEnter(Sender: TObject);
begin
 SetReadOnly ;
end;

procedure TfLOform.eProductEnter(Sender: TObject);
begin
 SetReadOnly ;
end;

procedure TfLOform.acPrintPreviewLOExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  if DataSaved = False then
  Begin
   ShowMessage('Spara först.') ;
   Exit ;
  End ;


  Edit1.SetFocus ;
  FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_ver2.RPT') ;

   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcLO.cds_IntHdrShippingPlanNo.AsInteger);
    FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
    FreeAndNil(FormCRViewReport)  ;
   End ;
end;

procedure TfLOform.acNewLOSetExecute(Sender: TObject);
begin
  if DataSaved = False then
  Begin
   ShowMessage('Spara först eller ångra ändringar först.') ;
   Exit ;
  End ;
 with dmcLO do
  Begin
   cds_IntHdr.Insert ;
   Self.Caption:= 'Lastorder ' + cds_IntHdrShippingPlanNo.AsString ;
  End ;
end;

procedure TfLOform.acCloseExecute(Sender: TObject);
begin
 Close ;
end;

procedure TfLOform.tvINTLODBColumn2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
(* With dmcLO do
 Begin
  if cds_LOSequenceNo.AsInteger > 0 then
  Begin
   cds_LOSequenceNo.AsInteger:= 0 ;
   cds_LOPackageCode.AsString:= '' ;
  End ;
 End ;
 Error := False ; *)
end;

procedure TfLOform.cxDBLookupComboBox3PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
 With dmcLO do
 Begin
  if cds_LOSequenceNo.AsInteger > 0 then
  Begin
   cds_LOSequenceNo.AsInteger:= 0 ;
   cds_LOPackageCode.AsString:= '' ;
   Error := False ;
  End ;
 End ;
end;

procedure TfLOform.acChangeLayoutExecute(Sender: TObject);
begin
  if grdINTLO.FocusedView is TcxCustomGridTableView then
    with TcxCustomGridTableController(grdINTLO.FocusedView.Controller) do
      begin
        Customization := True;
        CustomizationForm.AlphaBlendValue := 255;
        CustomizationForm.AlphaBlend := True;
      end;
end;

procedure TfLOform.leKundPropertiesInitPopup(Sender: TObject);
begin
 With dmcLO do
 Begin
  if AnyLoShipped = False then
   leKund.Properties.ReadOnly:= False
    else
     leKund.Properties.ReadOnly:= True ;
 End ;
end;

procedure TfLOform.lcShipToPropertiesInitPopup(Sender: TObject);
begin
 With dmcLO do
 Begin
  if AnyLoShipped = False then
   lcShipTo.Properties.ReadOnly:= False
    else
     lcShipTo.Properties.ReadOnly:= True ;


  cds_PhysInvByCityNo.Filtered:= True ;
  Try
  cds_PhysInvByCityNo.Filter:= 'OwnerNo = '+cds_IntHdrCustomerNo.AsString ;
  Finally
  cds_PhysInvByCityNo.Filtered:= True ;
  End ;

 End ;
end;

procedure TfLOform.acSearchLOExecute(Sender: TObject);
Var LO : Integer ;
    Save_Cursor : TCursor;
begin
(* if DataSaved = False then
  if MessageDlg('Ändrad data är inte sparad, vill du fortsätta?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  Exit ;

   LO:= dmsSystem.GetUserInput ('Ange LO nummer','LO nr:') ;
   if LO < 1 then
    Exit ;

   if dmcLO.FindLONO(LO) < 1 then
   Begin
    ShowMessage('LO nr finns inte') ;
    Exit ;
   End ;

   Save_Cursor := Screen.Cursor;
   Screen.Cursor := crHourGlass;    { Show hourglass cursor }
   Try

   dmcLO.cds_IntHdr.Active:= False ;
   dmcLO.sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= LO ;
   dmcLO.cds_IntHdr.Active:= True ;
   Self.Caption:= 'Lastorder ' + dmcLO.cds_IntHdrShippingPlanNo.AsString ;

   dmcLO.cds_LO.Active:= False ;
   dmcLO.cds_LO.Active:= True ;

//   dmcLO.cds_ELOLayout.Active:= False ;
//   dmcLO.cds_ELOLayout.Active:= True ;

//   dmcLO.cds_ELOLengths.Active:= False ;
//   dmcLO.cds_ELOLengths.Active:= True ;

   dmcLO.cds_ProdInstruct.Active:= False ;
   dmcLO.sq_ProdInstruct.ParamByName('ShippingPlanNo').AsInteger:= LO ;
   dmcLO.cds_ProdInstruct.Active:= True ;
//   dmcLO.cds_ProdInstruct.Filtered:= True ;
//   dmcLO.RefreshPackageCode ;

   if dmcLO.cds_LO.RecordCount > 0 then ;
   Finally
    Screen.Cursor := Save_Cursor ;
   End ; *)
end;

//Kopiera IntOrder, LO
(*function TfLOform.CopyLO  : Integer ;
Var  ELO  : Array of array of variant ;
     PI_ELO, IntHdr  : Array of variant ;
     ShippingPlanNo, x,i, z,
     CustShipPlanDetailObjectNo,
     Old_CustShipPlanDetailObjectNo,
     ShipAddressNo,
     VoyageNo,
     BookingNo,
     SupplierShipPlanObjectNo,
     IntHdrOrderNo,
     IntHdrShippingPlanNo,
     NewProdInstructNo : Integer ;
Begin
 Result:= -1 ;
 With dmcLO do
 Begin
  cds_copyPI.Active:= False ;
  sq_copyPI.ParamByName('ShippingPlanNo').AsInteger:= cds_IntHdrShippingPlanNo.AsInteger ;
  cds_copyPI.Active:= True ;

   cds_ProdInstruct.ReadOnly:= False ;
   cds_ProdInstruct.MasterSource:= nil ;
   Try
   BookingNo:= 0 ;
   VoyageNo:= 0 ;
   IntHdrShippingPlanNo:= 0 ;

   //Copy IntOrderHdr
   if cds_IntHdr.RecordCount > 0 then
   Begin
    IntHdrOrderNo:= cds_IntHdrOrderNo.AsInteger ;
    SetLength(IntHdr, cds_IntHdr.FieldCount) ;
    for i:= 0 to cds_IntHdr.FieldCount-1 do
     IntHdr[i]:= cds_IntHdr.Fields[i].Value ;
   End ;

 //copy ELO
   cds_LO.First ;
   x:= 1 ;
   While not cds_LO.Eof do
   Begin
//    IntHdrShippingPlanNo:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
    SetLength(ELO, x) ;
    SetLength(ELO[x-1], cds_LO.FieldCount) ;
    for i:= 0 to cds_LO.FieldCount-1 do
     ELO[x-1,i]:= cds_LO.Fields[i].Value ;
    x:= succ(x) ;
    cds_LO.Next ;
   End ;//While


//Insert IntHdr
   if IntHdrOrderNo > 0 then
   Begin
    cds_IntHdr.Insert ;
    For i := 0 to cds_IntHdr.FieldCount-1 do
     cds_IntHdr.Fields[i].Value:= IntHdr[i] ;

     cds_IntHdrOrderNo.AsInteger:=  dmsConnector.NextMaxNo('InternalOrderHead') ;
     cds_IntHdrShippingPlanNo.AsInteger:= dmsConnector.NextMaxNo('CustomerShippingPlanHeader') ;
     cds_IntHdrOrderNoText.AsString:= cds_IntHdrShippingPlanNo.AsString ;
// cds_IntHdrCustomerNo.AsInteger:= 741 ;
// cds_IntHdrStatus.AsInteger:= 1 ;
// cds_IntHdrSalesRegionNo.AsInteger:= 741 ;
// cds_IntHdrProductDisplayFormat.AsInteger:= 1 ;
// cds_IntHdrLengthFormat.AsInteger:= 1 ;
// cds_IntHdrLanguageCode.AsInteger:= 1 ;
// cds_IntHdrSequenceNo.AsInteger:= 0 ;
     cds_IntHdrCreatedUser.AsInteger:= ThisUser.UserID ;
     cds_IntHdrModifiedUser.AsInteger:= ThisUser.UserID ;
     cds_IntHdrDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;

     IntHdrOrderNo:= cds_IntHdrOrderNo.AsInteger ;
     IntHdrShippingPlanNo:= cds_IntHdrShippingPlanNo.AsInteger ;



//    cds_IntHdrOrderNoText.AsString:= IntToStr(IntHdrShippingPlanNo) ;
//    cds_IntHdrShippingPlanNo.AsInteger:= IntHdrShippingPlanNo ;
//    cds_IntHdrOrderNo.AsInteger:= IntHdrOrderNo ;
//    cds_IntHdrCreatedUser.AsInteger:= ThisUser.UserID ;
//    cds_IntHdrModifiedUser.AsInteger:= ThisUser.UserID ;
//    cds_IntHdrDateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;


//    cds_IntHdrLO_No.AsInteger:= ShippingPlanNo ;
    Result:= IntHdrShippingPlanNo ;
    cds_IntHdrStatus.AsInteger:= STATUS_LO_PROGRESS ;
    cds_IntHdr.Post ;
   End ;//if

//Insert ELO
   if IntHdrShippingPlanNo > 0 then
   Begin
    For z := Low(ELO) to High(ELO) do
    Begin
     cds_LO.Insert ;
     SupplierShipPlanObjectNo:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
     For i := 0 to cds_LO.FieldCount-1 do
     cds_LO.Fields[i].Value                   := ELO[z,i] ;
     cds_LOCreatedUser.AsInteger              := ThisUser.UserID ;
     cds_LOModifiedUser.AsInteger             := ThisUser.UserID ;
     cds_LODateCreated.AsSQLTimeStamp         := DateTimeToSQLTimeStamp(Now) ;
     cds_LOShippingPlanNo.AsInteger           := IntHdrShippingPlanNo ;
//     cds_LOLO_No.AsInteger:= ShippingPlanNo ;
//     cds_LOOrderNo.AsInteger := IntHdrOrderNo ;
     cds_LOSupplierShipPlanObjectNo.AsInteger := SupplierShipPlanObjectNo ;


     NewProdInstructNo := -1 ;
     if not cds_LOProdInstructNo.IsNull then
      cds_copyPI.Filter    := 'ProdInstruNo = ' + cds_LOProdInstructNo.AsString
//     cds_ProdInstruct.Filter    := 'ProdInstruNo = ' + cds_LOProdInstructNo.AsString
     else
     cds_copyPI.Filter    := 'ProdInstruNo = -1' ;
     cds_copyPI.Filtered  := True ;
//     if cds_ProdInstruct.FindKey([cds_LOProdInstructNo.AsInteger]) then
     if cds_copyPI.RecordCount > 0 then
     Begin
      //copy cds_ProdInstruct
      SetLength(PI_ELO, cds_copyPI.FieldCount) ;
      for i:= 0 to cds_copyPI.FieldCount-1 do
       PI_ELO[i]:= cds_copyPI.Fields[i].Value ;

      cds_copyPI.Insert ;
      NewProdInstructNo:= cds_copyPIProdInstruNo.AsInteger ;
//     IntHdrOrderNo:= cds_IntHdrOrderNo.AsInteger ;
//     IntHdrShippingPlanNo:= cds_IntHdrShippingPlanNo.AsInteger ;
      For i := 0 to cds_copyPI.FieldCount-1 do
      cds_copyPI.Fields[i].Value        := PI_ELO[i] ;
      cds_copyPIProdInstruNo.AsInteger  := NewProdInstructNo ;
      cds_copyPI.Post ;
     End ;//if..

     cds_LOProdInstructNo.AsInteger     := NewProdInstructNo ;
     cds_LOShippingPlanStatus.AsInteger := STATUS_PRELIMINARY ;
//     cds_LOPrice.AsFloat                := 0 ;
//     cds_LOPriceListNo.Clear ;
     cds_LO.Post ;

    End ;//for z
   End ; //if
  Finally
//   cds_ProdInstruct.Filtered    := False ;
    cds_ProdInstruct.MasterSource:= ds_LO ;
//   cds_copyPI.Active:= False ;
  End ;
 End ; //With
End ;
  *)
procedure TfLOform.acCopyLOExecute(Sender: TObject);
Var LO : Integer ;
    Save_Cursor : TCursor;
begin
(* if MessageDlg('Vill du kopiera?',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  if DataSaved = False then
  Begin
   ShowMessage('Spara eller ångra ändringar först!');
   Exit ;
  End ;

  With dmcLO do
  Begin

  Save_Cursor                       := Screen.Cursor;
  Screen.Cursor                     := crSQLWait;    { Show hourglass cursor }
  cds_LO.DisableControls ;
  cds_IntHdr.AfterInsert            := NIL ;
  ds_LO.OnDataChange                := NIL ;
  cds_LOProductLengthNo.OnChange    := nil ;

//  cds_ProdInstruct.Filtered:= False ;
  Try
    LO:= CopyLO  ;

    if cds_IntHdr.State in [dsEdit, dsInsert] then
     cds_IntHdr.Post ;
    if cds_IntHdr.ChangeCount > 0 then
     cds_IntHdr.ApplyUpdates(0) ;

    Self.Caption:= 'Lastorder ' + cds_IntHdrShippingPlanNo.AsString ;

    if cds_LO.State in [dsEdit, dsInsert] then
     cds_LO.Post ;
    if cds_LO.ChangeCount > 0 then
     cds_LO.ApplyUpdates(0) ;


    if cds_copyPI.State in [dsEdit, dsInsert] then
     cds_copyPI.Post ;
    if cds_copyPI.ChangeCount > 0 then
     cds_copyPI.ApplyUpdates(0) ;

    if cds_ProdInstruct.State in [dsEdit, dsInsert] then
     cds_ProdInstruct.Post ;
    if cds_ProdInstruct.ChangeCount > 0 then
     cds_ProdInstruct.ApplyUpdates(0) ;

    cds_IntHdr.Active:= False ;
    sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= LO ;
    cds_IntHdr.Active:= True ;

    cds_LO.Active:= False ;
    cds_LO.Active:= True ;

    cds_ProdInstruct.Active:= False ;
    sq_ProdInstruct.ParamByName('ShippingPlanNo').AsInteger:= LO ;
    cds_ProdInstruct.Active:= True ;
//    cds_ProdInstruct.Filtered:= True ;


  finally
   cds_copyPI.Active:= False ;
   cds_LOProductLengthNo.OnChange := cds_LOProductLengthNoChange ;
   cds_IntHdr.AfterInsert         := cds_IntHdrAfterInsert ;
   ds_LO.OnDataChange             := ds_LODataChange ;
   cds_LO.EnableControls ;
   Screen.Cursor                  := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
 End ; *)
end;

procedure TfLOform.acDeleteALL_LOExecute(Sender: TObject);
//Var ProdInstructNo : String ;
begin
//37043
 if MessageDlg('Är du säker? Den här operationen kan du inte ångra!',
 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
 Begin
  With dmcLO do
   Begin
{  cds_ProdInstruct.Filtered:= False ;
   Try
   cds_ProdInstruct.First ;
   While not cds_ProdInstruct.Eof do
   Begin
    cds_ProdInstruct.Delete ;
   End ;
   Finally
    cds_ProdInstruct.Filtered:= False ;
   End ; }

   cds_LO.First ;
   While not cds_LO.Eof do
   Begin
//    ProdInstructNo:= cds_LOProdInstructNo.AsString ;
    cds_LO.Delete ;
//    cds_ProdInstruct.Filter:='ProdInstruNo = '+ProdInstructNo ;
//    cds_ProdInstruct.Delete ;
   End ;

   if cds_LO.RecordCount = 0 then
    cds_IntHdr.Delete ;


    if cds_IntHdr.State in [dsEdit, dsInsert] then
     cds_IntHdr.Post ;
    if cds_IntHdr.ChangeCount > 0 then
     cds_IntHdr.ApplyUpdates(0) ;

    if cds_LO.State in [dsEdit, dsInsert] then
     cds_LO.Post ;
    if cds_LO.ChangeCount > 0 then
     cds_LO.ApplyUpdates(0) ;

//    if cds_ProdInstruct.State in [dsEdit, dsInsert] then
//     cds_ProdInstruct.Post ;
//    if cds_ProdInstruct.ChangeCount > 0 then
//     cds_ProdInstruct.ApplyUpdates(0) ;

    cds_IntHdr.Active:= False ;
    sq_IntHdr.ParamByName('ShippingPlanNo').AsInteger:= -1 ;
    cds_IntHdr.Active:= True ;

    cds_LO.Active:= False ;
    cds_LO.Active:= True ;

//    cds_ProdInstruct.Active:= False ;
//    sq_ProdInstruct.ParamByName('ShippingPlanNo').AsInteger:= -1 ;
//    cds_ProdInstruct.Active:= True ;
   End ;
 End ;
end;

procedure TfLOform.acShowFooterExecute(Sender: TObject);
begin
 if tvINTLO.OptionsView.Footer = False then
  tvINTLO.OptionsView.Footer:= True
   else
    tvINTLO.OptionsView.Footer:= False ;
end;

procedure TfLOform.PClick(Sender: TObject);
//var fProductForm : TfProductForm ;
begin
(* With dmcLO do
 Begin
  fProductForm:= TfProductForm.Create(Nil);
  Try
   if dmsProduct.cds_PrdGrp.FindKey([cds_LOProductGroupNo.AsInteger]) then ;
//  Begin
    dmsProduct.cds_Products.Active:= False ;
    dmsProduct.cds_Products.Active:= True ;
    dmsProduct.cds_ProductGroupLengths.Active:= False ;
    dmsProduct.cds_ProductGroupLengths.Active:= True ;
//  End ;

    fProductForm.ShowModal ;

  Finally
   FreeAndNil(fProductForm) ;
//  dmsProduct.ds_PrdGrpList.DataSet:= dmsProduct.cds_PrdGrp ;
  End ;
 End ;//With *)
end;

procedure TfLOform.acCopyLORowExecute(Sender: TObject);
Var LO : Integer ;
    Save_Cursor : TCursor;
begin
// if MessageDlg('Vill du kopiera?',
// mtConfirmation, [mbYes, mbNo], 0) = mrYes then
// Begin
  if DataSaved = False then
  Begin
   ShowMessage('Spara eller ångra ändringar först!');
   Exit ;
  End ;

  With dmcLO do
  Begin

  Save_Cursor     := Screen.Cursor;
  Screen.Cursor   := crSQLWait;    { Show hourglass cursor }
  cds_LO.DisableControls ;
  cds_IntHdr.AfterInsert  := NIL ;
  ds_LO.OnDataChange      := NIL ;
//  cds_ProdInstruct.Filtered:= False ;
  Try
    LO:= CopyLORow  ;
    if cds_LO.State in [dsEdit, dsInsert] then
     cds_LO.Post ;
    if cds_LO.ChangeCount > 0 then
     cds_LO.ApplyUpdates(0) ;

//    if cds_ProdInstruct.State in [dsEdit, dsInsert] then
//     cds_ProdInstruct.Post ;
//    if cds_ProdInstruct.ChangeCount > 0 then
//     cds_ProdInstruct.ApplyUpdates(0) ;

  finally
   cds_IntHdr.AfterInsert:= cds_IntHdrAfterInsert ;
   ds_LO.OnDataChange:= ds_LODataChange ;
   cds_LO.EnableControls ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
 End ;//With
// End ;
end;

function TfLOform.CopyLORow  : Integer ;
Var  ELO  : Array of variant ;
     PI_ELO  : Array of variant ;
     ShippingPlanNo, x,i, z,
     SupplierShipPlanObjectNo,
     IntHdrOrderNo,
     IntHdrShippingPlanNo,
     NewProdInstructNo : Integer ;
Begin
 Result:= -1 ;
 With dmcLO do
 Begin
  cds_LOProductLengthNo.OnChange:= nil ;
  Try
   IntHdrShippingPlanNo:= cds_IntHdrShippingPlanNo.AsInteger ;
   IntHdrOrderNo:= cds_IntHdrOrderNo.AsInteger ;
 //copy ELO
//   cds_LO.First ;
   x:= 1 ;
//   While not cds_LO.Eof do
//   Begin
//    IntHdrShippingPlanNo:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
//    SetLength(ELO, x) ;
    SetLength(ELO, cds_LO.FieldCount) ;
    for i:= 0 to cds_LO.FieldCount-1 do
     ELO[i]:= cds_LO.Fields[i].Value ;
    x:= succ(x) ;
//    cds_LO.Next ;
//   End ;//While


//Insert ELO
   if IntHdrShippingPlanNo > 0 then
   Begin
     cds_LO.Insert ;
     SupplierShipPlanObjectNo:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
     For i := 0 to cds_LO.FieldCount-1 do
     cds_LO.Fields[i].Value:= ELO[i] ;
     cds_LOCreatedUser.AsInteger:= ThisUser.UserID ;
     cds_LOModifiedUser.AsInteger:= ThisUser.UserID ;
     cds_LODateCreated.AsSQLTimeStamp:= DateTimeToSQLTimeStamp(Now) ;
     cds_LOShippingPlanNo.AsInteger:= IntHdrShippingPlanNo ;
//     cds_LOOrderNo.AsInteger := IntHdrOrderNo ;
     cds_LOSupplierShipPlanObjectNo.AsInteger:= SupplierShipPlanObjectNo ;

(*     NewProdInstructNo := -1 ;
     if cds_ProdInstruct.FindKey([cds_LOProdInstructNo.AsInteger]) then
     Begin
      //copy cds_ProdInstruct
      SetLength(PI_ELO, cds_ProdInstruct.FieldCount) ;
      for i:= 0 to cds_ProdInstruct.FieldCount-1 do
       PI_ELO[i]:= cds_ProdInstruct.Fields[i].Value ;

      cds_ProdInstruct.Insert ;
      NewProdInstructNo:= cds_ProdInstructProdInstruNo.AsInteger ;
//     IntHdrOrderNo:= cds_IntHdrOrderNo.AsInteger ;
//     IntHdrShippingPlanNo:= cds_IntHdrShippingPlanNo.AsInteger ;
      For i := 0 to cds_ProdInstruct.FieldCount-1 do
      cds_ProdInstruct.Fields[i].Value:= PI_ELO[i] ;
      cds_ProdInstructProdInstruNo.AsInteger := NewProdInstructNo ;
      cds_ProdInstruct.Post ;
     End ;//if..

     cds_LOProdInstructNo.AsInteger       := NewProdInstructNo ;
     cds_LOShippingPlanStatus.AsInteger   := STATUS_PRELIMINARY ;
//     cds_LOPrice.AsFloat:= 0 ;
//     cds_LOPriceListNo.Clear ;
     cds_LO.Post ;
     *)

   End ; //if

  Finally
   cds_LOProductLengthNo.OnChange:= cds_LOProductLengthNoChange ;
  End ;
 End ; //With
End ;

procedure TfLOform.acDeleteLORowExecute(Sender: TObject);
begin
  With dmcLO do
  Begin
   if MessageDlg('Vill du ta bort rad?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    cds_LO.Delete ;
  End ;
end;

procedure TfLOform.acSparaUpdate(Sender: TObject);
begin
 acSpara.Enabled:= not DataSaved ;
end;

procedure TfLOform.acAngraAlltUpdate(Sender: TObject);
begin
 acAngraAllt.Enabled:= not DataSaved ;
end;

procedure TfLOform.acCopyLOUpdate(Sender: TObject);
begin
 acCopyLO.Enabled:= DataSaved ;
end;

procedure TfLOform.acNewLOSetUpdate(Sender: TObject);
begin
 acNewLOSet.Enabled:= DataSaved ;
end;

procedure TfLOform.acNewPIrecordUpdate(Sender: TObject);
begin
(* With dmcLO do
 Begin
  acNewPIrecord.Enabled:= (cds_LO.RecordCount > 0) and (cds_ProdInstruct.RecordCount = 0) ;
  PanelPI.Enabled:= (cds_ProdInstruct.Active) and (cds_ProdInstruct.RecordCount > 0) ;
 End ; //with
 *)
end;

procedure TfLOform.lcLagerGruppPropertiesInitPopup(Sender: TObject);
begin
 With dmcLO do
 Begin
  cds_LIP.Filtered:= True ;
  Try
   if (not cds_IntHdrCustomerNo.IsNull) and (not cds_IntHdrDefaultShipToInvPointNo.IsNull) then
    cds_LIP.Filter:= 'OwnerNo = ' + cds_IntHdrCustomerNo.AsString + ' AND CityNo = ' + cds_IntHdrDefaultShipToInvPointNo.AsString
     else
      cds_LIP.Filter:= 'OwnerNo = -1' ;
  Finally
   cds_LIP.Filtered:= True ;
  End ;
 End ;
End ;

procedure TfLOform.lcLagerGruppPropertiesCloseUp(Sender: TObject);
begin
 With dmcLO do
 Begin
  Try
   cds_LIP.Filtered:= False ;
  Except

  End ;
 End ;
end;

procedure TfLOform.lcShipToPropertiesChange(Sender: TObject);
begin
 With dmcLO do
 Begin
  if cds_IntHdrDefaultShipToInvPointNo.AsInteger > 1 then
  lcShipTo.Style.Color:= clWindow
  else
  lcShipTo.Style.Color:= clRed ;
 End ;
end;

procedure TfLOform.lcShipToPropertiesCloseUp(Sender: TObject);
begin
 With dmcLO do
 Begin
  Try
  cds_PhysInvByCityNo.Filtered:= False ;
  Except

  End ;
 End ;
end;

procedure TfLOform.lcLagerGruppPropertiesChange(Sender: TObject);
begin
 With dmcLO do
 Begin
  if cds_IntHdrDefaultLIPNo.AsInteger > 1 then
  lcLagerGrupp.Style.Color:= clWindow
  else
  lcLagerGrupp.Style.Color:= clRed ;
 End ;
end;

procedure TfLOform.acOpenPackageCodeFormExecute(Sender: TObject);
//var fPkgCodeTrf : TfPkgCodeTrf ;
begin
(* dmPkgCode:= TdmPkgCode.Create(nil);
 dm_ProdInstru:= Tdm_ProdInstru.Create(nil);
 fPkgCodeTrf:= TfPkgCodeTrf.Create(nil);
 try
  fPkgCodeTrf.acSendToOrder.Enabled:= False ;

  if dmcLO.cds_IntHdrProductDisplayFormat.AsInteger in [0,1,3] then
   fPkgCodeTrf.FSizeFormat     := 1
    else
     fPkgCodeTrf.FSizeFormat     := 3 ;

  if dmcLO.cds_IntHdrLengthFormat.AsInteger in [0,1,4,5] then
   fPkgCodeTrf.FLengthFormat   := 1
    else
     if dmcLO.cds_IntHdrLengthFormat.AsInteger in [2] then //Feet
      fPkgCodeTrf.FLengthFormat   := 3
       else
        fPkgCodeTrf.FLengthFormat   := 4 ; //tum

  fPkgCodeTrf.FVolumeFormat   := 1 ;
  fPkgCodeTrf.FLanguagecode   := dmcLO.cds_IntHdrLanguageCode.AsInteger ;

  if fPkgCodeTrf.ShowModal = mrOK then
  Begin
   Application.ProcessMessages ;
   AddSelectedPkgCodesToLOLines ;
  End
  else
  Application.ProcessMessages ;

  dmsProduct.cds_PkgCode.Active:= False ;
  dmsProduct.cds_PkgCode.Active:= True ;
 finally
  FreeAndNil(fPkgCodeTrf) ;
  FreeAndNil(dm_ProdInstru) ;
  FreeAndNil(dmPkgCode) ;
 end; *)
end;
(*
procedure TfLOform.AddSelectedPkgCodesToLOLines ;
Var Save_Cursor : TCursor;
begin
 With dmsSystem, dmcLO do
 Begin
  ds_LO.OnDataChange:= Nil ;
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show SQLWAIT cursor }
  cds_LO.DisableControls ;
  Try
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if dmsProduct.cds_ProdLength.FindKey([mtMarkedCodesProductLengthNo.AsInteger]) then
   Begin
    cds_LO.Insert ;
    cds_LOProductGroupNo.AsInteger      := mtMarkedCodesProductGroupNo.AsInteger ;
    cds_LOProductLengthNo.AsInteger     := mtMarkedCodesProductLengthNo.AsInteger ;
    cds_LOProductNo.AsInteger           := mtMarkedCodesProductNo.AsInteger ;
    dmsProduct.cds_ProdList.Active       := False ;
    dmsProduct.sq_ProdList.ParamByName('LanguageCode').AsInteger := cSwedish ;
    dmsProduct.sq_ProdList.ParamByName('ProductNo').AsInteger    := mtMarkedCodesProductNo.AsInteger ;
    dmsProduct.cds_ProdList.Active             := True ;

    cds_LOProductDescription.AsString         := GetProductDescription ; //dmsProduct.GetProdDesc(cds_LOProductGroupNo.AsInteger,cds_LOProductNo.AsInteger) ;
    cds_LOSequenceNo.AsInteger                := mtMarkedCodesPackageTypeNo.AsInteger ;
    cds_LOPkgCodePPNo.AsInteger               := mtMarkedCodesPkgCodePPNo.AsInteger ;
    cds_LOPackageCode.AsString                := mtMarkedCodesKortaKoden.AsString ;
    cds_LOPcsPerPkg.AsInteger                 := mtMarkedCodesPPP.AsInteger ;
    cds_LOVolumeUnitNo.AsInteger              := c_Packages ;
    NyProdInstructRecord ;
//    cds_LOProdInstructNo.AsInteger            := InsertProdInstructRecord ;
    cds_LO.Post ;
   End//if dmsProduct.cds_ProdLength.FindKey([ProductLengthNo]) then
   else
    Begin
     ShowMessage('Längd finns inte') ;
    End ;

   mtMarkedCodes.Next ;
  End ;//While
  Finally
   cds_LO.EnableControls ;
   ds_LO.OnDataChange:= ds_LODataChange ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;//dmcLO

end; *)

procedure TfLOform.cbFilterOnMarketRegionClick(Sender: TObject);
begin
// dmcLO.SearchOnMarketRegion:= cbFilterOnMarketRegion.Checked ;
// dmcLO.RefreshPackageCode ;
end;

procedure TfLOform.acPrintLOExecute(Sender: TObject);
Var FormCRPrintReport : TFormCRPrintReport;
    A                 : array of variant;
begin
 with dmcLO do
 Begin
  if DataSaved = False then
  Begin
   ShowMessage('Spara först.') ;
   Exit ;
  End ;

   FormCRPrintReport:= TFormCRPrintReport.Create(Nil);
   Try
    SetLength(A, 2);
    A[0]:= dmcLO.cds_IntHdrShippingPlanNo.AsInteger ;
    A[1]:= -1 ;
    FormCRPrintReport.CreateCo(1, -1, -1, iLastOrderVerk, A) ;
   Finally
    FreeAndNil(FormCRPrintReport)  ;
   End ;

 End ;//with
end;

procedure TfLOform.tvINTLOPriceStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
Var
 AColumn, BColumn : TcxCustomGridTableItem;
begin
  AColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Price') ;
  BColumn:= (Sender AS TcxGridDBTableView).GetColumnByFieldName('Prislista') ;

 if (ARecord.Values[AColumn.Index] < 1) and (ARecord.Values[BColumn.Index] < ' ') then
  AStyle:= cxStyle7 ;
end;

procedure TfLOform.acSetPreliminaryStatusToNewExecute(Sender: TObject);
begin
 with dmcLO do
 Begin
  ChangeLOStatusFromPreliminaryToNew ;
 End ;
end;

procedure TfLOform.acPrintLOKontrollExecute(Sender: TObject);
Var FormCRViewReport : TFormCRViewReport ;
begin
  if DataSaved = False then
  Begin
   ShowMessage('Spara först.') ;
   Exit ;
  End ;

  
  Edit1.SetFocus ;
  FormCRViewReport:= TFormCRViewReport.Create(Nil);
   Try

   FormCRViewReport.CreateCo('LASTORDER_VERK_NOTE_STATUS_ver2.RPT') ;

   if FormCRViewReport.ReportFound then
   Begin
    FormCRViewReport.report.ParameterFields.Item[1].AddCurrentValue(dmcLO.cds_IntHdrShippingPlanNo.AsInteger);
    FormCRViewReport.report.ParameterFields.Item[2].AddCurrentValue(-1);
    FormCRViewReport.CRViewer91.ReportSource:= FormCRViewReport.Report ;
    FormCRViewReport.CRViewer91.ViewReport ;
    FormCRViewReport.ShowModal ;
   End ;
   Finally
    FreeAndNil(FormCRViewReport)  ;
   End ;
end;

procedure TfLOform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= caFree ;
end;

procedure TfLOform.leLastStallePropertiesCloseUp(Sender: TObject);
begin
  dmsContact.cds_LL_Verk.Filtered := False ;
end;

procedure TfLOform.leLastStallePropertiesInitPopup(Sender: TObject);
begin
 With dmcLO do
 Begin
  if not cds_IntHdrSupplierNo.IsNull then
   dmsContact.cds_LL_Verk.Filter   := 'OwnerNo = ' + cds_IntHdrSupplierNo.AsString
    else
     dmsContact.cds_LL_Verk.Filter   := 'OwnerNo = -1' ;
  dmsContact.cds_LL_Verk.Filtered := True ;
 End ;
end;

procedure TfLOform.lcSupplierPropertiesInitPopup(Sender: TObject);
begin
{ With dmcLO do
 Begin
  if AnyLoShipped = False then
   lcSupplier.Properties.ReadOnly:= False
    else
     lcSupplier.Properties.ReadOnly:= True ;
 End ; }
end;

procedure TfLOform.acSelectProductsExecute(Sender: TObject);
//Var frmGetProduct : TfrmGetProduct ;
begin
(* With dmcLO do
 Begin
  if cds_LO.Active then
  Begin
   frmGetProduct:= TfrmGetProduct.Create(Nil) ;
   frmGetProduct.ClientNo := -1 ;
   Try
    if frmGetProduct.ShowModal = mrOK then
    Begin
     Application.ProcessMessages ;
     InsertProductsFromSelectedProducts ;
    End ;

   Finally
    FreeAndNil(frmGetProduct) ;
   End ;
  End ; //if
 End ;//with
 *)
End ;

(*procedure TfLOform.InsertProductsFromSelectedProducts ;
Var Save_Cursor  : TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crSQLWait;    { Show hourglass cursor }
 Try
 With dmcLO, dmsProduct do
 Begin
  cds_LO.DisableControls ;
  Try
  Application.ProcessMessages ;
  mtMarkedProd.First ;
  While not mtMarkedProd.Eof do
  Begin
// if (cds_OrderRow.State in [dsBrowse]) and (cds_OrderRow.RecordCount = 0) then
   cds_LO.Insert ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   cds_LOProductGroupNo.AsInteger       := mtMarkedProdProductGroupNo.AsInteger ;
   cds_LOProductNo.AsInteger            := mtMarkedProdProductNo.AsInteger ;
   cds_LOProductLengthNo.AsInteger      := mtMarkedProdProductLengthNo.AsInteger ;

   if mtMarkedProdTab.AsInteger = 3 then
    Begin
     cds_LOProductDescription.AsString  := mtMarkedProdPRODUKTDESC.AsString ;
//     cds_OrderRowLengthDescription.AsString     := mtMarkedProdLengthDesc.AsString ;
    End
     else
     Begin
      dmsProduct.cds_ProdList.Active     := False ;
      dmsProduct.sq_ProdList.ParamByName('LanguageCode').AsInteger := cSwedish ;
      dmsProduct.sq_ProdList.ParamByName('ProductNo').AsInteger    := mtMarkedProdProductNo.AsInteger ;
      dmsProduct.cds_ProdList.Active     := True ;
//      cds_LOProductDescription.AsString  := mtMarkedProdPRODUKTDESC.AsString ;
      cds_LOProductDescription.AsString := GetProductDescription ;
//      cds_LOProductDescription.AsString  := GetProductDescription(cds_OrderHdrProductDisplayFormat.AsInteger, cds_OrderHdrLanguageCode.AsInteger, cds_OrderRowProductNo.AsInteger,
//      cds_OrderRowNominalThicknessMM.AsString, cds_OrderRowNominalWidthMM.AsString, True) ;
//      cds_OrderRowLengthDescription.AsString     := SetOrderRowLengthDesc (1) ;
     End ;
   NyProdInstructRecord ;
   cds_LO.Post ;
   Screen.Cursor := crSQLWait;    { Show hourglass cursor }
   mtMarkedProd.Next ;
  End ;
  Finally
   cds_LO.EnableControls ;
  End ;
  mtMarkedProd.Active:= False ;
 End ;//With dmcLO, dmsSystem do
 Finally
  Screen.Cursor:= Save_Cursor ;
 End ;
end;
  *)

{ if dmsSystem.DoesLOHaveLoadsConfirmed(dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) = False then
 Begin
  frmGetProduct:= TfrmGetProduct.Create(Nil) ;
  Try
   if frmGetProduct.ShowModal = mrOK then
   Begin
    if dmcLO.cds_LO.State in [dsBrowse] then
     dmcLO.cds_LO.Edit ;
    dmcLO.cds_LOProductGroupNo.AsInteger    := dmsProduct.cds_ProdListProductGroupNo.AsInteger ;
    dmcLO.cds_LOProductNo.AsInteger         := dmsProduct.cds_ProdListProductNo.AsInteger ;
    dmcLO.cds_LOProductDescription.AsString := dmcLO.GetProductDescription ;
   End ;
  Finally
   FreeAndNil(frmGetProduct) ;
  End ;
 End ;
end; }

procedure TfLOform.acSelectProductByLagerExecute(Sender: TObject);
//var fGetProductByLager: TfGetProductByLager;
begin
(* fGetProductByLager:= TfGetProductByLager.Create(nil) ;
 Try
  if fGetProductByLager.ShowModal = mrOK then
   InsertProductsFromLager ;
 Finally
  FreeAndNil(fGetProductByLager) ;
 End ; *)
end;
(*
procedure TfLOform.InsertProductsFromLager ;
Var frmGetProduct : TfrmGetProduct ;
    Save_Cursor   : TCursor;
begin
 With dmcLO, dmsProduct do
 Begin
  Save_Cursor   := Screen.Cursor;
  Screen.Cursor := crHourGlass;    { Show hourglass cursor }
  cds_LO.DisableControls ;
  Try
  Application.ProcessMessages ;
  mtMarkedProd.First ;
  While not mtMarkedProd.Eof do
  Begin
   cds_LO.Insert ;
   cds_LOProductGroupNo.AsInteger       := mtMarkedProdProductGroupNo.AsInteger ;
   cds_LOProductNo.AsInteger            := mtMarkedProdProductNo.AsInteger ;
   dmsProduct.cds_ProdList.Active        := False ;
   dmsProduct.sq_ProdList.ParamByName('LanguageCode').AsInteger := cSwedish ;
   dmsProduct.sq_ProdList.ParamByName('ProductNo').AsInteger    := cds_LOProductNo.AsInteger ;
   dmsProduct.cds_ProdList.Active        := True ;
   cds_LOProductDescription.AsString    := dmcLO.GetProductDescription ;
   cds_LOProductLengthNo.AsInteger      := mtMarkedProdProductLengthNo.AsInteger ;
   NyProdInstructRecord ;
   cds_LO.Post ;
   mtMarkedProd.Next ;
  End ;
  Finally
   cds_LO.EnableControls ;
   Screen.Cursor := Save_Cursor ;
  End ;
 End ;//With dmsSystem do
end;
  *)
procedure TfLOform.acNextOrderTabExecute(Sender: TObject);
begin
  if cxPageControl1.ActivePage = tsKUND then
    cxPageControl1.ActivePage := tsParametrar
  else if cxPageControl1.ActivePage = tsParametrar then
    cxPageControl1.ActivePage := tsTexter
  else if cxPageControl1.ActivePage = tsTexter then
    cxPageControl1.ActivePage := tsLORad ;
end;

procedure TfLOform.acPrevOrderTabExecute(Sender: TObject);
begin
 if cxPageControl1.ActivePage = tsLORad then
 cxPageControl1.ActivePage := tsTexter
 else if cxPageControl1.ActivePage = tsTexter then
  cxPageControl1.ActivePage := tsParametrar
 else if cxPageControl1.ActivePage = tsParametrar then
  cxPageControl1.ActivePage := tsKUND ;
end;

procedure TfLOform.acSearchProductExecute(Sender: TObject);
Var frmGetProduct : TfrmGetProduct ;
    Save_Cursor   : TCursor;
begin
(* With dmcLO do
 Begin
  cds_LOProductLengthNo.OnChange:= nil ;
  Try
  if dmsSystem.DoesLOHaveLoadsConfirmed(dmcLO.cds_LOSupplierShipPlanObjectNo.AsInteger) then
  begin
   showmessage('LO Raden är utlastad och ankomtsregistrerad!') ;
   exit ;
  end ;
   frmGetProduct:= TfrmGetProduct.Create(Nil) ;
   frmGetProduct.ClientNo := -1 ;
   frmGetProduct.PageControl.HideTabs:= True ;
   frmGetProduct.PanelSelectedProducts.Visible:= False ;
   frmGetProduct.cxSplitter1.Visible:= False ;
   //Set form i mode "SelectOneProduct"
   //Hide tabs and selected grid
   Try
    if frmGetProduct.ShowModal = mrOK then
    Begin
     Application.ProcessMessages ;
     Save_Cursor   := Screen.Cursor;
     Screen.Cursor := crHourGlass;    { Show hourglass cursor }
     Try
     if cds_LO.State in [dsBrowse] then
     cds_LO.Edit ;
     cds_LOProductNo.AsInteger          := dmsProduct.mtMarkedProdProductNo.AsInteger ;
     cds_LOProductGroupNo.AsInteger     := dmsProduct.mtMarkedProdProductGroupNo.AsInteger ;
//     cds_LOProductLengthNo.AsInteger    := dmsProduct.mtMarkedProdProductLengthNo.AsInteger ;
     cds_LOProductDescription.AsString  := GetProductDescription ;
     cds_LOPkgCodePPNo.Clear ;// .AsInteger        := -1 ;
     cds_LOSequenceNo.Clear ;
     cds_LOPackageCode.Clear ;
     cds_LO.Post ;
     Finally
      Screen.Cursor := Save_Cursor ;
     End ;
    End ;

   Finally
    FreeAndNil(frmGetProduct) ;
   End ;
  Finally
   cds_LOProductLengthNo.OnChange:= cds_LOProductLengthNoChange ;
  End ;
 End ;//With
 *)
End ;

procedure TfLOform.acSearchProductUpdate(Sender: TObject);
begin
 With dmcLO do
 Begin
  acSearchProduct.Enabled:= (cds_LO.Active) and (cds_LOProductNo.AsInteger > 1) ;
 End ;
end;

procedure TfLOform.acGroupByBoxExecute(Sender: TObject);
begin
 tvINTLO.OptionsView.GroupByBox:= not tvINTLO.OptionsView.GroupByBox ;
end;

procedure TfLOform.acGroupSummaryExecute(Sender: TObject);
begin
 if tvINTLO.OptionsView.GroupFooters = gfAlwaysVisible then
  tvINTLO.OptionsView.GroupFooters:= gfInvisible
   else
    tvINTLO.OptionsView.GroupFooters:= gfAlwaysVisible ;
end;

procedure TfLOform.cxPageControl1Change(Sender: TObject);
begin
 if cxPageControl1.ActivePage = tsParametrar then
  bbNextInParameter.SetFocus ;
end;

procedure TfLOform.acCopyPIExecute(Sender: TObject);
Var ProdInstruNo, sspNo : Integer ;
begin
(* With dmcLO do
 Begin
  if tvINTLO.Controller.SelectedRecordCount > 0 then
  Begin
   ProdInstruNo := cds_ProdInstructProdInstruNo.AsInteger ;
   sspNo        := cds_LOSupplierShipPlanObjectNo.AsInteger ;
   cds_ProdInstruct.MasterSource    := nil ;
//   cds_ProdInstruct.Filtered:= False ;
   Try
   GetADDLOLAYOUTS ;//Hämtar in alla layouter för current orderraden till
   GetMarkedRows ;
   SparaProdInstruForSelectedLORows(ProdInstruNo) ;
   SparaLayouterForSelectedADDLORows(sspNo) ;
   Finally
    cds_ProdInstruct.MasterSource    := ds_LO ;
//    cds_ProdInstruct.Filtered:= True ;
   End ;
  End ;//if..
 End ;//With
 *)
end;

(*
procedure TfLOform.GetMarkedRows ;
Var ProdInstruNo, PackageTypeNo, PPP, ProductLengthNo, ProductGroupNo, ProductNo, ColIdx, OutputVal, i, RecIDX : Integer ;
    Save_Cursor : TCursor;
    AT, AB, ALMM, KV, TS, UT, SearchName : String ;
//    PCS : Integer ;
begin
 With dmsSystem do //, dmPkgCode do
 Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait;    { Show hourglass cursor }
  mtMarkedCodes.Active:= False ;
  mtMarkedCodes.Active:= True ;
  tvINTLO.BeginUpdate ;
  tvINTLO.DataController.BeginLocate ;
  Try
   For i := 0 to tvINTLO.Controller.SelectedRecordCount - 1 do
   Begin
    RecIDx:= tvINTLO.Controller.SelectedRecords[i].RecordIndex ;

    ColIdx := tvINTLO.DataController.GetItemByFieldName('SupplierShipPlanObjectNo').Index;
    OutputVal := tvINTLO.DataController.Values[RecIdx, ColIdx];

    ColIdx := tvINTLO.DataController.GetItemByFieldName('ProdInstructNo').Index;
    if tvINTLO.DataController.Values[RecIdx, ColIdx] > 0 then
    ProdInstruNo:= tvINTLO.DataController.Values[RecIdx, ColIdx]
    else
    ProdInstruNo:= -1 ;


    if not mtMarkedCodes.Locate('PkgCodePPNo', OutputVal, []) then
    Begin
     mtMarkedCodes.Insert ;
     mtMarkedCodesPkgCodePPNo.AsInteger       := OutputVal ;
     mtMarkedCodesProdInstruNo.AsInteger      := ProdInstruNo ;
     mtMarkedCodes.Post ;
    End ;
   End ;

  Finally
   tvINTLO.DataController.EndLocate ;
   tvINTLO.EndUpdate ;
   Screen.Cursor := Save_Cursor;  { Always restore to normal }
  End ;
 End ;//with
end;
  *)
(*procedure TfLOform.SparaProdInstruForSelectedLORows(const vProdInstruNo : Integer) ;
Var cdsProdInstruct : Array of variant ;
    x, ProdInstruNo : Integer ;
begin
 With dmsSystem, dmcLO do
 Begin
  cds_LO.DisableControls ;
  Try
  SetLength(cdsProdInstruct, cds_LO.FieldCount) ;

  cds_ProdInstruct.Filter:= 'ProdInstruNo = ' + IntToStr(vProdInstruNo) ;
  cds_ProdInstruct.Filtered:= True ;
  Try
  For x := 0 to cds_ProdInstruct.FieldCount - 1 do
   cdsProdInstruct[x]:= cds_ProdInstruct.Fields[x].Value ;

  Finally
   cds_ProdInstruct.Filtered:= False ;
  End ;
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   if cds_ProdInstruct.Locate('ProdInstruNo', mtMarkedCodesProdInstruNo.AsInteger, []) then
   Begin
    cds_ProdInstruct.Edit ;
    ProdInstruNo                          := cds_ProdInstructProdInstruNo.AsInteger ;
   End
     else
      Begin
       cds_ProdInstruct.Insert ;
       ProdInstruNo                          := cds_ProdInstructProdInstruNo.AsInteger ;
      End ;
   For x := 0 to cds_ProdInstruct.FieldCount - 1 do
   cds_ProdInstruct.Fields[x].Value         := cdsProdInstruct[x] ;
   cds_ProdInstructProdInstruNo.AsInteger := ProdInstruNo ;
//   cds_ProdInstructSequenceNo.AsInteger   := cds_PkgCodeTrfClientNo.AsInteger ;
   cds_ProdInstruct.Post ;
//   cds_ProdInstructSequenceNo.AsInteger  := cds_PkgCodeTrfClientNo.AsInteger ;
//   cds_ProdInstructBarCodeID.AsInteger   := cds_PkgCodeTrfBarCodeIDNo.AsInteger ;
//   cds_ProdInstructStamp.AsInteger       := cds_PkgCodeTrfGradeStampNo.AsInteger ;


   if cds_LO.Locate('SupplierShipPlanObjectNo', mtMarkedCodesPkgCodePPNo.AsInteger, []) then
   Begin
    cds_LO.Edit ;
    cds_LOProdInstructNo.AsInteger:= ProdInstruNo ;
    cds_LO.Post ;
   End ;

   mtMarkedCodes.Next ;
  End ;//While
  Finally
   cds_LO.EnableControls ;
  End ;
 End ;//With
end;

procedure TfLOForm.SparaLayouterForSelectedADDLORows(const SupplierShipPlanObjectNo : Integer) ;
Var cdsProdInstruct : Array of variant ;
    x, ProdInstruNo : Integer ;
begin
 With dmsSystem, dmcLO do
 Begin
//  cds_ELOLayout.MasterSource := nil ;
  Try
//  cds_ELOLayout.Filter        := 'SupplierShipPlanObjectNo = ' + cds_LOSupplierShipPlanObjectNo.AsString ;
//  cds_ELOLayout.Filtered      := True ;
//  GetADDLOLAYOUTS ;//Hämtar in alla layouter för current orderraden till
{  SetLength(cdsProdInstruct, cds_ProdInstruct.FieldCount) ;

  cds_ELOLayout.Filter:= 'OrderLineNo = ' + IntToStr(OrderLineNo) ;
  cds_ProdInstruct.Filtered:= True ;
  Try
  For x := 0 to cds_ProdInstruct.FieldCount - 1 do
   cdsProdInstruct[x]:= cds_ProdInstruct.Fields[x].Value ;
  Finally
   cds_ProdInstruct.Filtered:= False ;
  End ; }
//*******************************************************************************
  mtMarkedCodes.First ;
  While not mtMarkedCodes.Eof do
  Begin
   cds_ELOLayout.Filter        := 'SupplierShipPlanObjectNo = ' + mtMarkedCodesPkgCodePPNo.AsString ;
//   cds_ELOLayout.Filtered      := True ;
   UpdatePackageCode_Layout(mtMarkedCodesPkgCodePPNo.AsInteger) ;
   mtMarkedCodes.Next ;
  End ;//While
  Finally
   cds_ELOLayout.Filter        := 'SupplierShipPlanObjectNo = ' + cds_LOSupplierShipPlanObjectNo.AsString ;
//   cds_ELOLayout.MasterSource := ds_LO ;
//   cds_ELOLayout.Filtered     := False ;
  End ;
 End ;//With
end;

procedure TfLOForm.GetADDLOLAYOUTS ;
Var x, i : Integer ;
begin
 With dmcLO do
 Begin
  cds_ELOLayout.First ;
  x:= 1 ;
  While not cds_ELOLayout.Eof do
  Begin
   SetLength(PackageCode_Layout, x) ;
   SetLength(PackageCode_Layout[x-1], cds_ELOLayout.FieldCount) ;
   for i:= 0 to 1 do //cds_ELOLayout.FieldCount-1 do
   Begin
    PackageCode_Layout[x-1,i]:= cds_ELOLayout.Fields[i].Value ;
   End ;
   x:= succ(x) ;
   cds_ELOLayout.Next ;
  End ;
 End ;//With
end;

procedure TfLOForm.UpdatePackageCode_Layout (const SupplierShipPlanObjectNo : Integer) ;
Var x, i : Integer ;
Begin
 With dmcLO do
 Begin
//  cds_PP_Layout.Active:= False ;
//  sq_PP_Layout.ParamByName('PkgCodePPNo').AsInteger:= PkgCodePPNo ;
//  cds_PP_Layout.Active:= True ;
  cds_ELOLayout.First ;
  While not cds_ELOLayout.Eof do
   cds_ELOLayout.Delete ;
  For x := Low(PackageCode_Layout) to High(PackageCode_Layout) do
  Begin
   if not cds_ELOLayout.Locate('LayoutNo', PackageCode_Layout[x,0], []) then
   Begin
    cds_ELOLayout.Insert ;
    For i := 0 to 1 do //cds_ELOLayout.FieldCount-1 do
    cds_ELOLayout.Fields[i].Value                   := PackageCode_Layout[x,i] ;
    cds_ELOLayoutSupplierShipPlanObjectNo.AsInteger := SupplierShipPlanObjectNo ;
    cds_ELOLayout.Post ;
   End ;
  End ;//for x
 End ;//With
End ;
  *)
procedure TfLOform.bbLoadPictureClick(Sender: TObject);
Var I : Integer ;
begin
(* With dmcLO do
 Begin
  if (cds_ProdInstruct.Active) and (cds_ProdInstruct.RecordCount > 0) then
  Begin
   if cds_ProdInstruct.State in [dsBrowse] then
    cds_ProdInstruct.Edit ;
   if OpenPictureDialog1.Execute then
    with OpenPictureDialog1.Files do
      for I := 0 to Count - 1 do
       cds_ProdInstructBILD.LoadFromFile(Strings[I]);

    cds_ProdInstruct.Post ;
  End ;//if..
 End ; //With..
 *)
end;

procedure TfLOform.acDeleteLORowUpdate(Sender: TObject);
begin
  With dmcLO do
  Begin
   acDeleteLORow.Enabled:= (cds_LO.Active)
   and ((cds_LO.RecordCount > 0) or (cds_LO.State in [dsEdit, dsInsert])) ;
  End ;
end;

procedure TfLOform.acNewLORowsExecute(Sender: TObject);
begin
  With dmcLO do
  Begin
   cds_LO.Insert ;
   leProductCode.SetFocus ;
  End ;
end;

procedure TfLOform.tvINTLOLASTSTALLEPropertiesCloseUp(Sender: TObject);
begin
 With dmsContact do
 Begin
  Try
   cds_LL_Verk.Filtered:= False ;
  Except
  End ;
 End ;
end;

procedure TfLOform.tvINTLOLASTSTALLEPropertiesInitPopup(Sender: TObject);
begin
 With dmsContact do
 Begin
  cds_LL_Verk.Filtered:= True ;
  Try
  if dmcLO.cds_LOSupplierNo.AsInteger > 0 then
   cds_LL_Verk.Filter:= 'OwnerNo = '+dmcLO.cds_LOSupplierNo.AsString ;
  Except
   cds_LL_Verk.Filtered:= False ;
  End ;
 End ;
end;

procedure TfLOform.lcTruckStroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var fTruckSticks: TfTruckSticks;
begin
(* if Key = VK_F2 then
 Begin
  fTruckSticks:= TfTruckSticks.Create(nil) ;
  Try
   fTruckSticks.ShowModal ;
  Finally
   FreeAndNil(fTruckSticks) ;
  End ;
 End ;//if Key = VK_F2 then
 *)
end;


procedure TfLOform.lcPaketstorlekKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var fPackageSize: TfPackageSize;
begin
(* if Key = VK_F2 then
 Begin
  fPackageSize:= TfPackageSize.Create(nil) ;
  try
   fPackageSize.ShowModal ;
  finally
   FreeAndNil(fPackageSize) ;
  end;
 End ;
 *)
end;

procedure TfLOform.lcWrapTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var fWrapType: TfWrapType;
begin
(* if Key = VK_F2 then
 Begin
  fWrapType:= TfWrapType.Create(nil);
  try
   fWrapType.ShowModal ;
  finally
   FreeAndNil(fWrapType) ;
  end;
 End ;
 *)
end;

procedure TfLOform.lcPressTreatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//Var fImpForm : TfImpForm;
begin
(* if Key = VK_F2 then
 Begin
  fImpForm:= TfImpForm.Create(nil);
  try
   fImpForm.ShowModal ;
  finally
   dmsProduct.cds_ProdCatg.Filtered:= True ;
   FreeAndNil(fImpForm) ;
  end;
 End ;
 *)
end;

procedure TfLOform.lcBarCodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//Var fBarCodeForm : TfBarCodeForm;
begin
(* if Key = VK_F2 then
 Begin
  fBarCodeForm:= TfBarCodeForm.Create(nil);
  try
   fBarCodeForm.ShowModal ;
  finally
   FreeAndNil(fBarCodeForm) ;
  end;
 End ;*)
end;

procedure TfLOform.lcGradeStampKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//Var fGradeStampForm : TfGradeStampForm;
begin
(* if Key = VK_F2 then
 Begin
  fGradeStampForm:= TfGradeStampForm.Create(nil);
  try
   fGradeStampForm.ShowModal ;
  finally
   FreeAndNil(fGradeStampForm) ;
  end;
 End ;*)
end;

procedure TfLOform.acAddLayoutExecute(Sender: TObject);
begin
(* With dmcLO do
 Begin
  cds_ELOLayout.Insert ;
 End ; *)
end;

procedure TfLOform.acRemoveLayoutExecute(Sender: TObject);
begin
(* With dmcLO do
 Begin
  cds_ELOLayout.Delete ;
 End ; *)
end;

procedure TfLOform.acRemoveLayoutUpdate(Sender: TObject);
begin
(* With dmcLO do
 Begin
  acRemoveLayout.Enabled:= (cds_ELOLayout.Active) and
  ((cds_ELOLayout.RecordCount > 0) or (cds_ELOLayout.State in [dsEdit, dsInsert])) ;
 End ; *)
end;

procedure TfLOform.acLOLengthsExecute(Sender: TObject);
//var fINTLOLengths: TfINTLOLengths;
begin
(* With dmcLO do
 Begin
  fINTLOLengths:= TfINTLOLengths.Create(nil) ;
  Try
   fINTLOLengths.PkgCodePPZeroGroupNo:= cds_LOPkgCodePPNo.AsInteger ;
   cds_ELOLengths.Active:= False ;
   sq_ELOLengths.ParamByName('SupplierShipPlanObjectNo').AsInteger:= cds_LOSupplierShipPlanObjectNo.AsInteger ;
   cds_ELOLengths.Active:= True ;
   fINTLOLengths.ShowModal ;
   if cds_ELOLengths.State in [dsEdit, dsInsert] then
    cds_ELOLengths.Post ;
   if cds_ELOLengths.ChangeCount > 0 then
    cds_ELOLengths.ApplyUpdates(0) ;
  Finally
   FreeAndNil(fINTLOLengths) ;
  End ;
 End ;//With *)
end;

procedure TfLOform.acGetStandardLayoutExecute(Sender: TObject);
begin
// dmcLO.GetINTLOStandardPkgLayouts ;
end;

procedure TfLOform.tvINTLOEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
var AGoForward: Boolean;
begin
 Try
  if AEdit is TcxCustomTextEdit then
    with TcxCustomTextEdit(AEdit) do begin
      if (Key = VK_RIGHT) and (CursorPos=Length(TcxCustomTextEdit(AEdit).Text)) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(True), 0)
      else if (Key = VK_LEFT) and (CursorPos=0) then
        PostMessage(Self.Handle,CM_MOVEIT, Integer(False), 0);
    end;
 Except
 End ;
end;

procedure TfLOform.leLastStallePropertiesChange(Sender: TObject);
begin
 With dmcLO do
 Begin
  if cds_IntHdrDef_LoadingLocationNo.AsInteger > 1 then
  leLastStalle.Style.Color:= clWindow
  else
  leLastStalle.Style.Color:= clRed ;
 End ;
end;

procedure TfLOform.lcLagerGruppEnter(Sender: TObject);
begin
 With dmcLO do
 Begin
  cds_LIP.Filtered:= True ;
  Try
   if (not cds_IntHdrCustomerNo.IsNull) and (not cds_IntHdrDefaultShipToInvPointNo.IsNull) then
    cds_LIP.Filter:= 'OwnerNo = ' + cds_IntHdrCustomerNo.AsString + ' AND CityNo = ' + cds_IntHdrDefaultShipToInvPointNo.AsString
     else
      cds_LIP.Filter:= 'OwnerNo = -1' ;
  Finally
   cds_LIP.Filtered:= True ;
  End ;
 End ;
end;

procedure TfLOform.lcLagerGruppExit(Sender: TObject);
begin
 With dmcLO do
 Begin
  cds_LIP.Filtered:= False ;
 End ;
end;

procedure TfLOform.leLastStalleEnter(Sender: TObject);
begin
 With dmcLO do
 Begin
  if not cds_IntHdrSupplierNo.IsNull then
   dmsContact.cds_LL_Verk.Filter   := 'OwnerNo = ' + cds_IntHdrSupplierNo.AsString
    else
     dmsContact.cds_LL_Verk.Filter   := 'OwnerNo = -1' ;
  dmsContact.cds_LL_Verk.Filtered := True ;
 End ;
end;

procedure TfLOform.leLastStalleExit(Sender: TObject);
begin
 With dmcLO do
 Begin
  dmsContact.cds_LL_Verk.Filtered := False ;
 End ;
end;

procedure TfLOform.acPrintmenyExecute(Sender: TObject);
begin
 pmPrint.Popup(300, 200) ;
end;

end.
