object fLOLengths: TfLOLengths
  Left = 404
  Top = 117
  Width = 583
  Height = 492
  Caption = 'LO l'#228'ngder'
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
    Width = 575
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
    Width = 575
    Height = 375
    Align = alClient
    TabOrder = 1
    object grdLOLengthsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
    Top = 416
    Width = 575
    Height = 49
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 224
      Top = 8
      Width = 83
      Height = 32
      Caption = '&St'#228'ng'
      TabOrder = 0
      Kind = bkClose
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
    Version = '5.50'
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
    SQLConnection = dmsConnector.SQLConnection
    Left = 80
    Top = 112
    object sq_PGLengthsActualLengthMM: TFloatField
      FieldName = 'ActualLengthMM'
    end
    object sq_PGLengthsProductLengthNo: TIntegerField
      FieldName = 'ProductLengthNo'
    end
  end
end
