object frmProductionUnit: TfrmProductionUnit
  Left = 242
  Top = 107
  Width = 706
  Height = 378
  Caption = 'M'#228'tpunkter verk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 40
      Width = 75
      Height = 25
      Caption = 'L'#228'gg till rad'
      TabOrder = 0
      OnClick = bbInsertClick
    end
    object bbRemove: TBitBtn
      Left = 112
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Ta bort rad'
      TabOrder = 1
      OnClick = bbRemoveClick
    end
    object bbCancelRow: TBitBtn
      Left = 192
      Top = 40
      Width = 75
      Height = 25
      Caption = #197'ngra rad'
      TabOrder = 2
      OnClick = bbCancelRowClick
    end
    object bbApplyChanges: TBitBtn
      Left = 416
      Top = 40
      Width = 91
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 3
      OnClick = bbApplyChangesClick
    end
    object bbCancelChanges: TBitBtn
      Left = 520
      Top = 40
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 4
      OnClick = bbCancelChangesClick
    end
    object cmbClients: TComboBox
      Left = 24
      Top = 8
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 5
      Text = 'Select client'
      OnChange = cmbClientsChange
    end
  end
  object grdProdUnits: TdxDBGrid
    Left = 0
    Top = 73
    Width = 698
    Height = 278
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dmsContact.ds_ProductionUnit
    Filter.Criteria = {00000000}
    OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
    object grdProdUnitsProductionUnitName: TdxDBGridLookupColumn
      Caption = 'M'#196'TPUNKT'
      Width = 110
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RegPoint'
      ImmediateDropDown = True
    end
    object grdProdUnitsOnSticks: TdxDBGridCheckColumn
      Caption = 'P'#197' STR'#214
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OnSticks'
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object grdProdUnitsSurfacingNo: TdxDBGridMaskColumn
      Caption = 'UTF'#214'RANDE NR'
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SurfacingNo'
    end
    object grdProdUnitsDIM_DIV: TdxDBGridMaskColumn
      Caption = 'DIM OMVANDLING'
      Width = 101
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DIM_DIV'
    end
    object grdProdUnitsSequenceNo: TdxDBGridCheckColumn
      Caption = #214'verf'#246'r till vispakc'
      MinWidth = 20
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SequenceNo'
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object grdProdUnitsProductionUnitNo: TdxDBGridMaskColumn
      Visible = False
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductionUnitNo'
    end
    object grdProdUnitsClientNo: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientNo'
    end
    object grdProdUnitsCreatedUser: TdxDBGridMaskColumn
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatedUser'
    end
    object grdProdUnitsModifiedUser: TdxDBGridMaskColumn
      Visible = False
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifiedUser'
    end
    object grdProdUnitsDateCreated: TdxDBGridColumn
      Visible = False
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DateCreated'
    end
    object grdProdUnitsLogicalInventoryPointNo: TdxDBGridMaskColumn
      Visible = False
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LogicalInventoryPointNo'
    end
  end
end
