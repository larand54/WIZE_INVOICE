object fAttest_SetHdrInfo: TfAttest_SetHdrInfo
  Left = 359
  Top = 295
  ActiveControl = teSupplier_InvoiceNo
  Caption = 'Godk'#228'nn'
  ClientHeight = 373
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object meSupplier_InvoiceDate: TcxMaskEdit
    Left = 112
    Top = 168
    Properties.EditMask = '!99/99/00;1;_'
    Properties.MaxLength = 0
    TabOrder = 2
    Text = '  -  -  '
    Width = 121
  end
  object teSupplier_InvoiceNo: TcxTextEdit
    Left = 112
    Top = 120
    TabOrder = 1
    Width = 273
  end
  object memoNote: TcxMemo
    Left = 112
    Top = 216
    TabOrder = 3
    Height = 73
    Width = 329
  end
  object cxLabel1: TcxLabel
    Left = 112
    Top = 104
    Caption = 'Leverant'#246'rens fakturanr'
  end
  object cxLabel2: TcxLabel
    Left = 112
    Top = 152
    Caption = 'Leverant'#246'rens fakturadatum('#229'r-mm-dd)'
  end
  object cxLabel3: TcxLabel
    Left = 112
    Top = 200
    Caption = 'Intern'
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 320
    Width = 84
    Height = 33
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 7
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 320
    Width = 84
    Height = 33
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 8
    OnClick = BitBtn2Click
  end
  object cxLabel4: TcxLabel
    Left = 112
    Top = 8
    Caption = 'Belopp:'
  end
  object labelAmount: TcxLabel
    Left = 160
    Top = 8
    Caption = '0.0'
  end
  object lcShipper: TcxDBLookupComboBox
    Left = 112
    Top = 64
    DataBinding.DataField = 'Shipper'
    DataBinding.DataSource = dsMemSped
    Properties.ListColumns = <>
    Properties.ListOptions.ShowHeader = False
    TabOrder = 0
    Width = 321
  end
  object cxLabel5: TcxLabel
    Left = 112
    Top = 48
    Caption = 'Spedit'#246'r'
  end
  object MemSped: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 32
    Top = 48
    object MemSpedShipperNO: TIntegerField
      FieldName = 'ShipperNO'
    end
    object MemSpedShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_ActShippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNO'
      Size = 80
      Lookup = True
    end
  end
  object dsMemSped: TDataSource
    DataSet = MemSped
    Left = 32
    Top = 80
  end
  object siLangLinked_fAttest_SetHdrInfo: TsiLangLinked
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
      'Version')
    Left = 248
    Top = 192
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004100740074006500730074005F00530065007400
      48006400720049006E0066006F00010047006F0064006B00E4006E006E000100
      010001000D000A00630078004C006100620065006C0034000100420065006C00
      6F00700070003A000100010001000D000A00420069007400420074006E003200
      0100430061006E00630065006C000100010001000D000A00630078004C006100
      620065006C0035000100530070006500640069007400F6007200010001000100
      0D000A006C006100620065006C0041006D006F0075006E007400010030002E00
      30000100010001000D000A00630078004C006100620065006C00320001004C00
      650076006500720061006E007400F600720065006E0073002000660061006B00
      740075007200610064006100740075006D002800E50072002D006D006D002D00
      6400640029000100010001000D000A00630078004C006100620065006C003100
      01004C00650076006500720061006E007400F600720065006E00730020006600
      61006B0074007500720061006E0072000100010001000D000A00420069007400
      420074006E00310001004F004B000100010001000D000A00630078004C006100
      620065006C003300010049006E007400650072006E000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A007300740044006900730070006C00610079004C006100620065006C007300
      5F0055006E00690063006F00640065000D000A004D0065006D00530070006500
      640053006800690070007000650072004E004F00010053006800690070007000
      650072004E004F00010001000D000A004D0065006D0053007000650064005300
      6800690070007000650072000100530068006900700070006500720001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A00540066004100740074006500730074005F005300650074004800
      6400720049006E0066006F0001004D0053002000530061006E00730020005300
      650072006900660001004D0053002000530061006E0073002000530065007200
      6900660001005400610068006F006D0061000D000A00730074004D0075006C00
      740069004C0069006E00650073005F0055006E00690063006F00640065000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006D00650053007500
      700070006C006900650072005F0049006E0076006F0069006300650044006100
      740065002E0054006500780074000100200020002D00200020002D0020002000
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      66004100740074006500730074005F0053006500740048006400720049006E00
      66006F000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
