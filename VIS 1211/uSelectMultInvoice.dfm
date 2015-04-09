object fSelectMultInvoice: TfSelectMultInvoice
  Left = 229
  Top = 107
  ActiveControl = grdMultInvoice
  Caption = 'V'#228'lj en faktura'
  ClientHeight = 241
  ClientWidth = 462
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
    Top = 200
    Width = 462
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object grdMultInvoice: TcxGrid
    Left = 0
    Top = 0
    Width = 462
    Height = 200
    Align = alClient
    TabOrder = 1
    object grdMultInvoiceDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmVidaInvoice.ds_NoOfInvoices
      DataController.KeyFieldNames = 'InternalInvoiceNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdMultInvoiceDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 120
      end
      object grdMultInvoiceDBTableView1Fakturnr: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturnr'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 141
      end
      object grdMultInvoiceDBTableView1Fakturadatum: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturadatum'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 207
      end
    end
    object grdMultInvoiceLevel1: TcxGridLevel
      GridView = grdMultInvoiceDBTableView1
    end
  end
  object siLangLinked_fSelectMultInvoice: TsiLangLinked
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
    Left = 224
    Top = 128
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004D0075006C007400
      49006E0076006F0069006300650001005600E4006C006A00200065006E002000
      660061006B0074007500720061000100010001000D000A004200690074004200
      74006E00310001004F004B000100010001000D000A006700720064004D007500
      6C00740049006E0076006F00690063006500440042005400610062006C006500
      560069006500770031004C004F0001004C004F000100010001000D000A006700
      720064004D0075006C00740049006E0076006F00690063006500440042005400
      610062006C00650056006900650077003100460061006B007400750072006E00
      72000100460061006B007400750072006E0072000100010001000D000A006700
      720064004D0075006C00740049006E0076006F00690063006500440042005400
      610062006C00650056006900650077003100460061006B007400750072006100
      64006100740075006D000100460061006B007400750072006100640061007400
      75006D000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A0054006600530065006C006500630074004D0075006C00740049006E00
      76006F0069006300650001004D0053002000530061006E007300200053006500
      72006900660001004D0053002000530061006E00730020005300650072006900
      660001005400610068006F006D0061000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A0054006600530065006C006500630074004D007500
      6C00740049006E0076006F006900630065000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
