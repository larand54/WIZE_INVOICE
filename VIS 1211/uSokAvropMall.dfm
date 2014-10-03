object fSokAvropMall: TfSokAvropMall
  Left = 229
  Top = 107
  ActiveControl = grdMall
  Caption = 'Mallar'
  ClientHeight = 304
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 416
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 41
    Align = alTop
    TabOrder = 1
    Visible = False
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Action = acNew
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      Action = acDelete
      TabOrder = 1
    end
  end
  object grdMall: TcxGrid
    Left = 0
    Top = 41
    Width = 416
    Height = 222
    Align = alClient
    TabOrder = 2
    object grdMallDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_mall
      DataController.KeyFieldNames = 'Form;Name;UserID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object grdMallDBTableView1Form: TcxGridDBColumn
        Caption = 'Mall'
        DataBinding.FieldName = 'Form'
        PropertiesClassName = 'TcxLabelProperties'
        Width = 167
      end
      object grdMallDBTableView1UserID: TcxGridDBColumn
        DataBinding.FieldName = 'UserID'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 101
      end
      object grdMallDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 165
      end
      object grdMallDBTableView1LOObjectType: TcxGridDBColumn
        Caption = 'Standard mall'
        DataBinding.FieldName = 'LOObjectType'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Visible = False
        Width = 86
      end
    end
    object grdMallLevel1: TcxGridLevel
      GridView = grdMallDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 112
    object acNew: TAction
      Caption = 'Ny'
      OnExecute = acNewExecute
    end
    object acSave: TAction
      Caption = 'Spara'
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
    end
  end
  object ds_mall: TDataSource
    Left = 152
    Top = 136
  end
end
