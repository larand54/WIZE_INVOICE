object fLOLengths: TfLOLengths
  Left = 404
  Top = 117
  Caption = 'LO l'#228'ngder'
  ClientHeight = 454
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = acAddLength
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = acRemoveLength
      TabOrder = 1
    end
    object lcGroupLengths: TcxDBLookupComboBox
      Left = 288
      Top = 12
      DataBinding.DataField = 'ALMM'
      DataBinding.DataSource = dsLengths
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'GroupNo'
      Properties.ListColumns = <
        item
          FieldName = 'GroupName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 169
    end
    object cxButton3: TcxButton
      Left = 464
      Top = 8
      Width = 97
      Height = 25
      Action = acCopyLengthsFromSelectedLengthGroup
      TabOrder = 3
    end
    object cxLabel1: TcxLabel
      Left = 216
      Top = 16
      Caption = 'L'#228'ngdgrupp:'
      FocusControl = lcGroupLengths
    end
  end
  object grdLOLengths: TcxGrid
    Left = 0
    Top = 41
    Width = 567
    Height = 364
    Align = alClient
    TabOrder = 1
    object grdLOLengthsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmcOrder.ds_LOLengths
      DataController.KeyFieldNames = 'SupplierShipPlanObjectNo;ProductLengthNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLOLengthsDBTableView1ActualLengthMM: TcxGridDBColumn
        DataBinding.FieldName = 'ActualLengthMM'
        Visible = False
      end
      object grdLOLengthsDBTableView1ALMM: TcxGridDBColumn
        DataBinding.FieldName = 'ALMM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ProductLengthNo'
        Properties.ListColumns = <
          item
            FieldName = 'ActualLengthMM'
          end>
        Properties.ListOptions.ShowHeader = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object grdLOLengthsDBTableView1SupplierShipPlanObjectNo: TcxGridDBColumn
        DataBinding.FieldName = 'SupplierShipPlanObjectNo'
        Visible = False
      end
      object grdLOLengthsDBTableView1ProductLengthNo: TcxGridDBColumn
        DataBinding.FieldName = 'ProductLengthNo'
        Visible = False
      end
      object grdLOLengthsDBTableView1PkgCodePPNo: TcxGridDBColumn
        DataBinding.FieldName = 'PkgCodePPNo'
        PropertiesClassName = 'TcxLabelProperties'
      end
    end
    object grdLOLengthsLevel1: TcxGridLevel
      GridView = grdLOLengthsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 567
    Height = 49
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 224
      Top = 8
      Width = 83
      Height = 32
      Caption = '&St'#228'ng'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 232
    Top = 96
    object acAddLength: TAction
      Caption = 'L'#228'g till'
      OnExecute = acAddLengthExecute
    end
    object acRemoveLength: TAction
      Caption = 'Ta bort'
      OnExecute = acRemoveLengthExecute
      OnUpdate = acRemoveLengthUpdate
    end
    object acCopyLengthsFromSelectedLengthGroup: TAction
      Caption = 'Kopiera l'#228'ngder'
      OnExecute = acCopyLengthsFromSelectedLengthGroupExecute
      OnUpdate = acCopyLengthsFromSelectedLengthGroupUpdate
    end
  end
  object mtLengths: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'ProductLengthNo'
        DataType = ftInteger
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 40
    Top = 112
    object mtLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
    object mtLengthsALMM: TStringField
      FieldKind = fkLookup
      FieldName = 'ALMM'
      LookupDataSet = dmsSystem.cds_LengthGroup
      LookupKeyFields = 'GroupNo'
      LookupResultField = 'GroupName'
      KeyFields = 'ProductLengthNo'
      Lookup = True
    end
  end
  object dsLengths: TDataSource
    DataSet = mtLengths
    Left = 40
    Top = 152
  end
  object sq_PGLengths: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'GroupName'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select distinct pl.ActualLengthMM, pl.ProductLengthNo'
      'FROM dbo.ProductLengthGroupName plgn'
      
        'Inner Join dbo.ProductLengthGroup plg on plg.GroupNo = plgn.Grou' +
        'pNo'
      
        'Inner Join dbo.ProductLength pl on pl.ProductLengthNo = plg.Prod' +
        'uctLengthNo'
      'WHERE plgn.GroupName = :GroupName'
      'Order By pl.ActualLengthMM')
    Left = 80
    Top = 112
    object sq_PGLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_PGLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
  object siLangLinked_fLOLengths: TsiLangLinked
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
      'ListField')
    Left = 280
    Top = 232
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C004F004C0065006E0067007400680073000100
      4C004F0020006C00E4006E0067006400650072000100010001000D000A006300
      78004C006100620065006C00310001004C00E4006E0067006400670072007500
      700070003A000100010001000D000A006700720064004C004F004C0065006E00
      6700740068007300440042005400610062006C00650056006900650077003100
      410063007400750061006C004C0065006E006700740068004D004D0001004100
      63007400750061006C004C0065006E006700740068004D004D00010001000100
      0D000A006700720064004C004F004C0065006E00670074006800730044004200
      5400610062006C0065005600690065007700310041004C004D004D0001004100
      4C004D004D000100010001000D000A006700720064004C004F004C0065006E00
      6700740068007300440042005400610062006C00650056006900650077003100
      53007500700070006C00690065007200530068006900700050006C0061006E00
      4F0062006A006500630074004E006F00010053007500700070006C0069006500
      7200530068006900700050006C0061006E004F0062006A006500630074004E00
      6F000100010001000D000A006700720064004C004F004C0065006E0067007400
      68007300440042005400610062006C0065005600690065007700310050007200
      6F0064007500630074004C0065006E006700740068004E006F00010050007200
      6F0064007500630074004C0065006E006700740068004E006F00010001000100
      0D000A006700720064004C004F004C0065006E00670074006800730044004200
      5400610062006C0065005600690065007700310050006B00670043006F006400
      6500500050004E006F00010050006B00670043006F0064006500500050004E00
      6F000100010001000D000A00420069007400420074006E003100010026005300
      7400E4006E0067000100010001000D000A00610063004100640064004C006500
      6E0067007400680001004C00E40067002000740069006C006C00010001000100
      0D000A0061006300520065006D006F00760065004C0065006E00670074006800
      010054006100200062006F00720074000100010001000D000A00610063004300
      6F00700079004C0065006E006700740068007300460072006F006D0053006500
      6C00650063007400650064004C0065006E00670074006800470072006F007500
      700001004B006F007000690065007200610020006C00E4006E00670064006500
      72000100010001000D000A0073007400480069006E00740073005F0055006E00
      690063006F00640065000D000A007300740044006900730070006C0061007900
      4C006100620065006C0073005F0055006E00690063006F00640065000D000A00
      6D0074004C0065006E006700740068007300500072006F006400750063007400
      4C0065006E006700740068004E006F000100500072006F006400750063007400
      4C0065006E006700740068004E006F00010001000D000A006D0074004C006500
      6E00670074006800730041004C004D004D00010041004C004D004D0001000100
      0D000A00730071005F00500047004C0065006E00670074006800730041006300
      7400750061006C004C0065006E006700740068004D004D000100410063007400
      750061006C004C0065006E006700740068004D004D00010001000D000A007300
      71005F00500047004C0065006E006700740068007300500072006F0064007500
      630074004C0065006E006700740068004E006F000100500072006F0064007500
      630074004C0065006E006700740068004E006F00010001000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A005400
      66004C004F004C0065006E00670074006800730001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      6C006300470072006F00750070004C0065006E0067007400680073002E005000
      72006F0070006500720074006900650073002E004B0065007900460069006500
      6C0064004E0061006D00650073000100470072006F00750070004E006F000100
      01000D000A006C006300470072006F00750070004C0065006E00670074006800
      73002E00500072006F0070006500720074006900650073002E004C0069007300
      74004600690065006C0064004E0061006D00650073000100470072006F007500
      70004E0061006D006500010001000D000A006700720064004C004F004C006500
      6E006700740068007300440042005400610062006C0065005600690065007700
      310041004C004D004D002E00500072006F007000650072007400690065007300
      2E004B00650079004600690065006C0064004E0061006D006500730001005000
      72006F0064007500630074004C0065006E006700740068004E006F0001000100
      0D000A006700720064004C004F004C0065006E00670074006800730044004200
      5400610062006C0065005600690065007700310041004C004D004D002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D00650073000100410063007400750061006C004C00
      65006E006700740068004D004D00010001000D000A006700720064004C004F00
      4C0065006E006700740068007300440042005400610062006C00650056006900
      65007700310041004C004D004D002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6F006F006B007500700043006F006D0062006F0042006F007800500072006F00
      7000650072007400690065007300010001000D000A006700720064004C004F00
      4C0065006E006700740068007300440042005400610062006C00650056006900
      65007700310050006B00670043006F0064006500500050004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006D0074004C0065006E0067007400
      680073002E00560065007200730069006F006E00010037002E00360033002E00
      3000300020005300740061006E00640061007200640020004500640069007400
      69006F006E00010001000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A006C006300
      470072006F00750070004C0065006E0067007400680073002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001004700
      72006F00750070004E0061006D006500010001000D000A006700720064004C00
      4F004C0065006E006700740068007300440042005400610062006C0065005600
      690065007700310041004C004D004D002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010041006300740075006100
      6C004C0065006E006700740068004D004D00010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540066004C004F004C0065006E0067007400680073000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A00}
  end
end
