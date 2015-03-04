unit fSelectInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fDBForm, ActnList, ImgList, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls,
  Menus, SqlTimSt,
  Buttons, FMTBcd, DB, cxControls,
  cxContainer, cxEdit, cxTextEdit, DBClient, Provider, SqlExpr, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxMaskEdit,
  cxDropDownEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinWhiteprint, dxSkinVS2010, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, siComp, siLngLnk;

type
  TfrmSelectInvoice = class(TForm)
    PopupMenu1: TPopupMenu;
    FakturaSvensk1: TMenuItem;
    FakturaEngelsk1: TMenuItem;
    Specification1: TMenuItem;
    SpecificationEngelsk1: TMenuItem;
    FakturaEngelskLength1: TMenuItem;
    FakturaEngelskKP1: TMenuItem;
    FakturaSvenskutanmoms1: TMenuItem;
    SpecificationEngelskmedproducent2: TMenuItem;
    Exit1: TMenuItem;
    SpecificationEngelskAktuellDimension1: TMenuItem;
    Panel2: TPanel;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    Panel3: TPanel;
    rgConfirmed: TRadioGroup;
    Label3: TLabel;
    Label1: TLabel;
    bbRefresh: TBitBtn;
    dsInvoiceList: TDataSource;
    cbShowQuickInvoice: TCheckBox;
    cbHideAttestedInvoices: TCheckBox;
    cbShowCreditOnly: TCheckBox;
    nfSearchLO: TcxTextEdit;
    nfSearchInvoiceNo: TcxTextEdit;
    grdSelectInvoiceDBTableView1: TcxGridDBTableView;
    grdSelectInvoiceLevel1: TcxGridLevel;
    grdSelectInvoice: TcxGrid;
    cdsInvoiceList: TFDQuery;
    cdsInvoiceListINT_INVNO: TIntegerField;
    cdsInvoiceListINV_DATE: TSQLTimeStampField;
    cdsInvoiceListAGENT: TStringField;
    cdsInvoiceListSHIPPER: TStringField;
    cdsInvoiceListCUSTOMER: TStringField;
    cdsInvoiceListLO: TIntegerField;
    cdsInvoiceListINVOICE_NO: TIntegerField;
    cdsInvoiceListINVOICE_TYPE: TStringField;
    cdsInvoiceListINVOICE_KONTO: TStringField;
    cdsInvoiceListTO_BE_PAID: TFloatField;
    cdsInvoiceListCURRENCY: TStringField;
    cdsInvoiceListLine_ID: TStringField;
    cdsInvoiceListInv_Value_After_Deduct_DIS_COMM: TFloatField;
    cdsInvoiceListCurrencyNo: TIntegerField;
    cdsInvoiceListCustomerNo: TIntegerField;
    grdSelectInvoiceDBTableView1INT_INVNO: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1INV_DATE: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1AGENT: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1SHIPPER: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1CUSTOMER: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1LO: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1INVOICE_NO: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1INVOICE_TYPE: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1INVOICE_KONTO: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1TO_BE_PAID: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1CURRENCY: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1Line_ID: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1Inv_Value_After_Deduct_DIS_COMM
      : TcxGridDBColumn;
    grdSelectInvoiceDBTableView1CurrencyNo: TcxGridDBColumn;
    grdSelectInvoiceDBTableView1CustomerNo: TcxGridDBColumn;
    peInvoiceType: TcxComboBox;
    siLangLinked_frmSelectInvoice: TsiLangLinked;
    procedure nfSearchLOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure peInvoiceTypeChange(Sender: TObject);
    procedure nfSearchInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Refresh(Sender: TObject);
  public
    { Public declarations }
  end;

  // var frmSelectInvoice: TfrmSelectInvoice;

implementation

uses
  VidaConst,
  VidaUser,
  VidaUtils, fInvoice, dmsDataConn, dmcVidaInvoice,
  dmsVidaContact, udmLanguage;

