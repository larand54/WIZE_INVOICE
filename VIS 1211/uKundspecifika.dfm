object fKundspecifika: TfKundspecifika
  Left = 437
  Top = 139
  Caption = 'Crystal rapporter'
  ClientHeight = 668
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 56
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 715
    DesignSize = (
      707
      56)
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 42
      Action = acAddReport
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 42
      Action = acTaBort
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 192
      Top = 8
      Width = 75
      Height = 42
      Action = acSave
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 636
      Top = 8
      Width = 75
      Height = 42
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
  end
  object grdKundspecifika: TcxGrid
    Left = 0
    Top = 56
    Width = 707
    Height = 612
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 715
    ExplicitHeight = 623
    object grdKundspecifikaDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.dsRptNames
      DataController.KeyFieldNames = 'ReportNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdKundspecifikaDBTableView1DocTypeName: TcxGridDBColumn
        DataBinding.FieldName = 'DocTypeName'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'DocType'
        Properties.ListColumns = <
          item
            FieldName = 'ReportType'
          end>
        Width = 126
      end
      object grdKundspecifikaDBTableView1DocType: TcxGridDBColumn
        DataBinding.FieldName = 'DocType'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 67
      end
      object grdKundspecifikaDBTableView1ReportName: TcxGridDBColumn
        DataBinding.FieldName = 'ReportName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 280
      end
      object grdKundspecifikaDBTableView1Beskrivning: TcxGridDBColumn
        DataBinding.FieldName = 'Beskrivning'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 177
      end
      object grdKundspecifikaDBTableView1ReportNo: TcxGridDBColumn
        DataBinding.FieldName = 'ReportNo'
        PropertiesClassName = 'TcxLabelProperties'
        Visible = False
        Width = 63
      end
    end
    object grdKundspecifikaLevel1: TcxGridLevel
      GridView = grdKundspecifikaDBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 440
    Top = 128
    object acAddReport: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddReportExecute
    end
    object acTaBort: TAction
      Caption = 'Ta bort'
      OnExecute = acTaBortExecute
      OnUpdate = acTaBortUpdate
    end
    object acSave: TAction
      Caption = 'Spara'
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acClose: TAction
      Caption = 'St'#228'ng'
      OnExecute = acCloseExecute
    end
  end
end
