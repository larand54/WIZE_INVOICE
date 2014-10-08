object FormCurrency: TFormCurrency
  Left = 270
  Top = 126
  ActiveControl = grdCurr
  Caption = 'Valuta'
  ClientHeight = 455
  ClientWidth = 334
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
    Top = 404
    Width = 334
    Height = 51
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 415
    ExplicitWidth = 342
    object BitBtn1: TBitBtn
      Left = 88
      Top = 13
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 13
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdCurr: TcxGrid
    Left = 0
    Top = 0
    Width = 334
    Height = 404
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 342
    ExplicitHeight = 415
    object grdCurrDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.ds_Currency
      DataController.KeyFieldNames = 'CurrencyNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdCurrDBTableView1CurrencyName: TcxGridDBColumn
        Caption = 'VALUTA'
        DataBinding.FieldName = 'CurrencyName'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object grdCurrLevel1: TcxGridLevel
      GridView = grdCurrDBTableView1
    end
  end
  object siLangLinked_FormCurrency: TsiLangLinked
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
    Left = 160
    Top = 232
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0072006D00430075007200720065006E006300
      79000100560061006C00750074006100010001000D000A004200690074004200
      74006E00310001004F004B00010001000D000A00420069007400420074006E00
      32000100430061006E00630065006C00010001000D000A006700720064004300
      750072007200440042005400610062006C006500560069006500770031004300
      75007200720065006E00630079004E0061006D0065000100560041004C005500
      54004100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      7300740046006F006E00740073005F0055006E00690063006F00640065000D00
      0A00540046006F0072006D00430075007200720065006E006300790001004D00
      53002000530061006E007300200053006500720069006600010001000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A006700720064004300750072007200440042005400610062006C0065005600
      6900650077003100430075007200720065006E00630079004E0061006D006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A00540046006F0072006D0043007500720072006500
      6E00630079000100440045004600410055004C0054005F004300480041005200
      530045005400010001000D000A00}
  end
end
