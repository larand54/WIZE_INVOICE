unit uInvoiceWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxPC, cxControls, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ActnList, StdCtrls, Buttons, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, cxLabel, cxLookAndFeels,
  cxDBLabel, ImgList, cxGroupBox, cxRadioGroup, cxMemo, DBCtrls,
  cxImageComboBox, Menus, cxLookAndFeelPainters, cxButtons, cxCheckBox,
  cxCurrencyEdit, cxButtonEdit, dxBar, cxSplitter, cxRichEdit, cxImage,
  cxSpinEdit, SqlTimSt, ExtDlgs, cxDBRichEdit, cxCalc, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  dxSkinsdxBarPainter, cxNavigator, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, System.Actions, siComp, siLngLnk;

type
  TfInvoiceWizard = class(TForm)
    pgPriceListGuide: TcxPageControl;
    tsInvoiceHead: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    tsAddress: TcxTabSheet;
    Panel5: TPanel;
    ActionList1: TActionList;
    cxLookAndFeelController1: TcxLookAndFeelController;
    acNextPage: TAction;
    acPreviousPage: TAction;
    acSave: TAction;
    acCancelChanges: TAction;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    SpeedButton2: TSpeedButton;
    imglistActions: TImageList;
    SpeedButton1: TSpeedButton;
    tsParametrar: TcxTabSheet;
    Panel3: TPanel;
    tsAgent: TcxTabSheet;
    bSelectAgent: TBitBtn;
    bbRemoveAgent: TBitBtn;
    dxBarManager1: TdxBarManager;
    OpenPictureDialog1: TOpenPictureDialog;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    lcSalesman: TcxDBLookupComboBox;
    Label17: TLabel;
    lcKonto: TcxDBLookupComboBox;
    Label18: TLabel;
    deFakturaDatum: TcxDBDateEdit;
    Label19: TLabel;
    Label20: TLabel;
    lcSR: TcxDBLookupComboBox;
    tsShipToAddress: TcxTabSheet;
    grdShipAdr: TcxGrid;
    grdShipAdrDBTableView1: TcxGridDBTableView;
    grdShipAdrDBTableView1Reference: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressName: TcxGridDBColumn;
    grdShipAdrDBTableView1ADDR: TcxGridDBColumn;
    grdShipAdrDBTableView1ShippingPlanNo: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine1: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine2: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine3: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressLine4: TcxGridDBColumn;
    grdShipAdrDBTableView1STATE: TcxGridDBColumn;
    grdShipAdrDBTableView1POSTAL_CODE: TcxGridDBColumn;
    grdShipAdrDBTableView1CITY: TcxGridDBColumn;
    grdShipAdrDBTableView1COUNTRY: TcxGridDBColumn;
    grdShipAdrDBTableView1InternalInvoiceNo: TcxGridDBColumn;
    grdShipAdrDBTableView1AddressNo: TcxGridDBColumn;
    grdShipAdrLevel1: TcxGridLevel;
    rgDebet_kredit: TcxDBRadioGroup;
    bSelectCustomer: TcxButton;
    acSelectCustomer: TAction;
    acSelectLanguage: TAction;
    cbTrading: TcxDBCheckBox;
    cbCommissionPaidByCustomer: TcxDBCheckBox;
    cbQuickInvoice: TcxDBCheckBox;
    cbSkatteupplag: TcxDBCheckBox;
    cbSpecialMoms: TcxDBCheckBox;
    cbMoms: TcxDBCheckBox;
    rgCommisionInDiscount: TcxDBRadioGroup;
    rgFreightInDiscount: TcxDBRadioGroup;
    DBText7: TDBText;
    DBText9: TDBText;
    Label29: TLabel;
    tsNotering: TcxTabSheet;
    cxDBRichEdit1: TcxDBRichEdit;
    acSelectAgent: TAction;
    acSelectAgentAdress: TAction;
    tsInvoiceRows: TcxTabSheet;
    Panel4: TPanel;
    bSelectInvoiceRows: TcxButton;
    DBText22: TDBText;
    cxLabel7: TcxLabel;
    Label43: TLabel;
    acClearAgent: TAction;
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
    grdFakturaDBTableView1ProductValueWOFreight: TcxGridDBColumn;
    grdFakturaDBTableView1VatValue: TcxGridDBColumn;
    grdFakturaDBTableView1intNM3: TcxGridDBColumn;
    grdFakturaDBTableView1ArticleNo: TcxGridDBColumn;
    grdFakturaDBTableView1ArticleName: TcxGridDBColumn;
    grdFakturaDBTableView1Konto: TcxGridDBColumn;
    grdFakturaDBTableView1VatCode: TcxGridDBColumn;
    grdFakturaDBTableView1moms_konto: TcxGridDBColumn;
    grdFakturaDBTableView1InclInPrice: TcxGridDBColumn;
    grdFakturaDBTableView1InclInInvoiceTotal: TcxGridDBColumn;
    grdFakturaLevel1: TcxGridLevel;
    dsrcInvoiceDetail: TDataSource;
    acAddInvoiceRow: TAction;
    cxButton4: TcxButton;
    acRemoveInvoiceRow: TAction;
    Panel6: TPanel;
    bSelectDeliveryAddress: TcxButton;
    cxButton6: TcxButton;
    acAddDeliveryAdress: TAction;
    acRemoveDeliveryAdress: TAction;
    txtCustomer: TDBText;
    lFakturaAdress: TcxLabel;
    Label1: TLabel;
    cxButton7: TcxButton;
    acSelectInvoiceAdress: TAction;
    BitBtn1: TBitBtn;
    acSelectPaymentTerms: TAction;
    acSelectDeliveryTerms: TAction;
    bSelectDeliveryTerms: TcxButton;
    bSelectPaymentTerms: TcxButton;
    DBText6: TDBText;
    acSelectCurrency: TAction;
    bSelectCurrency: TcxButton;
    DBText44: TDBText;
    Label31: TLabel;
    eSalesOrgNo: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    Panel7: TPanel;
    cxLabel8: TcxLabel;
    lcSprak: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    deDueDate: TcxDBDateEdit;
    Label2: TLabel;
    lcIntraStatCountryNo: TcxDBLookupComboBox;
    Label3: TLabel;
    siLangLinked_fInvoiceWizard: TsiLangLinked;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pgPriceListGuidePageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure acNextPageExecute(Sender: TObject);
    procedure acPreviousPageExecute(Sender: TObject);
    procedure acPreviousPageUpdate(Sender: TObject);
    procedure acNextPageUpdate(Sender: TObject);
    procedure acSaveExecute(Sender: TObject);
    procedure acCancelChangesExecute(Sender: TObject);
    procedure acSelectLanguageExecute(Sender: TObject);
    procedure acSelectAgentExecute(Sender: TObject);
    procedure acSelectAgentAdressExecute(Sender: TObject);
    procedure acSelectCustomerExecute(Sender: TObject);
    procedure acClearAgentExecute(Sender: TObject);
    procedure acAddInvoiceRowExecute(Sender: TObject);
    procedure acRemoveInvoiceRowExecute(Sender: TObject);
    procedure acAddDeliveryAdressExecute(Sender: TObject);
    procedure acRemoveDeliveryAdressExecute(Sender: TObject);
    procedure acAddDeliveryAdressUpdate(Sender: TObject);
    procedure acRemoveDeliveryAdressUpdate(Sender: TObject);
    procedure acSelectInvoiceAdressExecute(Sender: TObject);
    procedure acSelectPaymentTermsExecute(Sender: TObject);
    procedure acSelectDeliveryTermsExecute(Sender: TObject);
    procedure acSelectCurrencyExecute(Sender: TObject);
    procedure acSaveUpdate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tsAddressEnter(Sender: TObject);
    procedure tsInvoiceHeadEnter(Sender: TObject);
    procedure Panel3Enter(Sender: TObject);
    procedure tsAgentEnter(Sender: TObject);
    procedure tsInvoiceRowsEnter(Sender: TObject);
    procedure tsShipToAddressEnter(Sender: TObject);
  private
    { Private declarations }
    // procedure InsertFromClientProduct ;
    procedure SaveInvoice;
    Function DataSaved: Boolean;
    Function GotoNextPageOK: Boolean;
    procedure lFakturaAdressClick(Sender: TObject);
  public
    { Public declarations }
  end;

  // var fInvoiceWizard: TfInvoiceWizard;

