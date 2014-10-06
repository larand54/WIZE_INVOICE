object fSelectLORowInLoad: TfSelectLORowInLoad
  Left = 0
  Top = 0
  ActiveControl = grdLORows
  Caption = 'V'#228'lj Lastorderrad'
  ClientHeight = 357
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 1122
    Height = 57
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 520
      Top = 6
      Width = 97
      Height = 43
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object PanelPaket: TPanel
    Left = 0
    Top = 0
    Width = 1122
    Height = 41
    Align = alTop
    Caption = '22x100 furu 4 hyvlat runda h'#246'rn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object grdLORows: TcxGrid
    Left = 0
    Top = 41
    Width = 1122
    Height = 259
    Align = alClient
    TabOrder = 2
    object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmLoadEntrySSP.dsLORows
      DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnVertSizing = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentEven = cxStyleContent
      Styles.ContentOdd = cxStyleContentOdd
      Styles.Header = cxStyleHeader
      Bands = <
        item
          Caption = 'MATCH'
          Width = 52
        end
        item
          Width = 897
        end>
      object grdLORowsDBBandedTableView1MATCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MATCH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Properties.OnChange = grdLORowsDBBandedTableView1MATCHPropertiesChange
        Options.Filtering = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShippingPlanNo'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PKGCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PKGCODE'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 71
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRODUCTDESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERNPRODDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 318
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
        Caption = 'L'#228'ngdbesk.'
        DataBinding.FieldName = 'LENGTHDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 122
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOOFUNITS'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICEUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFERENCE'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV_PERIOD_START'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 44
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV_PERIOD_END'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 43
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ORDERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KR_Ref'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOM_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOM_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRODUCTGROUPNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PCSPERPKG'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductLengthNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SupplierShipPlanObjectNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SupplierShipPlanObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACT_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn
        Caption = 'Akt.l'#228'ngd'
        DataBinding.FieldName = 'ACT_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Options.Filtering = False
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadingLocationNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingLocationNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INTERNPRODDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INTERNPRODDESC'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 137
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ShipToInvPointNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShipToInvPointNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1MIN_LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MIN_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MAX_LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CustomerNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustomerNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CustShipPlanDetailObjectNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ProductLengthGroupNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INCH_THICK'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INVCH_WIDTH'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SurfacingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SpeciesNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GradeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PackageTypeNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Options.Filtering = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Prislista'
        Visible = False
        Options.Filtering = False
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
        Caption = 'Till'#229't alla l'#228'ngder'
        DataBinding.FieldName = 'OverrideRL'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CERTI'
        Width = 111
        Position.BandIndex = 1
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tr'#228'slag'
        Visible = False
        Width = 144
        Position.BandIndex = 1
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadedPkgs'
        Visible = False
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
    end
    object grdLORowsLevel1: TcxGridLevel
      GridView = grdLORowsDBBandedTableView1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 161
    Top = 175
    PixelsPerInch = 96
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor]
      Color = clAqua
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor]
      Color = clBlue
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxStyleHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
    object cxStyleContent: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyleContentOdd: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15524833
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
end
