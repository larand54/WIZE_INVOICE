object fSelectVerkandShipTo: TfSelectVerkandShipTo
  Left = 367
  Top = 167
  Caption = 'V'#228'lj verk f'#246'r LO'
  ClientHeight = 462
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object grdSelVerk: TcxGrid
    Left = 0
    Top = 0
    Width = 589
    Height = 396
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    object grdSelVerkDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.KeyFieldNames = 'VerkNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object grdSelVerkDBTableView1VERK: TcxGridDBColumn
        DataBinding.FieldName = 'VERK'
        Width = 200
      end
      object grdSelVerkDBTableView1LASTSTALLE: TcxGridDBColumn
        Caption = 'LASTST'#196'LLE'
        DataBinding.FieldName = 'LASTSTALLE'
        Width = 200
      end
      object grdSelVerkDBTableView1VerkNo: TcxGridDBColumn
        DataBinding.FieldName = 'VerkNo'
      end
      object grdSelVerkDBTableView1ShipToInvPointNo: TcxGridDBColumn
        DataBinding.FieldName = 'ShipToInvPointNo'
      end
    end
    object tvSelVerk: TcxGridDBCardView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dmLoadEntryCSD.ds_mtVerkForLO
      DataController.KeyFieldNames = 'VerkNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.LayeredRows = True
      OptionsCustomize.RowFiltering = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CardIndent = 7
      OptionsView.CardWidth = 797
      object tvSelVerkVERK: TcxGridDBCardViewRow
        DataBinding.FieldName = 'VERK'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 14
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ClientNo'
        Properties.ListColumns = <
          item
            FieldName = 'ClientName'
          end>
        Properties.ListOptions.ShowHeader = False
        Position.BeginsLayer = True
      end
      object tvSelVerkLEVTILL: TcxGridDBCardViewRow
        DataBinding.FieldName = 'LEVTILL'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PhyInvPointNameNo'
        Properties.ListColumns = <
          item
            FieldName = 'CITYNAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.OnCloseUp = tvSelVerkLEVTILLPropertiesCloseUp
        Properties.OnInitPopup = tvSelVerkLEVTILLPropertiesInitPopup
        Position.BeginsLayer = True
      end
      object tvSelVerkLIPName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'LIPName'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'LIPNo'
        Properties.ListColumns = <
          item
            FieldName = 'LIPName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.OnInitPopup = tvSelVerkLIPNamePropertiesInitPopup
        Properties.OnValidate = tvSelVerkLIPNamePropertiesValidate
        Position.BeginsLayer = True
      end
      object tvSelVerkVerkNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'VerkNo'
        Position.BeginsLayer = True
      end
      object tvSelVerkShipToInvPointNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ShipToInvPointNo'
        Position.BeginsLayer = True
      end
      object tvSelVerkLIPNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'LIPNo'
        Position.BeginsLayer = True
      end
    end
    object grdSelVerkDBTableView2: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object grdSelVerkLevel1: TcxGridLevel
      GridView = tvSelVerk
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 396
    Width = 589
    Height = 66
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 199
      Top = 8
      Width = 93
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 300
      Top = 8
      Width = 92
      Height = 51
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object siLangLinked1: TsiLangLinked
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
      'CommandText'
      'GraphicClassName')
    Left = 60
    Top = 23
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074005600650072006B00
      61006E006400530068006900700054006F0001005600E4006C006A0020007600
      650072006B0020006600F600720020004C004F0001005600E4006C006A002000
      7600650072006B0020006600F600720020004C004F00010001000D000A006700
      72006400530065006C005600650072006B00440042005400610062006C006500
      560069006500770031005600450052004B0001005600450052004B0001000100
      01000D000A00670072006400530065006C005600650072006B00440042005400
      610062006C006500560069006500770031004C00410053005400530054004100
      4C004C00450001004C0041005300540053005400C4004C004C00450001000100
      01000D000A00670072006400530065006C005600650072006B00440042005400
      610062006C006500560069006500770031005600650072006B004E006F000100
      5600650072006B004E006F000100010001000D000A0067007200640053006500
      6C005600650072006B00440042005400610062006C0065005600690065007700
      3100530068006900700054006F0049006E00760050006F0069006E0074004E00
      6F000100530068006900700054006F0049006E00760050006F0069006E007400
      4E006F000100010001000D000A0074007600530065006C005600650072006B00
      5600450052004B0001005600450052004B000100010001000D000A0074007600
      530065006C005600650072006B004C0045005600540049004C004C0001004C00
      450056002E00540049004C004C000100010001000D000A007400760053006500
      6C005600650072006B004C00490050004E0061006D00650001004C0045005600
      2000540049004C004C0020004C00610067006500720067007200750070007000
      0100010001000D000A00420069007400420074006E00310001004F004B000100
      010001000D000A00420069007400420074006E0032000100430061006E006300
      65006C000100010001000D000A0073007400480069006E00740073005F005500
      6E00690063006F00640065000D000A007300740044006900730070006C006100
      79004C006100620065006C0073005F0055006E00690063006F00640065000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A0054006600530065006C006500630074005600650072006B0061006E00
      6400530068006900700054006F0001004D0053002000530061006E0073002000
      5300650072006900660001004D0053002000530061006E007300200053006500
      720069006600010001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A007400
      7600530065006C005600650072006B005600450052004B002E00500072006F00
      70006500720074006900650073002E004C0069007300740043006F006C007500
      6D006E0073005B0030005D002E00430061007000740069006F006E0001004300
      6C00690065006E0074004E0061006D0065000100010001000D000A0074007600
      530065006C005600650072006B004C0045005600540049004C004C002E005000
      72006F0070006500720074006900650073002E004C0069007300740043006F00
      6C0075006D006E0073005B0030005D002E00430061007000740069006F006E00
      010043004900540059004E0041004D0045000100010001000D000A0074007600
      530065006C005600650072006B004C00490050004E0061006D0065002E005000
      72006F0070006500720074006900650073002E004C0069007300740043006F00
      6C0075006D006E0073005B0030005D002E00430061007000740069006F006E00
      01004C00490050004E0061006D0065000100010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A0054006600530065006C006500630074005600650072006B0061006E006400
      530068006900700054006F000100440045004600410055004C0054005F004300
      4800410052005300450054000100010001000D000A00}
  end
end