implementation

uses VidaUser, dmcVidaOrder,
  dmsVidaSystem, dmsVidaContact, VidaConst,
  dmsDataConn, dmcVidaInvoice, UnitdmModule1, UnitSelectClient, uArticle,
  UnitAddress, uLanguage, UnitCurrency, UnitDelTerms, UnitPaymentTerms,
  udmLanguage;

{$R *.dfm}

Function TfInvoiceWizard.DataSaved: Boolean;
Begin
  (* Result:= True ;
    with dm_marketprice do
    Begin
    if cds_SaveProd.ChangeCount > 0 then
    Result:= False ;
    if cds_PriceHdr.ChangeCount > 0 then
    Result:= False ;
    if cds_PriceHdr.State in [dsEdit, dsInsert] then
    Result:= False ;
    if cds_SelectLengths.ChangeCount > 0 then
    Result:= False ;
    if cds_SelectPG.ChangeCount > 0 then
    Result:= False ;
    if AllSelected = False then
    Result:= True ;
    End ; *)
End;

procedure TfInvoiceWizard.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
Var
  MessageIndex: Word;
begin
  CanClose := True;
  if DataSaved = False then
  Begin
    MessageIndex := MessageDlg('Ändringar är inte sparade, vill du spara?',
      mtConfirmation, [mbYes, mbNo, mbCancel], 0);
    Case MessageIndex of
      mrYes:
        Begin
          // dm_marketprice.SavePriceTemplateData ;
        End;
      mrNo:
        Begin
          // dm_marketprice.CancelPriceTemplateData ;
        End;
      mrCancel:
        CanClose := False;
    End;
  End;
