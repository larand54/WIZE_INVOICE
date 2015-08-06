object fAddKundSpecifika: TfAddKundSpecifika
  Left = 197
  Top = 107
  Caption = 'Kundspecifika rapporter'
  ClientHeight = 659
  ClientWidth = 833
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
    Width = 833
    Height = 73
    Align = alTop
    TabOrder = 0
    DesignSize = (
      833
      73)
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 51
      Action = acAddKS
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 51
      Action = acTaBort
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 184
      Top = 8
      Width = 75
      Height = 51
      Action = acSave
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 755
      Top = 8
      Width = 75
      Height = 51
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
  end
  object grdDocs: TcxGrid
    Left = 0
    Top = 73
    Width = 833
    Height = 530
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object grdDocsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.dsClientPrefDocs
      DataController.KeyFieldNames = 'ClientNo;RoleType;DocType;ReportNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdDocsDBTableView1TYPAVRAPPORT: TcxGridDBColumn
        DataBinding.FieldName = 'TYP AV RAPPORT'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'DocType'
        Properties.ListColumns = <
          item
            FieldName = 'ReportType'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 120
      end
      object grdDocsDBTableView1CRFIL: TcxGridDBColumn
        DataBinding.FieldName = 'RAPPORT'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 500
        Properties.KeyFieldNames = 'ReportNo'
        Properties.ListColumns = <
          item
            FieldName = 'ReportName'
          end>
        Width = 238
      end
      object grdDocsDBTableView1NoOfCopy: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfCopy'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.MinValue = 1.000000000000000000
        Width = 120
      end
      object grdDocsDBTableView1collated: TcxGridDBColumn
        DataBinding.FieldName = 'collated'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 110
      end
      object grdDocsDBTableView1PrinterSetup: TcxGridDBColumn
        DataBinding.FieldName = 'PrinterSetup'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 146
      end
      object grdDocsDBTableView1promptUser: TcxGridDBColumn
        DataBinding.FieldName = 'promptUser'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 126
      end
      object grdDocsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdDocsDBTableView1RoleType: TcxGridDBColumn
        DataBinding.FieldName = 'RoleType'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdDocsDBTableView1DocType: TcxGridDBColumn
        DataBinding.FieldName = 'DocType'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdDocsDBTableView1ReportNo: TcxGridDBColumn
        DataBinding.FieldName = 'ReportNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
    end
    object grdDocsLevel1: TcxGridLevel
      GridView = grdDocsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 603
    Width = 833
    Height = 56
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 36
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 8
      Width = 75
      Height = 36
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 352
    Top = 176
    object acAddKS: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddKSExecute
    end
    object acTaBort: TAction
      Caption = 'Ta bort'
      OnExecute = acTaBortExecute
      OnUpdate = acTaBortUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
  end
  object siLangLinked_fAddKundSpecifika: TsiLangLinked
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
    Left = 408
    Top = 336
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004100640064004B0075006E006400530070006500
      63006900660069006B00610001004B0075006E00640073007000650063006900
      660069006B006100200072006100700070006F00720074006500720001000100
      01000D000A0067007200640044006F0063007300440042005400610062006C00
      6500560069006500770031005400590050004100560052004100500050004F00
      520054000100540059005000200041005600200052004100500050004F005200
      54000100010001000D000A0067007200640044006F0063007300440042005400
      610062006C0065005600690065007700310043005200460049004C0001005200
      6100700070006F00720074000100010001000D000A0067007200640044006F00
      63007300440042005400610062006C006500560069006500770031004E006F00
      4F00660043006F007000790001004E006F004F00660043006F00700079000100
      010001000D000A0067007200640044006F006300730044004200540061006200
      6C0065005600690065007700310063006F006C006C0061007400650064000100
      63006F006C006C0061007400650064000100010001000D000A00670072006400
      44006F0063007300440042005400610062006C00650056006900650077003100
      5000720069006E00740065007200530065007400750070000100500072006900
      6E00740065007200530065007400750070000100010001000D000A0067007200
      640044006F0063007300440042005400610062006C0065005600690065007700
      3100700072006F006D007000740055007300650072000100700072006F006D00
      7000740055007300650072000100010001000D000A0067007200640044006F00
      63007300440042005400610062006C0065005600690065007700310043006C00
      690065006E0074004E006F00010043006C00690065006E0074004E006F000100
      010001000D000A0067007200640044006F006300730044004200540061006200
      6C0065005600690065007700310052006F006C00650054007900700065000100
      52006F006C00650054007900700065000100010001000D000A00670072006400
      44006F0063007300440042005400610062006C00650056006900650077003100
      44006F0063005400790070006500010044006F00630054007900700065000100
      010001000D000A0067007200640044006F006300730044004200540061006200
      6C006500560069006500770031005200650070006F00720074004E006F000100
      5200650070006F00720074004E006F000100010001000D000A00420069007400
      420074006E00310001004F004B000100010001000D000A004200690074004200
      74006E0032000100430061006E00630065006C000100010001000D000A006100
      63004100640064004B00530001004C00E400670067002000740069006C006C00
      0100010001000D000A00610063005400610042006F0072007400010054006100
      200062006F00720074000100010001000D000A00610063005300610076006500
      0100530070006100720061000100010001000D000A006100630043006C006F00
      73006500010053007400E4006E0067000100010001000D000A00730074004800
      69006E00740073005F0055006E00690063006F00640065000D000A0073007400
      44006900730070006C00610079004C006100620065006C0073005F0055006E00
      690063006F00640065000D000A007300740046006F006E00740073005F005500
      6E00690063006F00640065000D000A00540066004100640064004B0075006E00
      640053007000650063006900660069006B00610001004D005300200053006100
      6E00730020005300650072006900660001004D0053002000530061006E007300
      20005300650072006900660001005400610068006F006D0061000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A0067007200640044006F006300730044004200
      5400610062006C00650056006900650077003100540059005000410056005200
      4100500050004F00520054002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001005200650070006F00720074005400
      790070006500010001000D000A0067007200640044006F006300730044004200
      5400610062006C0065005600690065007700310043005200460049004C002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E0001004300720079007300740061006C00200072006100700070006F007200
      7400010001000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00540066004100640064004B007500
      6E00640053007000650063006900660069006B00610001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00}
  end
end
