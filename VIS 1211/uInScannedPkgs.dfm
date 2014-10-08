object fInScannedPkgs: TfInScannedPkgs
  Left = 229
  Top = 107
  Caption = 'Skapade laster'
  ClientHeight = 341
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = acOpen
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Action = acClose
      TabOrder = 1
    end
  end
  object grdCreatedLoads: TcxGrid
    Left = 0
    Top = 41
    Width = 447
    Height = 300
    Align = alClient
    TabOrder = 1
    object grdCreatedLoadsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsImportedLoads
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCreatedLoadsDBTableView1LoadNo: TcxGridDBColumn
        DataBinding.FieldName = 'LoadNo'
      end
      object grdCreatedLoadsDBTableView1LONo: TcxGridDBColumn
        DataBinding.FieldName = 'LONo'
      end
    end
    object grdCreatedLoadsLevel1: TcxGridLevel
      GridView = grdCreatedLoadsDBTableView1
    end
  end
  object dsImportedLoads: TDataSource
    DataSet = frmLoadOrder.mtImportedLoads
    Left = 200
    Top = 88
  end
  object ActionList1: TActionList
    Left = 296
    Top = 136
    object acOpen: TAction
      Caption = #214'ppna'
      OnExecute = acOpenExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
  end
  object siLangLinked_fInScannedPkgs: TsiLangLinked
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
    Left = 216
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660049006E005300630061006E006E00650064005000
      6B0067007300010053006B006100700061006400650020006C00610073007400
      65007200010001000D000A006700720064004300720065006100740065006400
      4C006F00610064007300440042005400610062006C0065005600690065007700
      31004C006F00610064004E006F0001004C006F00610064004E006F0001000100
      0D000A0067007200640043007200650061007400650064004C006F0061006400
      7300440042005400610062006C006500560069006500770031004C004F004E00
      6F0001004C004F004E006F00010001000D000A00610063004F00700065006E00
      0100D600700070006E006100010001000D000A006100630043006C006F007300
      6500010053007400E4006E006700010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400660049006E005300630061006E006E006500
      640050006B006700730001004D0053002000530061006E007300200053006500
      720069006600010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007300
      7400430068006100720053006500740073005F0055006E00690063006F006400
      65000D000A005400660049006E005300630061006E006E006500640050006B00
      670073000100440045004600410055004C0054005F0043004800410052005300
      45005400010001000D000A00}
  end
end