{$R *.dfm}

procedure TfrmSelectInvoice.nfSearchLOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  // With dmVidaInvoice do
  // Begin
  cdsInvoiceList.Locate('LO', StrToIntDef(nfSearchLO.Text, 0), []);
  // End ; //with
end;

procedure TfrmSelectInvoice.FormCreate(Sender: TObject);
begin

  peInvoiceType.ItemIndex := 0;
end;

procedure TfrmSelectInvoice.peInvoiceTypeChange(Sender: TObject);
begin
  Refresh(Sender);
end;

procedure TfrmSelectInvoice.nfSearchInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key <> VK_RETURN then
    Exit;
  // With dmVidaInvoice do
  // Begin
  cdsInvoiceList.Locate('INVOICE_NO',
    StrToIntDef(nfSearchInvoiceNo.Text, 0), []);
  // End ; //with

end;

procedure TfrmSelectInvoice.Refresh(Sender: TObject);
Var
  Save_Cursor: TCursor;
begin
  // with  dmVidaInvoice do
  // Begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crSQLWait; { Show hourglass cursor }
  cdsInvoiceList.DisableControls;
  Try

    cdsInvoiceList.Active := False;
    cdsInvoiceList.Close;
    cdsInvoiceList.SQL.Clear;

    if peInvoiceType.ItemIndex = 0 then
    Begin
      if rgConfirmed.ItemIndex = 1 then
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.InvoiceNo AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');


        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add
          ('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber INo');
        cdsInvoiceList.SQL.Add
          ('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceType = 0');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowCreditOnly.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.Inv_Value_After_Deduct_DIS_COMM < 0');
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        if cbHideAttestedInvoices.Checked = True then
        Begin
          cdsInvoiceList.SQL.Add
            ('AND IH.InternalInvoiceNo not in (Select Quick_InvoiceNo From dbo.Att_Ext_Services');
          cdsInvoiceList.SQL.Add
            ('WHERE Quick_InvoiceNo =  IH.InternalInvoiceNo)');
        End;

        cdsInvoiceList.SQL.Add
          ('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc');
      End
      else
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL');
        cdsInvoiceList.SQL.Add('WHERE IH.InvoiceType = 0');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN');
        cdsInvoiceList.SQL.Add
          ('(SELECT INO.InternalInvoiceNo FROM dbo.InvoiceNumber INo ) ORDER BY InvoiceDate desc');
      End;
    End
    else if peInvoiceType.ItemIndex = 1 then
    Begin
      if rgConfirmed.ItemIndex = 1 then
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.ProformaInvoiceNo AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add
          ('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.ProformaInvoiceNumber INo');
        cdsInvoiceList.SQL.Add
          ('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceType = 1');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc');
      End
      else
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL');
        cdsInvoiceList.SQL.Add('WHERE IH.InvoiceType = 1');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN');

        cdsInvoiceList.SQL.Add
          ('(SELECT INO.InternalInvoiceNo FROM dbo.ProformaInvoiceNumber INo ) ORDER BY InvoiceDate desc');
      End;
    End
    else if peInvoiceType.ItemIndex = 2 then
    Begin
      if rgConfirmed.ItemIndex = 1 then
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.ProformaInvoiceNo AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add
          ('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.ProformaInvoiceNumber INo');
        cdsInvoiceList.SQL.Add
          ('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceType = 2');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc');
      End
      else
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL');
        cdsInvoiceList.SQL.Add('WHERE IH.InvoiceType = 2');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN');

        cdsInvoiceList.SQL.Add
          ('(SELECT INO.InternalInvoiceNo FROM dbo.ProformaInvoiceNumber INo ) ORDER BY InvoiceDate desc');
      End;
    End

    else

      if peInvoiceType.ItemIndex = 3 then
    Begin
      if rgConfirmed.ItemIndex = 1 then
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.PO_InvoiceNo AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add
          ('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber_PO INo');
        cdsInvoiceList.SQL.Add
          ('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceType = 3');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc');
      End
      else
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL');
        cdsInvoiceList.SQL.Add('WHERE IH.InvoiceType = 3');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN');

        cdsInvoiceList.SQL.Add
          ('(SELECT INO.InternalInvoiceNo FROM dbo.InvoiceNumber_PO INo ) ORDER BY InvoiceDate desc');
      End;
    End

    else

      if peInvoiceType.ItemIndex = 4 then
    Begin
      if rgConfirmed.ItemIndex = 1 then
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.InvoiceNo AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add
          ('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNo_USA INo');
        cdsInvoiceList.SQL.Add
          ('WHERE IL.InternalInvoiceNo = IH.InternalInvoiceNo');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceType = 4');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND INo.InternalInvoiceNo = IH.InternalInvoiceNo ORDER BY InvoiceDate desc');
      End
      else
      Begin
        cdsInvoiceList.SQL.Add
          ('SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER,');
        cdsInvoiceList.SQL.Add
          ('IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, -1 AS INVOICE_NO,');

        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 0 THEN ' + '''NORMAL''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 1 THEN ' +
          '''PROFORMA, INVOICE LATER''');
        cdsInvoiceList.SQL.Add('WHEN IH.InvoiceType = 2 THEN ' +
          '''PROFORMA''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_TYPE,');
        cdsInvoiceList.SQL.Add('CASE');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 0 THEN ' + '''DEBIT''');
        cdsInvoiceList.SQL.Add('WHEN IH.Debit_Credit = 1 THEN ' + '''CREDIT''');
        cdsInvoiceList.SQL.Add('END AS INVOICE_KONTO,');
        cdsInvoiceList.SQL.Add('IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,');
        cdsInvoiceList.SQL.Add('IH.CurrencyName	AS CURRENCY,');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+');
        cdsInvoiceList.SQL.Add
          ('RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID');
        cdsInvoiceList.SQL.Add
          (',IH.Inv_Value_After_Deduct_DIS_COMM, IH.CurrencyNo, IH.CustomerNo');
        // cdsInvoiceList.SQL.Add('IH.InternalInvoiceNo + IL.ShippingPlanNo AS Line_ID');

        cdsInvoiceList.SQL.Add('FROM dbo.InvoiceHeader IH, dbo.InvoiceLO IL');
        cdsInvoiceList.SQL.Add('WHERE IH.InvoiceType = 4');
        cdsInvoiceList.SQL.Add('AND IH.InvoiceDate > ' +
          QuotedStr('2008-12-31'));
        if cbShowQuickInvoice.Checked = True then
          cdsInvoiceList.SQL.Add('AND IH.QuickInvoice = 1');

        cdsInvoiceList.SQL.Add
          ('AND IL.InternalInvoiceNo = IH.InternalInvoiceNo AND IH.InternalInvoiceNo NOT IN');

        cdsInvoiceList.SQL.Add
          ('(SELECT INO.InternalInvoiceNo FROM dbo.InvoiceNo_USA INo ) ORDER BY InvoiceDate desc');
      End;
    End;

    // if ThisUser.UserID = 8 then  cdsInvoiceList.SQL.SaveToFile('Select_sq_InvoiceList.TXT');

    // cdsInvoiceList.ParamByName('Status').AsInteger:=
    cdsInvoiceList.Open;
    cdsInvoiceList.Active := True;

  Finally
    cdsInvoiceList.EnableControls;
    Screen.Cursor := Save_Cursor; { Always restore to normal }

  End;

  // End ; // with
end;

procedure TfrmSelectInvoice.bbRefreshClick(Sender: TObject);
begin
  Refresh(Sender);
end;

procedure TfrmSelectInvoice.FormShow(Sender: TObject);
begin
  Refresh(Sender);
end;

procedure TfrmSelectInvoice.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
end;

end.
