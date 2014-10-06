object frmPackagePicker: TfrmPackagePicker
  Left = 218
  Top = 210
  ActiveControl = grdPkgs
  BorderIcons = [biHelp]
  Caption = 'Paketnr dublett'
  ClientHeight = 204
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlButtons: TPanel
    Left = 0
    Top = 162
    Width = 892
    Height = 42
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 154
    ExplicitWidth = 766
    object btnOK: TBitBtn
      Left = 381
      Top = 1
      Width = 72
      Height = 39
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TBitBtn
      Left = 459
      Top = 1
      Width = 72
      Height = 39
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 162
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 766
    ExplicitHeight = 154
    object grdPkgs: TcxGrid
      Left = 1
      Top = 1
      Width = 890
      Height = 160
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 764
      ExplicitHeight = 152
      object grdPackages: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.KeyFieldNames = 'PackageNo;SupplierCode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdPackagesPackageNo: TcxGridDBColumn
          Caption = 'Paketnr'
          DataBinding.FieldName = 'PackageNo'
          Width = 65
        end
        object grdPackagesSupplierCode: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'SupplierCode'
          Width = 54
        end
        object grdPackagesProductDisplayName: TcxGridDBColumn
          Caption = 'Produkt'
          DataBinding.FieldName = 'ProductDisplayName'
          Width = 468
        end
        object grdPackagesSupplierNo: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierNo'
          Visible = False
        end
        object grdPackagesLengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Width = 289
        end
        object grdPackagesProductNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductNo'
          Visible = False
        end
        object grdPackagesNoOfLengths: TcxGridDBColumn
          DataBinding.FieldName = 'NoOfLengths'
          Visible = False
        end
        object grdPackagesProductLengthNo: TcxGridDBColumn
          DataBinding.FieldName = 'ProductLengthNo'
          Visible = False
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPackages
      end
    end
  end
end
