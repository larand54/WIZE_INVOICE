object FormDelTerms: TFormDelTerms
  Left = 192
  Top = 114
  ActiveControl = grdDelTerms
  Caption = 'Leveransvillkor'
  ClientHeight = 426
  ClientWidth = 769
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
    Top = 384
    Width = 769
    Height = 42
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 395
    ExplicitWidth = 777
    object BitBtn1: TBitBtn
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkOK
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      DoubleBuffered = True
      Kind = bkCancel
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object grdDelTerms: TcxGrid
    Left = 0
    Top = 0
    Width = 769
    Height = 384
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 777
    ExplicitHeight = 395
    object grdDelTermsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmsContact.dsDelTerms
      DataController.KeyFieldNames = 'DeliveryTerm_No'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdDelTermsDBTableView1DeliveryTerm: TcxGridDBColumn
        Caption = 'LEVERANSVILLKOR'
        DataBinding.FieldName = 'DeliveryTerm'
        Width = 148
      end
      object grdDelTermsDBTableView1Description: TcxGridDBColumn
        Caption = 'BESKRIVNING'
        DataBinding.FieldName = 'Description'
        Width = 621
      end
    end
    object grdDelTermsLevel1: TcxGridLevel
      GridView = grdDelTermsDBTableView1
    end
  end
end
