object fPktNrPos: TfPktNrPos
  Left = 177
  Top = 136
  Width = 921
  Height = 465
  Caption = 'Leverant'#246'rspaketnrkoder '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbApplyChanges: TBitBtn
      Left = 16
      Top = 16
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 0
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 120
      Top = 16
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 1
      OnClick = bbCancelChangesClick
    end
  end
  object grdLevKoder: TdxDBGrid
    Left = 0
    Top = 57
    Width = 913
    Height = 381
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ClientNo'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = ds_Verk
    Filter.Active = True
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    object grdLevKoderClientNo: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientNo'
    end
    object grdLevKoderROLL: TdxDBGridMaskColumn
      Width = 101
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ROLL'
    end
    object grdLevKoderClientName: TdxDBGridMaskColumn
      Width = 211
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientName'
    end
    object grdLevKoderPktNrLevKod: TdxDBGridMaskColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PktNrLevKod'
    end
    object grdLevKoderPaketNoPos: TdxDBGridMaskColumn
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PaketNoPos'
    end
    object grdLevKoderPaketNoLength: TdxDBGridMaskColumn
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PaketNoLength'
    end
    object grdLevKoderSupplierCodePos: TdxDBGridMaskColumn
      Width = 96
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SupplierCodePos'
    end
    object grdLevKoderSupplierCodeLength: TdxDBGridMaskColumn
      Width = 109
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SupplierCodeLength'
    end
  end
  object sq_verk: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C.ClientNo, C.ClientName, C.PktNrLevKod,'
      
        'C.PaketNoPos, C.PaketNoLength, C.SupplierCodePos, C.SupplierCode' +
        'Length,'
      'RT.RoleDescription AS ROLL'
      ''
      'FROM   dbo.Client        C'
      '       INNER JOIN dbo.ClientRole    R ON R.ClientNo = C.ClientNo'
      '       INNER JOIN dbo.RoleType    RT ON RT.RoleType = R.RoleType'
      ''
      'WHERE RT.RoleType = 9       '
      ''
      'Order by C.clientName')
    Left = 424
    Top = 112
    object sq_verkClientNo: TIntegerField
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sq_verkClientName: TStringField
      FieldName = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object sq_verkPktNrLevKod: TStringField
      FieldName = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object sq_verkPaketNoPos: TIntegerField
      FieldName = 'PaketNoPos'
      ProviderFlags = [pfInUpdate]
    end
    object sq_verkPaketNoLength: TIntegerField
      FieldName = 'PaketNoLength'
      ProviderFlags = [pfInUpdate]
    end
    object sq_verkSupplierCodePos: TIntegerField
      FieldName = 'SupplierCodePos'
      ProviderFlags = [pfInUpdate]
    end
    object sq_verkSupplierCodeLength: TIntegerField
      FieldName = 'SupplierCodeLength'
      ProviderFlags = [pfInUpdate]
    end
    object sq_verkROLL: TStringField
      FieldName = 'ROLL'
      ProviderFlags = []
      FixedChar = True
    end
  end
  object dsp_verk: TDataSetProvider
    DataSet = sq_verk
    Left = 424
    Top = 160
  end
  object cds_Verk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_verk'
    Left = 424
    Top = 208
    object cds_VerkClientNo: TIntegerField
      DisplayLabel = 'KLIENTNR'
      FieldName = 'ClientNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cds_VerkROLL: TStringField
      FieldName = 'ROLL'
      ProviderFlags = []
      FixedChar = True
    end
    object cds_VerkClientName: TStringField
      DisplayLabel = 'NAMN'
      FieldName = 'ClientName'
      ProviderFlags = []
      Size = 80
    end
    object cds_VerkPktNrLevKod: TStringField
      DisplayLabel = 'LEV. ID'
      FieldName = 'PktNrLevKod'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cds_VerkPaketNoPos: TIntegerField
      DisplayLabel = 'PKTNRPOS'
      FieldName = 'PaketNoPos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkPaketNoLength: TIntegerField
      DisplayLabel = 'PKTNRL'#196'NGD'
      FieldName = 'PaketNoLength'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodePos: TIntegerField
      DisplayLabel = 'LEV.KODPOS'
      FieldName = 'SupplierCodePos'
      ProviderFlags = [pfInUpdate]
    end
    object cds_VerkSupplierCodeLength: TIntegerField
      DisplayLabel = 'LEV.KODL'#196'NGD'
      FieldName = 'SupplierCodeLength'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ds_Verk: TDataSource
    DataSet = cds_Verk
    Left = 424
    Top = 256
  end
end
