object frmAvrop: TfrmAvrop
  Tag = 1
  Left = 143
  Top = 114
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Avrop'
  ClientHeight = 711
  ClientWidth = 1248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PopupMenu = pmShortCuts
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 388
    Width = 1248
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clBlack
    ParentColor = False
    ExplicitWidth = 1234
  end
  object Panel1: TPanel
    Left = 0
    Top = 391
    Width = 1248
    Height = 320
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 561
      Top = 1
      Height = 318
      Color = clBlack
      ParentColor = False
    end
    object pLoadOrder: TPanel
      Left = 1
      Top = 1
      Width = 560
      Height = 318
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter3: TSplitter
        Left = 0
        Top = 142
        Width = 560
        Height = 3
        Cursor = crVSplit
        Align = alTop
        Color = clBlack
        ParentColor = False
      end
      object PanelNormalLO: TPanel
        Left = 0
        Top = 0
        Width = 560
        Height = 142
        Align = alTop
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 558
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          Caption = 'LASTORDER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdLO: TcxGrid
          Left = 1
          Top = 28
          Width = 558
          Height = 113
          Align = alClient
          TabOrder = 1
          object grdLODBTableView1: TcxGridDBTableView
            PopupMenu = pmLO
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = daMoLM1.dsrcNormalLO
            DataController.KeyFieldNames = 'UNIQUERECORDNO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdLODBTableView1KR_REF: TcxGridDBColumn
              DataBinding.FieldName = 'KR_REF'
              Options.Filtering = False
              Width = 73
            end
            object grdLODBTableView1LO: TcxGridDBColumn
              DataBinding.FieldName = 'LO'
              Options.Filtering = False
            end
            object grdLODBTableView1SUPPLIER: TcxGridDBColumn
              DataBinding.FieldName = 'SUPPLIER'
              Options.Filtering = False
              Width = 82
            end
            object grdLODBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ImageList1
              Properties.Items = <
                item
                  ImageIndex = 0
                  Value = 2
                end
                item
                  ImageIndex = 1
                  Value = 3
                end
                item
                  ImageIndex = 2
                  Value = 4
                end
                item
                  ImageIndex = 3
                  Value = 1
                end
                item
                  ImageIndex = 4
                  Value = 5
                end
                item
                  ImageIndex = 5
                  Value = 0
                end
                item
                  ImageIndex = 6
                  Value = 6
                end
                item
                  ImageIndex = 7
                  Value = 7
                end
                item
                  ImageIndex = 8
                  Value = 8
                end
                item
                  Description = 'KFU'
                  ImageIndex = 9
                  Value = 9
                end>
              Options.Filtering = False
            end
            object grdLODBTableView1PRODUCT: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUCT'
              Options.Filtering = False
              Width = 188
            end
            object grdLODBTableView1LENGTH: TcxGridDBColumn
              DataBinding.FieldName = 'LENGTH'
              Options.Filtering = False
              Width = 161
            end
            object grdLODBTableView1M3: TcxGridDBColumn
              DataBinding.FieldName = 'M3'
              Options.Filtering = False
            end
            object grdLODBTableView1VOLUME: TcxGridDBColumn
              DataBinding.FieldName = 'VOLUME'
              Options.Filtering = False
            end
            object grdLODBTableView1VOLUNIT: TcxGridDBColumn
              DataBinding.FieldName = 'VOLUNIT'
              Options.Filtering = False
              Width = 79
            end
            object grdLODBTableView1CURRENCY: TcxGridDBColumn
              DataBinding.FieldName = 'CURRENCY'
              Options.Filtering = False
              Width = 59
            end
            object grdLODBTableView1PRICE: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE'
              Options.Filtering = False
            end
            object grdLODBTableView1PRICEUNIT: TcxGridDBColumn
              DataBinding.FieldName = 'PRICEUNIT'
              Options.Filtering = False
            end
            object grdLODBTableView1SUPPLIERNO: TcxGridDBColumn
              DataBinding.FieldName = 'SUPPLIERNO'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object grdLODBTableView1PKGCODE: TcxGridDBColumn
              DataBinding.FieldName = 'PKGCODE'
              Options.Filtering = False
            end
            object grdLODBTableView1FROMWEEK: TcxGridDBColumn
              DataBinding.FieldName = 'FROMWEEK'
              Options.Filtering = False
            end
            object grdLODBTableView1TOWEEK: TcxGridDBColumn
              DataBinding.FieldName = 'TOWEEK'
              Options.Filtering = False
            end
            object grdLODBTableView1SHIPTO: TcxGridDBColumn
              DataBinding.FieldName = 'SHIPTO'
              Options.Filtering = False
              Width = 137
            end
            object grdLODBTableView1DESTINATION: TcxGridDBColumn
              DataBinding.FieldName = 'DESTINATION'
              Options.Filtering = False
              Width = 109
            end
            object grdLODBTableView1CUSTPLANOBJECTNO: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTPLANOBJECTNO'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object grdLODBTableView1OBJECTTYPE: TcxGridDBColumn
              DataBinding.FieldName = 'OBJECTTYPE'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object grdLODBTableView1DELIVERED: TcxGridDBColumn
              Caption = 'Levererat'
              DataBinding.FieldName = 'DELIVERED'
              Options.Filtering = False
            end
            object grdLODBTableView1LOADING_LOCATION: TcxGridDBColumn
              DataBinding.FieldName = 'LOADING_LOCATION'
              Options.Filtering = False
              Width = 106
            end
            object grdLODBTableView1UNIQUERECORDNO: TcxGridDBColumn
              DataBinding.FieldName = 'UNIQUERECORDNO'
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
      object PanelAddLO: TPanel
        Left = 0
        Top = 145
        Width = 560
        Height = 173
        Align = alClient
        TabOrder = 1
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 558
          Height = 16
          Align = alTop
          BevelOuter = bvNone
          Caption = 'ADD LO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object grdAddLO: TcxGrid
          Left = 1
          Top = 17
          Width = 558
          Height = 155
          Align = alClient
          TabOrder = 1
          object grdAddLODBTableView1: TcxGridDBTableView
            PopupMenu = pmAddLO
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = daMoLM1.dsrcExtraLO
            DataController.KeyFieldNames = 'UNIQUERECORDNO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object grdAddLODBTableView1KR_REF: TcxGridDBColumn
              DataBinding.FieldName = 'KR_REF'
              Options.Filtering = False
              Width = 84
            end
            object grdAddLODBTableView1LO: TcxGridDBColumn
              DataBinding.FieldName = 'LO'
              Options.Filtering = False
            end
            object grdAddLODBTableView1UNIQUERECORDNO: TcxGridDBColumn
              DataBinding.FieldName = 'UNIQUERECORDNO'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object grdAddLODBTableView1SUPPLIER: TcxGridDBColumn
              DataBinding.FieldName = 'SUPPLIER'
              Options.Filtering = False
              Width = 82
            end
            object grdAddLODBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ImageList1
              Properties.Items = <
                item
                  ImageIndex = 0
                  Value = 2
                end
                item
                  ImageIndex = 1
                  Value = 3
                end
                item
                  ImageIndex = 2
                  Value = 4
                end
                item
                  ImageIndex = 3
                  Value = 1
                end
                item
                  ImageIndex = 4
                  Value = 5
                end
                item
                  ImageIndex = 5
                  Value = 0
                end
                item
                  ImageIndex = 6
                  Value = 6
                end
                item
                  ImageIndex = 7
                  Value = 7
                end
                item
                  ImageIndex = 8
                  Value = 8
                end>
              Options.Filtering = False
            end
            object grdAddLODBTableView1PRODUCT: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUCT'
              Options.Filtering = False
              Width = 78
            end
            object grdAddLODBTableView1LENGTH: TcxGridDBColumn
              DataBinding.FieldName = 'LENGTH'
              Options.Filtering = False
              Width = 72
            end
            object grdAddLODBTableView1M3: TcxGridDBColumn
              DataBinding.FieldName = 'M3'
              Options.Filtering = False
            end
            object grdAddLODBTableView1VOLUME: TcxGridDBColumn
              DataBinding.FieldName = 'VOLUME'
              Options.Filtering = False
            end
            object grdAddLODBTableView1VOLUNIT: TcxGridDBColumn
              DataBinding.FieldName = 'VOLUNIT'
              Options.Filtering = False
            end
            object grdAddLODBTableView1CURRENCY: TcxGridDBColumn
              DataBinding.FieldName = 'CURRENCY'
              Options.Filtering = False
            end
            object grdAddLODBTableView1PRICE: TcxGridDBColumn
              DataBinding.FieldName = 'PRICE'
              Options.Filtering = False
              Width = 65
            end
            object grdAddLODBTableView1PRICEUNIT: TcxGridDBColumn
              DataBinding.FieldName = 'PRICEUNIT'
              Options.Filtering = False
              Width = 68
            end
            object grdAddLODBTableView1SUPPLIERNO: TcxGridDBColumn
              DataBinding.FieldName = 'SUPPLIERNO'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object grdAddLODBTableView1PKGCODE: TcxGridDBColumn
              DataBinding.FieldName = 'PKGCODE'
              Options.Filtering = False
            end
            object grdAddLODBTableView1FROMWEEK: TcxGridDBColumn
              DataBinding.FieldName = 'FROMWEEK'
              Options.Filtering = False
            end
            object grdAddLODBTableView1TOWEEK: TcxGridDBColumn
              DataBinding.FieldName = 'TOWEEK'
              Options.Filtering = False
            end
            object grdAddLODBTableView1SHIPTO: TcxGridDBColumn
              DataBinding.FieldName = 'SHIPTO'
              Options.Filtering = False
              Width = 81
            end
            object grdAddLODBTableView1OBJECTTYPE: TcxGridDBColumn
              DataBinding.FieldName = 'OBJECTTYPE'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
            end
            object grdAddLODBTableView1DELIVERED: TcxGridDBColumn
              DataBinding.FieldName = 'DELIVERED'
              Options.Filtering = False
            end
            object grdAddLODBTableView1CUSTOMER: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER'
              Options.Filtering = False
              Width = 113
            end
          end
          object grdAddLOLevel1: TcxGridLevel
            GridView = grdAddLODBTableView1
          end
        end
      end
    end
    object pLoads: TPanel
      Left = 564
      Top = 1
      Width = 683
      Height = 318
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object PanelAvropLoad: TPanel
        Left = 0
        Top = 0
        Width = 683
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          683
          73)
        object Label1: TLabel
          Left = 8
          Top = 4
          Width = 58
          Height = 15
          Caption = 'S'#246'k lastnr'
        end
        object Label8: TLabel
          Left = 111
          Top = 4
          Width = 75
          Height = 15
          Caption = 'S'#246'kfakturanr'
        end
        object cxlabelLoads: TcxLabel
          Left = 281
          Top = 3
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = 'INLEVERANSER'
          ParentColor = False
          Style.BorderColor = clWindowFrame
          Style.Color = clBtnFace
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.Kind = lfFlat
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          Height = 18
          Width = 96
        end
        object cxButton1: TcxButton
          Left = 245
          Top = 42
          Width = 95
          Height = 25
          Action = acNewLoad
          Anchors = [akTop, akRight]
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cxButton2: TcxButton
          Left = 346
          Top = 42
          Width = 125
          Height = 25
          Action = acOpenLoad
          Anchors = [akTop, akRight]
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object teSearchInvoiceNo: TcxTextEdit
          Left = 111
          Top = 18
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyDown = teSearchInvoiceNoKeyDown
          Width = 82
        end
        object teSearchLoadNo: TcxTextEdit
          Left = 8
          Top = 18
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = teSearchLoadNoKeyDown
          Width = 83
        end
        object cxButton3: TcxButton
          Left = 125
          Top = 42
          Width = 114
          Height = 25
          Action = acExpLoad
          Anchors = [akTop, akRight]
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cxButton4: TcxButton
          Left = 20
          Top = 42
          Width = 90
          Height = 25
          Action = acNewDeliveryRequest
          Anchors = [akTop, akRight]
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cxButton5: TcxButton
          Left = 477
          Top = 42
          Width = 146
          Height = 25
          Action = acMovePkgsToInvAndDeleteLoad
          Anchors = [akTop, akRight]
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object grdLoad: TcxGrid
        Left = 0
        Top = 73
        Width = 683
        Height = 245
        Align = alClient
        TabOrder = 1
        object grdLoadDBTableView1: TcxGridDBTableView
          PopupMenu = pmLoads
          OnDblClick = grdLoadDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = daMoLM1.dsrcLoads
          DataController.KeyFieldNames = 'LOADNO;INTERNAL_INVOICENO'
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.000'
              Kind = skSum
              FieldName = 'ACT_M3'
              Column = grdLoadDBTableView1ACT_M3
            end
            item
              Format = '######'
              Kind = skCount
              FieldName = 'LOADNO'
              Column = grdLoadDBTableView1LOADNO
            end
            item
              Format = '#####'
              Kind = skSum
              FieldName = 'NoOfPkgs'
              Column = grdLoadDBTableView1NoOfPkgs
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.ImmediateEditor = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.FocusRect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = grdLoadDBTableView1StylesGetContentStyle
          object grdLoadDBTableView1SenderLoadStatus: TcxGridDBColumn
            DataBinding.FieldName = 'SenderLoadStatus'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = images1616
            Properties.Items = <
              item
                Description = 'Prelimin'#228'r'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Problem'
                ImageIndex = 1
                Value = 1
              end
              item
                Description = 'OK'
                ImageIndex = 2
                Value = 2
              end
              item
                Description = 'Utlastningspec'
                ImageIndex = 3
                Value = 3
              end>
            Options.Filtering = False
          end
          object grdLoadDBTableView1FOLJESEDEL: TcxGridDBColumn
            Caption = 'F'#246'ljesedelnr'
            DataBinding.FieldName = 'FOLJESEDEL'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 69
          end
          object grdLoadDBTableView1LO: TcxGridDBColumn
            DataBinding.FieldName = 'LO'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
          end
          object grdLoadDBTableView1LOADNO: TcxGridDBColumn
            DataBinding.FieldName = 'LOADNO'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
          end
          object grdLoadDBTableView1FS: TcxGridDBColumn
            DataBinding.FieldName = 'FS'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 73
          end
          object grdLoadDBTableView1LOADEDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'LOADEDDATE'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 80
          end
          object grdLoadDBTableView1LOAD_ID: TcxGridDBColumn
            DataBinding.FieldName = 'LOAD_ID'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 70
          end
          object grdLoadDBTableView1ACT_M3: TcxGridDBColumn
            DataBinding.FieldName = 'ACT_M3'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 54
          end
          object grdLoadDBTableView1NoOfPkgs: TcxGridDBColumn
            DataBinding.FieldName = 'NoOfPkgs'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#####'
            Options.Filtering = False
          end
          object grdLoadDBTableView1INTERNAL_INVOICENO: TcxGridDBColumn
            DataBinding.FieldName = 'INTERNAL_INVOICENO'
            PropertiesClassName = 'TcxLabelProperties'
            Options.Filtering = False
            Width = 42
          end
          object grdLoadDBTableView1PackageEntryOption: TcxGridDBColumn
            DataBinding.FieldName = 'PackageEntryOption'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
          end
          object grdLoadDBTableView1InvoiceType: TcxGridDBColumn
            DataBinding.FieldName = 'InvoiceType'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLoadDBTableView1INVOICE_NO: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE_NO'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object grdLoadDBTableView1Prefix: TcxGridDBColumn
            DataBinding.FieldName = 'Prefix'
            PropertiesClassName = 'TcxLabelProperties'
          end
        end
        object grdLoadLevel1: TcxGridLevel
          GridView = grdLoadDBTableView1
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 48
    Width = 1248
    Height = 69
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 408
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Marknad:'
    end
    object Label4: TLabel
      Left = 608
      Top = 16
      Width = 65
      Height = 13
      Caption = 'F'#246'rs'#228'lj.region:'
    end
    object Label5: TLabel
      Left = 8
      Top = 15
      Width = 50
      Height = 13
      Caption = 'S'#246'k LONr:'
    end
    object LabelKlient: TLabel
      Left = 408
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Kund:'
    end
    object Label7: TLabel
      Left = 608
      Top = 40
      Width = 47
      Height = 13
      Caption = 'S'#228'ljgrupp:'
    end
    object Label6: TLabel
      Left = 8
      Top = 39
      Width = 50
      Height = 13
      Caption = 'S'#246'k Er ref:'
    end
    object eSearchLONr: TEdit
      Left = 64
      Top = 9
      Width = 137
      Height = 19
      AutoSize = False
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      OnKeyDown = eSearchLONrKeyDown
    end
    object mLog: TMemo
      Left = 928
      Top = 8
      Width = 89
      Height = 41
      Lines.Strings = (
        'mLog')
      TabOrder = 10
      Visible = False
    end
    object bLog: TButton
      Left = 1024
      Top = 10
      Width = 94
      Height = 39
      Caption = 'bLog'
      TabOrder = 11
      Visible = False
      OnClick = bLogClick
    end
    object Button1: TButton
      Left = 314
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Emaila log'
      TabOrder = 12
      OnClick = Button1Click
    end
    object eSearchErReferens: TEdit
      Left = 64
      Top = 33
      Width = 137
      Height = 19
      AutoSize = False
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 1
      OnKeyDown = eSearchErReferensKeyDown
    end
    object lcMarknad: TcxDBLookupComboBox
      Left = 461
      Top = 8
      DataBinding.DataField = 'Marknad'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.DropDownWidth = 200
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'MarketRegionNo'
      Properties.ListColumns = <
        item
          FieldName = 'MarketRegionName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      Width = 136
    end
    object lcKund: TcxDBLookupComboBox
      Left = 461
      Top = 32
      DataBinding.DataField = 'Kund'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.DropDownWidth = 400
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      TabOrder = 5
      Width = 136
    end
    object lcSR: TcxDBLookupComboBox
      Left = 680
      Top = 8
      DataBinding.DataField = 'SR'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      TabOrder = 6
      Width = 145
    end
    object cbNotInvoiced: TcxDBCheckBox
      Left = 944
      Top = 48
      Caption = 'Ej fakturerat'
      DataBinding.DataField = 'VerkSupplierNo'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 8
      Visible = False
      Width = 65
    end
    object rgOrderTypeNo: TcxDBRadioGroup
      Left = 208
      Top = 5
      Caption = 'Kontrakt'
      DataBinding.DataField = 'OrderTypeNo'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'F'#246'rs'#228'ljning'
          Value = 0
        end
        item
          Caption = 'Ink'#246'p'
          Value = 1
        end>
      TabOrder = 2
      Height = 57
      Width = 89
    end
    object icStatus: TcxDBImageComboBox
      Left = 312
      Top = 8
      DataBinding.DataField = 'Status'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.Images = dmsConnector.ilStatus
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Annulerad'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Aktiv'
          ImageIndex = 1
          Value = 1
        end
        item
          Description = 'Avslutad'
          ImageIndex = 2
          Value = 2
        end
        item
          Description = 'Prelimin'#228'r'
          ImageIndex = 3
          Value = 3
        end
        item
          Description = 'Skeppat'
          ImageIndex = 6
          Value = 4
        end>
      TabOrder = 3
      Width = 89
    end
    object cbShowAll: TcxDBCheckBox
      Left = 880
      Top = 48
      Caption = 'Visa alla'
      DataBinding.DataField = 'NewItemRow'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 9
      Visible = False
      Width = 65
    end
    object lcSaljgrupp: TcxDBLookupComboBox
      Left = 680
      Top = 32
      DataBinding.DataField = 'Saljgrupp'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'MarketRegionNo'
      Properties.ListColumns = <>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      TabOrder = 7
      Width = 145
    end
  end
  object grdcxAvrop: TcxGrid
    Left = 0
    Top = 117
    Width = 1248
    Height = 271
    Align = alClient
    PopupMenu = pmAvropGrid
    TabOrder = 2
    object grdcxAvropDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = daMoLM1.dsrcAvrop
      DataController.KeyFieldNames = 'CustShipPlanDetailObjectNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          FieldName = 'PRODUCT'
          Column = grdcxAvropDBBandedTableView1PRODUCT
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = grdcxAvropDBBandedTableView1LO
            end
            item
              Column = grdcxAvropDBBandedTableView1ORDERNUMBER
            end
            item
              Column = grdcxAvropDBBandedTableView1CLIENT
            end>
          SummaryItems = <
            item
              Format = '#,###,###.000'
              Kind = skSum
              Position = spFooter
              FieldName = 'VOLUME'
              Column = grdcxAvropDBBandedTableView1VOLUME
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              Position = spFooter
              FieldName = 'REST'
              Column = grdcxAvropDBBandedTableView1REST
            end
            item
              Format = '#,###,###.000'
              Kind = skSum
              Position = spFooter
              FieldName = 'LEV'
              Column = grdcxAvropDBBandedTableView1LEV
            end>
        end>
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.PullFocusing = True
      OptionsBehavior.BandHeaderHints = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = 'FIXED'
          FixedKind = fkLeft
        end
        item
          Caption = 'OTHER'
        end>
      object grdcxAvropDBBandedTableView1STATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShippingPlanStatus'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmsConnector.ilStatus
        Properties.Items = <
          item
            Description = 'Annulerad'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Aktiv'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Avslutad'
            ImageIndex = 2
            Value = 2
          end
          item
            Description = 'Prelimin'#228'r'
            ImageIndex = 3
            Value = 3
          end
          item
            Description = 'Skeppat'
            ImageIndex = 6
            Value = 4
          end>
        SortIndex = 0
        SortOrder = soAscending
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1LO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ShippingPlanNo'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1ORDERNUMBER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERNUMBER'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 124
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1REFERENCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFERENCE'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 184
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1FROMWEEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FROMWEEK'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1TOWEEK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOWEEK'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 72
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1CLIENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 169
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1AGENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AGENT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 229
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1MARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARK'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 149
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1PRODUCT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRODUCT'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 184
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1LENGTH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LENGTH'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 249
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1VOLUME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUME'
        PropertiesClassName = 'TcxCalcEditProperties'
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1VOLUNIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOLUNIT'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1DESTINATION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DESTINATION'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 99
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1KR_REF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KR_REF'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 124
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1ORDERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1CLIENTNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENTNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1DESTINATIONNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DESTINATIONNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1UNIQUERECORDNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CustShipPlanDetailObjectNo'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1SALESREGIONNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SALESREGIONNO'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1ORDERTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ORDERTYPE'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1CurrencyNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CurrencyNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1LEV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEV'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Width = 238
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1REST: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REST'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.000;-,0.000'
        Options.Filtering = False
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1Trading: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Trading'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1SequenceNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SequenceNo'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmsConnector.ilStatus
        Properties.Items = <
          item
            Description = 'Annulerad'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Aktiv'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Avslutad'
            ImageIndex = 2
            Value = 2
          end
          item
            Description = 'Prelimin'#228'r'
            ImageIndex = 3
            Value = 3
          end
          item
            Description = 'Skeppat'
            ImageIndex = 6
            Value = 4
          end>
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object grdcxAvropDBBandedTableView1LoadedPkgs: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadedPkgs'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
    end
    object grdcxAvropLevel1: TcxGridLevel
      GridView = grdcxAvropDBBandedTableView1
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1248
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 903
      Height = 48
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 903
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel7: TPanel
      Left = 1183
      Top = 0
      Width = 65
      Height = 48
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 65
        Height = 44
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel8: TPanel
      Left = 903
      Top = 0
      Width = 280
      Height = 48
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object cxRichEdit1: TcxRichEdit
    Left = 40
    Top = 176
    TabOrder = 4
    Visible = False
    Height = 153
    Width = 1177
  end
  object DBRichEdit_InvoiceText: TDBRichEdit
    Left = 0
    Top = 490
    Width = 1233
    Height = 159
    DataField = 'InvoiceText'
    DataSource = dmVidaInvoice.dsrcInvoiceHead
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabOrder = 9
    Visible = False
    Zoom = 100
  end
  object ActionList1: TActionList
    Images = imglistActions
    Left = 256
    Top = 136
    object ac_Exit: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = ac_ExitExecute
    end
    object ac_Booking: TAction
      Caption = 'Bokning F9'
      ImageIndex = 9
      ShortCut = 120
      OnExecute = ac_BookingExecute
      OnUpdate = ac_BookingUpdate
    end
    object ac_MakeInvoice: TAction
      Caption = 'Registrera faktura F2'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = ac_MakeInvoiceExecute
      OnUpdate = ac_MakeInvoiceUpdate
    end
    object ac_Refresh: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = ac_RefreshExecute
    end
    object acPrintContract: TAction
      Category = 'Print'
      Caption = 'Contract'
      OnExecute = acPrintContractExecute
      OnUpdate = acPrintContractUpdate
    end
    object acPrintLO: TAction
      Category = 'Print'
      Caption = 'Load Order'
      OnExecute = acPrintLOExecute
      OnUpdate = acPrintLOUpdate
    end
    object acPrintTrpOrder: TAction
      Category = 'Print'
      Caption = 'Transport Order'
      OnExecute = acPrintTrpOrderExecute
      OnUpdate = acPrintTrpOrderUpdate
    end
    object acOpenLoad: TAction
      Category = 'Last'
      Caption = #214'ppna last Shift+F9'
      ShortCut = 8312
      OnExecute = acOpenLoadExecute
      OnUpdate = acOpenLoadUpdate
    end
    object acNewLoad: TAction
      Category = 'Last'
      Caption = 'Ny last Ctrl+Ins'
      ShortCut = 16429
      OnExecute = acNewLoadExecute
      OnUpdate = acNewLoadUpdate
    end
    object acDeleteLoad: TAction
      Category = 'Last'
      Caption = 'Ta bort last'
      OnExecute = acDeleteLoadExecute
    end
    object acChangeLoadLayout: TAction
      Category = 'Last'
      Caption = #196'ndra tabellayout'
      OnExecute = acChangeLoadLayoutExecute
    end
    object acPrintTallyUSNote: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel USA'
      OnExecute = acPrintTallyUSNoteExecute
      OnUpdate = acPrintTallyUSNoteUpdate
    end
    object acSetLOStatusToCancel: TAction
      Caption = 'S'#228'tt status till Annulerad'
      ImageIndex = 6
      OnExecute = acSetLOStatusToCancelExecute
      OnUpdate = acSetLOStatusToCancelUpdate
    end
    object acSetLOStatusToAktiv: TAction
      Caption = 'S'#228'tt status till Aktiv'
      ImageIndex = 11
      OnExecute = acSetLOStatusToAktivExecute
      OnUpdate = acSetLOStatusToAktivUpdate
    end
    object acSetLOStatusToComplete: TAction
      Caption = 'S'#228'tt status till Avslutad'
      ImageIndex = 10
      OnExecute = acSetLOStatusToCompleteExecute
      OnUpdate = acSetLOStatusToCompleteUpdate
    end
    object acCustomizeAvropGrid: TAction
      Caption = #196'ndra tabellayout'
      OnExecute = acCustomizeAvropGridExecute
    end
    object acAvropCollapseAll: TAction
      Caption = 'Kollapsa alla'
      OnExecute = acAvropCollapseAllExecute
    end
    object acAvropExpandAll: TAction
      Caption = 'Expandera alla'
      OnExecute = acAvropExpandAllExecute
    end
    object acShowGroupByBox: TAction
      Caption = 'Grupperingsruta'
      OnExecute = acShowGroupByBoxExecute
    end
    object acFitAllColumnsInAvropView: TAction
      Caption = 'Automatisk kolumnbredd'
      OnExecute = acFitAllColumnsInAvropViewExecute
    end
    object acPrintFS: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel'
      OnExecute = acPrintFSExecute
      OnUpdate = acPrintFSUpdate
    end
    object acLoadSummary: TAction
      Category = 'Last'
      Caption = 'Summering'
      OnExecute = acLoadSummaryExecute
    end
    object acFitAllColumnsInLoadView: TAction
      Category = 'Last'
      Caption = 'Alla kolumner synliga i vyn'
      OnExecute = acFitAllColumnsInLoadViewExecute
    end
    object acSetLoadStatusToPreliminary: TAction
      Category = 'Last'
      Caption = 'S'#228'tt status till prelimin'#228'r'
      ImageIndex = 12
      OnExecute = acSetLoadStatusToPreliminaryExecute
      OnUpdate = acSetLoadStatusToPreliminaryUpdate
    end
    object acSetLoadStatusToComplete: TAction
      Category = 'Last'
      Caption = 'S'#228'tt status till avslutad'
      ImageIndex = 10
      OnExecute = acSetLoadStatusToCompleteExecute
      OnUpdate = acSetLoadStatusToCompleteUpdate
    end
    object acOpenInvoice: TAction
      Category = 'Last'
      Caption = #214'ppna faktura '
      ShortCut = 120
      OnExecute = acOpenInvoiceExecute
      OnUpdate = acOpenInvoiceUpdate
    end
    object acPrintLastOrderDittVerk: TAction
      Category = 'LO'
      Caption = 'Skriv ut lastorder (ditt verk)'
      OnExecute = acPrintLastOrderDittVerkExecute
    end
    object acPrintLOAllaVerk: TAction
      Category = 'LO'
      Caption = 'Skriv ut lastorder (Alla verk)'
      OnExecute = acPrintLOAllaVerkExecute
    end
    object acChangeLOLayout: TAction
      Category = 'LO'
      Caption = #196'ndra tabell layout'
      OnExecute = acChangeLOLayoutExecute
    end
    object acFitAllColumnsInLOView: TAction
      Category = 'LO'
      Caption = 'Rym alla kolumner i vyn'
      OnExecute = acFitAllColumnsInLOViewExecute
    end
    object acFitAllColumnsInAddLOView: TAction
      Category = 'AddLO'
      Caption = 'Rym alla kolumner i vyn'
      OnExecute = acFitAllColumnsInAddLOViewExecute
    end
    object acPrintAddLODittVerk: TAction
      Category = 'AddLO'
      Caption = 'Skriv ut lastorder (ditt verk)'
      OnExecute = acPrintAddLODittVerkExecute
    end
    object acPrintAddLOAllaVerk: TAction
      Category = 'AddLO'
      Caption = 'Skriv ut lastorder (Alla verk)'
      OnExecute = acPrintAddLOAllaVerkExecute
    end
    object acChangeAddLOLayout: TAction
      Category = 'AddLO'
      Caption = #196'ndra layout'
      OnExecute = acChangeAddLOLayoutExecute
    end
    object acRefreshALL: TAction
      Caption = 'Uppdatera alla'
      ImageIndex = 1
      OnExecute = acRefreshALLExecute
    end
    object acRefreshALLandNotInvoiced: TAction
      Caption = 'Upd. ej fakt Shift+F6'
      ImageIndex = 1
      ShortCut = 8309
      OnExecute = acRefreshALLandNotInvoicedExecute
    end
    object acGruppSummering: TAction
      Caption = 'Gruppsummering'
      OnExecute = acGruppSummeringExecute
    end
    object acExportToExcel: TAction
      Caption = 'Exportera till excel F11'
      ImageIndex = 15
      ShortCut = 122
      OnExecute = acExportToExcelExecute
      OnUpdate = acExportToExcelUpdate
    end
    object acEmailaTrpOrder: TAction
      Category = 'Print'
      Caption = 'Transportorder'
      OnExecute = acEmailaTrpOrderExecute
      OnUpdate = acEmailaTrpOrderUpdate
    end
    object acEmailaFS: TAction
      Category = 'Print'
      Caption = 'F'#246'ljesedel'
      OnExecute = acEmailaFSExecute
      OnUpdate = acEmailaFSUpdate
    end
    object acEmailaLO: TAction
      Category = 'Print'
      Caption = 'Lastorder'
      OnExecute = acEmailaLOExecute
      OnUpdate = acEmailaLOUpdate
    end
    object acEmailaFS_USA: TAction
      Category = 'Print'
      Caption = 'Emaila F'#246'ljesedle USA'
      OnExecute = acEmailaFS_USAExecute
      OnUpdate = acEmailaFS_USAUpdate
    end
    object acCopyLoadToSales: TAction
      Caption = 'acCopyLoadToSales'
      OnExecute = acCopyLoadToSalesExecute
      OnUpdate = acCopyLoadToSalesUpdate
    end
    object acDeletePrelInvoice: TAction
      Caption = 'Ta bort prelimin'#228'r faktura'
      ImageIndex = 6
      OnExecute = acDeletePrelInvoiceExecute
      OnUpdate = acDeletePrelInvoiceUpdate
    end
    object acTrpOrderAvrop: TAction
      Category = 'Print'
      Caption = 'Transportorder DK (avrop)'
      OnExecute = acTrpOrderAvropExecute
      OnUpdate = acTrpOrderAvropUpdate
    end
    object acEmailaTrpOrderAvropDK: TAction
      Category = 'Print'
      Caption = 'Emaila trporder DK (avrop)'
      OnExecute = acEmailaTrpOrderAvropDKExecute
      OnUpdate = acEmailaTrpOrderAvropDKUpdate
    end
    object acPrintMeny: TAction
      Category = 'Print'
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintMenyExecute
    end
    object acSetStatusToSkeppat: TAction
      Caption = 'Set status till Skeppat'
      ImageIndex = 14
      OnExecute = acSetStatusToSkeppatExecute
    end
    object acChangeLOonLoad: TAction
      Caption = 'Byt LO nummer i markerad last'
      OnExecute = acChangeLOonLoadExecute
      OnUpdate = acChangeLOonLoadUpdate
    end
    object acExpLoad: TAction
      Category = 'Last'
      Caption = 'S'#228'nd inlev. till HTF'
      OnUpdate = acExpLoadUpdate
    end
    object acGetPkgStatusOfHampen: TAction
      Caption = 'Importera paketstatus&&leveranser'
      ImageIndex = 13
    end
    object acNewDeliveryRequest: TAction
      Category = 'Last'
      Caption = 'Hampen spec'
      OnUpdate = acNewDeliveryRequestUpdate
    end
    object acMovePkgsToInvAndDeleteLoad: TAction
      Category = 'Last'
      Caption = 'Flytta alla paket till lager'
      OnExecute = acMovePkgsToInvAndDeleteLoadExecute
      OnUpdate = acMovePkgsToInvAndDeleteLoadUpdate
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 576
    Top = 256
    Bitmap = {
      494C010110001500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363004A4A4A004A4A4A00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000527BC6001873F700527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A00636363007B7B7B0073736B007B7B7B006363
      6300000000000000000000000000000000000000000000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008000000080000000800000008000000080000000800000008000000080
      000000800000000000000000000000000000000000000000000000000000ADAD
      FD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000527BC6000073FF000073F700296BC600527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A0063636300737373007B7B7B009C9C9C00737373006B6B
      6B008C8C8C000000000000000000000000000000000000808000008000000080
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000008080000080800000808000008080000080
      0000008000000000000000000000000000000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000000
      0000527BC6000073FF00007BFF000073F700186BD600527BC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006363630063636300737373008C8C8C000000000000000000CECECE007B7B
      7B008C8C8C000000000000000000000000000000000000808000008000000080
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000008080000080800000808000008080000080
      00000080000000000000000000000000000000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000000000000000
      0000527BC6000084FF000084FF000084FF000084FF00107BEF00527BC6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A0063636300737373008C8C8C000000000000000000000000009C9C9C008C8C
      8C008C8C8C000000000000000000000000000000000000808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000008080000080
      00000080000000000000000000000000000000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B0000000000000000000000000000000000000000000000
      000000000000527BC600009CFF00008CFF00008CFF00008CFF000884F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADA5AD003129
      3100636363006B6B6B00CECECE000000000000000000ADA5AD00ADA5AD00BDC6
      CE009CB5AD000000000000000000000000000000000000808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000008080000080
      00000080000000000000000000000000000000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C00000000000000000000000000000000000000
      00000000000000000000527BC60000B5FF00009CFF00008CFF000094FF000894
      F700527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000073736B004A4A
      4A004A4A4A004A4A4A0063636300CECECE00ADA5AD00ADA5AD00F7F7F700CECE
      CE00000000000000000000000000000000000000000000808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000008080000080
      000000800000000000000000000000000000D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000527BC60000C6FF0000B5FF000094FF00009C
      FF00009CFF001084EF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C007373
      73004A4A4A008C8C8C008C8C8C009C9C9C00ADA5AD00F7F7F700CECECE000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000000000000000000000000000000000000000008080
      80000080000000800000008000000080000000800000C0C0C000008080000080
      000000800000000000000000000000000000EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B00000000000000000000000000000000000000
      000000000000000000000000000000000000527BC60000D6FF0008C6FF0000A5
      FF00009CFF00009CFF000894F700527BC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADA5AD007373
      73008C8C8C008C8C8C008C8C8C00ADA5AD00F7F7F700CECECE00000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000008080800000800000008000000080000000800000008000000080
      0000808080008080800080808000808080000080000000000000808080000080
      000000800000000000000000000000000000EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC60000E7FF0018DE
      FF0008BDFF0000ADFF0000A5FF00009CFF00527BC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C0073736B007B7B7B009C9C9C004A4A4A006363
      63008C8C8C00BDBDBD00CECECE00BDC6CE00CECECE0000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000080808000808080008080800080808000008000008080
      8000808080008080800080808000008000008080800000000000808080000080
      000000800000000000000000000000000000EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC60008F7
      FF0029F7FF0021D6FF0000B5FF0000A5FF0000A5FF00527BC6004A7BB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063636300636363007B7B7B006B6B6B00636363007B7B7B008C8C
      8C00CECECE009CB5AD00ADA5AD00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000080808000808080008080800080808000008000008080
      8000808080008080800080808000008000008080800000000000808080000080
      000000800000000000000000000000000000EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C00000000000000000000000000000000000000
      000000000000527BC600527BC600527BC600527BC600527BC600527BC60000EF
      FF0008FFFF0031F7FF0039E7FF0010BDFF0000ADFF0000A5FF000894F700527B
      C600000000000000000000000000000000000000000000000000000000000000
      00006363630073736B00636363004A4A4A0063636300CECECE009C9C9C00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000000000808080000080000000800000808080008080
      8000808080000080000000800000808080008080800000000000808080000080
      000000800000000000000000000000000000EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C00000000000000000000000000000000000000
      000000000000527BC60029ADFF0000C6FF0000DEFF0000EFFF0000F7FF0000E7
      FF0000F7FF0000FFFF0021FFFF004AEFFF0018CEFF0000ADFF0000A5FF00009C
      FF00527BC6000000000000000000000000000000000000000000000000006363
      630073736B00737373009CB5AD0063636300CECECE009C9C9C007B7B7B00ADA5
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      000000000000000000000000000000800000C0C0C000C0C0C000808080008080
      8000008080000080000000800000000000000000000000000000808080000080
      800000808000000000000000000000000000EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      000000000000527BC60031ADFF0000C6FF0000DEFF0000F7FF0000FFFF0000F7
      FF0000E7FF0000F7FF0000FFFF0008FFFF0039FFFF0029DEFF0000B5FF0000A5
      FF000094FF00527BC60000000000000000000000000000000000636363007373
      6B0073737300ADA5AD00BDBDBD007B7B7B008C8C8C008C8C8C008C8C8C00ADA5
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000808000C0C0C0008080800080808000808080008080
      8000808080000080000000800000008000000000000000000000808080000080
      800000808000000000000000000000000000F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      000000000000527BC60039A5FF0000C6FF0000DEFF0000EFFF0000F7FF0000F7
      FF0000EFFF0000DEFF0000FFFF0000FFFF0000FFFF0021FFFF0039EFFF0008C6
      FF00009CFF00527BC6000000000000000000000000007B7B7B004A4A4A007373
      7300CECECE000000000000000000BDBDBD00ADA5AD00ADA5AD008C8C8C00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000808000C0C0C0008080800080808000808080008080
      8000808080000080000000800000008000000000000000000000808080000080
      800000808000000000000000000000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      000000000000527BC6006BB5FF0008C6FF0018E7FF0039E7FF004AEFFF005AF7
      FF0042F7FF0018FFFF0008FFFF0000FFFF0000FFFF0000FFFF0008FFFF0021FF
      FF0010D6FF00527BC6000000000000000000000000002142390073737300ADA5
      FD00000000000000000000000000ADA5AD00BDBDBD00F7F7F700CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      00000000000080808000C0C0C000808080008080800080808000808080008080
      8000808080008080800080808000008000000080000000000000808080000080
      80000080800000000000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      00000000000000000000527BC600527BC60084B5FF0018DEFF0008F7FF0008FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000F7FF0000EFFF0018DE
      F70063DEF700527BC6000000000000000000000000004A4A4A004A4A4A00BDBD
      BD000000000000000000ADA5AD00BDC6CE00F7F7F700CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000008080800080808000808080008080800080808000000000000000
      0000808080008080800080808000808080008080800000000000808080000080
      80000080800000000000000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000527BC600527BC60084B5FF0031D6
      FF0008F7FF0000FFFF0000FFFF0000F7FF0000D6FF0000BDFF0000B5FF0018A5
      F700527BC600000000000000000000000000000000007B7B7B00636363007373
      7300ADA5AD009C9C9C00BDC6CE00F7F7F700CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000008080800080808000808080008080800080808000000000000000
      0000808080008080800080808000808080008080800000000000808080000080
      8000008080000000000000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000527BC600527B
      C600527BC60084B5FF0018E7FF0000F7FF0000EFFF0000CEFF0000ADFF0000A5
      FF0010A5FF00527BC600000000000000000000000000000000007B7B7B00D6D6
      D600BDC6CE00D6D6D600BDC6CE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000080
      800000808000000000000000000000000000000000000000000000000000F7E7
      DE00EFDED600FFFFFF00FFFFFF00FFFFF700FFFFE700FFF7D600FFEFBD00FFE7
      B500FFE7B500FFE7BD00FFE7D600FFFFF700FFFFFF00FFFFFF00F7EFE700ADAD
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000527BC600527BC60084B5FF0029DEFF0000EFFF0000DEFF0000B5
      FF0000A5FF0084B5FF00527BC60000000000000000000000000000000000ADA5
      FD00ADA5AD00ADA5AD00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000527BC600527BC60084B5FF0042DEFF0010D6
      FF0000B5FF005AA5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      8000008080000000000000000000000000000000000000000000000000000000
      000000000000F7EFE700EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFDED600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000527BC600527BC60084B5
      FF006BC6FF0052A5FF00527BC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      8000008080000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700EFDED600EFDED600EFDED600EFDED600EFDE
      D600EFDED600EFDED600EFDED600EFDED600F7EFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000527B
      C600527BC600527BC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000087BAD00087BAD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD00087BAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000218CB50063C6E70031A5CE00087BAD000000000000000000000000000000
      000000000000000000000000000000000000107BAD0021ADD60029BDE700107B
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000104A1000104A1000104A
      1000104A10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001884B50084DEF70073EFFF0042B5D600087BAD0000000000000000000000
      00000000000000000000000000001084B50039C6E700FFFFFF0031C6EF00087B
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000104A1000108C180039CE390039CE
      390063AD6300428C420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000087BAD0052B5D6006BE7FF0073E7FF0042BDDE00087BAD00000000000000
      000000000000000000001884B5004ACEEF00FFFFFF0042E7FF00189CC600087B
      FD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000108C1800108C180039CE390039CE390039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000087BAD0073DEF7005AE7FF007BEFFF0052C6E700087BAD000000
      000000000000218CB5006BDEF700FFFFFF0042E7FF0031C6EF00107BAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000108C180039CE390042CE420042CE420039CE
      390063AD6300108C180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000087BAD0063C6E70052E7FF0063E7FF007BEFFF0063CEE7001084
      B500188CBD0073DEF700FFFFFF005AE7FF004AE7FF0021ADD600087BAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000000000000000
      00000000000000000000108C180039CE390073DE730063DE63005AD65A004AD6
      4A0042C6420063AD6300108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000399CC60063E7FF004ADEFF0063E7FF0084EFFF0073DE
      F7007BE7F700FFFFFF007BEFFF006BE7FF0052DEFF00108CB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000000000000000
      000000000000428C4200108C180073DE730073DE730073DE730073DE730063DE
      63005AD65A0039CE3900108C1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000107BAD0063CEE70042DEFF004ADEFF0063E7FF0084EF
      FF0094EFFF009CEFFF008CEFFF007BEFFF004AC6E700087BAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000000000000000
      0000428C4200108C180073DE730073DE7B0073DE730073DE730039CE390073DE
      730073DE730073DE730039CE3900108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087BAD004ADEFF0039DEFF0052DEFF0063E7
      FF007BEFFF0094EFFF009CEFFF0084EFFF00087BAD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE6300000000000000000000000000000000000000000000108C
      1800428C420094F79C0094F79C0084EF8C0073DE730039CE3900108C180039CE
      390073DE730073DE730073DE7300108C18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000087BAD001084B50021B5DE0021D6FF0029D6FF0042DEFF0052DE
      FF006BE7FF0084EFFF0094EFFF0094EFFF0042ADCE00087BAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000108C180073DE
      730094F79C0094F79C0094F79C0094F79C0039CE3900108C180000000000108C
      180073DE730073DE730073DE730073DE7300108C180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000073AD002994C60052CEEF0042DEFF0021D6FF0018CEFF0029D6FF0042DE
      FF0052DEFF006BE7FF0084EFFF009CEFFF009CEFFF0063C6E700188CB5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE6300000000000000000000000000000000000063AD630073DE
      730094F79C0094F79C0073DE7300108C1800428C42000000000000000000428C
      420039CE390073DE7B0084EF8C0073DE730039CE3900428C4200000000000000
      0000000000000000000000000000000000000000000000000000087BAD001884
      B50063BDDE008CE7FF0073E7FF0052DEFF0039DEFF0021D6FF0018D6FF0029D6
      FF0042DEFF005AE7FF006BE7FF0084EFFF009CEFFF009CF7FF007BE7F70031A5
      CE00087BAD000000000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE6300000000000000000000000000000000000063AD630039CE
      390073DE730039CE3900108C1800000000000000000000000000000000000000
      0000108C180073DE730094F79C0094F79C0073DE730063AD6300000000000000
      00000000000000000000000000000000000000000000087BAD0042A5C600ADE7
      F700CEFFFF00ADF7FF008CE7FF006BE7FF0052DEFF0039DEFF0021D6FF0018D6
      FF0029D6FF0042DEFF005AE7FF0073E7FF008CE7FF009CEFFF0094EFFF0084EF
      FF0052C6E700087BAD0000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE630000000000000000000000000000000000000000000063AD
      630063AD630063AD630000000000000000000000000000000000000000000000
      000000000000108C180094F79C0094F79C0094F79C0073DE7300108C18000000
      000000000000000000000000000000000000107BAD008CCEE700DEFFFF00DEFF
      FF00D6FFFF00CEFFFF00B5F7FF009CEFFF0084EFFF0063E7FF0039DEFF0018D6
      FF0018D6FF0031DEFF004ADEFF0063E7FF0073E7FF0094EFFF009CEFFF008CEF
      FF0084EFFF0063E7FF00087BAD00000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD003131310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063AD630094F79C0094F79C0094F79C0073DE7300428C
      42000000000000000000000000000000000000000000087BAD00087BAD00087B
      FD00087BAD00087BAD00087BAD00087BAD00087BAD0073BDDE0073E7FF0029D6
      FF0018D6FF0018D6FF0021ADD600087BAD00087BAD00087BAD00087BAD00087B
      FD00087BAD00087BAD00000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B0031313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063AD630094F79C0094F79C0084EF8C0039CE
      390063AD63000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD008CE7FF004ADE
      FF0031DEFF0018CEFF000884B500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039CE390094F79C00A5F7A50094F7
      9C0039CE390063AD630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD009CE7FF0063E7
      FF004ADEFF0029CEF700087BAD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039CE3900BDFFBD00BDFF
      BD0094F79C0039CE390063AD6300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD009CDEF70084EF
      FF0063E7FF0039C6E700087BAD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039CE3900BDFF
      BD00BDFFBD0094F79C0063AD6300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD009CD6E7009CEF
      FF007BEFFF0039B5DE00087BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      8400000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000039CE
      3900BDFFBD0073DE730063AD6300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000087BAD00087BAD00C6F7
      FF0094EFFF00087BAD00087BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039CE390063AD630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD00DEFF
      FF00ADF7FF00087BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD00F7FF
      FF00C6F7FF00087BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD009CCE
      E70073BDDE00087BAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000087B
      FD00087BAD000000000000000000000000000000000000000000000000000000
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
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE00FFFFFFFFFFFFFFFFFFFFF8003FF3
      FFFFFFFE1FFFFFFFF0001FF1FFFFFFFC0F800007E0000FF07FFFFFF807800007
      C00007F03FFFFFF0C7800007800003F01FFFFFE1C78FFE07800003F80FFFFFC1
      878FFF07800001FC03FFFFC00F8FFF07000001FE01FFFFC01F8FE007000001FF
      00FFFFC03F880047000001FF807FFC007F8C0047000001FFC01FF800FF8C0047
      000001F8000FF00FFF8E0047000001F80007E00FFF8E01C7000001F80003C00F
      FF8C00C7000001F80003860FFF8C00C7000001F800038E1FFF880047800003FC
      00038C3FFF883047800003FF0007807FFF883047C00007FFC003C0FFFF8FFFC7
      E0000FFFF801E1FFFF8FFFC7F0001FFFFE01FFFFFF800007F8003FFFFF81FFFF
      FF800007FC007FFFFFE3FFFFFF800007FFFFFFFFFFFFFFFFFFF9FF9FFFFFFFFF
      FFFFFFFFFFF0FF0FFC0007C00003FF87FFF07E0FFC0007C00003FF03FFF03C0F
      FC0007C00003FE03FFF8181FFC0007C00003FE03FFF8001FFC0007C00003FC01
      FFFC003FFC0007C00003F801FFFC003FFC0007C00003F000FFFE007FFC0007C0
      0003E000FFF8003FFC0007C00003C0207FF0001FFC0007C00003C0603FC00007
      F00007C00003C1F03F800003F00007C00003E3F81F000001F00007C00003FFFC
      0F800003800007C00001FFFE07FF81FF800007C00000FFFF03FF81FF800007C0
      0000FFFF81FF81FF800007C00000FFFFC1FF81FFF0000FC00000FFFFE1FF81FF
      F0001FE00007FFFFF3FFC3FFF0FFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFF
      FFFFC3FFFFFFFFFFFFFFFFFFFFFFE7FFFDE9DCFFFFFFFFFFFFFFFE3FFDE9DCFF
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
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PrintButton'
      'AvropGrd'
      'Loads'
      'LO'
      'AddLO')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.Images = imglistActions
    ImageOptions.LargeImages = imglistActions
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 104
    Top = 136
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
      FloatLeft = 323
      FloatTop = 203
      FloatClientWidth = 83
      FloatClientHeight = 226
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Space'
        end
        item
          Visible = True
          ItemName = 'lbMakeInvoice'
        end
        item
          Visible = True
          ItemName = 'lbRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'lbPrint'
        end
        item
          Visible = True
          ItemName = 'lbBooking'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
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
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = ac_Exit
      Category = 0
    end
    object lbRefresh: TdxBarLargeButton
      Action = ac_Refresh
      Category = 0
    end
    object lbMakeInvoice: TdxBarLargeButton
      Action = ac_MakeInvoice
      Category = 0
    end
    object lbBooking: TdxBarLargeButton
      Action = ac_Booking
      Category = 0
    end
    object lbPrint: TdxBarLargeButton
      Action = acPrintMeny
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = ppmPrintReports
    end
    object Space: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acRefreshALL
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acRefreshALLandNotInvoiced
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acExportToExcel
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acGetPkgStatusOfHampen
      Category = 0
    end
    object bbPrintOrder: TdxBarButton
      Action = acPrintContract
      Caption = 'Kontrakt'
      Category = 1
    end
    object bbPrintLO: TdxBarButton
      Action = acPrintLO
      Caption = 'Lastorder'
      Category = 1
    end
    object bbPrintLoad: TdxBarButton
      Caption = 'F'#246'ljesedel'
      Category = 1
      Visible = ivAlways
    end
    object bbPrintTrpOrder: TdxBarButton
      Action = acPrintTrpOrder
      Caption = 'Transportorder'
      Category = 1
    end
    object bbTally_Ver2: TdxBarButton
      Action = acPrintFS
      Category = 1
    end
    object dxBarButton1: TdxBarButton
      Action = acPrintTallyUSNote
      Category = 1
    end
    object dxBarButton28: TdxBarButton
      Action = acEmailaTrpOrder
      Category = 1
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Emaila'
      Category = 1
      Hint = 'Emaila'
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'Skriv ut'
      Category = 1
      Hint = 'Skriv ut'
      Visible = ivAlways
    end
    object dxBarButton29: TdxBarButton
      Action = acEmailaFS
      Category = 1
    end
    object dxBarButton30: TdxBarButton
      Action = acEmailaLO
      Category = 1
    end
    object dxBarButton31: TdxBarButton
      Action = acEmailaFS_USA
      Category = 1
    end
    object dxBarButton34: TdxBarButton
      Action = acTrpOrderAvrop
      Category = 1
    end
    object dxBarButton35: TdxBarButton
      Action = acEmailaTrpOrderAvropDK
      Category = 1
    end
    object dxBarButton2: TdxBarButton
      Action = acSetLOStatusToCancel
      Category = 2
    end
    object dxBarButton3: TdxBarButton
      Action = acSetLOStatusToAktiv
      Category = 2
    end
    object dxBarButton4: TdxBarButton
      Action = acSetLOStatusToComplete
      Category = 2
    end
    object dxBarButton5: TdxBarButton
      Action = acCustomizeAvropGrid
      Category = 2
    end
    object dxBarButton6: TdxBarButton
      Action = acAvropExpandAll
      Category = 2
    end
    object dxBarButton7: TdxBarButton
      Action = acAvropCollapseAll
      Category = 2
    end
    object dxBarButton8: TdxBarButton
      Action = acShowGroupByBox
      Category = 2
    end
    object dxBarButton9: TdxBarButton
      Action = acFitAllColumnsInAvropView
      Category = 2
    end
    object dxBarButton27: TdxBarButton
      Action = acGruppSummering
      Category = 2
    end
    object dxBarButton36: TdxBarButton
      Action = acSetStatusToSkeppat
      Category = 2
    end
    object dxBarButton10: TdxBarButton
      Action = acOpenLoad
      Category = 3
    end
    object dxBarButton11: TdxBarButton
      Action = acNewLoad
      Category = 3
    end
    object dxBarButton12: TdxBarButton
      Action = acDeleteLoad
      Category = 3
    end
    object dxBarButton13: TdxBarButton
      Action = acChangeLoadLayout
      Category = 3
    end
    object dxBarButton14: TdxBarButton
      Action = acLoadSummary
      Category = 3
    end
    object dxBarButton15: TdxBarButton
      Action = acFitAllColumnsInLoadView
      Category = 3
    end
    object dxBarButton16: TdxBarButton
      Action = acSetLoadStatusToComplete
      Category = 3
    end
    object dxBarButton17: TdxBarButton
      Action = acSetLoadStatusToPreliminary
      Category = 3
    end
    object dxBarButton18: TdxBarButton
      Action = acOpenInvoice
      Category = 3
    end
    object dxBarButton32: TdxBarButton
      Action = acCopyLoadToSales
      Caption = 'Kopiera last till f'#246'rs'#228'ljningsavrop'
      Category = 3
    end
    object dxBarButton33: TdxBarButton
      Action = acDeletePrelInvoice
      Category = 3
    end
    object dxBarButton37: TdxBarButton
      Action = acChangeLOonLoad
      Category = 3
    end
    object dxBarButton19: TdxBarButton
      Action = acPrintLastOrderDittVerk
      Category = 4
    end
    object dxBarButton20: TdxBarButton
      Action = acPrintLOAllaVerk
      Category = 4
    end
    object dxBarButton21: TdxBarButton
      Action = acChangeLOLayout
      Category = 4
    end
    object dxBarButton22: TdxBarButton
      Action = acFitAllColumnsInLOView
      Category = 4
    end
    object dxBarButton23: TdxBarButton
      Action = acPrintAddLODittVerk
      Category = 5
    end
    object dxBarButton24: TdxBarButton
      Action = acPrintAddLOAllaVerk
      Category = 5
    end
    object dxBarButton25: TdxBarButton
      Action = acChangeAddLOLayout
      Category = 5
    end
    object dxBarButton26: TdxBarButton
      Action = acFitAllColumnsInAddLOView
      Category = 5
    end
  end
  object ppmPrintReports: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarStatic2'
      end
      item
        Visible = True
        ItemName = 'bbPrintOrder'
      end
      item
        Visible = True
        ItemName = 'bbPrintLO'
      end
      item
        Visible = True
        ItemName = 'bbTally_Ver2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'bbPrintTrpOrder'
      end
      item
        Visible = True
        ItemName = 'dxBarButton34'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarStatic1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end
      item
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        Visible = True
        ItemName = 'dxBarButton35'
      end>
    UseOwnFont = False
    Left = 104
    Top = 88
  end
  object pmShortCuts: TPopupMenu
    AutoPopup = False
    Left = 680
    Top = 184
    object Booking1: TMenuItem
      Action = ac_Booking
    end
    object Stng1: TMenuItem
      Action = ac_Exit
    end
    object Skapafaktura1: TMenuItem
      Action = ac_MakeInvoice
    end
    object Uppdatera1: TMenuItem
      Action = ac_Refresh
    end
    object Nylast1: TMenuItem
      Action = acNewLoad
    end
    object ppnalast1: TMenuItem
      Action = acOpenLoad
    end
    object Skrivut1: TMenuItem
      Action = acPrintMeny
    end
    object SkrivutlastorderAllaverk1: TMenuItem
      Action = acPrintAddLOAllaVerk
    end
    object Skrivutlastorderdittverk1: TMenuItem
      Action = acPrintAddLODittVerk
    end
    object LoadOrder1: TMenuItem
      Action = acPrintLO
    end
    object SkrivutlastorderAllaverk2: TMenuItem
      Action = acPrintLOAllaVerk
    end
    object FljesedelUSA1: TMenuItem
      Action = acPrintTallyUSNote
    end
    object ransportOrder1: TMenuItem
      Action = acPrintTrpOrder
    end
    object Contract1: TMenuItem
      Action = acPrintContract
    end
    object ppnafaktura1: TMenuItem
      Action = acOpenInvoice
    end
    object UpdejfaktShiftF61: TMenuItem
      Action = acRefreshALLandNotInvoiced
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 512
    Top = 256
    Bitmap = {
      494C010109000D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003931420039314200393142003931420039314200393142003931
      4200393142003931420039314200393142003931420039314200393142000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084BDE700316BCE003163CE00316BCE003973CE003973CE00397B
      D6003984DE004284DE004294E7004294E7003994EF003194EF0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004294E70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A9CEF00398CEF004A9CEF005AADEF0063B5F7006BC6
      F7007BCEF70063BDF7006BC6F7005AC6FF00299CFF003163CE0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004A9CEF0063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF008CDEFF008CD6FF0094DEFF0084CEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF004A94E7003984DE004294E70052A5EF005AADEF0063B5
      F7006BC6F70063BDF7006BC6F7005AC6FF00299CFF003163CE007BCEF7003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF0094E7FF00A5E7FF00A5E7FF0084D6FF008CD6FF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE700397BD6004284DE004A94E700529CE7005AAD
      EF0063B5F70063BDF7006BC6F7005AC6FF00299CFF003163CE0073BDEF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF008CD6FF00B5EFFF00B5EFFF0094DEFF008CDEFF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD60084CEFF00428CE7003173D6004284DE004A94E700529CE70052A5
      EF005AADEF0063BDF7006BC6F7005AC6FF00299CFF003163CE0073B5EF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF004AA5F70063D6FF0073D6FF008CD6FF008CD6FF008CD6
      FF008CD6FF008CD6FF00A5E7FF00B5EFFF00B5EFFF0094DEFF008CD6FF003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007BADD600B5EFFF0094BDEF008CADE7008CADE70094BDEF009CC6EF009CC6
      EF009CCEF700A5D6FF00A5DEFF00A5DEFF009CD6FF0094CEFF00A5CEF7003931
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007BADD60063C6FF004A9CE700317BD6002963CE002963CE002963
      CE002963CE002963CE002963CE00317BD6004A9CE70063C6FF006B8CA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C00736B630000000000000000000000
      000000000000000000000000000084847B00ADADAD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A594840094949400736B630000000000000000000000
      00000000000000000000000000008C848400B5B5B5008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400949494007B6B630000000000000000000000
      00000000000000000000000000008C8C8400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A59484009C9C9C007B73730000000000000000000000
      00000000000000000000000000009C9C9400BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400BDBDBD00737373007B634A00000000000000
      0000000000000000000084736300B5B5B500BDBDBD008C735A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5948400E7E7E7008C8C8C0084847B007B6352007B63
      42007B634200847363008C8C8C00C6C6C600C6C6C600846B4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A5948400EFEFEF00ADADAD00949494008C8C
      8C008C8C8C009C9C9C00C6C6C600CECECE008C735A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5948400E7E7E700F7F7F700EFEF
      EF00EFEFEF00E7E7E700CECEC6008C735A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A59484008C7363009484
      6B0094846B008C735A008C735A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084424200844242008442
      4200844242008442420084424200844242008442420084424200844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000422100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C6630000844242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000042210000A52100004221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000C6840000C684
      0000C6840000C6840000C6840000C6840000C68400008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000C6840000F7FF
      FF00C6A50000844242008442420084424200A5A5A5008442420000FFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000A5E70000A5E70000A5
      E70000A5E70000A5E7000042210000A5210000A5210000A5210000A521000042
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6A5000084424200C6C6C600A5A5A5008442420000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000A5E70084E7E70084E7
      E70084E7E7000042210000A5210000A5210000A5210000A5210000A5210000A5
      2100004221000000000000A5E700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00C6C6C600C6C6C600C6C6C600A5A5A50084424200C6C6C60000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000A5E70084E7E70084E7
      E7000042210000A5210000A5210000A521000042210000A5210000A5210000A5
      21000042210084E7E70084E7E70000A5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      000000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF00F7FFFF00C6C6C600A5A5A50084424200C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700000000000000000000000000000000000000000000A5E700000000000042
      210000A5210000A5210000A521000042210000000000000000000042210000A5
      210000A521000042210084E7E70084E7E70000A5E70000A5E700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF0000FFFF0000FFFF00C663
      0000C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000000000000042210000A5
      210000A52100004221000042210084E7E70084E7E70084E7E7000042210000A5
      210000A521000042210084E7E70084E7E70084E7E70000A5E70000A5E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00C6840000A5A5A500C6C6C6008442420000FFFF00C684630000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000632100006321000063
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E7000000000000000000000000000042210000A5210000A5
      21000042210084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A521000042210084E7E70084E7E70084E7E70084E7E70000A5
      E700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C684
      0000F7FFFF008442420084424200A5A5A5008442420000FFFF00C684630000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000632100006321000063
      210000632100C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000422100004221000042
      21000000000084E7E70084E7E70084E7E70084E7E70084E7E70084E7E7000042
      210000A5210000A5210000422100000000000000000084E7E70084E7E70084E7
      E70000A5E70000A5E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00C6A50000C6A5000084424200C6C6C600A5A5A5008442420000FFFF00F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00006321000063
      2100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      00000000000000A5E70000A5E70084E7E70084E7E70084E7E70084E7E70084E7
      E7000042210000A5210000A521000042210084E7E7000000000084E7E70084E7
      E70084E7E70000A5E70000A5E700000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF00C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000063
      2100006321000063210000632100C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000042210000A5210000A52100004221000000000000000000000000000000
      000084E7E70084E7E70084E7E70000A5E7000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6840000F7FF
      FF00FFFFFF00F7FFFF00C6C6C600C6C6C600A5A5A5008442420000FFFF0000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF000063210000632100006321000063210000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C60000000000000000000000000000000000A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A5000042210000A5210000A5210000422100A5A5A500A5A5A5000000
      0000000000000000000084E7E70084E7E7000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844242008442
      4200844242008442420084424200844242008442420084424200F7CEA500F7CE
      A50000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000632100006321000063210000E7E700C6C6C60000E7
      E70000E7E70000632100006321000063210000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000000000F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF000042210000A5210000A5210000422100F7FFFF00F7FFFF000000
      0000FFFFFF000000000084E7E70084E7E7000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      00000000000000000000000000000000000000000000C6840000C6A50000FFFF
      FF00F7CEA500C6A50000C6A50000C6840000C6630000C663000084424200F7CE
      A50000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000632100006321000063210000632100C6C6C60000FF
      FF0000632100006321000063210000632100C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000000000C6C6
      C600A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A5000042210000A5210000A5210000422100A5A5A5000000
      0000FFFFFF000000000000A5E70084E7E7000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000632100006321000063
      210000632100006321000063210000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000042210000A5210000A5210000422100000000000000
      00000000000042E7E70042E7E70000A5E7000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF000063210000632100006321000063
      2100006321000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000A5210000A521000042210084E7
      E70042E7E70042E7E70042E7E70042E7E7000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000042210000422100004221000042210042E7
      E70042E7E70042E7E70042E7E70042E7E70000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000A5E70000A5
      E70042E7E70042E7E70042E7E70042E7E700000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000A5E70000A5E70042E7E70042E7E700000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A5E70000A5E700000000000031FF000031FF000031
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
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000063210000632100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000C6210000C62100006321000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000063210000E7630000E7630000C621000063
      2100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF000063210000E7630000E7630000E7630000E7630000C6
      210000632100C6C6C60000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FF000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FF000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6000063210000E7630000C6210000C6210000C6210000E7630000E7
      630000C6210000632100C6C6C600C6C6C60000E7E70000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000063210000E7630000E7630000E76300006321000063210000E7630000E7
      630000C6210000C621000063210000FFFF0000E7E70000E7E700000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C6C6C60000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000632100C6C6C600C6C6C6000063210000E7
      630000E7630000C6210000C62100006321000063210000E7E70000E7E7000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100004221000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E7000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00000000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF000063
      210000E7630000C6210000C621000063210000FFFF0000FFFF00C6C6C6000063
      210000E7630000E7630000E7630000C6210000C621000063210000E7E70000E7
      E700000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7E70000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FF000000FF00000000E7
      E70000E7E70000000000000000000000000000000000C6C6C6000063210000E7
      630000E7630000E7630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000063210000E7630000E7630000E7630000E7630000C621000063210000E7
      E70000E7E70000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E7000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00FF000000FF000000FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FF000000FF00000000E7
      E70000E7E70000E7E70000000000000000000000000000FFFF000063210000E7
      630000E763000063210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF000063210000E7630000E7630000E7630000E7630000C621000063
      210000E7E70000E7E70000000000000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF000042210000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000E7E700C6C6
      C60000E7E70000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6
      C60000E7E70000E7E70000E7E70000000000000000000063210000E7630000E7
      630000632100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000632100C6C6C60000E7630000E7630000E7630000C6
      21000063210000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF000000000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7
      E700C6C6C60000E7E70000E7E700000000000000000000FFFF000063210000E7
      63000063210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF00006321000063210000E7630000E7630000E7
      630000C621000063210000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100004221000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000C6C6C600C6C6C6000063
      2100C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000E7E7000063210000E7630000E7
      630000E7630000C62100006321000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000422100008421000042
      2100C6C6C600C6C6C600C6C6C600C6C6C60000E7E700C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000FF00000000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E7000063210000E7
      630000E7630000E7630000632100000000000000000000FFFF0000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF0000E7E70000E7E700C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700FF000000FF00
      0000FF000000C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E700000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000E7E700C6C6C60000E7
      E70000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E7000063
      210000E7630000E7630000632100000000000000000000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E700C6C6C60000E7E70000422100008421000042
      210000E7E700C6C6C60000E7E70000E7E70000E7E70000E7E70000E7E700C6C6
      C60000E7E70000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000000000000000000000
      0000000000000000000000FFFF0000000000C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E70000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E7000063210000E763000063210000000000000000000000000000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7E70000E7
      E700C6C6C60000E7E70000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E7000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E70000632100006321000000000000000000000000000000000000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7E70000E7
      E70000E7E700C6C6C60000E7E700000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF0000422100008421000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000E7
      E70000E7E70000E7E700C6C6C600000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      00000000000000FFFF0000FFFF00C6C6C60000FFFF0000422100008421000042
      210000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000E7E70000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF00C6C6C60000422100008421000042
      210000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000E7E70000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF00C6C6C60000FFFF0000FF
      FF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000422100004221000042
      2100C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000E7E700000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00C6C6C60000FF
      FF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000FFFF00C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFF000000000000000000F8001F00
      0000000000000000F0000F000000000000000000F0000F000000000000000000
      F0000F000000000000000000F0000F000000000000000000F0000F0000000000
      00000000F0000F000000000000000000F0000F000000000000000000F0000F00
      0000000000000000F0000F000000000000000000F0000F000000000000000000
      F0000F000000000000000000F8001F000000000000000000FC7E3F0000000000
      00000000FC7E3F000000000000000000FC7E3F000000000000000000FC7E3F00
      0000000000000000FC3C3F000000000000000000FC003F000000000000000000
      FE007F000000000000000000FF00FF000000000000000000FF81FF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF801FFFFF
      FFFFFF9FFFFFFFF9801FFFFFFFFFFF1FFFFFFFF1C000FF8000FFFE0FFFC7FFE3
      C0007F80007F8007FFC3FF87C0003F80003F8001FFC1FF0FC0001F80001F8000
      FFE0FE1FC0000F80000F80003FF07C3FC0000780000780001FFC307FC0000380
      000380000FFE00FFC00001800001800003FF01FFC00001800001F80001FF83FF
      C00001800001E00000FF01FFC00001800001C00000FE00FFC00001800001C000
      00FC187F800001C00001C00000F83C3FE00001E00001E00000F07F1FF00001F0
      0001FFFE00E0FF8FF80001F80001FFFE00C1FFEFFC0001FC0001FFFFC083FFFF
      FE0001FE0001FFFFF087FFFFFF0001FF0001FFFFFC8FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFF83FFFF3FFFFFFFFFFF80FFFE
      00FFFE1FFFFFFFFFFF007FFC007FFE0FFFFFFFFF80003F80007F8000FF8000FF
      80003F80003F80007F80007F80003F80003F80003F80003F80001F80001F8000
      1F80001F80000F80000F80000F80000F80000780000780000780000780000380
      0003800003800003800001800001800001800001800001800001800001800001
      8000018000018000018000018000018000018000018000018000018000018000
      01800001C00001C00001C00001C00001E00001E00001E00001E00001F00001F0
      0001F00001F00001F80001F80001F80001F80001FC0001FC0001FC0001FC0001
      FE0001FE0001FE0001FE0001FF0001FF0001FF0001FF0001FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmAvropGrid: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
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
      end
      item
        Visible = True
        ItemName = 'dxBarButton36'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
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
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end>
    UseOwnFont = False
    Left = 376
    Top = 208
  end
  object mtCompSelRows: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 208
    Top = 264
    object mtCompSelRowsSALESREGIONNO: TIntegerField
      FieldName = 'SALESREGIONNO'
    end
    object mtCompSelRowsLONo: TIntegerField
      FieldName = 'LONo'
    end
    object mtCompSelRowsClientNo: TIntegerField
      FieldName = 'ClientNo'
    end
    object mtCompSelRowsCurrencyNo: TIntegerField
      FieldName = 'CurrencyNo'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 256
    Top = 184
    PixelsPerInch = 96
    object cxStyleSilver: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
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
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object images1616: TImageList
    Left = 656
    Top = 256
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
  object pmLoads: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        Visible = True
        ItemName = 'dxBarButton37'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end>
    UseOwnFont = False
    Left = 200
    Top = 488
  end
  object pmLO: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end>
    UseOwnFont = False
    Left = 264
    Top = 488
  end
  object pmAddLO: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton25'
      end
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end>
    UseOwnFont = False
    Left = 137
    Top = 489
  end
  object SaveDialog1: TSaveDialog
    Left = 512
    Top = 200
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 376
    Top = 360
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 96
    Top = 192
  end
  object cds_Props: TFDQuery
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 376
    Top = 304
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
      OnChange = cds_PropsNewItemRowChange
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
      OnChange = cds_PropsOrderTypeNoChange
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
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdcxAvrop
    PopupMenus = <>
    Left = 736
    Top = 256
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 96
    Top = 240
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer3Timer
    Left = 96
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = dmVidaInvoice.sq_GetInvTexts
    Left = 824
    Top = 256
  end
  object mtOrders: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.63.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 0
    LocaleID = 0
    Left = 208
    Top = 312
    object mtOrdersOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  object siLangLinked_frmAvrop: TsiLangLinked
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
      'ListField')
    Left = 608
    Top = 344
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D004100760072006F007000010041007600
      72006F0070000100010001000D000A00500061006E0065006C00330001004C00
      4100530054004F0052004400450052000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004B005200
      5F0052004500460001004B00520020007200650066006500720065006E007300
      0100010001000D000A006700720064004C004F00440042005400610062006C00
      6500560069006500770031004C004F0001004C004F000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      310053005500500050004C0049004500520001005600650072006B0001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100530054004100540055005300010053007400610074007500
      73000100010001000D000A006700720064004C004F0044004200540061006200
      6C00650056006900650077003100500052004F00440055004300540001005000
      72006F00640075006B0074000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C0045004E004700
      5400480001004C00E4006E00670064000100010001000D000A00670072006400
      4C004F00440042005400610062006C006500560069006500770031004D003300
      010041004D0033000100010001000D000A006700720064004C004F0044004200
      5400610062006C0065005600690065007700310056004F004C0055004D004500
      01004B00760061006E00740069007400650074000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      56004F004C0055004E0049005400010056006F006C002E0065006E0068006500
      74000100010001000D000A006700720064004C004F0044004200540061006200
      6C00650056006900650077003100430055005200520045004E00430059000100
      560061006C007500740061000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005000520049004300
      4500010050007200690073000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031005000520049004300
      450055004E00490054000100500072006900730065006E006800650074000100
      010001000D000A006700720064004C004F00440042005400610062006C006500
      5600690065007700310053005500500050004C004900450052004E004F000100
      53005500500050004C004900450052004E004F000100010001000D000A006700
      720064004C004F00440042005400610062006C00650056006900650077003100
      50004B00470043004F0044004500010050006B0074006B006F00640001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100460052004F004D005700450045004B00010046007200E500
      6E0020007600650063006B0061000100010001000D000A006700720064004C00
      4F00440042005400610062006C0065005600690065007700310054004F005700
      450045004B000100540069006C006C0020007600650063006B00610001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100530048004900500054004F00010044006500730074006900
      6E006100740069006F006E00280069006E007400650072006E00290001000100
      01000D000A006700720064004C004F00440042005400610062006C0065005600
      6900650077003100440045005300540049004E004100540049004F004E000100
      440065007300740069006E006100740069006F006E000100010001000D000A00
      6700720064004C004F00440042005400610062006C0065005600690065007700
      3100430055005300540050004C0041004E004F0042004A004500430054004E00
      4F000100430055005300540050004C0041004E004F0042004A00450043005400
      4E004F000100010001000D000A006700720064004C004F004400420054006100
      62006C006500560069006500770031004F0042004A0045004300540054005900
      5000450001004F0042004A004500430054005400590050004500010001000100
      0D000A006700720064004C004F00440042005400610062006C00650056006900
      650077003100440045004C0049005600450052004500440001004C0065007600
      6500720065007200610074000100010001000D000A006700720064004C004F00
      440042005400610062006C006500560069006500770031004C004F0041004400
      49004E0047005F004C004F0043004100540049004F004E0001004C0061007300
      740073007400E4006C006C0065000100010001000D000A006700720064004C00
      4F00440042005400610062006C0065005600690065007700310055004E004900
      5100550045005200450043004F00520044004E004F00010055004E0049005100
      550045005200450043004F00520044004E004F000100010001000D000A005000
      61006E0065006C003200010041004400440020004C004F000100010001000D00
      0A006700720064004100640064004C004F00440042005400610062006C006500
      560069006500770031004B0052005F0052004500460001004B0052002D007200
      650066006500720065006E0073000100010001000D000A006700720064004100
      640064004C004F00440042005400610062006C00650056006900650077003100
      4C004F0001004C004F000100010001000D000A00670072006400410064006400
      4C004F00440042005400610062006C0065005600690065007700310055004E00
      49005100550045005200450043004F00520044004E004F00010055004E004900
      5100550045005200450043004F00520044004E004F000100010001000D000A00
      6700720064004100640064004C004F00440042005400610062006C0065005600
      690065007700310053005500500050004C004900450052000100560065007200
      6B000100010001000D000A006700720064004100640064004C004F0044004200
      5400610062006C00650056006900650077003100530054004100540055005300
      01005300740061007400750073000100010001000D000A006700720064004100
      640064004C004F00440042005400610062006C00650056006900650077003100
      500052004F0044005500430054000100500072006F00640075006B0074000100
      010001000D000A006700720064004100640064004C004F004400420054006100
      62006C006500560069006500770031004C0045004E0047005400480001004C00
      E4006E00670064000100010001000D000A006700720064004100640064004C00
      4F00440042005400610062006C006500560069006500770031004D0033000100
      41004D0033000100010001000D000A006700720064004100640064004C004F00
      440042005400610062006C0065005600690065007700310056004F004C005500
      4D00450001004B00760061006E00740069007400650074000100010001000D00
      0A006700720064004100640064004C004F00440042005400610062006C006500
      5600690065007700310056004F004C0055004E0049005400010056006F006C00
      2E0065006E006800650074000100010001000D000A0067007200640041006400
      64004C004F00440042005400610062006C006500560069006500770031004300
      55005200520045004E00430059000100560061006C0075007400610001000100
      01000D000A006700720064004100640064004C004F0044004200540061006200
      6C00650056006900650077003100500052004900430045000100500072006900
      73000100010001000D000A006700720064004100640064004C004F0044004200
      5400610062006C00650056006900650077003100500052004900430045005500
      4E00490054000100500072006900730065006E00680065007400010001000100
      0D000A006700720064004100640064004C004F00440042005400610062006C00
      65005600690065007700310053005500500050004C004900450052004E004F00
      010053005500500050004C004900450052004E004F000100010001000D000A00
      6700720064004100640064004C004F00440042005400610062006C0065005600
      690065007700310050004B00470043004F0044004500010050006B0074002E00
      6B006F0064000100010001000D000A006700720064004100640064004C004F00
      440042005400610062006C00650056006900650077003100460052004F004D00
      5700450045004B00010046007200E5006E0020007600650063006B0061000100
      010001000D000A006700720064004100640064004C004F004400420054006100
      62006C0065005600690065007700310054004F005700450045004B0001005400
      69006C006C0020007600650063006B0061000100010001000D000A0067007200
      64004100640064004C004F00440042005400610062006C006500560069006500
      77003100530048004900500054004F000100440065007300740069006E006100
      740069006F006E00280069006E007400650072006E0029000100010001000D00
      0A006700720064004100640064004C004F00440042005400610062006C006500
      560069006500770031004F0042004A0045004300540054005900500045000100
      4F0042004A0045004300540054005900500045000100010001000D000A006700
      720064004100640064004C004F00440042005400610062006C00650056006900
      650077003100440045004C0049005600450052004500440001004C0065007600
      6500720065007200610074000100010001000D000A0067007200640041006400
      64004C004F00440042005400610062006C006500560069006500770031004300
      5500530054004F004D004500520001004B0075006E0064000100010001000D00
      0A004C006100620065006C00310001005300F6006B0020006C00610073007400
      6E0072000100010001000D000A004C006100620065006C00380001005300F600
      6B00660061006B0074007500720061006E0072000100010001000D000A006300
      78006C006100620065006C004C006F00610064007300010049004E004C004500
      56004500520041004E005300450052000100010001000D000A00670072006400
      4C006F0061006400440042005400610062006C00650056006900650077003100
      530065006E006400650072004C006F0061006400530074006100740075007300
      01005300740061007400750073000100010001000D000A006700720064004C00
      6F0061006400440042005400610062006C006500560069006500770031004600
      4F004C004A00450053004500440045004C0001004600F6006C006A0065007300
      6500640065006C006E0072000100010001000D000A006700720064004C006F00
      61006400440042005400610062006C006500560069006500770031004C004F00
      01004C004F000100010001000D000A006700720064004C006F00610064004400
      42005400610062006C006500560069006500770031004C004F00410044004E00
      4F0001004C006100730074006E0072000100010001000D000A00670072006400
      4C006F0061006400440042005400610062006C00650056006900650077003100
      460053000100460053000100010001000D000A006700720064004C006F006100
      6400440042005400610062006C006500560069006500770031004C004F004100
      44004500440044004100540045000100550074006C0061007300740061006400
      0100010001000D000A006700720064004C006F00610064004400420054006100
      62006C006500560069006500770031004C004F00410044005F00490044000100
      4C006100730074002000490044000100010001000D000A006700720064004C00
      6F0061006400440042005400610062006C006500560069006500770031004100
      430054005F004D003300010041004D0033000100010001000D000A0067007200
      64004C006F0061006400440042005400610062006C0065005600690065007700
      31004E006F004F00660050006B00670073000100500061006B00650074000100
      010001000D000A006700720064004C006F006100640044004200540061006200
      6C0065005600690065007700310049004E005400450052004E0041004C005F00
      49004E0056004F004900430045004E004F00010049006E0074002E0066006100
      6B0074006E0072000100010001000D000A006700720064004C006F0061006400
      440042005400610062006C006500560069006500770031005000610063006B00
      61006700650045006E007400720079004F007000740069006F006E0001005500
      74006C0061007300740073007000650063000100010001000D000A0067007200
      64004C006F0061006400440042005400610062006C0065005600690065007700
      310049006E0076006F0069006300650054007900700065000100530065007200
      690065000100010001000D000A006700720064004C006F006100640044004200
      5400610062006C0065005600690065007700310049004E0056004F0049004300
      45005F004E004F000100460061006B0074007500720061006E00720001000100
      01000D000A006700720064004C006F0061006400440042005400610062006C00
      6500560069006500770031005000720065006600690078000100460061006B00
      74007500720061007000720065006600690078000100010001000D000A004C00
      6100620065006C00330001004D00610072006B006E00610064003A0001000100
      01000D000A004C006100620065006C00340001004600F60072007300E4006C00
      6A002E0072006500670069006F006E003A000100010001000D000A004C006100
      620065006C00350001005300F6006B0020004C004F004E0072003A0001000100
      01000D000A004C006100620065006C004B006C00690065006E00740001004B00
      75006E0064003A000100010001000D000A004C006100620065006C0037000100
      5300E4006C006A00670072007500700070003A000100010001000D000A004C00
      6100620065006C00360001005300F6006B002000450072002000720065006600
      3A000100010001000D000A0062004C006F006700010062004C006F0067000100
      010001000D000A0042007500740074006F006E003100010045006D0061006900
      6C00610020006C006F0067000100010001000D000A00630062004E006F007400
      49006E0076006F006900630065006400010045006A002000660061006B007400
      7500720065007200610074000100010001000D000A00720067004F0072006400
      6500720054007900700065004E006F0001004B006F006E007400720061006B00
      74000100010001000D000A0063006200530068006F00770041006C006C000100
      5600690073006100200061006C006C0061000100010001000D000A0067007200
      6400630078004100760072006F00700044004200420061006E00640065006400
      5400610062006C00650056006900650077003100530054004100540055005300
      01005300740061007400750073000100010001000D000A006700720064006300
      78004100760072006F00700044004200420061006E0064006500640054006100
      62006C006500560069006500770031004C004F0001004C004F00010001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C006500560069006500770031004F005200
      4400450052004E0055004D0042004500520001004F0072006400650072006E00
      72000100010001000D000A00670072006400630078004100760072006F007000
      44004200420061006E006400650064005400610062006C006500560069006500
      770031005200450046004500520045004E004300450001005200650066006500
      720065006E0073000100010001000D000A006700720064006300780041007600
      72006F00700044004200420061006E006400650064005400610062006C006500
      56006900650077003100460052004F004D005700450045004B00010046007200
      E5006E0020007600650063006B0061000100010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C0065005600690065007700310054004F005700450045004B000100
      540069006C006C0020007600650063006B0061000100010001000D000A006700
      72006400630078004100760072006F00700044004200420061006E0064006500
      64005400610062006C0065005600690065007700310043004C00490045004E00
      540001004B0075006E0064000100010001000D000A0067007200640063007800
      4100760072006F00700044004200420061006E00640065006400540061006200
      6C006500560069006500770031004100470045004E0054000100410067006500
      6E0074000100010001000D000A00670072006400630078004100760072006F00
      700044004200420061006E006400650064005400610062006C00650056006900
      6500770031004D00410052004B0001004D00E40072006B006E0069006E006700
      0100010001000D000A00670072006400630078004100760072006F0070004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100500052004F0044005500430054000100500072006F00640075006B007400
      0100010001000D000A00670072006400630078004100760072006F0070004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C0045004E0047005400480001004C00E4006E0067006400010001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310056004F00
      4C0055004D00450001004B00760061006E007400690074006500740001000100
      01000D000A00670072006400630078004100760072006F007000440042004200
      61006E006400650064005400610062006C006500560069006500770031005600
      4F004C0055004E0049005400010056006F006C002E0065006E00680065007400
      0100010001000D000A00670072006400630078004100760072006F0070004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100440045005300540049004E004100540049004F004E000100440065007300
      740069006E006100740069006F006E000100010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C006500560069006500770031004B0052005F005200450046000100
      4B0052002D007200650066006500720065006E0073000100010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C006500560069006500770031004F00520044004500
      52004E004F0001004F0052004400450052004E004F000100010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C0065005600690065007700310043004C0049004500
      4E0054004E004F00010043004C00490045004E0054004E004F00010001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310044004500
      5300540049004E004100540049004F004E004E004F0001004400450053005400
      49004E004100540049004F004E004E004F000100010001000D000A0067007200
      6400630078004100760072006F00700044004200420061006E00640065006400
      5400610062006C0065005600690065007700310055004E004900510055004500
      5200450043004F00520044004E004F0001005200610064002000490044000100
      010001000D000A00670072006400630078004100760072006F00700044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      530041004C004500530052004500470049004F004E004E004F00010053004100
      4C004500530052004500470049004F004E004E004F000100010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C006500560069006500770031004F00520044004500
      5200540059005000450001004F00520044004500520054005900500045000100
      010001000D000A00670072006400630078004100760072006F00700044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      430075007200720065006E00630079004E006F00010043007500720072006500
      6E00630079004E006F000100010001000D000A00670072006400630078004100
      760072006F00700044004200420061006E006400650064005400610062006C00
      6500560069006500770031004C004500560001004C0065007600650072006500
      7200610074000100010001000D000A0067007200640063007800410076007200
      6F00700044004200420061006E006400650064005400610062006C0065005600
      6900650077003100520045005300540001005200650073007400010001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310054007200
      6100640069006E0067000100540072006100640069006E006700010001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006500
      7100750065006E00630065004E006F0001005200610064007300740061007400
      750073000100010001000D000A00670072006400630078004100760072006F00
      700044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C006F00610064006500640050006B0067007300010045006A00
      2000660061006B00740075007200650072006100640065002000700061006B00
      650074000100010001000D000A00610063005F00450078006900740001005300
      7400E4006E00670020004600310032000100010001000D000A00610063005F00
      42006F006F006B0069006E006700010042006F006B006E0069006E0067002000
      460039000100010001000D000A00610063005F004D0061006B00650049006E00
      76006F0069006300650001005200650067006900730074007200650072006100
      2000660061006B0074007500720061002000460032000100010001000D000A00
      610063005F005200650066007200650073006800010055007000700064006100
      74006500720061002000460036000100010001000D000A006100630050007200
      69006E00740043006F006E0074007200610063007400010043006F006E007400
      72006100630074000100010001000D000A00610063005000720069006E007400
      4C004F0001004C006F006100640020004F007200640065007200010001000100
      0D000A00610063005000720069006E0074005400720070004F00720064006500
      720001005400720061006E00730070006F007200740020004F00720064006500
      72000100010001000D000A00610063004F00700065006E004C006F0061006400
      0100D600700070006E00610020006C0061007300740020005300680069006600
      74002B00460039000100010001000D000A00610063004E00650077004C006F00
      6100640001004E00790020006C0061007300740020004300740072006C002B00
      49006E0073000100010001000D000A0061006300440065006C00650074006500
      4C006F0061006400010054006100200062006F007200740020006C0061007300
      74000100010001000D000A00610063004300680061006E00670065004C006F00
      610064004C00610079006F00750074000100C4006E0064007200610020007400
      6100620065006C006C00610079006F00750074000100010001000D000A006100
      63005000720069006E007400540061006C006C007900550053004E006F007400
      650001004600F6006C006A00650073006500640065006C002000550053004100
      0100010001000D000A00610063005300650074004C004F005300740061007400
      7500730054006F00430061006E00630065006C0001005300E400740074002000
      7300740061007400750073002000740069006C006C00200041006E006E007500
      6C0065007200610064000100010001000D000A00610063005300650074004C00
      4F0053007400610074007500730054006F0041006B0074006900760001005300
      E4007400740020007300740061007400750073002000740069006C006C002000
      41006B007400690076000100010001000D000A00610063005300650074004C00
      4F0053007400610074007500730054006F0043006F006D0070006C0065007400
      650001005300E400740074002000730074006100740075007300200074006900
      6C006C0020004100760073006C0075007400610064000100010001000D000A00
      6100630043007500730074006F006D0069007A0065004100760072006F007000
      47007200690064000100C4006E00640072006100200074006100620065006C00
      6C00610079006F00750074000100010001000D000A0061006300410076007200
      6F00700043006F006C006C00610070007300650041006C006C0001004B006F00
      6C006C006100700073006100200061006C006C0061000100010001000D000A00
      610063004100760072006F00700045007800700061006E00640041006C006C00
      010045007800700061006E006400650072006100200061006C006C0061000100
      010001000D000A0061006300530068006F007700470072006F00750070004200
      790042006F0078000100470072007500700070006500720069006E0067007300
      72007500740061000100010001000D000A006100630046006900740041006C00
      6C0043006F006C0075006D006E00730049006E004100760072006F0070005600
      69006500770001004100750074006F006D0061007400690073006B0020006B00
      6F006C0075006D006E00620072006500640064000100010001000D000A006100
      63005000720069006E0074004600530001004600F6006C006A00650073006500
      640065006C000100010001000D000A00610063004C006F006100640053007500
      6D006D006100720079000100530075006D006D006500720069006E0067000100
      010001000D000A006100630046006900740041006C006C0043006F006C007500
      6D006E00730049006E004C006F00610064005600690065007700010041006C00
      6C00610020006B006F006C0075006D006E00650072002000730079006E006C00
      690067006100200069002000760079006E000100010001000D000A0061006300
      5300650074004C006F006100640053007400610074007500730054006F005000
      720065006C0069006D0069006E0061007200790001005300E400740074002000
      7300740061007400750073002000740069006C006C0020007000720065006C00
      69006D0069006E00E40072000100010001000D000A0061006300530065007400
      4C006F006100640053007400610074007500730054006F0043006F006D007000
      6C0065007400650001005300E400740074002000730074006100740075007300
      2000740069006C006C0020006100760073006C00750074006100640001000100
      01000D000A00610063004F00700065006E0049006E0076006F00690063006500
      0100D600700070006E0061002000660061006B00740075007200610020000100
      010001000D000A00610063005000720069006E0074004C006100730074004F00
      720064006500720044006900740074005600650072006B00010053006B007200
      6900760020007500740020006C006100730074006F0072006400650072002000
      2800640069007400740020007600650072006B0029000100010001000D000A00
      610063005000720069006E0074004C004F0041006C006C006100560065007200
      6B00010053006B0072006900760020007500740020006C006100730074006F00
      72006400650072002000280041006C006C00610020007600650072006B002900
      0100010001000D000A00610063004300680061006E00670065004C004F004C00
      610079006F00750074000100C4006E0064007200610020007400610062006500
      6C006C0020006C00610079006F00750074000100010001000D000A0061006300
      46006900740041006C006C0043006F006C0075006D006E00730049006E004C00
      4F0056006900650077000100520079006D00200061006C006C00610020006B00
      6F006C0075006D006E0065007200200069002000760079006E00010001000100
      0D000A006100630046006900740041006C006C0043006F006C0075006D006E00
      730049006E004100640064004C004F0056006900650077000100520079006D00
      200061006C006C00610020006B006F006C0075006D006E006500720020006900
      2000760079006E000100010001000D000A00610063005000720069006E007400
      4100640064004C004F0044006900740074005600650072006B00010053006B00
      72006900760020007500740020006C006100730074006F007200640065007200
      20002800640069007400740020007600650072006B0029000100010001000D00
      0A00610063005000720069006E0074004100640064004C004F0041006C006C00
      61005600650072006B00010053006B0072006900760020007500740020006C00
      6100730074006F0072006400650072002000280041006C006C00610020007600
      650072006B0029000100010001000D000A00610063004300680061006E006700
      65004100640064004C004F004C00610079006F00750074000100C4006E006400
      7200610020006C00610079006F00750074000100010001000D000A0061006300
      520065006600720065007300680041004C004C00010055007000700064006100
      7400650072006100200061006C006C0061000100010001000D000A0061006300
      520065006600720065007300680041004C004C0061006E0064004E006F007400
      49006E0076006F00690063006500640001005500700064002E00200065006A00
      2000660061006B0074002000530068006900660074002B004600360001000100
      01000D000A006100630047007200750070007000530075006D006D0065007200
      69006E006700010047007200750070007000730075006D006D00650072006900
      6E0067000100010001000D000A00610063004500780070006F00720074005400
      6F0045007800630065006C0001004500780070006F0072007400650072006100
      2000740069006C006C00200065007800630065006C0020004600310031000100
      010001000D000A006100630045006D00610069006C0061005400720070004F00
      720064006500720001005400720061006E00730070006F00720074006F007200
      6400650072000100010001000D000A006100630045006D00610069006C006100
      4600530001004600F6006C006A00650073006500640065006C00010001000100
      0D000A006100630045006D00610069006C0061004C004F0001004C0061007300
      74006F0072006400650072000100010001000D000A006100630045006D006100
      69006C006100460053005F00550053004100010045006D00610069006C006100
      20004600F6006C006A0065007300650064006C00650020005500530041000100
      010001000D000A006100630043006F00700079004C006F006100640054006F00
      530061006C006500730001006100630043006F00700079004C006F0061006400
      54006F00530061006C00650073000100010001000D000A006100630044006500
      6C006500740065005000720065006C0049006E0076006F006900630065000100
      54006100200062006F007200740020007000720065006C0069006D0069006E00
      E40072002000660061006B0074007500720061000100010001000D000A006100
      63005400720070004F0072006400650072004100760072006F00700001005400
      720061006E00730070006F00720074006F007200640065007200200044004B00
      200028006100760072006F00700029000100010001000D000A00610063004500
      6D00610069006C0061005400720070004F007200640065007200410076007200
      6F00700044004B00010045006D00610069006C00610020007400720070006F00
      7200640065007200200044004B00200028006100760072006F00700029000100
      010001000D000A00610063005000720069006E0074004D0065006E0079000100
      53006B007200690076002000750074002000460038000100010001000D000A00
      6100630053006500740053007400610074007500730054006F0053006B006500
      7000700061007400010053006500740020007300740061007400750073002000
      740069006C006C00200053006B00650070007000610074000100010001000D00
      0A00610063004300680061006E00670065004C004F006F006E004C006F006100
      6400010042007900740020004C004F0020006E0075006D006D00650072002000
      690020006D00610072006B00650072006100640020006C006100730074000100
      010001000D000A00610063004500780070004C006F006100640001005300E400
      6E006400200069006E006C00650076002E002000740069006C006C0020004800
      540046000100010001000D000A006100630047006500740050006B0067005300
      740061007400750073004F006600480061006D00700065006E00010049006D00
      70006F00720074006500720061002000700061006B0065007400730074006100
      740075007300260026006C00650076006500720061006E007300650072000100
      010001000D000A00610063004E0065007700440065006C006900760065007200
      790052006500710075006500730074000100480061006D00700065006E002000
      73007000650063000100010001000D000A00610063004D006F00760065005000
      6B006700730054006F0049006E00760041006E006400440065006C0065007400
      65004C006F0061006400010046006C007900740074006100200061006C006C00
      61002000700061006B00650074002000740069006C006C0020006C0061006700
      650072000100010001000D000A00640078004200610072004D0061006E006100
      67006500720031004200610072003100010043007500730074006F006D002000
      31000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031004200610072003200010043007500730074006F006D0020003200
      0100010001000D000A0053007000610063006500010020000100010001000D00
      0A00620062005000720069006E0074004F00720064006500720001004B006F00
      6E007400720061006B0074000100010001000D000A0062006200500072006900
      6E0074004C004F0001004C006100730074006F00720064006500720001000100
      01000D000A00620062005000720069006E0074004C006F006100640001004600
      F6006C006A00650073006500640065006C000100010001000D000A0062006200
      5000720069006E0074005400720070004F007200640065007200010054007200
      61006E00730070006F00720074006F0072006400650072000100010001000D00
      0A00640078004200610072005300740061007400690063003100010045006D00
      610069006C0061000100010001000D000A006400780042006100720053007400
      61007400690063003200010053006B0072006900760020007500740001000100
      01000D000A006400780042006100720042007500740074006F006E0033003200
      01004B006F007000690065007200610020006C00610073007400200074006900
      6C006C0020006600F60072007300E4006C006A006E0069006E00670073006100
      760072006F0070000100010001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00530070006100630065000100
      2000010001000D000A0064007800420061007200530074006100740069006300
      3100010045006D00610069006C006100010001000D000A006400780042006100
      72005300740061007400690063003200010053006B0072006900760020007500
      7400010001000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A006D007400
      43006F006D007000530065006C0052006F0077007300530041004C0045005300
      52004500470049004F004E004E004F000100530041004C004500530052004500
      470049004F004E004E004F00010001000D000A006D00740043006F006D007000
      530065006C0052006F00770073004C004F004E006F0001004C004F004E006F00
      010001000D000A006D00740043006F006D007000530065006C0052006F007700
      730043006C00690065006E0074004E006F00010043006C00690065006E007400
      4E006F00010001000D000A006D00740043006F006D007000530065006C005200
      6F0077007300430075007200720065006E00630079004E006F00010043007500
      7200720065006E00630079004E006F00010001000D000A006300640073005F00
      500072006F007000730055007300650072004900440001005500730065007200
      49004400010001000D000A006300640073005F00500072006F00700073004600
      6F0072006D00010046006F0072006D00010001000D000A006300640073005F00
      500072006F00700073005600650072006B004E006F0001005600650072006B00
      4E006F00010001000D000A006300640073005F00500072006F00700073004F00
      77006E00650072004E006F0001004F0077006E00650072004E006F0001000100
      0D000A006300640073005F00500072006F00700073005000490050004E006F00
      01005000490050004E006F00010001000D000A006300640073005F0050007200
      6F00700073004C00490050004E006F0001004C00490050004E006F0001000100
      0D000A006300640073005F00500072006F007000730049006E00700075007400
      4F007000740069006F006E00010049006E007000750074004F00700074006900
      6F006E00010001000D000A006300640073005F00500072006F00700073005200
      6500670050006F0069006E0074004E006F00010052006500670050006F006900
      6E0074004E006F00010001000D000A006300640073005F00500072006F007000
      7300520065006700440061007400650001005200650067004400610074006500
      010001000D000A006300640073005F00500072006F007000730043006F007000
      7900500063007300010043006F0070007900500063007300010001000D000A00
      6300640073005F00500072006F0070007300520075006E004E006F0001005200
      75006E004E006F00010001000D000A006300640073005F00500072006F007000
      7300500072006F00640075006300650072004E006F000100500072006F006400
      75006300650072004E006F00010001000D000A006300640073005F0050007200
      6F00700073004100750074006F0043006F006C00570069006400740068000100
      4100750074006F0043006F006C0057006900640074006800010001000D000A00
      6300640073005F00500072006F007000730053007500700070006C0069006500
      720043006F0064006500010053007500700070006C0069006500720043006F00
      64006500010001000D000A006300640073005F00500072006F00700073004C00
      65006E006700740068004F007000740069006F006E0001004C0065006E006700
      740068004F007000740069006F006E00010001000D000A006300640073005F00
      500072006F00700073004C0065006E00670074006800470072006F0075007000
      4E006F0001004C0065006E00670074006800470072006F00750070004E006F00
      010001000D000A006300640073005F00500072006F00700073004E0065007700
      4900740065006D0052006F00770001004E00650077004900740065006D005200
      6F007700010001000D000A006300640073005F00500072006F00700073005300
      61006C006500730052006500670069006F006E004E006F000100530061006C00
      6500730052006500670069006F006E004E006F00010001000D000A0063006400
      73005F00500072006F00700073004D00610072006B0065007400520065006700
      69006F006E004E006F0001004D00610072006B00650074005200650067006900
      6F006E004E006F00010001000D000A006300640073005F00500072006F007000
      73004F00720064006500720054007900700065004E006F0001004F0072006400
      6500720054007900700065004E006F00010001000D000A006300640073005F00
      500072006F007000730053007400610074007500730001005300740061007400
      75007300010001000D000A006300640073005F00500072006F00700073004600
      69006C007400650072004F007200640065007200440061007400650001004600
      69006C007400650072004F007200640065007200440061007400650001000100
      0D000A006300640073005F00500072006F007000730053007400610072007400
      50006500720069006F0064000100530074006100720074005000650072006900
      6F006400010001000D000A006300640073005F00500072006F00700073004500
      6E00640050006500720069006F006400010045006E0064005000650072006900
      6F006400010001000D000A006300640073005F00500072006F00700073004300
      6C00690065006E0074004E006F00010043006C00690065006E0074004E006F00
      010001000D000A006300640073005F00500072006F0070007300530061006C00
      6500730050006500720073006F006E004E006F000100530061006C0065007300
      50006500720073006F006E004E006F00010001000D000A006300640073005F00
      500072006F00700073005600650072006B0053007500700070006C0069006500
      72004E006F0001005600650072006B0053007500700070006C00690065007200
      4E006F00010001000D000A006300640073005F00500072006F00700073005600
      650072006B004B0075006E0064004E006F0001005600650072006B004B007500
      6E0064004E006F00010001000D000A006300640073005F00500072006F007000
      73004C004F004F0062006A00650063007400540079007000650001004C004F00
      4F0062006A006500630074005400790070006500010001000D000A0063006400
      73005F00500072006F007000730042006100720043006F00640065004E006F00
      010042006100720043006F00640065004E006F00010001000D000A0063006400
      73005F00500072006F0070007300470072006100640065005300740061006D00
      70004E006F000100470072006100640065005300740061006D0070004E006F00
      010001000D000A006300640073005F00500072006F007000730056006F006C00
      75006D00650055006E00690074004E006F00010056006F006C0075006D006500
      55006E00690074004E006F00010001000D000A006300640073005F0050007200
      6F00700073004C0065006E0067007400680046006F0072006D00610074004E00
      6F0001004C0065006E0067007400680046006F0072006D00610074004E006F00
      010001000D000A006300640073005F00500072006F00700073004C0065006E00
      67007400680056006F006C0055006E00690074004E006F0001004C0065006E00
      67007400680056006F006C0055006E00690074004E006F00010001000D000A00
      6300640073005F00500072006F0070007300470072006F007500700042007900
      42006F0078000100470072006F00750070004200790042006F00780001000100
      0D000A006300640073005F00500072006F0070007300470072006F0075007000
      530075006D006D006100720079000100470072006F0075007000530075006D00
      6D00610072007900010001000D000A006300640073005F00500072006F007000
      73004100670065006E0074004E006F0001004100670065006E0074004E006F00
      010001000D000A006300640073005F00500072006F00700073004C006F006100
      640069006E0067004C006F0063006100740069006F006E004E006F0001004C00
      6F006100640069006E0067004C006F0063006100740069006F006E004E006F00
      010001000D000A006300640073005F00500072006F0070007300530068006900
      70007000650072004E006F00010053006800690070007000650072004E006F00
      010001000D000A006300640073005F00500072006F007000730042006F006F00
      6B0069006E00670054007900700065004E006F00010042006F006F006B006900
      6E00670054007900700065004E006F00010001000D000A006300640073005F00
      500072006F007000730043007500730074006F006D00650072004E006F000100
      43007500730074006F006D00650072004E006F00010001000D000A0063006400
      73005F00500072006F0070007300530068006F007700500072006F0064007500
      630074000100530068006F007700500072006F00640075006300740001000100
      0D000A006300640073005F00500072006F00700073004D00610072006B006E00
      6100640001004D00610072006B006E0061006400010001000D000A0063006400
      73005F00500072006F00700073004B0075006E00640001004B0075006E006400
      010001000D000A006300640073005F00500072006F0070007300530052000100
      53005200010001000D000A006300640073005F00500072006F00700073005300
      61006C006A00670072007500700070000100530061006C006A00670072007500
      70007000010001000D000A006D0074004F00720064006500720073004F007200
      6400650072004E006F0001004F0072006400650072004E006F00010001000D00
      0A007300740046006F006E00740073005F0055006E00690063006F0064006500
      0D000A005400660072006D004100760072006F00700001004D00530020005300
      61006E00730020005300650072006900660001004D0053002000530061006E00
      730020005300650072006900660001005400610068006F006D0061000D000A00
      500061006E0065006C003300010041007200690061006C000100010054006100
      68006F006D0061000D000A00500061006E0065006C0032000100410072006900
      61006C00010001005400610068006F006D0061000D000A00500061006E006500
      6C004100760072006F0070004C006F0061006400010041007200690061006C00
      010001005400610068006F006D0061000D000A00630078004200750074007400
      6F006E003100010041007200690061006C00010001005400610068006F006D00
      61000D000A006300780042007500740074006F006E0032000100410072006900
      61006C00010001005400610068006F006D0061000D000A006300780042007500
      740074006F006E003300010041007200690061006C0001000100540061006800
      6F006D0061000D000A006300780042007500740074006F006E00340001004100
      7200690061006C00010001005400610068006F006D0061000D000A0063007800
      42007500740074006F006E003500010041007200690061006C00010001005400
      610068006F006D0061000D000A00440042005200690063006800450064006900
      74005F0049006E0076006F00690063006500540065007800740001004D005300
      2000530061006E00730020005300650072006900660001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      7200310001005300650067006F00650020005500490001000100540061006800
      6F006D0061000D000A00640078004200610072004D0061006E00610067006500
      72003100420061007200310001005300650067006F0065002000550049000100
      01005400610068006F006D0061000D000A00640078004200610072004D006100
      6E0061006700650072003100420061007200320001005300650067006F006500
      200055004900010001005400610068006F006D0061000D000A00700070006D00
      5000720069006E0074005200650070006F007200740073000100530065006700
      6F006500200055004900010001005400610068006F006D0061000D000A007000
      6D004100760072006F007000470072006900640001005300650067006F006500
      200055004900010001005400610068006F006D0061000D000A00630078005300
      740079006C006500530069006C0076006500720001005400610068006F006D00
      6100010001005400610068006F006D0061000D000A0063007800530074007900
      6C00650042006C007500650001005400610068006F006D006100010001005400
      610068006F006D0061000D000A00630078005300740079006C00650059006500
      6C006C006F00770001005400610068006F006D00610001000100540061006800
      6F006D0061000D000A00630078005300740079006C0065005200650064000100
      4D0053002000530061006E007300200053006500720069006600010001005400
      610068006F006D0061000D000A0070006D004C006F0061006400730001005300
      650067006F006500200055004900010001005400610068006F006D0061000D00
      0A0070006D004C004F0001005300650067006F00650020005500490001000100
      5400610068006F006D0061000D000A0070006D004100640064004C004F000100
      5300650067006F006500200055004900010001005400610068006F006D006100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A006D004C006F0067002E004C0069006E00
      6500730001006D004C006F006700010001000D000A0064007800420061007200
      4D0061006E00610067006500720031002E00430061007400650067006F007200
      6900650073000100440065006600610075006C0074002C005000720069006E00
      740042007500740074006F006E002C004100760072006F007000470072006400
      2C004C006F006100640073002C004C004F002C004100640064004C004F000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0067007200
      64004C004F00440042005400610062006C006500560069006500770031005300
      540041005400550053002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D006500010054006300780049006D006100
      6700650043006F006D0062006F0042006F007800500072006F00700065007200
      7400690065007300010001000D000A006700720064004100640064004C004F00
      440042005400610062006C006500560069006500770031005300540041005400
      550053002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D006500010054006300780049006D006100670065004300
      6F006D0062006F0042006F007800500072006F00700065007200740069006500
      7300010001000D000A006700720064004C006F00610064004400420054006100
      62006C00650056006900650077003100530065006E006400650072004C006F00
      610064005300740061007400750073002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      49006D0061006700650043006F006D0062006F0042006F007800500072006F00
      7000650072007400690065007300010001000D000A006700720064004C006F00
      61006400440042005400610062006C0065005600690065007700310046004F00
      4C004A00450053004500440045004C002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064004C006F0061006400440042005400610062006C00
      6500560069006500770031004C004F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064004C006F0061006400440042005400610062006C00
      6500560069006500770031004C004F00410044004E004F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064004C006F006100640044004200
      5400610062006C00650056006900650077003100460053002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064004C006F006100640044004200
      5400610062006C006500560069006500770031004C004F004100440045004400
      44004100540045002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004C006F0061006400440042005400610062006C006500560069006500
      770031004C004F00410044005F00490044002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004C006F006100640044004200540061006200
      6C006500560069006500770031004100430054005F004D0033002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004C006F00610064004400
      42005400610062006C006500560069006500770031004E006F004F0066005000
      6B00670073002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D006500010054006300780043007500720072006500
      6E00630079004500640069007400500072006F00700065007200740069006500
      7300010001000D000A006700720064004C006F00610064004400420054006100
      62006C0065005600690065007700310049004E005400450052004E0041004C00
      5F0049004E0056004F004900430045004E004F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064004C006F00610064004400420054006100
      62006C006500560069006500770031005000610063006B006100670065004500
      6E007400720079004F007000740069006F006E002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B006500640001005400720075006500010001000D000A00670072006400
      4C006F0061006400440042005400610062006C00650056006900650077003100
      5000610063006B0061006700650045006E007400720079004F00700074006900
      6F006E002E00500072006F0070006500720074006900650073002E0044006900
      730070006C006100790055006E0063006800650063006B006500640001004600
      61006C0073006500010001000D000A006700720064004C006F00610064004400
      42005400610062006C006500560069006500770031005000610063006B006100
      6700650045006E007400720079004F007000740069006F006E002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      6500010054006300780043006800650063006B0042006F007800500072006F00
      7000650072007400690065007300010001000D000A006700720064004C006F00
      61006400440042005400610062006C0065005600690065007700310049006E00
      76006F0069006300650054007900700065002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004C006F006100640044004200540061006200
      6C0065005600690065007700310049004E0056004F004900430045005F004E00
      4F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064004C00
      6F0061006400440042005400610062006C006500560069006500770031005000
      720065006600690078002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      6C0063004D00610072006B006E00610064002E00500072006F00700065007200
      74006900650073002E004B00650079004600690065006C0064004E0061006D00
      6500730001004D00610072006B006500740052006500670069006F006E004E00
      6F00010001000D000A006C0063004D00610072006B006E00610064002E005000
      72006F0070006500720074006900650073002E004C0069007300740046006900
      65006C0064004E0061006D006500730001004D00610072006B00650074005200
      6500670069006F006E004E0061006D006500010001000D000A00630062004E00
      6F00740049006E0076006F0069006300650064002E00500072006F0070006500
      720074006900650073002E0044006900730070006C0061007900430068006500
      63006B006500640001005400720075006500010001000D000A00630062004E00
      6F00740049006E0076006F0069006300650064002E00500072006F0070006500
      720074006900650073002E0044006900730070006C006100790055006E006300
      6800650063006B00650064000100460061006C0073006500010001000D000A00
      63006200530068006F00770041006C006C002E00500072006F00700065007200
      74006900650073002E0044006900730070006C00610079004300680065006300
      6B006500640001005400720075006500010001000D000A006300620053006800
      6F00770041006C006C002E00500072006F007000650072007400690065007300
      2E0044006900730070006C006100790055006E0063006800650063006B006500
      64000100460061006C0073006500010001000D000A006C006300530061006C00
      6A00670072007500700070002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      4D00610072006B006500740052006500670069006F006E004E006F0001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053005400
      41005400550053002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D006500010054006300780049006D0061006700
      650043006F006D0062006F0042006F007800500072006F007000650072007400
      690065007300010001000D000A00670072006400630078004100760072006F00
      700044004200420061006E006400650064005400610062006C00650056006900
      6500770031004C004F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C006500560069006500770031004F00520044004500
      52004E0055004D004200450052002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310052004500
      46004500520045004E00430045002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310046005200
      4F004D005700450045004B002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00670072006400630078004100760072006F00700044004200420061006E00
      6400650064005400610062006C0065005600690065007700310054004F005700
      450045004B002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      6400630078004100760072006F00700044004200420061006E00640065006400
      5400610062006C0065005600690065007700310043004C00490045004E005400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640063007800
      4100760072006F00700044004200420061006E00640065006400540061006200
      6C006500560069006500770031004100470045004E0054002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400630078004100760072006F00
      700044004200420061006E006400650064005400610062006C00650056006900
      6500770031004D00410052004B002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00670072006400630078004100760072006F0070004400420042006100
      6E006400650064005400610062006C0065005600690065007700310050005200
      4F0044005500430054002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C006500560069006500770031004C0045004E004700
      540048002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C0065005600690065007700310056004F004C0055004D0045002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D0065000100540063007800430061006C00630045006400690074005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C0065005600690065007700310056004F004C0055004E0049005400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640063007800
      4100760072006F00700044004200420061006E00640065006400540061006200
      6C00650056006900650077003100440045005300540049004E00410054004900
      4F004E002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C006500560069006500770031004B0052005F005200450046002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A00670072006400630078004100
      760072006F00700044004200420061006E006400650064005400610062006C00
      6500560069006500770031004F0052004400450052004E004F002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A0067007200640063007800410076007200
      6F00700044004200420061006E006400650064005400610062006C0065005600
      690065007700310043004C00490045004E0054004E004F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A00670072006400630078004100760072006F00
      700044004200420061006E006400650064005400610062006C00650056006900
      650077003100440045005300540049004E004100540049004F004E004E004F00
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A0067007200640063007800
      4100760072006F00700044004200420061006E00640065006400540061006200
      6C0065005600690065007700310055004E004900510055004500520045004300
      4F00520044004E004F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C00650056006900650077003100530041004C004500
      530052004500470049004F004E004E004F002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400630078004100760072006F00700044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      4F00520044004500520054005900500045002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A00670072006400630078004100760072006F00700044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      430075007200720065006E00630079004E006F002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A00670072006400630078004100760072006F0070004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      31004C00450056002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004300750072007200
      65006E00630079004500640069007400500072006F0070006500720074006900
      65007300010001000D000A00670072006400630078004100760072006F007000
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310052004500530054002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D006500010054006300780043007500
      7200720065006E00630079004500640069007400500072006F00700065007200
      7400690065007300010001000D000A0067007200640063007800410076007200
      6F00700044004200420061006E006400650064005400610062006C0065005600
      6900650077003100540072006100640069006E0067002E00500072006F007000
      6500720074006900650073002E0044006900730070006C006100790043006800
      650063006B006500640001005400720075006500010001000D000A0067007200
      6400630078004100760072006F00700044004200420061006E00640065006400
      5400610062006C00650056006900650077003100540072006100640069006E00
      67002E00500072006F0070006500720074006900650073002E00440069007300
      70006C006100790055006E0063006800650063006B0065006400010046006100
      6C0073006500010001000D000A00670072006400630078004100760072006F00
      700044004200420061006E006400650064005400610062006C00650056006900
      650077003100540072006100640069006E0067002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      6300780043006800650063006B0042006F007800500072006F00700065007200
      7400690065007300010001000D000A0067007200640063007800410076007200
      6F00700044004200420061006E006400650064005400610062006C0065005600
      6900650077003100530065007100750065006E00630065004E006F002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D006500010054006300780049006D0061006700650043006F006D0062006F00
      42006F007800500072006F007000650072007400690065007300010001000D00
      0A00670072006400630078004100760072006F00700044004200420061006E00
      6400650064005400610062006C006500560069006500770031004C006F006100
      64006500640050006B00670073002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A00640078004200610072004D0061006E00610067006500720031004200
      6100720031002E004F006C0064004E0061006D00650001004300750073007400
      6F006D0020003100010001000D000A00640078004200610072004D0061006E00
      6100670065007200310042006100720032002E004F006C0064004E0061006D00
      6500010043007500730074006F006D0020003200010001000D000A006D007400
      43006F006D007000530065006C0052006F00770073002E005600650072007300
      69006F006E00010037002E00360033002E003000300020005300740061006E00
      64006100720064002000450064006900740069006F006E00010001000D000A00
      6300640073005F00500072006F00700073002E0043006F006E006E0065006300
      740069006F006E004E0061006D0065000100560049005300010001000D000A00
      6300640073005F00500072006F00700073005500730065007200490044002E00
      4F0072006900670069006E000100550073006500720049004400010001000D00
      0A006300640073005F00500072006F007000730046006F0072006D002E004F00
      72006900670069006E00010046006F0072006D00010001000D000A0063006400
      73005F00500072006F00700073004E0061006D0065002E004F00720069006700
      69006E0001004E0061006D006500010001000D000A006300640073005F005000
      72006F00700073005600650072006B004E006F002E004F007200690067006900
      6E0001005600650072006B004E006F00010001000D000A006300640073005F00
      500072006F00700073004F0077006E00650072004E006F002E004F0072006900
      670069006E0001004F0077006E00650072004E006F00010001000D000A006300
      640073005F00500072006F00700073005000490050004E006F002E004F007200
      6900670069006E0001005000490050004E006F00010001000D000A0063006400
      73005F00500072006F00700073004C00490050004E006F002E004F0072006900
      670069006E0001004C00490050004E006F00010001000D000A00630064007300
      5F00500072006F007000730049006E007000750074004F007000740069006F00
      6E002E004F0072006900670069006E00010049006E007000750074004F007000
      740069006F006E00010001000D000A006300640073005F00500072006F007000
      730052006500670050006F0069006E0074004E006F002E004F00720069006700
      69006E00010052006500670050006F0069006E0074004E006F00010001000D00
      0A006300640073005F00500072006F0070007300520065006700440061007400
      65002E004F0072006900670069006E0001005200650067004400610074006500
      010001000D000A006300640073005F00500072006F007000730043006F007000
      79005000630073002E004F0072006900670069006E00010043006F0070007900
      500063007300010001000D000A006300640073005F00500072006F0070007300
      520075006E004E006F002E004F0072006900670069006E000100520075006E00
      4E006F00010001000D000A006300640073005F00500072006F00700073005000
      72006F00640075006300650072004E006F002E004F0072006900670069006E00
      0100500072006F00640075006300650072004E006F00010001000D000A006300
      640073005F00500072006F00700073004100750074006F0043006F006C005700
      69006400740068002E004F0072006900670069006E0001004100750074006F00
      43006F006C0057006900640074006800010001000D000A006300640073005F00
      500072006F007000730053007500700070006C0069006500720043006F006400
      65002E004F0072006900670069006E00010053007500700070006C0069006500
      720043006F0064006500010001000D000A006300640073005F00500072006F00
      700073004C0065006E006700740068004F007000740069006F006E002E004F00
      72006900670069006E0001004C0065006E006700740068004F00700074006900
      6F006E00010001000D000A006300640073005F00500072006F00700073004C00
      65006E00670074006800470072006F00750070004E006F002E004F0072006900
      670069006E0001004C0065006E00670074006800470072006F00750070004E00
      6F00010001000D000A006300640073005F00500072006F00700073004E006500
      77004900740065006D0052006F0077002E004F0072006900670069006E000100
      4E00650077004900740065006D0052006F007700010001000D000A0063006400
      73005F00500072006F0070007300530061006C00650073005200650067006900
      6F006E004E006F002E004F0072006900670069006E000100530061006C006500
      730052006500670069006F006E004E006F00010001000D000A00630064007300
      5F00500072006F00700073004D00610072006B00650074005200650067006900
      6F006E004E006F002E004F0072006900670069006E0001004D00610072006B00
      6500740052006500670069006F006E004E006F00010001000D000A0063006400
      73005F00500072006F00700073004F0072006400650072005400790070006500
      4E006F002E004F0072006900670069006E0001004F0072006400650072005400
      7900700065004E006F00010001000D000A006300640073005F00500072006F00
      700073005300740061007400750073002E004F0072006900670069006E000100
      530074006100740075007300010001000D000A006300640073005F0050007200
      6F0070007300460069006C007400650072004F00720064006500720044006100
      740065002E004F0072006900670069006E000100460069006C00740065007200
      4F0072006400650072004400610074006500010001000D000A00630064007300
      5F00500072006F00700073005300740061007200740050006500720069006F00
      64002E004F0072006900670069006E0001005300740061007200740050006500
      720069006F006400010001000D000A006300640073005F00500072006F007000
      730045006E00640050006500720069006F0064002E004F007200690067006900
      6E00010045006E00640050006500720069006F006400010001000D000A006300
      640073005F00500072006F007000730043006C00690065006E0074004E006F00
      2E004F0072006900670069006E00010043006C00690065006E0074004E006F00
      010001000D000A006300640073005F00500072006F0070007300530061006C00
      6500730050006500720073006F006E004E006F002E004F007200690067006900
      6E000100530061006C006500730050006500720073006F006E004E006F000100
      01000D000A006300640073005F00500072006F00700073005600650072006B00
      53007500700070006C006900650072004E006F002E004F007200690067006900
      6E0001005600650072006B0053007500700070006C006900650072004E006F00
      010001000D000A006300640073005F00500072006F0070007300560065007200
      6B004B0075006E0064004E006F002E004F0072006900670069006E0001005600
      650072006B004B0075006E0064004E006F00010001000D000A00630064007300
      5F00500072006F00700073004C004F004F0062006A0065006300740054007900
      700065002E004F0072006900670069006E0001004C004F004F0062006A006500
      630074005400790070006500010001000D000A006300640073005F0050007200
      6F007000730042006100720043006F00640065004E006F002E004F0072006900
      670069006E00010042006100720043006F00640065004E006F00010001000D00
      0A006300640073005F00500072006F0070007300470072006100640065005300
      740061006D0070004E006F002E004F0072006900670069006E00010047007200
      6100640065005300740061006D0070004E006F00010001000D000A0063006400
      73005F00500072006F007000730056006F006C0075006D00650055006E006900
      74004E006F002E004F0072006900670069006E00010056006F006C0075006D00
      650055006E00690074004E006F00010001000D000A006300640073005F005000
      72006F00700073004C0065006E0067007400680046006F0072006D0061007400
      4E006F002E004F0072006900670069006E0001004C0065006E00670074006800
      46006F0072006D00610074004E006F00010001000D000A006300640073005F00
      500072006F00700073004C0065006E0067007400680056006F006C0055006E00
      690074004E006F002E004F0072006900670069006E0001004C0065006E006700
      7400680056006F006C0055006E00690074004E006F00010001000D000A006300
      640073005F00500072006F0070007300470072006F0075007000420079004200
      6F0078002E004F0072006900670069006E000100470072006F00750070004200
      790042006F007800010001000D000A006300640073005F00500072006F007000
      7300470072006F0075007000530075006D006D006100720079002E004F007200
      6900670069006E000100470072006F0075007000530075006D006D0061007200
      7900010001000D000A006300640073005F00500072006F007000730041006700
      65006E0074004E006F002E004F0072006900670069006E000100410067006500
      6E0074004E006F00010001000D000A006300640073005F00500072006F007000
      73004C006F006100640069006E0067004C006F0063006100740069006F006E00
      4E006F002E004F0072006900670069006E0001004C006F006100640069006E00
      67004C006F0063006100740069006F006E004E006F00010001000D000A006300
      640073005F00500072006F007000730053006800690070007000650072004E00
      6F002E004F0072006900670069006E0001005300680069007000700065007200
      4E006F00010001000D000A006300640073005F00500072006F00700073004200
      6F006F006B0069006E00670054007900700065004E006F002E004F0072006900
      670069006E00010042006F006F006B0069006E00670054007900700065004E00
      6F00010001000D000A006300640073005F00500072006F007000730043007500
      730074006F006D00650072004E006F002E004F0072006900670069006E000100
      43007500730074006F006D00650072004E006F00010001000D000A0063006400
      73005F00500072006F0070007300530068006F007700500072006F0064007500
      630074002E004F0072006900670069006E000100530068006F00770050007200
      6F006400750063007400010001000D000A006D0074004F007200640065007200
      73002E00560065007200730069006F006E00010037002E00360033002E003000
      300020005300740061006E006400610072006400200045006400690074006900
      6F006E00010001000D000A007300740043006F006C006C006500630074006900
      6F006E0073005F0055006E00690063006F00640065000D000A00670072006400
      4C004F00440042005400610062006C0065005600690065007700310053005400
      41005400550053002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0039005D002E004400650073006300720069007000
      740069006F006E0001004B0046005500010001000D000A006700720064004C00
      6F0061006400440042005400610062006C006500560069006500770031005300
      65006E006400650072004C006F00610064005300740061007400750073002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0030005D002E004400650073006300720069007000740069006F006E000100
      5000720065006C0069006D0069006E00E4007200010001000D000A0067007200
      64004C006F0061006400440042005400610062006C0065005600690065007700
      3100530065006E006400650072004C006F006100640053007400610074007500
      73002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0031005D002E004400650073006300720069007000740069006F00
      6E000100500072006F0062006C0065006D00010001000D000A00670072006400
      4C006F0061006400440042005400610062006C00650056006900650077003100
      530065006E006400650072004C006F0061006400530074006100740075007300
      2E00500072006F0070006500720074006900650073002E004900740065006D00
      73005B0032005D002E004400650073006300720069007000740069006F006E00
      01004F004B00010001000D000A006700720064004C006F006100640044004200
      5400610062006C00650056006900650077003100530065006E00640065007200
      4C006F00610064005300740061007400750073002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0033005D002E004400
      650073006300720069007000740069006F006E000100550074006C0061007300
      74006E0069006E0067007300700065006300010001000D000A006C0063004D00
      610072006B006E00610064002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E0001004D00610072006B00650074005200
      6500670069006F006E004E0061006D006500010001000D000A00720067004F00
      720064006500720054007900700065004E006F002E00500072006F0070006500
      720074006900650073002E004900740065006D0073005B0030005D002E004300
      61007000740069006F006E0001004600F60072007300E4006C006A006E006900
      6E006700010001000D000A00720067004F007200640065007200540079007000
      65004E006F002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0031005D002E00430061007000740069006F006E000100
      49006E006B00F6007000010001000D000A006900630053007400610074007500
      73002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E004400650073006300720069007000740069006F00
      6E00010041006E006E0075006C006500720061006400010001000D000A006900
      63005300740061007400750073002E00500072006F0070006500720074006900
      650073002E004900740065006D0073005B0031005D002E004400650073006300
      720069007000740069006F006E00010041006B00740069007600010001000D00
      0A00690063005300740061007400750073002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0032005D002E0044006500
      73006300720069007000740069006F006E0001004100760073006C0075007400
      61006400010001000D000A00690063005300740061007400750073002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      33005D002E004400650073006300720069007000740069006F006E0001005000
      720065006C0069006D0069006E00E4007200010001000D000A00690063005300
      740061007400750073002E00500072006F007000650072007400690065007300
      2E004900740065006D0073005B0034005D002E00440065007300630072006900
      7000740069006F006E00010053006B0065007000700061007400010001000D00
      0A00670072006400630078004100760072006F00700044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0030005D002E00430061007000740069006F006E0001004600
      4900580045004400010001000D000A0067007200640063007800410076007200
      6F00700044004200420061006E006400650064005400610062006C0065005600
      69006500770031002E00420061006E00640073005B0031005D002E0043006100
      7000740069006F006E0001004F005400480045005200010001000D000A006700
      72006400630078004100760072006F00700044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053005400410054005500
      53002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0030005D002E004400650073006300720069007000740069006F00
      6E00010041006E006E0075006C006500720061006400010001000D000A006700
      72006400630078004100760072006F00700044004200420061006E0064006500
      64005400610062006C0065005600690065007700310053005400410054005500
      53002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0031005D002E004400650073006300720069007000740069006F00
      6E00010041006B00740069007600010001000D000A0067007200640063007800
      4100760072006F00700044004200420061006E00640065006400540061006200
      6C006500560069006500770031005300540041005400550053002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003200
      5D002E004400650073006300720069007000740069006F006E00010041007600
      73006C007500740061006400010001000D000A00670072006400630078004100
      760072006F00700044004200420061006E006400650064005400610062006C00
      6500560069006500770031005300540041005400550053002E00500072006F00
      70006500720074006900650073002E004900740065006D0073005B0033005D00
      2E004400650073006300720069007000740069006F006E000100500072006500
      6C0069006D0069006E00E4007200010001000D000A0067007200640063007800
      4100760072006F00700044004200420061006E00640065006400540061006200
      6C006500560069006500770031005300540041005400550053002E0050007200
      6F0070006500720074006900650073002E004900740065006D0073005B003400
      5D002E004400650073006300720069007000740069006F006E00010053006B00
      65007000700061007400010001000D000A006700720064006300780041007600
      72006F00700044004200420061006E006400650064005400610062006C006500
      56006900650077003100530065007100750065006E00630065004E006F002E00
      500072006F0070006500720074006900650073002E004900740065006D007300
      5B0030005D002E004400650073006300720069007000740069006F006E000100
      41006E006E0075006C006500720061006400010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C00650056006900650077003100530065007100750065006E006300
      65004E006F002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0031005D002E0044006500730063007200690070007400
      69006F006E00010041006B00740069007600010001000D000A00670072006400
      630078004100760072006F00700044004200420061006E006400650064005400
      610062006C00650056006900650077003100530065007100750065006E006300
      65004E006F002E00500072006F0070006500720074006900650073002E004900
      740065006D0073005B0032005D002E0044006500730063007200690070007400
      69006F006E0001004100760073006C007500740061006400010001000D000A00
      670072006400630078004100760072006F00700044004200420061006E006400
      650064005400610062006C006500560069006500770031005300650071007500
      65006E00630065004E006F002E00500072006F00700065007200740069006500
      73002E004900740065006D0073005B0033005D002E0044006500730063007200
      69007000740069006F006E0001005000720065006C0069006D0069006E00E400
      7200010001000D000A00670072006400630078004100760072006F0070004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100530065007100750065006E00630065004E006F002E00500072006F007000
      6500720074006900650073002E004900740065006D0073005B0034005D002E00
      4400650073006300720069007000740069006F006E00010053006B0065007000
      700061007400010001000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A005400660072006D004100
      760072006F0070000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00500061006E0065006C0033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0050006100
      6E0065006C0032000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A00500061006E0065006C004100760072006F007000
      4C006F00610064000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A006300780042007500740074006F006E0031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A006300780042007500740074006F006E003200010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006300780042007500
      740074006F006E0033000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A006300780042007500740074006F006E003400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A006300780042007500740074006F006E00350001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00440042005200
      69006300680045006400690074005F0049006E0076006F006900630065005400
      650078007400010041004E00530049005F004300480041005200530045005400
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
      410052005300450054000D000A00700070006D005000720069006E0074005200
      650070006F007200740073000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A0070006D004100760072006F0070004700
      7200690064000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A00630078005300740079006C006500530069006C007600
      650072000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00630078005300740079006C00650042006C00750065000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00630078005300740079006C006500590065006C006C006F00770001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      630078005300740079006C006500520065006400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A0070006D004C006F00
      6100640073000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A0070006D004C004F000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0070006D00410064006400
      4C004F000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00}
  end
end
