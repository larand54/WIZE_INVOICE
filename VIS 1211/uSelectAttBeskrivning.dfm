object fSelectAttBeskrivning: TfSelectAttBeskrivning
  Left = 372
  Top = 328
  ActiveControl = cbDescription
  Caption = 'V'#228'lj beskrivning'
  ClientHeight = 216
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Beskrivning: TcxLabel
    Left = 88
    Top = 76
    Caption = 'Beskrivning'
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 462
    Height = 65
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 168
      Top = 16
      Width = 97
      Height = 27
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object cbDescription: TcxDBComboBox
    Left = 168
    Top = 72
    DataBinding.DataField = 'Description'
    DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
    Properties.ImmediatePost = True
    Properties.Items.Strings = (
      'Arbete'
      'Vara')
    TabOrder = 2
    Width = 149
  end
  object siLangLinked_fSelectAttBeskrivning: TsiLangLinked
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
    Left = 224
    Top = 112
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004100740074004200
      650073006B007200690076006E0069006E00670001005600E4006C006A002000
      6200650073006B007200690076006E0069006E0067000100010001000D000A00
      4200650073006B007200690076006E0069006E00670001004200650073006B00
      7200690076006E0069006E0067000100010001000D000A004200690074004200
      74006E00310001004F004B000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A0054006600530065006C0065006300740041007400
      74004200650073006B007200690076006E0069006E00670001004D0053002000
      530061006E00730020005300650072006900660001004D005300200053006100
      6E00730020005300650072006900660001005400610068006F006D0061000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A00630062004400650073006300720069007000
      740069006F006E002E00500072006F0070006500720074006900650073002E00
      4900740065006D00730001004100720062006500740065002C00560061007200
      6100010001000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A0054006600530065006C00
      6500630074004100740074004200650073006B007200690076006E0069006E00
      67000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00}
  end
end
