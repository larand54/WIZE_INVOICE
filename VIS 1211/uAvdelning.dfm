inherited fAvdelning: TfAvdelning
  Caption = 'Avdelning'
  ClientHeight = 700
  ClientWidth = 1049
  ExplicitWidth = 1065
  ExplicitHeight = 738
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel5: TPanel
    Width = 1049
    ExplicitWidth = 1049
    inherited Panel2: TPanel
      Left = 939
      ExplicitLeft = 939
    end
  end
  inherited Panel1: TPanel
    Top = 659
    Width = 1049
    ExplicitTop = 659
    ExplicitWidth = 1049
  end
  inherited cxGrid1: TcxGrid
    Top = 81
    Width = 1049
    Height = 578
    ExplicitTop = 81
    ExplicitWidth = 1049
    ExplicitHeight = 578
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'Kontonr'
          Column = cxGrid1DBTableView1Kontonr
        end>
      NewItemRow.Visible = True
      object cxGrid1DBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        Visible = False
      end
      object cxGrid1DBTableView1Kontonr: TcxGridDBColumn
        DataBinding.FieldName = 'Kontonr'
      end
      object cxGrid1DBTableView1Avdelning: TcxGridDBColumn
        DataBinding.FieldName = 'Avdelning'
      end
      object cxGrid1DBTableView1CreatedUser: TcxGridDBColumn
        DataBinding.FieldName = 'CreatedUser'
        Visible = False
      end
      object cxGrid1DBTableView1DateCreated: TcxGridDBColumn
        Caption = 'Skapad'
        DataBinding.FieldName = 'DateCreated'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 41
    Width = 1049
    Height = 40
    Align = alTop
    TabOrder = 3
    object lcClient: TcxDBLookupComboBox
      Left = 169
      Top = 6
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = ds_Client
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 328
    end
    object cxLabel1: TcxLabel
      Left = 72
      Top = 8
      Caption = 'F'#246'rs'#228'ljningsregion:'
    end
  end
  inherited imglistActions: TImageList
    Left = 344
    Top = 221
  end
  inherited ActionList_DBForm: TActionList
    Left = 348
    Top = 164
    inherited acAddRecord: TAction
      OnUpdate = acAddRecordUpdate
    end
    object acRefresh: TAction
      Caption = 'Uppdatera'
      ImageIndex = 1
      OnExecute = acRefreshExecute
    end
  end
  inherited DataSource1: TDataSource
    DataSet = cds_Avdelning
    Left = 208
    Top = 216
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 80
    Top = 224
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      BuiltInReportLink = True
    end
  end
  inherited PopupMenu2: TPopupMenu
    Left = 80
    Top = 168
  end
  object ds_Client: TDataSource [10]
    DataSet = mtClient
    Left = 480
    Top = 104
  end
  object mtClient: TFDMemTable [11]
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 480
    Top = 56
    object mtClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      OnChange = mtClientClientNoChange
    end
    object mtClientVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
  end
  object cds_Avdelning: TFDQuery [12]
    AfterInsert = cds_AvdelningAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    SQL.Strings = (
      'Select * FROM dbo.Avdelning'
      'WHERE ClientNo = :ClientNo')
    Left = 472
    Top = 228
    ParamData = <
      item
        Name = 'CLIENTNO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_AvdelningClientNo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_AvdelningKontonr: TStringField
      FieldName = 'Kontonr'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object cds_AvdelningAvdelning: TStringField
      FieldName = 'Avdelning'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object cds_AvdelningCreatedUser: TIntegerField
      FieldName = 'CreatedUser'
      Origin = 'CreatedUser'
      ProviderFlags = [pfInUpdate]
    end
    object cds_AvdelningDateCreated: TSQLTimeStampField
      FieldName = 'DateCreated'
      Origin = 'DateCreated'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cds_SR: TFDQuery [13]
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'select C.ClientName, C.ClientNo'
      'FROM   dbo.Client        C,'
      '       dbo.ClientRole    R'
      'WHERE  C.ClientNo = R.ClientNo'
      'AND  R.RoleType = 7'
      'Order by C.clientName')
    Left = 576
    Top = 184
    object cds_SRClientName: TStringField
      FieldName = 'ClientName'
      Origin = 'ClientName'
      Size = 80
    end
    object cds_SRClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object siLangLinked_fAvdelning: TsiLangLinked
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
    Left = 624
    Top = 352
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660041007600640065006C006E0069006E0067000100
      41007600640065006C006E0069006E0067000100010001000D000A0061007400
      4500780069007400010053007400E4006E006700200046003100320001000100
      01000D000A00610063004100640064005200650063006F007200640001004C00
      E400670067002000740069006C006C002000460032000100010001000D000A00
      61006300440065006C006500740065005200650063006F007200640001005400
      6100200062006F00720074002000460035000100010001000D000A0061006300
      5300610076006500010053007000610072006100200046003300010001000100
      0D000A0061006300430061006E00630065006C004300680061006E0067006500
      73000100C5006E006700720061002000460034000100010001000D000A006100
      63005000720069006E0074005400610062006C006500010053006B0072006900
      76002000750074002000460038000100010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B00310001004E00650077005200650070006F007200740001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      65005600690065007700310043006C00690065006E0074004E006F0001004300
      6C00690065006E0074004E006F000100010001000D000A006300780047007200
      690064003100440042005400610062006C006500560069006500770031004B00
      6F006E0074006F006E00720001004B006F006E0074006F006E00720001000100
      01000D000A006300780047007200690064003100440042005400610062006C00
      65005600690065007700310041007600640065006C006E0069006E0067000100
      41007600640065006C006E0069006E0067000100010001000D000A0063007800
      47007200690064003100440042005400610062006C0065005600690065007700
      3100430072006500610074006500640055007300650072000100430072006500
      610074006500640055007300650072000100010001000D000A00630078004700
      7200690064003100440042005400610062006C00650056006900650077003100
      44006100740065004300720065006100740065006400010053006B0061007000
      610064000100010001000D000A00630078004C006100620065006C0031000100
      4600F60072007300E4006C006A006E0069006E00670073007200650067006900
      6F006E003A000100010001000D000A0061006300520065006600720065007300
      680001005500700070006400610074006500720061000100010001000D000A00
      73007400480069006E00740073005F0055006E00690063006F00640065000D00
      0A0061007400450078006900740001004500780069007400010001000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A006D00740043006C00690065006E00
      740043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000D000A006D00740043006C00690065006E00740056006500
      72006B0001005600650072006B00010001000D000A006300640073005F004100
      7600640065006C006E0069006E00670043006C00690065006E0074004E006F00
      010043006C00690065006E0074004E006F00010001000D000A00630064007300
      5F0041007600640065006C006E0069006E0067004B006F006E0074006F006E00
      720001004B006F006E0074006F006E007200010001000D000A00630064007300
      5F0041007600640065006C006E0069006E00670041007600640065006C006E00
      69006E006700010041007600640065006C006E0069006E006700010001000D00
      0A006300640073005F0041007600640065006C006E0069006E00670043007200
      6500610074006500640055007300650072000100430072006500610074006500
      64005500730065007200010001000D000A006300640073005F00410076006400
      65006C006E0069006E0067004400610074006500430072006500610074006500
      6400010044006100740065004300720065006100740065006400010001000D00
      0A006300640073005F005300520043006C00690065006E0074004E0061006D00
      6500010043006C00690065006E0074004E0061006D006500010001000D000A00
      6300640073005F005300520043006C00690065006E0074004E006F0001004300
      6C00690065006E0074004E006F00010001000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400660041007600
      640065006C006E0069006E00670001004D0053002000530061006E0073002000
      5300650072006900660001004D0053002000530061006E007300200053006500
      72006900660001005400610068006F006D0061000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B0031000100540069006D006500730020004E006500770020005200
      6F006D0061006E00010001005400610068006F006D0061000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0031002E00440065007300690067006E0065007200
      430061007000740069006F006E00010046006F0072006D006100740020005200
      650070006F0072007400010001000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      6C00630043006C00690065006E0074002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006C00690065006E00
      74004E0061006D006500010001000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066004100
      7600640065006C006E0069006E0067000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A006400780043006F006D007000
      6F006E0065006E0074005000720069006E0074006500720031004C0069006E00
      6B0031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
