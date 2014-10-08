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
    ExplicitTop = 412
    ExplicitWidth = 889
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
    ExplicitWidth = 889
    ExplicitHeight = 412
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
    NumOfLanguages = 2
    ActiveLanguage = 2
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Swedish'
      'English')
    Language = 'English'
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
      760069006C006C006B006F007200010001000D000A0042006900740042007400
      6E00310001004F004B00010001000D000A00420069007400420074006E003200
      0100430061006E00630065006C00010001000D000A0067007200640050006100
      79005400650072006D007300440042005400610062006C006500560069006500
      770031005000610079006D0065006E0074005400650072006D0073004E006F00
      01005000610079006D0065006E0074005400650072006D0073004E006F000100
      01000D000A006700720064005000610079005400650072006D00730044004200
      5400610062006C006500560069006500770031005000610079006D0065006E00
      74005400650072006D004E0061006D006500010042004500540041004C004E00
      49004E0047005300560049004C004C004B004F005200010001000D000A006700
      720064005000610079005400650072006D007300440042005400610062006C00
      65005600690065007700310044006900730063006F0075006E00740031000100
      4B004100530053004100520041004200410054005400010001000D000A006700
      720064005000610079005400650072006D007300440042005400610062006C00
      6500560069006500770031004400650073006300720069007000740069006F00
      6E0001004200450053004B005200490056004E0049004E004700010001000D00
      0A006700720064005000610079005400650072006D0073004400420054006100
      62006C0065005600690065007700310046007200650069006700680074004900
      6E0044006900730063006F0075006E0074000100410066007400650072002000
      42004C00010001000D000A006700720064005000610079005400650072006D00
      7300440042005400610062006C00650056006900650077003100460072006500
      690067006800740049006E0043006F006D006D0069007300730069006F006E00
      010046007200690020006C00650076006500720061006E00730020006D00E500
      6E0061006400010001000D000A00670072006400500061007900540065007200
      6D007300440042005400610062006C0065005600690065007700310043006F00
      6D006D0069007300730069006F006E0050006100690064004200790043007500
      730074006F006D0065007200010043006F006D006D0069007300730069006F00
      6E0050006100690064004200790043007500730074006F006D00650072000100
      01000D000A006700720064005000610079005400650072006D00730044004200
      5400610062006C006500560069006500770031004C0061006E00670075006100
      6700650043006F006400650001004C0061006E00670075006100670065004300
      6F0064006500010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A00540046006F0072006D005000610079006D0065006E00740054006500
      72006D00730001004D0053002000530061006E00730020005300650072006900
      6600010001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006700720064005000610079005400650072006D00
      7300440042005400610062006C00650056006900650077003100500061007900
      6D0065006E0074005400650072006D004E0061006D0065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780054006500780074004500640069007400500072006F007000
      650072007400690065007300010001000D000A00670072006400500061007900
      5400650072006D007300440042005400610062006C0065005600690065007700
      3100460072006500690067006800740049006E0044006900730063006F007500
      6E0074002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790043006800650063006B00650064000100540072007500
      6500010001000D000A006700720064005000610079005400650072006D007300
      440042005400610062006C006500560069006500770031004600720065006900
      67006800740049006E0044006900730063006F0075006E0074002E0050007200
      6F0070006500720074006900650073002E0044006900730070006C0061007900
      55006E0063006800650063006B00650064000100460061006C00730065000100
      01000D000A006700720064005000610079005400650072006D00730044004200
      5400610062006C00650056006900650077003100460072006500690067006800
      740049006E0044006900730063006F0075006E0074002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      54006300780043006800650063006B0042006F007800500072006F0070006500
      72007400690065007300010001000D000A006700720064005000610079005400
      650072006D007300440042005400610062006C00650056006900650077003100
      460072006500690067006800740049006E0043006F006D006D00690073007300
      69006F006E002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790043006800650063006B0065006400010054007200
      75006500010001000D000A006700720064005000610079005400650072006D00
      7300440042005400610062006C00650056006900650077003100460072006500
      690067006800740049006E0043006F006D006D0069007300730069006F006E00
      2E00500072006F0070006500720074006900650073002E004400690073007000
      6C006100790055006E0063006800650063006B00650064000100460061006C00
      73006500010001000D000A006700720064005000610079005400650072006D00
      7300440042005400610062006C00650056006900650077003100460072006500
      690067006800740049006E0043006F006D006D0069007300730069006F006E00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780043006800650063006B0042006F007800
      500072006F007000650072007400690065007300010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00540046006F0072006D0050006100
      79006D0065006E0074005400650072006D007300010044004500460041005500
      4C0054005F004300480041005200530045005400010001000D000A00}
  end
end