end;

procedure TfInvoiceWizard.FormShow(Sender: TObject);
begin
  dmsSystem.LoadGridLayout(ThisUser.UserID, Self.Name + '/' + grdFaktura.Name,
    grdFakturaDBTableView1);
  pgPriceListGuide.HideTabs := True;
end;

procedure TfInvoiceWizard.pgPriceListGuidePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  // With dm_marketprice do
  (* AllowChange:= True ;
    Begin
    if NewPage = tsInvoiceHead then
    Begin
    lcSR.SetFocus ;
    End
    else
    if NewPage = tsAddress then
    Begin
    bSelectCustomer.SetFocus ;
    End
    else
    if NewPage = tsParametrar then
    Begin
    bSelectDeliveryTerms.SetFocus ;
    End
    else
    if NewPage = tsAgent then
    Begin
    bSelectAgent.SetFocus ;
    End
    else
    if NewPage = tsInvoiceRows then
    Begin
    bSelectInvoiceRows.SetFocus ;
    End
    else
    if NewPage = tsShipToAddress then
    Begin
    bSelectDeliveryAddress.SetFocus ;
    End ;

    End ; *)
end;

procedure TfInvoiceWizard.acClearAgentExecute(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin

    if cdsInvoiceHead.State = dsBrowse then
      cdsInvoiceHead.Edit;

    cdsInvoiceHeadAgentNo.AsInteger := dmModule1.cdsClientClientNo.AsInteger;
    cdsInvoiceHeadAgentName.AsString := dmModule1.cdsClientClientName.AsString;
  End;
end;

procedure TfInvoiceWizard.acNextPageExecute(Sender: TObject);
begin
  with dmcOrder do
  Begin
    if pgPriceListGuide.ActivePage = tsInvoiceHead then
      pgPriceListGuide.ActivePage := tsAddress
    else if pgPriceListGuide.ActivePage = tsAddress then
      pgPriceListGuide.ActivePage := tsParametrar
    else if pgPriceListGuide.ActivePage = tsParametrar then
      pgPriceListGuide.ActivePage := tsAgent
    else if pgPriceListGuide.ActivePage = tsAgent then
      pgPriceListGuide.ActivePage := tsInvoiceRows
    else if pgPriceListGuide.ActivePage = tsInvoiceRows then
      pgPriceListGuide.ActivePage := tsShipToAddress
    else if pgPriceListGuide.ActivePage = tsShipToAddress then
      pgPriceListGuide.ActivePage := tsNotering;
  End; // with
end;

procedure TfInvoiceWizard.acPreviousPageExecute(Sender: TObject);
begin
  with dmcOrder do
  Begin
    if pgPriceListGuide.ActivePage = tsNotering then
      pgPriceListGuide.ActivePage := tsShipToAddress
    else if pgPriceListGuide.ActivePage = tsShipToAddress then
      pgPriceListGuide.ActivePage := tsInvoiceRows
    else if pgPriceListGuide.ActivePage = tsInvoiceRows then
      pgPriceListGuide.ActivePage := tsAgent
    else if pgPriceListGuide.ActivePage = tsAgent then
      pgPriceListGuide.ActivePage := tsParametrar
    else if pgPriceListGuide.ActivePage = tsParametrar then
      pgPriceListGuide.ActivePage := tsAddress
    else if pgPriceListGuide.ActivePage = tsAddress then
    Begin
      pgPriceListGuide.ActivePage := tsInvoiceHead;
    End;
  End;
end;

procedure TfInvoiceWizard.acPreviousPageUpdate(Sender: TObject);
begin
  acPreviousPage.Enabled := pgPriceListGuide.ActivePage <> tsInvoiceHead;
end;

procedure TfInvoiceWizard.acRemoveDeliveryAdressExecute(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    cdsInvoiceShipToAddress.Delete;
  End;
end;

procedure TfInvoiceWizard.acRemoveDeliveryAdressUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acRemoveDeliveryAdress.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and
      (cdsInvoiceShipToAddress.Active) and
      ((cdsInvoiceShipToAddress.RecordCount > 0) or
      (cdsInvoiceShipToAddress.State in [dsInsert, dsEdit]));
  End;
end;

procedure TfInvoiceWizard.acRemoveInvoiceRowExecute(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    if dmVidaInvoice.cdsInvoiceDetailTypeOfRow.AsInteger = 2 then
      cdsInvoiceDetail.Delete
    else
      ShowMessage('Kan inte ta bort fakturarader');
  End;
end;

procedure TfInvoiceWizard.acNextPageUpdate(Sender: TObject);
begin
  acNextPage.Enabled := (pgPriceListGuide.ActivePage <> tsNotering) and
    (GotoNextPageOK);
end;

procedure TfInvoiceWizard.acSaveExecute(Sender: TObject);
begin
  Try
    SaveInvoice;
    ModalResult := mrOK;
    // dmcOrder.OrderSavedinWizard:= True ;
    // Close ;
  Except
  End;
end;

procedure TfInvoiceWizard.acSaveUpdate(Sender: TObject);
begin
  acSave.Enabled := pgPriceListGuide.ActivePage = tsNotering;
end;

procedure TfInvoiceWizard.acSelectAgentAdressExecute(Sender: TObject);
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

      if FormAddress.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acSelectAgentExecute(Sender: TObject);
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
      if FormSelectClient.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acSelectCurrencyExecute(Sender: TObject);
var
  FormCurrency: TFormCurrency;
begin
  with dmVidaInvoice, dmModule1, dmsSystem do
  Begin

    FormCurrency := TFormCurrency.Create(Nil);
    Try
      if not cds_Currency.Active then
        cds_Currency.Active := True;
      if FormCurrency.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acSelectCustomerExecute(Sender: TObject);
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
        dmModule1.cdsClient.Active := False;
        dmModule1.cdsClient.ParamByName('@RoleType').AsInteger := 1;
        dmModule1.cdsClient.Active := True;
        if FormSelectClient.ShowModal = mrOK then
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

          cdsInvoiceHeadIntraStatCountryNo.AsInteger :=
            sq_ClientDataStatistikLandNr.AsInteger;

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
          if (not sq_ClientDataCurrencyNo.IsNull) and
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

          Label1.Caption := Trim(cdsInvoiceHeadAddressLine1.AsString) + ', ' +
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
      ShowMessage('Kan inte ändra kund, (bara tillåtet i snabbfaktura)');
  End; // with
end;

procedure TfInvoiceWizard.acSelectDeliveryTermsExecute(Sender: TObject);
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
      if FormDelTerms.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acSelectInvoiceAdressExecute(Sender: TObject);
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

      if FormAddress.ShowModal = mrOK then
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

        Label1.Caption := Trim(cdsInvoiceHeadAddressLine1.AsString) + ', ' +
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

procedure TfInvoiceWizard.acSelectLanguageExecute(Sender: TObject);
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
      if frmLanguage.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acSelectPaymentTermsExecute(Sender: TObject);
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
      if FormPaymentTerms.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acAddDeliveryAdressExecute(Sender: TObject);
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

      if FormAddress.ShowModal = mrOK then
      Begin
        if not cdsInvoiceShipTo.Active then
          cdsInvoiceShipTo.Active := True;

        if not cdsInvoiceShipToAddress.Active then
          cdsInvoiceShipToAddress.Active := True;

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
            (cdsInvoiceShipToAddressReference.IsNull) then
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

procedure TfInvoiceWizard.acAddDeliveryAdressUpdate(Sender: TObject);
begin
  with dmVidaInvoice do
  Begin
    acAddDeliveryAdress.Enabled := (cdsInvoiceHead.Active) and
      (cdsInvoiceHeadInvoiced.AsInteger <> 1) and
      ((cdsInvoiceDetail.Active) and (cdsInvoiceDetail.RecordCount > 0));
  End;
end;

procedure TfInvoiceWizard.acAddInvoiceRowExecute(Sender: TObject);
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
      if fArticle.ShowModal = mrOK then
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

procedure TfInvoiceWizard.acCancelChangesExecute(Sender: TObject);
begin
  With dmVidaInvoice do
  Begin
    if MessageDlg('Vill du avbryta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then
      DeleteInvoice(cdsInvoiceHeadInternalInvoiceNo.AsInteger)
    else
      Exit;
    ModalResult := mrCancel;
    // dmcOrder.OrderSavedinWizard:= False ;
    Close;
  End;
end;

Function TfInvoiceWizard.GotoNextPageOK: Boolean;
Begin
  Result := False;
  With dmcOrder do
  Begin
    if pgPriceListGuide.ActivePage = tsInvoiceHead then
    Begin
      Result := True;
    End
    else if pgPriceListGuide.ActivePage = tsAddress then
    Begin
      Result := True;
    End
    else if pgPriceListGuide.ActivePage = tsParametrar then
    Begin
      Result := True;
    End
    else if pgPriceListGuide.ActivePage = tsAgent then
    Begin
      Result := True;
    End
    else if pgPriceListGuide.ActivePage = tsInvoiceRows then
    Begin
      Result := True;
    End
    else if pgPriceListGuide.ActivePage = tsShipToAddress then
    Begin
      Result := True;
    End;
  End; // With
End;

procedure TfInvoiceWizard.lFakturaAdressClick(Sender: TObject);
// var  FormAddress: TFormAddress;
begin
  (* with dmVidaInvoice do
    Begin
    FormAddress := TFormAddress.Create(Nil);
    Try
    cdsClientAddress.Active:= False ;
    sq_ClientAddress.Close ;
    sq_ClientAddress.ParamByName('ClientNo').AsInteger:= cdsInvoiceHeadCustomerNo.AsInteger ;
    sq_ClientAddress.ParamByName('AddressType').AsInteger:= 1 ;
    cdsClientAddress.Active:= True ;

    if FormAddress.ShowModal = mrOK then
    Begin
    if cdsInvoiceHead.State = dsBrowse then
    cdsInvoiceHead.Edit ;


    cdsInvoiceHeadClientBillingAddressNo.AsInteger:= cdsClientAddressADDRESS_NO.AsInteger ;
    cdsInvoiceHeadAddressName.AsString:=  cdsClientAddressADDRESS_NAME.AsString ;
    cdsInvoiceHeadAddressLine1.AsString:= cdsClientAddressADDRESSLINE1.AsString ;
    cdsInvoiceHeadAddressLine2.AsString:= cdsClientAddressADDRESSLINE2.AsString ;
    cdsInvoiceHeadAddressLine3.AsString:= cdsClientAddressADDRESSLINE3.AsString ;
    cdsInvoiceHeadAddressLine4.AsString:= cdsClientAddressADDRESSLINE4.AsString ;
    cdsInvoiceHeadStateOrProvince.AsString := cdsClientAddressPROVINCE.AsString ;
    cdsInvoiceHeadPostalCode.AsString := cdsClientAddressPOSTALCODE.AsString ;
    cdsInvoiceHeadCityName.AsString:= cdsClientAddressCITY.AsString ;
    cdsInvoiceHeadCountryName.AsString := cdsClientAddressCOUNTRY.AsString ;

    Label42.Caption:= Trim(cdsInvoiceHeadAddressLine1.AsString)+', '+Trim(cdsInvoiceHeadAddressLine2.AsString)+', '+
    Trim(cdsInvoiceHeadAddressLine3.AsString)+', '+Trim(cdsInvoiceHeadAddressLine4.AsString)+', '+
    Trim(cdsInvoiceHeadCityName.AsString)+', '+Trim(cdsInvoiceHeadStateOrProvince.AsString)+', '+
    Trim(cdsInvoiceHeadPostalCode.AsString)+', '+Trim(cdsInvoiceHeadCountryName.AsString) ;

    cdsInvoiceHeadPaymentText.AsVariant:=
    GetPaymentText (cdsInvoiceHeadCurrencyNo.AsInteger,
    cdsInvoiceHeadLanguageCode.AsInteger, cdsInvoiceHeadClientBillingAddressNo.AsInteger) ;


    cdsInvoiceHead.Post ;
    End ;


    Finally
    FreeAndNil(FormAddress) ;//.Free ;
    End ;

    End ; //with
  *)
end;

procedure TfInvoiceWizard.Panel3Enter(Sender: TObject);
begin
  bSelectDeliveryTerms.SetFocus;
end;

procedure TfInvoiceWizard.SaveInvoice;
begin
  { if dmVidaInvoice.cdsInvoiceHeadSUM_FreigthCost.AsFloat <> 0 then
    Begin
    if abs(dmVidaInvoice.cdsInvoiceHeadTotal_Product_Value_No_Freight.AsFloat)
    / abs(dmVidaInvoice.cdsInvoiceHeadSUM_FreigthCost.AsFloat) > 150 then
    ShowMessage('Kolla din fraktkostnad.') ;
    End ;


    if (dmVidaInvoice.cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat > 0)
    and (dmVidaInvoice.cdsInvoiceHeadDebit_Credit.AsInteger = 1) then
    ShowMessage('Notera, fakturan är markerad som kredit men beloppet är positivt.') ;

    if (dmVidaInvoice.cdsInvoiceHeadInv_Value_To_Be_Paid_2.AsFloat < 0)
    and (dmVidaInvoice.cdsInvoiceHeadDebit_Credit.AsInteger = 0) then
    ShowMessage('Notera, fakturan är markerad som debit men beloppet är negativt.') ;

  }

  if dmVidaInvoice.cdsInvoiceHeadCurrencyName.AsString <= '' then
  Begin
    ShowMessage('Valuta saknas, kan ej spara.');
    Exit;
  End;
  if dmVidaInvoice.cdsInvoiceHeadCustomerNo.AsInteger < 1 then
  Begin
    ShowMessage('Kund saknas, kan ej spara.');
    Exit;
  End;

  // if not  IsInvoiced(Sender) then
  // if Invoiced = False then
  // Begin


  // end;
  { if dmVidaInvoice.cdsInvoiceHeadQuickInvoice.AsInteger = 0 then
    Summarize(Sender)
    else
    SummarizeForQuickInvoice(Sender) ;

  }
  // End ;//if not IsInvoiced(Sender) then

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

  // NewInvoice:= False ; //set to false if user save

  { if dmVidaInvoice.cds_IH_SpecLoad.State in [dsEdit, dsInsert] then
    dmVidaInvoice.cds_IH_SpecLoad.Post ;
    if dmVidaInvoice.cds_IH_SpecLoad.ChangeCount > 0 then
    Begin
    dmVidaInvoice.cds_IH_SpecLoad.ApplyUpdates(0) ;
    dmVidaInvoice.cds_IH_SpecLoad.CommitUpdates ;
    End ;
  }

  // CheckValueExistInRows ;
end;

procedure TfInvoiceWizard.tsAddressEnter(Sender: TObject);
begin
  bSelectCustomer.SetFocus;
end;

procedure TfInvoiceWizard.tsAgentEnter(Sender: TObject);
begin
  bSelectAgent.SetFocus;
end;

procedure TfInvoiceWizard.tsInvoiceHeadEnter(Sender: TObject);
begin
  lcSR.SetFocus;
end;

procedure TfInvoiceWizard.tsInvoiceRowsEnter(Sender: TObject);
begin
  bSelectInvoiceRows.SetFocus;
end;

procedure TfInvoiceWizard.tsShipToAddressEnter(Sender: TObject);
begin
  bSelectDeliveryAddress.SetFocus;
end;

End.
