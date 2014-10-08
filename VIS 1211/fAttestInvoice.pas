unit fAttestInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  DB, kbmMemTable,
  DBCtrls, StdCtrls, Mask, Menus,
  OleServer,
  Buttons, SqlTimSt, dxBar, dxBarExtItems, Math,
  cxContainer, cxEdit, cxTextEdit, cxPC, cxControls, cxLabel, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxClasses, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxCheckBox, cxDBLabel, cxCalendar, cxDBEdit,
  cxMemo, cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter, dxSkinsCore,
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
  cxPCdxBarPopupMenu, dxSkinsdxBarPainter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxBarBuiltInMenu, cxNavigator, System.Actions, siComp,
  siLngLnk;

type
  TfrmAttestInvoice = class(TForm)
    dxPageControl1: TcxPageControl;
    tsInvoiceHead: TcxTabSheet;
    tsShipToAddress: TcxTabSheet;
    tsAgent: TcxTabSheet;
    tsNotes: TcxTabSheet;
    TabControl1: TTabControl;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    dxDBDateEdit1: TcxDBDateEdit;
    LCustomer: TLabel;
    txtCustomer: TDBText;
    Label16: TLabel;
    DBText22: TDBText;
    Label38: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Shape2: TShape;
    Label43: TLabel;
    rgDebitCredit: TDBRadioGroup;
    Shape3: TShape;
    tsStickyNote: TcxTabSheet;
    DBMemo2: TDBMemo;
    dxBarManager1: TdxBarManager;
    lbExit: TdxBarLargeButton;
    lbBooking: TdxBarLargeButton;
    lbPrevInvoice: TdxBarLargeButton;
    lbNext: TdxBarLargeButton;
    lbSave: TdxBarLargeButton;
    lbNew: TdxBarLargeButton;
    lbCancel: TdxBarLargeButton;
    lbDelete: TdxBarLargeButton;
    ccSearchInvoiceNo: TdxBarControlContainerItem;
    dxBarStatic1: TdxBarStatic;
    tsAttestRows: TcxTabSheet;
    CheckBox1: TCheckBox;
    lbAllRows: TdxBarLargeButton;
    lbOnAllLORows: TdxBarLargeButton;
    tsLO: TcxTabSheet;
    panelLO: TPanel;
    Label18: TLabel;
    DBText24: TDBText;
    Label22: TLabel;
    DBText28: TDBText;
    DBText29: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    DBText30: TDBText;
    Label25: TLabel;
    DBText31: TDBText;
    Label36: TLabel;
    DBText44: TDBText;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    bbNewCarrier: TBitBtn;
    DBEdit2: TDBEdit;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    dxDBMaskEdit1: TcxDBMaskEdit;
    dxDBMaskEdit2: TcxDBMaskEdit;
    lbCopyAttest: TdxBarLargeButton;
    tsTotals: TcxTabSheet;
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
    Label3: TLabel;
    DBText3: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    DBText12: TDBText;
    Label30: TLabel;
    lbNewFromCredit: TdxBarLargeButton;
    imglOutbar_large: TImageList;
    DBCheckBox1: TDBCheckBox;
    cbCommissionPaidByCustomer: TDBCheckBox;
    cbVAT: TDBCheckBox;
    cbFreightInDiscount: TDBCheckBox;
    cbFreightInComm: TDBCheckBox;
    LPaymentTerms: TLabel;
    DBText4: TDBText;
    DBText42: TDBText;
    Label35: TLabel;
    Label6: TLabel;
    DBText6: TDBText;
    bsSokLO: TdxBarStatic;
    ccSokLO: TdxBarControlContainerItem;
    eFakturaNr: TcxTextEdit;
    Label10: TLabel;
    Label42: TLabel;
    Label12: TLabel;
    DBText18: TDBText;
    Label51: TLabel;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit6: TcxDBTextEdit;
    Label52: TLabel;
    dxDBEdit7: TcxDBTextEdit;
    Label29: TLabel;
    DBText8: TDBText;
    Label17: TLabel;
    dcOrderNoText: TDBEdit;
    Label19: TLabel;
    dcSalesMan: TDBEdit;
    dcOurRef: TDBEdit;
    Label21: TLabel;
    dcCustRef: TDBEdit;
    Label20: TLabel;
    DBText13: TDBText;
    Label53: TLabel;
    lbNewFromCommission: TdxBarLargeButton;
    PopupMenu1: TPopupMenu;
    Skfaktura1: TMenuItem;
    SkLO1: TMenuItem;
    ActionList1: TActionList;
    acSave: TAction;
    acCancelChanges: TAction;
    acDeleteAttest: TAction;
    acNewAttest: TAction;
    acNewFromQuickInvoice: TAction;
    acBooking: TAction;
    acClose: TAction;
    acGoToSearch: TAction;
    acGoToLOSearch: TAction;
    BokningF101: TMenuItem;
    ngraF41: TMenuItem;
    StngF121: TMenuItem;
    abortF51: TMenuItem;
    NyF21: TMenuItem;
    NysnabbfaktShiftF21: TMenuItem;
    SparaF31: TMenuItem;
    ngraF42: TMenuItem;
    acCopyAttest: TAction;
    lcKonto: TcxDBLookupComboBox;
    cbInvoiceType: TcxComboBox;
    Panel6: TPanel;
    grdInvDtl: TcxGrid;
    grdInvDtlDBTableView1: TcxGridDBTableView;
    grdInvDtlDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdInvDtlDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdInvDtlDBTableView1InvoiceDetailNo: TcxGridDBColumn;
    grdInvDtlDBTableView1TypeOfRow: TcxGridDBColumn;
    grdInvDtlDBTableView1Reference: TcxGridDBColumn;
    grdInvDtlDBTableView1ProductDescription: TcxGridDBColumn;
    grdInvDtlDBTableView1LengthDescription: TcxGridDBColumn;
    grdInvDtlDBTableView1Price: TcxGridDBColumn;
    grdInvDtlDBTableView1VolumeUnit: TcxGridDBColumn;
    grdInvDtlDBTableView1PriceUnit: TcxGridDBColumn;
    grdInvDtlDBTableView1ProductValue: TcxGridDBColumn;
    grdInvDtlDBTableView1Volume_OrderUnit: TcxGridDBColumn;
    grdInvDtlDBTableView1ActualNetM3: TcxGridDBColumn;
    grdInvDtlDBTableView1NominalM3: TcxGridDBColumn;
    grdInvDtlDBTableView1LinealMeter: TcxGridDBColumn;
    grdInvDtlDBTableView1NoOfPieces: TcxGridDBColumn;
    grdInvDtlDBTableView1SequensNo: TcxGridDBColumn;
    grdInvDtlDBTableView1Checked: TcxGridDBColumn;
    grdInvDtlLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleYellow: TcxStyle;
    cxEditStyleController1: TcxEditStyleController;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGridPopupMenu2: TcxGridPopupMenu;
    ds_Att_Ext_ServicesII: TDataSource;
    cxSplitter1: TcxSplitter;
    Panel7: TPanel;
    Panel1: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label46: TLabel;
    Label54: TLabel;
    cbDescription: TcxDBComboBox;
    meSupplier_InvoiceNo: TcxDBMaskEdit;
    deSupplier_InvoiceDate: TcxDBDateEdit;
    labelSequensNo: TcxDBLabel;
    labelSupplierNo: TcxDBLabel;
    labelCurrencyNo: TcxDBLabel;
    lcSupplierNo: TcxDBLookupComboBox;
    meAmountAttested: TcxDBMaskEdit;
    lcCurrencyNo: TcxDBLookupComboBox;
    meQuick_InvoiceNo: TcxDBMaskEdit;
    memoNote: TcxDBMemo;
    teAmount: TcxDBMaskEdit;
    grdAtt: TcxGrid;
    grdAttDBTableView1: TcxGridDBTableView;
    grdAttDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdAttDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdAttDBTableView1SequensNo: TcxGridDBColumn;
    grdAttDBTableView1Description: TcxGridDBColumn;
    grdAttDBTableView1Supplier_InvoiceNo: TcxGridDBColumn;
    grdAttDBTableView1Supplier_InvoiceDate: TcxGridDBColumn;
    grdAttDBTableView1Amount: TcxGridDBColumn;
    grdAttDBTableView1CURRENCY: TcxGridDBColumn;
    grdAttDBTableView1CurrencyNo: TcxGridDBColumn;
    grdAttDBTableView1SupplierNo: TcxGridDBColumn;
    grdAttDBTableView1SUPPLIER: TcxGridDBColumn;
    grdAttDBTableView1Note: TcxGridDBColumn;
    grdAttDBTableView1CreatedDate: TcxGridDBColumn;
    grdAttDBTableView1CreatedUser: TcxGridDBColumn;
    grdAttDBTableView1ModifiedDate: TcxGridDBColumn;
    grdAttDBTableView1ModifiedUser: TcxGridDBColumn;
    grdAttDBTableView1Quick_InvoiceNo: TcxGridDBColumn;
    grdAttLevel1: TcxGridLevel;
    Panel2: TPanel;
    Panel3: TPanel;
    dxBarDockControl2: TdxBarDockControl;
    Panel4: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel5: TPanel;
    eInvNo: TcxTextEdit;
    nfSearchLO: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Button1: TButton;
    grdLevAdrDBTableView1: TcxGridDBTableView;
    grdLevAdrLevel1: TcxGridLevel;
    grdLevAdr: TcxGrid;
    grdLevAdrDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdLevAdrDBTableView1Reference: TcxGridDBColumn;
    grdLevAdrDBTableView1AddressName: TcxGridDBColumn;
    grdLevAdrDBTableView1ADDR: TcxGridDBColumn;
    siLangLinked_frmAttestInvoice: TsiLangLinked;
    procedure TabControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure grdInvoiceRowsProductValueValidate(Sender: TObject;
      var ErrorText: String; var Accept: Boolean);
    // procedure grdInvoiceRowsCheckedToggleClick(Sender: TObject;
    // const Text: String; State: TdxCheckBoxState);
    procedure CheckBox1Click(Sender: TObject);
    procedure lbAllRowsClick(Sender: TObject);
    procedure lbOnAllLORowsClick(Sender: TObject);
    procedure eInvNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbPrevInvoiceClick(Sender: TObject);
    procedure lbNextClick(Sender: TObject);
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbNewFromCommissionClick(Sender: TObject);
    procedure Skfaktura1Click(Sender: TObject);
    procedure SkLO1Click(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acDeleteAttestExecute(Sender: TObject);
    procedure acNewAttestExecute(Sender: TObject);
    procedure acNewFromQuickInvoiceExecute(Sender: TObject);
    procedure acBookingExecute(Sender: TObject);
    procedure acCloseExecute(Sender: TObject);
    procedure acGoToSearchExecute(Sender: TObject);
    procedure acGoToLOSearchExecute(Sender: TObject);
    procedure acCopyAttestExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure acCancelChangesUpdate(Sender: TObject);
    procedure acDeleteAttestUpdate(Sender: TObject);
    procedure grdInvDtlDBTableView1CheckedPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbDescriptionEnter(Sender: TObject);
    procedure cbDescriptionExit(Sender: TObject);
    procedure memoNoteEnter(Sender: TObject);
    procedure meSupplier_InvoiceNoEnter(Sender: TObject);
    procedure deSupplier_InvoiceDateEnter(Sender: TObject);
    procedure meAmountAttestedEnter(Sender: TObject);
    procedure grdAttDBTableView1FocusedRecordChanged
      (Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure acCopyAttestUpdate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    TrpID: String;
    procedure SelectDescription;
    procedure New_cds_Att_Ext_LO;
    Function DataSaved: Boolean;
    procedure GetBookingData(ShippingPlanNo: Integer);
    procedure tlbAttestServicesClick(InternalInvoiceNo: Integer);
    procedure GetInvoiceData(InternalInvoiceNo: Integer);
    function Save_cds_Att_Ext_ServicesII_is_ok: Boolean;
    procedure IsDataUnSaved(Sender: TObject);
    procedure SetInvoiceNo(InternalInvoiceNo: Integer);
    procedure SetDeleteButton;
    procedure GetInvoice(Sender: TObject; const InvoiceNo: Integer);
  public
    { Public declarations }
    NewInvoice: Boolean;
  end;

  // var  frmAttestInvoice: TfrmAttestInvoice;

implementation

uses VidaUser, dmsDataConn, UnitSelectClient, UnitdmModule1,
  UnitDestination, UnitAddress, UnitCurrency, UnitDelTerms,
  UnitPaymentTerms, UnitCRViewReport, UnitCarrier, dmBooking,
  dmcVidaInvoice, UnitBookingForm, dmsVidaContact, uStickyNote,
  fSelectInvoice, dmsVidaSystem, uSelectAttBeskrivning;

{$R *.dfm}

Function TfrmAttestInvoice.DataSaved: Boolean;
Begin
  Result := True;
  With dmVidaInvoice do
  Begin
    if cds_Att_Ext_ServicesII.State in [dsInsert, dsEdit] then
      Result := False;
    if cds_Att_Ext_ServicesII.ChangeCount > 0 then
      Result := False;
  End; // With
End;

procedure TfrmAttestInvoice.TabControl1Change(Sender: TObject);
begin
  dmVidaInvoice.mt_InvDtl_Att.Filter := 'InternalInvoiceNo = ' +
    dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsString +
    ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];
  dmVidaInvoice.mt_InvDtl_Att.Filtered := True;

  // Uppdaterar SequensNo och Checked kolumn i invoice details
  dmVidaInvoice.RefreshCHECKED;

  dmVidaInvoice.cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
    dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsString +
    ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];

  { dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= False ;
    dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo').AsInteger := dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
    dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('ShippingPlanNo').AsInteger    := StrToIntDef(Self.TabControl1.Tabs[TabControl1.TabIndex],-1) ;
    dmVidaInvoice.cds_Att_Ext_ServicesII.Active:= True ;
  }

  GetBookingData(StrToInt(TabControl1.Tabs[TabControl1.TabIndex]));
