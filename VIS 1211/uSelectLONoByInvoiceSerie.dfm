object fSelectLONoByInvoiceSerie: TfSelectLONoByInvoiceSerie
  Left = 229
  Top = 107
  Caption = 'Multipla fakturanr'
  ClientHeight = 301
  ClientWidth = 420
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
    Top = 0
    Width = 420
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 260
    Width = 420
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 144
      Top = 8
      Width = 75
      Height = 28
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 8
      Width = 75
      Height = 28
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdSelectLONo: TcxGrid
    Left = 0
    Top = 41
    Width = 420
    Height = 219
    Align = alClient
    TabOrder = 2
    object grdSelectLONoDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = daMoLM1.ds_GetLOByInvNo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdSelectLONoDBTableView1LO: TcxGridDBColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 175
      end
      object grdSelectLONoDBTableView1Fakturaserie: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturaserie'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 298
      end
      object grdSelectLONoDBTableView1InternalInvoiceNo: TcxGridDBColumn
        DataBinding.FieldName = 'InternalInvoiceNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 159
      end
      object grdSelectLONoDBTableView1InvoiceType: TcxGridDBColumn
        DataBinding.FieldName = 'InvoiceType'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 157
      end
      object grdSelectLONoDBTableView1Fakturanr: TcxGridDBColumn
        DataBinding.FieldName = 'Fakturanr'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 195
      end
    end
    object grdSelectLONoLevel1: TcxGridLevel
      GridView = grdSelectLONoDBTableView1
    end
  end
  object siLangLinked_fSelectLONoByInvoiceSerie: TsiLangLinked
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
    Left = 208
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C004F004E006F00
      4200790049006E0076006F006900630065005300650072006900650001004D00
      75006C007400690070006C0061002000660061006B0074007500720061006E00
      72000100010001000D000A00420069007400420074006E00310001004F004B00
      0100010001000D000A00420069007400420074006E0032000100430061006E00
      630065006C000100010001000D000A00670072006400530065006C0065006300
      74004C004F004E006F00440042005400610062006C0065005600690065007700
      31004C004F0001004C004F000100010001000D000A0067007200640053006500
      6C006500630074004C004F004E006F00440042005400610062006C0065005600
      6900650077003100460061006B00740075007200610073006500720069006500
      0100460061006B00740075007200610073006500720069006500010001000100
      0D000A00670072006400530065006C006500630074004C004F004E006F004400
      42005400610062006C0065005600690065007700310049006E00740065007200
      6E0061006C0049006E0076006F006900630065004E006F00010049006E007400
      650072006E0061006C0049006E0076006F006900630065004E006F0001000100
      01000D000A00670072006400530065006C006500630074004C004F004E006F00
      440042005400610062006C0065005600690065007700310049006E0076006F00
      6900630065005400790070006500010049006E0076006F006900630065005400
      7900700065000100010001000D000A00670072006400530065006C0065006300
      74004C004F004E006F00440042005400610062006C0065005600690065007700
      3100460061006B0074007500720061006E0072000100460061006B0074007500
      720061006E0072000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C004F004E006F00
      4200790049006E0076006F006900630065005300650072006900650001004D00
      53002000530061006E00730020005300650072006900660001004D0053002000
      530061006E00730020005300650072006900660001005400610068006F006D00
      61000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A007300740053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A00730074004F007400
      68006500720053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      6600530065006C006500630074004C004F004E006F004200790049006E007600
      6F00690063006500530065007200690065000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
