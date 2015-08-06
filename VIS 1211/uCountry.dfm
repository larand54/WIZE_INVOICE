object fCountry: TfCountry
  Left = 288
  Top = 181
  Caption = 'LAND'
  ClientHeight = 440
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 495
    Height = 399
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      DataController.DataSource = dmsContact.ds_Country
      DataController.KeyFieldNames = 'CountryNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CountryName: TcxGridDBColumn
        DataBinding.FieldName = 'CountryName'
        PropertiesClassName = 'TcxMaskEditProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 249
      end
      object cxGrid1DBTableView1CountryCode: TcxGridDBColumn
        DataBinding.FieldName = 'CountryCode'
        PropertiesClassName = 'TcxMaskEditProperties'
        Width = 108
      end
      object cxGrid1DBTableView1CountryPhoneCode: TcxGridDBColumn
        DataBinding.FieldName = 'CountryPhoneCode'
        PropertiesClassName = 'TcxMaskEditProperties'
        Width = 137
      end
      object cxGrid1DBTableView1MarketRegionNo: TcxGridDBColumn
        DataBinding.FieldName = 'MarketRegionNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1CountryNo: TcxGridDBColumn
        DataBinding.FieldName = 'CountryNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1ModifiedUser: TcxGridDBColumn
        DataBinding.FieldName = 'ModifiedUser'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 495
    Height = 41
    Align = dalTop
    BarManager = dxBarManager1
  end
  object ActionList1: TActionList
    Left = 304
    Top = 176
    object Delete_UT: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Ta bort F5'
      ImageIndex = 0
      ShortCut = 116
      OnExecute = Delete_UTExecute
      DataSource = dmsContact.ds_Country
    end
    object acExit: TAction
      Category = 'Dataset'
      Caption = 'St'#228'ng F12'
      ImageIndex = 5
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acSave: TAction
      Category = 'Dataset'
      Caption = 'Spara F3'
      ImageIndex = 2
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancel: TAction
      Category = 'Dataset'
      Caption = #197'ngra F4'
      ImageIndex = 3
      ShortCut = 115
      OnExecute = acCancelExecute
      OnUpdate = acCancelUpdate
    end
    object acAddCountry: TAction
      Category = 'Dataset'
      Caption = 'Nytt land F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acAddCountryExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 248
    Top = 200
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acAddCountry
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = '&L'#228'gg till spr'#229'k'
      Category = 0
      Hint = 'L'#228'gg till spr'#229'k'
      Visible = ivAlways
      LargeImageIndex = 8
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acCancel
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = Delete_UT
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 80
    Top = 112
    object NyttlandF21: TMenuItem
      Action = acAddCountry
    end
    object ngraF41: TMenuItem
      Action = acCancel
    end
    object StngF121: TMenuItem
      Action = acExit
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object abortF51: TMenuItem
      Action = Delete_UT
    end
  end
  object siLangLinked_fCountry: TsiLangLinked
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
    Left = 240
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660043006F0075006E0074007200790001004C004100
      4E0044000100010001000D000A00630078004700720069006400310044004200
      5400610062006C0065005600690065007700310043006F0075006E0074007200
      79004E0061006D006500010043006F0075006E007400720079004E0061006D00
      65000100010001000D000A006300780047007200690064003100440042005400
      610062006C0065005600690065007700310043006F0075006E00740072007900
      43006F0064006500010043006F0075006E0074007200790043006F0064006500
      0100010001000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310043006F0075006E007400720079005000
      68006F006E00650043006F0064006500010043006F0075006E00740072007900
      500068006F006E00650043006F00640065000100010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      31004D00610072006B006500740052006500670069006F006E004E006F000100
      4D00610072006B006500740052006500670069006F006E004E006F0001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      65005600690065007700310043006F0075006E007400720079004E006F000100
      43006F0075006E007400720079004E006F000100010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      3100440061007400650043007200650061007400650064000100440061007400
      650043007200650061007400650064000100010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      4D006F00640069006600690065006400550073006500720001004D006F006400
      6900660069006500640055007300650072000100010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      3100430072006500610074006500640055007300650072000100430072006500
      610074006500640055007300650072000100010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      530065007100750065006E00630065004E006F00010053006500710075006500
      6E00630065004E006F000100010001000D000A00440065006C00650074006500
      5F0055005400010054006100200062006F007200740020004600350001000100
      01000D000A00610063004500780069007400010053007400E4006E0067002000
      4600310032000100010001000D000A0061006300530061007600650001005300
      70006100720061002000460033000100010001000D000A006100630043006100
      6E00630065006C000100C5006E00670072006100200046003400010001000100
      0D000A006100630041006400640043006F0075006E0074007200790001004E00
      79007400740020006C0061006E0064002000460032000100010001000D000A00
      640078004200610072004D0061006E0061006700650072003100420061007200
      3100010043007500730074006F006D00200031000100010001000D000A006400
      78004200610072004C00610072006700650042007500740074006F006E003200
      010026004C00E400670067002000740069006C006C002000730070007200E500
      6B000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A00640078004200610072004C00610072006700
      650042007500740074006F006E00320001004C00E40067006700200074006900
      6C006C002000730070007200E5006B00010001000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400660043006F0075006E007400720079000100
      4D0053002000530061006E00730020005300650072006900660001004D005300
      2000530061006E00730020005300650072006900660001005400610068006F00
      6D0061000D000A00640078004200610072004D0061006E006100670065007200
      310001005300650067006F006500200055004900010001005400610068006F00
      6D0061000D000A00640078004200610072004D0061006E006100670065007200
      3100420061007200310001005300650067006F00650020005500490001000100
      5400610068006F006D0061000D000A00730074004D0075006C00740069004C00
      69006E00650073005F0055006E00690063006F00640065000D000A0064007800
      4200610072004D0061006E00610067006500720031002E004300610074006500
      67006F0072006900650073000100440065006600610075006C00740001000100
      0D000A007300740053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A00730074004F0074006800650072005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400430068006100720053006500740073005F005500
      6E00690063006F00640065000D000A005400660043006F0075006E0074007200
      79000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00640078004200610072004D0061006E0061006700650072003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720031000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00}
  end
end
