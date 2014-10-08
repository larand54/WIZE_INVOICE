object fCity: TfCity
  Left = 317
  Top = 137
  Caption = 'ORT'
  ClientHeight = 440
  ClientWidth = 467
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
    Top = 42
    Width = 467
    Height = 398
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Cancel.Visible = True
      DataController.DataSource = ds_city
      DataController.KeyFieldNames = 'CityNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CityName: TcxGridDBColumn
        Caption = 'ORT'
        DataBinding.FieldName = 'CityName'
        PropertiesClassName = 'TcxMaskEditProperties'
        SortIndex = 0
        SortOrder = soAscending
        Width = 359
      end
      object cxGrid1DBTableView1CityNo: TcxGridDBColumn
        DataBinding.FieldName = 'CityNo'
        PropertiesClassName = 'TcxMaskEditProperties'
        Visible = False
      end
      object cxGrid1DBTableView1ImpVerk: TcxGridDBColumn
        DataBinding.FieldName = 'ImpVerk'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 114
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 467
    Height = 42
    Align = dalTop
    BarManager = dxBarManager1
  end
  object ActionList1: TActionList
    Left = 184
    Top = 152
    object Delete_UT: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Ta bort F5'
      ImageIndex = 0
      ShortCut = 116
      OnExecute = Delete_UTExecute
      DataSource = ds_city
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
    object acCancelChanges: TAction
      Category = 'Dataset'
      Caption = #197'ngra F4'
      ImageIndex = 3
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acNewCity: TAction
      Caption = 'L'#228'gg till F2'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = acNewCityExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    UseSystemFont = True
    Left = 168
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
      Action = acNewCity
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
      Action = acCancelChanges
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
    Left = 96
    Top = 88
    object ngraF41: TMenuItem
      Action = acCancelChanges
    end
    object StngF121: TMenuItem
      Action = acExit
    end
    object NyF21: TMenuItem
      Caption = 'Ny F2'
      ImageIndex = 1
      ShortCut = 113
    end
    object Lggtill1: TMenuItem
      Action = acNewCity
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object abortF51: TMenuItem
      Action = Delete_UT
    end
  end
  object ds_city: TDataSource
    DataSet = dmsContact.FD_City
    Left = 88
    Top = 152
  end
  object siLangLinked_fCity: TsiLangLinked
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
    Left = 224
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600430069007400790001004F005200540001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310043006900740079004E0061006D00650001004F005200
      5400010001000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310043006900740079004E006F0001004300
      6900740079004E006F00010001000D000A006300780047007200690064003100
      440042005400610062006C0065005600690065007700310049006D0070005600
      650072006B00010049006D0070007200650067006E006500720069006E006700
      73006F0072007400010001000D000A00440065006C006500740065005F005500
      5400010054006100200062006F0072007400200046003500010001000D000A00
      610063004500780069007400010053007400E4006E0067002000460031003200
      010001000D000A00610063005300610076006500010053007000610072006100
      200046003300010001000D000A0061006300430061006E00630065006C004300
      680061006E006700650073000100C5006E006700720061002000460034000100
      01000D000A00610063004E0065007700430069007400790001004C00E4006700
      67002000740069006C006C00200046003200010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004300
      7500730074006F006D0020003100010001000D000A0064007800420061007200
      4C00610072006700650042007500740074006F006E003200010026004C00E400
      670067002000740069006C006C002000730070007200E5006B00010001000D00
      0A004E00790046003200310001004E007900200046003200010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A00640078004200610072004C00610072006700650042007500740074006F00
      6E00320001004C00E400670067002000740069006C006C002000730070007200
      E5006B00010001000D000A007300740044006900730070006C00610079004C00
      6100620065006C0073005F0055006E00690063006F00640065000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      54006600430069007400790001004D0053002000530061006E00730020005300
      6500720069006600010001000D000A00640078004200610072004D0061006E00
      6100670065007200310001005300650067006F00650020005500490001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      61007200310001005300650067006F006500200055004900010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A00640078004200610072004D0061006E0061006700
      6500720031002E00430061007400650067006F00720069006500730001004400
      65006600610075006C007400010001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310043006900740079004E0061006D006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004D00610073006B004500640069007400
      500072006F007000650072007400690065007300010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      310043006900740079004E006F002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004D00
      610073006B004500640069007400500072006F00700065007200740069006500
      7300010001000D000A0063007800470072006900640031004400420054006100
      62006C0065005600690065007700310049006D0070005600650072006B002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790043006800650063006B00650064000100540072007500650001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310049006D0070005600650072006B002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001000100
      0D000A006300780047007200690064003100440042005400610062006C006500
      5600690065007700310049006D0070005600650072006B002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780043006800650063006B0042006F007800500072006F007000
      650072007400690065007300010001000D000A00640078004200610072004D00
      61006E006100670065007200310042006100720031002E004F006C0064004E00
      61006D006500010043007500730074006F006D0020003100010001000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600430069007400
      79000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00640078004200610072004D0061006E00610067006500
      720031000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      4300480041005200530045005400010001000D000A00}
  end
end