end;

procedure TfrmAttestInvoice.GetBookingData(ShippingPlanNo: Integer);
begin
  with dmVidaInvoice do
  Begin
    cdsBookingData.Active := False;
    cdsBookingData.ParamByName('ShippingPlanNo').AsInteger := ShippingPlanNo;

    cdsBookingData.Active := True;
    TrpID := cdsBookingDataSUPP_REFERENCE.AsString;
  End;
End;

procedure TfrmAttestInvoice.FormShow(Sender: TObject);
begin
  SetInvoiceNo(dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsInteger);
  dmVidaInvoice.cdsInvoiceShipToAddress_II.Active := True;
  GetBookingData(StrToInt(TabControl1.Tabs[TabControl1.TabIndex]));

  with dmVidaInvoice, dm_Booking, dmsSystem do
  Begin
    cdsVoyage.Active := True;
    cdsCarrier.Active := True;
    cdsShippers.Active := True;

    cdsBooking.Active := False;
    cdsBooking.ParamByName('ShippingPlanNo').AsInteger :=
      StrToInt(TabControl1.Tabs[TabControl1.TabIndex]);
    cdsBooking.Active := True;

    if cdsBooking.Eof then
    Begin
      cdsBooking.Active := False;
      cdsCarrier.Active := False;
      cdsShippers.Active := False;
      cdsVoyage.Active := False;
    End
    else
    Begin
      cdsCarrier.Active := True;
      cdsVoyage.Active := False;
      cdsVoyage.Active := True;
    End;

    Label42.Caption := Trim(cdsInvoiceHead_IIAddressLine1.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAddressLine2.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAddressLine3.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAddressLine4.AsString) + ', ' +
      Trim(cdsInvoiceHead_IICityName.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIStateOrProvince.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIPostalCode.AsString) + ', ' +
      Trim(cdsInvoiceHead_IICountryName.AsString);

    Label43.Caption := Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1.AsString)
      + ', ' + Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2.AsString) + ', '
      + Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_CITY.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_PROVINCE.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_POSTALCODE.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_COUNTRY.AsString);

    if Length(cdsInvoiceHead_IIStickyNote.AsString) > 0 then
    Begin
      frmStickyNote := TfrmStickyNote.Create(Self);
      frmStickyNote.mStickyNote.Lines.Clear;
      frmStickyNote.mStickyNote.Lines.Add(cdsInvoiceHead_IIStickyNote.AsString);
      frmStickyNote.Show;
    End;
    TabControl1Change(Sender);
  End; // With
