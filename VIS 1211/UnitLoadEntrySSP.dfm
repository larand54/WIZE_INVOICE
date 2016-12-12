object fLoadEntrySSP: TfLoadEntrySSP
  Left = 247
  Top = 145
  ActiveControl = mePackageNo
  Caption = 'LAST (SSP)'
  ClientHeight = 935
  ClientWidth = 1372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter2: TSplitter
    Left = 0
    Top = 334
    Width = 1372
    Height = 3
    Cursor = crVSplit
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Color = clBlack
    ParentColor = False
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 529
    Width = 1372
    Height = 4
    Cursor = crVSplit
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    Color = clBlack
    ParentColor = False
  end
  object dxPageControl1: TcxPageControl
    Left = 0
    Top = 68
    Width = 1372
    Height = 266
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    Visible = False
    Properties.ActivePage = tsLoadData
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    ClientRectBottom = 266
    ClientRectRight = 1372
    ClientRectTop = 27
    object tsLoadData: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Leveranshuvud'
      object Splitter1: TSplitter
        Left = 0
        Top = 179
        Width = 1372
        Height = 4
        Cursor = crVSplit
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        Color = clBlack
        ParentColor = False
        ExplicitTop = 176
      end
      object pLoadHead: TPanel
        Left = 0
        Top = 0
        Width = 1372
        Height = 91
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object detLoaded: TcxDBDateEdit
          Left = 98
          Top = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LoadedDate'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.Kind = ckDateTime
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = cxEditStyleControllerEditControls
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 0
          Width = 179
        end
        object imgcbStatus: TcxDBImageComboBox
          Left = 98
          Top = 62
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'SenderLoadStatus'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.Images = images1616
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = 'Prelimin'#228'r'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Problem last'
              ImageIndex = 1
              Value = 1
            end
            item
              Description = 'Avslutad'
              ImageIndex = 2
              Value = 2
            end>
          Properties.ReadOnly = True
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 1
          Width = 179
        end
        object teLoadID: TcxDBTextEdit
          Left = 404
          Top = 2
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LoadID'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 2
          Width = 149
        end
        object teFS: TcxDBTextEdit
          Left = 404
          Top = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'FS'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 3
          Width = 149
        end
        object lcLocalShipper: TcxDBLookupComboBox
          Left = 738
          Top = 2
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LocalShippingCompanyNo'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.ds_LocalShipper
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 4
          Width = 179
        end
        object lcFrom: TcxDBLookupComboBox
          Left = 738
          Top = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LocalLoadingLocation'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'CityName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.dsrcCities
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 5
          Width = 179
        end
        object lcTo: TcxDBLookupComboBox
          Left = 738
          Top = 62
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LocalDestinationNo'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.KeyFieldNames = 'CityNo'
          Properties.ListColumns = <
            item
              FieldName = 'CityName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.dsrcCities
          Properties.MaxLength = 0
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 6
          Width = 179
        end
        object eLoadNo: TcxDBTextEdit
          Left = 98
          Top = 2
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LoadNo'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          Enabled = False
          ParentFont = False
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 7
          Width = 179
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'LastNr:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Utlastad:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 66
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Status:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel7: TcxLabel
          Left = 325
          Top = 10
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Last ID:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel8: TcxLabel
          Left = 325
          Top = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'FS:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel9: TcxLabel
          Left = 581
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Lokalfraktf'#246'rare:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel10: TcxLabel
          Left = 581
          Top = 37
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Fr'#229'n:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel11: TcxLabel
          Left = 581
          Top = 66
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Till:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object lcLIP: TcxDBLookupComboBox
          Left = 1063
          Top = 34
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'LIP'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.DropDownWidth = 240
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'LIPNo'
          Properties.ListColumns = <
            item
              MinWidth = 40
              Width = 120
              FieldName = 'LIPName'
            end
            item
              Width = 120
              FieldName = 'PIPNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 16
          Width = 169
        end
        object lcPIP: TcxDBLookupComboBox
          Left = 1063
          Top = 2
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          DataBinding.DataField = 'PIP'
          DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PIPNO'
          Properties.ListColumns = <
            item
              FieldName = 'PIPNAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Style.StyleController = cxEditStyleControllerEditControls
          TabOrder = 17
          Width = 169
        end
        object cxLabel1: TcxLabel
          Left = 948
          Top = 7
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Lagerst'#228'lle:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
        object cxLabel2: TcxLabel
          Left = 948
          Top = 39
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Lagergrupp:'
          ParentFont = False
          Style.StyleController = cxEditStyleControllerFileldLabels
        end
      end
      object grdAddress: TcxGrid
        Left = 0
        Top = 183
        Width = 1372
        Height = 56
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        TabOrder = 1
        object grdAddressDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmsContact.dsrcAddressAndReference
          DataController.KeyFieldNames = 'Address'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Content = cxStyleContent
          Styles.ContentEven = cxStyleContent
          Styles.ContentOdd = cxStyleContentOdd
          Styles.Header = cxStyleHeader
          object grdAddressDBTableView1Address: TcxGridDBColumn
            DataBinding.FieldName = 'Address'
            Options.Filtering = False
          end
          object grdAddressDBTableView1Destination: TcxGridDBColumn
            DataBinding.FieldName = 'Destination'
            Options.Filtering = False
          end
          object grdAddressDBTableView1Reference: TcxGridDBColumn
            DataBinding.FieldName = 'Reference'
            Options.Filtering = False
          end
        end
        object grdAddressLevel1: TcxGridLevel
          GridView = grdAddressDBTableView1
        end
      end
      object grdLO: TcxGrid
        Left = 0
        Top = 91
        Width = 1372
        Height = 88
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        PopupMenu = pmLONumber
        TabOrder = 2
        object grdLODBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmLoadEntrySSP.ds_LSP
          DataController.KeyFieldNames = 'LoadNo;ShippingPlanNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Content = cxStyleContent
          Styles.ContentEven = cxStyleContent
          Styles.ContentOdd = cxStyleContentOdd
          Styles.Header = cxStyleHeader
          object grdLODBTableView1LoadNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadNo'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ShippingPlanNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShippingPlanNo'
            Options.Filtering = False
            Width = 59
          end
          object grdLODBTableView1CUSTOMER: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER'
            Options.Filtering = False
            Width = 114
          end
          object grdLODBTableView1SUPPLIER: TcxGridDBColumn
            DataBinding.FieldName = 'SUPPLIER'
            Options.Filtering = False
            Width = 100
          end
          object grdLODBTableView1LOC_CUST: TcxGridDBColumn
            DataBinding.FieldName = 'LOC_CUST'
            Options.Filtering = False
            Width = 100
          end
          object grdLODBTableView1SHIPPER: TcxGridDBColumn
            DataBinding.FieldName = 'SHIPPER'
            Options.Filtering = False
            Width = 100
          end
          object grdLODBTableView1READYDATE: TcxGridDBColumn
            DataBinding.FieldName = 'READYDATE'
            Options.Filtering = False
            Width = 104
          end
          object grdLODBTableView1VESSEL: TcxGridDBColumn
            DataBinding.FieldName = 'VESSEL'
            Options.Filtering = False
            Width = 100
          end
          object grdLODBTableView1ETD: TcxGridDBColumn
            DataBinding.FieldName = 'ETD'
            Options.Filtering = False
            Width = 70
          end
          object grdLODBTableView1ETA: TcxGridDBColumn
            DataBinding.FieldName = 'ETA'
            Options.Filtering = False
            Width = 70
          end
          object grdLODBTableView1SHIPPER_REF: TcxGridDBColumn
            DataBinding.FieldName = 'SHIPPER_REF'
            Options.Filtering = False
            Width = 70
          end
          object grdLODBTableView1SHIPPERID: TcxGridDBColumn
            DataBinding.FieldName = 'SHIPPERID'
            Options.Filtering = False
          end
          object grdLODBTableView1SHIPPERS_SHIPDATE: TcxGridDBColumn
            DataBinding.FieldName = 'SHIPPERS_SHIPDATE'
            Visible = False
            Options.Filtering = False
            Width = 70
          end
          object grdLODBTableView1SHIPPERS_SHIPTIME: TcxGridDBColumn
            DataBinding.FieldName = 'SHIPPERS_SHIPTIME'
            Visible = False
            Options.Filtering = False
            Width = 70
          end
          object grdLODBTableView1ORDERNO: TcxGridDBColumn
            DataBinding.FieldName = 'ORDERNO'
            Visible = False
            Options.Filtering = False
          end
          object grdLODBTableView1ORDERTYPE: TcxGridDBColumn
            Caption = 'Kontrakttyp'
            DataBinding.FieldName = 'ORDERTYPE'
            Visible = False
            Options.Filtering = False
          end
          object grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn
            DataBinding.FieldName = 'LOADING_LOCATION'
            Visible = False
            Options.Filtering = False
            Width = 60
          end
          object grdLODBTableView1SHIP_TO: TcxGridDBColumn
            DataBinding.FieldName = 'SHIP_TO'
            Visible = False
            Options.Filtering = False
            Width = 60
          end
          object grdLODBTableView1SupplierNo: TcxGridDBColumn
            DataBinding.FieldName = 'SupplierNo'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 87
          end
          object grdLODBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ModifiedUser: TcxGridDBColumn
            DataBinding.FieldName = 'ModifiedUser'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1DateCreated: TcxGridDBColumn
            DataBinding.FieldName = 'DateCreated'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
            Width = 84
          end
          object grdLODBTableView1CustomerNo: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerNo'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ObjectType: TcxGridDBColumn
            DataBinding.FieldName = 'ObjectType'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1Avrop_CustomerNo: TcxGridDBColumn
            DataBinding.FieldName = 'Avrop_CustomerNo'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1LoadingLocationNo: TcxGridDBColumn
            DataBinding.FieldName = 'LoadingLocationNo'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1ShipToInvPointNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShipToInvPointNo'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
          object grdLODBTableView1Shipping: TcxGridDBColumn
            DataBinding.FieldName = 'Shipping'
            Visible = False
            Options.Filtering = False
            VisibleForCustomization = False
          end
        end
        object grdLOLevel1: TcxGridLevel
          GridView = grdLODBTableView1
        end
      end
    end
    object tsLoadNote: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Notering'
      object meInternalNote: TcxDBMemo
        Left = 0
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        DataBinding.DataField = 'InternalNote'
        DataBinding.DataSource = dmLoadEntrySSP.ds_LoadHead
        TabOrder = 0
        Height = 239
        Width = 1372
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1372
    Height = 68
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 1257
      Height = 68
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 1255
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel6: TPanel
      Left = 1257
      Top = 0
      Width = 34
      Height = 68
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alRight
      TabOrder = 1
      object Edit1: TEdit
        Left = 10
        Top = 10
        Width = 1
        Height = 24
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object Panel7: TPanel
      Left = 1291
      Top = 0
      Width = 81
      Height = 68
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alRight
      TabOrder = 2
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 79
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object PanelLORows: TPanel
    Left = 0
    Top = 337
    Width = 1372
    Height = 192
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1370
      Height = 20
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'LASTORDERRADER'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object grdLORows: TcxGrid
      Left = 1
      Top = 21
      Width = 1370
      Height = 170
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      PopupMenu = ppmenuLO_Lines
      TabOrder = 1
      object grdLORowsDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = grdLORowsDBBandedTableView1CellClick
        DataController.DataSource = dmLoadEntrySSP.dsLORows
        DataController.KeyFieldNames = 'SupplierShipPlanObjectNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skSum
            FieldName = 'LoadedPkgs'
            Column = grdLORowsDBBandedTableView1LoadedPkgs
          end
          item
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnVertSizing = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.OnGetContentStyle = grdLORowsDBBandedTableView1StylesGetContentStyle
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
          Width = 29
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingPlanNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 43
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
          Width = 211
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LENGTHDESC: TcxGridDBBandedColumn
          Caption = 'L'#228'ngdbesk.'
          DataBinding.FieldName = 'LENGTHDESC'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 83
          Position.BandIndex = 1
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1NOOFUNITS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOOFUNITS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 72
          Position.BandIndex = 1
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOLUNIT'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 52
          Position.BandIndex = 1
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 43
          Position.BandIndex = 1
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PRICEUNIT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRICEUNIT'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REFERENCE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 88
          Position.BandIndex = 1
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LEV_PERIOD_START: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LEV_PERIOD_START'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 44
          Position.BandIndex = 1
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LEV_PERIOD_END: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LEV_PERIOD_END'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 43
          Position.BandIndex = 1
          Position.ColIndex = 22
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
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1KR_Ref: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KR_Ref'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 49
          Position.BandIndex = 1
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1NOM_THICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOM_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1NOM_WIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOM_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PRODUCTGROUPNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUCTGROUPNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PCSPERPKG: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCSPERPKG'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 20
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
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ACT_THICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACT_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ACT_WIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACT_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ACT_LENGTH: TcxGridDBBandedColumn
          Caption = 'Akt.l'#228'ngd'
          DataBinding.FieldName = 'ACT_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 67
          Position.BandIndex = 1
          Position.ColIndex = 11
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
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1MAX_LENGTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MAX_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 17
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
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ProductLengthGroupNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductLengthGroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1INCH_THICK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INCH_THICK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1INVCH_WIDTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVCH_WIDTH'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SpeciesNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1GradeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GradeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PackageTypeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PackageTypeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 1
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1Prislista: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Prislista'
          Visible = False
          Options.Filtering = False
          Width = 59
          Position.BandIndex = 1
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
          Caption = 'Till'#229't alla l'#228'ngder'
          DataBinding.FieldName = 'OverrideRL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 52
          Position.BandIndex = 1
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1CERTI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CERTI'
          Width = 41
          Position.BandIndex = 1
          Position.ColIndex = 41
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1Trslag: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tr'#228'slag'
          Visible = False
          Width = 144
          Position.BandIndex = 1
          Position.ColIndex = 42
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LoadedPkgs'
          Width = 110
          Position.BandIndex = 1
          Position.ColIndex = 43
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1PkgDiff: TcxGridDBBandedColumn
          Caption = 'Diff'
          DataBinding.FieldName = 'PkgDiff'
          PropertiesClassName = 'TcxLabelProperties'
          Styles.OnGetContentStyle = grdLORowsDBBandedTableView1PkgDiffStylesGetContentStyle
          Width = 76
          Position.BandIndex = 1
          Position.ColIndex = 44
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Paketstorlek'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdLORowsDBBandedTableView1ShippingPlanStatus: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingPlanStatus'
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object grdLORowsLevel1: TcxGridLevel
        GridView = grdLORowsDBBandedTableView1
      end
    end
  end
  object PanelPackages: TPanel
    Left = 0
    Top = 533
    Width = 1372
    Height = 402
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 7
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1370
      Height = 46
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object mePackageNo: TcxMaskEdit
        Left = 128
        Top = 6
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ParentFont = False
        Properties.ReadOnly = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -20
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnKeyDown = mePackageNoKeyDown
        Width = 267
      end
      object cxLabel3: TcxLabel
        Left = 10
        Top = 14
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ange paketnr:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -18
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxButton1: TcxButton
        Left = 404
        Top = 4
        Width = 119
        Height = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acRaderaPaket
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cxButton2: TcxButton
        Left = 532
        Top = 4
        Width = 119
        Height = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acPickPkgNos
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cxButton3: TcxButton
        Left = 660
        Top = 4
        Width = 267
        Height = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acKopplaPaketMotLOManuellt
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbKopplaEjMotDublett: TcxCheckBox
        Left = 951
        Top = 12
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Koppla ej om dublett'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = clMaroon
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -15
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 173
      end
    end
    object grdPkgs: TcxGrid
      Left = 1
      Top = 47
      Width = 1370
      Height = 354
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      PopupMenu = pmPkgs
      TabOrder = 1
      object grdPkgsDBBandedTableView1: TcxGridDBBandedTableView
        OnKeyDown = grdPkgsDBBandedTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        OnEditing = grdPkgsDBBandedTableView1Editing
        DataController.DataSource = dmLoadEntrySSP.ds_LoadPackages2
        DataController.KeyFieldNames = 'LoadNo;LoadDetailNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skCount
            FieldName = 'PACKAGENO'
            Column = grdPkgsDBBandedTableView1PACKAGENO
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'M3_NET'
            Column = grdPkgsDBBandedTableView1M3_NET
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'KVM'
            Column = grdPkgsDBBandedTableView1KVM
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'M3_NOM'
            Column = grdPkgsDBBandedTableView1M3_NOM
          end
          item
            Format = '######'
            Kind = skSum
            FieldName = 'PCS'
            Column = grdPkgsDBBandedTableView1PCS
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'MFBM'
            Column = grdPkgsDBBandedTableView1MFBM
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'LOPM'
            Column = grdPkgsDBBandedTableView1LOPM
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsCustomize.ColumnVertSizing = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideSelection = True
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.Content = cxStyleContent
        Styles.ContentEven = cxStyleContent
        Styles.ContentOdd = cxStyleContentOdd
        Styles.OnGetContentStyle = grdPkgsDBBandedTableView1StylesGetContentStyle
        Styles.Footer = cxStyleHeader
        Styles.Header = cxStyleHeader
        Bands = <
          item
            Caption = 'OTHER'
          end>
        object grdPkgsDBBandedTableView1PACKAGENO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PACKAGENO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SupplierCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SupplierCode'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 39
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingPlanNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 71
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PRODUCT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUCT'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PackageOK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PackageOK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 0
          Properties.ValueUnchecked = 1
          Options.Filtering = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ProblemPackageLog: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProblemPackageLog'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 103
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1M3_NET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M3_NET'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 51
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PCS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1M3_NOM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'M3_NOM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1MFBM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MFBM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 59
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1KVM: TcxGridDBBandedColumn
          Caption = 'm2'
          DataBinding.FieldName = 'KVM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 58
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LOPM: TcxGridDBBandedColumn
          Caption = 'Lpm'
          DataBinding.FieldName = 'LOPM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PCS_PER_LENGTH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PCS_PER_LENGTH'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 106
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1DefaultCustShipObjectNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DefaultCustShipObjectNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Width = 49
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ProductLengthNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductLengthNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ALMM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALMM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ActualThicknessMM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ActualThicknessMM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ActualWidthMM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ActualWidthMM'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SurfacingNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SurfacingNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1SpeciesNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SpeciesNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1MainGradeNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MainGradeNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1NoOfLengths: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NoOfLengths'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1OverrideMatch: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OverrideMatch'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Options.Filtering = False
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1DateCreated: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DateCreated'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ProductNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ProductNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LoadNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LoadNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LoadDetailNo: TcxGridDBBandedColumn
          Caption = 'Radnr'
          DataBinding.FieldName = 'LoadDetailNo'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 39
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1NoOfPackages: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NoOfPackages'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Width = 67
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1PACKAGETYPENO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PACKAGETYPENO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1CreatedUser: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CreatedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ModifiedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1LIPNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LIPNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Pkg_State: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Pkg_State'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Pkg_Function: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Pkg_Function'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Changed: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Changed'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Defsspno: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Defsspno'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
          Width = 51
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1OverrideRL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'OverrideRL'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 135
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1InvNr: TcxGridDBBandedColumn
          Caption = 'IK'
          DataBinding.FieldName = 'InvNr'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Paketstorlek: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Paketstorlek'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 148
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1Certfiering: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Certfiering'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 122
          Position.BandIndex = 0
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object grdPkgsDBBandedTableView1KG: TcxGridDBBandedColumn
          DataBinding.FieldName = 'KG'
          PropertiesClassName = 'TcxLabelProperties'
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
      end
      object grdPkgsLevel1: TcxGridLevel
        GridView = grdPkgsDBBandedTableView1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'Pkgs'
      'LONumber'
      'LOLines')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <
      item
        PopupMenu = pmPkgs
      end
      item
        PopupMenu = pmLONumber
      end
      item
        PopupMenu = ppmenuLO_Lines
      end>
    UseSystemFont = False
    Left = 760
    Top = 512
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 253
      FloatTop = 147
      FloatClientWidth = 161
      FloatClientHeight = 308
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbSaveLoad'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'lbDeleteLoad'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'lbStartBarCodeReading'
        end
        item
          Visible = True
          ItemName = 'lbPkgNoSerie'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbClose'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbSaveLoad: TdxBarLargeButton
      Action = acSaveLoad
      Category = 0
    end
    object lbClose: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbReValidateAllPkgs: TdxBarLargeButton
      Action = acValidateAllPkgs
      Category = 0
    end
    object lbPackageEntry: TdxBarLargeButton
      Action = acPkgEntry
      Category = 0
    end
    object lbDeleteLoad: TdxBarLargeButton
      Action = acDeleteLoad
      Category = 0
    end
    object siPrint: TdxBarSubItem
      Caption = 'Skriv ut'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbFS'
        end
        item
          Visible = True
          ItemName = 'lbHyvelOrder'
        end
        item
          Visible = True
          ItemName = 'lbLastOrderAllaVerk'
        end
        item
          Visible = True
          ItemName = 'lbLastOrderErtVerk'
        end
        item
          Visible = True
          ItemName = 'lbSpecAllaLasterLO'
        end>
    end
    object lbFS: TdxBarLargeButton
      Action = acPrintFS
      Category = 0
    end
    object lbHyvelOrder: TdxBarLargeButton
      Action = acPrintHyvelOrder
      Category = 0
    end
    object lbLastOrderAllaVerk: TdxBarLargeButton
      Action = acLOAllaVerk
      Category = 0
    end
    object lbLastOrderErtVerk: TdxBarLargeButton
      Action = acPrintLOErtVerk
      Category = 0
    end
    object lbSpecAllaLasterLO: TdxBarLargeButton
      Action = acPrintSpecAllaLasterLO
      Category = 0
    end
    object lbPkgNoSerie: TdxBarLargeButton
      Action = acPktNrSerie
      Category = 0
    end
    object bbTally_Ver2: TdxBarButton
      Caption = 'F'#246'ljesedel Ver2'
      Category = 0
      Hint = 'F'#246'ljesedel Ver2'
      Visible = ivAlways
      OnClick = bbTally_Ver2Click
    end
    object lbStartBarCodeReading: TdxBarLargeButton
      Action = acStreckKodsinlasning
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acImportPackages
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acCreateInternLO
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSaveAndOK
      Caption = 'Avsluta && Spara F10'
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acPrintFS
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acPrintFSMisMatch
      Category = 0
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000424242000084
        8400848484008C8C8C00426BB500C6C6C60000E7F70000EFF700FF00FF00006B
        FF000084FF0000ADFF0010B5FF005ABDFF0000CEFF0000DEFF0000E7FF0000EF
        FF0029EFFF0000F7FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF006BFF
        FF0073FFFF00C6FFFF00E7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080808080808
        0800000000080808080808080808080803051D02020008080808080808080808
        0300000000000808080808080808080803051D0202000808080808080B080808
        0302020202000808080B08080809080A0114140E140104080908080808080B0A
        140610100614040B0808080B08080D1410111110100F140408080808090D1B12
        1113141410100F1404090808080D1B19171414141411100E04080808090D1B1C
        18151414141310140409080B080D1B1C191814141413140E0408080808080D1B
        1C1A171414140E04080808080808090D1B1C1C14140E040908080808090B0808
        0D0D0C0C0C0C08080B0908080808080808080808080808080808}
    end
    object dxBarButton4: TdxBarButton
      Action = acMailaFS
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSetStatusPrelandSave
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Verktyg'
      Category = 0
      Hint = 'Verktyg'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmMenuOptions
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acGetVPPackages
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acPktNrSerie
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acShowLoadHeader
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = acPrintCMR
      Category = 0
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = acPrintFSandCMR
      Category = 0
    end
    object lbValidatePkg: TdxBarLargeButton
      Action = acValidatePkg
      Category = 1
    end
    object lbRemovePackage: TdxBarLargeButton
      Action = acInsertPkgToInventory
      Category = 1
    end
    object lbSetDefaultMatchAllPkg: TdxBarLargeButton
      Action = acSetDefaultMatchOnAllPkgs
      Category = 1
    end
    object lbDeletePkg: TdxBarLargeButton
      Action = acRemovePkgFromSystem
      Caption = 'Ta bort markerade paketet fr'#229'n systemet'
      Category = 1
    end
    object lbRemoveAllPkgs: TdxBarLargeButton
      Action = acInsertAllPkgsToInventory
      Category = 1
    end
    object lbDeleteALLPkgs: TdxBarLargeButton
      Action = acRemoveAllPkgsFromSystem
      Category = 1
    end
    object lbUndo: TdxBarLargeButton
      Action = acUndoPkgOperation
      Category = 1
    end
    object lbPkgInfo: TdxBarLargeButton
      Action = acPkgInfo
      Category = 1
    end
    object bbConnectPkgsToLO: TdxBarButton
      Action = acKopplaPaketMotLOManuellt
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acOpenLOForm
      Category = 2
    end
    object bbPickPkgNos: TdxBarButton
      Action = acPickPkgNos
      Category = 3
    end
    object bbAddPkgPerPkgCode: TdxBarButton
      Action = acAddPkgByPkgCode
      Category = 3
    end
    object bbRemovePkgsPerPkgCode: TdxBarButton
      Action = acTaBortPaketPerPaketKod
      Category = 3
    end
  end
  object pmPkgs: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbValidatePkg'
      end
      item
        Visible = True
        ItemName = 'lbReValidateAllPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbRemovePackage'
      end
      item
        Visible = True
        ItemName = 'lbRemoveAllPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbDeletePkg'
      end
      item
        Visible = True
        ItemName = 'lbDeleteALLPkgs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbUndo'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbSetDefaultMatchAllPkg'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'lbPkgInfo'
      end>
    UseOwnFont = True
    Left = 528
    Top = 656
  end
  object pmLONumber: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 712
    Top = 336
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 664
    Top = 512
    Bitmap = {
      494C01010B000D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00A59C9C00AD9C9C00ADA59C00AD9C
      9400A594940094848400736B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5007B73730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000104A1000104A1000104A
      1000104A10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000000000000ADAD
      FD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104A1000108C180039CE390039CE
      390063AD6300428C420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000108C1800108C180039CE390039CE390039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000108C180039CE390042CE420042CE420039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B0000000000000000000000000000000000000000000000
      00000000000000000000108C180039CE390073DE730063DE63005AD65A004AD6
      4A0042C6420063AD6300108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C00000000000000000000000000000000000000
      000000000000428C4200108C180073DE730073DE730073DE730073DE730063DE
      63005AD65A0039CE3900108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE6300000000000000000000D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B00000000000000000000000000000000000000
      0000428C4200108C180073DE730073DE7B0073DE730073DE730039CE390073DE
      730073DE730073DE730039CE3900108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B0000000000000000000000000000000000108C
      1800428C420094F79C0094F79C0084EF8C0073DE730039CE3900108C180039CE
      390073DE730073DE730073DE7300108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE6300000000000000000000EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000000000000000000108C180073DE
      730094F79C0094F79C0094F79C0094F79C0039CE3900108C180000000000108C
      180073DE730073DE730073DE730073DE7300108C180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE6300000000000000000000EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C940000000000000000000000000063AD630073DE
      730094F79C0094F79C0073DE7300108C1800428C42000000000000000000428C
      420039CE390073DE7B0084EF8C0073DE730039CE3900428C4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE6300000000000000000000EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C0000000000000000000000000063AD630039CE
      390073DE730039CE3900108C1800000000000000000000000000000000000000
      0000108C180073DE730094F79C0094F79C0073DE730063AD6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC6000000000000000000EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C000000000000000000000000000000000063AD
      630063AD630063AD630000000000000000000000000000000000000000000000
      000000000000108C180094F79C0094F79C0094F79C0073DE7300108C18000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B5000000000000000000EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063AD630094F79C0094F79C0094F79C0073DE7300428C
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063AD630094F79C0094F79C0084EF8C0039CE
      390063AD63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E7000000000000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039CE390094F79C00A5F7A50094F7
      9C0039CE390063AD630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE630000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039CE3900BDFFBD00BDFF
      BD0094F79C0039CE390063AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE630000000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039CE3900BDFF
      BD00BDFFBD0094F79C0063AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000039CE
      3900BDFFBD0073DE730063AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B2100000000000000000000000000000000000000000000000000F7E7
      DE00EFDED600FFFFFF00FFFFFF00FFFFF700FFFFE700FFF7D600FFEFBD00FFE7
      B500FFE7B500FFE7BD00FFE7D600FFFFF700FFFFFF00FFFFFF00F7EFE700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039CE390063AD630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EFE700EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFDED600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700EFDED600EFDED600EFDED600EFDED600EFDE
      D600EFDED600EFDED600EFDED600EFDED600F7EFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000CE630000FFFF
      FF00FFF7EF00FFF7EF00FFF7E700FFEFD600FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFEFD600CE630000CE63
      0000CE630000FFE7C600FFE7C600CE630000CE630000CE630000FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C6000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFF700FFF7EF00E7A56300DE7B
      0000CE630000FFEFD600FFE7C600E7A56300DE7B0000CE630000FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00424242004242420042424200FFFFFF00424242004242420042424200E7E7
      E7004242420042424200C6C6C600DEDEDE00DEDEDE00DEDEDE0042424200CECE
      CE00CECECE0042424200C6C6C6000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFEFD600FFEFD600E7A56300E7A56300CE630000FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF0042424200FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E70042424200E7E7E7004242420042424200424242004242
      4200DEDEDE0042424200C6C6C6000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7C600FFDE
      B500FFDEB500CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00C6C6C6004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200DEDEDE0042424200DEDE
      DE00DEDEDE0042424200CECECE000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFE7C600FFE7C600FFE7
      C600FFDEB500CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200FFFF
      FF00FFFFFF00E7E7E70042424200E7E7E70042424200E7E7E700E7E7E700DEDE
      DE00DEDEDE0042424200CECECE000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFF7EF00CE630000CE630000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF0042424200FFFFFF00FFFFFF00424242004242420042424200FFFF
      FF004242420042424200C6C6C600E7E7E70042424200E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200CECECE000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFEFD600FFE7
      C600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700DEDEDE0042424200DEDEDE00000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFEFD600FFEF
      D600FFE7C600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE0000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200E7E7E700424242004242
      4200E7E7E70042424200DEDEDE00000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFF7EF00FFFFFF00FFF7EF00FFF7EF00FFEF
      D600FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00CE630000CE630000CE630000FFFFFF00FFFFFF00CE630000CE63
      0000CE630000FFFFFF00FFFFFF00CE630000CE630000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00E7A56300DE7B0000CE630000FFFFFF00FFFFFF00E7A56300DE7B
      0000CE630000FFFFFF00FFFFFF00E7A56300DE7B0000CE630000FFF7EF00FFF7
      EF00FFEFD600CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200E7E7E70042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00E7A56300E7A56300CE630000FFFFFF00FFFFFF00E7A56300E7A5
      6300CE630000FFFFFF00FFFFFF00E7A56300E7A56300CE630000FFF7EF00FFF7
      EF00FFF7EF00CE630000000000000000000000000000E7E7E70042424200FFFF
      FF004242420042424200FFFFFF0042424200FFFFFF0042424200424242004242
      420042424200FFFFFF0042424200FFFFFF0042424200FFFFFF00424242004242
      4200FFFFFF0042424200E7E7E700000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000D66B0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00FFFFF700FFF7EF00FFF7E700FFF7
      E700FFF7EF00CE630000000000000000000000000000E7E7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C66B
      6B00C6636300CE636300B55252009C6B6B00B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5737300942929009431
      31009C3939009C4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00527BC600FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00317BEF00527BC600296BC600FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00397BE700007BFF000073F700527BC600FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00009CFF00008CFF00008CFF00527BC600FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      94000000000000000000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C66363009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF0000B5FF00008CFF000094FF00527BC600527B
      C600FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      94000000000000000000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE6363009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A0000B5FF0008C6FF00009CFF00009C
      FF00527BC600F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C000000000000000000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      6300000000000000000000000000000000000000000000000000B5847300C66B
      6B00BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE6363009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C210000B5FF0008BDFF0000AD
      FF00009CFF00527BC600EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A5000000000000000000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      6300000000000000000000000000000000000000000000000000B5847300AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE6363009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100527BC600527BC600527BC60000C6FF0008FFFF0031F7
      FF0010BDFF0000ADFF00527BC600527BC600F7F7F700EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A009C4A4A000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000A5A5
      A500F7F7F700EF9C210029ADFF0000C6FF0000EFFF0000F7FF0000F7FF0000FF
      FF004AEFFF0018CEFF0000A5FF00527BC600EF9C2100EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C210039A5FF0000C6FF0000EFFF0000F7FF0000EFFF0000DE
      FF0000FFFF0000FFFF0039EFFF0008C6FF00527BC600EF9C2100EFEFEF00ADAD
      FD000000000000000000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E70008C6FF0039E7FF004AEFFF0042F7FF0018FF
      FF0000FFFF0000FFFF0008FFFF0021FFFF00527BC600EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A009C4A4A0000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C210031D6FF0008F7FF0000FF
      FF0000F7FF0000D6FF0000B5FF00527BC600EF9C2100EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E70000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0031D6
      FF0000F7FF0000EFFF0000ADFF0000A5FF00527BC600DEDEDE00DEDEDE00ADB5
      B5000000000000000000000000000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D60031D6FF0042DEFF0010D6FF005AA5FF00527BC600D6D6D600B5B5
      B5000000000000000000000000000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D60031D6FF0052A5FF00527BC600D6D6D600B5B5
      B50000000000000000000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      6300000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E70000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A009C4A4A00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5847300AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A009C4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD42
      4200CE9C9C00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C68C8C00B552520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFE00FFFFFFFF000000FFFFFFF8
      003FFFFFFF000000C00003F0001FFF87FF000000C00003E0000FFF03FF000000
      C00003C00007FE03FF000000C00003800003FE03FF000000C00003800003FC01
      FF000000C00003800001F801FF000000C00003000001F000FF000000C0000300
      0001E000FF000000C00003000001C0207F000000C00003000001C0603F000000
      C00003000001C1F03F000000C00003000001E3F81F000000C00003000001FFFC
      0F000000C00003000001FFFE07000000C00003000001FFFF03000000C0000380
      0003FFFF81000000C00003800003FFFFC1000000C00003C00007FFFFE1000000
      E00007E0000FFFFFF3000000FFFFFFF0001FFFFFFF000000FFFFFFF8003FFFFF
      FF000000FFFFFFFC007FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0C1FFF
      FFF9FFFFFFFFFFFFFC0007FFFFF1C00003FFFFFFF00001C7FFE3C00003C00003
      E00003C3FF87C00003800001800003C1FF0FC00003800001800003E0FE1FC000
      03800001800003F07C3FC00003800001800003FC307FC00003800001800003FE
      00FFC00003800001800003FF01FFC00003800001C00003FF83FFC00003800001
      E00007FF01FFC00003800001F8000FFE00FFC00003800001F8001FFC187FC000
      03800001FC007FF83C3FC00003800001FC00FFF07F1FC00003800001FC01FFE0
      FF8FC00003800001FC01FFC1FFEFC00003C00003FC01FF83FFFFC00003FFFFFF
      FC01FF87FFFFE00007FFFFFFF803FF8FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00003FF
      FFFFE0000FFFFFFFC00001FFFFFFE0000FFF1FFFC000018000FFE0000FF8000F
      C0000180007FE0000FE0000FC0000180003FE0000FC0000FC0000180001FE000
      0FC0000FC0000180000FE0000FC0000FC00001800007E0000FC0000FC0000180
      0003E0000FC0000FC00001800001E0000FC0000FC00001800001E0000FC0000F
      C00001800001E0000FC0000FC00001800001E0000FC0000FC00001800001E000
      0FC0000FC00001C00001E0000FC0000FC00001E00001E0000FC0000FC00001F0
      0001E0000FC0000FC00001F80001E0000FE0000FC00001FC0001E0000FF8000F
      C00001FE0001FFFFFFFE1FFFC00001FF0001FFFFFFFFFFFFE00003FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object images1616: TImageList
    Left = 208
    Top = 288
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C006B6B6B00525252004A4A4A004A4A4A004A4A4A00525252009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      FD00E7CEC600EFDED600F7E7D600F7E7D600EFDED600EFDED600CEBDB5005A5A
      5A00737373009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEC6BD00F7E7
      D600F7F7F700E7E7E700CEB5A500D6AD9400DEC6BD00EFF7F700F7EFEF00EFDE
      D6008C847B006B6B6B009C9C9C00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6CE00F7E7DE00F7FF
      FF00CE9C8400B54A1000BD633900D6AD9C00C65A2100BD522100D6AD9C00F7FF
      FF00F7DED6007B736B0073737300000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600F7FFFF00C67B
      5A00BD4A1000C6521800C6A59400FFFFFF00DE947300BD4A1000B54A1000CE9C
      8400F7FFFF00EFDED6005A5A5A009C9C9C000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700F7F7F700D6AD9400BD4A
      1000CE633100CE632900CE6B3900DE8C6B00CE632900CE633100C65A2900B54A
      1000DEC6BD00F7EFE700A59C9400636363000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7F7F700C6633100C65A
      2900CE6B3100CE5A2100CE8C6B00F7E7DE00CE6B3900C65A2100CE633100C652
      1800C67B5200F7FFFF00DECEC6005252520000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700EFDED600C65A2100CE63
      3100CE633100CE5A2100C6846B00FFFFFF00EFAD9400C64A1000CE633100CE63
      2900C65A2900F7EFEF00EFDED6005252520000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7DECE00CE5A2100CE63
      3100CE633100CE632900C6522100CEB5A500FFFFFF00E79C7B00C6521800CE63
      2900C65A2900F7EFEF00EFDED6005252520000000000000000000000FF000000
      FF000000FF000000FF00000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFE700DE6B3100D66B
      3100CE632900C65A2100C6521800BD4A1000DECEC600FFFFFF00D6734200CE5A
      2100CE6B3900FFF7F700EFDED6006B6B6B000000000000000000000000000000
      FF000000FF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700FFFFFF00F79C6B00E763
      2900CE8C6B00EFE7DE00D67B5200BD310000D69C7B00FFFFFF00DE8C6300CE52
      1800E79C7300FFFFFF00DEC6BD00ADADAD000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFE700F7EFEF00FFEFDE00FF8C
      4A00DE845A00EFFFFF00FFFFFF00E7BDA500F7FFFF00EFFFFF00E7733900E773
      3900FFEFEF00F7E7DE00A59C9400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFDED600FFFFFF00FFEF
      CE00FFB57300EFAD8400EFE7DE00EFF7F700EFE7DE00F7A57B00FF8C4A00FFDE
      CE00FFFFFF00EFDED600CECEC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7EFEF00EFDED600FFFF
      FF00FFFFFF00FFF7C600FFDEAD00FFCE9400FFCE9400FFD6AD00FFF7F700FFFF
      FF00EFDED600CECEC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFEF00EFDE
      D600F7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7DE00EFDE
      D600DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7EF
      E700F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00FFFFFF8FF0000E003FFFFF87F0000
      C001FCFFF07F00008001F87FF03F00008000F03FE03F00000000E01FE01F0000
      0000C01FE01F00000000C00FF30F00000000C207FF0F00000000E703FF870000
      0000FF83FF8700000001FFC7FFC300008001FFFFFFC700008003FFFFFFEF0000
      C007FFFFFFFF0000E00FFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ppmenuLO_Lines: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbConnectPkgsToLO'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbAddPkgPerPkgCode'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbPickPkgNos'
      end>
    UseOwnFont = True
    Left = 208
    Top = 384
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 384
    Top = 336
    object acValidatePkg: TAction
      Caption = 'Validera paket'
      OnExecute = acValidatePkgExecute
      OnUpdate = acValidatePkgUpdate
    end
    object acValidateAllPkgs: TAction
      Caption = 'Validera alla pkt'
      Hint = 'Validera alla paket'
      ImageIndex = 2
      OnExecute = acValidateAllPkgsExecute
      OnUpdate = acValidateAllPkgsUpdate
    end
    object acInsertPkgToInventory: TAction
      Caption = 'L'#228'gg markerade paket tillbaks till lager'
      OnExecute = acInsertPkgToInventoryExecute
      OnUpdate = acInsertPkgToInventoryUpdate
    end
    object acInsertAllPkgsToInventory: TAction
      Caption = 'L'#228'gg alla paket till lagret'
      OnExecute = acInsertAllPkgsToInventoryExecute
      OnUpdate = acInsertAllPkgsToInventoryUpdate
    end
    object acRemovePkgFromSystem: TAction
      Caption = 'Ta bort paketet fr'#229'n systemet'
      OnExecute = acRemovePkgFromSystemExecute
      OnUpdate = acRemovePkgFromSystemUpdate
    end
    object acRemoveAllPkgsFromSystem: TAction
      Caption = 'Ta bort alla paket fr'#229'n systemet'
      OnExecute = acRemoveAllPkgsFromSystemExecute
      OnUpdate = acRemoveAllPkgsFromSystemUpdate
    end
    object acUndoPkgOperation: TAction
      Caption = #197'ngra'
      OnExecute = acUndoPkgOperationExecute
      OnUpdate = acUndoPkgOperationUpdate
    end
    object acSetDefaultMatchOnAllPkgs: TAction
      Caption = 'S'#228'tt standard matchning p'#229' alla paket'
      OnExecute = acSetDefaultMatchOnAllPkgsExecute
      OnUpdate = acSetDefaultMatchOnAllPkgsUpdate
    end
    object acPkgInfo: TAction
      Caption = 'Paket information'
      OnExecute = acPkgInfoExecute
      OnUpdate = acPkgInfoUpdate
    end
    object acAddPkgByPkgCode: TAction
      Caption = 'L'#228'gg till paket per paketkod'
      OnExecute = acAddPkgByPkgCodeExecute
      OnUpdate = acAddPkgByPkgCodeUpdate
    end
    object acPickPkgNos: TAction
      Caption = 'Plocka paket'
      OnExecute = acPickPkgNosExecute
      OnUpdate = acPickPkgNosUpdate
    end
    object acSaveLoad: TAction
      Caption = 'Spara F3'
      ImageIndex = 0
      ShortCut = 114
      OnExecute = acSaveLoadExecute
      OnUpdate = acSaveLoadUpdate
    end
    object acPrintTallyUSNote: TAction
      Caption = 'F'#246'ljesedel USA'
      OnExecute = acPrintTallyUSNoteExecute
    end
    object acKopplaPaketMotLOManuellt: TAction
      Caption = 'Koppla markerade paket mot vald LO-rad'
      OnExecute = acKopplaPaketMotLOManuelltExecute
      OnUpdate = acKopplaPaketMotLOManuelltUpdate
    end
    object acDeleteLoad: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 5
      ShortCut = 116
      OnExecute = acDeleteLoadExecute
      OnUpdate = acDeleteLoadUpdate
    end
    object acPrintFS: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel'
      ImageIndex = 4
      OnExecute = acPrintFSExecute
      OnUpdate = acPrintFSUpdate
    end
    object acPrintHyvelOrder: TAction
      Category = 'Print'
      Caption = 'Hyvelorder'
      OnExecute = acPrintHyvelOrderExecute
      OnUpdate = acPrintHyvelOrderUpdate
    end
    object acLOAllaVerk: TAction
      Category = 'Print'
      Caption = 'Lastorder alla verk'
      OnExecute = acLOAllaVerkExecute
      OnUpdate = acLOAllaVerkUpdate
    end
    object acPrintLOErtVerk: TAction
      Category = 'Print'
      Caption = 'Lastorder ert verk'
      OnExecute = acPrintLOErtVerkExecute
      OnUpdate = acPrintLOErtVerkUpdate
    end
    object acPrintSpecAllaLasterLO: TAction
      Category = 'Print'
      Caption = 'Specification alla laster LO'
      OnExecute = acPrintSpecAllaLasterLOExecute
      OnUpdate = acPrintSpecAllaLasterLOUpdate
    end
    object acPkgEntry: TAction
      Caption = 'Registrera paket F9'
      Hint = #214'ppna paketinmatnings formul'#228'r'
      ImageIndex = 1
      ShortCut = 120
      OnExecute = acPkgEntryExecute
      OnUpdate = acPkgEntryUpdate
    end
    object acStreckKodsinlasning: TAction
      Caption = 'L'#228's streckkod'
      Hint = 'Paketinmatning med streckkodsl'#228'sare'
      ImageIndex = 7
      OnExecute = acStreckKodsinlasningExecute
      OnUpdate = acStreckKodsinlasningUpdate
    end
    object acPktNrSerie: TAction
      Caption = 'Pktnrserie'
      Hint = 'H'#228'mta paket inom ett paketnr intervall'
      ImageIndex = 6
      OnExecute = acPktNrSerieExecute
      OnUpdate = acPktNrSerieUpdate
    end
    object acTaBortPaketPerPaketKod: TAction
      Caption = 'Ta bort paket per paketkod'
      OnExecute = acTaBortPaketPerPaketKodExecute
      OnUpdate = acTaBortPaketPerPaketKodUpdate
    end
    object acImportPackages: TAction
      Caption = 'Importera WoodX f'#246'ljesedel'
      Hint = 'Importera paket med woodx'
      ImageIndex = 2
      OnExecute = acImportPackagesExecute
      OnUpdate = acImportPackagesUpdate
    end
    object acCreateInternLO: TAction
      Caption = 'Automat generera lastorder'
      ImageIndex = 8
      OnExecute = acCreateInternLOExecute
      OnUpdate = acCreateInternLOUpdate
    end
    object acOpenLOForm: TAction
      Caption = #214'ppna LO'
      OnExecute = acOpenLOFormExecute
      OnUpdate = acOpenLOFormUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 3
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acSaveAndOK: TAction
      Caption = 'OK && Spara F10'
      ImageIndex = 10
      ShortCut = 121
      OnExecute = acSaveAndOKExecute
      OnUpdate = acSaveAndOKUpdate
    end
    object acPrintMeny: TAction
      Category = 'Print'
      Caption = 'Skriv ut F8'
      ImageIndex = 4
      OnExecute = acPrintMenyExecute
    end
    object acPrintFSMisMatch: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel (paket saknar koppling)'
      OnExecute = acPrintFSMisMatchExecute
    end
    object acDeleteNotCompletePkgs: TAction
      Caption = 'Ta bort paket'
      OnExecute = acDeleteNotCompletePkgsExecute
    end
    object acMailaFS: TAction
      Caption = 'Maila f'#246'ljesedel'
      OnExecute = acMailaFSExecute
    end
    object acSetStatusPrelandSave: TAction
      Caption = 'Prelimin'#228'r'
      Hint = 'S'#228'tt lasten till status prelimin'#228'r'
      ImageIndex = 9
      OnExecute = acSetStatusPrelandSaveExecute
      OnUpdate = acSetStatusPrelandSaveUpdate
    end
    object acGetVPPackages: TAction
      Caption = 'H'#228'mta paket f'#246'rbrukade av Vida Packaging'
      OnExecute = acGetVPPackagesExecute
      OnUpdate = acGetVPPackagesUpdate
    end
    object acShowLoadHeader: TAction
      Caption = 'Visa huvud'
      OnExecute = acShowLoadHeaderExecute
    end
    object acRaderaPaket: TAction
      Caption = 'Radera'
      OnExecute = acRaderaPaketExecute
      OnUpdate = acRaderaPaketUpdate
    end
    object acPrintCMR: TAction
      Caption = '    CMR    '
      ImageIndex = 4
      OnExecute = acPrintCMRExecute
    end
    object acPrintFSandCMR: TAction
      Caption = 'F'#246'ljesedel && CMR'
      ImageIndex = 4
      ShortCut = 119
      OnExecute = acPrintFSandCMRExecute
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 120
    Top = 610
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 281
    Top = 567
    PixelsPerInch = 120
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13553407
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleAqua: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
    object cxStyleclSkyBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13565902
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleOrange: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11586303
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object pmPrint: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbFS'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'lbHyvelOrder'
      end
      item
        Visible = True
        ItemName = 'lbLastOrderAllaVerk'
      end
      item
        Visible = True
        ItemName = 'lbLastOrderErtVerk'
      end
      item
        Visible = True
        ItemName = 'lbSpecAllaLasterLO'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = True
    Left = 889
    Top = 511
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 713
    Top = 383
    object Lggtillpaketperpaketkod1: TMenuItem
      Action = acAddPkgByPkgCode
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object AutoLO1: TMenuItem
      Action = acCreateInternLO
    end
    object abortlastF51: TMenuItem
      Action = acDeleteLoad
    end
    object Importpaket1: TMenuItem
      Action = acImportPackages
    end
    object Lggallapakettilllagret1: TMenuItem
      Action = acInsertAllPkgsToInventory
    end
    object Lggmarkeradepakettillbakstilllager1: TMenuItem
      Action = acInsertPkgToInventory
    end
    object KopplamarkeradepaketmotLOmanuellt1: TMenuItem
      Action = acKopplaPaketMotLOManuellt
    end
    object Lastorderallaverk1: TMenuItem
      Action = acLOAllaVerk
    end
    object ppnaLO1: TMenuItem
      Action = acOpenLOForm
    end
    object Plockapaketnr1: TMenuItem
      Action = acPickPkgNos
    end
    object PktinmatF91: TMenuItem
      Action = acPkgEntry
    end
    object Paketinformation1: TMenuItem
      Action = acPkgInfo
    end
    object Pktnrserie1: TMenuItem
      Action = acPktNrSerie
    end
    object Fljesedel1: TMenuItem
      Action = acPrintFS
    end
    object Hyvelorder1: TMenuItem
      Action = acPrintHyvelOrder
    end
    object Lastorderertverk1: TMenuItem
      Action = acPrintLOErtVerk
    end
    object SkrivutF81: TMenuItem
      Action = acPrintMeny
    end
    object SpecificationallalasterLO1: TMenuItem
      Action = acPrintSpecAllaLasterLO
    end
    object FljesedelUSA1: TMenuItem
      Action = acPrintTallyUSNote
    end
    object abortallapaketfrnsystemet1: TMenuItem
      Action = acRemoveAllPkgsFromSystem
    end
    object StatusOKSparaF101: TMenuItem
      Action = acSaveAndOK
    end
    object SparaF31: TMenuItem
      Action = acSaveLoad
    end
    object Sttstandardmatchningpallapaket1: TMenuItem
      Action = acSetDefaultMatchOnAllPkgs
    end
    object Streckkod1: TMenuItem
      Action = acStreckKodsinlasning
    end
    object abortpaketperpaketkod1: TMenuItem
      Action = acTaBortPaketPerPaketKod
    end
    object ngra1: TMenuItem
      Action = acUndoPkgOperation
    end
    object ngratabort2: TMenuItem
      Action = acValidateAllPkgs
    end
    object Validerapaket1: TMenuItem
      Action = acValidatePkg
    end
  end
  object pmMenuOptions: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'lbPackageEntry'
      end
      item
        Visible = True
        ItemName = 'lbReValidateAllPkgs'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarLargeButton7'
      end>
    UseOwnFont = True
    Left = 384
    Top = 394
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 208
    Top = 335
  end
  object cxEditStyleControllerFileldLabels: TcxEditStyleController
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Verdana'
    Style.Font.Style = []
    Style.LookAndFeel.Kind = lfFlat
    Style.Shadow = False
    Style.TextColor = clBlack
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = True
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    Left = 128
    Top = 504
    PixelsPerInch = 120
  end
  object cxEditStyleControllerEditControls: TcxEditStyleController
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -20
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.ButtonStyle = btsOffice11
    Style.ButtonTransparency = ebtHideUnselected
    Style.IsFontAssigned = True
    StyleDisabled.Color = clBtnFace
    StyleDisabled.TextColor = clNavy
    Left = 128
    Top = 552
    PixelsPerInch = 120
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdPkgs
    PopupMenus = <>
    Left = 520
    Top = 513
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdLORows
    PopupMenus = <>
    Left = 520
    Top = 569
  end
  object siLangLinked_fLoadEntrySSP: TsiLangLinked
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
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'PropertiesClassName')
    Left = 552
    Top = 384
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540066004C006F006100640045006E007400720079005300
      5300500001004C00410053005400200028005300530050002900010001000100
      0D000A00740073004C006F0061006400440061007400610001004C0065007600
      6500720061006E007300680075007600750064000100010001000D000A006300
      78004C006100620065006C00340001004C006100730074004E0072003A000100
      010001000D000A00630078004C006100620065006C0035000100550074006C00
      610073007400610064003A000100010001000D000A00630078004C0061006200
      65006C00360001005300740061007400750073003A000100010001000D000A00
      630078004C006100620065006C00370001004C00610073007400200049004400
      3A000100010001000D000A00630078004C006100620065006C00380001004600
      53003A000100010001000D000A00630078004C006100620065006C0039000100
      4C006F006B0061006C006600720061006B0074006600F6007200610072006500
      3A000100010001000D000A00630078004C006100620065006C00310030000100
      46007200E5006E003A000100010001000D000A00630078004C00610062006500
      6C00310031000100540069006C006C003A000100010001000D000A0063007800
      4C006100620065006C00310001004C00610067006500720073007400E4006C00
      6C0065003A000100010001000D000A00630078004C006100620065006C003200
      01004C006100670065007200670072007500700070003A000100010001000D00
      0A00670072006400410064006400720065007300730044004200540061006200
      6C00650056006900650077003100410064006400720065007300730001004100
      6400640072006500730073000100010001000D000A0067007200640041006400
      64007200650073007300440042005400610062006C0065005600690065007700
      3100440065007300740069006E006100740069006F006E000100440065007300
      740069006E006100740069006F006E000100010001000D000A00670072006400
      4100640064007200650073007300440042005400610062006C00650056006900
      6500770031005200650066006500720065006E00630065000100520065006600
      6500720065006E00630065000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C006F0061006400
      4E006F0001004C006100730074006E0072000100010001000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      680069007000700069006E00670050006C0061006E004E006F0001004C004F00
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      65005600690065007700310043005500530054004F004D004500520001004B00
      75006E0064000100010001000D000A006700720064004C004F00440042005400
      610062006C0065005600690065007700310053005500500050004C0049004500
      520001004C00650076006500720061006E007400F60072000100010001000D00
      0A006700720064004C004F00440042005400610062006C006500560069006500
      770031004C004F0043005F00430055005300540001004B0075006E0064002800
      69006E007400650072006E0029000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100530048004900
      50005000450052000100530070006500640069007400F6007200010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031005200450041004400590044004100540045000100520065006400
      6F006400610067000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100560045005300530045004C00
      01004200E50074000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100450054004400010045005400
      44000100010001000D000A006700720064004C004F0044004200540061006200
      6C00650056006900650077003100450054004100010045005400410001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      690065007700310053004800490050005000450052005F005200450046000100
      53007000650064002E007200650066006500720065006E007300010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      6500770031005300480049005000500045005200490044000100530070006500
      64002E00490044000100010001000D000A006700720064004C004F0044004200
      5400610062006C00650056006900650077003100530048004900500050004500
      520053005F005300480049005000440041005400450001005300700065006400
      2E0064006100740075006D000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005300480049005000
      50004500520053005F005300480049005000540049004D004500010053007000
      650064002E007400690064000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004F00520044004500
      52004E004F0001004F0072006400650072006E0072000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      31004F005200440045005200540059005000450001004B006F006E0074007200
      61006B0074007400790070000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C004F0041004400
      49004E0047005F004C004F0043004100540049004F004E0001004C0061007300
      740073007400E4006C006C0065000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100530048004900
      50005F0054004F000100440065007300740069006E006100740069006F006E00
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      65005600690065007700310053007500700070006C006900650072004E006F00
      010053007500700070006C006900650072004E006F000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      3100430072006500610074006500640055007300650072000100430072006500
      610074006500640055007300650072000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004D006F00
      640069006600690065006400550073006500720001004D006F00640069006600
      69006500640055007300650072000100010001000D000A006700720064004C00
      4F00440042005400610062006C00650056006900650077003100440061007400
      6500430072006500610074006500640001004400610074006500430072006500
      61007400650064000100010001000D000A006700720064004C004F0044004200
      5400610062006C0065005600690065007700310043007500730074006F006D00
      650072004E006F00010043007500730074006F006D00650072004E006F000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      560069006500770031004F0062006A0065006300740054007900700065000100
      4F0062006A0065006300740054007900700065000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      4100760072006F0070005F0043007500730074006F006D00650072004E006F00
      01004100760072006F0070005F0043007500730074006F006D00650072004E00
      6F000100010001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F0001004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      530068006900700054006F0049006E00760050006F0069006E0074004E006F00
      0100530068006900700054006F0049006E00760050006F0069006E0074004E00
      6F000100010001000D000A006700720064004C004F0044004200540061006200
      6C006500560069006500770031005300680069007000700069006E0067000100
      5300680069007000700069006E0067000100010001000D000A00740073004C00
      6F00610064004E006F007400650001004E006F0074006500720069006E006700
      0100010001000D000A00500061006E0065006C00310001004C00410053005400
      4F005200440045005200520041004400450052000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004D0041005400430048000100
      4D0041005400430048000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      560069006500770031005300680069007000700069006E00670050006C006100
      6E004E006F0001004C004F000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310050004B00470043004F0044004500010050006100
      6B00650074006B006F0064000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100500052004F004400550043005400440045005300
      4300520049005000540049004F004E000100500072006F00640075006B007400
      6200650073006B002E00280069006E007400650072006E002900010001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C0045004E00
      470054004800440045005300430001004C00E4006E0067006400620065007300
      6B002E000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004E004F004F00460055004E0049005400530001004B00760061006E00
      740069007400650074000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310056004F004C0055004E0049005400010045006E006800
      650074000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310050005200490043004500010050007200690073000100010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031005000520049004300
      450055004E00490054000100500072006900730065006E006800650074000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005200
      450046004500520045004E004300450001005200650066006500720065006E00
      73000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C00450056005F0050004500520049004F0044005F005300540041005200
      540001004C00650076002E0070006500720069006F0064002000730074006100
      720074000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004C00450056005F0050004500520049004F0044005F0045004E004400
      01004C00650076002E0050006500720069006F006400200073006C0075007400
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4F0052004400450052004E004F0001004F0072006400650072006E0072000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004B00
      52005F0052006500660001004B0052002D007200650066006500720065006E00
      73000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004E004F004D005F0054004800490043004B0001004E004F004D005F005400
      4800490043004B000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004E004F004D005F005700490044005400480001004E004F00
      4D005F00570049004400540048000100010001000D000A006700720064004C00
      4F0052006F007700730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500052004F00440055004300540047005200
      4F00550050004E004F000100500052004F004400550043005400470052004F00
      550050004E004F000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310050004300530050004500520050004B004700010050005000
      50000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100500072006F0064007500630074004C0065006E006700740068004E006F00
      0100500072006F0064007500630074004C0065006E006700740068004E006F00
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C006F00610064004E006F0001004C006100730074006E007200010001000100
      0D000A006700720064004C004F0052006F007700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530075007000
      70006C00690065007200530068006900700050006C0061006E004F0062006A00
      6500630074004E006F00010053007500700070006C0069006500720053006800
      6900700050006C0061006E004F0062006A006500630074004E006F0001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310041004300
      54005F0054004800490043004B0001004100430054005F005400480049004300
      4B000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004100430054005F005700490044005400480001004100430054005F005700
      49004400540048000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004100430054005F004C0045004E0047005400480001004100
      6B0074002E006C00E4006E00670064000100010001000D000A00670072006400
      4C004F0052006F007700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C006F006100640069006E0067004C00
      6F0063006100740069006F006E004E006F0001004C006F006100640069006E00
      67004C006F0063006100740069006F006E004E006F000100010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310049004E00540045005200
      4E00500052004F00440044004500530043000100500072006F00640075006B00
      74006200650073006B002E00280069006E007400650072006E00290001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006800
      6900700054006F0049006E00760050006F0069006E0074004E006F0001005300
      68006900700054006F0049006E00760050006F0069006E0074004E006F000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      72006F0064007500630074004E006F000100500072006F006400750063007400
      4E006F000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004D0049004E005F004C0045004E0047005400480001004D0049004E00
      5F004C0045004E004700540048000100010001000D000A006700720064004C00
      4F0052006F007700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004D00410058005F004C0045004E0047005400
      480001004D00410058005F004C0045004E004700540048000100010001000D00
      0A006700720064004C004F0052006F007700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004300750073007400
      6F006D00650072004E006F00010043007500730074006F006D00650072004E00
      6F000100010001000D000A006700720064004C004F0052006F00770073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004300750073007400530068006900700050006C0061006E00440065007400
      610069006C004F0062006A006500630074004E006F0001004300750073007400
      530068006900700050006C0061006E00440065007400610069006C004F006200
      6A006500630074004E006F000100010001000D000A006700720064004C004F00
      52006F007700730044004200420061006E006400650064005400610062006C00
      650056006900650077003100500072006F0064007500630074004C0065006E00
      670074006800470072006F00750070004E006F000100500072006F0064007500
      630074004C0065006E00670074006800470072006F00750070004E006F000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004900
      4E00430048005F0054004800490043004B00010049004E00430048005F005400
      4800490043004B000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      690065007700310049004E005600430048005F00570049004400540048000100
      49004E005600430048005F00570049004400540048000100010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053007500720066006100
      630069006E0067004E006F00010053007500720066006100630069006E006700
      4E006F000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310053007000650063006900650073004E006F0001005300700065006300
      6900650073004E006F000100010001000D000A006700720064004C004F005200
      6F007700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100470072006100640065004E006F000100470072006100
      640065004E006F000100010001000D000A006700720064004C004F0052006F00
      7700730044004200420061006E006400650064005400610062006C0065005600
      69006500770031005000610063006B0061006700650054007900700065004E00
      6F0001005000610063006B0061006700650054007900700065004E006F000100
      010001000D000A006700720064004C004F0052006F0077007300440042004200
      61006E006400650064005400610062006C006500560069006500770031005000
      7200690073006C006900730074006100010050007200690073006C0069007300
      740061000100010001000D000A006700720064004C004F0052006F0077007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004F00760065007200720069006400650052004C000100540069006C00
      6C00E5007400200061006C006C00610020006C00E4006E006700640065007200
      0100010001000D000A006700720064004C004F0052006F007700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      430045005200540049000100430045005200540049000100010001000D000A00
      6700720064004C004F0052006F007700730044004200420061006E0064006500
      64005400610062006C006500560069006500770031005400720073006C006100
      6700010054007200E40073006C00610067000100010001000D000A0067007200
      64004C004F0052006F007700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004C006F0061006400650064005000
      6B006700730001004C006F00610064006500640050006B006700730001000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050006B00
      67004400690066006600010044006900660066000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500061006B00650074007300
      74006F0072006C0065006B000100500061006B0065007400730074006F007200
      6C0065006B000100010001000D000A00630078004C006100620065006C003300
      010041006E00670065002000700061006B00650074006E0072003A0001000100
      01000D000A00630062004B006F00700070006C00610045006A004D006F007400
      4400750062006C0065007400740001004B006F00700070006C00610020006500
      6A0020006F006D0020006400750062006C006500740074000100010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031005000410043004B0041004700
      45004E004F000100500061006B00650074006E0072000100010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C0065005600690065007700310053007500700070006C0069006500
      720043006F006400650001005000720065006600690078000100010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530068006900700070006900
      6E00670050006C0061006E004E006F0001004C004F000100010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100500052004F004400550043005400
      0100500072006F00640075006B0074000100010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031005000610063006B006100670065004F004B000100
      5300740061007400750073000100010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100500072006F0062006C0065006D005000610063006B006100
      670065004C006F00670001004C006F00670067000100010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004D0033005F004E004500540001004100
      4D0033000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500043005300010053007400790063006B000100010001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031004D0033005F004E004F004D0001004E004D00
      33000100010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004D00
      460042004D0001004D00460042004D000100010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004B0056004D0001006D0032000100010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C004F0050004D0001004C00
      70006D000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      5000430053005F005000450052005F004C0045004E0047005400480001005300
      7400790063006B002F006C00E4006E00670064000100010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C00650056006900650077003100440065006600610075006C0074004300
      75007300740053006800690070004F0062006A006500630074004E006F000100
      440065006600610075006C007400430075007300740053006800690070004F00
      62006A006500630074004E006F000100010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      56006900650077003100500072006F0064007500630074004C0065006E006700
      740068004E006F000100500072006F0064007500630074004C0065006E006700
      740068004E006F000100010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310041004C004D004D00010041004C004D004D000100010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C00650056006900650077003100410063007400750061006C005400
      6800690063006B006E006500730073004D004D00010041006300740075006100
      6C0054006800690063006B006E006500730073004D004D000100010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100410063007400750061006C00
      570069006400740068004D004D000100410063007400750061006C0057006900
      6400740068004D004D000100010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310053007500720066006100630069006E0067004E006F0001005300
      7500720066006100630069006E0067004E006F000100010001000D000A006700
      7200640050006B006700730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310053007000650063006900650073004E00
      6F00010053007000650063006900650073004E006F000100010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004D00610069006E00470072006100
      640065004E006F0001004D00610069006E00470072006100640065004E006F00
      0100010001000D000A0067007200640050006B00670073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004E006F00
      4F0066004C0065006E00670074006800730001004E006F004F0066004C006500
      6E0067007400680073000100010001000D000A0067007200640050006B006700
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004F0076006500720072006900640065004D006100740063006800
      01004D0061006E00750065006C006C0020006B006F00700070006C0069006E00
      67000100010001000D000A0067007200640050006B0067007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004400
      6100740065004300720065006100740065006400010044006100740065004300
      7200650061007400650064000100010001000D000A0067007200640050006B00
      6700730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100500072006F0064007500630074004E006F00010050007200
      6F0064007500630074004E006F000100010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004C006F00610064004E006F0001004C006F0061006400
      4E006F000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C006F0061006400440065007400610069006C004E006F000100520061006400
      6E0072000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4E006F004F0066005000610063006B00610067006500730001004E006F004F00
      66005000610063006B0061006700650073000100010001000D000A0067007200
      640050006B006700730044004200420061006E00640065006400540061006200
      6C006500560069006500770031005000410043004B0041004700450054005900
      500045004E004F0001005000410043004B004100470045005400590050004500
      4E004F000100010001000D000A0067007200640050006B006700730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4300720065006100740065006400550073006500720001004300720065006100
      74006500640055007300650072000100010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      560069006500770031004D006F00640069006600690065006400550073006500
      720001004D006F00640069006600690065006400550073006500720001000100
      01000D000A0067007200640050006B006700730044004200420061006E006400
      650064005400610062006C006500560069006500770031004C00490050004E00
      6F0001004C00490050004E006F000100010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310050006B0067005F005300740061007400650001005000
      6B0067005F00530074006100740065000100010001000D000A00670072006400
      50006B006700730044004200420061006E006400650064005400610062006C00
      65005600690065007700310050006B0067005F00460075006E00630074006900
      6F006E00010050006B0067005F00460075006E006300740069006F006E000100
      010001000D000A0067007200640050006B006700730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100430068006100
      6E0067006500640001004300680061006E006700650064000100010001000D00
      0A0067007200640050006B006700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100440065006600730073007000
      6E006F0001004400650066007300730070006E006F000100010001000D000A00
      67007200640050006B006700730044004200420061006E006400650064005400
      610062006C006500560069006500770031004F00760065007200720069006400
      650052004C000100540069006C006C00E5007400200061006C006C0061002000
      6C00E4006E0067006400650072000100010001000D000A006700720064005000
      6B006700730044004200420061006E006400650064005400610062006C006500
      5600690065007700310049006E0076004E007200010049004B00010001000100
      0D000A0067007200640050006B006700730044004200420061006E0064006500
      64005400610062006C00650056006900650077003100500061006B0065007400
      730074006F0072006C0065006B000100500061006B0065007400730074006F00
      72006C0065006B000100010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004300650072007400660069006500720069006E006700010043006500
      72007400660069006500720069006E0067000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      43007500730074006F006D00200031000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001004300
      7500730074006F006D00200032000100010001000D000A007300690050007200
      69006E007400010053006B007200690076002000750074000100010001000D00
      0A0062006200540061006C006C0079005F00560065007200320001004600F600
      6C006A00650073006500640065006C0020005600650072003200010001000100
      0D000A00640078004200610072004C0061007200670065004200750074007400
      6F006E00330001004100760073006C0075007400610020002600260020005300
      700061007200610020004600310030000100010001000D000A00640078004200
      610072004C00610072006700650042007500740074006F006E00360001005600
      650072006B007400790067000100010001000D000A006C006200440065006C00
      65007400650050006B006700010054006100200062006F007200740020006D00
      610072006B00650072006100640065002000700061006B006500740065007400
      200066007200E5006E002000730079007300740065006D006500740001000100
      01000D000A0061006300560061006C006900640061007400650050006B006700
      0100560061006C00690064006500720061002000700061006B00650074000100
      010001000D000A0061006300560061006C006900640061007400650041006C00
      6C0050006B00670073000100560061006C006900640065007200610020006100
      6C006C006100200070006B0074000100010001000D000A006100630049006E00
      730065007200740050006B00670054006F0049006E00760065006E0074006F00
      7200790001004C00E4006700670020006D00610072006B006500720061006400
      65002000700061006B00650074002000740069006C006C00620061006B007300
      2000740069006C006C0020006C0061006700650072000100010001000D000A00
      6100630049006E00730065007200740041006C006C0050006B00670073005400
      6F0049006E00760065006E0074006F007200790001004C00E400670067002000
      61006C006C0061002000700061006B00650074002000740069006C006C002000
      6C00610067007200650074000100010001000D000A0061006300520065006D00
      6F007600650050006B006700460072006F006D00530079007300740065006D00
      010054006100200062006F00720074002000700061006B006500740065007400
      200066007200E5006E002000730079007300740065006D006500740001000100
      01000D000A0061006300520065006D006F007600650041006C006C0050006B00
      67007300460072006F006D00530079007300740065006D000100540061002000
      62006F0072007400200061006C006C0061002000700061006B00650074002000
      66007200E5006E002000730079007300740065006D0065007400010001000100
      0D000A006100630055006E0064006F0050006B0067004F007000650072006100
      740069006F006E000100C5006E006700720061000100010001000D000A006100
      6300530065007400440065006600610075006C0074004D006100740063006800
      4F006E0041006C006C0050006B006700730001005300E4007400740020007300
      740061006E00640061007200640020006D0061007400630068006E0069006E00
      670020007000E500200061006C006C0061002000700061006B00650074000100
      010001000D000A006100630050006B00670049006E0066006F00010050006100
      6B0065007400200069006E0066006F0072006D006100740069006F006E000100
      010001000D000A006100630041006400640050006B0067004200790050006B00
      670043006F006400650001004C00E400670067002000740069006C006C002000
      700061006B006500740020007000650072002000700061006B00650074006B00
      6F0064000100010001000D000A00610063005000690063006B0050006B006700
      4E006F007300010050006C006F0063006B0061002000700061006B0065007400
      0100010001000D000A006100630053006100760065004C006F00610064000100
      530070006100720061002000460033000100010001000D000A00610063005000
      720069006E007400540061006C006C007900550053004E006F00740065000100
      4600F6006C006A00650073006500640065006C00200055005300410001000100
      01000D000A00610063004B006F00700070006C006100500061006B0065007400
      4D006F0074004C004F004D0061006E00750065006C006C00740001004B006F00
      700070006C00610020006D00610072006B006500720061006400650020007000
      61006B006500740020006D006F0074002000760061006C00640020004C004F00
      2D007200610064000100010001000D000A0061006300440065006C0065007400
      65004C006F0061006400010054006100200062006F0072007400200046003500
      0100010001000D000A00610063005000720069006E0074004600530001004600
      F6006C006A00650073006500640065006C000100010001000D000A0061006300
      5000720069006E00740048007900760065006C004F0072006400650072000100
      48007900760065006C006F0072006400650072000100010001000D000A006100
      63004C004F0041006C006C0061005600650072006B0001004C00610073007400
      6F007200640065007200200061006C006C00610020007600650072006B000100
      010001000D000A00610063005000720069006E0074004C004F00450072007400
      5600650072006B0001004C006100730074006F00720064006500720020006500
      7200740020007600650072006B000100010001000D000A006100630050007200
      69006E007400530070006500630041006C006C0061004C006100730074006500
      72004C004F000100530070006500630069006600690063006100740069006F00
      6E00200061006C006C00610020006C006100730074006500720020004C004F00
      0100010001000D000A006100630050006B00670045006E007400720079000100
      52006500670069007300740072006500720061002000700061006B0065007400
      2000460039000100010001000D000A0061006300530074007200650063006B00
      4B006F006400730069006E006C00610073006E0069006E00670001004C00E400
      73002000730074007200650063006B006B006F0064000100010001000D000A00
      6100630050006B0074004E00720053006500720069006500010050006B007400
      6E007200730065007200690065000100010001000D000A006100630054006100
      42006F0072007400500061006B0065007400500065007200500061006B006500
      74004B006F006400010054006100200062006F00720074002000700061006B00
      6500740020007000650072002000700061006B00650074006B006F0064000100
      010001000D000A006100630049006D0070006F00720074005000610063006B00
      6100670065007300010049006D0070006F007200740065007200610020005700
      6F006F006400580020006600F6006C006A00650073006500640065006C000100
      010001000D000A006100630043007200650061007400650049006E0074006500
      72006E004C004F0001004100750074006F006D00610074002000670065006E00
      6500720065007200610020006C006100730074006F0072006400650072000100
      010001000D000A00610063004F00700065006E004C004F0046006F0072006D00
      0100D600700070006E00610020004C004F000100010001000D000A0061006300
      43006C006F0073006500010053007400E4006E00670020004600310032000100
      010001000D000A0061006300530061007600650041006E0064004F004B000100
      4F004B0020002600260020005300700061007200610020004600310030000100
      010001000D000A00610063005000720069006E0074004D0065006E0079000100
      53006B007200690076002000750074002000460038000100010001000D000A00
      610063005000720069006E007400460053004D00690073004D00610074006300
      680001004600F6006C006A00650073006500640065006C002000280070006100
      6B00650074002000730061006B006E006100720020006B006F00700070006C00
      69006E00670029000100010001000D000A0061006300440065006C0065007400
      65004E006F00740043006F006D0070006C0065007400650050006B0067007300
      010054006100200062006F00720074002000700061006B006500740001000100
      01000D000A00610063004D00610069006C0061004600530001004D0061006900
      6C00610020006600F6006C006A00650073006500640065006C00010001000100
      0D000A0061006300530065007400530074006100740075007300500072006500
      6C0061006E006400530061007600650001005000720065006C0069006D006900
      6E00E40072000100010001000D000A0061006300470065007400560050005000
      610063006B00610067006500730001004800E4006D0074006100200070006100
      6B006500740020006600F60072006200720075006B0061006400650020006100
      76002000560069006400610020005000610063006B006100670069006E006700
      0100010001000D000A0061006300530068006F0077004C006F00610064004800
      6500610064006500720001005600690073006100200068007500760075006400
      0100010001000D000A0061006300520061006400650072006100500061006B00
      6500740001005200610064006500720061000100010001000D000A0061006300
      5000720069006E00740043004D0052000100200020002000200043004D005200
      20002000200020000100010001000D000A00610063005000720069006E007400
      4600530061006E00640043004D00520001004600F6006C006A00650073006500
      640065006C00200026002600200043004D0052000100010001000D000A006700
      720064004C004F0052006F007700730044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530068006900700070006900
      6E00670050006C0061006E005300740061007400750073000100530074006100
      7400750073000100010001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A0062006200540061006C006C007900
      5F00560065007200320001004600F6006C006A00650073006500640065006C00
      20005600650072003200010001000D000A00640078004200610072004C006100
      72006700650042007500740074006F006E00360001005600650072006B007400
      79006700010001000D000A0061006300560061006C0069006400610074006500
      41006C006C0050006B00670073000100560061006C0069006400650072006100
      200061006C006C0061002000700061006B0065007400010001000D000A006100
      630050006B00670045006E007400720079000100D600700070006E0061002000
      700061006B006500740069006E006D00610074006E0069006E00670073002000
      66006F0072006D0075006C00E4007200010001000D000A006100630053007400
      7200650063006B004B006F006400730069006E006C00610073006E0069006E00
      67000100500061006B006500740069006E006D00610074006E0069006E006700
      20006D00650064002000730074007200650063006B006B006F00640073006C00
      E4007300610072006500010001000D000A006100630050006B0074004E007200
      5300650072006900650001004800E4006D00740061002000700061006B006500
      7400200069006E006F006D0020006500740074002000700061006B0065007400
      6E007200200069006E00740065007200760061006C006C00010001000D000A00
      6100630049006D0070006F00720074005000610063006B006100670065007300
      010049006D0070006F00720074006500720061002000700061006B0065007400
      20006D0065006400200077006F006F0064007800010001000D000A0061006300
      5300650074005300740061007400750073005000720065006C0061006E006400
      530061007600650001005300E4007400740020006C0061007300740065006E00
      2000740069006C006C0020007300740061007400750073002000700072006500
      6C0069006D0069006E00E4007200010001000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00540066004C006F006100640045006E00740072007900
      53005300500001004D0053002000530061006E00730020005300650072006900
      660001004D0053002000530061006E0073002000530065007200690066000100
      5400610068006F006D0061000D000A00500061006E0065006C00310001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D0061000D000A00500061006E0065006C00320001004D0053002000
      530061006E007300200053006500720069006600010001005400610068006F00
      6D0061000D000A006300780042007500740074006F006E00310001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D0061000D000A006300780042007500740074006F006E00320001004D00
      53002000530061006E0073002000530065007200690066000100010054006100
      68006F006D0061000D000A006300780042007500740074006F006E0033000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      670065007200310001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200310001005400610068006F006D006100010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      6700650072003100420061007200320001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A0070006D0050006B00670073000100
      5400610068006F006D006100010001005400610068006F006D0061000D000A00
      70006D004C004F004E0075006D0062006500720001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A00700070006D0065006E00
      75004C004F005F004C0069006E006500730001005400610068006F006D006100
      010001005400610068006F006D0061000D000A00630078005300740079006C00
      6500590065006C006C006F00770001005400610068006F006D00610001000100
      5400610068006F006D0061000D000A00630078005300740079006C0065005200
      6500640001005400610068006F006D006100010001005400610068006F006D00
      61000D000A00630078005300740079006C006500410071007500610001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006300
      78005300740079006C00650042006C007500650001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C006500530069006C0076006500720001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A00630078005300740079006C006500
      4800650061006400650072000100560065007200640061006E00610001000100
      5400610068006F006D0061000D000A00630078005300740079006C0065004300
      6F006E00740065006E00740001004D0053002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0063007800
      5300740079006C00650043006F006E00740065006E0074004F00640064000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A00630078005300740079006C00650063006C00
      53006B00790042006C007500650001005400610068006F006D00610001000100
      5400610068006F006D0061000D000A00630078005300740079006C0065004700
      7200650065006E0001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065004F00720061006E00
      6700650001005400610068006F006D006100010001005400610068006F006D00
      61000D000A0070006D005000720069006E00740001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0070006D004D0065006E00
      75004F007000740069006F006E00730001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A007300
      740053007400720069006E00670073005F0055006E00690063006F0064006500
      0D000A00730074004F00740068006500720053007400720069006E0067007300
      5F0055006E00690063006F00640065000D000A00450064006900740031002E00
      5400650078007400010045006400690074003100010001000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0069006D00670063006200530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0030005D002E004400650073006300720069007000740069006F006E00
      01005000720065006C0069006D0069006E00E4007200010001000D000A006900
      6D006700630062005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0031005D002E004400
      650073006300720069007000740069006F006E000100500072006F0062006C00
      65006D0020006C00610073007400010001000D000A0069006D00670063006200
      5300740061007400750073002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0032005D002E0044006500730063007200
      69007000740069006F006E0001004100760073006C0075007400610064000100
      01000D000A006C0063004C006F00630061006C00530068006900700070006500
      72002E00500072006F0070006500720074006900650073002E004C0069007300
      740043006F006C0075006D006E0073005B0030005D002E004300610070007400
      69006F006E00010043006C00690065006E0074004E0061006D00650001000100
      0D000A006C006300460072006F006D002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006900740079004E00
      61006D006500010001000D000A006C00630054006F002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010043006900
      740079004E0061006D006500010001000D000A006C0063004C00490050002E00
      500072006F0070006500720074006900650073002E004C006900730074004300
      6F006C0075006D006E0073005B0030005D002E00430061007000740069006F00
      6E0001004C00490050004E0061006D006500010001000D000A006C0063004C00
      490050002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0031005D002E00430061007000
      740069006F006E0001005000490050004E0041004D004500010001000D000A00
      6C0063005000490050002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E0001005000490050004E0041004D0045000100
      01000D000A006700720064004C004F0052006F00770073004400420042006100
      6E006400650064005400610062006C006500560069006500770031002E004200
      61006E00640073005B0030005D002E00430061007000740069006F006E000100
      4D004100540043004800010001000D000A0067007200640050006B0067007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031002E00420061006E00640073005B0030005D002E004300610070007400
      69006F006E0001004F005400480045005200010001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540066004C006F006100640045006E007400720079005300530050000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00500061006E0065006C0031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00500061006E0065006C0032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A006300780042007500740074006F006E003100010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780042007500
      740074006F006E0032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A006300780042007500740074006F006E003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A00640078004200610072004D0061006E00610067006500720031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00640078004200610072004D0061006E006100670065007200
      310042006100720032000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A0070006D0050006B0067007300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A007000
      6D004C004F004E0075006D006200650072000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00700070006D0065006E00
      75004C004F005F004C0069006E00650073000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0063007800530074007900
      6C006500590065006C006C006F0077000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630078005300740079006C00
      65005200650064000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00630078005300740079006C006500410071007500
      61000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C00650042006C007500650001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      630078005300740079006C006500530069006C00760065007200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006300
      78005300740079006C0065004800650061006400650072000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650043006F006E00740065006E0074000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063007800
      5300740079006C00650043006F006E00740065006E0074004F00640064000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C00650063006C0053006B00790042006C007500
      65000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C00650047007200650065006E000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C0065004F00720061006E006700650001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      70006D005000720069006E0074000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A0070006D004D0065006E0075004F00
      7000740069006F006E0073000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
end
