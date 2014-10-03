object frmSelectLO_NumberCDS: TfrmSelectLO_NumberCDS
  Left = 192
  Top = 114
  Width = 950
  Height = 517
  ActiveControl = meLO_No
  Caption = 'V'#228'lj LO'
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
    Top = 445
    Width = 942
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bbOK: TBitBtn
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = bbOKClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbCancel: TBitBtn
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 39
      Height = 13
      Caption = 'S'#246'k LO:'
    end
    object meLO_No: TdxMaskEdit
      Left = 80
      Top = 8
      Width = 57
      TabOrder = 0
      OnEnter = meLO_NoEnter
      OnKeyDown = meLO_NoKeyDown
      EditMask = '#######'
      IgnoreMaskBlank = False
      Text = '       '
      StoredValues = 4
    end
    object rgOrderType: TRadioGroup
      Left = 208
      Top = 3
      Width = 305
      Height = 33
      Caption = ' Typ av leverans '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'UTLEVERANS'
        'INLEVERANS'
        'B'#196'GGE')
      TabOrder = 1
      OnClick = rgOrderTypeClick
    end
  end
  object grdLookup: TcxGrid
    Left = 0
    Top = 41
    Width = 942
    Height = 404
    Align = alClient
    TabOrder = 6
    object grdLookupDBTableView1: TcxGridDBTableView
      OnDblClick = grdLookupDBTableView1DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmLoadEntryCSD.ds_LO_LookUp
      DataController.KeyFieldNames = 'ShippingPlanNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdLookupDBTableView1ShippingPlanNo: TcxGridDBColumn
        Caption = 'LO'
        DataBinding.FieldName = 'ShippingPlanNo'
      end
      object grdLookupDBTableView1CUSTOMER: TcxGridDBColumn
        Caption = 'Extern Kund'
        DataBinding.FieldName = 'CUSTOMER'
        Width = 160
      end
      object grdLookupDBTableView1ORDERNO: TcxGridDBColumn
        Caption = 'Kontraktnr'
        DataBinding.FieldName = 'ORDERNO'
      end
      object grdLookupDBTableView1ORDERTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'ORDERTYPE'
        Visible = False
        Width = 84
      end
      object grdLookupDBTableView1SUPPLIER: TcxGridDBColumn
        Caption = 'Salesregion'
        DataBinding.FieldName = 'SalesRegion'
        Width = 79
      end
      object grdLookupDBTableView1CustomerNo: TcxGridDBColumn
        DataBinding.FieldName = 'CustomerNo'
        Visible = False
      end
      object grdLookupDBTableView1SHIPPING: TcxGridDBColumn
        DataBinding.FieldName = 'SHIPPING'
        Visible = False
      end
      object grdLookupDBTableView1SupplierNo: TcxGridDBColumn
        DataBinding.FieldName = 'SalesRegionNo'
        Visible = False
      end
    end
    object grdLookupLevel1: TcxGridLevel
      GridView = grdLookupDBTableView1
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <
      item
        PopupMenu = ppMenugrdLO
      end>
    UseSystemFont = True
    Left = 176
    Top = 120
    DockControlHeights = (
      0
      0
      0
      0)
    object bbCustomizeLayoyt: TdxBarButton
      Caption = 'Customize Layout'
      Category = 0
      Hint = 'Customize Layout'
      Visible = ivAlways
    end
  end
  object ppMenugrdLO: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Item = bbCustomizeLayoyt
        Visible = True
      end>
    UseOwnFont = False
    Left = 224
    Top = 152
  end
end
