object fSearchRunNo: TfSearchRunNo
  Left = 223
  Top = 107
  Caption = 'S'#246'k k'#246'rnr'
  ClientHeight = 524
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 41
    Align = alTop
    TabOrder = 0
    object bbRefresh: TBitBtn
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Action = acRefresh
      Caption = 'Uppdatera'
      TabOrder = 0
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 13
      Caption = 'Period:'
    end
    object deStartPeriod: TcxDBDateEdit
      Left = 72
      Top = 8
      DataBinding.DataField = 'StartPeriod'
      DataBinding.DataSource = dsProps
      TabOrder = 2
      Width = 121
    end
    object deEndPeriod: TcxDBDateEdit
      Left = 216
      Top = 8
      DataBinding.DataField = 'EndPeriod'
      DataBinding.DataSource = dsProps
      TabOrder = 3
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 986
    Height = 433
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 424
      Height = 431
      Align = alLeft
      TabOrder = 0
      object grdrunNos: TcxGrid
        Left = 1
        Top = 1
        Width = 422
        Height = 429
        Align = alClient
        TabOrder = 0
        object grdrunNosDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_RunNos
          DataController.KeyFieldNames = 'K'#246'rnr'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdrunNosDBTableView1Krnr: TcxGridDBColumn
            DataBinding.FieldName = 'K'#246'rnr'
            Options.Filtering = False
            Width = 64
          end
          object grdrunNosDBTableView1VERK: TcxGridDBColumn
            DataBinding.FieldName = 'VERK'
            Options.Filtering = False
            Width = 257
          end
          object grdrunNosDBTableView1MTPUNKT: TcxGridDBColumn
            DataBinding.FieldName = 'M'#196'TPUNKT'
            Options.Filtering = False
            Width = 99
          end
        end
        object grdrunNosLevel1: TcxGridLevel
          GridView = grdrunNosDBTableView1
        end
      end
    end
    object Panel5: TPanel
      Left = 425
      Top = 1
      Width = 40
      Height = 431
      Align = alLeft
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 465
      Top = 1
      Width = 520
      Height = 431
      Align = alClient
      TabOrder = 2
      object grdRunProds: TcxGrid
        Left = 1
        Top = 1
        Width = 518
        Height = 429
        Align = alClient
        TabOrder = 0
        object grdRunProdsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_RunProds
          DataController.KeyFieldNames = 'ProductNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object grdRunProdsDBTableView1Krnr: TcxGridDBColumn
            DataBinding.FieldName = 'K'#246'rnr'
            Options.Filtering = False
          end
          object grdRunProdsDBTableView1PRODUKT: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUKT'
            Options.Filtering = False
          end
        end
        object grdRunProdsLevel1: TcxGridLevel
          GridView = grdRunProdsDBTableView1
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 474
    Width = 986
    Height = 50
    Align = alBottom
    TabOrder = 2
    object bbOK: TBitBtn
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object bbCancel: TBitBtn
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object mtProps: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 344
    Top = 129
    object mtPropsStartPeriod: TDateTimeField
      FieldName = 'StartPeriod'
    end
    object mtPropsEndPeriod: TDateTimeField
      FieldName = 'EndPeriod'
    end
    object mtPropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
    end
    object mtPropsSupplierNo: TIntegerField
      FieldName = 'SupplierNo'
    end
  end
  object sq_RunNos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RegPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'StartPeriod'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'EndPeriod'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct'
      'isNull(pp.RunNo,-1)'#9#9#9'AS K'#246'rnr,'
      'Verk.ClientName'#9#9#9'AS VERK,'
      'PU.RegPointName '#9#9#9'AS M'#196'TPUNKT'
      ''
      'FROM  dbo.Package_Production PP '
      
        'Inner Join dbo.RegistrationPoint PU ON PU.RegPointNo = PP.Produc' +
        'tionUnitNo'
      'Inner Join dbo.Client Verk ON Verk.ClientNo = PP.SupplierNo'
      ''
      'WHERE PP.ProductionUnitNo = :RegPointNo'
      'AND PP.SupplierNo = :SupplierNo'
      'and PP.Operation = 0'
      'AND PP.RunNo > 0'
      'AND PP.ProductionDate >= :StartPeriod'
      'AND pp.ProductionDate <= :EndPeriod')
    Left = 73
    Top = 114
  end
  object dsp_RunNos: TDataSetProvider
    DataSet = sq_RunNos
    Left = 73
    Top = 162
  end
  object cds_RunNos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RunNos'
    Left = 73
    Top = 210
    object cds_RunNosKrnr: TIntegerField
      FieldName = 'K'#246'rnr'
    end
    object cds_RunNosVERK: TStringField
      FieldName = 'VERK'
      Size = 80
    end
    object cds_RunNosMTPUNKT: TStringField
      FieldName = 'M'#196'TPUNKT'
      FixedChar = True
      Size = 30
    end
  end
  object ds_RunNos: TDataSource
    DataSet = cds_RunNos
    OnDataChange = ds_RunNosDataChange
    Left = 73
    Top = 258
  end
  object sq_RunProds: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RunNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RegPointNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SupplierNo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select Distinct pt.ProductNo,'
      'isNull(pp.RunNo,-1)'#9#9#9'AS K'#246'rnr,'
      'pd.ProductDisplayName'#9#9#9'AS PRODUKT'
      'FROM  dbo.Package_Production PP '
      
        'Inner Join dbo.PackageType pt '#9'ON pt.PackageTypeNo = PP.PackageT' +
        'ypeNo'
      'Inner Join dbo.Product pd ON pd.ProductNo = pt.ProductNo'
      'WHERE pp.RunNo = :RunNo'
      'AND PP.ProductionUnitNo = :RegPointNo'
      'AND PP.SupplierNo = :SupplierNo'
      'and PP.Operation = 0'
      '')
    Left = 489
    Top = 114
  end
  object dsp_RunProds: TDataSetProvider
    DataSet = sq_RunProds
    Left = 489
    Top = 154
  end
  object cds_RunProds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_RunProds'
    Left = 489
    Top = 194
    object cds_RunProdsKrnr: TIntegerField
      FieldName = 'K'#246'rnr'
    end
    object cds_RunProdsPRODUKT: TStringField
      FieldName = 'PRODUKT'
      Size = 100
    end
    object cds_RunProdsProductNo: TIntegerField
      FieldName = 'ProductNo'
    end
  end
  object ds_RunProds: TDataSource
    DataSet = cds_RunProds
    Left = 489
    Top = 234
  end
  object ActionList1: TActionList
    Left = 265
    Top = 138
    object acRefresh: TAction
      Caption = 'Uppdatera'
      OnExecute = acRefreshExecute
    end
  end
  object dsProps: TDataSource
    DataSet = mtProps
    Left = 345
    Top = 162
  end
  object siLangLinked_fSearchRunNo: TsiLangLinked
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
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HelpFile'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'Origin'
      'PropertiesClassName')
    Left = 488
    Top = 264
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0054006600530065006100720063006800520075006E004E00
      6F0001005300F6006B0020006B00F60072006E0072000100010001000D000A00
      630078004C006100620065006C003100010050006500720069006F0064003A00
      0100010001000D000A00670072006400720075006E004E006F00730044004200
      5400610062006C006500560069006500770031004B0072006E00720001004B00
      F60072006E0072000100010001000D000A00670072006400720075006E004E00
      6F007300440042005400610062006C0065005600690065007700310056004500
      52004B0001005600450052004B000100010001000D000A006700720064007200
      75006E004E006F007300440042005400610062006C0065005600690065007700
      31004D005400500055004E004B00540001004D00C4005400500055004E004B00
      54000100010001000D000A00670072006400520075006E00500072006F006400
      7300440042005400610062006C006500560069006500770031004B0072006E00
      720001004B00F60072006E0072000100010001000D000A006700720064005200
      75006E00500072006F0064007300440042005400610062006C00650056006900
      650077003100500052004F00440055004B0054000100500052004F0044005500
      4B0054000100010001000D000A00620062004F004B0001004F004B0001000100
      01000D000A0062006200430061006E00630065006C000100430061006E006300
      65006C000100010001000D000A00610063005200650066007200650073006800
      01005500700070006400610074006500720061000100010001000D000A007300
      7400480069006E00740073005F0055006E00690063006F00640065000D000A00
      7300740044006900730070006C00610079004C006100620065006C0073005F00
      55006E00690063006F00640065000D000A006D007400500072006F0070007300
      5300740061007200740050006500720069006F00640001005300740061007200
      740050006500720069006F006400010001000D000A006D007400500072006F00
      7000730045006E00640050006500720069006F006400010045006E0064005000
      6500720069006F006400010001000D000A006D007400500072006F0070007300
      52006500670050006F0069006E0074004E006F00010052006500670050006F00
      69006E0074004E006F00010001000D000A006D007400500072006F0070007300
      53007500700070006C006900650072004E006F00010053007500700070006C00
      6900650072004E006F00010001000D000A006300640073005F00520075006E00
      4E006F0073004B0072006E00720001004B00F60072006E007200010001000D00
      0A006300640073005F00520075006E004E006F0073005600450052004B000100
      5600450052004B00010001000D000A006300640073005F00520075006E004E00
      6F0073004D005400500055004E004B00540001004D00C4005400500055004E00
      4B005400010001000D000A006300640073005F00520075006E00500072006F00
      640073004B0072006E00720001004B00F60072006E007200010001000D000A00
      6300640073005F00520075006E00500072006F0064007300500052004F004400
      55004B0054000100500052004F00440055004B005400010001000D000A006300
      640073005F00520075006E00500072006F0064007300500072006F0064007500
      630074004E006F000100500072006F0064007500630074004E006F0001000100
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A0054006600530065006100720063006800520075006E004E006F00
      01004D0053002000530061006E00730020005300650072006900660001004D00
      53002000530061006E0073002000530065007200690066000100540061006800
      6F006D0061000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0073007400530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A006D007400500072006F00700073002E0056006500
      7200730069006F006E00010037002E00360033002E0030003000200053007400
      61006E0064006100720064002000450064006900740069006F006E0001000100
      0D000A006300640073005F00520075006E004E006F0073002E00500072006F00
      760069006400650072004E0061006D00650001006400730070005F0052007500
      6E004E006F007300010001000D000A006300640073005F00520075006E005000
      72006F00640073002E00500072006F00760069006400650072004E0061006D00
      650001006400730070005F00520075006E00500072006F006400730001000100
      0D000A007300740043006F006C006C0065006300740069006F006E0073005F00
      55006E00690063006F00640065000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540066005300
      65006100720063006800520075006E004E006F00010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A00}
  end
end
