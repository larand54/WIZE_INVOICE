object FormAddress: TFormAddress
  Left = 79
  Top = 114
  ActiveControl = grdAdr
  Caption = 'Adress'
  ClientHeight = 570
  ClientWidth = 857
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
    Top = 524
    Width = 857
    Height = 46
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdAdr: TcxGrid
    Left = 0
    Top = 0
    Width = 857
    Height = 524
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object grdAdrDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmModule1.dsClientAddress
      DataController.KeyFieldNames = 'ADDRESS_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdAdrDBTableView1ADDRESS_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_NO'
        Width = 100
      end
      object grdAdrDBTableView1ADDRESS_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_NAME'
        Width = 130
      end
      object grdAdrDBTableView1ADDRESSLINE1: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE1'
        Width = 147
      end
      object grdAdrDBTableView1ADDRESSLINE2: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE2'
        Width = 132
      end
      object grdAdrDBTableView1ADDRESSLINE3: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE3'
        Width = 127
      end
      object grdAdrDBTableView1ADDRESSLINE4: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE4'
        Width = 123
      end
      object grdAdrDBTableView1POSTALCODE: TcxGridDBColumn
        DataBinding.FieldName = 'POSTALCODE'
        Width = 102
      end
      object grdAdrDBTableView1CITY: TcxGridDBColumn
        DataBinding.FieldName = 'CITY'
        Width = 114
      end
      object grdAdrDBTableView1COUNTRY: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTRY'
        Width = 99
      end
      object grdAdrDBTableView1PROVINCE: TcxGridDBColumn
        DataBinding.FieldName = 'PROVINCE'
        Width = 87
      end
    end
    object grdAdrLevel1: TcxGridLevel
      GridView = grdAdrDBTableView1
    end
  end
  object siLangLinked_FormAddress: TsiLangLinked
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
    Left = 424
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D004100640064007200650073007300
      01004100640072006500730073000100010001000D000A004200690074004200
      74006E00310001004F004B000100010001000D000A0042006900740042007400
      6E0032000100430061006E00630065006C000100010001000D000A0067007200
      6400410064007200440042005400610062006C00650056006900650077003100
      41004400440052004500530053005F004E004F00010041004400440052004500
      530053005F004E004F000100010001000D000A00670072006400410064007200
      440042005400610062006C006500560069006500770031004100440044005200
      4500530053005F004E0041004D00450001004100440044005200450053005300
      5F004E0041004D0045000100010001000D000A00670072006400410064007200
      440042005400610062006C006500560069006500770031004100440044005200
      4500530053004C0049004E004500310001004100440044005200450053005300
      4C0049004E00450031000100010001000D000A00670072006400410064007200
      440042005400610062006C006500560069006500770031004100440044005200
      4500530053004C0049004E004500320001004100440044005200450053005300
      4C0049004E00450032000100010001000D000A00670072006400410064007200
      440042005400610062006C006500560069006500770031004100440044005200
      4500530053004C0049004E004500330001004100440044005200450053005300
      4C0049004E00450033000100010001000D000A00670072006400410064007200
      440042005400610062006C006500560069006500770031004100440044005200
      4500530053004C0049004E004500340001004100440044005200450053005300
      4C0049004E00450034000100010001000D000A00670072006400410064007200
      440042005400610062006C0065005600690065007700310050004F0053005400
      41004C0043004F0044004500010050004F005300540041004C0043004F004400
      45000100010001000D000A006700720064004100640072004400420054006100
      62006C0065005600690065007700310043004900540059000100430049005400
      59000100010001000D000A006700720064004100640072004400420054006100
      62006C0065005600690065007700310043004F0055004E005400520059000100
      43004F0055004E005400520059000100010001000D000A006700720064004100
      64007200440042005400610062006C0065005600690065007700310050005200
      4F00560049004E00430045000100500052004F00560049004E00430045000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      46006F0072006D00410064006400720065007300730001004D00530020005300
      61006E00730020005300650072006900660001004D0053002000530061006E00
      730020005300650072006900660001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A007300740043006F006C006C0065006300740069006F006E0073005F005500
      6E00690063006F00640065000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A00540046006F007200
      6D0041006400640072006500730073000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00}
  end
end
