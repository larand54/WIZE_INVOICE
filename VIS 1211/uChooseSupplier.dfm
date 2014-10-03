object frmChooseSupplier: TfrmChooseSupplier
  Left = 192
  Top = 107
  Width = 497
  Height = 480
  Caption = 'V'#228'lj producent'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grdProducers: TdxDBGrid
    Left = 0
    Top = 0
    Width = 489
    Height = 400
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'ClientNo'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = dmsContact.ds_ClientToLL
    Filter.Criteria = {00000000}
    LookAndFeel = lfFlat
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
    object grdProducersClientName: TdxDBGridMaskColumn
      Caption = 'PRODUCENT'
      Width = 487
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ClientName'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 489
    Height = 53
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 192
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
end
