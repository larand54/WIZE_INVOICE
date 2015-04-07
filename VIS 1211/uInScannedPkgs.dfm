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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 216
    Top = 176
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660049006E005300630061006E006E00650064005000
      6B0067007300010053006B006100700061006400650020006C00610073007400
      650072000100010001000D000A00670072006400430072006500610074006500
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031004C006F00610064004E006F0001004C006F00610064004E006F000100
      010001000D000A0067007200640043007200650061007400650064004C006F00
      610064007300440042005400610062006C006500560069006500770031004C00
      4F004E006F0001004C004F004E006F000100010001000D000A00610063004F00
      700065006E000100D600700070006E0061000100010001000D000A0061006300
      43006C006F0073006500010053007400E4006E0067000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A007300740046006F006E007400
      73005F0055006E00690063006F00640065000D000A005400660049006E005300
      630061006E006E006500640050006B006700730001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A005400660049006E005300
      630061006E006E006500640050006B0067007300010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00}
  end
end
