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
    UseSystemFont = False
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
    Left = 224
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600430069007400790001004F005200540001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      65005600690065007700310043006900740079004E0061006D00650001004F00
      520054000100010001000D000A00630078004700720069006400310044004200
      5400610062006C0065005600690065007700310043006900740079004E006F00
      010043006900740079004E006F000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004900
      6D0070005600650072006B00010049006D0070007200650067006E0065007200
      69006E00670073006F00720074000100010001000D000A00440065006C006500
      740065005F0055005400010054006100200062006F0072007400200046003500
      0100010001000D000A00610063004500780069007400010053007400E4006E00
      670020004600310032000100010001000D000A00610063005300610076006500
      0100530070006100720061002000460033000100010001000D000A0061006300
      430061006E00630065006C004300680061006E006700650073000100C5006E00
      6700720061002000460034000100010001000D000A00610063004E0065007700
      430069007400790001004C00E400670067002000740069006C006C0020004600
      32000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031004200610072003100010043007500730074006F006D0020003100
      0100010001000D000A00640078004200610072004C0061007200670065004200
      7500740074006F006E003200010026004C00E400670067002000740069006C00
      6C002000730070007200E5006B000100010001000D000A004E00790046003200
      310001004E0079002000460032000100010001000D000A007300740048006900
      6E00740073005F0055006E00690063006F00640065000D000A00640078004200
      610072004C00610072006700650042007500740074006F006E00320001004C00
      E400670067002000740069006C006C002000730070007200E5006B0001000100
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660043006900
      7400790001004D0053002000530061006E007300200053006500720069006600
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F006500200055004900010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      6700650072003100420061007200310001005300650067006F00650020005500
      4900010001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A00640078004200610072004D0061006E00610067006500720031002E004300
      61007400650067006F0072006900650073000100440065006600610075006C00
      7400010001000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310043006900740079004E0061006D0065002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004D00610073006B004500640069007400500072006F0070006500
      72007400690065007300010001000D000A006300780047007200690064003100
      440042005400610062006C006500560069006500770031004300690074007900
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004D00610073006B0045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      6300780047007200690064003100440042005400610062006C00650056006900
      65007700310049006D0070005600650072006B002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B006500640001005400720075006500010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      49006D0070005600650072006B002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790055006E006300680065006300
      6B00650064000100460061006C0073006500010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      49006D0070005600650072006B002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      6800650063006B0042006F007800500072006F00700065007200740069006500
      7300010001000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720031002E004F006C0064004E0061006D00650001004300
      7500730074006F006D0020003100010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400660043006900740079000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      4200610072004D0061006E006100670065007200310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
