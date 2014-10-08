object FormSelectClient: TFormSelectClient
  Left = 317
  Top = 96
  ActiveControl = grdClients
  Caption = 'Klientlista'
  ClientHeight = 442
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 502
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 412
    ExplicitWidth = 510
    object BitBtn1: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdClients: TcxGrid
    Left = 0
    Top = 33
    Width = 502
    Height = 368
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 510
    ExplicitHeight = 379
    object grdClientsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmModule1.dsClient
      DataController.KeyFieldNames = 'ClientNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdClientsDBTableView1ClientName: TcxGridDBColumn
        Caption = 'KLIENT'
        DataBinding.FieldName = 'ClientName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object grdClientsLevel1: TcxGridLevel
      GridView = grdClientsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 33
    Align = alTop
    Caption = 'Skriv in klienten du s'#246'ker...'
    TabOrder = 2
    ExplicitWidth = 510
  end
  object siLangLinked_FormSelectClient: TsiLangLinked
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
    Left = 248
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D00530065006C006500630074004300
      6C00690065006E00740001004B006C00690065006E0074006C00690073007400
      6100010001000D000A00420069007400420074006E00310001004F004B000100
      01000D000A00420069007400420074006E0032000100430061006E0063006500
      6C00010001000D000A0067007200640043006C00690065006E00740073004400
      42005400610062006C0065005600690065007700310043006C00690065006E00
      74004E0061006D00650001004B004C00490045004E005400010001000D000A00
      500061006E0065006C003200010053006B00720069007600200069006E002000
      6B006C00690065006E00740065006E0020006400750020007300F6006B006500
      72002E002E002E00010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00540046006F0072006D00530065006C0065006300740043006C00
      690065006E00740001004D0053002000530061006E0073002000530065007200
      69006600010001000D000A00730074004D0075006C00740069004C0069006E00
      650073005F0055006E00690063006F00640065000D000A007300740053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      74004F00740068006500720053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A0067007200640043006C00690065006E007400
      7300440042005400610062006C0065005600690065007700310043006C006900
      65006E0074004E0061006D0065002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078005400
      6500780074004500640069007400500072006F00700065007200740069006500
      7300010001000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A007300740043006800
      6100720053006500740073005F0055006E00690063006F00640065000D000A00
      540046006F0072006D00530065006C0065006300740043006C00690065006E00
      74000100440045004600410055004C0054005F00430048004100520053004500
      5400010001000D000A00}
  end
end
