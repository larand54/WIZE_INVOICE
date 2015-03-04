object frmFreightExternLoad: TfrmFreightExternLoad
  Left = 212
  Top = 141
  ActiveControl = icAttesteraMot
  Caption = 'EXTERN FRAKTAVR'#196'KNING'
  ClientHeight = 737
  ClientWidth = 1153
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 1153
    Height = 61
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 528
      Top = 16
      Width = 67
      Height = 13
      Caption = 'S'#246'k fakturanr:'
    end
    object LabelClient: TLabel
      Left = 16
      Top = 36
      Width = 31
      Height = 13
      Caption = 'Agent:'
    end
    object Label5: TLabel
      Left = 848
      Top = 40
      Width = 54
      Height = 13
      Caption = 'Fraktf'#246'rare:'
      Visible = False
    end
    object Label6: TLabel
      Left = 687
      Top = 16
      Width = 90
      Height = 13
      Caption = 'H'#228'mta fakturor fom'
    end
    object Label3: TLabel
      Left = 304
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Marknad:'
    end
    object Label1: TLabel
      Left = 528
      Top = 40
      Width = 48
      Height = 13
      Caption = 'S'#246'k LOnr:'
    end
    object Label7: TLabel
      Left = 16
      Top = 15
      Width = 45
      Height = 13
      Caption = 'Attestera:'
    end
    object nfSearchFakturaNr: TcxTextEdit
      Left = 602
      Top = 8
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 4
      OnKeyDown = nfSearchFakturaNrKeyDown
      Width = 79
    end
    object deStart: TcxDateEdit
      Left = 864
      Top = 8
      Enabled = False
      Properties.Kind = ckDateTime
      TabOrder = 7
      Visible = False
      Width = 121
    end
    object deEnd: TcxDateEdit
      Left = 1008
      Top = 8
      Enabled = False
      Properties.Kind = ckDateTime
      TabOrder = 8
      Visible = False
      Width = 121
    end
    object cbDateFilter: TcxCheckBox
      Left = 1008
      Top = 32
      Caption = 'Urval p'#229' fakturadatum'
      Properties.OnChange = cbDateFilterPropertiesChange
      TabOrder = 6
      Visible = False
      Width = 129
    end
    object lcSpeditor: TcxDBLookupComboBox
      Left = 909
      Top = 32
      DataBinding.DataField = 'Speditor'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.DropDownWidth = 400
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Visible = False
      Width = 204
    end
    object lcAgent: TcxDBLookupComboBox
      Left = 85
      Top = 32
      DataBinding.DataField = 'Agent'
      DataBinding.DataSource = ds_Props
      Properties.ClearKey = 46
      Properties.DropDownWidth = 400
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      TabOrder = 1
      Width = 428
    end
    object lcMarknad: TcxDBLookupComboBox
      Left = 357
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
      TabOrder = 3
      Width = 156
    end
    object nSearchLONr: TcxTextEdit
      Left = 602
      Top = 32
      Style.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.Kind = lfFlat
      TabOrder = 5
      OnKeyDown = nSearchLONrKeyDown
      Width = 79
    end
    object deStartPeriod: TcxDBDateEdit
      Left = 687
      Top = 32
      DataBinding.DataField = 'StartPeriod'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.Kind = ckDateTime
      TabOrder = 9
      Width = 146
    end
    object icAttesteraMot: TcxDBImageComboBox
      Left = 85
      Top = 8
      DataBinding.DataField = 'AutoColWidth'
      DataBinding.DataSource = ds_Props
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Komm'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Frakt'
          Value = 2
        end
        item
          Description = 'Frakt '#246'vrigt'
          Value = 3
        end>
      TabOrder = 0
      Width = 212
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1153
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 513
      Height = 57
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 511
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 1048
      Top = 0
      Width = 105
      Height = 57
      Align = alRight
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 103
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel5: TPanel
      Left = 513
      Top = 0
      Width = 535
      Height = 57
      Align = alClient
      TabOrder = 2
    end
  end
  object panek: TPanel
    Left = 0
    Top = 118
    Width = 1153
    Height = 619
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object grdLoads: TcxGrid
      Left = 0
      Top = 0
      Width = 1153
      Height = 289
      Align = alTop
      PopupMenu = pmGrdLoads
      TabOrder = 0
      object grdLoadsDBBandedTableView1: TcxGridDBBandedTableView
        OnKeyDown = grdLoadsDBBandedTableView1KeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmModule1.ds_LF
        DataController.KeyFieldNames = 'InternalInvoiceNo;ShippingPlanNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###,###.00'
            Kind = skSum
            FieldName = 'Fraktkostnad_sum'
            Column = grdLoadsDBBandedTableView1Fraktkostnad_sum
          end
          item
            Format = '#,###,###,###.000'
            Kind = skSum
            FieldName = 'AM3'
            Column = grdLoadsDBBandedTableView1AM3
          end
          item
            Format = '#######'
            Kind = skCount
            FieldName = 'Fakturanr'
            Column = grdLoadsDBBandedTableView1Fakturanr
          end
          item
            Format = '#,###,###,###.00'
            Kind = skSum
            FieldName = 'Kommission_Sum'
            Column = grdLoadsDBBandedTableView1Kommission_Sum
          end
          item
            Format = '#,###,###.00'
            Kind = skSum
            FieldName = 'Frakt'
            Column = grdLoadsDBBandedTableView1Frakt
          end
          item
            Format = '#,###,###.00'
            Kind = skSum
            FieldName = 'Komm'
            Column = grdLoadsDBBandedTableView1Komm
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Faktura'
            Width = 319
          end
          item
            Caption = 'Kommission'
            Width = 604
          end
          item
            Caption = 'Frakt'
            Width = 224
          end>
        object grdLoadsDBBandedTableView1Kund: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kund'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1ShippingPlanNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingPlanNo'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Fakturanr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Fakturanr'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1ShippingCompanyNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ShippingCompanyNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Varuvrde: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Varuv'#228'rde'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Fakturavrde: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Fakturav'#228'rde'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 77
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1InternalInvoiceNo: TcxGridDBBandedColumn
          Caption = 'Int.invnr'
          DataBinding.FieldName = 'InternalInvoiceNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Utlastad: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Utlastad'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 247
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Kommission_Percent: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kommission_Percent'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 57
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Kommission_Sum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kommission_Sum'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Kommission_villkor: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kommission_villkor'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Varuv'#228'rde'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Fakturav'#228'rde'
              Value = 1
            end>
          Width = 116
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1ValutaFaktura: TcxGridDBBandedColumn
          Caption = 'Valuta(komm)'
          DataBinding.FieldName = 'ValutaFaktura'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 94
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Agent: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Agent'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 67
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1ConfirmKomm: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ConfirmKomm'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 58
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Komm: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Komm'
          PropertiesClassName = 'TcxCalcEditProperties'
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1AM3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AM3'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 33
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1FraktValuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FraktValuta'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 51
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1FraktEnhet: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FraktEnhet'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 55
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Fraktkostnad: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Fraktkostnad'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 39
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1ConfirmFrakt: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ConfirmFrakt'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 26
          Position.BandIndex = 2
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Fraktkostnad_sum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Fraktkostnad_sum'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 52
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Speditr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Spedit'#246'r'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 74
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1Frakt: TcxGridDBBandedColumn
          Caption = 'Attest.frakt'
          DataBinding.FieldName = 'Frakt'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ImmediatePost = True
          Width = 36
          Position.BandIndex = 2
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1ValutaNr: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ValutaNr'
          Width = 38
          Position.BandIndex = 2
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdLoadsDBBandedTableView1EgenValuta: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EgenValuta'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 75
          Properties.KeyFieldNames = 'CurrencyNo'
          Properties.ListColumns = <
            item
              FieldName = 'CurrencyName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 73
          Position.BandIndex = 2
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
      end
      object grdLoadsLevel1: TcxGridLevel
        GridView = grdLoadsDBBandedTableView1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 0
      Top = 289
      Width = 1153
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salTop
      Control = grdLoads
      Color = clMaroon
      ParentColor = False
    end
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 297
      Width = 1153
      Height = 322
      Align = alClient
      TabOrder = 2
      Properties.ActivePage = tsAttester
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      ClientRectBottom = 318
      ClientRectLeft = 4
      ClientRectRight = 1149
      ClientRectTop = 4
      object tsAttester: TcxTabSheet
        Caption = 'tsAttester'
        ImageIndex = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1145
          Height = 49
          Align = alTop
          TabOrder = 0
          object cxButton1: TcxButton
            Left = 8
            Top = 4
            Width = 106
            Height = 34
            Action = acDeleteAttest
            TabOrder = 0
          end
          object cxButton2: TcxButton
            Left = 120
            Top = 4
            Width = 106
            Height = 34
            Action = acSaveChanges
            TabOrder = 1
          end
        end
        object grd_Att_Ext_ServicesII: TcxGrid
          Left = 0
          Top = 49
          Width = 1145
          Height = 265
          Align = alClient
          TabOrder = 1
          object grd_Att_Ext_ServicesIIDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            DataController.DataSource = dmModule1.ds_Att_Ext_ServicesII
            DataController.KeyFieldNames = 'InternalInvoiceNo;SequensNo;Description'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.ImmediateEditor = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grd_Att_Ext_ServicesIIDBTableView1InternalInvoiceNo: TcxGridDBColumn
              DataBinding.FieldName = 'InternalInvoiceNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              Width = 62
            end
            object grd_Att_Ext_ServicesIIDBTableView1SequensNo: TcxGridDBColumn
              DataBinding.FieldName = 'SequensNo'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 38
            end
            object grd_Att_Ext_ServicesIIDBTableView1ShippingPlanNo: TcxGridDBColumn
              DataBinding.FieldName = 'ShippingPlanNo'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 25
            end
            object grd_Att_Ext_ServicesIIDBTableView1Description: TcxGridDBColumn
              DataBinding.FieldName = 'Description'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 57
            end
            object grd_Att_Ext_ServicesIIDBTableView1Supplier_InvoiceNo: TcxGridDBColumn
              DataBinding.FieldName = 'Supplier_InvoiceNo'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 83
            end
            object grd_Att_Ext_ServicesIIDBTableView1Supplier_InvoiceDate: TcxGridDBColumn
              DataBinding.FieldName = 'Supplier_InvoiceDate'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 83
            end
            object grd_Att_Ext_ServicesIIDBTableView1Amount: TcxGridDBColumn
              Caption = 'Belopp'
              DataBinding.FieldName = 'AmountAttested'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 45
            end
            object grd_Att_Ext_ServicesIIDBTableView1CurrencyNo: TcxGridDBColumn
              DataBinding.FieldName = 'CurrencyNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
            end
            object grd_Att_Ext_ServicesIIDBTableView1SupplierNo: TcxGridDBColumn
              DataBinding.FieldName = 'SupplierNo'
              PropertiesClassName = 'TcxLabelProperties'
              Visible = False
              VisibleForCustomization = False
              Width = 87
            end
            object grd_Att_Ext_ServicesIIDBTableView1Valuta: TcxGridDBColumn
              DataBinding.FieldName = 'Valuta'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 75
              Properties.KeyFieldNames = 'CurrencyNo'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyName'
                end>
              Properties.ListOptions.ShowHeader = False
              Width = 43
            end
            object grd_Att_Ext_ServicesIIDBTableView1Note: TcxGridDBColumn
              DataBinding.FieldName = 'Note'
              PropertiesClassName = 'TcxMemoProperties'
              Width = 127
            end
            object grd_Att_Ext_ServicesIIDBTableView1CreatedDate: TcxGridDBColumn
              DataBinding.FieldName = 'CreatedDate'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 109
            end
            object grd_Att_Ext_ServicesIIDBTableView1CreatedUser: TcxGridDBColumn
              DataBinding.FieldName = 'CreatedUser'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 32
            end
            object grd_Att_Ext_ServicesIIDBTableView1ModifiedDate: TcxGridDBColumn
              DataBinding.FieldName = 'ModifiedDate'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 94
            end
            object grd_Att_Ext_ServicesIIDBTableView1ModifiedUser: TcxGridDBColumn
              DataBinding.FieldName = 'ModifiedUser'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 41
            end
            object grd_Att_Ext_ServicesIIDBTableView1Quick_InvoiceNo: TcxGridDBColumn
              DataBinding.FieldName = 'Quick_InvoiceNo'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 37
            end
            object grd_Att_Ext_ServicesIIDBTableView1AmountAttested: TcxGridDBColumn
              Caption = 'Tot.belopp lev.faktura'
              DataBinding.FieldName = 'Amount'
              PropertiesClassName = 'TcxCalcEditProperties'
              Width = 278
            end
            object grd_Att_Ext_ServicesIIDBTableView1Klient: TcxGridDBColumn
              DataBinding.FieldName = 'Klient'
              PropertiesClassName = 'TcxLabelProperties'
              Width = 65
            end
          end
          object grd_Att_Ext_ServicesIILevel1: TcxGridLevel
            GridView = grd_Att_Ext_ServicesIIDBTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'cxTabSheet2'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  object dxBarManager1: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.LargeImages = dmsConnector.imglistActions
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 416
    Top = 192
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
      FloatLeft = 276
      FloatTop = 216
      FloatClientWidth = 232
      FloatClientHeight = 174
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          Visible = True
          ItemName = 'lbSaveToOld'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      MultiLine = True
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
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
      Caption = 'Exit'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 162
      FloatTop = 141
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbExit'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object bbRefresh: TdxBarLargeButton
      Action = acRefreshGrid
      Category = 0
    end
    object bbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbSaveToOld: TdxBarLargeButton
      Action = acSaveGridLayout
      Category = 0
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acAttestSelectedRows
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acOpenInvoice
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acOpenAttestFrm
      Category = 0
    end
  end
  object imglistActions: TImageList
    Height = 24
    Width = 24
    Left = 176
    Top = 248
    Bitmap = {
      494C01010B000D00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE630000000000000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE630000000000000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE630000000000000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE630000000000000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE630000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD0031313100000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000298CBD000873B5000873
      B500085A940042B5F70042B5F7000873B5000873B500085A94007B8CC600E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B00313131000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000873B5008CD6F70042B5
      F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873B500E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A0000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000216BF700B5DEF700B5DE
      F700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216BF700DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F70000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005AB5E7003184FF003184
      FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5E700D6D6
      D600D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F70000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      8400000000000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E70000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      000000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B210000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005AB5E7003184FF003184FF005AB5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFC00001000000FFFFFFFF
      FFFF800000000000FC0007C00003800000000000FC0007C00003800000000000
      FC0007C00003800000000000FC0007C00003800000000000FC0007C000038000
      00000000FC0007C00003800000000000FC0007C00003800000000000FC0007C0
      0003800000000000FC0007C00003800000000000FC0007C00003800000000000
      F00007C00003800000000000F00007C00003800000000000F00007C000038000
      00000000800007C00001800000000000800007C00000800000000000800007C0
      0000800000000000800007C00000800000000000F0000FC00000800000000000
      F0001FE00007800000000000F0FFFFFFFFFF800000000000FFFFFFFFFFFF8000
      00000000FFFFFFFFFFFFC00001000000FDE9DCFFFFFFFFFFFFFFFE3FFDE9DCFF
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
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 520
    Top = 256
    object acPrint: TAction
      Caption = 'WYSIWYG F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintExecute
    end
    object acRefreshGrid: TAction
      Caption = 'Uppdatera F6'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = acRefreshGridExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acSaveGridLayout: TAction
      Caption = 'Spara layout'
      ImageIndex = 15
      OnExecute = acSaveGridLayoutExecute
    end
    object acAttestSelectedRows: TAction
      Caption = 'Attestera valda rader F3'
      ImageIndex = 12
      ShortCut = 114
      OnExecute = acAttestSelectedRowsExecute
      OnUpdate = acAttestSelectedRowsUpdate
    end
    object acDeleteAttest: TAction
      Caption = 'Ta bort'
      ImageIndex = 6
      OnExecute = acDeleteAttestExecute
      OnUpdate = acDeleteAttestUpdate
    end
    object acOpenInvoice: TAction
      Caption = #214'ppna faktura'
      ImageIndex = 2
      OnExecute = acOpenInvoiceExecute
      OnUpdate = acOpenInvoiceUpdate
    end
    object acOpenAttestFrm: TAction
      Caption = #214'ppna attesten'
      ImageIndex = 2
      OnExecute = acOpenAttestFrmExecute
    end
    object acGotoInvoiceNoSerachField: TAction
      Caption = 'acGotoInvoiceNoSerachField'
      ShortCut = 16454
      OnExecute = acGotoInvoiceNoSerachFieldExecute
    end
    object acGotoLOSearchField: TAction
      Caption = 'acGotoLOSearchField'
      ShortCut = 16460
      OnExecute = acGotoLOSearchFieldExecute
    end
    object acSaveChanges: TAction
      Caption = 'Spara'
      ImageIndex = 15
      OnExecute = acSaveChangesExecute
      OnUpdate = acSaveChangesUpdate
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 56
    Top = 296
    object dxComponentPrinter1Link1: TdxGridReportLink
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object pmGrdLoads: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <>
    UseOwnFont = False
    Left = 328
    Top = 192
  end
  object PopupMenu2: TPopupMenu
    AutoPopup = False
    Left = 56
    Top = 248
    object ndraprispmarkeradelasterF101: TMenuItem
      Action = acClose
    end
    object Skrivut1: TMenuItem
      Action = acPrint
    end
    object UppdateraF61: TMenuItem
      Action = acRefreshGrid
    end
    object SparanyF31: TMenuItem
      Action = acAttestSelectedRows
    end
    object acGotoInvoiceNoSerachField1: TMenuItem
      Action = acGotoInvoiceNoSerachField
    end
    object acGotoLOSearchField1: TMenuItem
      Action = acGotoLOSearchField
    end
  end
  object ds_Props: TDataSource
    DataSet = cds_Props
    Left = 520
    Top = 352
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdLoads
    PopupMenus = <>
    Left = 520
    Top = 208
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 176
    Top = 296
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
  object cds_Props: TFDQuery
    AfterInsert = cds_PropsAfterInsert
    CachedUpdates = True
    Connection = dmsConnector.FDConnection1
    FetchOptions.AssignedValues = [evCache]
    SQL.Strings = (
      'Select * FROM dbo.userprops'
      'WHERE UserID = :UserID'
      'AND Form = :Form')
    Left = 520
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
      OnChange = cds_PropsAutoColWidthChange
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
    end
    object cds_PropsAgentNo: TIntegerField
      FieldName = 'AgentNo'
      Origin = 'AgentNo'
      ProviderFlags = [pfInUpdate]
      OnChange = cds_PropsAgentNoChange
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
      LookupDataSet = dm_UserProps.cds_Verk
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'SearchName'
      KeyFields = 'VerkNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsSpeditor: TStringField
      FieldKind = fkLookup
      FieldName = 'Speditor'
      LookupDataSet = dmsContact.cds_ActShippers
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ShipperNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
    object cds_PropsAgent: TStringField
      FieldKind = fkLookup
      FieldName = 'Agent'
      LookupDataSet = dmsContact.sp_AttLev
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'AgentNo'
      ProviderFlags = []
      Size = 80
      Lookup = True
    end
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = grd_Att_Ext_ServicesII
    PopupMenus = <>
    Left = 360
    Top = 593
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 328
    Top = 240
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer2Timer
    Left = 328
    Top = 288
  end
  object mt_SelectedRows: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 328
    Top = 336
    object mt_SelectedRowsInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object mt_SelectedRowsLONo: TIntegerField
      FieldName = 'LONo'
    end
  end
  object DataSource1: TDataSource
    DataSet = dmModule1.sp_LF
    Left = 361
    Top = 544
  end
  object siLangLinked_frmFreightExternLoad: TsiLangLinked
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
    Left = 568
    Top = 376
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0046007200650069006700680074004500
      78007400650072006E004C006F00610064000100450058005400450052004E00
      20004600520041004B005400410056005200C4004B004E0049004E0047000100
      010001000D000A004C006100620065006C00320001005300F6006B0020006600
      61006B0074007500720061006E0072003A000100010001000D000A004C006100
      620065006C0043006C00690065006E00740001004100670065006E0074003A00
      0100010001000D000A004C006100620065006C00350001004600720061006B00
      74006600F60072006100720065003A000100010001000D000A004C0061006200
      65006C00360001004800E4006D00740061002000660061006B00740075007200
      6F007200200066006F006D000100010001000D000A004C006100620065006C00
      330001004D00610072006B006E00610064003A000100010001000D000A004C00
      6100620065006C00310001005300F6006B0020004C004F006E0072003A000100
      010001000D000A004C006100620065006C003700010041007400740065007300
      74006500720061003A000100010001000D000A00630062004400610074006500
      460069006C00740065007200010055007200760061006C0020007000E5002000
      660061006B00740075007200610064006100740075006D000100010001000D00
      0A006700720064004C006F0061006400730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004B0075006E0064000100
      4B0075006E0064000100010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031005300680069007000700069006E00670050006C0061006E004E00
      6F0001004C004F000100010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      650077003100460061006B0074007500720061006E0072000100460061006B00
      74007500720061006E0072000100010001000D000A006700720064004C006F00
      61006400730044004200420061006E006400650064005400610062006C006500
      560069006500770031005300680069007000700069006E00670043006F006D00
      700061006E0079004E006F0001005300680069007000700069006E0067004300
      6F006D00700061006E0079004E006F000100010001000D000A00670072006400
      4C006F0061006400730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100560061007200750076007200640065000100
      56006100720075007600E4007200640065000100010001000D000A0067007200
      64004C006F0061006400730044004200420061006E0064006500640054006100
      62006C00650056006900650077003100460061006B0074007500720061007600
      7200640065000100460061006B0074007500720061007600E400720064006500
      0100010001000D000A006700720064004C006F00610064007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004900
      6E007400650072006E0061006C0049006E0076006F006900630065004E006F00
      010049006E0074002E0069006E0076006E0072000100010001000D000A006700
      720064004C006F0061006400730044004200420061006E006400650064005400
      610062006C00650056006900650077003100550074006C006100730074006100
      64000100460061006B0074007500720065007200610064000100010001000D00
      0A006700720064004C006F0061006400730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004B006F006D006D006900
      7300730069006F006E005F00500065007200630065006E00740001004B006F00
      6D006D00200025000100010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004B006F006D006D0069007300730069006F006E005F0053007500
      6D0001004B006F006D006D0069007300730069006F006E002000730075006D00
      0100010001000D000A006700720064004C006F00610064007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004B00
      6F006D006D0069007300730069006F006E005F00760069006C006C006B006F00
      720001004B006F006D006D0069007300730069006F006E002000760069006C00
      6C006B006F0072000100010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      650077003100560061006C00750074006100460061006B007400750072006100
      0100560061006C0075007400610028006B006F006D006D002900010001000100
      0D000A006700720064004C006F0061006400730044004200420061006E006400
      650064005400610062006C006500560069006500770031004100670065006E00
      740001004100670065006E0074000100010001000D000A006700720064004C00
      6F0061006400730044004200420061006E006400650064005400610062006C00
      65005600690065007700310043006F006E006600690072006D004B006F006D00
      6D000100470064006B002F004100760072000100010001000D000A0067007200
      64004C006F0061006400730044004200420061006E0064006500640054006100
      62006C006500560069006500770031004B006F006D006D0001004B006F006D00
      6D000100010001000D000A006700720064004C006F0061006400730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      41004D003300010041004D0033000100010001000D000A006700720064004C00
      6F0061006400730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004600720061006B007400560061006C0075007400
      61000100560061006C0075007400610028006600720061006B00740029000100
      010001000D000A006700720064004C006F006100640073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310046007200
      61006B00740045006E0068006500740001004600720061006B0074006B006F00
      730074006E00610064002F0065006E006800650074000100010001000D000A00
      6700720064004C006F0061006400730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004600720061006B0074006B00
      6F00730074006E006100640001004600720061006B0074006B006F0073007400
      6E00610064000100010001000D000A006700720064004C006F00610064007300
      44004200420061006E006400650064005400610062006C006500560069006500
      7700310043006F006E006600690072006D004600720061006B00740001004700
      64006B002F004100760072000100010001000D000A006700720064004C006F00
      61006400730044004200420061006E006400650064005400610062006C006500
      560069006500770031004600720061006B0074006B006F00730074006E006100
      64005F00730075006D0001004600720061006B0074006B006F00730074006E00
      610064002000730075006D000100010001000D000A006700720064004C006F00
      61006400730044004200420061006E006400650064005400610062006C006500
      5600690065007700310053007000650064006900740072000100530070006500
      640069007400F60072000100010001000D000A006700720064004C006F006100
      6400730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004600720061006B0074000100410074007400650073007400
      2E006600720061006B0074000100010001000D000A006700720064004C006F00
      61006400730044004200420061006E006400650064005400610062006C006500
      56006900650077003100560061006C007500740061004E007200010056006100
      6C007500740061004E0072000100010001000D000A006700720064004C006F00
      61006400730044004200420061006E006400650064005400610062006C006500
      560069006500770031004500670065006E00560061006C007500740061000100
      4100740074002E00760061006C007500740061000100010001000D000A007400
      7300410074007400650073007400650072000100740073004100740074006500
      73007400650072000100010001000D000A006700720064005F00410074007400
      5F004500780074005F0053006500720076006900630065007300490049004400
      42005400610062006C0065005600690065007700310049006E00740065007200
      6E0061006C0049006E0076006F006900630065004E006F00010049006E007400
      650072006E0061006C0049006E0076006F006900630065004E006F0001000100
      01000D000A006700720064005F004100740074005F004500780074005F005300
      650072007600690063006500730049004900440042005400610062006C006500
      56006900650077003100530065007100750065006E0073004E006F0001004100
      740074006500730074006E0072000100010001000D000A006700720064005F00
      4100740074005F004500780074005F0053006500720076006900630065007300
      49004900440042005400610062006C0065005600690065007700310053006800
      69007000700069006E00670050006C0061006E004E006F0001004C004F000100
      010001000D000A006700720064005F004100740074005F004500780074005F00
      5300650072007600690063006500730049004900440042005400610062006C00
      6500560069006500770031004400650073006300720069007000740069006F00
      6E0001004200650073006B007200690076006E0069006E006700010001000100
      0D000A006700720064005F004100740074005F004500780074005F0053006500
      72007600690063006500730049004900440042005400610062006C0065005600
      690065007700310053007500700070006C006900650072005F0049006E007600
      6F006900630065004E006F0001004C00650076002E00660061006B0074007500
      720061006E0072000100010001000D000A006700720064005F00410074007400
      5F004500780074005F0053006500720076006900630065007300490049004400
      42005400610062006C0065005600690065007700310053007500700070006C00
      6900650072005F0049006E0076006F0069006300650044006100740065000100
      4C00650076002E00660061006B00740075007200610064006100740075006D00
      0100010001000D000A006700720064005F004100740074005F00450078007400
      5F00530065007200760069006300650073004900490044004200540061006200
      6C0065005600690065007700310041006D006F0075006E007400010042006500
      6C006F00700070000100010001000D000A006700720064005F00410074007400
      5F004500780074005F0053006500720076006900630065007300490049004400
      42005400610062006C0065005600690065007700310043007500720072006500
      6E00630079004E006F000100430075007200720065006E00630079004E006F00
      0100010001000D000A006700720064005F004100740074005F00450078007400
      5F00530065007200760069006300650073004900490044004200540061006200
      6C0065005600690065007700310053007500700070006C006900650072004E00
      6F00010053007500700070006C006900650072004E006F000100010001000D00
      0A006700720064005F004100740074005F004500780074005F00530065007200
      7600690063006500730049004900440042005400610062006C00650056006900
      650077003100560061006C007500740061000100560061006C00750074006100
      0100010001000D000A006700720064005F004100740074005F00450078007400
      5F00530065007200760069006300650073004900490044004200540061006200
      6C006500560069006500770031004E006F007400650001004E006F0074006500
      720069006E0067000100010001000D000A006700720064005F00410074007400
      5F004500780074005F0053006500720076006900630065007300490049004400
      42005400610062006C0065005600690065007700310043007200650061007400
      6500640044006100740065000100520065006700690073007400720065007200
      610064000100010001000D000A006700720064005F004100740074005F004500
      780074005F005300650072007600690063006500730049004900440042005400
      610062006C006500560069006500770031004300720065006100740065006400
      550073006500720001005200650067002E00610076000100010001000D000A00
      6700720064005F004100740074005F004500780074005F005300650072007600
      690063006500730049004900440042005400610062006C006500560069006500
      770031004D006F0064006900660069006500640044006100740065000100C400
      6E0064007200610064000100010001000D000A006700720064005F0041007400
      74005F004500780074005F005300650072007600690063006500730049004900
      440042005400610062006C006500560069006500770031004D006F0064006900
      660069006500640055007300650072000100C4006E0064007200610064002000
      610076000100010001000D000A006700720064005F004100740074005F004500
      780074005F005300650072007600690063006500730049004900440042005400
      610062006C0065005600690065007700310051007500690063006B005F004900
      6E0076006F006900630065004E006F00010053006E0061006200620066006100
      6B0074007500720061000100010001000D000A006700720064005F0041007400
      74005F004500780074005F005300650072007600690063006500730049004900
      440042005400610062006C0065005600690065007700310041006D006F007500
      6E00740041007400740065007300740065006400010054006F0074002E006200
      65006C006F007000700020006C00650076002E00660061006B00740075007200
      61000100010001000D000A006700720064005F004100740074005F0045007800
      74005F0053006500720076006900630065007300490049004400420054006100
      62006C006500560069006500770031004B006C00690065006E00740001004B00
      6C00690065006E0074000100010001000D000A00630078005400610062005300
      6800650065007400320001006300780054006100620053006800650065007400
      32000100010001000D000A00640078004200610072004D0061006E0061006700
      6500720031004200610072003100010043007500730074006F006D0020003100
      0100010001000D000A00640078004200610072004D0061006E00610067006500
      720031004200610072003200010045007800690074000100010001000D000A00
      610063005000720069006E007400010057005900530049005700590047002000
      460038000100010001000D000A00610063005200650066007200650073006800
      4700720069006400010055007000700064006100740065007200610020004600
      36000100010001000D000A006100630043006C006F0073006500010053007400
      E4006E00670020004600310032000100010001000D000A006100630053006100
      7600650047007200690064004C00610079006F00750074000100530070006100
      7200610020006C00610079006F00750074000100010001000D000A0061006300
      410074007400650073007400530065006C006500630074006500640052006F00
      7700730001004100740074006500730074006500720061002000760061006C00
      640061002000720061006400650072002000460033000100010001000D000A00
      61006300440065006C0065007400650041007400740065007300740001005400
      6100200062006F00720074000100010001000D000A00610063004F0070006500
      6E0049006E0076006F006900630065000100D600700070006E00610020006600
      61006B0074007500720061000100010001000D000A00610063004F0070006500
      6E00410074007400650073007400460072006D000100D600700070006E006100
      200061007400740065007300740065006E000100010001000D000A0061006300
      47006F0074006F0049006E0076006F006900630065004E006F00530065007200
      6100630068004600690065006C00640001006100630047006F0074006F004900
      6E0076006F006900630065004E006F0053006500720061006300680046006900
      65006C0064000100010001000D000A006100630047006F0074006F004C004F00
      5300650061007200630068004600690065006C00640001006100630047006F00
      74006F004C004F005300650061007200630068004600690065006C0064000100
      010001000D000A006100630053006100760065004300680061006E0067006500
      73000100530070006100720061000100010001000D000A006400780043006F00
      6D0070006F006E0065006E0074005000720069006E0074006500720031004C00
      69006E006B00310001004E00650077005200650070006F007200740001000100
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00630064007300
      5F00500072006F00700073005500730065007200490044000100550073006500
      720049004400010001000D000A006300640073005F00500072006F0070007300
      46006F0072006D00010046006F0072006D00010001000D000A00630064007300
      5F00500072006F00700073005600650072006B004E006F000100560065007200
      6B004E006F00010001000D000A006300640073005F00500072006F0070007300
      4F0077006E00650072004E006F0001004F0077006E00650072004E006F000100
      01000D000A006300640073005F00500072006F00700073005000490050004E00
      6F0001005000490050004E006F00010001000D000A006300640073005F005000
      72006F00700073004C00490050004E006F0001004C00490050004E006F000100
      01000D000A006300640073005F00500072006F007000730049006E0070007500
      74004F007000740069006F006E00010049006E007000750074004F0070007400
      69006F006E00010001000D000A006300640073005F00500072006F0070007300
      52006500670050006F0069006E0074004E006F00010052006500670050006F00
      69006E0074004E006F00010001000D000A006300640073005F00500072006F00
      7000730052006500670044006100740065000100520065006700440061007400
      6500010001000D000A006300640073005F00500072006F007000730043006F00
      70007900500063007300010043006F0070007900500063007300010001000D00
      0A006300640073005F00500072006F0070007300520075006E004E006F000100
      520075006E004E006F00010001000D000A006300640073005F00500072006F00
      70007300500072006F00640075006300650072004E006F000100500072006F00
      640075006300650072004E006F00010001000D000A006300640073005F005000
      72006F00700073004100750074006F0043006F006C0057006900640074006800
      01004100750074006F0043006F006C0057006900640074006800010001000D00
      0A006300640073005F00500072006F007000730053007500700070006C006900
      6500720043006F0064006500010053007500700070006C006900650072004300
      6F0064006500010001000D000A006300640073005F00500072006F0070007300
      4C0065006E006700740068004F007000740069006F006E0001004C0065006E00
      6700740068004F007000740069006F006E00010001000D000A00630064007300
      5F00500072006F00700073004C0065006E00670074006800470072006F007500
      70004E006F0001004C0065006E00670074006800470072006F00750070004E00
      6F00010001000D000A006300640073005F00500072006F00700073004E006500
      77004900740065006D0052006F00770001004E00650077004900740065006D00
      52006F007700010001000D000A006300640073005F00500072006F0070007300
      530061006C006500730052006500670069006F006E004E006F00010053006100
      6C006500730052006500670069006F006E004E006F00010001000D000A006300
      640073005F00500072006F00700073004D00610072006B006500740052006500
      670069006F006E004E006F0001004D00610072006B0065007400520065006700
      69006F006E004E006F00010001000D000A006300640073005F00500072006F00
      700073004F00720064006500720054007900700065004E006F0001004F007200
      64006500720054007900700065004E006F00010001000D000A00630064007300
      5F00500072006F00700073005300740061007400750073000100530074006100
      740075007300010001000D000A006300640073005F00500072006F0070007300
      460069006C007400650072004F00720064006500720044006100740065000100
      460069006C007400650072004F00720064006500720044006100740065000100
      01000D000A006300640073005F00500072006F00700073005300740061007200
      740050006500720069006F006400010053007400610072007400500065007200
      69006F006400010001000D000A006300640073005F00500072006F0070007300
      45006E00640050006500720069006F006400010045006E006400500065007200
      69006F006400010001000D000A006300640073005F00500072006F0070007300
      43006C00690065006E0074004E006F00010043006C00690065006E0074004E00
      6F00010001000D000A006300640073005F00500072006F007000730053006100
      6C006500730050006500720073006F006E004E006F000100530061006C006500
      730050006500720073006F006E004E006F00010001000D000A00630064007300
      5F00500072006F00700073005600650072006B0053007500700070006C006900
      650072004E006F0001005600650072006B0053007500700070006C0069006500
      72004E006F00010001000D000A006300640073005F00500072006F0070007300
      5600650072006B004B0075006E0064004E006F0001005600650072006B004B00
      75006E0064004E006F00010001000D000A006300640073005F00500072006F00
      700073004C004F004F0062006A00650063007400540079007000650001004C00
      4F004F0062006A006500630074005400790070006500010001000D000A006300
      640073005F00500072006F007000730042006100720043006F00640065004E00
      6F00010042006100720043006F00640065004E006F00010001000D000A006300
      640073005F00500072006F007000730047007200610064006500530074006100
      6D0070004E006F000100470072006100640065005300740061006D0070004E00
      6F00010001000D000A006300640073005F00500072006F007000730056006F00
      6C0075006D00650055006E00690074004E006F00010056006F006C0075006D00
      650055006E00690074004E006F00010001000D000A006300640073005F005000
      72006F00700073004C0065006E0067007400680046006F0072006D0061007400
      4E006F0001004C0065006E0067007400680046006F0072006D00610074004E00
      6F00010001000D000A006300640073005F00500072006F00700073004C006500
      6E0067007400680056006F006C0055006E00690074004E006F0001004C006500
      6E0067007400680056006F006C0055006E00690074004E006F00010001000D00
      0A006300640073005F00500072006F0070007300470072006F00750070004200
      790042006F0078000100470072006F00750070004200790042006F0078000100
      01000D000A006300640073005F00500072006F0070007300470072006F007500
      7000530075006D006D006100720079000100470072006F007500700053007500
      6D006D00610072007900010001000D000A006300640073005F00500072006F00
      700073004100670065006E0074004E006F0001004100670065006E0074004E00
      6F00010001000D000A006300640073005F00500072006F00700073004C006F00
      6100640069006E0067004C006F0063006100740069006F006E004E006F000100
      4C006F006100640069006E0067004C006F0063006100740069006F006E004E00
      6F00010001000D000A006300640073005F00500072006F007000730053006800
      690070007000650072004E006F00010053006800690070007000650072004E00
      6F00010001000D000A006300640073005F00500072006F007000730042006F00
      6F006B0069006E00670054007900700065004E006F00010042006F006F006B00
      69006E00670054007900700065004E006F00010001000D000A00630064007300
      5F00500072006F007000730043007500730074006F006D00650072004E006F00
      010043007500730074006F006D00650072004E006F00010001000D000A006300
      640073005F00500072006F0070007300530068006F007700500072006F006400
      7500630074000100530068006F007700500072006F0064007500630074000100
      01000D000A006300640073005F00500072006F00700073004D00610072006B00
      6E006100640001004D00610072006B006E0061006400010001000D000A006300
      640073005F00500072006F00700073004B0075006E00640001004B0075006E00
      6400010001000D000A006300640073005F00500072006F007000730053005200
      010053005200010001000D000A006300640073005F00500072006F0070007300
      530061006C006A00670072007500700070000100530061006C006A0067007200
      750070007000010001000D000A006300640073005F00500072006F0070007300
      5600650072006B0001005600650072006B00010001000D000A00630064007300
      5F00500072006F00700073005300700065006400690074006F00720001005300
      700065006400690074006F007200010001000D000A006300640073005F005000
      72006F00700073004100670065006E00740001004100670065006E0074000100
      01000D000A006D0074005F00530065006C006500630074006500640052006F00
      7700730049006E0076006F006900630065004E006F00010049006E0076006F00
      6900630065004E006F00010001000D000A006D0074005F00530065006C006500
      630074006500640052006F00770073004C004F004E006F0001004C004F004E00
      6F00010001000D000A006300640073005F00500072006F00700073004E006100
      6D00650001004E0061006D0065000100010001000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540066007200
      6D004600720065006900670068007400450078007400650072006E004C006F00
      6100640001004D0053002000530061006E007300200053006500720069006600
      01004D0053002000530061006E00730020005300650072006900660001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F006500200055004900010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      6700650072003100420061007200310001005300650067006F00650020005500
      4900010001005400610068006F006D0061000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100530065006700
      6F006500200055004900010001005400610068006F006D0061000D000A006400
      780043006F006D0070006F006E0065006E0074005000720069006E0074006500
      720031004C0069006E006B0031000100540069006D006500730020004E006500
      7700200052006F006D0061006E00010001005400610068006F006D0061000D00
      0A0070006D004700720064004C006F0061006400730001005300650067006F00
      6500200055004900010001005400610068006F006D0061000D000A0063007800
      5300740079006C006500310001005400610068006F006D006100010001005400
      610068006F006D0061000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00640078004200
      610072004D0061006E00610067006500720031002E0043006100740065006700
      6F0072006900650073000100440065006600610075006C007400010001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A00730074004F00740068006500720053007400720069006E00
      670073005F0055006E00690063006F00640065000D000A006300620044006100
      74006500460069006C007400650072002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790043006800650063006B00
      6500640001005400720075006500010001000D000A0063006200440061007400
      6500460069006C007400650072002E00500072006F0070006500720074006900
      650073002E0044006900730070006C006100790055006E006300680065006300
      6B00650064000100460061006C0073006500010001000D000A006C0063005300
      700065006400690074006F0072002E00500072006F0070006500720074006900
      650073002E004B00650079004600690065006C0064004E0061006D0065007300
      010043006C00690065006E0074004E006F00010001000D000A006C0063005300
      700065006400690074006F0072002E00500072006F0070006500720074006900
      650073002E004C006900730074004600690065006C0064004E0061006D006500
      7300010043006C00690065006E0074004E0061006D006500010001000D000A00
      6C0063004100670065006E0074002E00500072006F0070006500720074006900
      650073002E004B00650079004600690065006C0064004E0061006D0065007300
      010043006C00690065006E0074004E006F00010001000D000A006C0063004100
      670065006E0074002E00500072006F0070006500720074006900650073002E00
      4C006900730074004600690065006C0064004E0061006D006500730001004300
      6C00690065006E0074004E0061006D006500010001000D000A006C0063004D00
      610072006B006E00610064002E00500072006F00700065007200740069006500
      73002E004B00650079004600690065006C0064004E0061006D00650073000100
      4D00610072006B006500740052006500670069006F006E004E006F0001000100
      0D000A006C0063004D00610072006B006E00610064002E00500072006F007000
      6500720074006900650073002E004C006900730074004600690065006C006400
      4E0061006D006500730001004D00610072006B00650074005200650067006900
      6F006E004E0061006D006500010001000D000A006700720064004C006F006100
      6400730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004B0075006E0064002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064004C006F0061006400730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100530068006900
      7000700069006E00670050006C0061006E004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064004C006F0061006400730044004200
      420061006E006400650064005400610062006C00650056006900650077003100
      460061006B0074007500720061006E0072002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004C006F006100640073004400420042006100
      6E006400650064005400610062006C0065005600690065007700310053006800
      69007000700069006E00670043006F006D00700061006E0079004E006F002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A006700720064004C006F006100
      6400730044004200420061006E006400650064005400610062006C0065005600
      6900650077003100560061007200750076007200640065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064004C006F006100640073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      3100460061006B00740075007200610076007200640065002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064004C006F006100640073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310049006E007400650072006E0061006C0049006E0076006F00690063006500
      4E006F002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D00650001005400630078004C006100620065006C005000
      72006F007000650072007400690065007300010001000D000A00670072006400
      4C006F0061006400730044004200420061006E00640065006400540061006200
      6C00650056006900650077003100550074006C00610073007400610064002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A006700720064004C006F006100
      6400730044004200420061006E006400650064005400610062006C0065005600
      69006500770031004B006F006D006D0069007300730069006F006E005F005000
      65007200630065006E0074002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A006700720064004C006F0061006400730044004200420061006E0064006500
      64005400610062006C006500560069006500770031004B006F006D006D006900
      7300730069006F006E005F00530075006D002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064004C006F006100640073004400420042006100
      6E006400650064005400610062006C006500560069006500770031004B006F00
      6D006D0069007300730069006F006E005F00760069006C006C006B006F007200
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D006500010054006300780049006D0061006700650043006F006D00
      62006F0042006F007800500072006F0070006500720074006900650073000100
      01000D000A006700720064004C006F0061006400730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100560061006C00
      750074006100460061006B0074007500720061002E00500072006F0070006500
      7200740069006500730043006C006100730073004E0061006D00650001005400
      630078004C006100620065006C00500072006F00700065007200740069006500
      7300010001000D000A006700720064004C006F00610064007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004100
      670065006E0074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064004C006F0061006400730044004200420061006E006400650064005400
      610062006C0065005600690065007700310043006F006E006600690072006D00
      4B006F006D006D002E00500072006F0070006500720074006900650073002E00
      44006900730070006C006100790043006800650063006B006500640001005400
      720075006500010001000D000A006700720064004C006F006100640073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310043006F006E006600690072006D004B006F006D006D002E00500072006F00
      70006500720074006900650073002E0044006900730070006C00610079005500
      6E0063006800650063006B00650064000100460061006C007300650001000100
      0D000A006700720064004C006F0061006400730044004200420061006E006400
      650064005400610062006C0065005600690065007700310043006F006E006600
      690072006D004B006F006D006D002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      6800650063006B0042006F007800500072006F00700065007200740069006500
      7300010001000D000A006700720064004C006F00610064007300440042004200
      61006E006400650064005400610062006C006500560069006500770031004B00
      6F006D006D002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D0065000100540063007800430061006C0063004500
      640069007400500072006F007000650072007400690065007300010001000D00
      0A006700720064004C006F0061006400730044004200420061006E0064006500
      64005400610062006C0065005600690065007700310041004D0033002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004600720061006B007400560061006C007500740061002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031004600720061006B00740045006E006800650074002E0050007200
      6F00700065007200740069006500730043006C006100730073004E0061006D00
      650001005400630078004C006100620065006C00500072006F00700065007200
      7400690065007300010001000D000A006700720064004C006F00610064007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004600720061006B0074006B006F00730074006E00610064002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006100620065006C00500072006F0070006500
      72007400690065007300010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      65007700310043006F006E006600690072006D004600720061006B0074002E00
      500072006F0070006500720074006900650073002E0044006900730070006C00
      6100790043006800650063006B00650064000100540072007500650001000100
      0D000A006700720064004C006F0061006400730044004200420061006E006400
      650064005400610062006C0065005600690065007700310043006F006E006600
      690072006D004600720061006B0074002E00500072006F007000650072007400
      6900650073002E0044006900730070006C006100790055006E00630068006500
      63006B00650064000100460061006C0073006500010001000D000A0067007200
      64004C006F0061006400730044004200420061006E0064006500640054006100
      62006C0065005600690065007700310043006F006E006600690072006D004600
      720061006B0074002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004300680065006300
      6B0042006F007800500072006F00700065007200740069006500730001000100
      0D000A006700720064004C006F0061006400730044004200420061006E006400
      650064005400610062006C006500560069006500770031004600720061006B00
      74006B006F00730074006E00610064005F00730075006D002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064004C006F006100640073004400
      4200420061006E006400650064005400610062006C0065005600690065007700
      310053007000650064006900740072002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064004C006F0061006400730044004200420061006E00
      6400650064005400610062006C00650056006900650077003100460072006100
      6B0074002E00500072006F00700065007200740069006500730043006C006100
      730073004E0061006D0065000100540063007800430061006C00630045006400
      69007400500072006F007000650072007400690065007300010001000D000A00
      6700720064004C006F0061006400730044004200420061006E00640065006400
      5400610062006C006500560069006500770031004500670065006E0056006100
      6C007500740061002E00500072006F0070006500720074006900650073002E00
      4B00650079004600690065006C0064004E0061006D0065007300010043007500
      7200720065006E00630079004E006F00010001000D000A006700720064004C00
      6F0061006400730044004200420061006E006400650064005400610062006C00
      6500560069006500770031004500670065006E00560061006C00750074006100
      2E00500072006F0070006500720074006900650073002E004C00690073007400
      4600690065006C0064004E0061006D0065007300010043007500720072006500
      6E00630079004E0061006D006500010001000D000A006700720064004C006F00
      61006400730044004200420061006E006400650064005400610062006C006500
      560069006500770031004500670065006E00560061006C007500740061002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006F006F006B007500700043006F006D00
      62006F0042006F007800500072006F0070006500720074006900650073000100
      01000D000A0063007800530070006C006900740074006500720031002E004800
      6F0074005A006F006E00650043006C006100730073004E0061006D0065000100
      5400630078004D00650064006900610050006C00610079006500720038005300
      740079006C006500010001000D000A006700720064005F004100740074005F00
      4500780074005F00530065007200760069006300650073004900490044004200
      5400610062006C0065005600690065007700310049006E007400650072006E00
      61006C0049006E0076006F006900630065004E006F002E00500072006F007000
      65007200740069006500730043006C006100730073004E0061006D0065000100
      5400630078004C006100620065006C00500072006F0070006500720074006900
      65007300010001000D000A006700720064005F004100740074005F0045007800
      74005F0053006500720076006900630065007300490049004400420054006100
      62006C00650056006900650077003100530065007100750065006E0073004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005F00
      4100740074005F004500780074005F0053006500720076006900630065007300
      49004900440042005400610062006C0065005600690065007700310053006800
      69007000700069006E00670050006C0061006E004E006F002E00500072006F00
      700065007200740069006500730043006C006100730073004E0061006D006500
      01005400630078004C006100620065006C00500072006F007000650072007400
      690065007300010001000D000A006700720064005F004100740074005F004500
      780074005F005300650072007600690063006500730049004900440042005400
      610062006C006500560069006500770031004400650073006300720069007000
      740069006F006E002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064005F004100740074005F004500780074005F0053006500720076006900
      63006500730049004900440042005400610062006C0065005600690065007700
      310053007500700070006C006900650072005F0049006E0076006F0069006300
      65004E006F002E00500072006F00700065007200740069006500730043006C00
      6100730073004E0061006D00650001005400630078004C006100620065006C00
      500072006F007000650072007400690065007300010001000D000A0067007200
      64005F004100740074005F004500780074005F00530065007200760069006300
      6500730049004900440042005400610062006C00650056006900650077003100
      53007500700070006C006900650072005F0049006E0076006F00690063006500
      44006100740065002E00500072006F0070006500720074006900650073004300
      6C006100730073004E0061006D00650001005400630078004C00610062006500
      6C00500072006F007000650072007400690065007300010001000D000A006700
      720064005F004100740074005F004500780074005F0053006500720076006900
      63006500730049004900440042005400610062006C0065005600690065007700
      310041006D006F0075006E0074002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004300
      61006C0063004500640069007400500072006F00700065007200740069006500
      7300010001000D000A006700720064005F004100740074005F00450078007400
      5F00530065007200760069006300650073004900490044004200540061006200
      6C00650056006900650077003100430075007200720065006E00630079004E00
      6F002E00500072006F00700065007200740069006500730043006C0061007300
      73004E0061006D00650001005400630078004C006100620065006C0050007200
      6F007000650072007400690065007300010001000D000A006700720064005F00
      4100740074005F004500780074005F0053006500720076006900630065007300
      49004900440042005400610062006C0065005600690065007700310053007500
      700070006C006900650072004E006F002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4C006100620065006C00500072006F0070006500720074006900650073000100
      01000D000A006700720064005F004100740074005F004500780074005F005300
      650072007600690063006500730049004900440042005400610062006C006500
      56006900650077003100560061006C007500740061002E00500072006F007000
      6500720074006900650073002E004B00650079004600690065006C0064004E00
      61006D00650073000100430075007200720065006E00630079004E006F000100
      01000D000A006700720064005F004100740074005F004500780074005F005300
      650072007600690063006500730049004900440042005400610062006C006500
      56006900650077003100560061006C007500740061002E00500072006F007000
      6500720074006900650073002E004C006900730074004600690065006C006400
      4E0061006D00650073000100430075007200720065006E00630079004E006100
      6D006500010001000D000A006700720064005F004100740074005F0045007800
      74005F0053006500720076006900630065007300490049004400420054006100
      62006C00650056006900650077003100560061006C007500740061002E005000
      72006F00700065007200740069006500730043006C006100730073004E006100
      6D00650001005400630078004C006F006F006B007500700043006F006D006200
      6F0042006F007800500072006F00700065007200740069006500730001000100
      0D000A006700720064005F004100740074005F004500780074005F0053006500
      72007600690063006500730049004900440042005400610062006C0065005600
      69006500770031004E006F00740065002E00500072006F007000650072007400
      69006500730043006C006100730073004E0061006D0065000100540063007800
      4D0065006D006F00500072006F00700065007200740069006500730001000100
      0D000A006700720064005F004100740074005F004500780074005F0053006500
      72007600690063006500730049004900440042005400610062006C0065005600
      6900650077003100430072006500610074006500640044006100740065002E00
      500072006F00700065007200740069006500730043006C006100730073004E00
      61006D00650001005400630078004C006100620065006C00500072006F007000
      650072007400690065007300010001000D000A006700720064005F0041007400
      74005F004500780074005F005300650072007600690063006500730049004900
      440042005400610062006C006500560069006500770031004300720065006100
      74006500640055007300650072002E00500072006F0070006500720074006900
      6500730043006C006100730073004E0061006D00650001005400630078004C00
      6100620065006C00500072006F00700065007200740069006500730001000100
      0D000A006700720064005F004100740074005F004500780074005F0053006500
      72007600690063006500730049004900440042005400610062006C0065005600
      69006500770031004D006F006400690066006900650064004400610074006500
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D00650001005400630078004C006100620065006C00500072006F00
      7000650072007400690065007300010001000D000A006700720064005F004100
      740074005F004500780074005F00530065007200760069006300650073004900
      4900440042005400610062006C006500560069006500770031004D006F006400
      6900660069006500640055007300650072002E00500072006F00700065007200
      740069006500730043006C006100730073004E0061006D006500010054006300
      78004C006100620065006C00500072006F007000650072007400690065007300
      010001000D000A006700720064005F004100740074005F004500780074005F00
      5300650072007600690063006500730049004900440042005400610062006C00
      65005600690065007700310051007500690063006B005F0049006E0076006F00
      6900630065004E006F002E00500072006F007000650072007400690065007300
      43006C006100730073004E0061006D00650001005400630078004C0061006200
      65006C00500072006F007000650072007400690065007300010001000D000A00
      6700720064005F004100740074005F004500780074005F005300650072007600
      690063006500730049004900440042005400610062006C006500560069006500
      7700310041006D006F0075006E00740041007400740065007300740065006400
      2E00500072006F00700065007200740069006500730043006C00610073007300
      4E0061006D0065000100540063007800430061006C0063004500640069007400
      500072006F007000650072007400690065007300010001000D000A0067007200
      64005F004100740074005F004500780074005F00530065007200760069006300
      6500730049004900440042005400610062006C00650056006900650077003100
      4B006C00690065006E0074002E00500072006F00700065007200740069006500
      730043006C006100730073004E0061006D00650001005400630078004C006100
      620065006C00500072006F007000650072007400690065007300010001000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720031002E004F006C0064004E0061006D006500010043007500730074006F00
      6D0020003100010001000D000A006400780043006F006D0070006F006E006500
      6E0074005000720069006E0074006500720031004C0069006E006B0031002E00
      440065007300690067006E0065007200430061007000740069006F006E000100
      46006F0072006D006100740020005200650070006F0072007400010001000D00
      0A006300640073005F00500072006F00700073002E0043006F006E006E006500
      6300740069006F006E004E0061006D0065000100560049005300010001000D00
      0A006300640073005F00500072006F0070007300550073006500720049004400
      2E004F0072006900670069006E00010055007300650072004900440001000100
      0D000A006300640073005F00500072006F007000730046006F0072006D002E00
      4F0072006900670069006E00010046006F0072006D00010001000D000A006300
      640073005F00500072006F00700073004E0061006D0065002E004F0072006900
      670069006E0001004E0061006D006500010001000D000A006300640073005F00
      500072006F00700073005600650072006B004E006F002E004F00720069006700
      69006E0001005600650072006B004E006F00010001000D000A00630064007300
      5F00500072006F00700073004F0077006E00650072004E006F002E004F007200
      6900670069006E0001004F0077006E00650072004E006F00010001000D000A00
      6300640073005F00500072006F00700073005000490050004E006F002E004F00
      72006900670069006E0001005000490050004E006F00010001000D000A006300
      640073005F00500072006F00700073004C00490050004E006F002E004F007200
      6900670069006E0001004C00490050004E006F00010001000D000A0063006400
      73005F00500072006F007000730049006E007000750074004F00700074006900
      6F006E002E004F0072006900670069006E00010049006E007000750074004F00
      7000740069006F006E00010001000D000A006300640073005F00500072006F00
      7000730052006500670050006F0069006E0074004E006F002E004F0072006900
      670069006E00010052006500670050006F0069006E0074004E006F0001000100
      0D000A006300640073005F00500072006F007000730052006500670044006100
      740065002E004F0072006900670069006E000100520065006700440061007400
      6500010001000D000A006300640073005F00500072006F007000730043006F00
      700079005000630073002E004F0072006900670069006E00010043006F007000
      7900500063007300010001000D000A006300640073005F00500072006F007000
      7300520075006E004E006F002E004F0072006900670069006E00010052007500
      6E004E006F00010001000D000A006300640073005F00500072006F0070007300
      500072006F00640075006300650072004E006F002E004F007200690067006900
      6E000100500072006F00640075006300650072004E006F00010001000D000A00
      6300640073005F00500072006F00700073004100750074006F0043006F006C00
      570069006400740068002E004F0072006900670069006E000100410075007400
      6F0043006F006C0057006900640074006800010001000D000A00630064007300
      5F00500072006F007000730053007500700070006C0069006500720043006F00
      640065002E004F0072006900670069006E00010053007500700070006C006900
      6500720043006F0064006500010001000D000A006300640073005F0050007200
      6F00700073004C0065006E006700740068004F007000740069006F006E002E00
      4F0072006900670069006E0001004C0065006E006700740068004F0070007400
      69006F006E00010001000D000A006300640073005F00500072006F0070007300
      4C0065006E00670074006800470072006F00750070004E006F002E004F007200
      6900670069006E0001004C0065006E00670074006800470072006F0075007000
      4E006F00010001000D000A006300640073005F00500072006F00700073004E00
      650077004900740065006D0052006F0077002E004F0072006900670069006E00
      01004E00650077004900740065006D0052006F007700010001000D000A006300
      640073005F00500072006F0070007300530061006C0065007300520065006700
      69006F006E004E006F002E004F0072006900670069006E000100530061006C00
      6500730052006500670069006F006E004E006F00010001000D000A0063006400
      73005F00500072006F00700073004D00610072006B0065007400520065006700
      69006F006E004E006F002E004F0072006900670069006E0001004D0061007200
      6B006500740052006500670069006F006E004E006F00010001000D000A006300
      640073005F00500072006F00700073004F007200640065007200540079007000
      65004E006F002E004F0072006900670069006E0001004F007200640065007200
      54007900700065004E006F00010001000D000A006300640073005F0050007200
      6F00700073005300740061007400750073002E004F0072006900670069006E00
      0100530074006100740075007300010001000D000A006300640073005F005000
      72006F0070007300460069006C007400650072004F0072006400650072004400
      6100740065002E004F0072006900670069006E000100460069006C0074006500
      72004F0072006400650072004400610074006500010001000D000A0063006400
      73005F00500072006F0070007300530074006100720074005000650072006900
      6F0064002E004F0072006900670069006E000100530074006100720074005000
      6500720069006F006400010001000D000A006300640073005F00500072006F00
      7000730045006E00640050006500720069006F0064002E004F00720069006700
      69006E00010045006E00640050006500720069006F006400010001000D000A00
      6300640073005F00500072006F007000730043006C00690065006E0074004E00
      6F002E004F0072006900670069006E00010043006C00690065006E0074004E00
      6F00010001000D000A006300640073005F00500072006F007000730053006100
      6C006500730050006500720073006F006E004E006F002E004F00720069006700
      69006E000100530061006C006500730050006500720073006F006E004E006F00
      010001000D000A006300640073005F00500072006F0070007300560065007200
      6B0053007500700070006C006900650072004E006F002E004F00720069006700
      69006E0001005600650072006B0053007500700070006C006900650072004E00
      6F00010001000D000A006300640073005F00500072006F007000730056006500
      72006B004B0075006E0064004E006F002E004F0072006900670069006E000100
      5600650072006B004B0075006E0064004E006F00010001000D000A0063006400
      73005F00500072006F00700073004C004F004F0062006A006500630074005400
      7900700065002E004F0072006900670069006E0001004C004F004F0062006A00
      6500630074005400790070006500010001000D000A006300640073005F005000
      72006F007000730042006100720043006F00640065004E006F002E004F007200
      6900670069006E00010042006100720043006F00640065004E006F0001000100
      0D000A006300640073005F00500072006F007000730047007200610064006500
      5300740061006D0070004E006F002E004F0072006900670069006E0001004700
      72006100640065005300740061006D0070004E006F00010001000D000A006300
      640073005F00500072006F007000730056006F006C0075006D00650055006E00
      690074004E006F002E004F0072006900670069006E00010056006F006C007500
      6D00650055006E00690074004E006F00010001000D000A006300640073005F00
      500072006F00700073004C0065006E0067007400680046006F0072006D006100
      74004E006F002E004F0072006900670069006E0001004C0065006E0067007400
      680046006F0072006D00610074004E006F00010001000D000A00630064007300
      5F00500072006F00700073004C0065006E0067007400680056006F006C005500
      6E00690074004E006F002E004F0072006900670069006E0001004C0065006E00
      67007400680056006F006C0055006E00690074004E006F00010001000D000A00
      6300640073005F00500072006F0070007300470072006F007500700042007900
      42006F0078002E004F0072006900670069006E000100470072006F0075007000
      4200790042006F007800010001000D000A006300640073005F00500072006F00
      70007300470072006F0075007000530075006D006D006100720079002E004F00
      72006900670069006E000100470072006F0075007000530075006D006D006100
      72007900010001000D000A006300640073005F00500072006F00700073004100
      670065006E0074004E006F002E004F0072006900670069006E00010041006700
      65006E0074004E006F00010001000D000A006300640073005F00500072006F00
      700073004C006F006100640069006E0067004C006F0063006100740069006F00
      6E004E006F002E004F0072006900670069006E0001004C006F00610064006900
      6E0067004C006F0063006100740069006F006E004E006F00010001000D000A00
      6300640073005F00500072006F00700073005300680069007000700065007200
      4E006F002E004F0072006900670069006E000100530068006900700070006500
      72004E006F00010001000D000A006300640073005F00500072006F0070007300
      42006F006F006B0069006E00670054007900700065004E006F002E004F007200
      6900670069006E00010042006F006F006B0069006E0067005400790070006500
      4E006F00010001000D000A006300640073005F00500072006F00700073004300
      7500730074006F006D00650072004E006F002E004F0072006900670069006E00
      010043007500730074006F006D00650072004E006F00010001000D000A006300
      640073005F00500072006F0070007300530068006F007700500072006F006400
      7500630074002E004F0072006900670069006E000100530068006F0077005000
      72006F006400750063007400010001000D000A007300740043006F006C006C00
      65006300740069006F006E0073005F0055006E00690063006F00640065000D00
      0A006C0063005300700065006400690074006F0072002E00500072006F007000
      6500720074006900650073002E004C0069007300740043006F006C0075006D00
      6E0073005B0030005D002E00430061007000740069006F006E00010043006C00
      690065006E0074004E0061006D006500010001000D000A006C00630041006700
      65006E0074002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E00010043006C00690065006E0074004E0061006D006500
      010001000D000A006C0063004D00610072006B006E00610064002E0050007200
      6F0070006500720074006900650073002E004C0069007300740043006F006C00
      75006D006E0073005B0030005D002E00430061007000740069006F006E000100
      4D00610072006B006500740052006500670069006F006E004E0061006D006500
      010001000D000A00690063004100740074006500730074006500720061004D00
      6F0074002E00500072006F0070006500720074006900650073002E0049007400
      65006D0073005B0030005D002E00440065007300630072006900700074006900
      6F006E0001004B006F006D006D00010001000D000A0069006300410074007400
      6500730074006500720061004D006F0074002E00500072006F00700065007200
      74006900650073002E004900740065006D0073005B0031005D002E0044006500
      73006300720069007000740069006F006E0001004600720061006B0074000100
      01000D000A00690063004100740074006500730074006500720061004D006F00
      74002E00500072006F0070006500720074006900650073002E00490074006500
      6D0073005B0032005D002E004400650073006300720069007000740069006F00
      6E0001004600720061006B0074002000F6007600720069006700740001000100
      0D000A006700720064004C006F0061006400730044004200420061006E006400
      650064005400610062006C006500560069006500770031002E00420061006E00
      640073005B0030005D002E00430061007000740069006F006E00010046006100
      6B007400750072006100010001000D000A006700720064004C006F0061006400
      730044004200420061006E006400650064005400610062006C00650056006900
      6500770031002E00420061006E00640073005B0031005D002E00430061007000
      740069006F006E0001004B006F006D006D0069007300730069006F006E000100
      01000D000A006700720064004C006F0061006400730044004200420061006E00
      6400650064005400610062006C006500560069006500770031002E0042006100
      6E00640073005B0032005D002E00430061007000740069006F006E0001004600
      720061006B007400010001000D000A006700720064004C006F00610064007300
      44004200420061006E006400650064005400610062006C006500560069006500
      770031004B006F006D006D0069007300730069006F006E005F00760069006C00
      6C006B006F0072002E00500072006F0070006500720074006900650073002E00
      4900740065006D0073005B0030005D002E004400650073006300720069007000
      740069006F006E00010056006100720075007600E40072006400650001000100
      0D000A006700720064004C006F0061006400730044004200420061006E006400
      650064005400610062006C006500560069006500770031004B006F006D006D00
      69007300730069006F006E005F00760069006C006C006B006F0072002E005000
      72006F0070006500720074006900650073002E004900740065006D0073005B00
      31005D002E004400650073006300720069007000740069006F006E0001004600
      61006B0074007500720061007600E400720064006500010001000D000A006700
      720064004C006F0061006400730044004200420061006E006400650064005400
      610062006C006500560069006500770031004500670065006E00560061006C00
      7500740061002E00500072006F0070006500720074006900650073002E004C00
      69007300740043006F006C0075006D006E0073005B0030005D002E0043006100
      7000740069006F006E000100430075007200720065006E00630079004E006100
      6D006500010001000D000A006700720064005F004100740074005F0045007800
      74005F0053006500720076006900630065007300490049004400420054006100
      62006C00650056006900650077003100560061006C007500740061002E005000
      72006F0070006500720074006900650073002E004C0069007300740043006F00
      6C0075006D006E0073005B0030005D002E00430061007000740069006F006E00
      0100430075007200720065006E00630079004E0061006D006500010001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400660072006D004600720065006900670068007400
      450078007400650072006E004C006F0061006400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006400780042006100
      72004D0061006E00610067006500720031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A006400780043006F006D0070006F006E0065006E0074005000720069006E00
      74006500720031004C0069006E006B0031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0070006D00470072006400
      4C006F006100640073000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00630078005300740079006C00650031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00}
  end
end
