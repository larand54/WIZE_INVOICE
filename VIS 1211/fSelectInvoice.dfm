object frmSelectInvoice: TfrmSelectInvoice
  Left = 267
  Top = 110
  Caption = 'frmSelectInvoice'
  ClientHeight = 522
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 477
    Width = 1093
    Height = 45
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkOK
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkCancel
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 5
      Width = 31
      Height = 13
      Caption = 'LO No'
    end
    object Label1: TLabel
      Left = 72
      Top = 5
      Width = 45
      Height = 13
      Caption = 'Fakturanr'
    end
    object rgConfirmed: TRadioGroup
      Left = 800
      Top = 4
      Width = 209
      Height = 37
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'NOT CONF.'
        'CONFIR.')
      TabOrder = 3
      Visible = False
    end
    object bbRefresh: TBitBtn
      Left = 704
      Top = 8
      Width = 89
      Height = 49
      Caption = 'Refresh'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = bbRefreshClick
    end
    object cbShowQuickInvoice: TCheckBox
      Left = 480
      Top = 8
      Width = 145
      Height = 17
      Caption = 'Visa bara snabbfakturor'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object cbHideAttestedInvoices: TCheckBox
      Left = 480
      Top = 24
      Width = 145
      Height = 17
      Caption = 'G'#246'm attesterade fakturor'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object cbShowCreditOnly: TCheckBox
      Left = 480
      Top = 40
      Width = 145
      Height = 17
      Caption = 'Visa bara kreditfakturor'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object nfSearchLO: TcxTextEdit
      Left = 8
      Top = 24
      TabOrder = 0
      Width = 49
    end
    object nfSearchInvoiceNo: TcxTextEdit
      Left = 72
      Top = 24
      TabOrder = 1
      Width = 57
    end
    object peInvoiceType: TcxComboBox
      Left = 160
      Top = 22
      Properties.Items.Strings = (
        'VIDA (K1)'
        'PROFORMA (invoice later)'
        'PROFORMA (move pkgs)'
        'PURCHASE INVOICE'
        'USA (K2)')
      TabOrder = 7
      Text = 'peInvoiceType'
      Width = 225
    end
  end
  object grdSelectInvoice: TcxGrid
    Left = 0
    Top = 65
    Width = 1093
    Height = 412
    Align = alClient
    TabOrder = 2
    object grdSelectInvoiceDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      DataController.DataSource = dsInvoiceList
      DataController.KeyFieldNames = 'Line_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdSelectInvoiceDBTableView1INT_INVNO: TcxGridDBColumn
        DataBinding.FieldName = 'INT_INVNO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 63
      end
      object grdSelectInvoiceDBTableView1INV_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'INV_DATE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 86
      end
      object grdSelectInvoiceDBTableView1INVOICE_NO: TcxGridDBColumn
        DataBinding.FieldName = 'INVOICE_NO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 66
      end
      object grdSelectInvoiceDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 60
      end
      object grdSelectInvoiceDBTableView1AGENT: TcxGridDBColumn
        DataBinding.FieldName = 'AGENT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 148
      end
      object grdSelectInvoiceDBTableView1CUSTOMER: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 176
      end
      object grdSelectInvoiceDBTableView1SHIPPER: TcxGridDBColumn
        DataBinding.FieldName = 'SHIPPER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 131
      end
      object grdSelectInvoiceDBTableView1INVOICE_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'INVOICE_TYPE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 58
      end
      object grdSelectInvoiceDBTableView1INVOICE_KONTO: TcxGridDBColumn
        DataBinding.FieldName = 'INVOICE_KONTO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 45
      end
      object grdSelectInvoiceDBTableView1TO_BE_PAID: TcxGridDBColumn
        DataBinding.FieldName = 'TO_BE_PAID'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 81
      end
      object grdSelectInvoiceDBTableView1CURRENCY: TcxGridDBColumn
        DataBinding.FieldName = 'CURRENCY'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 38
      end
      object grdSelectInvoiceDBTableView1Line_ID: TcxGridDBColumn
        DataBinding.FieldName = 'Line_ID'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 131
      end
      object grdSelectInvoiceDBTableView1Inv_Value_After_Deduct_DIS_COMM: TcxGridDBColumn
        DataBinding.FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object grdSelectInvoiceDBTableView1CurrencyNo: TcxGridDBColumn
        DataBinding.FieldName = 'CurrencyNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
      object grdSelectInvoiceDBTableView1CustomerNo: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
      end
    end
    object grdSelectInvoiceLevel1: TcxGridLevel
      GridView = grdSelectInvoiceDBTableView1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 248
    object FakturaSvensk1: TMenuItem
      Caption = 'Faktura Svensk'
    end
    object FakturaEngelsk1: TMenuItem
      Caption = 'Faktura Engelsk'
    end
    object FakturaEngelskLength1: TMenuItem
      Caption = 'Faktura Engelsk - Length'
    end
    object FakturaEngelskKP1: TMenuItem
      Caption = 'Faktura Engelsk - KP'
    end
    object FakturaSvenskutanmoms1: TMenuItem
      Caption = 'Faktura Svensk - utan moms'
    end
    object Specification1: TMenuItem
      Caption = 'Specification Svensk'
    end
    object SpecificationEngelsk1: TMenuItem
      Caption = 'Specification Engelsk'
    end
    object SpecificationEngelskmedproducent2: TMenuItem
      Caption = 'Specification Engelsk - med producent'
    end
    object Exit1: TMenuItem
    end
    object SpecificationEngelskAktuellDimension1: TMenuItem
      Caption = 'Specification Engelsk - Aktuell Dimension'
    end
  end
  object dsInvoiceList: TDataSource
    DataSet = cdsInvoiceList
    Left = 113
    Top = 216
  end
  object cdsInvoiceList: TFDQuery
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      
        'SELECT IH.InternalInvoiceNo AS INT_INVNO, IH.InvoiceDate AS INV_' +
        'DATE, IH.AgentName AS AGENT, IL.Shipper AS SHIPPER, '
      
        'IH.CustomerName AS CUSTOMER, IL.ShippingPlanNo AS LO, INO.Invoic' +
        'eNo AS INVOICE_NO,'
      'CASE'
      'WHEN IH.InvoiceType = 0 THEN '#39'NORMAL'#39
      'WHEN IH.InvoiceType = 1 THEN '#39'PROFORMA, INVOICE LATER'#39
      'WHEN IH.InvoiceType = 2 THEN '#39'PROFORMA'#39
      'END AS INVOICE_TYPE,'
      'CASE'
      'WHEN IH.Debit_Credit = 0 THEN '#39'DEBIT'#39
      'WHEN IH.Debit_Credit = 1 THEN '#39'CREDIT'#39
      'END AS INVOICE_KONTO,'
      'IH.Inv_Value_To_Be_Paid AS TO_BE_PAID,'
      'IH.CurrencyName'#9'AS CURRENCY,'
      'RTRIM(CONVERT(varchar(30), IH.InternalInvoiceNo))+'
      'RTRIM(CONVERT(varchar(30), IL.ShippingPlanNo)) AS Line_ID,'
      'IH.Inv_Value_After_Deduct_DIS_COMM,'
      'IH.CurrencyNo,'
      'IH.CustomerNo'
      ''
      ''
      'FROM'
      'dbo.InvoiceHeader IH, dbo.InvoiceLO IL, dbo.InvoiceNumber INo'
      'WHERE'
      'IL.InternalInvoiceNo = IH.InternalInvoiceNo'
      'AND INo.InternalInvoiceNo = IH.InternalInvoiceNo'
      'ORDER BY InvoiceDate'
      '')
    Left = 112
    Top = 168
    object cdsInvoiceListINT_INVNO: TIntegerField
      DisplayLabel = 'Internnr'
      FieldName = 'INT_INVNO'
      Origin = 'INT_INVNO'
      Required = True
    end
    object cdsInvoiceListINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Fakturerad'
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
    end
    object cdsInvoiceListAGENT: TStringField
      DisplayLabel = 'Agent'
      FieldName = 'AGENT'
      Origin = 'AGENT'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceListSHIPPER: TStringField
      DisplayLabel = 'Spedit'#246'r'
      FieldName = 'SHIPPER'
      Origin = 'SHIPPER'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceListCUSTOMER: TStringField
      DisplayLabel = 'Kund'
      FieldName = 'CUSTOMER'
      Origin = 'CUSTOMER'
      FixedChar = True
      Size = 80
    end
    object cdsInvoiceListLO: TIntegerField
      FieldName = 'LO'
      Origin = 'LO'
      Required = True
    end
    object cdsInvoiceListINVOICE_NO: TIntegerField
      DisplayLabel = 'Fakturanr'
      FieldName = 'INVOICE_NO'
      Origin = 'INVOICE_NO'
      Required = True
    end
    object cdsInvoiceListINVOICE_TYPE: TStringField
      DisplayLabel = 'Fakturatyp'
      FieldName = 'INVOICE_TYPE'
      Origin = 'INVOICE_TYPE'
      ReadOnly = True
      Size = 23
    end
    object cdsInvoiceListINVOICE_KONTO: TStringField
      DisplayLabel = 'Konto'
      FieldName = 'INVOICE_KONTO'
      Origin = 'INVOICE_KONTO'
      ReadOnly = True
      Size = 6
    end
    object cdsInvoiceListTO_BE_PAID: TFloatField
      DisplayLabel = 'Belopp'
      FieldName = 'TO_BE_PAID'
      Origin = 'TO_BE_PAID'
      DisplayFormat = '#,###,###,###.00'
    end
    object cdsInvoiceListCURRENCY: TStringField
      DisplayLabel = 'Valuta'
      FieldName = 'CURRENCY'
      Origin = 'CURRENCY'
      FixedChar = True
      Size = 5
    end
    object cdsInvoiceListLine_ID: TStringField
      DisplayLabel = 'RadID'
      FieldName = 'Line_ID'
      Origin = 'Line_ID'
      ReadOnly = True
      Size = 60
    end
    object cdsInvoiceListInv_Value_After_Deduct_DIS_COMM: TFloatField
      FieldName = 'Inv_Value_After_Deduct_DIS_COMM'
      Origin = 'Inv_Value_After_Deduct_DIS_COMM'
    end
    object cdsInvoiceListCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
      Origin = 'CurrencyNo'
    end
    object cdsInvoiceListCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
    end
  end
end
