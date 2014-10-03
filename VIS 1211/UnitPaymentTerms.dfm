object FormPaymentTerms: TFormPaymentTerms
  Left = 265
  Top = 105
  ActiveControl = grdPayTerms
  Caption = 'Betalningsvillkor'
  ClientHeight = 442
  ClientWidth = 881
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
    Top = 401
    Width = 881
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 412
    ExplicitWidth = 889
    object BitBtn1: TBitBtn
      Left = 368
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
      Left = 456
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
  object grdPayTerms: TcxGrid
    Left = 0
    Top = 0
    Width = 881
    Height = 401
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 889
    ExplicitHeight = 412
    object grdPayTermsDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dmsSystem.dsPaymentTerm
      DataController.KeyFieldNames = 'PaymentTermsNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object grdPayTermsDBTableView1PaymentTermsNo: TcxGridDBColumn
        DataBinding.FieldName = 'PaymentTermsNo'
        Visible = False
      end
      object grdPayTermsDBTableView1PaymentTermName: TcxGridDBColumn
        Caption = 'BETALNINGSVILLKOR'
        DataBinding.FieldName = 'PaymentTermName'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 166
      end
      object grdPayTermsDBTableView1Discount1: TcxGridDBColumn
        Caption = 'KASSARABATT'
        DataBinding.FieldName = 'Discount1'
        Width = 110
      end
      object grdPayTermsDBTableView1Description: TcxGridDBColumn
        Caption = 'BESKRIVNING'
        DataBinding.FieldName = 'Description'
        Width = 388
      end
      object grdPayTermsDBTableView1FreightInDiscount: TcxGridDBColumn
        Caption = 'After BL'
        DataBinding.FieldName = 'FreightInDiscount'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 112
      end
      object grdPayTermsDBTableView1FreightInCommission: TcxGridDBColumn
        Caption = 'Fri leverans m'#229'nad'
        DataBinding.FieldName = 'FreightInCommission'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 111
      end
      object grdPayTermsDBTableView1CommissionPaidByCustomer: TcxGridDBColumn
        DataBinding.FieldName = 'CommissionPaidByCustomer'
        Visible = False
      end
      object grdPayTermsDBTableView1LanguageCode: TcxGridDBColumn
        DataBinding.FieldName = 'LanguageCode'
        Visible = False
      end
    end
    object grdPayTermsLevel1: TcxGridLevel
      GridView = grdPayTermsDBTableView1
    end
  end
end