end;

procedure TfrmAttestInvoice.FormCreate(Sender: TObject);
begin
  if (not Assigned(dm_Booking)) then
    dm_Booking := Tdm_Booking.Create(nil);
  dmsSystem.AssignDMToThisWork('TfrmAttestInvoice', 'dm_Booking');

  with dmVidaInvoice do
  Begin
    if not dmsContact.cdsCurrency.Active then
      dmsContact.cdsCurrency.Active := True;
    if not dmsContact.sp_Customers.Active then
      dmsContact.sp_Customers.Active := True;

    AttestChanged := False;
    TrpID := '';
    cdsInvoiceNumber.Active := True;
    cdsProformaInvNo.Active := True;
    cds_PurchaseInvNo.Active := True;
    cdsFWInvNo.Active := True;

    sq_VolUnit.Open;
    While not sq_VolUnit.Eof do
    Begin
      // grdInvoiceRowsVolumeUnit.Items.Add(sq_VolUnitVolumeUnitName.AsString) ;
      sq_VolUnit.Next;
    End;
    sq_VolUnit.Close;

    sq_PriceUnit.Open;
    While not sq_PriceUnit.Eof do
    Begin
      // grdInvoiceRowsPriceUnit.Items.Add(sq_PriceUnitTemplateUnitName.AsString) ;
      sq_PriceUnit.Next;
    End;
    sq_PriceUnit.Close;

    dmsSystem.LoadGridLayout(ThisUser.UserID,
      Self.Name + '/' + grdInvDtlDBTableView1.Name, grdInvDtlDBTableView1);
    dmsSystem.LoadGridLayout(ThisUser.UserID,
      Self.Name + '/' + grdAttDBTableView1.Name, grdAttDBTableView1);
  End; // with
end;

procedure TfrmAttestInvoice.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  dm_Booking.cdsBooking.DataSource := Nil;

  dmVidaInvoice.cds_InvDtl_Att.UpdateOptions.ReadOnly := False;
  dm_Booking.cdsVoyage.Active := False;
  // dmsSystem.cdsCarrier.Active                     := True ;
  dm_Booking.cdsShippers.Active := True;

  dmVidaInvoice.cdsInvoiceShipToAddress_II.Active := False;
  dmVidaInvoice.cdsInvoiceNumber.Active := False;
  dmVidaInvoice.cdsProformaInvNo.Active := False;
  dmVidaInvoice.cds_PurchaseInvNo.Active := False;
  dmVidaInvoice.cdsFWInvNo.Active := False;
  dmVidaInvoice.mt_AttestRow.Filter := '';
  dmVidaInvoice.mt_AttestRow.Filtered := False;
  dmVidaInvoice.cdsInvoiceHead_II.Active := False;

  // dmsContact.sp_Customers.Active                := False ;
  // dmsContact.cdsCurrency.Active                 := False ;
  CanClose := True;
end;

procedure TfrmAttestInvoice.grdInvoiceRowsProductValueValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  if dmVidaInvoice.cds_InvDtl_AttTypeOfRow.AsInteger = 2 then
    Accept := True
  else
  Begin
    Accept := False;
    ErrorText := 'Cannot change this cell! (press Esc to undo)';
  End;
end;

// procedure TfrmAttestInvoice.grdInvoiceRowsCheckedToggleClick(
// Sender: TObject; const Text: String; State: TdxCheckBoxState);
// begin
(*
  With dmVidaInvoice do
  Begin
  if Save_cds_Att_Ext_ServicesII_is_ok then
  Begin
  if mt_InvDtl_AttTypeOfRow.AsInteger = 1 then
  Begin
  if (State = cbsUnchecked) then
  Begin
  if mt_AttestRow.FindKey([mt_InvDtl_AttInternalInvoiceNo.AsInteger,
  mt_InvDtl_AttShippingPlanNo.AsInteger,
  dmVidaInvoice.mt_InvDtl_AttSequensNo.AsInteger,
  mt_InvDtl_AttInvoiceDetailNo.AsInteger ]) then
  Begin
  mt_AttestRow.Delete ;
  mt_InvDtl_Att.Edit ;
  mt_InvDtl_AttSequensNo.AsInteger:= 0 ;
  mt_InvDtl_AttChecked.AsInteger:= 0 ;
  mt_InvDtl_Att.Post ;
  AttestChanged:= True ;

  End
  else
  ShowMessage('kan inte hitta mt_AttestRow record!') ;
  End
  else
  Begin
  mt_AttestRow.Insert ;
  mt_AttestRowInternalInvoiceNo.AsInteger:= mt_InvDtl_AttInternalInvoiceNo.AsInteger ;
  mt_AttestRowShippingPlanNo.AsInteger:= mt_InvDtl_AttShippingPlanNo.AsInteger ;
  mt_AttestRowSequensNo.AsInteger:= dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
  mt_AttestRowInvoiceDetailNo.AsInteger:= mt_InvDtl_AttInvoiceDetailNo.AsInteger ;
  mt_AttestRow.Post ;

  mt_InvDtl_Att.Edit ;
  mt_InvDtl_AttSequensNo.AsInteger:= dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
  mt_InvDtl_AttChecked.AsInteger:= 1 ;
  mt_InvDtl_Att.Post ;
  AttestChanged:= True ;

  End ;
  End
  else
  Begin
  if mt_InvDtl_Att.State in [dsBrowse] then
  mt_InvDtl_Att.Edit ;
  mt_InvDtl_AttSequensNo.AsInteger:= 0 ;//dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
  mt_InvDtl_AttChecked.AsInteger:= 0 ;
  mt_InvDtl_Att.Post ;

  ShowMessage('Bara möjligt att attestera mot produktrader.') ;
  End ;
  End
  else
  Begin
  if mt_InvDtl_Att.State in [dsBrowse] then
  mt_InvDtl_Att.Edit ;
  mt_InvDtl_AttChecked.AsInteger:= 0 ;
  mt_InvDtl_Att.Post ;

  End ;
  End ; //With
*)
// end;

function TfrmAttestInvoice.Save_cds_Att_Ext_ServicesII_is_ok: Boolean;
Begin
  Result := False;
  With dmVidaInvoice do
  Begin
    Try
      // if cds_Att_Ext_ServicesII.State in [dsInsert, dsEdit] then
      // cds_Att_Ext_ServicesII.Post ;
      if cds_Att_Ext_ServicesII.RecordCount > 0 then
        Result := True
      else
        Result := False;
    Except
      Result := False;
    End;
  End;
