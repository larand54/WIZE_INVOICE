object fSelectRunNos: TfSelectRunNos
  Left = 229
  Top = 107
  Width = 870
  Height = 500
  Caption = 'V'#228'lj k'#246'rnr'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object grdRunNos: TcxGrid
    Left = 0
    Top = 41
    Width = 862
    Height = 391
    Align = alClient
    TabOrder = 1
    object grdRunNosDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmInventory.ds_RunNos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdRunNosDBTableView1KrNr: TcxGridDBColumn
        DataBinding.FieldName = 'K'#246'rNr'
        Width = 85
      end
      object grdRunNosDBTableView1Krdatum: TcxGridDBColumn
        DataBinding.FieldName = 'K'#246'rdatum'
        Width = 190
      end
      object grdRunNosDBTableView1Produkt: TcxGridDBColumn
        DataBinding.FieldName = 'Produkt'
        Width = 529
      end
      object grdRunNosDBTableView1Operation: TcxGridDBColumn
        DataBinding.FieldName = 'Operation'
        Width = 56
      end
    end
    object grdRunNosLevel1: TcxGridLevel
      GridView = grdRunNosDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 862
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
