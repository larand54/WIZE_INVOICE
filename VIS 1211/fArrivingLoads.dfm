inherited frmArrivingLoads: TfrmArrivingLoads
  Tag = 1
  Left = 194
  Top = 105
  Caption = 'frmArrivingLoads'
  ClientHeight = 607
  ClientWidth = 1028
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 417
    Width = 1028
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clBlack
    ParentColor = False
  end
  inherited tbarMain: TToolBar
    Width = 1028
    ButtonWidth = 69
    inherited paneToolbars: TPanel
      inherited toolbar_DBForm_1: TToolBar
        ButtonHeight = 44
        ButtonWidth = 65
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 465
          Height = 44
          TabOrder = 0
          object Label3: TLabel
            Left = 3
            Top = 23
            Width = 61
            Height = 13
            Caption = 'Search LO #'
          end
          object Label1: TLabel
            Left = 259
            Top = 8
            Width = 47
            Height = 13
            Caption = 'Company:'
            Visible = False
          end
          object cmbConfirmByReceiver: TComboBox
            Left = 315
            Top = 22
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = '0 : Not confirmed'
            OnChange = cmbConfirmByReceiverChange
            Items.Strings = (
              '0 : Not confirmed'
              '1 : Confirmed')
          end
          object nfSearchLO: TOvcNumericField
            Left = 68
            Top = 19
            Width = 61
            Height = 21
            Cursor = crIBeam
            DataType = nftLongInt
            CaretOvr.Shape = csBlock
            EFColors.Disabled.BackColor = clWindow
            EFColors.Disabled.TextColor = clGrayText
            EFColors.Error.BackColor = clRed
            EFColors.Error.TextColor = clBlack
            EFColors.Highlight.BackColor = clHighlight
            EFColors.Highlight.TextColor = clHighlightText
            Options = []
            PictureMask = 'iiiiiiiiiii'
            TabOrder = 1
            OnKeyDown = nfSearchLOKeyDown
            RangeHigh = {FFFFFF7F000000000000}
            RangeLow = {00000080000000000000}
          end
          object cmbSupplier: TComboBox
            Left = 315
            Top = 0
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'Select client'
            OnChange = cmbSupplierChange
          end
          object cbOnlyShowVW: TCheckBox
            Left = 136
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Only show VW'
            TabOrder = 3
          end
        end
      end
    end
    inherited toolbtn_DBForm_2: TToolButton
      Caption = '    E&xit    '
    end
    inherited toolbtn_DBForm_3: TToolButton
      Left = 525
    end
    object ToolbtnRefresh: TToolButton
      Left = 533
      Top = 0
      Caption = 'Refresh'
      ImageIndex = 1
      OnClick = ToolbtnRefreshClick
    end
    object ToolButton2: TToolButton
      Left = 602
      Top = 0
      Width = 13
      Caption = 'ToolButton2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolBtnConfirmLoad: TToolButton
      Left = 615
      Top = 0
      Caption = 'Confirm Load'
      ImageIndex = 9
      OnClick = ToolBtnConfirmLoadClick
    end
    object ToolButton4: TToolButton
      Left = 684
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolbtnDeleteLoad: TToolButton
      Left = 692
      Top = 0
      Caption = 'Delete Load'
      ImageIndex = 6
      OnClick = ToolbtnDeleteLoadClick
    end
    object ToolButton1: TToolButton
      Left = 761
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolbtnPrintLoad: TToolButton
      Left = 769
      Top = 0
      Caption = 'Print Load'
      ImageIndex = 5
      OnClick = ToolbtnPrintLoadClick
    end
  end
  object grdArrivingLoads: TdxDBGrid [2]
    Left = 0
    Top = 46
    Width = 1028
    Height = 371
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'LIST_ID'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alTop
    TabOrder = 1
    DataSource = daMoLM1.dsrcArrivingLoads
    Filter.Criteria = {00000000}
    HideSelectionTextColor = clRed
    HighlightTextColor = clRed
    LookAndFeel = lfFlat
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    OnCustomDrawCell = grdArrivingLoadsCustomDrawCell
    object grdArrivingLoadsINITIALS: TdxDBGridColumn
      Caption = 'BY'
      Width = 22
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INITIALS'
    end
    object grdArrivingLoadsLO: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LO'
    end
    object grdArrivingLoadsLOADNO: TdxDBGridMaskColumn
      Caption = 'FS(1)'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOADNO'
    end
    object grdArrivingLoadsFS: TdxDBGridColumn
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FS'
    end
    object grdArrivingLoadsLOADEDDATE: TdxDBGridColumn
      Caption = 'LOADED'
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOADEDDATE'
    end
    object grdArrivingLoadsLOAD_STATUS: TdxDBGridMaskColumn
      Caption = 'STATUS'
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOAD_STATUS'
    end
    object grdArrivingLoadsLOAD_ID: TdxDBGridMaskColumn
      Caption = 'TrpID'
      Width = 116
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOAD_ID'
    end
    object grdArrivingLoadsCUSTOMER: TdxDBGridColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CUSTOMER'
    end
    object grdArrivingLoadsSUPPCODE: TdxDBGridColumn
      Caption = 'SUPPLIER'
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUPPCODE'
    end
    object grdArrivingLoadsAVROP_CUSTOMER: TdxDBGridColumn
      Width = 142
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AVROP_CUSTOMER'
    end
    object grdArrivingLoadsORDER_NO: TdxDBGridColumn
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ORDER_NO'
    end
    object grdArrivingLoadsDESTINATION: TdxDBGridMaskColumn
      Width = 116
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DESTINATION'
    end
    object grdArrivingLoadsINVPOINTNAME: TdxDBGridColumn
      Width = 192
      BandIndex = 0
      RowIndex = 0
      FieldName = 'INVPOINTNAME'
    end
    object grdArrivingLoadsOBJECTTYPE: TdxDBGridColumn
      Visible = False
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OBJECTTYPE'
    end
    object grdArrivingLoadsCUSTOMERNO: TdxDBGridColumn
      Visible = False
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CUSTOMERNO'
    end
    object grdArrivingLoadsSUPPLIERNO: TdxDBGridColumn
      Visible = False
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUPPLIERNO'
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 421
    Width = 1028
    Height = 21
    Align = alTop
    BevelOuter = bvNone
    Caption = 'LOAD DETAILS'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object dxDBGrid2: TdxDBGrid [4]
    Left = 0
    Top = 442
    Width = 1028
    Height = 165
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'LOAD_DETAILNO'
    ShowSummaryFooter = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = 15792367
    TabOrder = 3
    DataSource = daMoLM1.dsrcArrivingPackages
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object dxDBGrid2LO: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LO'
    end
    object dxDBGrid2PACKAGE_NO: TdxDBGridMaskColumn
      Width = 78
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PACKAGE_NO'
      SummaryFooterType = cstCount
      SummaryFooterField = 'PACKAGE_NO'
      SummaryField = 'PACKAGE_NO'
    end
    object dxDBGrid2SUPPLIERCODE: TdxDBGridMaskColumn
      Width = 89
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SUPPLIERCODE'
    end
    object dxDBGrid2M3_NET: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'M3_NET'
      SummaryFooterType = cstSum
      SummaryFooterField = 'M3_NET'
      SummaryField = 'M3_NET'
    end
    object dxDBGridM3_NOM: TdxDBGridColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'M3_NOM'
      SummaryFooterType = cstSum
      SummaryFooterField = 'M3_NOM'
      SummaryField = 'M3_NOM'
    end
    object dxDBGrid2PRODUCT_DESCRIPTION: TdxDBGridMaskColumn
      Width = 197
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PRODUCT_DESCRIPTION'
    end
    object dxDBGrid2PCS: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PCS'
      SummaryFooterType = cstSum
      SummaryFooterField = 'PCS'
      SummaryField = 'PCS'
    end
    object dxDBGrid2PACKAGEOK: TdxDBGridCheckColumn
      MinWidth = 20
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PACKAGEOK'
      ValueChecked = '0'
      ValueUnchecked = '1'
    end
    object dxDBGrid2PACKAGE_LOG: TdxDBGridMaskColumn
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PACKAGE_LOG'
    end
    object dxDBGridLOAD_DETAILNO: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOAD_DETAILNO'
    end
  end
end
