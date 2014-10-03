object fSelectLoadPlanDest: TfSelectLoadPlanDest
  Left = 229
  Top = 107
  Width = 962
  Height = 500
  Caption = 'V'#228'lj lastplan & destination'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grdLoadPlan: TcxGrid
    Left = 0
    Top = 0
    Width = 954
    Height = 426
    Align = alClient
    TabOrder = 0
    object grdLoadPlanDBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmsSystem.ds_LoadPlanDest
      DataController.KeyFieldNames = 'LoadingNo;LoadPlanDestRowNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'LASTPLAN'
          Width = 86
        end
        item
          Caption = 'LASTST'#196'LLE'
          Width = 200
        end
        item
          Caption = 'DESTINATION'
          Width = 405
        end
        item
          Caption = 'TRANSPORT'
          Width = 261
        end>
      object grdLoadPlanDBBandedTableView1LAGER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LAGER'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1Frsljningsregion: TcxGridDBBandedColumn
        DataBinding.FieldName = 'F'#246'rs'#228'ljningsregion'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LAGER_DEST: TcxGridDBBandedColumn
        Caption = 'LAGER'
        DataBinding.FieldName = 'LAGER_DEST'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1Status: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Status'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LoadingNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadingNo'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1LoadPlanDestRowNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadPlanDestRowNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1BT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'B'#197'T'
        PropertiesClassName = 'TcxLabelProperties'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdLoadPlanDBBandedTableView1ETD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ETD'
        PropertiesClassName = 'TcxDateEditProperties'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object grdLoadPlanLevel1: TcxGridLevel
      GridView = grdLoadPlanDBBandedTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 426
    Width = 954
    Height = 47
    Align = alBottom
    TabOrder = 1
    object bbOK: TBitBtn
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object bbCancel: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
