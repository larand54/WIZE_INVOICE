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
    object cxGrid1: TcxGrid
      Left = 1
      Top = 10
      Width = 1116
      Height = 590
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 0
      ExplicitWidth = 816
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmsContact.ds_ReportStaticsII
        DataController.DetailKeyFieldNames = 'SalesRegionNo'
        DataController.KeyFieldNames = 'SalesRegionNo;DocType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.DataRowSizing = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 173
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object SalesRegionNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesRegionNo'
        end
        object DocType: TcxGridDBColumn
          DataBinding.FieldName = 'DocType'
        end
        object CompanyName: TcxGridDBColumn
          DataBinding.FieldName = 'CompanyName'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object Address: TcxGridDBColumn
          DataBinding.FieldName = 'Address'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object Telefon: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object HQ: TcxGridDBColumn
          DataBinding.FieldName = 'HQ'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object Vat_BankInfo: TcxGridDBColumn
          DataBinding.FieldName = 'Vat_BankInfo'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object AccountNo: TcxGridDBColumn
          DataBinding.FieldName = 'AccountNo'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object Giro: TcxGridDBColumn
          DataBinding.FieldName = 'Giro'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object Logga: TcxGridDBColumn
          DataBinding.FieldName = 'Logga'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
        end
      end
      object cxGridDBCardView1: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        DataController.KeyFieldNames = 'SalesRegionNo;DocType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardIndent = 7
        object cxGridDBCardViewRow1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'SalesRegionNo'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow2: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DocType'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow3: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CompanyName'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow4: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Address'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow5: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Telefon'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow6: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow7: TcxGridDBCardViewRow
          DataBinding.FieldName = 'HQ'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow8: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Vat_BankInfo'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow9: TcxGridDBCardViewRow
          DataBinding.FieldName = 'AccountNo'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object cxGridDBCardViewRow10: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Giro'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
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
      72006500670069006F006E003A000100010001000D000A00610063004E006500
      77005200530001004E0079000100010001000D000A0061006300530061007600
      65000100530070006100720061000100010001000D000A006100630044006500
      6C00650074006500010054006100200062006F00720074000100010001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A006D00740043006C006900
      65006E00740043006C00690065006E0074004E006F00010043006C0069006500
      6E0074004E006F00010001000D000A006D00740043006C00690065006E007400
      530061006C006500730072006500670069006F006E000100530061006C006500
      730072006500670069006F006E00010001000D000A006D00740043006C006900
      65006E00740044006F0063005400790070006500010044006F00630054007900
      70006500010001000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A00540066005200650070006F00720074005300
      74006100740069006300730001005400610068006F006D006100010054006100
      68006F006D00610001005400610068006F006D0061000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A006C006300530061006C00650073007200650067006900
      6F006E002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E00010043006C00690065006E0074004E0061006D0065000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A00540066005200650070006F00720074005300
      7400610074006900630073000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = frmMain.dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 432
    Top = 489
  end
end
