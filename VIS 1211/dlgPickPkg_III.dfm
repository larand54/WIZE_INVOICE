object frmPackagePicker_III: TfrmPackagePicker_III
  Left = 218
  Top = 210
  Width = 796
  Height = 234
  ActiveControl = grdPackages
  BorderIcons = [biHelp]
  Caption = 'V'#196'LJ ETT PAKET'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 165
    Width = 788
    Height = 42
    Align = alBottom
    TabOrder = 0
    object btnOK: TBitBtn
      Left = 293
      Top = 7
      Width = 66
      Height = 27
      TabOrder = 0
      OnClick = btnOKClick
      Kind = bkOK
    end
    object btnCancel: TBitBtn
      Left = 371
      Top = 7
      Width = 66
      Height = 27
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 165
    Align = alClient
    TabOrder = 1
    object grdPackages: TdxDBGrid
      Left = 1
      Top = 1
      Width = 786
      Height = 163
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = dmInvCtrl.ds_GetPkt
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object grdPackagesPackageNo: TdxDBGridMaskColumn
        Caption = 'PAKETNR'
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PackageNo'
      end
      object grdPackagesSupplierCode: TdxDBGridMaskColumn
        Caption = 'LEV.KOD'
        Width = 53
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SupplierCode'
      end
      object grdPackagesProductDisplayName: TdxDBGridMaskColumn
        Caption = 'PRODUKTBESKRIVNING'
        Width = 242
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ProductDisplayName'
      end
      object grdPackagesLengthDescription: TdxDBGridMaskColumn
        Caption = 'L'#196'NGDBESKRIVNING'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LengthDescription'
      end
      object grdPackagesLogicalInventoryName: TdxDBGridMaskColumn
        Caption = 'SENASTE LAGERGRUPP'
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LogicalInventoryName'
      end
      object grdPackagesClientName: TdxDBGridMaskColumn
        Caption = 'SENASTE '#196'GARE'
        Width = 139
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ClientName'
      end
      object grdPackagesPackageTypeNo: TdxDBGridMaskColumn
        Caption = 'PKTTYPENO'
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PackageTypeNo'
      end
      object grdPackagesLIP: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LIP'
      end
    end
  end
end