End;

procedure TfrmAttestInvoice.CheckBox1Click(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if CheckBox1.Checked then
      mt_AttestRow.Filtered := True
    else
      mt_AttestRow.Filtered := False;
  End;
end;

procedure TfrmAttestInvoice.lbAllRowsClick(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  With dmVidaInvoice do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    Try
      mt_InvDtl_Att.DisableControls;

      if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
        AllRows
      else
        ShowMessage('Attest huvud fattas');

    Finally
      mt_InvDtl_Att.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End; // With
end;

procedure TfrmAttestInvoice.lbOnAllLORowsClick(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  With dmVidaInvoice do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }

    Try
      mt_InvDtl_Att.DisableControls;

      if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
        AllLORows
      else
        ShowMessage('Attest huvud fattas');

    Finally
      mt_InvDtl_Att.EnableControls;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;

  End; // With
end;

procedure TfrmAttestInvoice.eInvNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  IntInvNo, InvoiceType: Integer;
begin
  if Key <> VK_RETURN then
    Exit;
  IsDataUnSaved(Sender);

  With dmVidaInvoice do
  Begin
    IntInvNo := GetInternalInvoiceNoByINVOICENO(StrToIntDef(eInvNo.Text, 0),
      InvoiceType);
    if InvoiceType > -1 then
      cbInvoiceType.ItemIndex := InvoiceType;
    Case cbInvoiceType.ItemIndex of
      0:
        Begin
          if cdsInvoiceNumber.FindKey([StrToIntDef(eInvNo.Text, 0)]) then
          Begin
            tlbAttestServicesClick(cdsInvoiceNumberInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + eInvNo.Text);
        End;
      1, 2:
        Begin
          if cdsProformaInvNo.FindKey([StrToIntDef(eInvNo.Text, 0)]) then
          Begin
            tlbAttestServicesClick(cdsProformaInvNoInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + eInvNo.Text);
        End;
      3:
        Begin
          if cds_PurchaseInvNo.FindKey([StrToIntDef(eInvNo.Text, 0)]) then
          Begin
            tlbAttestServicesClick
              (cds_PurchaseInvNoInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + eInvNo.Text);
        End;

      5:
        Begin
          if cdsFWInvNo.FindKey([StrToIntDef(eInvNo.Text, 0)]) then
          Begin
            tlbAttestServicesClick(cdsFWInvNoInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + eInvNo.Text);
        End;
    else
      ShowMessage('No luck');
    End; // case
    eInvNo.SelectAll;
  End; // with

  // SetDeleteButton ;
end;

procedure TfrmAttestInvoice.tlbAttestServicesClick(InternalInvoiceNo: Integer);
Var
  x: Integer;
begin
  with dmVidaInvoice do
  Begin
    cds_InvDtl_Att.Close;
    cdsInvoiceLO.Filtered := False;
    cdsInvoiceLO.Active := False;
    cds_InvDtl_Att.Active := False;
    cdsInvoiceShipTo.Active := False;
    mt_InvDtl_Att.Active := False;
    mt_AttestRow.Active := False;

    mt_AttestRow.Active := True;
    mt_InvDtl_Att.Active := True;
    cdsInvoiceShipTo.Active := True;
    Self.TabControl1.Tabs.Clear;

    cdsInvoiceHead_II.Active := False;
    OpenInvoiceHeaderForAttest(InternalInvoiceNo, cbInvoiceType.ItemIndex);
    cdsInvoiceHead_II.Active := True;

    // if cdsInvoiceHead_II.FindKey([InternalInvoiceNo]) then
    if cdsInvoiceHead_II.RecordCount > 0 then
    Begin

      cdsInvoiceLO.Close;
      cdsInvoiceLO.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;

      cdsInvoiceLO.Active := True;

      cdsInvoiceLO.First;
      While not cdsInvoiceLO.Eof do
      Begin
        Self.TabControl1.Tabs.Add(cdsInvoiceLOShippingPlanNo.AsString);
        cdsInvoiceLO.Next;
      End;

      cdsInvoiceLO.Filter := 'InternalInvoiceNo = ' +
        cdsInvoiceHead_IIInternalInvoiceNo.AsString + ' AND ShippingPlanNo = ' +
        Self.TabControl1.Tabs[0];
      cdsInvoiceLO.Filtered := True;

      dmVidaInvoice.cds_Att_Ext_ServicesII.Active := False;
      dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('InternalInvoiceNo')
        .AsInteger := InternalInvoiceNo;
      // dmVidaInvoice.cds_Att_Ext_ServicesII.ParamByName('ShippingPlanNo').AsInteger    := StrToIntDef(Self.TabControl1.Tabs[0],-1) ;
      dmVidaInvoice.cds_Att_Ext_ServicesII.Active := True;

      dmVidaInvoice.cds_InvDtl_Att.Close;
      dmVidaInvoice.cds_InvDtl_Att.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
      dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger;
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

      dmVidaInvoice.mt_InvDtl_Att.Filter := 'InternalInvoiceNo = ' +
        dmVidaInvoice.cdsInvoiceHead_IIInternalInvoiceNo.AsString +
        ' AND ShippingPlanNo = ' + TabControl1.Tabs[TabControl1.TabIndex];
      dmVidaInvoice.mt_InvDtl_Att.Filtered := True;

      sq_GetAttestRow.ParamByName('InternalInvoiceNo').AsInteger :=
        InternalInvoiceNo;
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

      GetInvoiceData(InternalInvoiceNo);
    End
    else
      ShowMessage('Internalfakturanr ' + IntToStr(InternalInvoiceNo) +
        ' finns inte.');
  End; // with
end;

procedure TfrmAttestInvoice.GetInvoiceData(InternalInvoiceNo: Integer);
begin
  SetInvoiceNo(InternalInvoiceNo);

  dmVidaInvoice.cdsInvoiceShipToAddress_II.Active := False;
  dmVidaInvoice.cdsInvoiceShipToAddress_II.Active := True;

  GetBookingData(StrToInt(TabControl1.Tabs[TabControl1.TabIndex]));

  with dmVidaInvoice, dm_Booking, dmsSystem do
  Begin
    cdsVoyage.Active := True;

    cdsCarrier.Active := True;
    cdsShippers.Active := True;

    cdsBooking.Active := False;
    cdsBooking.ParamByName('ShippingPlanNo').AsInteger :=
      StrToInt(TabControl1.Tabs[TabControl1.TabIndex]);
    cdsBooking.Active := True;

    if cdsBooking.Eof then
    Begin
      cdsBooking.Active := False;
      cdsCarrier.Active := False;
      cdsShippers.Active := False;
      cdsVoyage.Active := False;
    End
    else
    Begin
      cdsCarrier.Active := True;
      cdsVoyage.Active := False;
      cdsVoyage.Active := True;
    End;

    Label42.Caption := Trim(cdsInvoiceHead_IIAddressLine1.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAddressLine2.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAddressLine3.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAddressLine4.AsString) + ', ' +
      Trim(cdsInvoiceHead_IICityName.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIStateOrProvince.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIPostalCode.AsString) + ', ' +
      Trim(cdsInvoiceHead_IICountryName.AsString);

    Label43.Caption := Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE1.AsString)
      + ', ' + Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE2.AsString) + ', '
      + Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE3.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_ADDRESSLINE4.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_CITY.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_PROVINCE.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_POSTALCODE.AsString) + ', ' +
      Trim(cdsInvoiceHead_IIAGENT_SHIPTO_COUNTRY.AsString);

    if Assigned(frmStickyNote) then
      FreeAndNil(frmStickyNote);
    if Length(cdsInvoiceHead_IIStickyNote.AsString) > 0 then
    Begin
      frmStickyNote := TfrmStickyNote.Create(Self);
      frmStickyNote.mStickyNote.Lines.Clear;
      frmStickyNote.mStickyNote.Lines.Add(cdsInvoiceHead_IIStickyNote.AsString);
      frmStickyNote.Show;
    End;

  End; // With
