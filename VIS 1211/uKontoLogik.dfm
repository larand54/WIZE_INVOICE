object fKontoLogik: TfKontoLogik
  Left = 216
  Top = 165
  Caption = 'Kontostyrning'
  ClientHeight = 632
  ClientWidth = 1139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 433
      Height = 57
      Align = alLeft
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 431
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel4: TPanel
      Left = 1059
      Top = 0
      Width = 80
      Height = 57
      Align = alRight
      TabOrder = 1
      object dxBarDockControl2: TdxBarDockControl
        Left = 1
        Top = 1
        Width = 78
        Height = 46
        Align = dalTop
        BarManager = dxBarManager1
      end
    end
    object Panel5: TPanel
      Left = 433
      Top = 0
      Width = 626
      Height = 57
      Align = alClient
      TabOrder = 2
      object cxLabel1: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Kontostyrning'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        AnchorX = 313
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 1139
    Height = 575
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object grdKontoLogik: TcxGrid
      Left = 1
      Top = 1
      Width = 1137
      Height = 573
      Align = alClient
      TabOrder = 0
      object grdKontoLogikDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmVidaInvoice.ds_KontoLogik
        DataController.KeyFieldNames = 
          'CustomerCountryNo;PO_CountryNo;POFromCountry;SalesmangroupNo;Tra' +
          'ding;VarugruppNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grdKontoLogikDBTableView1SalesmangroupNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesmangroupNo'
        end
        object grdKontoLogikDBTableView1SalesregionNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesregionNo'
        end
        object grdKontoLogikDBTableView1CustomerCountryNo: TcxGridDBColumn
          DataBinding.FieldName = 'CustomerCountryNo'
        end
        object grdKontoLogikDBTableView1Trading: TcxGridDBColumn
          DataBinding.FieldName = 'Trading'
        end
        object grdKontoLogikDBTableView1PO_CountryNo: TcxGridDBColumn
          DataBinding.FieldName = 'PO_CountryNo'
        end
        object grdKontoLogikDBTableView1VarugruppNo: TcxGridDBColumn
          DataBinding.FieldName = 'VarugruppNo'
        end
        object grdKontoLogikDBTableView1ForsaljningsKonto: TcxGridDBColumn
          DataBinding.FieldName = 'ForsaljningsKonto'
        end
        object grdKontoLogikDBTableView1FraktKonto: TcxGridDBColumn
          DataBinding.FieldName = 'FraktKonto'
        end
        object grdKontoLogikDBTableView1VatCode: TcxGridDBColumn
          DataBinding.FieldName = 'VatCode'
        end
        object grdKontoLogikDBTableView1MomsKonto: TcxGridDBColumn
          DataBinding.FieldName = 'MomsKonto'
        end
        object grdKontoLogikDBTableView1Salesgroup: TcxGridDBColumn
          DataBinding.FieldName = 'Salesgroup'
        end
        object grdKontoLogikDBTableView1Salesregion: TcxGridDBColumn
          DataBinding.FieldName = 'Salesregion'
        end
        object grdKontoLogikDBTableView1SalesToCountry: TcxGridDBColumn
          DataBinding.FieldName = 'SalesToCountry'
        end
        object grdKontoLogikDBTableView1POFromCountry: TcxGridDBColumn
          DataBinding.FieldName = 'POFromCountry'
        end
        object grdKontoLogikDBTableView1DateCreated: TcxGridDBColumn
          DataBinding.FieldName = 'DateCreated'
        end
        object grdKontoLogikDBTableView1DateModified: TcxGridDBColumn
          DataBinding.FieldName = 'DateModified'
        end
        object grdKontoLogikDBTableView1CreatedUser: TcxGridDBColumn
          DataBinding.FieldName = 'CreatedUser'
        end
        object grdKontoLogikDBTableView1ModifiedUser: TcxGridDBColumn
          DataBinding.FieldName = 'ModifiedUser'
        end
      end
      object grdKontoLogikDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        OnEditKeyDown = grdKontoLogikDBBandedTableView1EditKeyDown
        DataController.DataSource = daMoLM1.ds_KontoLogik
        DataController.KeyFieldNames = 
          'CustomerCountryNo;PO_CountryNo;SalesmangroupNo;Trading;Varugrupp' +
          'No;Moms;SalesregionNo;ForsaljningsKonto'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skCount
            FieldName = 'ForsaljningsKonto'
            Column = grdKontoLogikDBBandedTableView1ForsaljningsKonto
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'F'#246'rs'#228'ljning'
            Width = 598
          end
          item
            Caption = 'Trading'
            Width = 208
          end
          item
            Caption = 'Konton'
            Width = 325
          end>
        object grdKontoLogikDBBandedTableView1SalesmangroupNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesmangroupNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 82
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1SalesregionNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesregionNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 33
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1CustomerCountryNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CustomerCountryNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Trading: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Trading'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 92
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1PO_Country: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_Country'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'CountryNo'
          Properties.ListColumns = <
            item
              FieldName = 'CountryName'
            end>
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1PO_CountryNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PO_CountryNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Width = 93
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Artikel: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Artikel'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ArticleNo'
          Properties.ListColumns = <
            item
              FieldName = 'ArticleName'
            end>
          Width = 109
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Salesgroup: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Salesgroup'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'SalesGroupNo'
          Properties.ListColumns = <
            item
              FieldName = 'SalesGroupName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 103
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Salesregion: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Salesregion'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 155
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1SalesToCountry: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesToCountry'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CountryNo'
          Properties.ListColumns = <
            item
              FieldName = 'CountryName'
            end>
          Properties.ListOptions.ShowHeader = False
          Width = 97
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1DateCreated: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DateCreated'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1DateModified: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DateModified'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 76
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1CreatedUser: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CreatedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 23
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1ModifiedUser: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ModifiedUser'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          Width = 24
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1ForsaljningsKonto: TcxGridDBBandedColumn
          Caption = 'Kontonr'
          DataBinding.FieldName = 'ForsaljningsKonto'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 94
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1FraktKonto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FraktKonto'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          Width = 78
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1VatCode: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VatCode'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 76
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1MomsKonto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MomsKonto'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 77
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1Moms: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Moms'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object grdKontoLogikDBBandedTableView1VarugruppNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VarugruppNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
      end
      object grdKontoLogikLevel1: TcxGridLevel
        GridView = grdKontoLogikDBBandedTableView1
      end
    end
  end
  object dxBarManager1: TdxBarManager
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
    ImageOptions.Images = dmsConnector.imglistActions
    ImageOptions.LargeImages = dmsConnector.imglistActions
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 408
    Top = 198
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
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 179
      FloatTop = 166
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
          ItemName = 'dxBarLargeButton7'
        end>
      OneOnRow = True
      Row = 0
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
      Caption = 'Exit'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 179
      FloatTop = 166
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = acAdd
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acDelete
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acExit
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acPrint
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acAvdelning
      Category = 0
    end
  end
  object ActionList1: TActionList
    Images = dmsConnector.imglistActions
    Left = 232
    Top = 126
    object acExit: TAction
      Caption = 'St'#228'ng'
      ImageIndex = 0
      ShortCut = 123
      OnExecute = acExitExecute
    end
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 15
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acDelete: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 6
      ShortCut = 116
      OnExecute = acDeleteExecute
      OnUpdate = acDeleteUpdate
    end
    object acAdd: TAction
      Caption = 'L'#228'gg till F2'
      ImageIndex = 8
      ShortCut = 113
      OnExecute = acAddExecute
    end
    object acPrint: TAction
      Caption = 'Skriv ut F8'
      ImageIndex = 5
      ShortCut = 119
      OnExecute = acPrintExecute
      OnUpdate = acPrintUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      ImageIndex = 10
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acAvdelning: TAction
      Caption = 'Avdelning'
      ImageIndex = 3
      OnExecute = acAvdelningExecute
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 192
    Top = 193
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = grdKontoLogik
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.CenterTitle.Strings = (
        '[Page # of Pages #]')
      PrinterPage.PageHeader.LeftTitle.Strings = (
        '[Machine Name][User Name]')
      PrinterPage.PageHeader.RightTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
