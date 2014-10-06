object FormAddress: TFormAddress
  Left = 79
  Top = 114
  ActiveControl = grdAdr
  Caption = 'Adress'
  ClientHeight = 570
  ClientWidth = 857
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
  object Panel1: TPanel
    Left = 0
    Top = 524
    Width = 857
    Height = 46
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 535
    ExplicitWidth = 865
    object BitBtn1: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object grdAdr: TcxGrid
    Left = 0
    Top = 0
    Width = 857
    Height = 524
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 865
    ExplicitHeight = 535
    object grdAdrDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmModule1.dsClientAddress
      DataController.KeyFieldNames = 'ADDRESS_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdAdrDBTableView1ADDRESS_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_NO'
        Width = 100
      end
      object grdAdrDBTableView1ADDRESS_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS_NAME'
        Width = 130
      end
      object grdAdrDBTableView1ADDRESSLINE1: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE1'
        Width = 147
      end
      object grdAdrDBTableView1ADDRESSLINE2: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE2'
        Width = 132
      end
      object grdAdrDBTableView1ADDRESSLINE3: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE3'
        Width = 127
      end
      object grdAdrDBTableView1ADDRESSLINE4: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESSLINE4'
        Width = 123
      end
      object grdAdrDBTableView1POSTALCODE: TcxGridDBColumn
        DataBinding.FieldName = 'POSTALCODE'
        Width = 102
      end
      object grdAdrDBTableView1CITY: TcxGridDBColumn
        DataBinding.FieldName = 'CITY'
        Width = 114
      end
      object grdAdrDBTableView1COUNTRY: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTRY'
        Width = 99
      end
      object grdAdrDBTableView1PROVINCE: TcxGridDBColumn
        DataBinding.FieldName = 'PROVINCE'
        Width = 87
      end
    end
    object grdAdrLevel1: TcxGridLevel
      GridView = grdAdrDBTableView1
    end
  end
end
