object FormPaymentTerms: TFormPaymentTerms
  Left = 265
  Top = 105
  ActiveControl = grdPayTerms
  Caption = 'Betalningsvillkor'
  ClientHeight = 442
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 881
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdPayTerms: TcxGrid
    Left = 0
    Top = 0
    Width = 881
    Height = 401
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object grdPayTermsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.dsPaymentTerm
      DataController.KeyFieldNames = 'PaymentTermsNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdPayTermsDBTableView1PaymentTermsNo: TcxGridDBColumn
        DataBinding.FieldName = 'PaymentTermsNo'
        Visible = False
      end
      object grdPayTermsDBTableView1PaymentTermName: TcxGridDBColumn
        Caption = 'BETALNINGSVILLKOR'
        DataBinding.FieldName = 'PaymentTermName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 166
      end
      object grdPayTermsDBTableView1Discount1: TcxGridDBColumn
        Caption = 'KASSARABATT'
        DataBinding.FieldName = 'Discount1'
        Width = 110
      end
      object grdPayTermsDBTableView1Description: TcxGridDBColumn
        Caption = 'BESKRIVNING'
        DataBinding.FieldName = 'Description'
        Width = 388
      end
      object grdPayTermsDBTableView1FreightInDiscount: TcxGridDBColumn
        Caption = 'After BL'
        DataBinding.FieldName = 'FreightInDiscount'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 112
      end
      object grdPayTermsDBTableView1FreightInCommission: TcxGridDBColumn
        Caption = 'Fri leverans m'#229'nad'
        DataBinding.FieldName = 'FreightInCommission'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 111
      end
      object grdPayTermsDBTableView1CommissionPaidByCustomer: TcxGridDBColumn
        DataBinding.FieldName = 'CommissionPaidByCustomer'
        Visible = False
      end
      object grdPayTermsDBTableView1LanguageCode: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageCode'
        Visible = False
      end
    end
    object grdPayTermsLevel1: TcxGridLevel
      GridView = grdPayTermsDBTableView1
    end
  end
  object siLangLinked_FormPaymentTerms: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
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
      'ListField')
    Left = 432
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D005000610079006D0065006E007400
      5400650072006D007300010042006500740061006C006E0069006E0067007300
      760069006C006C006B006F0072000100010001000D000A004200690074004200
      74006E00310001004F004B000100010001000D000A0042006900740042007400
      6E0032000100430061006E00630065006C000100010001000D000A0067007200
      64005000610079005400650072006D007300440042005400610062006C006500
      560069006500770031005000610079006D0065006E0074005400650072006D00
      73004E006F0001005000610079006D0065006E0074005400650072006D007300
      4E006F000100010001000D000A00670072006400500061007900540065007200
      6D007300440042005400610062006C0065005600690065007700310050006100
      79006D0065006E0074005400650072006D004E0061006D006500010042004500
      540041004C004E0049004E0047005300560049004C004C004B004F0052000100
      010001000D000A006700720064005000610079005400650072006D0073004400
      42005400610062006C0065005600690065007700310044006900730063006F00
      75006E007400310001004B004100530053004100520041004200410054005400
      0100010001000D000A006700720064005000610079005400650072006D007300
      440042005400610062006C006500560069006500770031004400650073006300
      720069007000740069006F006E0001004200450053004B005200490056004E00
      49004E0047000100010001000D000A0067007200640050006100790054006500
      72006D007300440042005400610062006C006500560069006500770031004600
      72006500690067006800740049006E0044006900730063006F0075006E007400
      010041006600740065007200200042004C000100010001000D000A0067007200
      64005000610079005400650072006D007300440042005400610062006C006500
      56006900650077003100460072006500690067006800740049006E0043006F00
      6D006D0069007300730069006F006E00010046007200690020006C0065007600
      6500720061006E00730020006D00E5006E00610064000100010001000D000A00
      6700720064005000610079005400650072006D00730044004200540061006200
      6C0065005600690065007700310043006F006D006D0069007300730069006F00
      6E0050006100690064004200790043007500730074006F006D00650072000100
      43006F006D006D0069007300730069006F006E00500061006900640042007900
      43007500730074006F006D00650072000100010001000D000A00670072006400
      5000610079005400650072006D007300440042005400610062006C0065005600
      69006500770031004C0061006E006700750061006700650043006F0064006500
      01004C0061006E006700750061006700650043006F0064006500010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540046006F00
      72006D005000610079006D0065006E0074005400650072006D00730001004D00
      53002000530061006E00730020005300650072006900660001004D0053002000
      530061006E00730020005300650072006900660001005400610068006F006D00
      61000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A006700720064005000610079005400650072006D0073004400
      42005400610062006C006500560069006500770031005000610079006D006500
      6E0074005400650072006D004E0061006D0065002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780054006500780074004500640069007400500072006F00700065007200
      7400690065007300010001000D000A0067007200640050006100790054006500
      72006D007300440042005400610062006C006500560069006500770031004600
      72006500690067006800740049006E0044006900730063006F0075006E007400
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790043006800650063006B0065006400010054007200750065000100
      01000D000A006700720064005000610079005400650072006D00730044004200
      5400610062006C00650056006900650077003100460072006500690067006800
      740049006E0044006900730063006F0075006E0074002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790055006E00
      63006800650063006B00650064000100460061006C0073006500010001000D00
      0A006700720064005000610079005400650072006D0073004400420054006100
      62006C0065005600690065007700310046007200650069006700680074004900
      6E0044006900730063006F0075006E0074002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780043006800650063006B0042006F007800500072006F007000650072007400
      690065007300010001000D000A00670072006400500061007900540065007200
      6D007300440042005400610062006C0065005600690065007700310046007200
      6500690067006800740049006E0043006F006D006D0069007300730069006F00
      6E002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790043006800650063006B006500640001005400720075006500
      010001000D000A006700720064005000610079005400650072006D0073004400
      42005400610062006C0065005600690065007700310046007200650069006700
      6800740049006E0043006F006D006D0069007300730069006F006E002E005000
      72006F0070006500720074006900650073002E0044006900730070006C006100
      790055006E0063006800650063006B00650064000100460061006C0073006500
      010001000D000A006700720064005000610079005400650072006D0073004400
      42005400610062006C0065005600690065007700310046007200650069006700
      6800740049006E0043006F006D006D0069007300730069006F006E002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D006500010054006300780043006800650063006B0042006F00780050007200
      6F007000650072007400690065007300010001000D000A007300740043006F00
      6C006C0065006300740069006F006E0073005F0055006E00690063006F006400
      65000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540046006F0072006D005000610079006D00
      65006E0074005400650072006D0073000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end