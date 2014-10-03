object fSearchRunNo: TfSearchRunNo
  Left = 223
  Top = 107
  Width = 1002
  Height = 562
  Caption = 'S'#246'k k'#246'rnr'
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
    Width = 994
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
    Width = 994
    Height = 444
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 424
      Height = 442
      Align = alLeft
      TabOrder = 0
      object grdrunNos: TcxGrid
        Left = 1
        Top = 1
        Width = 422
        Height = 440
        Align = alClient
        TabOrder = 0
        object grdrunNosDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
      Height = 442
      Align = alLeft
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 465
      Top = 1
      Width = 528
      Height = 442
      Align = alClient
      TabOrder = 2
      object grdRunProds: TcxGrid
        Left = 1
        Top = 1
        Width = 526
        Height = 440
        Align = alClient
        TabOrder = 0
        object grdRunProdsDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
    Top = 485
    Width = 994
    Height = 50
    Align = alBottom
    TabOrder = 2
    object bbOK: TBitBtn
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 480
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
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
    Version = '5.50'
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
end
