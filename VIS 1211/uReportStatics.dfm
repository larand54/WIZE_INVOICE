object fReportStatics: TfReportStatics
  Left = 0
  Top = 0
  Caption = 'Rapport-parametrar'
  ClientHeight = 674
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1118
    Height = 73
    Align = alTop
    TabOrder = 0
    object lcSalesregion: TcxDBLookupComboBox
      Left = 165
      Top = 27
      DataBinding.DataField = 'Salesregion'
      DataBinding.DataSource = dsClient
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 64
      Top = 32
      Caption = 'F'#246'rs'#228'ljningsregion:'
    end
    object cxButton1: TcxButton
      Left = 336
      Top = 18
      Width = 89
      Height = 49
      Action = acNewRS
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 440
      Top = 18
      Width = 89
      Height = 49
      Action = acSave
      TabOrder = 3
    end
    object cxButton3: TcxButton
      Left = 544
      Top = 18
      Width = 89
      Height = 49
      Action = acDelete
      TabOrder = 4
    end
    object cxButton4: TcxButton
      Left = 639
      Top = 18
      Width = 90
      Height = 49
      Action = acOpenImage
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 1118
    Height = 601
    Align = alClient
    TabOrder = 1
    object grdReportStatics: TcxGrid
      Left = 1
      Top = 1
      Width = 1116
      Height = 599
      Align = alClient
      TabOrder = 0
      object grdReportStaticsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmsContact.ds_ReportStaticsII
        DataController.KeyFieldNames = 'SalesRegionNo;DocType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.DataRowSizing = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 173
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdReportStaticsDBTableView1SalesRegionNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesRegionNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdReportStaticsDBTableView1DocType: TcxGridDBColumn
          DataBinding.FieldName = 'DocType'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdReportStaticsDBTableView1CompanyName: TcxGridDBColumn
          Caption = 'F'#246'retagsnamn'
          DataBinding.FieldName = 'CompanyName'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 121
        end
        object grdReportStaticsDBTableView1Address: TcxGridDBColumn
          DataBinding.FieldName = 'Address'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 120
        end
        object grdReportStaticsDBTableView1Telefon: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 121
        end
        object grdReportStaticsDBTableView1Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 121
        end
        object grdReportStaticsDBTableView1HQ: TcxGridDBColumn
          DataBinding.FieldName = 'HQ'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 120
        end
        object grdReportStaticsDBTableView1Vat_BankInfo: TcxGridDBColumn
          Caption = 'Vat och BankInfo'
          DataBinding.FieldName = 'Vat_BankInfo'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 121
        end
        object grdReportStaticsDBTableView1AccountNo: TcxGridDBColumn
          Caption = 'Kontonr'
          DataBinding.FieldName = 'AccountNo'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 121
        end
        object grdReportStaticsDBTableView1Giro: TcxGridDBColumn
          Caption = 'Gironr'
          DataBinding.FieldName = 'Giro'
          PropertiesClassName = 'TcxRichEditProperties'
          Width = 71
        end
        object grdReportStaticsDBTableView1Logga: TcxGridDBColumn
          DataBinding.FieldName = 'Logga'
          PropertiesClassName = 'TcxImageProperties'
          Width = 170
        end
      end
      object grdReportStaticsDBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmsContact.ds_ReportStaticsII
        DataController.KeyFieldNames = 'SalesRegionNo;DocType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardIndent = 7
        object grdReportStaticsDBCardView1SalesRegionNo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'SalesRegionNo'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1DocType: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DocType'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1CompanyName: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CompanyName'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Address: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Address'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Telefon: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Telefon'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Email: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1HQ: TcxGridDBCardViewRow
          DataBinding.FieldName = 'HQ'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Vat_BankInfo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Vat_BankInfo'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1AccountNo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'AccountNo'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Giro: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Giro'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
      end
      object grdReportStaticsLevel1: TcxGridLevel
        GridView = grdReportStaticsDBTableView1
      end
    end
  end
  object mtClient: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 112
    Top = 352
    object mtClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      OnChange = mtClientClientNoChange
    end
    object mtClientSalesregion: TStringField
      FieldKind = fkLookup
      FieldName = 'Salesregion'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object mtClientDocType: TIntegerField
      FieldName = 'DocType'
    end
  end
  object dsClient: TDataSource
    DataSet = mtClient
    Left = 112
    Top = 408
  end
  object ActionList1: TActionList
    Left = 440
    Top = 304
    object acNewRS: TAction
      Caption = 'Ny'
      OnExecute = acNewRSExecute
      OnUpdate = acNewRSUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
      OnUpdate = acDeleteUpdate
    end
    object acOpenImage: TAction
      Caption = #214'ppna bild'
      OnExecute = acOpenImageExecute
    end
  end
  object siLangLinked_fReportStatics: TsiLangLinked
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
    Left = 440
    Top = 360
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066005200650070006F00720074005300740061007400
      690063007300010052006100700070006F00720074002D007000610072006100
      6D00650074007200610072000100010001000D000A00630078004C0061006200
      65006C00310001004600F60072007300E4006C006A006E0069006E0067007300
      72006500670069006F006E003A000100010001000D000A006700720064005200
      650070006F007200740053007400610074006900630073004400420054006100
      62006C00650056006900650077003100530061006C0065007300520065006700
      69006F006E004E006F000100530061006C006500730052006500670069006F00
      6E004E006F000100010001000D000A006700720064005200650070006F007200
      74005300740061007400690063007300440042005400610062006C0065005600
      690065007700310044006F0063005400790070006500010044006F0063005400
      7900700065000100010001000D000A006700720064005200650070006F007200
      74005300740061007400690063007300440042005400610062006C0065005600
      690065007700310043006F006D00700061006E0079004E0061006D0065000100
      4600F6007200650074006100670073006E0061006D006E000100010001000D00
      0A006700720064005200650070006F0072007400530074006100740069006300
      7300440042005400610062006C00650056006900650077003100410064006400
      7200650073007300010041006400640072006500730073000100010001000D00
      0A006700720064005200650070006F0072007400530074006100740069006300
      7300440042005400610062006C00650056006900650077003100540065006C00
      650066006F006E000100540065006C00650066006F006E000100010001000D00
      0A006700720064005200650070006F0072007400530074006100740069006300
      7300440042005400610062006C0065005600690065007700310045006D006100
      69006C00010045006D00610069006C000100010001000D000A00670072006400
      5200650070006F00720074005300740061007400690063007300440042005400
      610062006C006500560069006500770031004800510001004800510001000100
      01000D000A006700720064005200650070006F00720074005300740061007400
      690063007300440042005400610062006C006500560069006500770031005600
      610074005F00420061006E006B0049006E0066006F0001005600610074002000
      6F00630068002000420061006E006B0049006E0066006F000100010001000D00
      0A006700720064005200650070006F0072007400530074006100740069006300
      7300440042005400610062006C00650056006900650077003100410063006300
      6F0075006E0074004E006F0001004B006F006E0074006F006E00720001000100
      01000D000A006700720064005200650070006F00720074005300740061007400
      690063007300440042005400610062006C006500560069006500770031004700
      690072006F0001004700690072006F006E0072000100010001000D000A006700
      720064005200650070006F007200740053007400610074006900630073004400
      4200430061007200640056006900650077003100530061006C00650073005200
      6500670069006F006E004E006F000100530061006C0065007300520065006700
      69006F006E004E006F000100010001000D000A00670072006400520065007000
      6F00720074005300740061007400690063007300440042004300610072006400
      5600690065007700310044006F0063005400790070006500010044006F006300
      54007900700065000100010001000D000A006700720064005200650070006F00
      7200740053007400610074006900630073004400420043006100720064005600
      690065007700310043006F006D00700061006E0079004E0061006D0065000100
      43006F006D00700061006E0079004E0061006D0065000100010001000D000A00
      6700720064005200650070006F00720074005300740061007400690063007300
      4400420043006100720064005600690065007700310041006400640072006500
      73007300010041006400640072006500730073000100010001000D000A006700
      720064005200650070006F007200740053007400610074006900630073004400
      4200430061007200640056006900650077003100540065006C00650066006F00
      6E000100540065006C00650066006F006E000100010001000D000A0067007200
      64005200650070006F0072007400530074006100740069006300730044004200
      43006100720064005600690065007700310045006D00610069006C0001004500
      6D00610069006C000100010001000D000A006700720064005200650070006F00
      7200740053007400610074006900630073004400420043006100720064005600
      6900650077003100480051000100480051000100010001000D000A0067007200
      64005200650070006F0072007400530074006100740069006300730044004200
      4300610072006400560069006500770031005600610074005F00420061006E00
      6B0049006E0066006F0001005600610074005F00420061006E006B0049006E00
      66006F000100010001000D000A006700720064005200650070006F0072007400
      5300740061007400690063007300440042004300610072006400560069006500
      770031004100630063006F0075006E0074004E006F0001004100630063006F00
      75006E0074004E006F000100010001000D000A00670072006400520065007000
      6F00720074005300740061007400690063007300440042004300610072006400
      560069006500770031004700690072006F0001004700690072006F0001000100
      01000D000A00610063004E00650077005200530001004E007900010001000100
      0D000A0061006300530061007600650001005300700061007200610001000100
      01000D000A0061006300440065006C0065007400650001005400610020006200
      6F00720074000100010001000D000A006700720064005200650070006F007200
      74005300740061007400690063007300440042005400610062006C0065005600
      69006500770031004C006F0067006700610001004C006F006700670061000100
      010001000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A006D007400
      43006C00690065006E00740043006C00690065006E0074004E006F0001004300
      6C00690065006E0074004E006F00010001000D000A006D00740043006C006900
      65006E007400530061006C006500730072006500670069006F006E0001005300
      61006C006500730072006500670069006F006E00010001000D000A006D007400
      43006C00690065006E00740044006F0063005400790070006500010044006F00
      63005400790070006500010001000D000A007300740046006F006E0074007300
      5F0055006E00690063006F00640065000D000A00540066005200650070006F00
      72007400530074006100740069006300730001005400610068006F006D006100
      01005400610068006F006D00610001005400610068006F006D0061000D000A00
      730074004D0075006C00740069004C0069006E00650073005F0055006E006900
      63006F00640065000D000A007300740053007400720069006E00670073005F00
      55006E00690063006F00640065000D000A00730074004F007400680065007200
      53007400720069006E00670073005F0055006E00690063006F00640065000D00
      0A006700720064005200650070006F0072007400530074006100740069006300
      7300440042005400610062006C006500560069006500770031004C006F006700
      670061002E00500072006F0070006500720074006900650073002E0047007200
      6100700068006900630043006C006100730073004E0061006D00650001005400
      4200690074006D00610070000100010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A006C006300530061006C006500730072006500670069006F006E002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E00010043006C00690065006E0074004E0061006D006500010001000D000A00
      73007400430068006100720053006500740073005F0055006E00690063006F00
      640065000D000A00540066005200650070006F00720074005300740061007400
      6900630073000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00}
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = frmMain.dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 432
    Top = 489
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 760
    Top = 457
  end
end
