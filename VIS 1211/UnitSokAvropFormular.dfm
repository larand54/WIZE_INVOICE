object frmSokAvropFormular: TfrmSokAvropFormular
  Left = 276
  Top = 105
  Align = alClient
  BorderStyle = bsNone
  Caption = 'AVROP '
  ClientHeight = 845
  ClientWidth = 1242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pmShortcut
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 62
    Width = 1242
    Height = 91
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 64
      Width = 25
      Height = 13
      Caption = 'Verk:'
    end
    object Label2: TLabel
      Left = 4
      Top = 40
      Width = 47
      Height = 13
      Caption = 'Lastst'#228'lle:'
    end
    object Label3: TLabel
      Left = 191
      Top = 40
      Width = 39
      Height = 13
      Caption = 'Shipper:'
    end
    object Label4: TLabel
      Left = 191
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Transport:'
    end
    object Label5: TLabel
      Left = 192
      Top = 64
      Width = 28
      Height = 13
      Caption = 'Kund:'
    end
    object Label6: TLabel
      Left = 364
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Marknad:'
    end
    object Label7: TLabel
      Left = 536
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Agent:'
    end
    object Label8: TLabel
      Left = 364
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Period:'
    end
    object Label9: TLabel
      Left = 460
      Top = 40
      Width = 17
      Height = 13
      Caption = 'tom'
    end
    object Label10: TLabel
      Left = 364
      Top = 64
      Width = 43
      Height = 13
      Caption = 'Ordertyp:'
    end
    object Label11: TLabel
      Left = 535
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Avropstatus:'
    end
    object Label12: TLabel
      Left = 4
      Top = 16
      Width = 55
      Height = 13
      Caption = 'F'#246'rs.region:'
    end
    object lcSR: TcxDBLookupComboBox
      Left = 64
      Top = 8
      DataBinding.DataField = 'SR'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 121
    end
    object lcLaststalle: TcxDBLookupComboBox
      Left = 64
      Top = 32
      DataBinding.DataField = 'Laststalle'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CityNo'
      Properties.ListColumns = <
        item
          FieldName = 'CityName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 1
      Width = 121
    end
    object lcVerk: TcxDBLookupComboBox
      Left = 64
      Top = 56
      DataBinding.DataField = 'Verk'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 121
    end
    object lcBokningstyp: TcxDBLookupComboBox
      Left = 239
      Top = 8
      DataBinding.DataField = 'Bokningstyp'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'BookingTypeNo'
      Properties.ListColumns = <
        item
          FieldName = 'BookingType'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      Width = 121
    end
    object lcShipper: TcxDBLookupComboBox
      Left = 239
      Top = 32
      DataBinding.DataField = 'Shipper'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      Width = 121
    end
    object lcKund: TcxDBLookupComboBox
      Left = 239
      Top = 56
      DataBinding.DataField = 'Kund'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 5
      Width = 121
    end
    object lcMarknad: TcxDBLookupComboBox
      Left = 408
      Top = 8
      DataBinding.DataField = 'Marknad'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 200
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'MarketRegionNo'
      Properties.ListColumns = <
        item
          FieldName = 'MarketRegionName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 6
      Width = 121
    end
    object lcAgentNamn: TcxDBLookupComboBox
      Left = 600
      Top = 8
      DataBinding.DataField = 'AgentNamn'
      DataBinding.DataSource = ds_Props
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 10
      Width = 121
    end
    object deStartPeriod: TcxDBDateEdit
      Left = 728
      Top = 32
      DataBinding.DataField = 'StartPeriod'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      TabOrder = 14
      Width = 121
    end
    object deEndPeriod: TcxDBDateEdit
      Left = 728
      Top = 56
      DataBinding.DataField = 'EndPeriod'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      TabOrder = 15
      Width = 121
    end
    object icOrderTypeNo: TcxDBImageComboBox
      Left = 408
      Top = 56
      DataBinding.DataField = 'OrderTypeNo'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'F'#246'rs'#228'ljning'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Ink'#246'p'
          Value = 1
        end>
      TabOrder = 9
      Width = 121
    end
    object icAvropStatus: TcxDBImageComboBox
      Left = 600
      Top = 56
      DataBinding.DataField = 'CopyPcs'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Alla'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Annulerade'
          Value = 1
        end
        item
          Description = 'Aktiva'
          Value = 2
        end
        item
          Description = 'Avslutade'
          Value = 3
        end>
      TabOrder = 12
      Width = 121
    end
    object cbShowProduct: TcxDBCheckBox
      Left = 600
      Top = 32
      Caption = 'Visa produkt'
      DataBinding.DataField = 'RegPointNo'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnChange = cbShowProductPropertiesChange
      TabOrder = 11
      Width = 121
    end
    object deFilterOrderDate: TcxDBDateEdit
      Left = 856
      Top = 32
      DataBinding.DataField = 'FilterOrderDate'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      TabOrder = 17
      Width = 121
    end
    object cbFilterInvoiceDate: TcxDBCheckBox
      Left = 728
      Top = 8
      Caption = 'Filtrera fakturadatum'
      DataBinding.DataField = 'InputOption'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 13
      Width = 121
    end
    object deRegDate: TcxDBDateEdit
      Left = 856
      Top = 56
      DataBinding.DataField = 'RegDate'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      TabOrder = 18
      Width = 121
    end
    object cbFilter_ETD: TcxDBCheckBox
      Left = 856
      Top = 8
      Caption = 'Filtrera ETD'
      DataBinding.DataField = 'GroupSummary'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 16
      Width = 81
    end
    object meAvropsPeriodStart: TcxDBMaskEdit
      Left = 408
      Top = 32
      DataBinding.DataField = 'BarCodeNo'
      DataBinding.DataSource = ds_Props
      TabOrder = 7
      Width = 49
    end
    object meAvropsPeriodEnd: TcxDBMaskEdit
      Left = 480
      Top = 32
      DataBinding.DataField = 'GradeStampNo'
      DataBinding.DataSource = ds_Props
      TabOrder = 8
      Width = 49
    end
  end
  object grdAvropSok: TcxGrid
    Left = 0
    Top = 153
    Width = 1242
    Height = 692
    Align = alClient
    PopupMenu = pmAvropGrd
    TabOrder = 1
    object grdAvropSokDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnEditing = grdAvropSokDBBandedTableView1Editing
      DataController.DataSource = dm_SokFormular.ds_MakeSokAvrop
      DataController.KeyFieldNames = 'UKEY'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#######'
          Kind = skCount
          FieldName = 'UKEY'
          Column = grdAvropSokDBBandedTableView1LO
        end
        item
          Format = '#,###,###.000'
          Kind = skSum
          FieldName = 'AM3'
          Column = grdAvropSokDBBandedTableView1AM3
        end
        item
          Format = '#,###,###.000'
          Kind = skSum
          FieldName = 'REST'
          Column = grdAvropSokDBBandedTableView1REST
        end
        item
          Format = '#,###,###.000'
          Kind = skSum
          FieldName = 'LEVLO'
          Column = grdAvropSokDBBandedTableView1LEVLO
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.PullFocusing = True
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.BandHeaders = False
      Styles.OnGetContentStyle = grdAvropSokDBBandedTableView1StylesGetContentStyle
      Bands = <
        item
          Caption = 'FIXED'
          FixedKind = fkLeft
        end
        item
          Caption = 'OTHER'
        end>
      object grdAvropSokDBBandedTableView1AVROP_STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AVROP_STATUS'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1LO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LO'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1LOADING_LOCATION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LOADING_LOCATION'
        PropertiesClassName = 'TcxLabelProperties'
        Options.VertSizing = False
        Width = 85
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1SUPPLIER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUPPLIER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 78
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1ORDER_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDER_NO'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 96
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1CUST_REFERENCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_REFERENCE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 115
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1FROM_WEEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FROM_WEEK'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1TO_WEEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TO_WEEK'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1CUSTOMER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTOMER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 59
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1AGENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AGENT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 57
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1DELIVERY_TERM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DELIVERY_TERM'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 88
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1POSTAL_CODE_DESTINATION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTAL_CODE_DESTINATION'
        PropertiesClassName = 'TcxLabelProperties'
        Options.VertSizing = False
        Width = 144
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1SHIPTO_REFERENCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHIPTO_REFERENCE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 142
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1PreliminaryRequestedPeriod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PreliminaryRequestedPeriod'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 93
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1SHIPPER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHIPPER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1SHIPPINGCOMPANYBOOKINGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHIPPINGCOMPANYBOOKINGID'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 110
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1SHIPPERSSHIPDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHIPPERSSHIPDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 123
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1TRANSPORT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSPORT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 87
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1MARKET_REGION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKET_REGION'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1UKEY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UKEY'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1BookingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BookingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1PANIC_NOTE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PANIC_NOTE'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 83
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1VESSEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VESSEL'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 81
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1ETD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ETD'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 74
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1ETA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ETA'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 60
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1AM3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AM3'
        PropertiesClassName = 'TcxCalcEditProperties'
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1LEVLO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEVLO'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1REST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REST'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.ReadOnly = True
        Position.BandIndex = 1
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1SupplierReference: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SupplierReference'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1NoOfSuppliers: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NoOfSuppliers'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1PROD_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROD_DESC'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1LENGTH_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LENGTH_DESC'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object grdAvropSokDBBandedTableView1Land: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Land'
        Position.BandIndex = 1
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
    end
    object grdAvropSokLevel1: TcxGridLevel
      GridView = grdAvropSokDBBandedTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1242
    Height = 62
    Align = alTop
    TabOrder = 3
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 865
      Height = 60
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 863
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 866
      Top = 1
      Width = 290
      Height = 60
      Align = alClient
      TabOrder = 1
      object dblTemplateName: TcxDBLabel
        Left = 8
        Top = 29
        DataBinding.DataField = 'Form'
        DataBinding.DataSource = ds_Props
        Height = 21
        Width = 85
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 9
        Caption = 'Mall'
      end
    end
    object Panel5: TPanel
      Left = 1156
      Top = 1
      Width = 85
      Height = 60
      Align = alRight
      TabOrder = 2
      object dxBarDockControl3: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 83
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Print'
      'AvropGrd')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.LargeImages = ImageList1
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 80
    Top = 376
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
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 23
      FloatClientHeight = 22
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbApplyUpdates'
        end
        item
          Visible = True
          ItemName = 'lbCancelUpdates'
        end
        item
          Visible = True
          ItemName = 'lbRefresh'
        end
        item
          Visible = True
          ItemName = 'lbBooking'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'lbExportToExcel'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'lbOpenTemplate'
        end
        item
          Visible = True
          ItemName = 'lbSaveTemplate'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
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
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 226
      FloatTop = 105
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object bcAvropStatus: TdxBarCombo
      Caption = 'Status'
      Category = 0
      Hint = 'Status'
      Visible = ivAlways
      ShowCaption = True
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'CANCEL'
        'PROGRESS'
        'COMPLETE')
      ItemIndex = 0
    end
    object lbApplyUpdates: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object lbExportToExcel: TdxBarLargeButton
      Action = acExportToExcel
      Category = 0
    end
    object lbBooking: TdxBarLargeButton
      Action = acBooking
      Category = 0
    end
    object lbCancelUpdates: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object lbPrint: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object lbOpenTemplate: TdxBarLargeButton
      Action = acOpenMall
      Category = 0
    end
    object lbSaveTemplate: TdxBarLargeButton
      Action = acSaveMall
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acWYSIWYG
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acSaveMallAs
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acSetAsSTDMall
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acEmailMeny
      Category = 1
      ButtonStyle = bsDropDown
      DropDownMenu = pmMaila
    end
    object dxBarButton6: TdxBarButton
      Action = acMailaTrpOrderAvropDK
      Category = 1
    end
    object dxBarButton7: TdxBarButton
      Action = acMailaTrpOrder
      Category = 1
    end
    object dxBarStatic1: TdxBarStatic
      Caption = '**** Maila ****'
      Category = 1
      Hint = '**** Maila ****'
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Action = acMailaManyTrpOrders
      Category = 1
    end
    object dxBarButton1: TdxBarButton
      Action = acChangeLayout
      Category = 2
    end
    object dxBarButton2: TdxBarButton
      Action = acShowGroupByBox
      Category = 2
    end
    object dxBarButton3: TdxBarButton
      Action = acExpandAll
      Category = 2
    end
    object dxBarButton4: TdxBarButton
      Action = acCollapseAll
      Category = 2
    end
    object dxBarButton5: TdxBarButton
      Action = acSelectAllRows
      Category = 2
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 128
    Top = 488
    Bitmap = {
      494C01010C001100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
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
      0000000000000000000000000000000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000841F1900922B
      210081302D00233F8100233B8A0020389600183599001832A200182CB2001F37
      9700233C8B00273F7F0044658D00EFF2F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C2F1C00AF3B
      2200943F300028257E00211C9A001813B700000BB0000000C8000000FF00120E
      C5001B18A600262386003B537E00ECF0F4000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD402800C44F
      2F00A14A39000E2550000720730008247000D8A18F0000000000D7E5DF002139
      9100000E9200090C8C003D568100EFF3F6000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5472D00C254
      3500C95A390018205D000D119A0028317100A96C6200ECD8D70000000000FCF6
      CE00A8AD9E004A5D83002E4D7E00E8EEF3000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B94B3100C95C
      3B00DD653B00071AA00007149A0050354600E4CFCE00B6818100B17D7E00FFEC
      CF00FFFFD000FFFFD1003E5A8800D1DDE9000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      00000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFCFD0084A4C400F4F7FA0000000000BF533500E46C
      4000995C4A000004B8005A4E6000F8E5DC00D4A99400B5796800B67F7D00FFFC
      F900DFC1C4008C4646009EAFCE00A3BDD6000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010528400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008AA5C4008DBEF0006F9DC800F6F8FA00C2523300E270
      3E00433B6F0016219100C1623500BE4D3200DAAF9900ECD8B600F6E5BB006630
      5900B88582009C6B7000B8DAFD008AA7C8000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A0000000000000000005294BD004A6B
      9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B9C004A6B
      9C004A6B9C000042730000000000000000000000000010528400004273000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6C6D8007AA4D500A5D2FF0088BDF2008AA8C700CB512C00BD67
      41000619AA00634B6300FF8E5200F4815300B1402500A6422D00C0896B003037
      8F00828CA0009D99B100BDE0FF00799CC2000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D60000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A00000000000000000008639C00ADCE
      E700ADCEE700ADCEE700ADCEE700CECEDE00CECEDE00CECEDE00CECEDE008CB5
      C600004273000000000000000000000000000000000000000000004273001052
      8400000000000000000000000000000000000000000000000000000000000000
      0000A6B9D000A3C4E700CDEEFF00B0D8FF00A1DDFF007C5F7500C4562B003431
      82000000FF00C5552900BA4D3000E97C5000E2754B00B3452700C7523900A7AC
      BD007D9EC200B4DAFF00B0D8FF006993C1000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A000000000000000000086BA500DEF7
      FF00DEF7FF00DEF7FF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00C6D6E7001052
      8400000000000000000000000000000000000000000000000000105284001052
      84004A6B9C000000000000000000000000000000000000000000000000000000
      00007A99BC00D3EEFF00CFEDFF009FD5FF0087819E00891F1100AE583300060F
      C1000000F600CE572D00A93F2700A93C2500A2372200A7382100B04734008626
      1D0096899F00B4EBFF009BC8F8007EA0C4000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A000000000000000000007BAD00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00DEF7FF00C6D6E700105284000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD0010528400000000000000000000000000000000000000000000000000FCFD
      FE00729AC300DAF7FF00CCECFF0062546E008C1F1300B13F25007D4845000000
      E9000A13C600C6533100AB3F2700A93C2600A3362200A4382300B74B3100D45F
      3900922E24008A90B40073ABE000C5D3E2000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D600000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000007BAD00B5E7
      FF00B5E7FF00B5E7FF00CEF7FF00CEF7FF00ADCEE70010528400000000000000
      00000000000000000000000000000000000000000000000000004A6B9C00739C
      FD00297BAD0000000000000000000000000000000000000000007FACD400A2D3
      FF00A1C8F20078A2CE00D3E1ED00EEE2E2008D2C2200AC3E2600282586000000
      FF003F284B00AD412800AC402800C7583700D5674100D1644000C75735008933
      2F009D2A1300B2402600D9C6C800000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A0000000000000000001884C600B5E7
      FF00B5E7FF00B5E7FF00B5E7FF00B5E7FF00A5DEFF0029637B004A6B9C000000
      000000000000000000000000000000000000000000000000000029637B008CB5
      C600297BAD00000000000000000000000000D2B4B400B2959C0069678900998A
      A5005C8FC3007C87A400D0C6CC00D2B4B4009D5B5B009D2C19000415B1000000
      F30059292C007F150B009B301C00881E1100CC5E3B00C857360092291900FAF5
      F700BA82810084231D0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000010A5D600A5DE
      FF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF00A5DEFF0029637B002963
      7B000000000000000000000000000000000000000000739CAD0010528400B5E7
      FF00298CD600000000000000000000000000A3606000E3C4C100E2BEBB00DDBC
      B5004178B100A9A4A900E4B99E00C58E7A00BB919100983E3800000AD400000D
      C600913D200078110900BB462600B94A3000B2462B00C25435009D311D00FEFA
      FB00E5CECE00AD7B7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD31000073080000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000010A5D6008CD6
      FF008CD6FF0084BDE70084BDE7008CD6FF008CD6FF00A5DEFF008CD6FF005294
      BD00004A7B0029637B00739CAD00739CAD00216B9400105A940084BDE7008CD6
      FF00007BAD00000000000000000000000000B47B790000000000000000000000
      0000FFFEEC00F5E5C800F2E0C200E3BDA700C7A2A200000000008696B5002442
      8000B3C7DD00BBE4FE00ABCDF20082383900882B270094403D00953F3B00C9A7
      A700000000000000000000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000010A5D6006BC6
      FF006BC6FF001884C600007BAD0084BDE7008CD6FF008CD6FF008CD6FF008CD6
      FF008CD6FF005294BD005294BD005294BD0084BDE700A5DEFF00A5DEFF0042A5
      DE0084BDE700000000000000000000000000B47B740000000000000000000000
      0000FEF8EB00EBDEC500EDDEC200E3BEAA00C8A3A3000000000000000000809D
      B9006698CA006492C60067A2D8006C81A800EADBDB00FDFBFB00FDFBFB000000
      0000000000000000000000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000010A5D6004ABD
      FF0010A5D60000000000000000001884C60042A5DE006BC6FF006BC6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF0042A5DE0042A5
      DE0000000000000000000000000000000000B57A7400FCF6EB00FDF9F200FFFD
      F8000000000000000000FFFFF800E4C2B100C9A3A30000000000CBD9E700739E
      CA00B4DAFF00ACD6FF0085B5E9003F7BB7000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000010A5D60010A5
      D6000000000000000000000000000000000042A5DE001884C60042A5DE004ABD
      FF006BC6FF006BC6FF006BC6FF004ABDFF0042A5DE0010A5D60042A5DE000000
      000000000000000000000000000000000000B77A6E00EFE0C400EFE4CD00F7F2
      E2000000000000000000EEE4CD00E6CABE00C8A2A200000000007EB0DC00E2FF
      FF00E2FFFF00C4EDFF00B8E4FF007BA8DA00B3C0D10000000000000000000000
      0000000000000000000000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000000000010A5D6000000
      000000000000000000000000000000000000000000000000000042A5DE0042A5
      DE0010A5D60010A5D60010A5D60042A5DE0042A5DE0000000000000000000000
      000000000000000000000000000000000000AE6C5E00F7E0C800F7E6D400F9EE
      E500FEF7F700FEF7F700FEF7F700DBBCB700C7A2A200FCF9F90078647B00A880
      8900A9858B00A1A0B800AACBEA004384B9005480A500FCFDFE00000000000000
      000000000000000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B37D7C00B17D7B00B17E7D00B17E
      7E00B17E7E00B17E7E00B17E7E00AC767300E4D2D200B4838300AE351A00C04C
      2800D8643800C45333009D3E320047385200397FAF00F3F5F800000000000000
      00000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      08000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000770C06007A0E
      06007D2525009B2D1B00C1533500AD3F2700A764640000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008D2115007C0F
      0900CDADB100BB482900F7895800D0634000C198980000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C4C46008D20
      1300A03B2B00BA4D3100EB7E5100CC5E3B00F0E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBC3
      C300A36666008F2F2600A0524B00CBABAB000000000000000000000000000000
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
      0000000000000031DE000031DE00000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042636300846363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484004221210042636300426363008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A500000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      0000422121004221210042424200C6A5A5008442420042212100422121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE00000000000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A50000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE63000000000000000000000000000000000000000000008463
      630084636300C6A5A500F7CEA500F7CEA500C663630042212100422121004200
      0000426384004263630042424200424242004242420000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE000000000000000000000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C0000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE6300000000000000000000000000000000000084848400C6A5
      A500F7CEA500F7CEA500C684840084636300C663630042212100422121004221
      2100002184004263A50000000000426363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      00000000000000000000000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE6300000000000000000000000000000000000084848400C6A5
      A50084848400424242004263630042424200C684840042212100422121000000
      0000002184000021840000214200422121004221210042424200000000008463
      6300426363000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000000000000000000000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE6300000000000000000000002142000000000084848400C6A5
      A50042424200424242004242420084636300C6A5A50084212100422121000000
      0000002184000021840000218400002142000042630042638400002142004242
      4200426363008484840000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000021420000214200000000008463
      63008463630084636300C6C6C600F7CEA500C6A5A500C6848400844242004200
      0000002184000021840000218400002184004263A5004263A500004263004221
      2100846363000021420000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE6300000000000000000000002142000021E7000021E7004263
      6300F7FFFF00F7CEA500C6A5A500C6A5A500C6A5A50084636300424242000021
      420000218400002184000021840000218400002184004263A500426384000021
      4200422121000042630042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE63000000000000000000000021E7000021E7000021E7008463
      630084636300C6848400C6C6C600844242004221420000426300002184000021
      8400002184000021840000218400002184000021840000218400424284004263
      8400004284004263A50042424200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE63000000000000000000000021E7000021E7000021E7000021
      E7000021E7004221210042424200002142008484840000000000424242004242
      4200002184000021840000218400002184000021840000218400002184000021
      8400426384004263A50042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A0084A5840084A584009CBDC60084A5840084A584009CBDC60084A5
      840084A5840084A5840084A5840084A584009CBDC60084A5840084A584005A7B
      5A00F7FFFF00CE6300000000000000000000000000000021E7000021E7000021
      E7000021E7004242420000E7E70000E7E70000E7E70000000000000000004242
      4200424242004242420000218400002184000021840000218400002184000021
      8400002184000021840042424200000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF009CBDC600F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF009CBDC600F7FFFF00F7FFFF005A7B
      5A00F7FFFF00CE6300000000000000000000000000000021E7000021E7000000
      00000000000000E7E70000E7E70084C6E70084E7E70000FFFF00000000000000
      0000000000004242420042424200002184000021840000218400002184000021
      8400002184004242420042424200000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A00F7FFFF00CE6300000000000000000000000000000021E7000021E7000000
      0000000000008484840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000042424200002184000021840000218400424242004242
      4200424242000000000000000000420021000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE630000000000000000000000000000000000000021E7000021
      E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000424242004242420042424200424242000000
      0000000000004242420042424200424242000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF005A7B5A005A7B5A005A7B5A005A7B5A005A7B
      5A005A7B5A005A7B5A005A7B5A005A7B5A005A7B5A00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      00000021E7000021E7000021E70000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004200
      21004200210042424200424242000042A5000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00CE63000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A50000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      000000000000000000000021E700000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004242
      420042424200424242000042A5000042A500000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000042A500000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D67310000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004242420042424200000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B584840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500EFD6AD00F7D6A500EFCE
      9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B00000000000000000000000000C66B6B00CE636300B552
      52009C6B6B00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500CE6363008C420800843910000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000B5847300C66B6B00CE636300BD5A
      5A009C6B6B00A58C8C0094292900B5736B00DECECE00C6CEC600F7F7F700FFFF
      FF00E7E7E700CE636300A5392100C65A5A009C4A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000B5847300C66B6B00CE636300BD5A
      5A00A5737300A5848400942121008C181800B5736B00EFE7E700D6DEDE00F7F7
      F700FFFFFF00CE636300B5393100C65A5A009C4A4A004A0052009C4A4A000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000B5847300C66B6B00CE636300B552
      5200A5737300AD8C8C00942929009429290094313100B5B5B500EFE7E700D6E7
      DE00F7F7F700CE636300B5393900C65A5A009C4A4A0021210000C65A5A009C4A
      4A00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B000000000000000000B5847300C66B6B00CE636300B552
      5200B5737300C6ADAD00BD9C9C00BD9C9C00BDA5A500BDA5A500B5B5B500EFE7
      E700C6CEC600CE636300B5393900C65A5A009C4A4A00B5524200C65A5A009C4A
      4A00000000000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B000000000000000000B5847300C66B6B00CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300B54A4A00C65A5A009C4A4A00CE5A5200C65A5A009C4A
      4A004A0052009C4A4A0000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B000000000000000000B5847300AD4A4A00AD4A4A00CE8C
      8C00CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE73
      7300DE7B7B00D66B6B00AD424200CE6363009C4A4A00C6525200C65A5A009C4A
      4A0021210000C65A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B000000000000000000B5847300A5423900C6847B00F7F7
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00EFE7E700E7949400AD313100CE6363009C4A4A00B5525200C65A5A009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B000000000000000000B5847300A5423900C6848400FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100CE6363009C4A4A00B54A4A00C65A5A009C4A
      4A00C65A4A00C65A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B000000000000000000B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE630000000000000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B000000000000000000B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE630000000000000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B000000000000000000B5847300A5423900C6847B00FFFF
      FF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200CE6363009C4A
      4A00B5524200C65A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE630000000000000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B000000000000000000B5847300A5423900C6847B00FFFF
      FF00CEC6C600D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00C6C6C600E7E7
      E700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD0031313100000000000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B000000000000000000B5847300A5423900C6847B00FFFF
      FF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700EFE7E700E7949400AD313100BD5A5A009C4A4A00B5525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B00313131000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B000000000000000000B58C5A009C5A2100B58C6B00C6CE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600BD7B730094100800841010009C4A4A00BD525200BD5A5A009C4A
      4A00B5524200CE6363009C4A4A00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD8473000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700CE636B00B5424200BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F700000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B58484000000000000000000000000000000000000000000B584
      7300A5523100C6847B00FFFFFF00CEC6C600D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00FFF7F700E7949400AD313100BD5A5A009C4A
      4A00B5524200BD5A5A009C4A4A00000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F7000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000000000000B584
      7300945A0800B5846300FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700C67B7B0094100800841010009C4A
      4A00B55A4200BD5A5A009C4A4A00000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E7000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      840000000000000000000000000000000000000000000000000000000000B58C
      6B00945A0800B58C6B00C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600D6ADAD00BD7B7300BD737300CE63
      6B00B54A3900BD5A5A009C4A4A0000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900C6847B00FFFFFF00CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6C600FFF7F700E794
      9400A5392100BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300A54A2900BD7B7300FFFFFF00FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700CE8C
      8C009C311800BD5A5A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B5847300945A0800B57B7300C6CECE00C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BD84
      7B0094311800943131009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFC00001FFFFFFFFC000FFFFFF80
      0000FFFFFFFFC000807FFF800000FFFFFFFFC0408003FF800000FFFFFFFFC020
      80001F800000FFFFFFFFC00080001F800000FFFFFFFC400080000F800000FFFF
      BFFC000080000F800000C0039FF80000800007800000C007CFF0000080000780
      0000C00FC7F00000800007800000C01FC7E00000800003800000C03FC7C00001
      800003800000C01FC7000003800001800000C00F87000003800000800000C000
      0770400F800000800000C0000770601F800007800000C6000F0C40FF80000780
      0000CF001F0C407F800007800000DFC07F00003FC03F07800000FFFFFF00003F
      E07E0F800000FFFFFFFFC07FFFE01F800000FFFFFFFFC07FFFF07F800000FFFF
      FFFFC07FFFFFFFC00001FFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF9FF0C1FFFFFFFFF9FFFFFFFF1FC0007C00003FE0FFFC7FFE3F00001C00003
      F00FFFC3FF87E00003C00003E0007FC1FF0F800003C00003C0007FE0FE1F8000
      03C00003C00027F07C3F800003C00003400003FC307F800003C00003200003FE
      00FF800003C00003000001FF01FF800003C00003000001FF83FFC00003C00003
      004001FF01FFE00007C00003806001FE00FFF8000FC00003983801FC187FF800
      1FC00003981C06F83C3FFC007FC00003C00E18F07F1FFC00FFC00003F00FE0E0
      FF8FFC01FFC00003FD0FE0C1FFEFFC01FFC00003FD7FE083FFFFFC01FFC00003
      FF7FF887FFFFFC01FFE00007FF7FFC8FFFFFF803FFFFFFFFFFFFFEFFFFFFF803
      FFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFE00003FFFFFFFFFFFFFFFFFFE0
      0003FFFFFFFFFFFFFF1FFFE000038000FFC00003F8000FE0000300007FC00003
      E0000FE0000300001FC00003C0000FE0000300000FC00003C0000FE000030000
      0FC00003C0000FE00003000003C00003C0000FE00003000001C00003C0000FE0
      0003000001C00003C0000FE00003000001C00003C0000FE00003000001C00003
      C0000FE00003000001C00003C0000FE00003000001C00003C0000FE000030000
      01C00003C0000FE00003000001C00001C0000FE00003000001C00000C0000FE0
      0003E00001C00000E0000FE00003E00001C00000F8000FE00007E00001C00000
      FE1FFFE0000FE00001E00007FFFFFFE0001FFC0001FFFFFFFFFFFFE0003FFC00
      01FFFFFFFFFFFFFFFFFFFC0001FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object SaveDialog1: TSaveDialog
    Left = 240
    Top = 576
  end
  object OpenDialog1: TOpenDialog
    Left = 240
    Top = 616
  end
  object pmClearShipDate: TPopupMenu
    Left = 128
    Top = 536
    object ClearShipDate: TMenuItem
      Caption = 'Clear Shipdate'
    end
  end
  object SaveDialog2: TSaveDialog
    Left = 240
    Top = 664
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 248
    Top = 464
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 2
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acExportToExcel: TAction
      Caption = 'Exp. till Excel F11'
      ImageIndex = 3
      ShortCut = 122
      OnExecute = acExportToExcelExecute
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      ImageIndex = 10
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acBooking: TAction
      Caption = 'Bokning F7'
      ImageIndex = 4
      ShortCut = 118
      OnExecute = acBookingExecute
      OnUpdate = acBookingUpdate
    end
    object acPrint: TAction
      Caption = 'S&kriv ut'
      ImageIndex = 6
      ShortCut = 16459
      OnExecute = acPrintExecute
    end
    object acExit: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acChangeLayout: TAction
      Caption = #196'ndra layout'
      OnExecute = acChangeLayoutExecute
    end
    object acShowGroupByBox: TAction
      Caption = 'Grupperingsruta'
      OnExecute = acShowGroupByBoxExecute
    end
    object acWYSIWYG: TAction
      Caption = '&WYSIWYG'
      ImageIndex = 6
      ShortCut = 32855
      OnExecute = acWYSIWYGExecute
    end
    object acExpandAll: TAction
      Caption = 'Expandera alla'
      OnExecute = acExpandAllExecute
    end
    object acCollapseAll: TAction
      Caption = 'Kollapsa alla'
      OnExecute = acCollapseAllExecute
    end
    object acSummary: TAction
      Caption = 'Summering'
      OnExecute = acSummaryExecute
    end
    object acSelectAllRows: TAction
      Caption = 'Markera alla rader'
      OnExecute = acSelectAllRowsExecute
    end
    object acMailaTrpOrder: TAction
      Category = 'Print'
      Caption = 'Maila transportorder'
      ImageIndex = 11
      OnExecute = acMailaTrpOrderExecute
    end
    object acMailaTrpOrderAvropDK: TAction
      Category = 'Print'
      Caption = 'Maila transportorder DK (avrop)'
      OnExecute = acMailaTrpOrderAvropDKExecute
    end
    object acEmailMeny: TAction
      Caption = 'Email F8'
      ImageIndex = 11
      ShortCut = 119
      OnExecute = acEmailMenyExecute
    end
    object acOpenMall: TAction
      Caption = #214'ppna mall F9'
      ImageIndex = 8
      ShortCut = 120
      OnExecute = acOpenMallExecute
    end
    object acSaveMall: TAction
      Caption = 'Spara mall'
      ImageIndex = 9
      ShortCut = 8306
      OnExecute = acSaveMallExecute
    end
    object acMailaManyTrpOrders: TAction
      Category = 'Print'
      Caption = 'Maila markerade transportorders'
      OnExecute = acMailaManyTrpOrdersExecute
    end
    object acSaveMallAs: TAction
      Caption = 'Ny mall'
      ImageIndex = 2
      OnExecute = acSaveMallAsExecute
    end
    object acAngeSomStandardMall: TAction
      Caption = 'Std.mall'
      OnExecute = acAngeSomStandardMallExecute
    end
    object acSetAsSTDMall: TAction
      Caption = 'Std mall'
      Hint = 'S'#228'tter den aktuella mallen som standard mall'
      ImageIndex = 7
      OnExecute = acSetAsSTDMallExecute
    end
  end
  object pmShortcut: TPopupMenu
    Left = 248
    Top = 504
    object Bokning1: TMenuItem
      Action = acBooking
    end
    object ngra1: TMenuItem
      Action = acCancelChanges
    end
    object Stng1: TMenuItem
      Action = acExit
    end
    object ExptillExcel1: TMenuItem
      Action = acExportToExcel
    end
    object Skrivut1: TMenuItem
      Action = acPrint
    end
    object Uppdatera1: TMenuItem
      Action = acRefresh
    end
    object Spara1: TMenuItem
      Action = acSave
    end
    object WYSIWYG1: TMenuItem
      Action = acWYSIWYG
    end
    object ppnamallF91: TMenuItem
      Action = acOpenMall
    end
    object SparamallShiftF31: TMenuItem
      Action = acSaveMall
    end
    object EmailF81: TMenuItem
      Action = acEmailMeny
    end
  end
  object pmAvropGrd: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 449
    Top = 542
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 449
    Top = 597
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = grdAvropSok
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      ReportDocument.CreationDate = 42038.100035613420000000
      OptionsView.Footers = False
      OptionsView.BandHeaders = False
      OptionsView.Caption = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 128
    Top = 584
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12713983
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfFlat
    Left = 80
    Top = 328
  end
  object pmMaila: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarStatic1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 456
    Top = 488
  end
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      'AND ((LOObjectType = :LOObjectType) or (0 = :LOObjectType))'
      'AND Form = :Form')
    Left = 528
    Top = 224
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FORM'
        DataType = ftString
        ParamType = ptInput
      end>
    object cds_PropsUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_PropsForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_PropsName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cds_PropsVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOwnerNo: TIntegerField
      FieldName = 'OwnerNo'
      Origin = 'OwnerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsPIPNo: TIntegerField
      FieldName = 'PIPNo'
      Origin = 'PIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLIPNo: TIntegerField
      FieldName = 'LIPNo'
      Origin = 'LIPNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsInputOption: TIntegerField
      FieldName = 'InputOption'
      Origin = 'InputOption'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsInputOptionChange
    end
    object cds_PropsRegPointNo: TIntegerField
      FieldName = 'RegPointNo'
      Origin = 'RegPointNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRegDate: TSQLTimeStampField
      FieldName = 'RegDate'
      Origin = 'RegDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCopyPcs: TIntegerField
      FieldName = 'CopyPcs'
      Origin = 'CopyPcs'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsRunNo: TIntegerField
      FieldName = 'RunNo'
      Origin = 'RunNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsProducerNo: TIntegerField
      FieldName = 'ProducerNo'
      Origin = 'ProducerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsAutoColWidth: TIntegerField
      FieldName = 'AutoColWidth'
      Origin = 'AutoColWidth'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSupplierCode: TStringField
      FieldName = 'SupplierCode'
      Origin = 'SupplierCode'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cds_PropsLengthOption: TIntegerField
      FieldName = 'LengthOption'
      Origin = 'LengthOption'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthGroupNo: TIntegerField
      FieldName = 'LengthGroupNo'
      Origin = 'LengthGroupNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsNewItemRow: TIntegerField
      FieldName = 'NewItemRow'
      Origin = 'NewItemRow'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesRegionNo: TIntegerField
      FieldName = 'SalesRegionNo'
      Origin = 'SalesRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarketRegionNo: TIntegerField
      FieldName = 'MarketRegionNo'
      Origin = 'MarketRegionNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsOrderTypeNo: TIntegerField
      FieldName = 'OrderTypeNo'
      Origin = 'OrderTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStatus: TIntegerField
      FieldName = 'Status'
      Origin = 'Status'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsFilterOrderDate: TIntegerField
      FieldName = 'FilterOrderDate'
      Origin = 'FilterOrderDate'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsStartPeriod: TSQLTimeStampField
      FieldName = 'StartPeriod'
      Origin = 'StartPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsEndPeriod: TSQLTimeStampField
      FieldName = 'EndPeriod'
      Origin = 'EndPeriod'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsClientNo: TIntegerField
      FieldName = 'ClientNo'
      Origin = 'ClientNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsSalesPersonNo: TIntegerField
      FieldName = 'SalesPersonNo'
      Origin = 'SalesPersonNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkSupplierNo: TIntegerField
      FieldName = 'VerkSupplierNo'
      Origin = 'VerkSupplierNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVerkKundNo: TIntegerField
      FieldName = 'VerkKundNo'
      Origin = 'VerkKundNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBarCodeNo: TIntegerField
      FieldName = 'BarCodeNo'
      Origin = 'BarCodeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGradeStampNo: TIntegerField
      FieldName = 'GradeStampNo'
      Origin = 'GradeStampNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsVolumeUnitNo: TIntegerField
      FieldName = 'VolumeUnitNo'
      Origin = 'VolumeUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthFormatNo: TIntegerField
      FieldName = 'LengthFormatNo'
      Origin = 'LengthFormatNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLengthVolUnitNo: TIntegerField
      FieldName = 'LengthVolUnitNo'
      Origin = 'LengthVolUnitNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupByBox: TIntegerField
      FieldName = 'GroupByBox'
      Origin = 'GroupByBox'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsGroupSummary: TIntegerField
      FieldName = 'GroupSummary'
      Origin = 'GroupSummary'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsGroupSummaryChange
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsLoadingLocationNo: TIntegerField
      FieldName = 'LoadingLocationNo'
      Origin = 'LoadingLocationNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShipperNo: TIntegerField
      FieldName = 'ShipperNo'
      Origin = 'ShipperNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsBookingTypeNo: TIntegerField
      FieldName = 'BookingTypeNo'
      Origin = 'BookingTypeNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsCustomerNo: TIntegerField
      FieldName = 'CustomerNo'
      Origin = 'CustomerNo'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsShowProduct: TIntegerField
      FieldName = 'ShowProduct'
      Origin = 'ShowProduct'
      ProviderFlags = [pfInUpdate]
    end
    object cds_PropsMarknad: TStringField
      FieldKind = fkLookup
      FieldName = 'Marknad'
      LookupDataSet = dmsContact.cds_Market
      LookupKeyFields = 'MarketRegionNo'
      LookupResultField = 'MarketRegionName'
      KeyFields = 'MarketRegionNo'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object cds_PropsKund: TStringField
      FieldKind = fkLookup
      FieldName = 'Kund'
      LookupDataSet = dmsContact.sp_Customers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSR: TStringField
      FieldKind = fkLookup
      FieldName = 'SR'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'SalesRegionNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSaljgrupp: TStringField
      FieldKind = fkLookup
      FieldName = 'Saljgrupp'
      LookupDataSet = dmsContact.cds_SalesGrp
      LookupKeyFields = 'SalesGroupNo'
      LookupResultField = 'SalesGroupName'
      KeyFields = 'SalesPersonNo'
      ProviderFlags = []
      Size = 15
      Lookup = True
    end
    object cds_PropsVerk: TStringField
      FieldKind = fkLookup
      FieldName = 'Verk'
      LookupDataSet = dmsContact.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'VerkNo'
      Size = 80
      Lookup = True
    end
    object cds_PropsShipper: TStringField
      FieldKind = fkLookup
      FieldName = 'Shipper'
      LookupDataSet = dmsContact.cds_Shippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      Size = 80
      Lookup = True
    end
    object cds_PropsBokningstyp: TStringField
      FieldKind = fkLookup
      FieldName = 'Bokningstyp'
      LookupDataSet = dmsSystem.cdsBookingType
      LookupKeyFields = 'BookingTypeNo'
      LookupResultField = 'BookingType'
      KeyFields = 'BookingTypeNo'
      Size = 30
      Lookup = True
    end
    object cds_PropsLaststalle: TStringField
      FieldKind = fkLookup
      FieldName = 'Laststalle'
      LookupDataSet = dmsContact.cdsCities
      LookupKeyFields = 'CityNo'
      LookupResultField = 'CityName'
      KeyFields = 'LoadingLocationNo'
      Size = 50
      Lookup = True
    end
    object cds_PropsAgentNamn: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentNamn'
      LookupDataSet = dmsContact.sp_Agent
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'AgentNo'
      Size = 80
      Lookup = True
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 528
    Top = 280
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdAvropSok
    PopupMenus = <>
    Left = 456
    Top = 440
  end
  object cds_mall: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Name = :Name'
      'AND ((LOObjectType = :LOObjectType) or (0 = :LOObjectType))')
    Left = 584
    Top = 224
    ParamData = <
      item
        Name = 'USERID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        ParamType = ptInput
      end
      item
        Name = 'LOOBJECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object cds_mallUserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'UserID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_mallForm: TStringField
      FieldName = 'Form'
      Origin = 'Form'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cds_mallName: TStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 50
    end
    object cds_mallVerkNo: TIntegerField
      FieldName = 'VerkNo'
      Origin = 'VerkNo'
    end
    object cds_mallLOObjectType: TIntegerField
      FieldName = 'LOObjectType'
      Origin = 'LOObjectType'
    end
  end
  object ds_mall: TDataSource
    DataSet = cds_mall
    Left = 584
    Top = 280
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grdAvropSok
    PopupMenus = <>
    Left = 296
    Top = 248
  end
  object siLangLinked_frmSokAvropFormular: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
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
      'ListField')
    Left = 608
    Top = 408
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0053006F006B004100760072006F007000
      46006F0072006D0075006C006100720001004100560052004F00500020000100
      010001000D000A00620063004100760072006F00700053007400610074007500
      730001005300740061007400750073000100010001000D000A00640078004200
      61007200530074006100740069006300310001002A002A002A002A0020004D00
      610069006C00610020002A002A002A002A000100010001000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      43007500730074006F006D00200031000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001004300
      7500730074006F006D00200032000100010001000D000A0043006C0065006100
      720053006800690070004400610074006500010043006C006500610072002000
      530068006900700064006100740065000100010001000D000A00610063004500
      780070006F007200740054006F0045007800630065006C000100450078007000
      2E002000740069006C006C00200045007800630065006C002000460031003100
      0100010001000D000A0061006300430061006E00630065006C00430068006100
      6E006700650073000100C5006E00670072006100200046003400010001000100
      0D000A0061006300520065006600720065007300680001005500700070006400
      610074006500720061002000460036000100010001000D000A00610063005300
      6100760065000100530070006100720061002000460033000100010001000D00
      0A00630078004C006100620065006C00310001004D0061006C006C0001000100
      01000D000A006700720064004100760072006F00700053006F006B0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4C00450056004C004F0001004C00650076006500720065007200610074000100
      010001000D000A006700720064004100760072006F00700053006F006B004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31005200450053005400010052006500730074000100010001000D000A006700
      720064004100760072006F00700053006F006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031004500540041000100
      4500540041000100010001000D000A006700720064004100760072006F007000
      53006F006B0044004200420061006E006400650064005400610062006C006500
      5600690065007700310041004D003300010041004D0033000100010001000D00
      0A006700720064004100760072006F00700053006F006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053007500
      700070006C006900650072005200650066006500720065006E00630065000100
      5400720070002E00490044000100010001000D000A0067007200640041007600
      72006F00700053006F006B0044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C0045004E004700540048005F004400
      45005300430001004C00E4006E00670064000100010001000D000A0067007200
      64004100760072006F00700053006F006B0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C0061006E0064000100
      4C0061006E0064000100010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004E006F004F00660053007500700070006C006900
      650072007300010041006E00740061006C0020006C00650076002E0001000100
      01000D000A006700720064004100760072006F00700053006F006B0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      500052004F0044005F0044004500530043000100500072006F00640075006B00
      74000100010001000D000A006100630042006F006F006B0069006E0067000100
      42006F006B006E0069006E0067002000460037000100010001000D000A006100
      63004F00700065006E004D0061006C006C000100D600700070006E0061002000
      6D0061006C006C002000460039000100010001000D000A006100630053006100
      760065004D0061006C006C0001005300700061007200610020006D0061006C00
      6C000100010001000D000A00610063004D00610069006C006100540072007000
      4F0072006400650072004100760072006F00700044004B0001004D0061006900
      6C00610020007400720061006E00730070006F00720074006F00720064006500
      7200200044004B00200028006100760072006F00700029000100010001000D00
      0A006100630045006D00610069006C004D0065006E007900010045006D006100
      69006C002000460038000100010001000D000A00610063004D00610069006C00
      61004D0061006E0079005400720070004F007200640065007200730001004D00
      610069006C00610020006D00610072006B006500720061006400650020007400
      720061006E00730070006F00720074006F007200640065007200730001000100
      01000D000A0061006300530065007400410073005300540044004D0061006C00
      6C00010053007400640020006D0061006C006C000100010001000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B00310001004E00650077005200650070006F007200
      74000100010001000D000A006100630053006100760065004D0061006C006C00
      4100730001004E00790020006D0061006C006C000100010001000D000A006100
      630041006E006700650053006F006D005300740061006E006400610072006400
      4D0061006C006C0001005300740064002E006D0061006C006C00010001000100
      0D000A00610063004D00610069006C0061005400720070004F00720064006500
      720001004D00610069006C00610020007400720061006E00730070006F007200
      74006F0072006400650072000100010001000D000A0061006300430068006100
      6E00670065004C00610079006F00750074000100C4006E006400720061002000
      6C00610079006F00750074000100010001000D000A0061006300530068006F00
      7700470072006F00750070004200790042006F00780001004700720075007000
      70006500720069006E006700730072007500740061000100010001000D000A00
      610063005000720069006E0074000100530026006B0072006900760020007500
      74000100010001000D000A00610063004500780069007400010053007400E400
      6E00670020004600310032000100010001000D000A0061006300570059005300
      4900570059004700010026005700590053004900570059004700010001000100
      0D000A0061006300530075006D006D006100720079000100530075006D006D00
      6500720069006E0067000100010001000D000A0061006300530065006C006500
      6300740041006C006C0052006F007700730001004D00610072006B0065007200
      6100200061006C006C0061002000720061006400650072000100010001000D00
      0A006100630045007800700061006E00640041006C006C000100450078007000
      61006E006400650072006100200061006C006C0061000100010001000D000A00
      6100630043006F006C006C00610070007300650041006C006C0001004B006F00
      6C006C006100700073006100200061006C006C0061000100010001000D000A00
      63006200530068006F007700500072006F006400750063007400010056006900
      730061002000700072006F00640075006B0074000100010001000D000A006300
      6200460069006C0074006500720049006E0076006F0069006300650044006100
      740065000100460069006C00740072006500720061002000660061006B007400
      75007200610064006100740075006D000100010001000D000A004C0061006200
      65006C003100310001004100760072006F007000730074006100740075007300
      3A000100010001000D000A004C006100620065006C003100320001004600F600
      720073002E0072006500670069006F006E003A000100010001000D000A006300
      6200460069006C007400650072005F004500540044000100460069006C007400
      720065007200610020004500540044000100010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004C004F004100440049004E00
      47005F004C004F0043004100540049004F004E0001004C006100730074007300
      7400E4006C006C0065000100010001000D000A00670072006400410076007200
      6F00700053006F006B0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310053005500500050004C004900450052000100
      5600650072006B000100010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      6500560069006500770031004100560052004F0050005F005300540041005400
      5500530001004100760072002E00530074006100740075007300010001000100
      0D000A006700720064004100760072006F00700053006F006B00440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      4F0001004C004F000100010001000D000A004C006100620065006C0031003000
      01004F0072006400650072007400790070003A000100010001000D000A004C00
      6100620065006C003300010053006800690070007000650072003A0001000100
      01000D000A004C006100620065006C00340001005400720061006E0073007000
      6F00720074003A000100010001000D000A004C006100620065006C0031000100
      5600650072006B003A000100010001000D000A004C006100620065006C003200
      01004C0061007300740073007400E4006C006C0065003A000100010001000D00
      0A004C006100620065006C00350001004B0075006E0064003A00010001000100
      0D000A004C006100620065006C003800010050006500720069006F0064003A00
      0100010001000D000A004C006100620065006C003900010074006F006D000100
      010001000D000A004C006100620065006C00360001004D00610072006B006E00
      610064003A000100010001000D000A004C006100620065006C00370001004100
      670065006E0074003A000100010001000D000A00670072006400410076007200
      6F00700053006F006B0044004200420061006E00640065006400540061006200
      6C006500560069006500770031004F0052004400450052005F004E004F000100
      4B006F006E007400720061006B0074006E0072000100010001000D000A006700
      720064004100760072006F00700053006F006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031005400520041004E00
      530050004F005200540001005400720061006E00730070006F00720074000100
      010001000D000A006700720064004100760072006F00700053006F006B004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004D00410052004B00450054005F0052004500470049004F004E0001004D00
      610072006B006E00610064000100010001000D000A0067007200640041007600
      72006F00700053006F006B0044004200420061006E0064006500640054006100
      62006C006500560069006500770031005300480049005000500049004E004700
      43004F004D00500041004E00590042004F004F004B0049004E00470049004400
      0100530070006500640069007400F600720065006E0073002000490044000100
      010001000D000A006700720064004100760072006F00700053006F006B004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100530048004900500050004500520053005300480049005000440041005400
      45000100530070006500640069007400F600720065006E007300200064006100
      740075006D000100010001000D000A006700720064004100760072006F007000
      53006F006B0044004200420061006E006400650064005400610062006C006500
      5600690065007700310055004B0045005900010055004B004500590001000100
      01000D000A006700720064004100760072006F00700053006F006B0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      560045005300530045004C0001004200E50074000100010001000D000A006700
      720064004100760072006F00700053006F006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031004500540044000100
      4500540044000100010001000D000A006700720064004100760072006F007000
      53006F006B0044004200420061006E006400650064005400610062006C006500
      5600690065007700310042006F006F006B0069006E0067004E006F0001004200
      6F006F006B0069006E0067004E006F000100010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100500041004E00490043005F00
      4E004F00540045000100500061006E0069006B006E006F007400650072006900
      6E0067000100010001000D000A006700720064004100760072006F0070005300
      6F006B0044004200420061006E006400650064005400610062006C0065005600
      6900650077003100530048004900500050004500520001005300700065006400
      69007400F60072000100010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      65005600690065007700310054004F005F005700450045004B00010054006900
      6C006C0020007600650063006B0061000100010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310043005500530054004F004D00
      4500520001004B0075006E0064000100010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C0065005600690065007700310043005500530054005F0052004500
      46004500520045004E004300450001004B0075006E0064007200650066006500
      720065006E0073000100010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      650056006900650077003100460052004F004D005F005700450045004B000100
      46007200E5006E0020007600650063006B0061000100010001000D000A006700
      720064004100760072006F00700053006F006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031004100470045004E00
      540001004100670065006E0074000100010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C00650056006900650077003100530048004900500054004F005F00
      5200450046004500520045004E004300450001004C0065007600650072006100
      6E0073007200650066006500720065006E0073000100010001000D000A006700
      720064004100760072006F00700053006F006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031005000720065006C00
      69006D0069006E00610072007900520065007100750065007300740065006400
      50006500720069006F00640001005200650064006F0064006100670001000100
      01000D000A006700720064004100760072006F00700053006F006B0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      440045004C00490056004500520059005F005400450052004D0001004C006500
      76002E00760069006C006C006B006F0072000100010001000D000A0067007200
      64004100760072006F00700053006F006B0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050004F00530054004100
      4C005F0043004F00440045005F00440045005300540049004E00410054004900
      4F004E00010050006F00730074006E0072002C0020006F007200740001000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A00620063004100760072006F00700053007400610074007500
      73000100530074006100740075007300010001000D000A006400780042006100
      7200530074006100740069006300310001002A002A002A002A0020004D006100
      69006C00610020002A002A002A002A00010001000D000A006100630053006500
      7400410073005300540044004D0061006C006C0001005300E400740074006500
      72002000640065006E00200061006B007400750065006C006C00610020006D00
      61006C006C0065006E00200073006F006D0020007300740061006E0064006100
      7200640020006D0061006C006C00010001000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A006300640073005F00500072006F0070007300550073006500
      7200490044000100550073006500720049004400010001000D000A0063006400
      73005F00500072006F007000730046006F0072006D00010046006F0072006D00
      010001000D000A006300640073005F00500072006F0070007300560065007200
      6B004E006F0001005600650072006B004E006F00010001000D000A0063006400
      73005F00500072006F00700073004F0077006E00650072004E006F0001004F00
      77006E00650072004E006F00010001000D000A006300640073005F0050007200
      6F00700073005000490050004E006F0001005000490050004E006F0001000100
      0D000A006300640073005F00500072006F00700073004C00490050004E006F00
      01004C00490050004E006F00010001000D000A006300640073005F0050007200
      6F007000730049006E007000750074004F007000740069006F006E0001004900
      6E007000750074004F007000740069006F006E00010001000D000A0063006400
      73005F00500072006F007000730052006500670050006F0069006E0074004E00
      6F00010052006500670050006F0069006E0074004E006F00010001000D000A00
      6300640073005F00500072006F00700073005200650067004400610074006500
      01005200650067004400610074006500010001000D000A006300640073005F00
      500072006F007000730043006F0070007900500063007300010043006F007000
      7900500063007300010001000D000A006300640073005F00500072006F007000
      7300520075006E004E006F000100520075006E004E006F00010001000D000A00
      6300640073005F00500072006F0070007300500072006F006400750063006500
      72004E006F000100500072006F00640075006300650072004E006F0001000100
      0D000A006300640073005F00500072006F00700073004100750074006F004300
      6F006C005700690064007400680001004100750074006F0043006F006C005700
      6900640074006800010001000D000A006300640073005F00500072006F007000
      730053007500700070006C0069006500720043006F0064006500010053007500
      700070006C0069006500720043006F0064006500010001000D000A0063006400
      73005F00500072006F00700073004C0065006E006700740068004F0070007400
      69006F006E0001004C0065006E006700740068004F007000740069006F006E00
      010001000D000A006300640073005F00500072006F00700073004C0065006E00
      670074006800470072006F00750070004E006F0001004C0065006E0067007400
      6800470072006F00750070004E006F00010001000D000A006300640073005F00
      500072006F00700073004E00650077004900740065006D0052006F0077000100
      4E00650077004900740065006D0052006F007700010001000D000A0063006400
      73005F00500072006F0070007300530061006C00650073005200650067006900
      6F006E004E006F000100530061006C006500730052006500670069006F006E00
      4E006F00010001000D000A006300640073005F00500072006F00700073004D00
      610072006B006500740052006500670069006F006E004E006F0001004D006100
      72006B006500740052006500670069006F006E004E006F00010001000D000A00
      6300640073005F00500072006F00700073004F00720064006500720054007900
      700065004E006F0001004F00720064006500720054007900700065004E006F00
      010001000D000A006300640073005F00500072006F0070007300530074006100
      7400750073000100530074006100740075007300010001000D000A0063006400
      73005F00500072006F0070007300460069006C007400650072004F0072006400
      6500720044006100740065000100460069006C007400650072004F0072006400
      650072004400610074006500010001000D000A006300640073005F0050007200
      6F00700073005300740061007200740050006500720069006F00640001005300
      740061007200740050006500720069006F006400010001000D000A0063006400
      73005F00500072006F007000730045006E00640050006500720069006F006400
      010045006E00640050006500720069006F006400010001000D000A0063006400
      73005F00500072006F007000730043006C00690065006E0074004E006F000100
      43006C00690065006E0074004E006F00010001000D000A006300640073005F00
      500072006F0070007300530061006C006500730050006500720073006F006E00
      4E006F000100530061006C006500730050006500720073006F006E004E006F00
      010001000D000A006300640073005F00500072006F0070007300560065007200
      6B0053007500700070006C006900650072004E006F0001005600650072006B00
      53007500700070006C006900650072004E006F00010001000D000A0063006400
      73005F00500072006F00700073005600650072006B004B0075006E0064004E00
      6F0001005600650072006B004B0075006E0064004E006F00010001000D000A00
      6300640073005F00500072006F00700073004C004F004F0062006A0065006300
      7400540079007000650001004C004F004F0062006A0065006300740054007900
      70006500010001000D000A006300640073005F00500072006F00700073004200
      6100720043006F00640065004E006F00010042006100720043006F0064006500
      4E006F00010001000D000A006300640073005F00500072006F00700073004700
      72006100640065005300740061006D0070004E006F0001004700720061006400
      65005300740061006D0070004E006F00010001000D000A006300640073005F00
      500072006F007000730056006F006C0075006D00650055006E00690074004E00
      6F00010056006F006C0075006D00650055006E00690074004E006F0001000100
      0D000A006300640073005F00500072006F00700073004C0065006E0067007400
      680046006F0072006D00610074004E006F0001004C0065006E00670074006800
      46006F0072006D00610074004E006F00010001000D000A006300640073005F00
      500072006F00700073004C0065006E0067007400680056006F006C0055006E00
      690074004E006F0001004C0065006E0067007400680056006F006C0055006E00
      690074004E006F00010001000D000A006300640073005F00500072006F007000
      7300470072006F00750070004200790042006F0078000100470072006F007500
      70004200790042006F007800010001000D000A006300640073005F0050007200
      6F0070007300470072006F0075007000530075006D006D006100720079000100
      470072006F0075007000530075006D006D00610072007900010001000D000A00
      6300640073005F00500072006F00700073004100670065006E0074004E006F00
      01004100670065006E0074004E006F00010001000D000A006300640073005F00
      500072006F00700073004C006F006100640069006E0067004C006F0063006100
      740069006F006E004E006F0001004C006F006100640069006E0067004C006F00
      63006100740069006F006E004E006F00010001000D000A006300640073005F00
      500072006F007000730053006800690070007000650072004E006F0001005300
      6800690070007000650072004E006F00010001000D000A006300640073005F00
      500072006F007000730042006F006F006B0069006E0067005400790070006500
      4E006F00010042006F006F006B0069006E00670054007900700065004E006F00
      010001000D000A006300640073005F00500072006F0070007300430075007300
      74006F006D00650072004E006F00010043007500730074006F006D0065007200
      4E006F00010001000D000A006300640073005F00500072006F00700073005300
      68006F007700500072006F0064007500630074000100530068006F0077005000
      72006F006400750063007400010001000D000A006300640073005F0050007200
      6F00700073004D00610072006B006E006100640001004D00610072006B006E00
      61006400010001000D000A006300640073005F00500072006F00700073004B00
      75006E00640001004B0075006E006400010001000D000A006300640073005F00
      500072006F007000730053005200010053005200010001000D000A0063006400
      73005F00500072006F0070007300530061006C006A0067007200750070007000
      0100530061006C006A0067007200750070007000010001000D000A0063006400
      73005F00500072006F00700073005600650072006B0001005600650072006B00
      010001000D000A006300640073005F00500072006F0070007300530068006900
      700070006500720001005300680069007000700065007200010001000D000A00
      6300640073005F00500072006F007000730042006F006B006E0069006E006700
      7300740079007000010042006F006B006E0069006E0067007300740079007000
      010001000D000A006300640073005F00500072006F00700073004C0061007300
      74007300740061006C006C00650001004C006100730074007300740061006C00
      6C006500010001000D000A006300640073005F00500072006F00700073004100
      670065006E0074004E0061006D006E0001004100670065006E0074004E006100
      6D006E00010001000D000A006300640073005F006D0061006C006C0055007300
      65007200490044000100550073006500720049004400010001000D000A006300
      640073005F006D0061006C006C0046006F0072006D00010046006F0072006D00
      010001000D000A006300640073005F006D0061006C006C005600650072006B00
      4E006F0001005600650072006B004E006F00010001000D000A00630064007300
      5F006D0061006C006C004C004F004F0062006A00650063007400540079007000
      650001004C004F004F0062006A00650063007400540079007000650001000100
      0D000A006300640073005F00500072006F00700073004E0061006D0065000100
      4E0061006D0065000100010001000D000A006300640073005F006D0061006C00
      6C004E0061006D00650001004E0061006D0065000100010001000D000A007300
      740046006F006E00740073005F0055006E00690063006F00640065000D000A00
      5400660072006D0053006F006B004100760072006F00700046006F0072006D00
      75006C006100720001004D0053002000530061006E0073002000530065007200
      6900660001004D0053002000530061006E007300200053006500720069006600
      01005400610068006F006D0061000D000A00640078004200610072004D006100
      6E006100670065007200310001005300650067006F0065002000550049000100
      01005400610068006F006D0061000D000A00640078004200610072004D006100
      6E0061006700650072003100420061007200310001005300650067006F006500
      200055004900010001005400610068006F006D0061000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200320001005300
      650067006F006500200055004900010001005400610068006F006D0061000D00
      0A0070006D004100760072006F00700047007200640001005300650067006F00
      6500200055004900010001005400610068006F006D0061000D000A0064007800
      43006F006D0070006F006E0065006E0074005000720069006E00740065007200
      31004C0069006E006B0031000100540069006D006500730020004E0065007700
      200052006F006D0061006E00010001005400610068006F006D0061000D000A00
      630078005300740079006C006500310001005400610068006F006D0061000100
      01005400610068006F006D0061000D000A0070006D004D00610069006C006100
      01005300650067006F006500200055004900010001005400610068006F006D00
      61000D000A00730074004D0075006C00740069004C0069006E00650073005F00
      55006E00690063006F00640065000D000A00640078004200610072004D006100
      6E00610067006500720031002E00430061007400650067006F00720069006500
      73000100440065006600610075006C0074002C005000720069006E0074002C00
      4100760072006F007000470072006400010001000D000A006200630041007600
      72006F0070005300740061007400750073002E004900740065006D0073000100
      41004C004C002C00430041004E00430045004C002C00500052004F0047005200
      4500530053002C0043004F004D0050004C00450054004500010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A006C006300530052002E00
      500072006F0070006500720074006900650073002E004B006500790046006900
      65006C0064004E0061006D0065007300010043006C00690065006E0074004E00
      6F00010001000D000A006C006300530052002E00500072006F00700065007200
      74006900650073002E004C006900730074004600690065006C0064004E006100
      6D0065007300010043006C00690065006E0074004E0061006D00650001000100
      0D000A006C0063004C006100730074007300740061006C006C0065002E005000
      72006F0070006500720074006900650073002E004B0065007900460069006500
      6C0064004E0061006D0065007300010043006900740079004E006F0001000100
      0D000A006C0063004C006100730074007300740061006C006C0065002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D0065007300010043006900740079004E0061006D00
      6500010001000D000A006C0063005600650072006B002E00500072006F007000
      6500720074006900650073002E004B00650079004600690065006C0064004E00
      61006D0065007300010043006C00690065006E0074004E006F00010001000D00
      0A006C0063005600650072006B002E00500072006F0070006500720074006900
      650073002E004C006900730074004600690065006C0064004E0061006D006500
      7300010043006C00690065006E0074004E0061006D006500010001000D000A00
      6C00630042006F006B006E0069006E00670073007400790070002E0050007200
      6F0070006500720074006900650073002E004B00650079004600690065006C00
      64004E0061006D0065007300010042006F006F006B0069006E00670054007900
      700065004E006F00010001000D000A006C00630042006F006B006E0069006E00
      670073007400790070002E00500072006F007000650072007400690065007300
      2E004C006900730074004600690065006C0064004E0061006D00650073000100
      42006F006F006B0069006E0067005400790070006500010001000D000A006C00
      630053006800690070007000650072002E00500072006F007000650072007400
      6900650073002E004B00650079004600690065006C0064004E0061006D006500
      7300010043006C00690065006E0074004E006F00010001000D000A006C006300
      53006800690070007000650072002E00500072006F0070006500720074006900
      650073002E004C006900730074004600690065006C0064004E0061006D006500
      7300010043006C00690065006E0074004E0061006D006500010001000D000A00
      6C0063004B0075006E0064002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      43006C00690065006E0074004E006F00010001000D000A006C0063004B007500
      6E0064002E00500072006F0070006500720074006900650073002E004C006900
      730074004600690065006C0064004E0061006D0065007300010043006C006900
      65006E0074004E0061006D006500010001000D000A006C0063004D0061007200
      6B006E00610064002E00500072006F0070006500720074006900650073002E00
      4B00650079004600690065006C0064004E0061006D006500730001004D006100
      72006B006500740052006500670069006F006E004E006F00010001000D000A00
      6C0063004D00610072006B006E00610064002E00500072006F00700065007200
      74006900650073002E004C006900730074004600690065006C0064004E006100
      6D006500730001004D00610072006B006500740052006500670069006F006E00
      4E0061006D006500010001000D000A006C0063004100670065006E0074004E00
      61006D006E002E00500072006F0070006500720074006900650073002E004B00
      650079004600690065006C0064004E0061006D0065007300010043006C006900
      65006E0074004E006F00010001000D000A006C0063004100670065006E007400
      4E0061006D006E002E00500072006F0070006500720074006900650073002E00
      4C006900730074004600690065006C0064004E0061006D006500730001004300
      6C00690065006E0074004E0061006D006500010001000D000A00630062005300
      68006F007700500072006F0064007500630074002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B006500640001005400720075006500010001000D000A00630062005300
      68006F007700500072006F0064007500630074002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      63006200460069006C0074006500720049006E0076006F006900630065004400
      6100740065002E00500072006F0070006500720074006900650073002E004400
      6900730070006C006100790043006800650063006B0065006400010054007200
      75006500010001000D000A0063006200460069006C0074006500720049006E00
      76006F0069006300650044006100740065002E00500072006F00700065007200
      74006900650073002E0044006900730070006C006100790055006E0063006800
      650063006B00650064000100460061006C0073006500010001000D000A006300
      6200460069006C007400650072005F004500540044002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B006500640001005400720075006500010001000D000A0063006200
      460069006C007400650072005F004500540044002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      6700720064004100760072006F00700053006F006B0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100410056005200
      4F0050005F005300540041005400550053002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004100760072006F00700053006F006B004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C004F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004100760072006F00700053006F006B0044004200420061006E0064006500
      64005400610062006C006500560069006500770031004C004F00410044004900
      4E0047005F004C004F0043004100540049004F004E002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004100760072006F00700053006F00
      6B0044004200420061006E006400650064005400610062006C00650056006900
      65007700310053005500500050004C004900450052002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004100760072006F00700053006F00
      6B0044004200420061006E006400650064005400610062006C00650056006900
      6500770031004F0052004400450052005F004E004F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004100760072006F00700053006F00
      6B0044004200420061006E006400650064005400610062006C00650056006900
      65007700310043005500530054005F005200450046004500520045004E004300
      45002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C00650056006900650077003100460052004F004D005F0057004500
      45004B002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310054004F005F00570045004500
      4B002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C0065005600690065007700310043005500530054004F004D004500
      52002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C006500560069006500770031004100470045004E0054002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      650056006900650077003100440045004C00490056004500520059005F005400
      450052004D002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64004100760072006F00700053006F006B0044004200420061006E0064006500
      64005400610062006C0065005600690065007700310050004F00530054004100
      4C005F0043004F00440045005F00440045005300540049004E00410054004900
      4F004E002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530048004900500054004F00
      5F005200450046004500520045004E00430045002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064004100760072006F00700053006F006B00
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005000720065006C0069006D0069006E00610072007900520065007100
      75006500730074006500640050006500720069006F0064002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      010054006300780054006500780074004500640069007400500072006F007000
      650072007400690065007300010001000D000A00670072006400410076007200
      6F00700053006F006B0044004200420061006E00640065006400540061006200
      6C0065005600690065007700310053004800490050005000450052002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      6500560069006500770031005300480049005000500049004E00470043004F00
      4D00500041004E00590042004F004F004B0049004E004700490044002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F007000650072007400690065007300010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C006500560069006500770031005300480049005000500045005200
      5300530048004900500044004100540045002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      780044006100740065004500640069007400500072006F007000650072007400
      690065007300010001000D000A006700720064004100760072006F0070005300
      6F006B0044004200420061006E006400650064005400610062006C0065005600
      69006500770031005400520041004E00530050004F00520054002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004100760072006F007000
      53006F006B0044004200420061006E006400650064005400610062006C006500
      560069006500770031004D00410052004B00450054005F005200450047004900
      4F004E002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C0065005600690065007700310055004B00450059002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004100760072006F00
      700053006F006B0044004200420061006E006400650064005400610062006C00
      65005600690065007700310042006F006F006B0069006E0067004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00670072006400410076007200
      6F00700053006F006B0044004200420061006E00640065006400540061006200
      6C00650056006900650077003100500041004E00490043005F004E004F005400
      45002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078005400650078007400450064006900
      7400500072006F007000650072007400690065007300010001000D000A006700
      720064004100760072006F00700053006F006B0044004200420061006E006400
      650064005400610062006C006500560069006500770031005600450053005300
      45004C002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4100760072006F00700053006F006B0044004200420061006E00640065006400
      5400610062006C006500560069006500770031004500540044002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004100760072006F007000
      53006F006B0044004200420061006E006400650064005400610062006C006500
      560069006500770031004500540041002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064004100760072006F00700053006F006B0044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      41004D0033002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D0065000100540063007800430061006C0063004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A006700720064004100760072006F00700053006F006B004400420042006100
      6E006400650064005400610062006C006500560069006500770031004C004500
      56004C004F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D0065000100540063007800430061006C0063004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A006700720064004100760072006F00700053006F006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310052004500
      530054002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D0065000100540063007800430061006C00630045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      6700720064004100760072006F00700053006F006B0044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530075007000
      70006C006900650072005200650066006500720065006E00630065002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078005400650078007400450064006900740050007200
      6F007000650072007400690065007300010001000D000A006700720064004100
      760072006F00700053006F006B0044004200420061006E006400650064005400
      610062006C006500560069006500770031004E006F004F006600530075007000
      70006C0069006500720073002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A006700720064004100760072006F00700053006F006B004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050005200
      4F0044005F0044004500530043002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A006700720064004100760072006F00700053006F006B00440042004200
      61006E006400650064005400610062006C006500560069006500770031004C00
      45004E004700540048005F0044004500530043002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A00640078004200610072004D0061006E00610067006500
      7200310042006100720031002E004F006C0064004E0061006D00650001004300
      7500730074006F006D0020003100010001000D000A0062006300410076007200
      6F0070005300740061007400750073002E005400650078007400010041004C00
      4C00010001000D000A006400780043006F006D0070006F006E0065006E007400
      5000720069006E0074006500720031004C0069006E006B0031002E0044006500
      7300690067006E0065007200430061007000740069006F006E00010046006F00
      72006D006100740020005200650070006F0072007400010001000D000A006300
      640073005F00500072006F00700073002E0043006F006E006E00650063007400
      69006F006E004E0061006D0065000100560049005300010001000D000A006300
      640073005F00500072006F00700073005500730065007200490044002E004F00
      72006900670069006E000100550073006500720049004400010001000D000A00
      6300640073005F00500072006F007000730046006F0072006D002E004F007200
      6900670069006E00010046006F0072006D00010001000D000A00630064007300
      5F00500072006F00700073004E0061006D0065002E004F007200690067006900
      6E0001004E0061006D006500010001000D000A006300640073005F0050007200
      6F00700073005600650072006B004E006F002E004F0072006900670069006E00
      01005600650072006B004E006F00010001000D000A006300640073005F005000
      72006F00700073004F0077006E00650072004E006F002E004F00720069006700
      69006E0001004F0077006E00650072004E006F00010001000D000A0063006400
      73005F00500072006F00700073005000490050004E006F002E004F0072006900
      670069006E0001005000490050004E006F00010001000D000A00630064007300
      5F00500072006F00700073004C00490050004E006F002E004F00720069006700
      69006E0001004C00490050004E006F00010001000D000A006300640073005F00
      500072006F007000730049006E007000750074004F007000740069006F006E00
      2E004F0072006900670069006E00010049006E007000750074004F0070007400
      69006F006E00010001000D000A006300640073005F00500072006F0070007300
      52006500670050006F0069006E0074004E006F002E004F007200690067006900
      6E00010052006500670050006F0069006E0074004E006F00010001000D000A00
      6300640073005F00500072006F00700073005200650067004400610074006500
      2E004F0072006900670069006E00010052006500670044006100740065000100
      01000D000A006300640073005F00500072006F007000730043006F0070007900
      5000630073002E004F0072006900670069006E00010043006F00700079005000
      63007300010001000D000A006300640073005F00500072006F00700073005200
      75006E004E006F002E004F0072006900670069006E000100520075006E004E00
      6F00010001000D000A006300640073005F00500072006F007000730050007200
      6F00640075006300650072004E006F002E004F0072006900670069006E000100
      500072006F00640075006300650072004E006F00010001000D000A0063006400
      73005F00500072006F00700073004100750074006F0043006F006C0057006900
      6400740068002E004F0072006900670069006E0001004100750074006F004300
      6F006C0057006900640074006800010001000D000A006300640073005F005000
      72006F007000730053007500700070006C0069006500720043006F0064006500
      2E004F0072006900670069006E00010053007500700070006C00690065007200
      43006F0064006500010001000D000A006300640073005F00500072006F007000
      73004C0065006E006700740068004F007000740069006F006E002E004F007200
      6900670069006E0001004C0065006E006700740068004F007000740069006F00
      6E00010001000D000A006300640073005F00500072006F00700073004C006500
      6E00670074006800470072006F00750070004E006F002E004F00720069006700
      69006E0001004C0065006E00670074006800470072006F00750070004E006F00
      010001000D000A006300640073005F00500072006F00700073004E0065007700
      4900740065006D0052006F0077002E004F0072006900670069006E0001004E00
      650077004900740065006D0052006F007700010001000D000A00630064007300
      5F00500072006F0070007300530061006C006500730052006500670069006F00
      6E004E006F002E004F0072006900670069006E000100530061006C0065007300
      52006500670069006F006E004E006F00010001000D000A006300640073005F00
      500072006F00700073004D00610072006B006500740052006500670069006F00
      6E004E006F002E004F0072006900670069006E0001004D00610072006B006500
      740052006500670069006F006E004E006F00010001000D000A00630064007300
      5F00500072006F00700073004F00720064006500720054007900700065004E00
      6F002E004F0072006900670069006E0001004F00720064006500720054007900
      700065004E006F00010001000D000A006300640073005F00500072006F007000
      73005300740061007400750073002E004F0072006900670069006E0001005300
      74006100740075007300010001000D000A006300640073005F00500072006F00
      70007300460069006C007400650072004F007200640065007200440061007400
      65002E004F0072006900670069006E000100460069006C007400650072004F00
      72006400650072004400610074006500010001000D000A006300640073005F00
      500072006F00700073005300740061007200740050006500720069006F006400
      2E004F0072006900670069006E00010053007400610072007400500065007200
      69006F006400010001000D000A006300640073005F00500072006F0070007300
      45006E00640050006500720069006F0064002E004F0072006900670069006E00
      010045006E00640050006500720069006F006400010001000D000A0063006400
      73005F00500072006F007000730043006C00690065006E0074004E006F002E00
      4F0072006900670069006E00010043006C00690065006E0074004E006F000100
      01000D000A006300640073005F00500072006F0070007300530061006C006500
      730050006500720073006F006E004E006F002E004F0072006900670069006E00
      0100530061006C006500730050006500720073006F006E004E006F0001000100
      0D000A006300640073005F00500072006F00700073005600650072006B005300
      7500700070006C006900650072004E006F002E004F0072006900670069006E00
      01005600650072006B0053007500700070006C006900650072004E006F000100
      01000D000A006300640073005F00500072006F00700073005600650072006B00
      4B0075006E0064004E006F002E004F0072006900670069006E00010056006500
      72006B004B0075006E0064004E006F00010001000D000A006300640073005F00
      500072006F00700073004C004F004F0062006A00650063007400540079007000
      65002E004F0072006900670069006E0001004C004F004F0062006A0065006300
      74005400790070006500010001000D000A006300640073005F00500072006F00
      7000730042006100720043006F00640065004E006F002E004F00720069006700
      69006E00010042006100720043006F00640065004E006F00010001000D000A00
      6300640073005F00500072006F00700073004700720061006400650053007400
      61006D0070004E006F002E004F0072006900670069006E000100470072006100
      640065005300740061006D0070004E006F00010001000D000A00630064007300
      5F00500072006F007000730056006F006C0075006D00650055006E0069007400
      4E006F002E004F0072006900670069006E00010056006F006C0075006D006500
      55006E00690074004E006F00010001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680046006F0072006D00610074004E00
      6F002E004F0072006900670069006E0001004C0065006E006700740068004600
      6F0072006D00610074004E006F00010001000D000A006300640073005F005000
      72006F00700073004C0065006E0067007400680056006F006C0055006E006900
      74004E006F002E004F0072006900670069006E0001004C0065006E0067007400
      680056006F006C0055006E00690074004E006F00010001000D000A0063006400
      73005F00500072006F0070007300470072006F00750070004200790042006F00
      78002E004F0072006900670069006E000100470072006F007500700042007900
      42006F007800010001000D000A006300640073005F00500072006F0070007300
      470072006F0075007000530075006D006D006100720079002E004F0072006900
      670069006E000100470072006F0075007000530075006D006D00610072007900
      010001000D000A006300640073005F00500072006F0070007300410067006500
      6E0074004E006F002E004F0072006900670069006E0001004100670065006E00
      74004E006F00010001000D000A006300640073005F00500072006F0070007300
      4C006F006100640069006E0067004C006F0063006100740069006F006E004E00
      6F002E004F0072006900670069006E0001004C006F006100640069006E006700
      4C006F0063006100740069006F006E004E006F00010001000D000A0063006400
      73005F00500072006F007000730053006800690070007000650072004E006F00
      2E004F0072006900670069006E00010053006800690070007000650072004E00
      6F00010001000D000A006300640073005F00500072006F007000730042006F00
      6F006B0069006E00670054007900700065004E006F002E004F00720069006700
      69006E00010042006F006F006B0069006E00670054007900700065004E006F00
      010001000D000A006300640073005F00500072006F0070007300430075007300
      74006F006D00650072004E006F002E004F0072006900670069006E0001004300
      7500730074006F006D00650072004E006F00010001000D000A00630064007300
      5F00500072006F0070007300530068006F007700500072006F00640075006300
      74002E004F0072006900670069006E000100530068006F007700500072006F00
      6400750063007400010001000D000A006300640073005F006D0061006C006C00
      2E0043006F006E006E0065006300740069006F006E004E0061006D0065000100
      560049005300010001000D000A006300640073005F006D0061006C006C005500
      730065007200490044002E004F0072006900670069006E000100550073006500
      720049004400010001000D000A006300640073005F006D0061006C006C004600
      6F0072006D002E004F0072006900670069006E00010046006F0072006D000100
      01000D000A006300640073005F006D0061006C006C004E0061006D0065002E00
      4F0072006900670069006E0001004E0061006D006500010001000D000A006300
      640073005F006D0061006C006C005600650072006B004E006F002E004F007200
      6900670069006E0001005600650072006B004E006F00010001000D000A006300
      640073005F006D0061006C006C004C004F004F0062006A006500630074005400
      7900700065002E004F0072006900670069006E0001004C004F004F0062006A00
      6500630074005400790070006500010001000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A006C006300530052002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010043006C00690065006E0074004E00
      61006D006500010001000D000A006C0063004C00610073007400730074006100
      6C006C0065002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010043006900740079004E0061006D00650001000100
      0D000A006C0063005600650072006B002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006C00690065006E00
      74004E0061006D006500010001000D000A006C00630042006F006B006E006900
      6E00670073007400790070002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010042006F006F006B0069006E006700
      5400790070006500010001000D000A006C006300530068006900700070006500
      72002E00500072006F0070006500720074006900650073002E004C0069007300
      740043006F006C0075006D006E0073005B0030005D002E004300610070007400
      69006F006E00010043006C00690065006E0074004E0061006D00650001000100
      0D000A006C0063004B0075006E0064002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006C00690065006E00
      74004E0061006D006500010001000D000A006C0063004D00610072006B006E00
      610064002E00500072006F0070006500720074006900650073002E004C006900
      7300740043006F006C0075006D006E0073005B0030005D002E00430061007000
      740069006F006E0001004D00610072006B006500740052006500670069006F00
      6E004E0061006D006500010001000D000A006C0063004100670065006E007400
      4E0061006D006E002E00500072006F0070006500720074006900650073002E00
      4C0069007300740043006F006C0075006D006E0073005B0030005D002E004300
      61007000740069006F006E00010043006C00690065006E0074004E0061006D00
      6500010001000D000A00690063004F0072006400650072005400790070006500
      4E006F002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0030005D002E00440065007300630072006900700074006900
      6F006E0001004600F60072007300E4006C006A006E0069006E00670001000100
      0D000A00690063004F00720064006500720054007900700065004E006F002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0031005D002E004400650073006300720069007000740069006F006E000100
      49006E006B00F6007000010001000D000A00690063004100760072006F007000
      5300740061007400750073002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0030005D002E0044006500730063007200
      69007000740069006F006E00010041006C006C006100010001000D000A006900
      63004100760072006F0070005300740061007400750073002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0031005D00
      2E004400650073006300720069007000740069006F006E00010041006E006E00
      75006C0065007200610064006500010001000D000A0069006300410076007200
      6F0070005300740061007400750073002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0032005D002E00440065007300
      6300720069007000740069006F006E00010041006B0074006900760061000100
      01000D000A00690063004100760072006F007000530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0033005D002E004400650073006300720069007000740069006F006E00
      01004100760073006C0075007400610064006500010001000D000A0067007200
      64004100760072006F00700053006F006B0044004200420061006E0064006500
      64005400610062006C006500560069006500770031002E00420061006E006400
      73005B0030005D002E00430061007000740069006F006E000100460049005800
      45004400010001000D000A006700720064004100760072006F00700053006F00
      6B0044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0031005D002E00430061007000
      740069006F006E0001004F005400480045005200010001000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A005400660072006D0053006F006B004100760072006F00700046006F00
      72006D0075006C00610072000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00640078004200610072004D0061006E00
      610067006500720031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00640078004200610072004D0061006E006100
      670065007200310042006100720031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00640078004200610072004D00
      61006E0061006700650072003100420061007200320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A0070006D004100
      760072006F0070004700720064000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A006400780043006F006D0070006F00
      6E0065006E0074005000720069006E0074006500720031004C0069006E006B00
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00630078005300740079006C006500310001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A0070006D004D00
      610069006C0061000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00}
  end
end
