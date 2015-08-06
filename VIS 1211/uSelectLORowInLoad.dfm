object fSelectLORowInLoad: TfSelectLORowInLoad
  Left = 0
  Top = 0
  ActiveControl = grdLORows
  Caption = 'V'#228'lj Lastorderrad'
  ClientHeight = 357
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 1122
    Height = 57
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 520
      Top = 6
      Width = 97
      Height = 43
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object PanelPaket: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 41
    Align = alTop
    Caption = '22x100 furu 4 hyvlat runda h'#246'rn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object grdLORows: TcxGrid
    Left = 0
    Top = 41
    Width = 1122
    Height = 259
    Align = alClient
    TabOrder = 2
    object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadEntrySSP.dsLORows
      DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnVertSizing = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentEven = cxStyleContent
      Styles.ContentOdd = cxStyleContentOdd
      Styles.Header = cxStyleHeader
      Bands = <
        item
          Caption = 'MATCH'
          Width = 52
        end
        item
          Width = 897
        end>
      object grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATCH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = grdLORowsDBBandedTableView1MATCHPropertiesChange
        Options.Filtering = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShippingPlanNo'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PKGCODE'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 71
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERNPRODDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 318
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
        Caption = 'L'#228'ngdbesk.'
        DataBinding.FieldName = 'LENGTHDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 122
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOOFUNITS'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICEUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFERENCE'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV_PERIOD_START'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 44
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV_PERIOD_END'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 43
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KR_Ref'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOM_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOM_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRODUCTGROUPNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PCSPERPKG'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductLengthNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SupplierShipPlanObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn
        Caption = 'Akt.l'#228'ngd'
        DataBinding.FieldName = 'ACT_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingLocationNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERNPRODDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 137
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShipToInvPointNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MIN_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MAX_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustomerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductLengthGroupNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INCH_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVCH_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SurfacingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SpeciesNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GradeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PackageTypeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Prislista'
        Visible = False
        Options.Filtering = False
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
        Caption = 'Till'#229't alla l'#228'ngder'
        DataBinding.FieldName = 'OverrideRL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CERTI'
        Width = 111
        Position.BandIndex = 1
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tr'#228'slag'
        Visible = False
        Width = 144
        Position.BandIndex = 1
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadedPkgs'
        Visible = False
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
    end
    object grdLORowsLevel1: TcxGridLevel
      GridView = grdLORowsDBBandedTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 161
    Top = 175
    PixelsPerInch = 96
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15524833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object siLangLinked_fSelectLORowInLoad: TsiLangLinked
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
    Left = 552
    Top = 184
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006C006500630074004C004F0052006F00
      770049006E004C006F006100640001005600E4006C006A0020004C0061007300
      74006F0072006400650072007200610064000100010001000D000A0063007800
      42007500740074006F006E00310001004F004B000100010001000D000A005000
      61006E0065006C00500061006B00650074000100320032007800310030003000
      200066007500720075002000340020006800790076006C006100740020007200
      75006E006400610020006800F60072006E000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004D00410054004300480001004D00
      41005400430048000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031005300680069007000700069006E00670050006C0061006E00
      4E006F0001004C004F000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310050004B00470043004F00440045000100500061006B00
      650074006B006F0064000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500052004F0044005500430054004400450053004300
      520049005000540049004F004E000100500072006F00640075006B0074006200
      650073006B002E00280069006E007400650072006E0029000100010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004C0045004E004700
      54004800440045005300430001004C00E4006E00670064006200650073006B00
      2E000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E004F004F00460055004E0049005400530001004B00760061006E007400
      69007400650074000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310056004F004C0055004E0049005400010045006E0068006500
      74000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310050005200490043004500010050007200690073000100010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050005200490043004500
      55004E00490054000100500072006900730065006E0068006500740001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310052004500
      46004500520045004E004300450001005200650066006500720065006E007300
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C00450056005F0050004500520049004F0044005F0053005400410052005400
      01004C00650076002E0070006500720069006F00640020007300740061007200
      74000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C00450056005F0050004500520049004F0044005F0045004E0044000100
      4C00650076002E0050006500720069006F006400200073006C00750074000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004F00
      52004400450052004E004F0001004F0072006400650072006E00720001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004B005200
      5F0052006500660001004B0052002D007200650066006500720065006E007300
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4E004F004D005F0054004800490043004B0001004E004F004D005F0054004800
      490043004B000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004E004F004D005F005700490044005400480001004E004F004D00
      5F00570049004400540048000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100500052004F004400550043005400470052004F00
      550050004E004F000100500052004F004400550043005400470052004F005500
      50004E004F000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310050004300530050004500520050004B0047000100500050005000
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      500072006F0064007500630074004C0065006E006700740068004E006F000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      6F00610064004E006F0001004C006100730074006E0072000100010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005300750070007000
      6C00690065007200530068006900700050006C0061006E004F0062006A006500
      630074004E006F00010053007500700070006C00690065007200530068006900
      700050006C0061006E004F0062006A006500630074004E006F00010001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100410043005400
      5F0054004800490043004B0001004100430054005F0054004800490043004B00
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4100430054005F005700490044005400480001004100430054005F0057004900
      4400540048000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004100430054005F004C0045004E00470054004800010041006B00
      74002E006C00E4006E00670064000100010001000D000A006700720064004C00
      4F0052006F007700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F0001004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C0065005600690065007700310049004E005400450052004E00
      500052004F00440044004500530043000100500072006F00640075006B007400
      6200650073006B002E00280069006E007400650072006E002900010001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530068006900
      700054006F0049006E00760050006F0069006E0074004E006F00010053006800
      6900700054006F0049006E00760050006F0069006E0074004E006F0001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050007200
      6F0064007500630074004E006F000100500072006F0064007500630074004E00
      6F000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004D0049004E005F004C0045004E0047005400480001004D0049004E005F00
      4C0045004E004700540048000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004D00410058005F004C0045004E00470054004800
      01004D00410058005F004C0045004E004700540048000100010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310043007500730074006F00
      6D00650072004E006F00010043007500730074006F006D00650072004E006F00
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4300750073007400530068006900700050006C0061006E004400650074006100
      69006C004F0062006A006500630074004E006F00010043007500730074005300
      68006900700050006C0061006E00440065007400610069006C004F0062006A00
      6500630074004E006F000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006F0064007500630074004C0065006E006700
      74006800470072006F00750070004E006F000100500072006F00640075006300
      74004C0065006E00670074006800470072006F00750070004E006F0001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310049004E00
      430048005F0054004800490043004B00010049004E00430048005F0054004800
      490043004B000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310049004E005600430048005F005700490044005400480001004900
      4E005600430048005F00570049004400540048000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530075007200660061006300
      69006E0067004E006F00010053007500720066006100630069006E0067004E00
      6F000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310053007000650063006900650073004E006F00010053007000650063006900
      650073004E006F000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100470072006100640065004E006F0001004700720061006400
      65004E006F000100010001000D000A006700720064004C004F0052006F007700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031005000610063006B0061006700650054007900700065004E006F00
      01005000610063006B0061006700650054007900700065004E006F0001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050007200
      690073006C006900730074006100010050007200690073006C00690073007400
      61000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004F00760065007200720069006400650052004C000100540069006C006C00
      E5007400200061006C006C00610020006C00E4006E0067006400650072000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004300
      45005200540049000100430045005200540049000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031005400720073006C0061006700
      010054007200E40073006C00610067000100010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C006F00610064006500640050006B00
      6700730001004C006F00610064006500640050006B0067007300010001000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A007300740044006900730070006C00610079004C00610062006500
      6C0073005F0055006E00690063006F00640065000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066005300
      65006C006500630074004C004F0052006F00770049006E004C006F0061006400
      01005400610068006F006D00610001005400610068006F006D00610001005400
      610068006F006D0061000D000A00500061006E0065006C00500061006B006500
      740001005400610068006F006D006100010001005400610068006F006D006100
      0D000A00630078005300740079006C006500590065006C006C006F0077000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      630078005300740079006C00650052006500640001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C006500410071007500610001005400610068006F006D006100010001005400
      610068006F006D0061000D000A00630078005300740079006C00650042006C00
      7500650001005400610068006F006D006100010001005400610068006F006D00
      61000D000A00630078005300740079006C006500530069006C00760065007200
      01005400610068006F006D006100010001005400610068006F006D0061000D00
      0A00630078005300740079006C00650048006500610064006500720001005600
      65007200640061006E006100010001005400610068006F006D0061000D000A00
      630078005300740079006C00650043006F006E00740065006E00740001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D0061000D000A00630078005300740079006C00650043006F006E00
      740065006E0074004F006400640001004D0053002000530061006E0073002000
      53006500720069006600010001005400610068006F006D0061000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0030005D002E004300610070007400
      69006F006E0001004D004100540043004800010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A0054006600530065006C006500630074004C004F0052006F00770049006E00
      4C006F00610064000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00500061006E0065006C00500061006B0065007400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00630078005300740079006C006500590065006C006C006F0077000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650052006500640001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00630078005300
      740079006C00650041007100750061000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      650042006C00750065000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650053006900
      6C007600650072000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500480065006100
      6400650072000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C00650043006F006E007400
      65006E0074000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C00650043006F006E007400
      65006E0074004F00640064000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
end
