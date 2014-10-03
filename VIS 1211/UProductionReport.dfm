object frmProductionReport: TfrmProductionReport
  Left = 197
  Top = 104
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmProductionReport'
  ClientHeight = 580
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 65
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    object Label11: TLabel
      Left = 312
      Top = 14
      Width = 39
      Height = 13
      Caption = 'START:'
    end
    object Label1: TLabel
      Left = 496
      Top = 14
      Width = 56
      Height = 13
      Caption = 'SUPPLIER:'
    end
    object Label2: TLabel
      Left = 496
      Top = 38
      Width = 63
      Height = 13
      Caption = 'PROD.UNIT:'
    end
    object Label3: TLabel
      Left = 16
      Top = 6
      Width = 199
      Height = 13
      Caption = 'PACKAGE PRODUCTION REPORT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 312
      Top = 38
      Width = 26
      Height = 13
      Caption = 'END:'
    end
    object peProductionUnit: TdxPickEdit
      Left = 568
      Top = 33
      Width = 161
      TabOrder = 2
    end
    object peSupplier: TdxPickEdit
      Left = 568
      Top = 9
      Width = 161
      TabOrder = 1
      OnChange = peSupplierChange
    end
    object StartDate: TdxDateEdit
      Left = 360
      Top = 8
      Width = 121
      TabOrder = 0
      Date = -700000
    end
    object bbRefresh: TBitBtn
      Left = 16
      Top = 24
      Width = 81
      Height = 33
      Caption = 'Refresh'
      TabOrder = 3
      OnClick = bbRefreshClick
    end
    object bbPrint: TBitBtn
      Left = 104
      Top = 24
      Width = 75
      Height = 33
      Caption = 'Print'
      TabOrder = 4
      OnClick = bbPrintClick
    end
    object bbExit: TBitBtn
      Left = 184
      Top = 24
      Width = 81
      Height = 33
      Caption = 'Exit'
      TabOrder = 5
      OnClick = bbExitClick
    end
    object endDate: TdxDateEdit
      Left = 360
      Top = 32
      Width = 121
      TabOrder = 6
      Date = -700000
    end
  end
  object grdProdReport: TdxDBGrid
    Left = 0
    Top = 65
    Width = 792
    Height = 515
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'UNIQUEKEY'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    DataSource = dmInventory.ds_PkgProd_Rep
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    object grdProdReportUNIQUEKEY: TdxDBGridMaskColumn
      Width = 258
      BandIndex = 0
      RowIndex = 0
      FieldName = 'UNIQUEKEY'
    end
    object grdProdReportProductionDate: TdxDBGridColumn
      Caption = 'PROD.DATE'
      Width = 208
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductionDate'
    end
    object grdProdReportClientName: TdxDBGridMaskColumn
      Caption = 'SUPPLIER'
      Width = 188
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientName'
    end
    object grdProdReportPROD_UNIT: TdxDBGridMaskColumn
      Width = 119
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PROD_UNIT'
    end
    object grdProdReportINVENTORY: TdxDBGridMaskColumn
      Width = 180
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INVENTORY'
    end
    object grdProdReportPRODUCT: TdxDBGridMaskColumn
      Width = 331
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PRODUCT'
    end
    object grdProdReportPACKAGENO: TdxDBGridMaskColumn
      Width = 72
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PACKAGENO'
      SummaryFooterType = cstCount
      SummaryFooterField = 'PACKAGENO'
      SummaryField = 'PACKAGENO'
    end
    object grdProdReportSUPP_CODE: TdxDBGridMaskColumn
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUPP_CODE'
    end
    object grdProdReportACT_THICK: TdxDBGridMaskColumn
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ACT_THICK'
    end
    object grdProdReportACT_WIDTH: TdxDBGridMaskColumn
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ACT_WIDTH'
    end
    object grdProdReportNOM_THICK: TdxDBGridMaskColumn
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOM_THICK'
    end
    object grdProdReportNOM_WIDTH: TdxDBGridMaskColumn
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NOM_WIDTH'
    end
    object grdProdReportPCS_PER_LENGTH: TdxDBGridMaskColumn
      Width = 1534
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PCS_PER_LENGTH'
    end
    object grdProdReportL18: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L18'
    end
    object grdProdReportL21: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L21'
    end
    object grdProdReportL24: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L24'
    end
    object grdProdReportL27: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L27'
    end
    object grdProdReportL30: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L30'
    end
    object grdProdReportL33: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L33'
    end
    object grdProdReportL36: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L36'
    end
    object grdProdReportL39: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L39'
    end
    object grdProdReportL42: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L42'
    end
    object grdProdReportL45: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L45'
    end
    object grdProdReportL48: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L48'
    end
    object grdProdReportL51: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L51'
    end
    object grdProdReportL54: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L54'
    end
    object grdProdReportL57: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L57'
    end
    object grdProdReportL60: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L60'
    end
    object grdProdReportAM3: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AM3'
      SummaryFooterType = cstSum
      SummaryFooterField = 'AM3'
      SummaryField = 'AM3'
    end
    object grdProdReportNM3: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NM3'
      SummaryFooterType = cstSum
      SummaryFooterField = 'NM3'
      SummaryField = 'NM3'
    end
    object grdProdReportALPM: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ALPM'
      SummaryFooterType = cstSum
      SummaryFooterField = 'ALPM'
      SummaryField = 'ALPM'
    end
    object grdProdReportMFBM: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MFBM'
      SummaryFooterType = cstSum
      SummaryFooterField = 'MFBM'
      SummaryField = 'MFBM'
    end
    object grdProdReportKM2: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KM2'
      SummaryFooterType = cstSum
      SummaryFooterField = 'KM2'
      SummaryField = 'KM2'
    end
    object grdProdReportNO_OF_PCS: TdxDBGridMaskColumn
      Caption = 'PCS'
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NO_OF_PCS'
      SummaryFooterType = cstSum
      SummaryFooterField = 'NO_OF_PCS'
      SummaryField = 'NO_OF_PCS'
    end
    object grdProdReportPhyInvPointNameNo: TdxDBGridMaskColumn
      Width = 105
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PhyInvPointNameNo'
    end
    object grdProdReportSupplierNo: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SupplierNo'
    end
    object grdProdReportClientCode: TdxDBGridMaskColumn
      Width = 57
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientCode'
    end
    object grdProdReportProductNo: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductNo'
    end
    object grdProdReportPackageTypeNo: TdxDBGridMaskColumn
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackageTypeNo'
    end
    object grdProdReportProductionUnitNo: TdxDBGridMaskColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProductionUnitNo'
    end
    object grdProdReportSTD_Length: TdxDBGridMaskColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'STD_Length'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 144
    object Customizegridlayout1: TMenuItem
      Caption = 'Customize grid layout'
      OnClick = Customizegridlayout1Click
    end
  end
end
