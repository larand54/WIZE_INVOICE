object fPkgNoSeries: TfPkgNoSeries
  Left = 249
  Top = 105
  Width = 700
  Height = 480
  Caption = 'Paketnr serier'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 57
    Align = alTop
    TabOrder = 0
    object bbNy: TBitBtn
      Left = 48
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Ny'
      TabOrder = 0
      OnClick = bbNyClick
    end
    object bbSpara: TBitBtn
      Left = 248
      Top = 16
      Width = 89
      Height = 25
      Caption = 'Spara '#228'ndringar'
      TabOrder = 1
      OnClick = bbSparaClick
    end
    object bbAngra: TBitBtn
      Left = 344
      Top = 16
      Width = 89
      Height = 25
      Caption = #197'ngra '#228'ndringar'
      TabOrder = 2
      OnClick = bbAngraClick
    end
    object bbTaBort: TBitBtn
      Left = 136
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Ta bort'
      TabOrder = 3
      OnClick = bbTaBortClick
    end
  end
  object grdPkgNoSerie: TdxDBGrid
    Left = 0
    Top = 57
    Width = 692
    Height = 396
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ClientNo'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dmsContact.ds_PkgNoSerie
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    object grdPkgNoSerieClientNo: TdxDBGridMaskColumn
      Visible = False
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientNo'
    end
    object grdPkgNoSerieCurrentPkgNo: TdxDBGridMaskColumn
      Caption = 'AKTUELLT PKTNR'
      Width = 118
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CurrentPkgNo'
    end
    object grdPkgNoSerieHighestPkgNo: TdxDBGridMaskColumn
      Caption = 'MAX PKTNR'
      Width = 98
      BandIndex = 0
      RowIndex = 0
      OnValidate = grdPkgNoSerieHighestPkgNoValidate
      FieldName = 'HighestPkgNo'
    end
    object grdPkgNoSerieVerk: TdxDBGridLookupColumn
      Caption = 'VERK'
      Width = 460
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Verk'
    end
  end
end
