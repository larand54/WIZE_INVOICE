object frmSkapaAvrakning: TfrmSkapaAvrakning
  Left = 229
  Top = 153
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Skapa avr'#228'kning'
  ClientHeight = 763
  ClientWidth = 1250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 120
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1250
    Height = 74
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 336
      Height = 74
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      TabOrder = 0
      object Label2: TLabel
        Left = 20
        Top = 14
        Width = 39
        Height = 16
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'VERK:'
      end
      object lcVerk: TcxDBLookupComboBox
        Left = 69
        Top = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'Verk'
        DataBinding.DataSource = ds_Props
        Properties.ClearKey = 46
        Properties.ImmediatePost = True
        Properties.ListColumns = <>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 0
        Width = 247
      end
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 69
        Top = 39
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataBinding.DataField = 'Status'
        DataBinding.DataSource = ds_Props
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'Utlaster med moms'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Utlaster utan moms'
            Value = 1
          end
          item
            Description = 'Inlaster K'#246'p'
            Value = 2
          end
          item
            Description = 'Interna mellan BTH och BTB'
            Value = 3
          end
          item
            Description = 'Alla utlaster som saknar pris'
            Value = 4
          end
          item
            Description = 'Alla inlaster som saknar pris'
            Value = 5
          end>
        TabOrder = 1
        Width = 247
      end
    end
    object Panel4: TPanel
      Left = 336
      Top = 0
      Width = 834
      Height = 74
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 1
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 832
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel5: TPanel
      Left = 1170
      Top = 0
      Width = 80
      Height = 74
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alRight
      TabOrder = 2
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 78
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
  object Panel6: TPanel
    Left = 0
    Top = 565
    Width = 1250
    Height = 198
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 2
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1248
      Height = 27
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Lastrader'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        1248
        27)
      object bbSavePrice: TBitBtn
        Left = 945
        Top = 2
        Width = 134
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acSavePrices
        Anchors = [akTop, akRight]
        Caption = 'Spara pris Shift+F3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object bbCancelPrice: TBitBtn
        Left = 1083
        Top = 2
        Width = 160
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = acCancelChangePrice
        Anchors = [akTop, akRight]
        Caption = #197'ngra Shift+F4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object grdLoadRows: TcxGrid
      Left = 1
      Top = 28
      Width = 1248
      Height = 169
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 1
      object grdLoadRowsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dm_Avrakning.dsrcArrivingPackages
        DataController.KeyFieldNames = 'LOAD_DETAILNO;PTDProductLengthNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skSum
            FieldName = 'PCS'
            Column = grdLoadRowsDBTableView1PCS
          end
          item
            Format = '#,###,###.00'
            Kind = skSum
            FieldName = 'M3_NET'
            Column = grdLoadRowsDBTableView1M3_NET
          end
          item
            Format = '#,###,###.00'
            Kind = skSum
            FieldName = 'M3_NOM'
            Column = grdLoadRowsDBTableView1M3_NOM
          end
          item
            Format = '#,###,###.00'
            Kind = skSum
            FieldName = 'SubSum'
            Column = grdLoadRowsDBTableView1VALUE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = grdLoadRowsDBTableView1StylesGetContentStyle
        object grdLoadRowsDBTableView1LO: TcxGridDBColumn
          DataBinding.FieldName = 'LO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 51
        end
        object grdLoadRowsDBTableView1END_CUSTOMER: TcxGridDBColumn
          DataBinding.FieldName = 'END_CUSTOMER'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 130
        end
        object grdLoadRowsDBTableView1PACKAGE_NO: TcxGridDBColumn
          DataBinding.FieldName = 'PACKAGE_NO'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 50
        end
        object grdLoadRowsDBTableView1LOADNO: TcxGridDBColumn
          DataBinding.FieldName = 'LSPLOADNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
          Width = 35
        end
        object grdLoadRowsDBTableView1SUPPLIERCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SUPPLIERCODE'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 58
        end
        object grdLoadRowsDBTableView1PRODUCT_DESCRIPTION: TcxGridDBColumn
          DataBinding.FieldName = 'PRODUCT_DESCRIPTION'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 250
        end
        object grdLoadRowsDBTableView1NLMM: TcxGridDBColumn
          DataBinding.FieldName = 'NLMM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
        end
        object grdLoadRowsDBTableView1ALMM: TcxGridDBColumn
          DataBinding.FieldName = 'ALMM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
        end
        object grdLoadRowsDBTableView1PCS: TcxGridDBColumn
          DataBinding.FieldName = 'PCS'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 52
        end
        object grdLoadRowsDBTableView1M3_NET: TcxGridDBColumn
          DataBinding.FieldName = 'M3_NET'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 67
        end
        object grdLoadRowsDBTableView1M3_NOM: TcxGridDBColumn
          DataBinding.FieldName = 'M3_NOM'
          PropertiesClassName = 'TcxLabelProperties'
          Options.Filtering = False
          Width = 61
        end
        object grdLoadRowsDBTableView1PACKAGEOK: TcxGridDBColumn
          DataBinding.FieldName = 'PACKAGEOK'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
        end
        object grdLoadRowsDBTableView1PACKAGE_LOG: TcxGridDBColumn
          DataBinding.FieldName = 'PACKAGE_LOG'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
        end
        object grdLoadRowsDBTableView1LOAD_DETAILNO: TcxGridDBColumn
          DataBinding.FieldName = 'LOAD_DETAILNO'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
        end
        object grdLoadRowsDBTableView1PRICE: TcxGridDBColumn
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Options.Filtering = False
          Width = 101
        end
        object grdLoadRowsDBTableView1VALUE: TcxGridDBColumn
          DataBinding.FieldName = 'SubSum'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Options.Filtering = False
          Width = 92
        end
        object grdLoadRowsDBTableView1NOM_LINEAL_METER: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_LINEAL_METER'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Options.Filtering = False
        end
        object grdLoadRowsDBTableView1OldPrice: TcxGridDBColumn
          DataBinding.FieldName = 'OldPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Options.Filtering = False
          VisibleForCustomization = False
        end
      end
      object grdLoadRowsLevel1: TcxGridLevel
        GridView = grdLoadRowsDBTableView1
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 557
    Width = 1250
    Height = 8
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = Panel6
    ExplicitWidth = 8
  end
  object Panel7: TPanel
    Left = 0
    Top = 74
    Width = 1250
    Height = 483
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 7
    object grdLoads: TcxGrid
      Left = 1
      Top = 23
      Width = 1248
      Height = 459
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      TabOrder = 0
      object grdLoadsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dm_Avrakning.dsrcArrivingLoads
        DataController.KeyFieldNames = 'VIS_FS'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#####'
            Kind = skCount
            FieldName = 'VIS_FS'
            Column = grdLoadsDBTableView1VIS_FS
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = grdLoadsDBTableView1StylesGetContentStyle
        object grdLoadsDBTableView1INITIALS: TcxGridDBColumn
          DataBinding.FieldName = 'INITIALS'
          Width = 84
        end
        object grdLoadsDBTableView1VIS_FS: TcxGridDBColumn
          DataBinding.FieldName = 'VIS_FS'
          Width = 90
        end
        object grdLoadsDBTableView1MILL_FS: TcxGridDBColumn
          DataBinding.FieldName = 'MILL_FS'
          Width = 96
        end
        object grdLoadsDBTableView1LOAD_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'LOAD_DATE'
          Width = 130
        end
        object grdLoadsDBTableView1SUPPCODE: TcxGridDBColumn
          DataBinding.FieldName = 'SUPPCODE'
          Width = 162
        end
        object grdLoadsDBTableView1INT_CUSTOMER: TcxGridDBColumn
          DataBinding.FieldName = 'INT_CUSTOMER'
          Width = 150
        end
        object grdLoadsDBTableView1CUSTOMERNO: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMERNO'
          Visible = False
          Width = 272
        end
        object grdLoadsDBTableView1SKATTE_UPPLAG: TcxGridDBColumn
          DataBinding.FieldName = 'SKATTE_UPPLAG'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 87
        end
        object grdLoadsDBTableView1SUPPLIER_NO: TcxGridDBColumn
          DataBinding.FieldName = 'SUPPLIER_NO'
          Visible = False
        end
        object grdLoadsDBTableView1INVPOINTNAME: TcxGridDBColumn
          DataBinding.FieldName = 'INVPOINTNAME'
          Width = 129
        end
        object grdLoadsDBTableView1PRISOK: TcxGridDBColumn
          DataBinding.FieldName = 'PRISOK'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object grdLoadsDBTableView1Krediterad: TcxGridDBColumn
          DataBinding.FieldName = 'Krediterad'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = -1
          Properties.ValueUnchecked = 1
        end
      end
      object grdLoadsLevel1: TcxGridLevel
        GridView = grdLoadsDBTableView1
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 1248
      Height = 22
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Laster att avr'#228'kna'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 160
    Top = 96
    object OpenLoad1: TMenuItem
      Action = acCancelChangePrice
    end
    object Bytkund1: TMenuItem
      Action = acChangeCustomer
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object GodknnlasterF31: TMenuItem
      Action = acConfirmLoads
    end
    object Skapaavrkning1: TMenuItem
      Action = acCreatePayments
    end
    object UppdaterapriserShiftF61: TMenuItem
      Action = acGetIntPrices
    end
    object ppnalast1: TMenuItem
      Action = acOpenLoad
    end
    object Skrivut1: TMenuItem
      Action = acPrintAvrakning
    end
    object UppdateraF61: TMenuItem
      Action = acRefresh
    end
    object abortlast1: TMenuItem
      Action = acRemoveLoad
    end
    object SparaprisShiftF31: TMenuItem
      Action = acSavePrices
    end
  end
  object pmLoadDetails: TPopupMenu
    Left = 208
    Top = 520
    object miPackageInfo: TMenuItem
      Caption = 'Package info'
      OnClick = miPackageInfoClick
    end
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 480
    Top = 280
    object acCreatePayments: TAction
      Caption = 'Skapa avr'#228'kning'
      ImageIndex = 14
      OnUpdate = acCreatePaymentsUpdate
    end
    object acChangeCustomer: TAction
      Caption = 'Byt kund'
      ImageIndex = 20
      OnExecute = acChangeCustomerExecute
      OnUpdate = acChangeCustomerUpdate
    end
    object acOpenLoad: TAction
      Caption = #214'ppna last'
      ImageIndex = 2
      OnExecute = acOpenLoadExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acRefresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 19
      ShortCut = 117
      OnExecute = acRefreshExecute
    end
    object acRemoveLoad: TAction
      Caption = 'Ta bort last'
      ImageIndex = 11
      OnExecute = acRemoveLoadExecute
    end
    object acGetIntPrices: TAction
      Caption = 'Uppdatera priser Shift+F6'
      ImageIndex = 21
      ShortCut = 8309
      OnExecute = acGetIntPricesExecute
      OnUpdate = acGetIntPricesUpdate
    end
    object acSavePrices: TAction
      Caption = 'Spara pris Shift+F3'
      ShortCut = 8306
      OnExecute = acSavePricesExecute
      OnUpdate = acSavePricesUpdate
    end
    object acCancelChangePrice: TAction
      Caption = #197'ngra Shift+F4'
      ShortCut = 8307
      OnExecute = acCancelChangePriceExecute
      OnUpdate = acCancelChangePriceUpdate
    end
    object acConfirmLoads: TAction
      Caption = 'Godk'#228'nn laster F3'
      ImageIndex = 7
      ShortCut = 114
      OnExecute = acConfirmLoadsExecute
      OnUpdate = acConfirmLoadsUpdate
    end
    object acPrintAvrakning: TAction
      Caption = 'Skriv ut'
      ImageIndex = 5
      OnExecute = acPrintAvrakningExecute
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = imglistActions
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 417
    Top = 65
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
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
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
          ItemName = 'dxBarLargeButton6'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acRefresh
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acChangeCustomer
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acCreatePayments
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acOpenLoad
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acRemoveLoad
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acGetIntPrices
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acConfirmLoads
      Category = 0
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 480
    Top = 216
    Bitmap = {
      494C010116001900040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131005263
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B5A4A003929
      180029637B0052636B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B84
      630052734200319C3100319C3100319C3100319C3100319C3100D6D6D6008CB5
      C6008CF7FF002973F70021526B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073AD73001084
      100042CE420021A5210031A5310039AD390039AD390039AD3900107B10006BC6
      FF008CF7FF002973F7002973F70008426300736B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400085A940008426300084263000842630000314A0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000298C290042CE
      420031AD310042BD42004ABD4A0052C65200B5E7A500399C39008CBD7B00399C
      390010A5D60042E7F7002973F7002973F70021526B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400085A9400084263000842630000314A0084848400000000004ABD
      FF00D6FFFF00BDFFFF008CF7FF008CF7FF00299CEF00107BCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003994390029AD
      290039B539004ABD4A005AC65A009CDE8C0052B5520073B56B00D6E7BD004AA5
      4200B5E7A50010A5D60042E7F7002973F7002973F70018425A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004ABDFF00D6FFFF00BDFFFF008CF7FF00299CEF00107BCE00000000008484
      84004ABDFF004ABDFF004ABDFF004ABDFF004ABDFF0084848400084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CBD8C00299C
      29004ABD4A005AC65A006BCE6B00B5E7A50063A56300F7FFEF00F7FFEF0084BD
      7B00B5E7A50063CE630010A5D60042E7F7002973F7002973F70021526B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484004ABDFF004ABDFF004ABDFF004ABDFF0084848400000000000000
      0000000000000000000084A5FF0094E7FF00BDFFFF007BCEDE004AA5C6002984
      BD005A5ACE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000398C
      31004ABD4A0063CE6300B5E7A50052A54A00D6E7CE00FFFFFF00FFFFFF0084B5
      84009CDE8C0073CE73005AC65A0010A5D60042E7F7002973F7002973F7000842
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C94FF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6004A5ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000398C310052B552004A9C42009CB58C00BDC6C600BDC6C600E7DECE0094B5
      7B007BCE7B007BD67B0052B552004284390010A5D60042E7F7002973F7003139
      BD00313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000085A94000842630008426300084263000031
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A8C420018734A003984AD00217BBD00217BBD00428CAD004284
      630063BD6300399C3900528C4A00000000000000000010A5D60042A5DE008C84
      7B0084847B003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B9CEF008CCEEF00BDFFFF006BBDD600429CC6002184
      C6003963CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A849C00187BC600218CE700298CE700298CE700218CE700107B
      B500296B52000000000000000000000000000000000000000000846B5A00FFFF
      FF00F7EFE7007363520021214A00000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B000073B5D60094DEEF00BDFFFF006BBDD600429CC6002184
      C6001873AD00007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000217BBD002994EF002994F7003194FF003194FF00319CF7002994
      EF00216B9C000000000000000000000000000000000000000000000000009C94
      8C00E7CEB50029637B002973F7003139BD000000000000000000007B00000094
      000000940000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC6005AA5CE000842630008426300084263000031
      4A00009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000297BAD002994EF00399CFF00399CFF00399CFF00399CFF00399CFF00399C
      FF00298CE700106B9C0000000000000000000000000000000000000000000000
      00004A6B9C00299CEF002973F7003139BD000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC6006363
      630063636300636363007BBDD60073C6DE00BDFFFF006BC6D60042A5C6002184
      C60010849C000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002184C600399CFF0042A5FF0042A5FF0042A5FF0042A5FF0042A5FF0042A5
      FF00399CF700315A6B0000000000000000000000000000000000000000000000
      0000000000000010E7000010E700000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FF
      FF00C6C6C600C6FFFF008CCEEF009CE7FF00BDFFFF007BE7FF0052C6F70039A5
      E70021949C000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C00399CF70042A5FF004AADFF004AADFF006BBDFF006BBDFF004AADFF004AAD
      FF0042A5F700316B840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C6004ABDFF004ABDFF004ABDFF004ABDFF004ABD
      FF00C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006BA5
      C60042A5F7004AADFF004AB5FF006BBDFF0052B5FF006BBDFF0052B5FF006BBD
      FF004AADFF003973940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60063636300C6FFFF00C6FF
      FF00C6C6C600C6C6C600C6FFFF00C6FFFF0063636300C6FFC600C6FFC600C6FF
      C600C6FFC60000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005294
      BD0042A5EF0052B5FF006BC6FF006BC6FF006BC6FF0052B5F7004AB5EF0052B5
      F70052B5F70039738C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC60063636300C6C6
      C600C6C6C600C6C6C600C6C6C60063636300C6FFC600C6FFC600C6FFC600C6FF
      C600A5FFA50000C6000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063A5
      C600217BB500298CCE003194DE003194DE002184C600298CC600318CC6002984
      C6002994CE00106B9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      00000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FFC6006363
      6300636363006363630063636300C6FFC600C6FFC600C6FFC600C6FFC600A5FF
      A50000C600000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006384
      9C002173A500428CC6004A94C6006BADD6007BBDEF0063ADF7004A9CE700398C
      CE00216BA5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      0000009400000094000000C60000A5FFA500C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C6
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002173A500318CC6006BADD6008CBDE7008CBDE70073BDE7005AADDE003994
      C600106B9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B00000094
      000000940000009400000094000000C60000C6FFC600C6FFC600C6FFC600C6FF
      C600C6FFC600C6FFC600C6FFC600C6FFC600C6FFC600A5FFA50000C600000094
      0000009400000094000000940000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000428CB5004294C6006BADD6009CCEE7008CBDE7004294BD00106B
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B
      0000007B0000007B0000007B0000007B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BA5BD004A94B500529CBD004A8CAD0063849C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000008CCE8C00428C
      4200397B3900398439003984390039843900398439003984390039843900397B
      3900397B390039843900397B390039843900397B3900397B3900397B39008CCE
      8C0000000000000000000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      3900000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000004A9C4A004A9C
      4A004AA54A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AAD4A004AA5
      4A004AA54A004AA54A004AA54A004A9C4A00429C420042944200428C42003984
      3900000000000000000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD00000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD00000000000000000000000000000000000000000000000000429C420052B5
      52005AB55A0063BD630063BD630063BD630063BD630063BD630052B552005AB5
      5A005AB55A0052B5520052B5520052B552004AAD4A004A9C4A00429C4200397B
      3900000000000000000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A0052B5
      52005AB55A006BBD6B006BBD6B0073C673006BBD6B006BBD6B0063BD63005AB5
      5A005AB55A0052B5520052B5520052B552004AA54A004AAD4A00429C4200397B
      39000000000000000000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00ADDEFF0031A5FF00ADDEFF00ADDEFF00ADDEFF00ADDE
      FF00ADDEFF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C67300EFF7EF00EFF7EF00A5D6A50063BD630063BD
      63005AB55A0052B5520052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF0031A5FF0031A5FF00299CFF0084C6FF00219CFF001894
      FF001094FF00088CFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000004AA54A005AB5
      5A0063BD630073C6730073C6730073C673006BBD6B0063BD630063BD6300A5D6
      A500EFF7EF00EFF7EF0052B5520052B5520052B552004AAD4A004A9C4A00397B
      39000000000000000000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF00ADDEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADDEFF00088CFF00088CFF00008CFF000084F700007BE700005A
      FD0000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C67300EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      63005AB55A005AB55A0052B5520052B552004AAD4A0052B552004A9C4A003984
      39000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF0031A5FF0084C6FF00FFFFFF0084C6FF001894
      FF001094FF001094FF00088CFF00008CFF000084F700008CFF00007BE7000063
      BD0000000000000000000000000000000000000000000000000052B5520063BD
      630073C6730073C6730073C6730073C6730073C673006BBD6B00A5D6A500EFF7
      EF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004A9C4A003984
      39000000000000000000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF00FFFFFF00FFFFFF00FFFFFF00ADDEFF00219CFF001894
      FF00FFFFFF00FFFFFF00ADDEFF00008CFF000084F700008CFF00007BE7000063
      BD0000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B5520052B5520052B5520052B552004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF00FFFFFF0084C6
      FF001894FF001094FF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD0000000000000000000000000000000000000000000000000052B552006BBD
      6B0073C6730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B5520052B552004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF00FFFFFF00FFFFFF00ADDEFF0031A5FF00219CFF001894
      FF001894FF00FFFFFF00ADDEFF00008CFF00008CFF00008CFF000084EF000063
      BD0000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A5005AB55A0052B5520052B552004AAD4A0052B552004AA54A00428C
      42000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF00219CFF00FFFF
      FF0084C6FF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C60000000000000000000000000000000000000000000000000052B5520073C6
      730073C6730073C6730073C6730073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AAD4A0052B552004AA54A00428C
      42000000000000000000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF00FFFFFF00FFFFFF00FFFFFF00ADDEFF00219CFF00219C
      FF001894FF00ADDEFF00FFFFFF00008CFF000084F700088CFF000084F700006B
      C60000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B5520052B552005AB55A004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0084C6FF00FFFFFF0084C6FF0031A5FF0031A5FF00219CFF001894
      FF00FFFFFF0084C6FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD0000000000000000000000000000000000000000000000000063BD63007BC6
      7B0073C673007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A004AA54A003984
      39000000000000000000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADDEFF001894
      FF001094FF001094FF00088CFF0031A5FF00088CFF001094FF000084F7000063
      BD0000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF00A5D6A5005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0084C6FF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF00FFFFFF0084C6FF001094FF00088CFF00088CFF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730073C6
      73007BC67B007BC67B00A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF005AB55A005AB55A0052B5520052B5520052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0031A5FF00219CFF001894
      FF001894FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300EFF7EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7EF00A5D6A50052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF001094FF00FFFFFF0084C6FF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000006BBD6B0084CE
      84007BC67B007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B552004AA54A0052B5520052B55200428C
      4200000000000000000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0031A5FF0031A5FF0031A5FF0031A5FF0031A5FF00ADDEFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF000084F700088CFF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B00EFF7EF00FFFFFF00FFFFFF00FFFFFF00EFF7
      EF00A5D6A50052B5520052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00299CFF001894
      FF001094FF00088CFF00088CFF00FFFFFF0084C6FF001094FF00088CFF000063
      BD0000000000000000000000000000000000000000000000000073C6730084CE
      840084CE840084CE84007BC67B0073C67300A5D6A500EFF7EF00FFFFFF00FFFF
      FF00FFFFFF00EFF7EF0052B5520052B5520052B552005AB55A0052B552003984
      390000000000000000000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF00FFFFFF00ADDEFF0031A5FF0031A5FF00299CFF00ADDE
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF00088CFF001094FF00088CFF000063
      BD0000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE8400EFF7EF00FFFFFF00FFFFFF00EFF7EF00A5D6
      A50063BD63005AB55A0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF004AADFF0039A5FF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00088CFF001094FF00FFFFFF001094FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C673008CCE
      8C0094CE940084CE840084CE840073C6730073C67300A5D6A500EFF7EF00FFFF
      FF00FFFFFF00EFF7EF0052B552005AB55A0063BD63005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF00ADDEFF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF00ADDEFF00FFFFFF00FFFFFF001094FF001894FF001094FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE8400EFF7EF00FFFFFF00EFF7EF00A5D6A50063BD
      630063BD630063BD630063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00088CFF00088CFF001094FF00088CFF00006B
      CE0000000000000000000000000000000000000000000000000073C6730094CE
      940094CE94008CCE8C0084CE84007BC67B0073C6730073C67300A5D6A500EFF7
      EF00FFFFFF00EFF7EF0063BD630052B5520052B552005AB55A0052B55200428C
      420000000000000000000000000000000000000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00ADDEFF00FFFFFF00FFFFFF0031A5FF00299CFF00219C
      FF00FFFFFF00FFFFFF00FFFFFF00088CFF00088CFF001094FF00088CFF00006B
      CE000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C00EFF7EF00EFF7EF00A5D6A50073C6730073C6
      730073C673006BBD6B0073C6730063BD630063BD630063BD630052B55200428C
      420000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000007BC67B00A5D6
      A5009CD69C0094CE94008CCE8C0084CE840084CE84007BC67B0073C67300A5D6
      A500EFF7EF00EFF7EF0073C6730063BD630063BD630063BD630052B55200428C
      420000000000000000000000000000000000000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF00ADDEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ADDEFF00FFFFFF00219CFF00219CFF001894FF00008CFF00006B
      C60000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      39000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD0000000000000000000000000000000000000000000000000084CE8400ADDE
      FD00ADDEAD009CD69C0094CE940094CE94008CCE8C0084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C6730073C6730063BD630052B552003984
      39000000000000000000000000000000000000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF00ADDEFF00ADDEFF00ADDEFF00ADDE
      FF00ADDEFF0042ADFF00ADDEFF0031A5FF0031A5FF00219CFF00088CFF000063
      BD000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000008CCE8C00ADDE
      FD00ADDEAD009CD69C0094CE940084CE840084CE840084CE840084CE840084CE
      840084CE84007BC67B0073C6730073C673006BBD6B0063BD63004AAD4A004294
      42000000000000000000000000000000000000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF000000000000000000000000000000000000000000000000008CCE8C008CCE
      8C0084CE840073C6730073C6730073C673006BBD6B006BBD6B006BBD6B0073C6
      730063BD63005AB55A0063BD630063BD630052B5520052B552004AA54A008CCE
      8C000000000000000000000000000000000000000000000000005AB5FF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      84000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400C67B
      3100A56B2900B5733100B5733100B5733100B5733100B5733100B5733100AD6B
      2900AD6B2900B5733100AD6B2900B5733100AD6B2900A56B2900AD6B2900FFBD
      84000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      31000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000D6843100D684
      3100DE8C3100E78C3900E78C3900E78C3900E78C3900E78C3900E78C3900DE8C
      3100E78C3900DE8C3100DE8C3100D6843100CE843100C67B3100BD733100B573
      31000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      29000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000CE843100EF94
      3900EF9C4200F79C4A00F79C4A00F79C4A00F79C4A00F79C4A00EF944200EF9C
      4200EF9C4200EF944200EF943900EF943900E78C3900D6843100CE843100A56B
      29000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      29000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF008494EF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000DE8C3100EF94
      4200EF9C4200F7A55A00F7A55A00F7AD6300F7A55A00F7A55A00F7A55200EF9C
      4200EF9C4200EF944200EF944200EF943900DE8C3100E78C3900CE843100A56B
      29000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200FFCE9C00FFCE9C00F7AD6300F7A55A00F7A55200F7A55200F79C
      4A00FFCE9C00FFF7E700FFF7E700EF944200EF943900E78C3900D6843100A56B
      29000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7009CADEF00FFFFFF008494
      EF00295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000E78C3900EF9C
      4200F7A55200F7AD6300F7AD6300FFF7E700FFF7E700FFCE9C00F7A55200F79C
      4A00EF9C4200EF944200EF944200FFCE9C00FFCE9C00E78C3900D6843100A56B
      29000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF008494EF008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF008494EF001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300FFFFFF00FFCE9C00F7AD6300F7AD6300F7A55A00F7A55200FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF943900E78C3900EF943900D6843100B573
      31000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7009CADEF00FFFFFF008494
      EF002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5200F7AD6300F7AD6300F7AD6300FFF7E700FFFFFF00FFF7E700FFCE9C00F79C
      4A00EF9C4200EF9C4200EF944200FFCE9C00FFFFFF00EF943900D6843100B573
      3100000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00FFFFFF00FFCE9C00F7AD6300F7AD6300F7AD6300FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF943900EF943900EF943900DE8C3100B573
      3100000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000EF943900F7A5
      5A00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF943900DE8C3100B573
      3100000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D6D6FF008494EF00184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900E78C3900EF944200E78C3900BD73
      3100000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7009CADEF00FFFFFF008494
      EF00315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000EF944200F7AD
      6B00F7AD6B00F7AD6B00F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF9C4200EF944200FFCE9C00FFFFFF00EF944200E78C3900BD73
      31000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7005A6BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D6D6FF008494EF00184AEF00214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00FFFFFF00FFCE9C00F7AD6B00FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF943900EF944200EF9C4200E78C3900B573
      31000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE7009CADEF008494EF008494EF008494EF008494EF00FFFFFF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000F79C4A00F7B5
      7300F7AD6B00F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF9C4200E78C3900B573
      3100000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7005A73E7005A6BE7008494EF00E7E7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6D6FF008494EF00214AEF00214AE700214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300FFFFFF00FFCE9C00FFCE9C00FFF7E700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF9C4200EF944200EF944200EF943900BD73
      3100000000000000000000000000000000000000000000000000425AEF005273
      E7009CADEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000F7AD6300F7AD
      6B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7E700FFCE9C00FFCE9C00FFFFFF00EF944200EF943900BD73
      31000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7005273E7004A6BE7008494EF00E7E7FF00FFFFFF00FFFF
      FF00D6D6FF008494EF00214AE700214AE700184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300FFFFFF00FFCE9C00F7AD6300FFCE9C00FFF7E700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200E78C3900EF944200EF943900BD73
      31000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF00FFFFFF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000F7A55A00F7B5
      7300F7B57300F7B57300F7AD6B00FFF7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7E700FFCE9C00EF944200FFCE9C00FFFFFF00EF944200EF943900BD73
      31000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7008494EF00E7E7FF00D6D6
      FF008494EF002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300FFFFFF00FFCE9C00F7AD6B00F7AD6300FFCE9C00FFF7E700FFFF
      FF00FFFFFF00FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200B573
      31000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E7009CADEF00FFFFFF008494
      EF002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      7B00F7B57300F7B57300F7B57300FFF7E700FFFFFF00FFFFFF00FFFFFF00FFF7
      E700FFCE9C00EF944200EF944200FFCE9C00FFFFFF00EF9C4200EF944200B573
      31000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF008494EF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFFFFF00FFCE9C00F7AD6B00F7AD6300F7AD6B00FFCE9C00FFF7
      E700FFFFFF00FFFFFF00FFF7E700EF9C4200F79C4A00EF9C4200EF943900BD73
      31000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7009CADEF00FFFFFF008494
      EF003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD00000000000000000000000000000000000000000000000000F7AD6300FFBD
      8400FFC68C00FFBD7B00F7B57300FFF7E700FFFFFF00FFFFFF00FFF7E700FFCE
      9C00F79C4A00EF9C4200EF944200FFCE9C00FFFFFF00EF9C4200EF943900BD73
      3100000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFFFFF00FFCE9C00F7B57300F7AD6B00F7AD6300F7A55A00FFCE
      9C00FFF7E700FFFFFF00FFF7E700EF944200EF944200EF9C4200EF944200C67B
      3100000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7009CADEF00FFFFFF008494
      EF00395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD00000000000000000000000000000000000000000000000000F7AD6B00FFC6
      9400FFC68C00FFBD8400F7B57300FFF7E700FFFFFF00FFF7E700FFCE9C00F7A5
      5200F7A55200F79C4A00F79C4A00FFCE9C00FFFFFF00EF9C4200EF944200C67B
      31000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFCE9C00FFCE9C00FFBD7B00F7B57300F7B57300F7AD6B00F7AD
      6300FFCE9C00FFF7E700FFF7E700F7A55200F7A55200F79C4A00EF943900BD73
      31000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700FFFFFF004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      A500FFCE9C00FFC68C00FFBD8400FFF7E700FFF7E700FFCE9C00F7AD6B00F7AD
      6300F7AD6300F7A55A00F7AD6300FFCE9C00FFCE9C00F79C4A00EF943900BD73
      3100000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      3100000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000F7B57300FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFC68C00FFBD8400FFBD7B00F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7AD6300F7A55200EF944200B573
      31000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      31000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000FFBD8400FFD6
      FD00FFD6AD00FFCE9C00FFC68C00FFBD7B00FFBD7B00F7B57300F7B57300F7B5
      7300F7B57300F7B57300F7AD6B00F7AD6300F7A55A00F79C4A00E78C3900C67B
      31000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      84000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000FFBD8400FFBD
      8400F7B57300F7AD6B00F7AD6300F7AD6300F7A55A00F7A55A00F7A55A00F7AD
      6300F7A55200EF9C4200F79C4A00F79C4A00EF943900EF943900DE8C3100FFBD
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE6300000000000000000000000000000000000052ADFF00006B
      CE00005AAD000063BD000063BD000063BD000063BD000063BD000063BD000063
      B5000063B5000063BD000063B5000063BD000063B500005AAD000063B50052AD
      FF000000000000000000000000000000000000000000000000006B84EF001831
      B5000829A5001029AD001031AD001031AD001029AD001031AD001031AD000831
      FD000029B5000829B5000829AD000829B5000021B5000021AD000831AD006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000007BE700007B
      E7000084EF000084F7000084F7000084F7000084F7000084F7000084F7000084
      EF000084F7000084EF000084EF00007BE700007BDE000073D600006BC6000063
      BD000000000000000000000000000000000000000000000000001839CE001031
      D6001842D6002142D6002142D6002142D600214AD6002142D6002142D6001842
      D6001842DE001042DE001039DE000839DE000031DE000031D6000029C6001029
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000007BDE00008C
      FF001094FF001894FF001894FF001894FF001894FF001894FF00088CFF001094
      FF001094FF00088CFF00008CFF00008CFF000084F700007BE700007BDE00005A
      FD000000000000000000000000000000000000000000000000000831D6002142
      DE002952E7003152E7003152E7003152E7003152E7003152E7002952DE002952
      E7002152EF00184AEF00104AEF001042EF000839EF000031E7000029DE000018
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000000000000084EF00088C
      FF001094FF00299CFF00299CFF0031A5FF00299CFF00299CFF00219CFF001094
      FF001094FF00088CFF00088CFF00008CFF000084EF000084F700007BDE00005A
      FD000000000000000000000000000000000000000000000000001039DE00294A
      DE003152DE00395AEF00395AEF00425AEF00395AEF00395AEF00315AEF00295A
      E700295AE7002152E7001852EF00104AEF000842E7000839EF000031DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000000000000084EF001094
      FF00219CFF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF00219CFF001894
      FF001094FF00088CFF0084C6FF00FFFFFF00008CFF000084F700007BE700005A
      FD000000000000000000000000000000000000000000000000001839DE003152
      DE00395AE7004263EF004A63E7004A63E7004263E7003963E7003963E7003163
      E700295AE700215AE7002152E7001852EF00104AEF000842EF000831DE000021
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000000000000084EF00219C
      FF0031A5FF0031A5FF0031A5FF00FFFFFF0084C6FF00299CFF00219CFF001894
      FF001094FF0084C6FF00FFFFFF00008CFF000084F700008CFF00007BE7000063
      BD000000000000000000000000000000000000000000000000002142DE00395A
      E7004263EF004A63E7004A63E7004A63E7004A63E7004263E7003963E7003163
      E7002963E700295AE7002152E700184AE700104AE7001042EF000839DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000000000001894FF00299C
      FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF00219CFF001894
      FF0084C6FF00FFFFFF00088CFF00008CFF00008CFF00008CFF000084EF000063
      BD00000000000000000000000000000000000000000000000000214ADE003963
      EF00526BE700526BE700526BE7004A6BE7004A6BE7004A6BE7003963E7003163
      E700315AE7002952E7002152E700184AE700184AE700104AEF001042DE000829
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000000000001894FF0039A5
      FF0039A5FF0039A5FF0039A5FF0039A5FF0031A5FF00FFFFFF0084C6FF0084C6
      FF00FFFFFF001094FF00088CFF00008CFF000084F700088CFF000084F700006B
      C600000000000000000000000000000000000000000000000000294ADE004A63
      EF00526BE700526BE700526BE700526BE7004A6BE7004A63E7003963E700395A
      E700315AE7002952E7002152E700184AE700104AE700184AEF001842DE001031
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE630000000000000000000000000000000000001894FF0042AD
      FF0039A5FF0042ADFF0039A5FF0039A5FF0031A5FF0031A5FF00FFFFFF00FFFF
      FF001094FF001094FF00088CFF00008CFF00088CFF001094FF000084F7000063
      BD000000000000000000000000000000000000000000000000003152E700526B
      EF00526BE700526BE7008494EF008494EF008494EF008494EF008494EF008494
      EF008494EF008494EF008494EF008494EF00104AE700214AEF00184ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE6300000000000000000000000000000000000031A5FF0039A5
      FF0042ADFF0042ADFF0042ADFF0031A5FF0031A5FF0084C6FF00FFFFFF00FFFF
      FF0084C6FF001894FF001094FF001094FF00088CFF00088CFF00008CFF00006B
      C600000000000000000000000000000000000000000000000000425AEF005273
      E7005A73E7008494EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008494EF00214AE700214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE63000000000000000000000000000000000000299CFF004AAD
      FF0042ADFF0042ADFF0039A5FF0031A5FF0084C6FF00FFFFFF00299CFF001894
      FF00FFFFFF0084C6FF00088CFF00088CFF000084F700088CFF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004263E7006373
      E7005A73E7005A73E7009CADEF009CADEF009CADEF009CADEF009CADEF009CAD
      EF009CADEF009CADEF009CADEF009CADEF00184ADE00294ADE00214ADE001831
      FD00000000000000000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD00313131000000000000000000000000000000000031A5FF0052AD
      FF004AADFF004AADFF0042ADFF0084C6FF00FFFFFF0031A5FF00299CFF001894
      FF001094FF00FFFFFF0084C6FF00088CFF00088CFF001094FF00088CFF000063
      BD000000000000000000000000000000000000000000000000004A63E7006B7B
      E700637BE700637BE7005A73E700526BE7004A63E700425AEF00425AE7003152
      E7002952E7002952DE00214AE700214AE700214AE7002952E700294ADE001039
      FD000000000000000000000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B003131310000000000000000000000000031A5FF005AB5
      FF0063B5FF0052ADFF0084C6FF00FFFFFF0031A5FF0039A5FF00299CFF00219C
      FF001894FF001094FF00FFFFFF0084C6FF001894FF001094FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000004A63E7006B84
      EF007384EF00637BEF006373E700526BE7004A63E7004A63EF00425AE700395A
      E7003152E7003152DE002952DE00294AE7002952EF002952E700294AD6001839
      FD0000000000000000000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A00000000000000000039A5FF006BBD
      FF0063B5FF005AB5FF00FFFFFF0042ADFF0039A5FF0031A5FF00299CFF00219C
      FF00219CFF001894FF001894FF00FFFFFF00088CFF001094FF00088CFF00006B
      CE00000000000000000000000000000000000000000000000000526BE7007B8C
      EF00738CEF006B84EF00637BE7005A73E700526BE7004A63E7004263E700395A
      E700395AE7003152E7003152E7002952DE002952DE003152DE00294ADE002139
      FD000000000000000000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F700000000000000000042ADFF007BC6
      FF0073C6FF0063B5FF005AB5FF0052ADFF004AADFF0042ADFF0039A5FF0031A5
      FF0031A5FF00299CFF0031A5FF00219CFF00219CFF001894FF00008CFF00006B
      C6000000000000000000000000000000000000000000000000005A73E7008C9C
      EF00849CEF00738CEF006B84EF00637BEF006373E7005A73E700526BE7004A6B
      E7004A63E7004263E7004263EF00425ADE00395AE7003152E700294AD6001831
      FD0000000000000000000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F70000000000000000004AADFF008CCE
      FF008CCEFF0073C6FF0063B5FF0063B5FF005AB5FF0052ADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF0031A5FF00219CFF00088CFF000063
      BD00000000000000000000000000000000000000000000000000637BE7009CAD
      EF009CADEF008494EF00738CEF007384EF006B7BEF006B7BE700637BE700637B
      E7006373E7005A73E700526BE7004A6BE7004263EF003952E700294ADE001031
      FD00000000000000000000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      8400000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E70000000000000000005AB5FF0084C6
      FF008CCEFF0073C6FF0063B5FF0052ADFF0052ADFF004AADFF004AADFF004AAD
      FF004AADFF0042ADFF0039A5FF0031A5FF00299CFF001894FF000084F7000073
      D6000000000000000000000000000000000000000000000000006B84EF0094A5
      EF0094A5F7008494EF00738CEF006B84E7006B84E700637BE700637BE700637B
      E7006373E7005273EF005273E7004A6BE7003963EF00315AE7002142D6002139
      B500000000000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000ADDEFF005AB5
      FF004AADFF0039A5FF0031A5FF0031A5FF00299CFF00299CFF00299CFF0031A5
      FF00219CFF001094FF001894FF001894FF000084EF000084EF000084EF0052AD
      FF000000000000000000000000000000000000000000000000006B84EF006B84
      EF00637BE700526BE7004A6BE7004A63E700425AE7004263E700425AE700425A
      EF00395AE7003152DE003152E7003152E700214ADE002142DE00214ACE006B84
      EF00000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B59C9C00B59C9C00B59C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000007B7B7B000000
      00000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CEC6CE00ADADAD009C9C
      9C000000000000000000ADADAD00D6D6D600DED6D600BDBDBD00ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B59C9C008C736B00AD5252009C5A5A00B59C9C000000
      0000000000000000000000000000000000000000000000FFFF00000000007B7B
      7B007B7B7B0000FFFF0000FFFF007B7B7B007B7B7B007B7B7B0000FFFF000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00000000000000000000000000000000000000
      00000000000000000000ADADAD00C6C6C600F7F7F700F7F7F700BDBDBD00ADAD
      FD005A5A5A006363630084848400ADADAD00CEC6C600E7DEDE00E7E7E700D6D6
      D600B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B59C9C008C736B00AD5A5A00CE8C8400C6737B00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000ADADAD00BDB5B500E7E7E700FFFFFF00FFFFFF00EFEFEF00BDB5B500B5AD
      FD004A4A4A002121210031313100424242006363630084848400ADADAD00CECE
      CE00E7E7E700DEDEDE00ADA5A5000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B59C9C008C736B00B55A5A00D6949400C6737B0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B000000000000000000000000000000000000000000ADAD
      FD00DEDEDE00FFFFFF00FFF7F700F7F7F700FFF7F700EFEFEF00B5B5B500B5B5
      B5009C949C006B6B6B004A4A4A00313131002929290031313100424242006363
      63008C8C8C00A5A5A500000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B59C
      9C009C635A00BD6B6300D69C9C00C6737B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500CECECE00F7F7
      F700F7F7F700F7F7F700F7F7F700E7E7E700C6C6C600ADADAD009C9C9C00A5A5
      A500ADADAD00B5B5B500B5ADAD009C9C9C007B7B7B005A5A5A00393939002929
      290042424200A59C9C00000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B59C9C00AD5A
      5A00BD736B00DEADA500C6737B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500EFEFEF00F7F7
      F700EFEFEF00DEDEDE00BDBDBD00ADA5A500B5B5B500D6D6D600B5B5B500A5A5
      A500A59C9C009C9C9C00A59C9C00ADA5A500B5B5B500B5B5B500A5A5A5008484
      84006B6B6B00A59C9C0000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A58C8C00A55A5A00C67B
      7B00DEADA500C6737B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500E7E7E700DED6
      D600BDB5B500A5A5A500BDB5B500D6D6D600DEDEDE00E7E7E700E7E7E700D6D6
      D600C6C6C600BDB5B500ADADAD00A5A5A500A59C9C009C9C9C00A5A5A500ADAD
      FD00B5B5B500A5A5A50000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C736B00A55A5A00CE8C8400DEAD
      A500C6737B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00000000000000000000000000A5A5A500B5ADAD00A5A5
      A500BDBDBD00D6D6D600DEDEDE00D6D6D600D6D6D600EFE7E700F7F7F700F7F7
      F700EFEFEF00E7E7E700D6D6D600CECECE00BDBDBD00B5B5B500ADA5A500A5A5
      A500A59C9C009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6B6300AD5A5A00D6948C00D69C9400C673
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500BDBDBD00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6C6C600C6BD
      C600CECECE00DEDEDE00E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00C6C6
      C600BDBDBD00A5A5A50000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C4A4200B5636300D69C9400D69C9C00B57B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000FFFFFF007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF0000000000A5A5A500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00F7F7F700BDBDBD00ADB5AD0084C6
      8400B5B5B500ADADAD00ADADAD00BDBDBD00C6C6C600D6D6D600DEDEDE00DEDE
      DE00D6D6D600ADADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A55A5A00BD6B6B00D6A59C00BD9C8400B5636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B7B7B00FFFFFF000000000000000000BDBDBD00DEDE
      DE00D6D6D600D6D6D600E7E7E700E7E7E700B5B5B500BDBDBD00EFEFEF00D6F7
      D600EFEFEF00E7E7E700F7BDB500BDBDBD00B5ADAD00ADA5A500ADADAD00BDBD
      BD00BDBDBD00B5B5B50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD5A5A00C67B7300DEADA500C69C9400B563630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B00000000000000000000000000B5B5
      B500C6C6C600D6D6D600C6C6C600ADADAD00CEC6C600F7F7F700F7F7F700F7F7
      F700EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00D6D6D600CECECE00ADA5
      A500A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      7B00C6848400DEADA500CEA5A500B56363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF00000000007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000A59C9C00BDBDBD00DEDEDE00CECECE00ADADAD00C6C6C600DEDE
      DE00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00C6C6C600BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000426B840000AD
      CE007BB5AD00BDAD9C00B5636300000000000000000000000000000000000000
      00000000000000000000000000004AD6F70010C6EF0010C6EF0010C6EF0010C6
      EF0010ADD600000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000ADADAD00F7F7F700F7F7F700DEDEDE00BDBDBD00BDBDBD00C6C6
      C600D6D6D600D6D6D600D6D6D600D6D6D600C6C6C600ADADAD00BDB5B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000039A5C6006373840052AD
      B500A5E7F70042DEFF0000000000000000000000000000000000000000000000
      0000000000000000000084DEDE004AD6F70021CEF700108CB50042B5D60063D6
      F700ADE7F70010ADD6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000EFDEDE00FFE7DE00FFE7D600FFDED600F7DED600F7DE
      D600F7DED600EFDEDE00E7DEDE00DEDEDE00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      00000000000000000000000000000000000042CEE70010B5DE0031B5D60042DE
      FF0042DEFF000000000000000000000000000000000000000000000000000000
      00000000000084E7F70039CEF70010C6F70052CEEF004AD6F7004AD6F7004AD6
      F7007BDEF70010ADD6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B000000
      00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6B500FFC6AD00EFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      00000000000000000000000000000000000042CEE70018BDE70021CEF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADE7F70039D6F70042DEFF0039CEF7004AD6F70010ADD600000000000000
      00000000000052C6EF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000000000000000
      000000000000000000007B7B7B00FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000E7C6BD00FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000000000000000000000000000000000052E7FF0008BDEF0042DEFF00A5E7
      F700000000000000000000000000000000000000000000000000000000000000
      00005ADEF70021CEF70008CEFF0084DEF70010ADD600000000000000000073CE
      EF0000000000B5E7F7000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7B5A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF0000000000000000000000000000000000A5F7FF0010C6F70018D6FF0052E7
      FF00000000000000000000000000000000000000000000000000000000008CE7
      F70029D6F70010C6EF0010C6F70010ADD60000000000000000004AD6F700A5E7
      F7000000000073CEEF0010ADD60000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF00000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500FFC6AD00F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042CEE70031D6FF0039DEFF007BEF
      FF0084E7F70000000000000000000000000000000000000000009CE7F70039D6
      F70029C6F70018C6EF0018BDE7000000000000000000000000000000000084D6
      EF005AC6EF0010ADD60000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7CEC600FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFC6B500F7BDB500F7BDB500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029D6F70073EFFF00A5F7
      FF005AEFFF0073EFFF00ADF7F70000000000000000005AD6DE0042DEF70021CE
      F70018CEF70000C6F70010ADD600000000000000000000000000000000000000
      000010ADD6000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7C6C600FFEFE700FFE7DE00FFDED600FFDECE00FFD6C600FFCE
      BD00FFCEB500F7BDB50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042CEE70029BDDE0039C6
      E70042CEE70063E7EF0063CEE7005AC6DE0042BDD60042CEE70039C6E70018B5
      DE0021CEF70010ADD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000FFFF0000FFFF0000000000000000000000000000FFFF000000
      0000000000007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000E7CEC600FFF7EF00FFE7DE00FFE7D600FFDECE00FFD6C600FFD6
      C600F7BDB500F7BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000042CE
      E7004AB5CE0084D6E70042CEE70042CEE7005ABDD6007BCEDE0039A5C60010AD
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000FFFF00000000000000000000000000000000000000000000FF
      FF007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000DEB5B500E7CEC600E7C6C600E7C6BD00E7C6BD00E7BDB500E7BDB500E7B5
      FD00F7BDB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005ABDD60052BDDE0052BDDE0042B5D60063C6DE0010ADD6000000
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
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
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
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFDEC600F7E7C600F7DEC600F7DEBD00BDCE8C00E7D6A500E7D6A500EFCE
      A500EFCE9C00EFCE9C00EFCE9400EFCE9400EFCE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7DECE00F7E7CE00F7DEC600F7DEC600CED69C00009C0000E7D6A5006BB5
      4A0039A5290039A529006BB54A00C6C67B00E7CE9400EFCE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00EFE7CE00F7E7D600F7E7CE00F7DEC600EFDEB500009C0000109C1000009C
      0000009C0000009C0000009C0000009C000094BD5A00E7CE9400EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      630000000000000000000000000000000000000000000000000000000000AD7B
      7B00F7E7D600F7EFDE00F7E7D600F7E7CE00EFDEBD00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000C6C67B00EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7E7DE00F7EFDE00F7E7D600F7E7CE00E7DEC600009C0000009C0000009C
      000039AD3100C6CE8C00C6CE8C006BB54A00009C000039A52900EFCE9400EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0084E7FF005ACEEF0021A5
      D6000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      630000000000000000000000000000000000000000000000000000000000AD84
      7B00F7EFE700F7EFE700F7EFDE00F7E7D600EFE7C600009C0000009C0000009C
      000031A52100E7D6AD00E7D6A500E7D6A500A5C67300109C0800EFCE9C00EFCE
      9400EFCE9400B58C7B0000000000000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF007BE7F70073DEF70039BD
      DE000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      7B00F7EFE700FFF7EF00F7EFE700F7EFDE00EFE7CE00009C0000009C0000009C
      0000009C0000009C0000E7D6AD00EFD6AD00EFD6AD00EFCEA5007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEFF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000B58C
      8400F7EFEF00FFF7EF00F7EFE700F7EFE700EFE7CE00EFE7CE00E7DEC600E7DE
      C600EFDEBD00EFDEB500E7D6AD00F7D6B500EFD6AD00EFD6AD007BCE7B00EFCE
      9C00EFCE9400B58C7B0000000000000000000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DEF7008CEF
      FF0029ADD60000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000BD8C
      8400FFF7F700FFFFF700FFF7EF007BCE7B00F7EFE700F7EFDE00F7E7D600EFE7
      C600E7DEC600EFDEBD00EFDEB500E7D6AD00E7D6AD00E7D6A500EFD6AD00EFCE
      A500EFCE9C00B58C7B0000000000000000000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF700087B10001084
      18004AC6E70000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000BD94
      8400FFF7F700FFFFFF00FFF7F7007BCE7B00F7EFE700F7EFE700F7EFDE00EFE7
      CE00009C0000009C0000009C0000009C0000009C0000E7D6AD00EFD6AD00EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF000873080039BD63004AD6
      7B001084180018A5D6000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C694
      8400FFF7F700FFFFFF00FFFFFF00FFF7F700109C1000ADD6A500EFEFD600EFE7
      CE00EFE7CE0031AD2900009C0000009C0000009C0000E7D6AD00F7D6B500EFD6
      FD00EFCEA500B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF00006B000031AD52005AE78C005AE7
      8C0039BD5A0008731000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF0039AD3900009C000073C66B00CEDE
      B500CEDEB50039AD3900009C0000009C0000009C0000EFDEB500F7DEBD00F7D6
      B500EFD6AD00B58C7B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF000873080029AD4A005AEF940052DE84004AD6
      6B0021AD310021AD3900087308000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF007B7B7B0000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000C69C
      8400FFF7F700FFFFFF00FFFFFF00FFFFFF00CEEFCE00009C0000009C0000009C
      0000009C0000009C0000009C0000009C0000009C0000EFDEBD00F7DEBD00EFDE
      BD00DEC6A5009C847B0000000000000000000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE7000873080021AD310031AD520039BD5A0042CE6B0039C6
      5A0029BD4A0021AD310021AD310000730800000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      00007B7B7B007B7B7B007B7B7B00000000007B7B7B00000000007B7B7B000000
      00007B7B7B007B7B7B00000000007B7B7B0000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CE9C
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00F7FFF7009CDE9C00009C0000009C
      0000009C0000009C0000009C0000109C1000009C0000E7DEC600EFDEBD00CEBD
      FD00B5AD94009C847B0000000000000000000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF000873080008730800087308000873100031BD4A0031BD
      4A000873080008730800087308000873080000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000CEA5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700CEEFCE0073C6
      6B0039AD390039AD390073C66300EFE7CE00009C0000C6D6AD00CEBDAD00BDB5
      A500B5AD9C009C847B0000000000000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF000873080021AD390021BD
      39000873080000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000D6A5
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF7F700FFF7EF00FFF7E700E7DEC600AD84730084845A00AD7B7300AD7B
      7300AD7B7300AD84730000000000000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF000873100018AD290010AD
      21000873080000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7EF00E7CEC600B5847300E7B58400E7AD6B00EFA5
      5200EFA53900B584840000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE7000884100010AD2100089C
      18000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700E7CEC600B5847300EFC68C00F7BD6B00FFB5
      5200B5848400000000000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      00000000000000000000000000000000000008730800089C180010AD21000884
      10000873080000000000000000000000000000000000BDBDBD00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000BDBDBD000000
      00007B7B7B00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF007B7B7B000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00B5847300EFC68C00F7BD6B00B584
      84000000000000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      000000000000000000000000000008841000089C180008A51800088C10000873
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEAD
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5847300EFC68C00B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000873
      08000873080010841800089418000894180008941800087B1000087308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEA5
      8400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA58400DEA5
      8400DEA58400DEA58400DEA58400DEA58400B5847300B5848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087308000873100008730800087308000873080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000900000000100010000000000C00600000000000000000000
      000000000000000000000000FFFFFF00FFCFFFFFFFFF000000000000FFC3FFFF
      FFFF000000000000E001FFFFFFFF000000000000C0007FFFE03F000000000000
      C0007FF0203F000000000000C0003FF0200F000000000000C0001FF03C070000
      00000000E0000FFFFC07000000000000F00007FFFE0F000000000000F80183FF
      FC07000000000000F807C1C00000000000000000F807E0C00000000000000000
      F003F0C00000000000000000F003F9C00000000000000000E003FFC000000000
      00000000E003FFC00000000000000000E003FFC00000000000000000E003FFC0
      0000000000000000E007FFC00000000000000000F007FFC00000000000000000
      F80FFFC00000000000000000FC1FFFFFFFFF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC000
      0FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0
      000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000FC0000F
      C0000FC0000FC0000FC0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC0007C00003FFFFFFFFFFFFFC0007C00003C0000FC0000F
      FC0007C00003C0000FC0000FFC0007C00003C0000FC0000FFC0007C00003C000
      0FC0000FFC0007C00003C0000FC0000FFC0007C00003C0000FC0000FFC0007C0
      0003C0000FC0000FFC0007C00003C0000FC0000FFC0007C00003C0000FC0000F
      F00007C00003C0000FC0000FF00007C00003C0000FC0000FF00007C00003C000
      0FC0000F800007C00001C0000FC0000F800007C00000C0000FC0000F800007C0
      0000C0000FC0000F800007C00000C0000FC0000FF0000FC00000C0000FC0000F
      F0001FE00007C0000FC0000FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE9DCFFFFFFFFFFFFFFFE3FFDE9DCFF
      0C1FFFFFF9FFFC1FA01801FC0007FFFFF1FFF83F803803F00001C7FFE3FFF07F
      803803E00003C3FF87FFE0FFC03CFB800003C1FF0FFFC1FFC03CFB800003E0FE
      1FFF83FFC03CFB800003F07C3FFF07FFC03CFB800003FC307FFE0FFFC038F880
      0003FE00FFFC1FFFC038F8800003FF01FFF83FFF0010F8C00003FF83FFF07FFF
      8008E0E00007FF01FFE0FFFF8008E0F8000FFE00FFC1FE07C03CC3F8001FFC18
      7F83FC03C07CD3FC007FF83C3F07F803C07CD3FC00FFF07F1F1FF03BC07CC3FC
      01FFE0FF8F0FF06BC13C11FC01FFC1FFEF0FE0C9C13C11FC01FF83FFFF07C1E3
      81B818FC01FF87FFFF8181F7B9DB9DF803FF8FFFFF8003FFB9DB9DF803FFFFFF
      FFE00FFF7BE7BEF007FFFFFFFFF81FFFFFFFFFE00003FFFFFFFFF800FFFFFFE0
      0003FFFFFFFFF800FF1FFFE00003807FFF000000F8000FE000038003FF000428
      E0000FE0000380001F000428C0000FE0000380001F000152C0000FE000038000
      0F000428C0000FE0000380000F000428C0000FE00003800007000152C0000FE0
      0003800007000428C0000FE00003800007000428C0000FE00003800003000152
      C0000FE00003800003000428C0000FE00003800001000428C0000FE000038000
      00000152C0000FE00003800000000000C0000FE00003800007000000C0000FE0
      0003800007000000E0000FE00003800007000000F8000FE00007C03F07000000
      FE1FFFE0000FE07E0F000000FFFFFFE0001FFFE01FFFFFFFFFFFFFE0003FFFF0
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 152
    Top = 235
    PixelsPerInch = 120
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 560
    Top = 80
    ParamData = <
      item
        Name = 'USERID'
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
      OnChange = cds_PropsVerkNoChange
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
      OnChange = cds_PropsStatusChange
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
      LookupDataSet = dmsContact.cds_Verk
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
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 560
    Top = 144
  end
  object siLangLinked_frmSkapaAvrakning: TsiLangLinked
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
    Left = 480
    Top = 336
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0053006B00610070006100410076007200
      61006B006E0069006E006700010053006B006100700061002000610076007200
      E4006B006E0069006E0067000100010001000D000A004C006100620065006C00
      320001005600450052004B003A000100010001000D000A00500061006E006500
      6C00310001004C00610073007400720061006400650072000100010001000D00
      0A006700720064004C006F006100640052006F00770073004400420054006100
      62006C006500560069006500770031004C004F0001004C004F00010001000100
      0D000A006700720064004C006F006100640052006F0077007300440042005400
      610062006C0065005600690065007700310045004E0044005F00430055005300
      54004F004D004500520001004B0075006E006400280065007800740065007200
      6E0029000100010001000D000A006700720064004C006F006100640052006F00
      77007300440042005400610062006C0065005600690065007700310050004100
      43004B004100470045005F004E004F000100500061006B00650074006E007200
      0100010001000D000A006700720064004C006F006100640052006F0077007300
      440042005400610062006C006500560069006500770031004C004F0041004400
      4E004F0001004C006100730074006E0072000100010001000D000A0067007200
      64004C006F006100640052006F0077007300440042005400610062006C006500
      5600690065007700310053005500500050004C0049004500520043004F004400
      450001005000720065006600690078000100010001000D000A00670072006400
      4C006F006100640052006F0077007300440042005400610062006C0065005600
      6900650077003100500052004F0044005500430054005F004400450053004300
      520049005000540049004F004E000100500072006F00640075006B0074000100
      010001000D000A006700720064004C006F006100640052006F00770073004400
      42005400610062006C006500560069006500770031004E004C004D004D000100
      4E004C004D004D000100010001000D000A006700720064004C006F0061006400
      52006F0077007300440042005400610062006C00650056006900650077003100
      41004C004D004D00010041004C004D004D000100010001000D000A0067007200
      64004C006F006100640052006F0077007300440042005400610062006C006500
      56006900650077003100500043005300010053007400790063006B0001000100
      01000D000A006700720064004C006F006100640052006F007700730044004200
      5400610062006C006500560069006500770031004D0033005F004E0045005400
      010041004D0033000100010001000D000A006700720064004C006F0061006400
      52006F0077007300440042005400610062006C00650056006900650077003100
      4D0033005F004E004F004D0001004E004D0033000100010001000D000A006700
      720064004C006F006100640052006F0077007300440042005400610062006C00
      6500560069006500770031005000410043004B004100470045004F004B000100
      500061006B006500740020004F004B000100010001000D000A00670072006400
      4C006F006100640052006F0077007300440042005400610062006C0065005600
      69006500770031005000410043004B004100470045005F004C004F0047000100
      500061006B00650074006C006F00670067000100010001000D000A0067007200
      64004C006F006100640052006F0077007300440042005400610062006C006500
      560069006500770031004C004F00410044005F00440045005400410049004C00
      4E004F0001005200610064006E0072000100010001000D000A00670072006400
      4C006F006100640052006F0077007300440042005400610062006C0065005600
      6900650077003100500052004900430045000100500072006900730001000100
      01000D000A006700720064004C006F006100640052006F007700730044004200
      5400610062006C00650056006900650077003100560041004C00550045000100
      420065006C006F00700070000100010001000D000A006700720064004C006F00
      6100640052006F0077007300440042005400610062006C006500560069006500
      770031004E004F004D005F004C0049004E00450041004C005F004D0045005400
      4500520001004E004F004D005F004C0049004E00450041004C005F004D004500
      5400450052000100010001000D000A006700720064004C006F00610064005200
      6F0077007300440042005400610062006C006500560069006500770031004F00
      6C00640050007200690063006500010050007200690073002000310001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C0065005600690065007700310049004E0049005400490041004C0053000100
      49006E0069007400690061006C00650072000100010001000D000A0067007200
      64004C006F00610064007300440042005400610062006C006500560069006500
      770031005600490053005F004600530001005600690073002000460053000100
      010001000D000A006700720064004C006F006100640073004400420054006100
      62006C006500560069006500770031004D0049004C004C005F00460053000100
      5600650072006B002000460053000100010001000D000A006700720064004C00
      6F00610064007300440042005400610062006C00650056006900650077003100
      4C004F00410044005F0044004100540045000100550074006C00610073007400
      610064000100010001000D000A006700720064004C006F006100640073004400
      42005400610062006C0065005600690065007700310053005500500050004300
      4F004400450001005000720065006600690078000100010001000D000A006700
      720064004C006F00610064007300440042005400610062006C00650056006900
      65007700310049004E0054005F0043005500530054004F004D00450052000100
      4B0075006E006400280069006E007400650072006E0029000100010001000D00
      0A006700720064004C006F00610064007300440042005400610062006C006500
      5600690065007700310043005500530054004F004D00450052004E004F000100
      43005500530054004F004D00450052004E004F000100010001000D000A006700
      720064004C006F00610064007300440042005400610062006C00650056006900
      65007700310053004B0041005400540045005F005500500050004C0041004700
      010053006B0061007400740065007500700070006C0061006700010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310053005500500050004C004900450052005F004E00
      4F00010053005500500050004C004900450052005F004E004F00010001000100
      0D000A006700720064004C006F00610064007300440042005400610062006C00
      65005600690065007700310049004E00560050004F0049004E0054004E004100
      4D0045000100440065007300740069006E006100740069006F006E0001000100
      01000D000A006700720064004C006F0061006400730044004200540061006200
      6C0065005600690065007700310050005200490053004F004B00010050007200
      6900730020004F004B000100010001000D000A006700720064004C006F006100
      64007300440042005400610062006C006500560069006500770031004B007200
      6500640069007400650072006100640001004B00720065006400690074006500
      7200610064000100010001000D000A00500061006E0065006C00380001004C00
      6100730074006500720020006100740074002000610076007200E4006B006E00
      61000100010001000D000A006D0069005000610063006B006100670065004900
      6E0066006F0001005000610063006B00610067006500200069006E0066006F00
      0100010001000D000A0061006300430072006500610074006500500061007900
      6D0065006E0074007300010053006B006100700061002000610076007200E400
      6B006E0069006E0067000100010001000D000A00610063004300680061006E00
      6700650043007500730074006F006D0065007200010042007900740020006B00
      75006E0064000100010001000D000A00610063004F00700065006E004C006F00
      610064000100D600700070006E00610020006C00610073007400010001000100
      0D000A006100630043006C006F0073006500010053007400E4006E0067002000
      4600310032000100010001000D000A0061006300520065006600720065007300
      6800010055007000700064006100740065007200610020004600360001000100
      01000D000A0061006300520065006D006F00760065004C006F00610064000100
      54006100200062006F007200740020006C006100730074000100010001000D00
      0A006100630047006500740049006E0074005000720069006300650073000100
      5500700070006400610074006500720061002000700072006900730065007200
      2000530068006900660074002B00460036000100010001000D000A0061006300
      5300610076006500500072006900630065007300010053007000610072006100
      200070007200690073002000530068006900660074002B004600330001000100
      01000D000A0061006300430061006E00630065006C004300680061006E006700
      6500500072006900630065000100C5006E006700720061002000530068006900
      660074002B00460034000100010001000D000A006100630043006F006E006600
      690072006D004C006F00610064007300010047006F0064006B00E4006E006E00
      20006C00610073007400650072002000460033000100010001000D000A006100
      63005000720069006E00740041007600720061006B006E0069006E0067000100
      53006B007200690076002000750074000100010001000D000A00640078004200
      610072004D0061006E0061006700650072003100420061007200310001004300
      7500730074006F006D00200031000100010001000D000A006400780042006100
      72004D0061006E00610067006500720031004200610072003200010043007500
      730074006F006D00200032000100010001000D000A0073007400480069006E00
      740073005F0055006E00690063006F00640065000D000A007300740044006900
      730070006C00610079004C006100620065006C0073005F0055006E0069006300
      6F00640065000D000A006300640073005F00500072006F007000730055007300
      65007200490044000100550073006500720049004400010001000D000A006300
      640073005F00500072006F007000730046006F0072006D00010046006F007200
      6D00010001000D000A006300640073005F00500072006F007000730056006500
      72006B004E006F0001005600650072006B004E006F00010001000D000A006300
      640073005F00500072006F00700073004F0077006E00650072004E006F000100
      4F0077006E00650072004E006F00010001000D000A006300640073005F005000
      72006F00700073005000490050004E006F0001005000490050004E006F000100
      01000D000A006300640073005F00500072006F00700073004C00490050004E00
      6F0001004C00490050004E006F00010001000D000A006300640073005F005000
      72006F007000730049006E007000750074004F007000740069006F006E000100
      49006E007000750074004F007000740069006F006E00010001000D000A006300
      640073005F00500072006F007000730052006500670050006F0069006E007400
      4E006F00010052006500670050006F0069006E0074004E006F00010001000D00
      0A006300640073005F00500072006F0070007300520065006700440061007400
      650001005200650067004400610074006500010001000D000A00630064007300
      5F00500072006F007000730043006F0070007900500063007300010043006F00
      70007900500063007300010001000D000A006300640073005F00500072006F00
      70007300520075006E004E006F000100520075006E004E006F00010001000D00
      0A006300640073005F00500072006F0070007300500072006F00640075006300
      650072004E006F000100500072006F00640075006300650072004E006F000100
      01000D000A006300640073005F00500072006F00700073004100750074006F00
      43006F006C005700690064007400680001004100750074006F0043006F006C00
      57006900640074006800010001000D000A006300640073005F00500072006F00
      7000730053007500700070006C0069006500720043006F006400650001005300
      7500700070006C0069006500720043006F0064006500010001000D000A006300
      640073005F00500072006F00700073004C0065006E006700740068004F007000
      740069006F006E0001004C0065006E006700740068004F007000740069006F00
      6E00010001000D000A006300640073005F00500072006F00700073004C006500
      6E00670074006800470072006F00750070004E006F0001004C0065006E006700
      74006800470072006F00750070004E006F00010001000D000A00630064007300
      5F00500072006F00700073004E00650077004900740065006D0052006F007700
      01004E00650077004900740065006D0052006F007700010001000D000A006300
      640073005F00500072006F0070007300530061006C0065007300520065006700
      69006F006E004E006F000100530061006C006500730052006500670069006F00
      6E004E006F00010001000D000A006300640073005F00500072006F0070007300
      4D00610072006B006500740052006500670069006F006E004E006F0001004D00
      610072006B006500740052006500670069006F006E004E006F00010001000D00
      0A006300640073005F00500072006F00700073004F0072006400650072005400
      7900700065004E006F0001004F00720064006500720054007900700065004E00
      6F00010001000D000A006300640073005F00500072006F007000730053007400
      61007400750073000100530074006100740075007300010001000D000A006300
      640073005F00500072006F0070007300460069006C007400650072004F007200
      64006500720044006100740065000100460069006C007400650072004F007200
      6400650072004400610074006500010001000D000A006300640073005F005000
      72006F00700073005300740061007200740050006500720069006F0064000100
      5300740061007200740050006500720069006F006400010001000D000A006300
      640073005F00500072006F007000730045006E00640050006500720069006F00
      6400010045006E00640050006500720069006F006400010001000D000A006300
      640073005F00500072006F007000730043006C00690065006E0074004E006F00
      010043006C00690065006E0074004E006F00010001000D000A00630064007300
      5F00500072006F0070007300530061006C006500730050006500720073006F00
      6E004E006F000100530061006C006500730050006500720073006F006E004E00
      6F00010001000D000A006300640073005F00500072006F007000730056006500
      72006B0053007500700070006C006900650072004E006F000100560065007200
      6B0053007500700070006C006900650072004E006F00010001000D000A006300
      640073005F00500072006F00700073005600650072006B004B0075006E006400
      4E006F0001005600650072006B004B0075006E0064004E006F00010001000D00
      0A006300640073005F00500072006F00700073004C004F004F0062006A006500
      63007400540079007000650001004C004F004F0062006A006500630074005400
      790070006500010001000D000A006300640073005F00500072006F0070007300
      42006100720043006F00640065004E006F00010042006100720043006F006400
      65004E006F00010001000D000A006300640073005F00500072006F0070007300
      470072006100640065005300740061006D0070004E006F000100470072006100
      640065005300740061006D0070004E006F00010001000D000A00630064007300
      5F00500072006F007000730056006F006C0075006D00650055006E0069007400
      4E006F00010056006F006C0075006D00650055006E00690074004E006F000100
      01000D000A006300640073005F00500072006F00700073004C0065006E006700
      7400680046006F0072006D00610074004E006F0001004C0065006E0067007400
      680046006F0072006D00610074004E006F00010001000D000A00630064007300
      5F00500072006F00700073004C0065006E0067007400680056006F006C005500
      6E00690074004E006F0001004C0065006E0067007400680056006F006C005500
      6E00690074004E006F00010001000D000A006300640073005F00500072006F00
      70007300470072006F00750070004200790042006F0078000100470072006F00
      750070004200790042006F007800010001000D000A006300640073005F005000
      72006F0070007300470072006F0075007000530075006D006D00610072007900
      0100470072006F0075007000530075006D006D00610072007900010001000D00
      0A006300640073005F00500072006F00700073004100670065006E0074004E00
      6F0001004100670065006E0074004E006F00010001000D000A00630064007300
      5F00500072006F00700073004C006F006100640069006E0067004C006F006300
      6100740069006F006E004E006F0001004C006F006100640069006E0067004C00
      6F0063006100740069006F006E004E006F00010001000D000A00630064007300
      5F00500072006F007000730053006800690070007000650072004E006F000100
      53006800690070007000650072004E006F00010001000D000A00630064007300
      5F00500072006F007000730042006F006F006B0069006E006700540079007000
      65004E006F00010042006F006F006B0069006E00670054007900700065004E00
      6F00010001000D000A006300640073005F00500072006F007000730043007500
      730074006F006D00650072004E006F00010043007500730074006F006D006500
      72004E006F00010001000D000A006300640073005F00500072006F0070007300
      530068006F007700500072006F0064007500630074000100530068006F007700
      500072006F006400750063007400010001000D000A006300640073005F005000
      72006F00700073004D00610072006B006E006100640001004D00610072006B00
      6E0061006400010001000D000A006300640073005F00500072006F0070007300
      4B0075006E00640001004B0075006E006400010001000D000A00630064007300
      5F00500072006F007000730053005200010053005200010001000D000A006300
      640073005F00500072006F0070007300530061006C006A006700720075007000
      70000100530061006C006A0067007200750070007000010001000D000A006300
      640073005F00500072006F00700073005600650072006B000100560065007200
      6B00010001000D000A007300740046006F006E00740073005F0055006E006900
      63006F00640065000D000A005400660072006D0053006B006100700061004100
      7600720061006B006E0069006E00670001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A00500061006E00
      65006C00310001004D0053002000530061006E00730020005300650072006900
      6600010001005400610068006F006D0061000D000A0062006200530061007600
      65005000720069006300650001004D0053002000530061006E00730020005300
      6500720069006600010001005400610068006F006D0061000D000A0062006200
      430061006E00630065006C005000720069006300650001004D00530020005300
      61006E007300200053006500720069006600010001005400610068006F006D00
      61000D000A00500061006E0065006C00380001004D0053002000530061006E00
      7300200053006500720069006600010001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310001005400
      610068006F006D006100010001005400610068006F006D0061000D000A006400
      78004200610072004D0061006E00610067006500720031004200610072003100
      01005400610068006F006D006100010001005400610068006F006D0061000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      7200320001005400610068006F006D006100010001005400610068006F006D00
      61000D000A00630078005300740079006C006500520065006400010054006100
      68006F006D006100010001005400610068006F006D0061000D000A0073007400
      4D0075006C00740069004C0069006E00650073005F0055006E00690063006F00
      640065000D000A007300740053007400720069006E00670073005F0055006E00
      690063006F00640065000D000A00730074004F00740068006500720053007400
      720069006E00670073005F0055006E00690063006F00640065000D000A007300
      740043006F006C006C0065006300740069006F006E0073005F0055006E006900
      63006F00640065000D000A00630078004400420049006D006100670065004300
      6F006D0062006F0042006F00780031002E00500072006F007000650072007400
      6900650073002E004900740065006D0073005B0030005D002E00440065007300
      6300720069007000740069006F006E000100550074006C006100730074006500
      720020006D006500640020006D006F006D007300010001000D000A0063007800
      4400420049006D0061006700650043006F006D0062006F0042006F0078003100
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0031005D002E004400650073006300720069007000740069006F006E00
      0100550074006C006100730074006500720020007500740061006E0020006D00
      6F006D007300010001000D000A00630078004400420049006D00610067006500
      43006F006D0062006F0042006F00780031002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0032005D002E0044006500
      73006300720069007000740069006F006E00010049006E006C00610073007400
      6500720020004B00F6007000010001000D000A00630078004400420049006D00
      61006700650043006F006D0062006F0042006F00780031002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0033005D00
      2E004400650073006300720069007000740069006F006E00010049006E007400
      650072006E00610020006D0065006C006C0061006E0020004200540048002000
      6F00630068002000420054004200010001000D000A0063007800440042004900
      6D0061006700650043006F006D0062006F0042006F00780031002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003400
      5D002E004400650073006300720069007000740069006F006E00010041006C00
      6C0061002000750074006C0061007300740065007200200073006F006D002000
      730061006B006E006100720020007000720069007300010001000D000A006300
      78004400420049006D0061006700650043006F006D0062006F0042006F007800
      31002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0035005D002E004400650073006300720069007000740069006F00
      6E00010041006C006C006100200069006E006C00610073007400650072002000
      73006F006D002000730061006B006E0061007200200070007200690073000100
      01000D000A0073007400430068006100720053006500740073005F0055006E00
      690063006F00640065000D000A005400660072006D0053006B00610070006100
      41007600720061006B006E0069006E0067000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00500061006E0065006C00
      31000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A006200620053006100760065005000720069006300650001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      62006200430061006E00630065006C0050007200690063006500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A005000
      61006E0065006C0038000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00640078004200610072004D0061006E006100
      67006500720031000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00640078004200610072004D0061006E0061006700
      65007200310042006100720031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780053007400
      79006C0065005200650064000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00}
  end
end