end;

procedure TfrmAttestInvoice.lbPrevInvoiceClick(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  GetInvoice(Sender, StrToIntDef(eFakturaNr.Text, 0) - 1);
  (* With dmVidaInvoice do
    Begin

    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }
    Try
    mt_InvDtl_Att.DisableControls ;
    IsDataUnSaved (Sender) ;
    cdsInvoiceHead_II.Prior ;
    tlbAttestServicesClick(cdsInvoiceHead_IIInternalInvoiceNo.AsInteger) ;
    TabControl1Change(Sender) ;
    SetDeleteButton ;
    Finally
    mt_InvDtl_Att.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End ;
    End ; //with *)
end;

procedure TfrmAttestInvoice.lbNextClick(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  GetInvoice(Sender, StrToIntDef(eFakturaNr.Text, 0) + 1);
  (* With dmVidaInvoice do
    Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;    { Show hourglass cursor }

    Try
    mt_InvDtl_Att.DisableControls ;

    IsDataUnSaved (Sender) ;
    cdsInvoiceHead_II.Next ;
    tlbAttestServicesClick(cdsInvoiceHead_IIInternalInvoiceNo.AsInteger) ;
    TabControl1Change(Sender) ;
    SetDeleteButton ;
    Finally
    mt_InvDtl_Att.EnableControls ;
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    End ;
    End ; //with *)
end;

procedure TfrmAttestInvoice.IsDataUnSaved(Sender: TObject);
Var
  Result: Boolean;
Begin
  With dmVidaInvoice do
  Begin
    Result := False;
    if cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert] then
      cds_Att_Ext_ServicesII.Post;
    if cds_Att_Ext_ServicesII.ChangeCount > 0 then
      Result := True;
    if AttestChanged = True then
      Result := True;
    if Result = True then
      if MessageDlg('Vill du spara?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
      then
        acSaveExecute(Sender);
    AttestChanged := False;
  End;
End;

procedure TfrmAttestInvoice.nfSearchLOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  InternalInvoiceNo, InvoiceType: Integer;
begin
  if Key <> VK_RETURN then
    Exit;
  IsDataUnSaved(Sender);
  With dmVidaInvoice do
  Begin
    InternalInvoiceNo := SearchLONo(StrToIntDef(nfSearchLO.Text, 0),
      InvoiceType);
    if InternalInvoiceNo <> -1 then
    Begin
      if InvoiceType > -1 then
        cbInvoiceType.ItemIndex := InvoiceType;
      tlbAttestServicesClick(InternalInvoiceNo);
      TabControl1Change(Sender);
    End
    else
      ShowMessage('Hittar ingen fakturanr för LOnr ' + nfSearchLO.Text);
  End; // with
  nfSearchLO.SelectAll;
  // SetDeleteButton ;
end;

procedure TfrmAttestInvoice.SetInvoiceNo(InternalInvoiceNo: Integer);
Begin
  Case cbInvoiceType.ItemIndex of
    0:
      Begin
        if dmVidaInvoice.cdsInvoiceNumber.Locate('InternalInvoiceNo',
          InternalInvoiceNo, []) then
          eFakturaNr.Text := dmVidaInvoice.cdsInvoiceNumberInvoiceNo.AsString
        else
          ShowMessage('No luck');
      End;
    1, 2:
      Begin
        if dmVidaInvoice.cdsProformaInvNo.Locate('InternalInvoiceNo',
          InternalInvoiceNo, []) then
          eFakturaNr.Text :=
            dmVidaInvoice.cdsProformaInvNoProformaInvoiceNo.AsString
        else
          ShowMessage('No luck');
      End;
    3:
      Begin
        if dmVidaInvoice.cds_PurchaseInvNo.Locate('InternalInvoiceNo',
          InternalInvoiceNo, []) then
          eFakturaNr.Text :=
            dmVidaInvoice.cds_PurchaseInvNoPO_InvoiceNo.AsString
        else
          eFakturaNr.Text := '';
      End;
    4:
      Begin
        eFakturaNr.Text := '';
      End;
    5:
      Begin
        if dmVidaInvoice.cdsFWInvNo.Locate('InternalInvoiceNo',
          InternalInvoiceNo, []) then
          eFakturaNr.Text := dmVidaInvoice.cdsFWInvNoInvoiceNo.AsString
        else
          eFakturaNr.Text := '';
      End;
  End; // Case

End;

procedure TfrmAttestInvoice.SetDeleteButton;
Begin
  if dmVidaInvoice.cds_Att_Ext_ServicesII.RecordCount > 0 then
  Begin
    lbDelete.Enabled := True;
  End
  else
  Begin
    lbDelete.Enabled := False;
  End;
End;

procedure TfrmAttestInvoice.lbNewFromCommissionClick(Sender: TObject);
begin
  IsDataUnSaved(Sender);
  With dmVidaInvoice do
  Begin
    Try
      mt_InvDtl_Att.DisableControls;
      if cdsInvoiceHead_IICommission.AsFloat > 0 then
      Begin
        cds_Att_Ext_ServicesII.Insert;
        cds_Att_Ext_ServicesIIAmountAttested.AsFloat :=
          RoundTo(cdsInvoiceHead_IICommission.AsFloat, -2);
        cds_Att_Ext_ServicesIISupplier_InvoiceNo.AsString := '';
        cds_Att_Ext_ServicesIICurrencyNo.AsInteger :=
          cdsInvoiceHead_IICurrencyNo.AsInteger;
        cds_Att_Ext_ServicesIISupplierNo.AsInteger :=
          cdsInvoiceHead_IIAgentNo.AsInteger;
        cds_Att_Ext_ServicesIISupplier_InvoiceDate.AsDateTime := Date;
        cds_Att_Ext_ServicesIIDescription.AsString := 'Komm';
        cds_Att_Ext_ServicesIIQuick_InvoiceNo.AsInteger :=
          cdsInvoiceHead_IIInternalInvoiceNo.AsInteger;
        cds_Att_Ext_ServicesII.Post;
        lbAllRowsClick(Sender);
        meSupplier_InvoiceNo.SetFocus;

        dmVidaInvoice.RefreshCHECKED;
        // lbCancel.Enabled:= True ;
        // lbSave.Enabled:= True ;
      End
      else
        ShowMessage('Ingen provision finns');

    Finally
      mt_InvDtl_Att.EnableControls;
    End;
  End; // With
end;

procedure TfrmAttestInvoice.GetInvoice(Sender: TObject;
  const InvoiceNo: Integer);
begin
  IsDataUnSaved(Sender);

  With dmVidaInvoice do
  Begin
    Case cbInvoiceType.ItemIndex of
      0:
        Begin
          if cdsInvoiceNumber.FindKey([InvoiceNo]) then
          Begin
            tlbAttestServicesClick(cdsInvoiceNumberInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + IntToStr(InvoiceNo));
        End;
      1, 2:
        Begin
          if cdsProformaInvNo.FindKey([InvoiceNo]) then
          Begin
            tlbAttestServicesClick(cdsProformaInvNoInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + IntToStr(InvoiceNo));
        End;
      3:
        Begin
          if cds_PurchaseInvNo.FindKey([InvoiceNo]) then
          Begin
            tlbAttestServicesClick
              (cds_PurchaseInvNoInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + IntToStr(InvoiceNo));
        End;

      5:
        Begin
          if cdsFWInvNo.FindKey([InvoiceNo]) then
          Begin
            tlbAttestServicesClick(cdsFWInvNoInternalInvoiceNo.AsInteger);
            TabControl1Change(Sender);
          End
          else
            ShowMessage('Hittar inte fakturanr ' + IntToStr(InvoiceNo));
        End;
    else
      ShowMessage('Hittar inte fakturanr ' + IntToStr(InvoiceNo));
    End; // case
  End; // with

  // SetDeleteButton ;
end;

procedure TfrmAttestInvoice.Skfaktura1Click(Sender: TObject);
begin
  eInvNo.SelectAll;
  eInvNo.SetFocus;
end;

procedure TfrmAttestInvoice.SkLO1Click(Sender: TObject);
begin
  nfSearchLO.SelectAll;
  nfSearchLO.SetFocus;
end;

procedure TfrmAttestInvoice.acSaveExecute(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  With dmVidaInvoice do
  Begin
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crSQLWait; { Show hourglass cursor }
    Try

      mt_AttestRow.Filtered := False;

      if cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert] then
        cds_Att_Ext_ServicesII.Post;
      if cds_Att_Ext_ServicesII.ChangeCount > 0 then
      Begin
        cds_Att_Ext_ServicesII.ApplyUpdates(0);
        cds_Att_Ext_ServicesII.CommitUpdates;
      End;

      mt_AttestRow.Filtered := False;

      { Try
        sq_Del_AttestRow.ParamByName('InternalInvoiceNo').AsInteger:= cdsInvoiceHead_IIInternalInvoiceNo.AsInteger ;
        sq_Del_AttestRow.ExecSQL ;
        except
        On E: Exception do
        Begin
        dmsSystem.FDoLog(E.Message) ;
        //      ShowMessage(E.Message);
        Raise ;
        End ;
        end; }

      {
        Try
        adDeleteAttExtLO.ParamByName('SequensNo').AsInteger:= cds_Att_Ext_ServicesIISequensNo.AsInteger ;
        adDeleteAttExtLO.ExecSQL ;
        except
        On E: Exception do
        Begin
        dmsSystem.FDoLog(E.Message) ;
        //      ShowMessage(E.Message);
        Raise ;
        End ;
        end;
      }

      (*
        mt_AttestRow.First ;
        While not mt_AttestRow.Eof do
        Begin
        Try
        FD_InsAttLO.ParamByName('InternalInvoiceNo').AsInteger         := dmVidaInvoice.mt_AttestRowInternalInvoiceNo.AsInteger ;
        if cds_Att_Ext_ServicesIIDescription.AsString = 'Komm' then
        FD_InsAttLO.ParamByName('ShippingPlanNo').AsInteger            := 0
        else
        FD_InsAttLO.ParamByName('ShippingPlanNo').AsInteger            := dmVidaInvoice.mt_AttestRowShippingPlanNo.AsInteger ;
        FD_InsAttLO.ParamByName('SequensNo').AsInteger                 := dmVidaInvoice.mt_AttestRowSequensNo.AsInteger ;
        FD_InsAttLO.ParamByName('AmountAttested').AsFloat              := 0 ;
        FD_InsAttLO.ExecSQL ;
        except
        On E: Exception do
        Begin
        dmsSystem.FDoLog(E.Message) ;
        //      ShowMessage(E.Message);
        Raise ;
        End ;
        end;
        mt_AttestRow.Next ;
        End ;
      *)

      mt_AttestRow.First;
      While not mt_AttestRow.Eof do
      Begin
        Try
          sq_Ins_AttestRow.ParamByName('InternalInvoiceNo').AsInteger :=
            dmVidaInvoice.mt_AttestRowInternalInvoiceNo.AsInteger;
          sq_Ins_AttestRow.ParamByName('ShippingPlanNo').AsInteger :=
            dmVidaInvoice.mt_AttestRowShippingPlanNo.AsInteger;
          sq_Ins_AttestRow.ParamByName('SequensNo').AsInteger :=
            dmVidaInvoice.mt_AttestRowSequensNo.AsInteger;
          sq_Ins_AttestRow.ParamByName('InvoiceDetailNo').AsInteger :=
            dmVidaInvoice.mt_AttestRowInvoiceDetailNo.AsInteger;
          sq_Ins_AttestRow.ExecSQL;
        except
          On E: Exception do
          Begin
            dmsSystem.FDoLog(E.Message);
            // ShowMessage(E.Message);
            Raise;
          End;
        end;
        mt_AttestRow.Next;
      End;

      // lbNew.Enabled     := True ;
      // lbSave.Enabled    := True ;
      // lbDelete.Enabled  := True ;
    Finally
      mt_AttestRow.Filtered := True;
      AttestChanged := False;
      Screen.Cursor := Save_Cursor; { Always restore to normal }
    End;
  End;

end;

procedure TfrmAttestInvoice.New_cds_Att_Ext_LO;
begin
  (*
    With dmVidaInvoice do
    Begin
    mt_AttestRow.First ;
    While not mt_AttestRow.Eof do
    Begin

    if not cds_Att_Ext_LO.Locate('ShippingPlanNo', mt_AttestRowShippingPlanNo.AsInteger, []) then
    Begin
    Try
    cds_Att_Ext_LO.Insert ;
    cds_Att_Ext_LOShippingPlanNo.AsInteger  := mt_AttestRowShippingPlanNo.AsInteger ;
    cds_Att_Ext_LO.Post ;
    except
    On E: Exception do
    Begin
    dmsSystem.FDoLog(E.Message) ;
    //      ShowMessage(E.Message);
    Raise ;
    End ;
    end;
    End ;
    mt_AttestRow.Next ;
    End ;

    End ; //With
  *)
end;

procedure TfrmAttestInvoice.acCancelChangesExecute(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert] then
      cds_Att_Ext_ServicesII.Cancel;
    if cds_Att_Ext_ServicesII.ChangeCount > 0 then
    Begin
      cds_Att_Ext_ServicesII.CancelUpdates;
    End;

    // lbNew.Enabled   := True ;
    // lbSave.Enabled  := True ;
    // SetDeleteButton ;

    Try
      mt_InvDtl_Att.DisableControls;
      tlbAttestServicesClick(cdsInvoiceHead_IIInternalInvoiceNo.AsInteger);
      TabControl1Change(Sender);
    Finally
      mt_InvDtl_Att.EnableControls;
    End;

    AttestChanged := False;

    // SetDeleteButton ;
  End;
end;

procedure TfrmAttestInvoice.acDeleteAttestExecute(Sender: TObject);
begin
  if MessageDlg('Vill du ta bort attesten?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  Begin

    With dmVidaInvoice do
    Begin
      cds_AttestRow.ParamByName('SequensNo').AsInteger :=
        cds_Att_Ext_ServicesIISequensNo.AsInteger;
      Try
        cds_AttestRow.Active := True;
        cds_AttestRow.First;
        While not cds_AttestRow.Eof do
        Begin
          cds_AttestRow.Delete;
        End;

        if cds_AttestRow.ChangeCount > 0 then
        Begin
          cds_AttestRow.ApplyUpdates(0);
          cds_AttestRow.CommitUpdates;
        End;
      Finally
        cds_AttestRow.Active := False;
      End;

      cds_Att_Ext_LO.ParamByName('SequensNo').AsInteger :=
        cds_Att_Ext_ServicesIISequensNo.AsInteger;
      Try
        cds_Att_Ext_LO.Active := True;
        cds_Att_Ext_LO.First;
        While not cds_Att_Ext_LO.Eof do
        Begin
          cds_Att_Ext_LO.Delete;
        End;

        if cds_Att_Ext_LO.ChangeCount > 0 then
        Begin
          cds_Att_Ext_LO.ApplyUpdates(0);
          cds_Att_Ext_LO.CommitUpdates;
        End;
      Finally
        cds_Att_Ext_LO.Active := False;
      End;

      if cds_Att_Ext_ServicesII.State in [dsEdit, dsInsert] then
        cds_Att_Ext_ServicesII.Post;
      cds_Att_Ext_ServicesII.Delete;

      if cds_Att_Ext_ServicesII.ChangeCount > 0 then
      Begin
        cds_Att_Ext_ServicesII.ApplyUpdates(0);
        cds_Att_Ext_ServicesII.CommitUpdates;
      End;
    End;

  End; // if MessageDlg...
end;

procedure TfrmAttestInvoice.acNewAttestExecute(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    IsDataUnSaved(Sender);
    cds_Att_Ext_ServicesII.Insert;
    SelectDescription;
    cds_Att_Ext_ServicesII.Post;

    // lbCancel.Enabled  := True ;
    // lbSave.Enabled    := True ;
    dmVidaInvoice.RefreshCHECKED;
    meSupplier_InvoiceNo.SetFocus;
  End; // With
end;

procedure TfrmAttestInvoice.SelectDescription;
var
  fSelectAttBeskrivning: TfSelectAttBeskrivning;
Begin
  fSelectAttBeskrivning := TfSelectAttBeskrivning.Create(nil);
  Try
    fSelectAttBeskrivning.ShowModal;
  Finally
    FreeAndNil(fSelectAttBeskrivning);
  End;
End;

procedure TfrmAttestInvoice.acNewFromQuickInvoiceExecute(Sender: TObject);
Var
  SequensNo: Integer;
  frmSelectInvoice: TfrmSelectInvoice;
begin
  IsDataUnSaved(Sender);
  SequensNo := 0;
  // Välj Quick credit
  // Insert a new attestgrupp lägg in fakturanr, amount, currency, supplier
  With dmVidaInvoice do
  Begin

    frmSelectInvoice := TfrmSelectInvoice.Create(Nil);
    Try
      mt_InvDtl_Att.DisableControls;
      if frmSelectInvoice.ShowModal = mrOk then
      Begin
        SequensNo := InvoiceAttested
          (frmSelectInvoice.cdsInvoiceListINT_INVNO.AsInteger);
        if SequensNo > 0 then
          ShowMessage('Fakturan är redan attesterad på attest nr ' +
            IntToStr(SequensNo))
        else
        Begin
          cds_Att_Ext_ServicesII.Insert;
          cds_Att_Ext_ServicesIIAmountAttested.AsFloat :=
            frmSelectInvoice.
            cdsInvoiceListInv_Value_After_Deduct_DIS_COMM.AsFloat;
          cds_Att_Ext_ServicesIISupplier_InvoiceNo.AsString :=
            frmSelectInvoice.cdsInvoiceListINVOICE_NO.AsString;
          cds_Att_Ext_ServicesIICurrencyNo.AsInteger :=
            frmSelectInvoice.cdsInvoiceListCurrencyNo.AsInteger;
          cds_Att_Ext_ServicesIISupplierNo.AsInteger :=
            frmSelectInvoice.cdsInvoiceListCustomerNo.AsInteger;
          cds_Att_Ext_ServicesIISupplier_InvoiceDate.AsDateTime :=
            frmSelectInvoice.cdsInvoiceListINV_DATE.AsDateTime;
          cds_Att_Ext_ServicesIIDescription.AsString := 'Kreditfaktura ' +
            frmSelectInvoice.cdsInvoiceListINVOICE_NO.AsString;
          cds_Att_Ext_ServicesIIQuick_InvoiceNo.AsInteger :=
            frmSelectInvoice.cdsInvoiceListINT_INVNO.AsInteger;
          if cds_Att_Ext_ServicesIIAmountAttested.AsFloat < 0 then
            cds_Att_Ext_ServicesIIAmountAttested.AsFloat :=
              cds_Att_Ext_ServicesIIAmountAttested.AsFloat * (-1);
          cds_Att_Ext_ServicesII.Post;

          dmVidaInvoice.RefreshCHECKED;
          // lbCancel.Enabled:= True ;
          // lbSave.Enabled:= True ;
        End;

      End;
    Finally
      FreeAndNil(frmSelectInvoice);
      mt_InvDtl_Att.EnableControls;
    End;
  End; // With
end;

procedure TfrmAttestInvoice.acBookingExecute(Sender: TObject);
var
  FormBookingForm: TFormBookingForm;
begin
  FormBookingForm := TFormBookingForm.Create(Nil);
  try
    FormBookingForm.CreateCo(StrToInt(TabControl1.Tabs[TabControl1.TabIndex]));
    FormBookingForm.ReadMeOnly := True;
    FormBookingForm.ShowModal;
  finally
    FreeAndNil(FormBookingForm);
  end;
end;

procedure TfrmAttestInvoice.acCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAttestInvoice.acGoToSearchExecute(Sender: TObject);
begin
  eInvNo.SelectAll;
  eInvNo.SetFocus;
end;

procedure TfrmAttestInvoice.acGoToLOSearchExecute(Sender: TObject);
begin
  nfSearchLO.SelectAll;
  nfSearchLO.SetFocus;
end;

procedure TfrmAttestInvoice.acCopyAttestExecute(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    IsDataUnSaved(Sender);
    Try
      mt_InvDtl_Att.DisableControls;
      Supplier_InvoiceNo := cds_Att_Ext_ServicesIISupplier_InvoiceNo.AsString;
      CurrencyNo := cds_Att_Ext_ServicesIICurrencyNo.AsInteger;
      SupplierNo := cds_Att_Ext_ServicesIISupplierNo.AsInteger;
      Supplier_InvoiceDate := cds_Att_Ext_ServicesIISupplier_InvoiceDate.
        AsDateTime;
      Note := cds_Att_Ext_ServicesIINote.AsString;
      Description := cds_Att_Ext_ServicesIIDescription.AsString;

      cds_Att_Ext_ServicesII.Insert;

      cds_Att_Ext_ServicesIISupplier_InvoiceNo.AsString := Supplier_InvoiceNo;
      cds_Att_Ext_ServicesIICurrencyNo.AsInteger := CurrencyNo;
      cds_Att_Ext_ServicesIISupplierNo.AsInteger := SupplierNo;
      cds_Att_Ext_ServicesIISupplier_InvoiceDate.AsDateTime :=
        Supplier_InvoiceDate;
      cds_Att_Ext_ServicesIINote.AsString := Note;
      cds_Att_Ext_ServicesIIDescription.AsString := Description;

      cds_Att_Ext_ServicesII.Post;
      // lbCancel.Enabled:= True ;
      // lbSave.Enabled:= True ;
    Finally
      mt_InvDtl_Att.EnableControls;
    End;
  End; // With
end;

procedure TfrmAttestInvoice.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := (not DataSaved) or (dmVidaInvoice.AttestChanged);
end;

procedure TfrmAttestInvoice.acCancelChangesUpdate(Sender: TObject);
begin
  acCancelChanges.Enabled := not DataSaved;
end;

procedure TfrmAttestInvoice.acDeleteAttestUpdate(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    acDeleteAttest.Enabled := (cds_Att_Ext_ServicesII.Active) and
      (cds_Att_Ext_ServicesII.RecordCount > 0) and (cbDescription.Enabled);
  End; // With
end;

procedure TfrmAttestInvoice.grdInvDtlDBTableView1CheckedPropertiesChange
  (Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if Save_cds_Att_Ext_ServicesII_is_ok then
    Begin
      if mt_InvDtl_AttTypeOfRow.AsInteger = 1 then
      Begin
        if mt_InvDtl_AttChecked.AsInteger = 0 then
        Begin
          if mt_AttestRow.FindKey([mt_InvDtl_AttInternalInvoiceNo.AsInteger,
            mt_InvDtl_AttShippingPlanNo.AsInteger,
            dmVidaInvoice.mt_InvDtl_AttSequensNo.AsInteger,
            mt_InvDtl_AttInvoiceDetailNo.AsInteger]) then
          Begin
            DeleteAttestRowKoppling(mt_InvDtl_AttInternalInvoiceNo.AsInteger,
              mt_InvDtl_AttShippingPlanNo.AsInteger,
              dmVidaInvoice.mt_InvDtl_AttSequensNo.AsInteger,
              mt_InvDtl_AttInvoiceDetailNo.AsInteger);

            mt_AttestRow.Delete;
            mt_InvDtl_Att.Edit;
            mt_InvDtl_AttSequensNo.AsInteger := 0;
            // mt_InvDtl_AttChecked.AsInteger   := 0 ;
            mt_InvDtl_Att.Post;
            AttestChanged := True;

          End
          else
            ShowMessage('kan inte hitta mt_AttestRow record!');
        End
        else
        Begin
          mt_AttestRow.Insert;
          mt_AttestRowInternalInvoiceNo.AsInteger :=
            mt_InvDtl_AttInternalInvoiceNo.AsInteger;
          mt_AttestRowShippingPlanNo.AsInteger :=
            mt_InvDtl_AttShippingPlanNo.AsInteger;
          mt_AttestRowSequensNo.AsInteger :=
            dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger;
          mt_AttestRowInvoiceDetailNo.AsInteger :=
            mt_InvDtl_AttInvoiceDetailNo.AsInteger;
          mt_AttestRow.Post;

          mt_InvDtl_Att.Edit;
          mt_InvDtl_AttSequensNo.AsInteger :=
            dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger;
          mt_InvDtl_AttChecked.AsInteger := 1;
          mt_InvDtl_Att.Post;
          AttestChanged := True;

          // Har inte gjort den här proceduren nedan ännu
          // InsertAttestRowKoppling (mt_InvDtl_AttInternalInvoiceNo.AsInteger,
          // mt_InvDtl_AttShippingPlanNo.AsInteger, dmVidaInvoice.mt_InvDtl_AttSequensNo.AsInteger,
          // mt_InvDtl_AttInvoiceDetailNo.AsInteger) ;
        End;
      End
      else
      Begin
        if mt_InvDtl_Att.State in [dsBrowse] then
          mt_InvDtl_Att.Edit;
        mt_InvDtl_AttSequensNo.AsInteger := 0;
        // dmVidaInvoice.cds_Att_Ext_ServicesIISequensNo.AsInteger ;
        mt_InvDtl_AttChecked.AsInteger := 0;
        mt_InvDtl_Att.Post;

        ShowMessage('Bara möjligt att attestera mot produktrader.');
      End;
    End // if Save_cds_Att_Ext_ServicesII_is_ok then
    else
    Begin
      if mt_InvDtl_Att.State in [dsBrowse] then
        mt_InvDtl_Att.Edit;
      mt_InvDtl_AttChecked.AsInteger := 0;
      mt_InvDtl_Att.Post;

    End;
  End; // With
end;

procedure TfrmAttestInvoice.FormDestroy(Sender: TObject);
begin
  if dmsSystem.DeleteAssigned('TfrmAttestInvoice', 'dm_Booking') = True then
  Begin
    dm_Booking.Free;
    dm_Booking := Nil;
  End;
end;

procedure TfrmAttestInvoice.cbDescriptionEnter(Sender: TObject);
begin
  // SelectDescription ;
  { cbDescription.Properties.Items.Clear ;
    cbDescription.Properties.Items.Add('Arbete') ;
    cbDescription.Properties.Items.Add('Vara') ;
  }
end;

procedure TfrmAttestInvoice.cbDescriptionExit(Sender: TObject);
begin
  { cbDescription.Properties.Items.Clear ;
    cbDescription.Properties.Items.Add('Frakt') ;
    cbDescription.Properties.Items.Add('Arbete') ;
    cbDescription.Properties.Items.Add('Vara') ;
    cbDescription.Properties.Items.Add('Komm') ;
  }
end;

procedure TfrmAttestInvoice.memoNoteEnter(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if (cds_Att_Ext_ServicesIIDescription.AsString = 'Arbete') or
      (cds_Att_Ext_ServicesIIDescription.AsString = 'Vara') then
      memoNote.Enabled := True
    else
      memoNote.Enabled := False;
  End;
end;

procedure TfrmAttestInvoice.meSupplier_InvoiceNoEnter(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if (cds_Att_Ext_ServicesIIDescription.AsString = 'Arbete') or
      (cds_Att_Ext_ServicesIIDescription.AsString = 'Vara') then
      meSupplier_InvoiceNo.Enabled := True
    else
      meSupplier_InvoiceNo.Enabled := False;
  End;
end;

procedure TfrmAttestInvoice.deSupplier_InvoiceDateEnter(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if (cds_Att_Ext_ServicesIIDescription.AsString = 'Arbete') or
      (cds_Att_Ext_ServicesIIDescription.AsString = 'Vara') then
      deSupplier_InvoiceDate.Enabled := True
    else
      deSupplier_InvoiceDate.Enabled := False;
  End;
end;

procedure TfrmAttestInvoice.meAmountAttestedEnter(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if (cds_Att_Ext_ServicesIIDescription.AsString = 'Arbete') or
      (cds_Att_Ext_ServicesIIDescription.AsString = 'Vara') then
      meAmountAttested.Enabled := True
    else
      meAmountAttested.Enabled := False;
  End;
end;

procedure TfrmAttestInvoice.grdAttDBTableView1FocusedRecordChanged
  (Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord
  : TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  With dmVidaInvoice do
  Begin
    if (cds_Att_Ext_ServicesIIDescription.AsString = 'Arbete') or
      (cds_Att_Ext_ServicesIIDescription.AsString = 'Vara') then
    Begin
      lcCurrencyNo.Enabled := True;
      memoNote.Enabled := True;
      meSupplier_InvoiceNo.Enabled := True;
      deSupplier_InvoiceDate.Enabled := True;
      meAmountAttested.Enabled := True;
      lcSupplierNo.Enabled := True;
      teAmount.Enabled := True;
      meQuick_InvoiceNo.Enabled := True;
      cbDescription.Enabled := True;
      lbAllRows.Enabled := True;
      lbOnAllLORows.Enabled := True;
    End
    else
    Begin
      lcCurrencyNo.Enabled := False;
      memoNote.Enabled := False;
      meSupplier_InvoiceNo.Enabled := False;
      deSupplier_InvoiceDate.Enabled := False;
      meAmountAttested.Enabled := False;
      lcSupplierNo.Enabled := False;
      teAmount.Enabled := False;
      meQuick_InvoiceNo.Enabled := False;
      cbDescription.Enabled := False;
      lbAllRows.Enabled := False;
      lbOnAllLORows.Enabled := False;
    End;
  End;
end;

procedure TfrmAttestInvoice.acCopyAttestUpdate(Sender: TObject);
begin
  acCopyAttest.Enabled := cbDescription.Enabled;
end;

procedure TfrmAttestInvoice.Button1Click(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if not mt_AttestRow.Filtered then
      mt_AttestRow.Filtered := True
    else
      mt_AttestRow.Filtered := False;
  End;
end;

end.
