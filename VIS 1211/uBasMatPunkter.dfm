object fBasMatPunkter: TfBasMatPunkter
  Left = 244
  Top = 106
  Width = 514
  Height = 480
  Caption = 'Bas m'#228'tpunkter'
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
    Width = 506
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object bbInsert: TBitBtn
      Left = 24
      Top = 16
      Width = 89
      Height = 25
      Action = acAdd
      Caption = 'L'#228'gg till'
      TabOrder = 0
    end
    object bbRemove: TBitBtn
      Left = 120
      Top = 16
      Width = 89
      Height = 25
      Action = acDelete
      Caption = 'Ta bort'
      TabOrder = 1
    end
    object bbApplyChanges: TBitBtn
      Left = 224
      Top = 16
      Width = 91
      Height = 25
      Action = acSave
      Caption = 'Spara'
      TabOrder = 2
    end
    object bbCancelChanges: TBitBtn
      Left = 328
      Top = 16
      Width = 89
      Height = 25
      Action = acCancelChanges
      Caption = #197'ngra'
      TabOrder = 3
    end
  end
  object grdRegPoints: TcxGrid
    Left = 0
    Top = 57
    Width = 506
    Height = 396
    Align = alClient
    TabOrder = 1
    object grdRegPointsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmsContact.ds_RegPoints
      DataController.KeyFieldNames = 'RegPointNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdRegPointsDBTableView1RegPointName: TcxGridDBColumn
        DataBinding.FieldName = 'RegPointName'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Filtering = False
      end
      object grdRegPointsDBTableView1SequenceNo: TcxGridDBColumn
        DataBinding.FieldName = 'SequenceNo'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Options.Filtering = False
      end
    end
    object grdRegPointsLevel1: TcxGridLevel
      GridView = grdRegPointsDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 160
    object acAdd: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddExecute
    end
    object acDelete: TAction
      Caption = 'Ta bort'
      OnExecute = acDeleteExecute
      OnUpdate = acDeleteUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra'
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
  end
end
