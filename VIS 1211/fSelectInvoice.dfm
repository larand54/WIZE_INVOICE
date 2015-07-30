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
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
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
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
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
  object siLangLinked_frmSelectInvoice: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'PropertiesClassName')
    Left = 544
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D00530065006C0065006300740049006E00
      76006F006900630065000100660072006D00530065006C006500630074004900
      6E0076006F006900630065000100010001000D000A00620062004F004B000100
      4F004B000100010001000D000A0062006200430061006E00630065006C000100
      430061006E00630065006C000100010001000D000A004C006100620065006C00
      330001004C004F0020004E006F000100010001000D000A004C00610062006500
      6C0031000100460061006B0074007500720061006E0072000100010001000D00
      0A00620062005200650066007200650073006800010052006500660072006500
      730068000100010001000D000A0063006200530068006F007700510075006900
      63006B0049006E0076006F006900630065000100560069007300610020006200
      610072006100200073006E00610062006200660061006B007400750072006F00
      72000100010001000D000A006300620048006900640065004100740074006500
      730074006500640049006E0076006F00690063006500730001004700F6006D00
      2000610074007400650073007400650072006100640065002000660061006B00
      7400750072006F0072000100010001000D000A0063006200530068006F007700
      4300720065006400690074004F006E006C007900010056006900730061002000
      620061007200610020006B0072006500640069007400660061006B0074007500
      72006F0072000100010001000D000A00670072006400530065006C0065006300
      740049006E0076006F00690063006500440042005400610062006C0065005600
      690065007700310049004E0054005F0049004E0056004E004F00010049006E00
      7400650072006E006E0072000100010001000D000A0067007200640053006500
      6C0065006300740049006E0076006F0069006300650044004200540061006200
      6C0065005600690065007700310049004E0056005F0044004100540045000100
      460061006B0074007500720065007200610064000100010001000D000A006700
      72006400530065006C0065006300740049006E0076006F006900630065004400
      42005400610062006C0065005600690065007700310049004E0056004F004900
      430045005F004E004F000100460061006B0074007500720061006E0072000100
      010001000D000A00670072006400530065006C0065006300740049006E007600
      6F00690063006500440042005400610062006C00650056006900650077003100
      4C004F0001004C004F000100010001000D000A00670072006400530065006C00
      65006300740049006E0076006F00690063006500440042005400610062006C00
      6500560069006500770031004100470045004E00540001004100670065006E00
      74000100010001000D000A00670072006400530065006C006500630074004900
      6E0076006F00690063006500440042005400610062006C006500560069006500
      7700310043005500530054004F004D004500520001004B0075006E0064000100
      010001000D000A00670072006400530065006C0065006300740049006E007600
      6F00690063006500440042005400610062006C00650056006900650077003100
      53004800490050005000450052000100530070006500640069007400F6007200
      0100010001000D000A00670072006400530065006C0065006300740049006E00
      76006F00690063006500440042005400610062006C0065005600690065007700
      310049004E0056004F004900430045005F005400590050004500010046006100
      6B0074007500720061007400790070000100010001000D000A00670072006400
      530065006C0065006300740049006E0076006F00690063006500440042005400
      610062006C0065005600690065007700310049004E0056004F00490043004500
      5F004B004F004E0054004F0001004B006F006E0074006F000100010001000D00
      0A00670072006400530065006C0065006300740049006E0076006F0069006300
      6500440042005400610062006C0065005600690065007700310054004F005F00
      420045005F0050004100490044000100420065006C006F007000700001000100
      01000D000A00670072006400530065006C0065006300740049006E0076006F00
      690063006500440042005400610062006C006500560069006500770031004300
      55005200520045004E00430059000100560061006C0075007400610001000100
      01000D000A00670072006400530065006C0065006300740049006E0076006F00
      690063006500440042005400610062006C006500560069006500770031004C00
      69006E0065005F00490044000100520061006400490044000100010001000D00
      0A00670072006400530065006C0065006300740049006E0076006F0069006300
      6500440042005400610062006C0065005600690065007700310049006E007600
      5F00560061006C00750065005F00410066007400650072005F00440065006400
      7500630074005F004400490053005F0043004F004D004D00010049006E007600
      5F00560061006C00750065005F00410066007400650072005F00440065006400
      7500630074005F004400490053005F0043004F004D004D000100010001000D00
      0A00670072006400530065006C0065006300740049006E0076006F0069006300
      6500440042005400610062006C00650056006900650077003100430075007200
      720065006E00630079004E006F000100430075007200720065006E0063007900
      4E006F000100010001000D000A00670072006400530065006C00650063007400
      49006E0076006F00690063006500440042005400610062006C00650056006900
      65007700310043007500730074006F006D00650072004E006F00010043007500
      730074006F006D00650072004E006F000100010001000D000A00460061006B00
      74007500720061005300760065006E0073006B0031000100460061006B007400
      75007200610020005300760065006E0073006B000100010001000D000A004600
      61006B00740075007200610045006E00670065006C0073006B00310001004600
      61006B007400750072006100200045006E00670065006C0073006B0001000100
      01000D000A00460061006B00740075007200610045006E00670065006C007300
      6B004C0065006E0067007400680031000100460061006B007400750072006100
      200045006E00670065006C0073006B0020002D0020004C0065006E0067007400
      68000100010001000D000A00460061006B00740075007200610045006E006700
      65006C0073006B004B00500031000100460061006B0074007500720061002000
      45006E00670065006C0073006B0020002D0020004B0050000100010001000D00
      0A00460061006B0074007500720061005300760065006E0073006B0075007400
      61006E006D006F006D00730031000100460061006B0074007500720061002000
      5300760065006E0073006B0020002D0020007500740061006E0020006D006F00
      6D0073000100010001000D000A00530070006500630069006600690063006100
      740069006F006E00310001005300700065006300690066006900630061007400
      69006F006E0020005300760065006E0073006B000100010001000D000A005300
      70006500630069006600690063006100740069006F006E0045006E0067006500
      6C0073006B003100010053007000650063006900660069006300610074006900
      6F006E00200045006E00670065006C0073006B000100010001000D000A005300
      70006500630069006600690063006100740069006F006E0045006E0067006500
      6C0073006B006D0065006400700072006F0064007500630065006E0074003200
      0100530070006500630069006600690063006100740069006F006E0020004500
      6E00670065006C0073006B0020002D0020006D00650064002000700072006F00
      64007500630065006E0074000100010001000D000A0053007000650063006900
      6600690063006100740069006F006E0045006E00670065006C0073006B004100
      6B007400750065006C006C00440069006D0065006E00730069006F006E003100
      0100530070006500630069006600690063006100740069006F006E0020004500
      6E00670065006C0073006B0020002D00200041006B007400750065006C006C00
      2000440069006D0065006E00730069006F006E000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A0063006400730049006E0076006F00
      6900630065004C0069007300740049004E0054005F0049004E0056004E004F00
      010049006E007400650072006E006E007200010001000D000A00630064007300
      49006E0076006F006900630065004C0069007300740049004E0056005F004400
      4100540045000100460061006B00740075007200650072006100640001000100
      0D000A0063006400730049006E0076006F006900630065004C00690073007400
      4100470045004E00540001004100670065006E007400010001000D000A006300
      6400730049006E0076006F006900630065004C00690073007400530048004900
      50005000450052000100530070006500640069007400F6007200010001000D00
      0A0063006400730049006E0076006F006900630065004C006900730074004300
      5500530054004F004D004500520001004B0075006E006400010001000D000A00
      63006400730049006E0076006F006900630065004C006900730074004C004F00
      01004C004F00010001000D000A0063006400730049006E0076006F0069006300
      65004C0069007300740049004E0056004F004900430045005F004E004F000100
      460061006B0074007500720061006E007200010001000D000A00630064007300
      49006E0076006F006900630065004C0069007300740049004E0056004F004900
      430045005F0054005900500045000100460061006B0074007500720061007400
      79007000010001000D000A0063006400730049006E0076006F00690063006500
      4C0069007300740049004E0056004F004900430045005F004B004F004E005400
      4F0001004B006F006E0074006F00010001000D000A0063006400730049006E00
      76006F006900630065004C0069007300740054004F005F00420045005F005000
      4100490044000100420065006C006F0070007000010001000D000A0063006400
      730049006E0076006F006900630065004C006900730074004300550052005200
      45004E00430059000100560061006C00750074006100010001000D000A006300
      6400730049006E0076006F006900630065004C006900730074004C0069006E00
      65005F0049004400010052006100640049004400010001000D000A0063006400
      730049006E0076006F006900630065004C0069007300740049006E0076005F00
      560061006C00750065005F00410066007400650072005F004400650064007500
      630074005F004400490053005F0043004F004D004D00010049006E0076005F00
      560061006C00750065005F00410066007400650072005F004400650064007500
      630074005F004400490053005F0043004F004D004D00010001000D000A006300
      6400730049006E0076006F006900630065004C00690073007400430075007200
      720065006E00630079004E006F000100430075007200720065006E0063007900
      4E006F00010001000D000A0063006400730049006E0076006F00690063006500
      4C0069007300740043007500730074006F006D00650072004E006F0001004300
      7500730074006F006D00650072004E006F00010001000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054006600
      72006D00530065006C0065006300740049006E0076006F006900630065000100
      4D0053002000530061006E00730020005300650072006900660001004D005300
      2000530061006E00730020005300650072006900660001005400610068006F00
      6D0061000D000A00730074004D0075006C00740069004C0069006E0065007300
      5F0055006E00690063006F00640065000D000A007200670043006F006E006600
      690072006D00650064002E004900740065006D007300010022004E004F005400
      200043004F004E0046002E0022002C0043004F004E004600490052002E000100
      01000D000A007000650049006E0076006F006900630065005400790070006500
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      7300010022005600490044004100200028004B003100290022002C0022005000
      52004F0046004F0052004D0041002000280069006E0076006F00690063006500
      20006C006100740065007200290022002C002200500052004F0046004F005200
      4D004100200028006D006F0076006500200070006B0067007300290022002C00
      220050005500520043004800410053004500200049004E0056004F0049004300
      450022002C002200550053004100200028004B00320029002200010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A007000650049006E00
      76006F0069006300650054007900700065002E00540065007800740001007000
      650049006E0076006F006900630065005400790070006500010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A005400660072006D005300
      65006C0065006300740049006E0076006F006900630065000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
