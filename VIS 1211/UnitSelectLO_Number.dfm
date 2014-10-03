object frmSelectLO_Number: TfrmSelectLO_Number
  Left = 192
  Top = 114
  Width = 738
  Height = 311
  Caption = 'frmSelectLO_Number'
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
    Top = 239
    Width = 730
    Height = 45
    Align = alBottom
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 730
    Height = 239
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    OnDblClick = dxDBGrid1DblClick
    DataSource = dmLoadEntry.ds_LO_LookUp
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dxDBGrid1ShippingPlanNo: TdxDBGridMaskColumn
      Caption = 'LO'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ShippingPlanNo'
    end
    object dxDBGrid1CustomerNo: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CustomerNo'
    end
    object dxDBGrid1CUSTOMER: TdxDBGridMaskColumn
      Width = 200
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CUSTOMER'
    end
    object dxDBGrid1SHIPPER: TdxDBGridMaskColumn
      Width = 230
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIPPER'
    end
    object dxDBGrid1READYDATE: TdxDBGridMaskColumn
      Width = 184
      BandIndex = 0
      RowIndex = 0
      FieldName = 'READYDATE'
    end
    object dxDBGrid1VESSEL: TdxDBGridMaskColumn
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VESSEL'
    end
    object dxDBGrid1ETD: TdxDBGridColumn
      Width = 208
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ETD'
    end
    object dxDBGrid1ETA: TdxDBGridColumn
      Width = 208
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ETA'
    end
    object dxDBGrid1SHIPPER_REF: TdxDBGridMaskColumn
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIPPER_REF'
    end
    object dxDBGrid1SHIPPERID: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIPPERID'
    end
    object dxDBGrid1SHIPPERS_SHIPDATE: TdxDBGridColumn
      Width = 208
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIPPERS_SHIPDATE'
    end
    object dxDBGrid1SHIPPERS_SHIPTIME: TdxDBGridColumn
      Width = 208
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SHIPPERS_SHIPTIME'
    end
    object dxDBGrid1ORDERNO: TdxDBGridMaskColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ORDERNO'
    end
    object dxDBGrid1ORDERTYPE: TdxDBGridMaskColumn
      Width = 73
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ORDERTYPE'
    end
    object dxDBGrid1SALES_REGION: TdxDBGridMaskColumn
      Width = 187
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SALES_REGION'
    end
  end
end
