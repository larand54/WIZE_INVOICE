object fAddKundSpecifika: TfAddKundSpecifika
  Left = 197
  Top = 107
  Caption = 'Kundspecifika rapporter'
  ClientHeight = 659
  ClientWidth = 833
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
    Top = 0
    Width = 833
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 841
    DesignSize = (
      833
      73)
    object cxButton1: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 51
      Action = acAddKS
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 104
      Top = 8
      Width = 75
      Height = 51
      Action = acTaBort
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 184
      Top = 8
      Width = 75
      Height = 51
      Action = acSave
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 755
      Top = 8
      Width = 75
      Height = 51
      Action = acClose
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
  end
  object grdDocs: TcxGrid
    Left = 0
    Top = 73
    Width = 833
    Height = 530
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 841
    ExplicitHeight = 541
    object grdDocsDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dmsSystem.dsClientPrefDocs
      DataController.KeyFieldNames = 'ClientNo;RoleType;DocType;ReportNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ImmediateEditor = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdDocsDBTableView1TYPAVRAPPORT: TcxGridDBColumn
        DataBinding.FieldName = 'TYP AV RAPPORT'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'DocType'
        Properties.ListColumns = <
          item
            FieldName = 'ReportType'
          end>
        Properties.ListOptions.ShowHeader = False
        Width = 120
      end
      object grdDocsDBTableView1CRFIL: TcxGridDBColumn
        DataBinding.FieldName = 'RAPPORT'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownWidth = 500
        Properties.KeyFieldNames = 'ReportNo'
        Properties.ListColumns = <
          item
            FieldName = 'ReportName'
          end>
        Width = 238
      end
      object grdDocsDBTableView1NoOfCopy: TcxGridDBColumn
        DataBinding.FieldName = 'NoOfCopy'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.MinValue = 1.000000000000000000
        Width = 120
      end
      object grdDocsDBTableView1collated: TcxGridDBColumn
        DataBinding.FieldName = 'collated'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 110
      end
      object grdDocsDBTableView1PrinterSetup: TcxGridDBColumn
        DataBinding.FieldName = 'PrinterSetup'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 146
      end
      object grdDocsDBTableView1promptUser: TcxGridDBColumn
        DataBinding.FieldName = 'promptUser'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 126
      end
      object grdDocsDBTableView1ClientNo: TcxGridDBColumn
        DataBinding.FieldName = 'ClientNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdDocsDBTableView1RoleType: TcxGridDBColumn
        DataBinding.FieldName = 'RoleType'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdDocsDBTableView1DocType: TcxGridDBColumn
        DataBinding.FieldName = 'DocType'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
      object grdDocsDBTableView1ReportNo: TcxGridDBColumn
        DataBinding.FieldName = 'ReportNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
      end
    end
    object grdDocsLevel1: TcxGridLevel
      GridView = grdDocsDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 603
    Width = 833
    Height = 56
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 614
    ExplicitWidth = 841
    object BitBtn1: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 36
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 8
      Width = 75
      Height = 36
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 352
    Top = 176
    object acAddKS: TAction
      Caption = 'L'#228'gg till'
      OnExecute = acAddKSExecute
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
