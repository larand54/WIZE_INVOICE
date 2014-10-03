object fReportStatics: TfReportStatics
  Left = 0
  Top = 0
  Caption = 'Rapport-parametrar'
  ClientHeight = 291
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 959
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 904
    object lcSalesregion: TcxDBLookupComboBox
      Left = 165
      Top = 27
      DataBinding.DataField = 'Salesregion'
      DataBinding.DataSource = dsClient
      Properties.DropDownWidth = 300
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ClientNo'
      Properties.ListColumns = <
        item
          FieldName = 'ClientName'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 145
    end
    object cxLabel1: TcxLabel
      Left = 64
      Top = 32
      Caption = 'F'#246'rs'#228'ljningsregion:'
    end
    object cxButton1: TcxButton
      Left = 336
      Top = 18
      Width = 89
      Height = 49
      Action = acNewRS
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 440
      Top = 18
      Width = 89
      Height = 49
      Action = acSave
      TabOrder = 3
    end
    object cxButton3: TcxButton
      Left = 544
      Top = 18
      Width = 89
      Height = 49
      Action = acDelete
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 73
    Width = 959
    Height = 218
    Align = alClient
    TabOrder = 1
    ExplicitTop = 208
    ExplicitWidth = 904
    ExplicitHeight = 360
    object grdReportStatics: TcxGrid
      Left = 1
      Top = 1
      Width = 957
      Height = 216
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 40
      ExplicitTop = 24
      ExplicitWidth = 250
      ExplicitHeight = 200
      object grdReportStaticsDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmsContact.ds_ReportStaticsII
        DataController.KeyFieldNames = 'SalesRegionNo;DocType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 200
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdReportStaticsDBTableView1SalesRegionNo: TcxGridDBColumn
          DataBinding.FieldName = 'SalesRegionNo'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdReportStaticsDBTableView1DocType: TcxGridDBColumn
          DataBinding.FieldName = 'DocType'
          PropertiesClassName = 'TcxLabelProperties'
          Visible = False
        end
        object grdReportStaticsDBTableView1CompanyName: TcxGridDBColumn
          Caption = 'F'#246'retagsnamn'
          DataBinding.FieldName = 'CompanyName'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1Address: TcxGridDBColumn
          DataBinding.FieldName = 'Address'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1Telefon: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1HQ: TcxGridDBColumn
          DataBinding.FieldName = 'HQ'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1Vat_BankInfo: TcxGridDBColumn
          Caption = 'Vat och BankInfo'
          DataBinding.FieldName = 'Vat_BankInfo'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1AccountNo: TcxGridDBColumn
          Caption = 'Kontonr'
          DataBinding.FieldName = 'AccountNo'
          PropertiesClassName = 'TcxRichEditProperties'
        end
        object grdReportStaticsDBTableView1Giro: TcxGridDBColumn
          Caption = 'Gironr'
          DataBinding.FieldName = 'Giro'
          PropertiesClassName = 'TcxRichEditProperties'
        end
      end
      object grdReportStaticsDBCardView1: TcxGridDBCardView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dmsContact.ds_ReportStaticsII
        DataController.KeyFieldNames = 'SalesRegionNo;DocType'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object grdReportStaticsDBCardView1SalesRegionNo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'SalesRegionNo'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1DocType: TcxGridDBCardViewRow
          DataBinding.FieldName = 'DocType'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1CompanyName: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CompanyName'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Address: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Address'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Telefon: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Telefon'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Email: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1HQ: TcxGridDBCardViewRow
          DataBinding.FieldName = 'HQ'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Vat_BankInfo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Vat_BankInfo'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1AccountNo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'AccountNo'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
        object grdReportStaticsDBCardView1Giro: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Giro'
          PropertiesClassName = 'TcxRichEditProperties'
          Position.BeginsLayer = True
        end
      end
      object grdReportStaticsLevel1: TcxGridLevel
        GridView = grdReportStaticsDBTableView1
      end
    end
  end
  object mtClient: TADMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Left = 112
    Top = 352
    object mtClientClientNo: TIntegerField
      FieldName = 'ClientNo'
      OnChange = mtClientClientNoChange
    end
    object mtClientSalesregion: TStringField
      FieldKind = fkLookup
      FieldName = 'Salesregion'
      LookupDataSet = dmsContact.cds_SR
      LookupKeyFields = 'ClientNo'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientNo'
      Size = 80
      Lookup = True
    end
    object mtClientDocType: TIntegerField
      FieldName = 'DocType'
    end
  end
  object dsClient: TDataSource
    DataSet = mtClient
    Left = 112
    Top = 408
  end
  object ActionList1: TActionList
    Left = 440
    Top = 304
    object acNewRS: TAction
      Caption = 'Ny'
      OnExecute = acNewRSExecute
      OnUpdate = acNewRSUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
      OnUpdate = acDeleteUpdate
    end
  end
end
