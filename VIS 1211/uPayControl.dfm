inherited fPayControl: TfPayControl
  Caption = 'fPayControl'
  ClientHeight = 744
  ClientWidth = 1130
  OnDestroy = FormDestroy
  ExplicitWidth = 1138
  ExplicitHeight = 772
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1130
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1130
    inherited Panel2: TPanel
      Width = 630
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitWidth = 630
      inherited dxBarDockControl1: TdxBarDockControl
        Width = 628
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ExplicitWidth = 628
      end
    end
    inherited Panel3: TPanel
      Left = 1060
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Constraints.MaxWidth = 106
      Constraints.MinWidth = 57
      ExplicitLeft = 1060
      inherited dxBarDockControl2: TdxBarDockControl
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
      end
    end
    inherited Panel4: TPanel
      Left = 630
      Width = 430
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ExplicitLeft = 630
      ExplicitWidth = 430
    end
  end
  inherited Panel5: TPanel
    Width = 1130
    Height = 685
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ExplicitWidth = 1130
    ExplicitHeight = 685
    object Panel6: TPanel
      Left = 1
      Top = 19
      Width = 1128
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 704
        Top = 8
        Width = 71
        Height = 13
        Caption = 'Reskontraserie'
      end
      object Label2: TLabel
        Left = 256
        Top = 8
        Width = 67
        Height = 13
        Caption = 'Faktura status'
      end
      object Label3: TLabel
        Left = 512
        Top = 8
        Width = 26
        Height = 13
        Caption = 'FOM:'
      end
      object Label4: TLabel
        Left = 16
        Top = 8
        Width = 67
        Height = 13
        Caption = 'S'#246'k fakturanr:'
      end
      object bcInvoiceType: TcxComboBox
        Left = 784
        Top = 3
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'VIDA (K1)'
          'PROFORMA (invoice later)'
          'PROFORMA (move pkgs)'
          'PURCHASE INVOICE'
          'USA (K2)'
          'FORESTWOOD')
        TabOrder = 2
        Text = 'VIDA (K1)'
        Width = 121
      end
      object bcFakturaStatus: TcxComboBox
        Left = 336
        Top = 3
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'DEL OCH OBETALDA '
          'DEL BETALDA'
          'FULL BETALDA')
        TabOrder = 0
        Text = 'DEL OCH OBETALDA '
        Width = 161
      end
      object deFOM: TcxDateEdit
        Left = 544
        Top = 3
        TabOrder = 1
        Width = 145
      end
      object Edit1: TEdit
        Left = 88
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 3
        OnKeyDown = Edit1KeyDown
      end
    end
    object grdInvPaid: TcxGrid
      Left = 1
      Top = 51
      Width = 1128
      Height = 633
      Align = alClient
      TabOrder = 1
      object grdInvPaidDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmModule1.ds_InvoicePayStatus
        DataController.KeyFieldNames = 'IH_InternalInvoiceNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '######'
            Kind = skCount
            FieldName = 'FAKTURANR'
            Column = grdInvPaidDBTableView1FAKTURANR
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'BELOPP'
            Column = grdInvPaidDBTableView1BELOPP
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'KASSARABATT'
            Column = grdInvPaidDBTableView1KASSARABATT
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'BELOP_EXKL_KASSA'
            Column = grdInvPaidDBTableView1BELOP_EXKL_KASSA
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'Paid'
            Column = grdInvPaidDBTableView1SUMMA_BETALD
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'PROVISION'
            Column = grdInvPaidDBTableView1PROVISION
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'FRAKT'
            Column = grdInvPaidDBTableView1FRAKT
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'AttBetala'
            Column = grdInvPaidDBTableView1AttBetala
          end
          item
            Format = '### ### ### ###.00'
            Kind = skSum
            FieldName = 'VARUVARDE_NO_FREIGHT'
            Column = grdInvPaidDBTableView1VARUVARDE_NO_FREIGHT
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdInvPaidDBTableView1FAKTURANR: TcxGridDBColumn
          DataBinding.FieldName = 'FAKTURANR'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 95
        end
        object grdInvPaidDBTableView1FAKTURA_DATUM: TcxGridDBColumn
          DataBinding.FieldName = 'FAKTURA_DATUM'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 99
        end
        object grdInvPaidDBTableView1KUND: TcxGridDBColumn
          DataBinding.FieldName = 'KUND'
          PropertiesClassName = 'TcxLabelProperties'
        end
        object grdInvPaidDBTableView1AGENT: TcxGridDBColumn
          DataBinding.FieldName = 'AGENT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 167
        end
        object grdInvPaidDBTableView1BETALVILLKOR: TcxGridDBColumn
          DataBinding.FieldName = 'BETALVILLKOR'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 156
        end
        object grdInvPaidDBTableView1BELOPP: TcxGridDBColumn
          DataBinding.FieldName = 'BELOPP'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 73
        end
        object grdInvPaidDBTableView1KASSARABATT: TcxGridDBColumn
          DataBinding.FieldName = 'KASSARABATT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 91
        end
        object grdInvPaidDBTableView1BELOP_EXKL_KASSA: TcxGridDBColumn
          DataBinding.FieldName = 'BELOP_EXKL_KASSA'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 125
        end
        object grdInvPaidDBTableView1BETALD: TcxGridDBColumn
          DataBinding.FieldName = 'Paid'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.FullFocusRect = True
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 96
        end
        object grdInvPaidDBTableView1DATUM_BETALD: TcxGridDBColumn
          DataBinding.FieldName = 'DatePaid'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 101
        end
        object grdInvPaidDBTableView1SUMMA_BETALD: TcxGridDBColumn
          DataBinding.FieldName = 'AmountPaid'
          PropertiesClassName = 'TcxCalcEditProperties'
          Width = 112
        end
        object grdInvPaidDBTableView1MEDDELANDE: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 162
        end
        object grdInvPaidDBTableView1VALUTA: TcxGridDBColumn
          DataBinding.FieldName = 'VALUTA'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 71
        end
        object grdInvPaidDBTableView1POST_IT: TcxGridDBColumn
          DataBinding.FieldName = 'POST_IT'
          PropertiesClassName = 'TcxLabelProperties'
          Width = 135
        end
        object grdInvPaidDBTableView1VARUVARDE_NO_FREIGHT: TcxGridDBColumn
          DataBinding.FieldName = 'VARUVARDE_NO_FREIGHT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 87
        end
        object grdInvPaidDBTableView1PROVISION: TcxGridDBColumn
          DataBinding.FieldName = 'PROVISION'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 82
        end
        object grdInvPaidDBTableView1Trading: TcxGridDBColumn
          DataBinding.FieldName = 'Trading'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object grdInvPaidDBTableView1FRAKT: TcxGridDBColumn
          DataBinding.FieldName = 'FRAKT'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 60
        end
        object grdInvPaidDBTableView1AttBetala: TcxGridDBColumn
          DataBinding.FieldName = 'AttBetala'
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.ReadOnly = True
          Width = 118
        end
      end
      object grdInvPaidLevel1: TcxGridLevel
        GridView = grdInvPaidDBTableView1
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 1128
      Height = 18
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Obetalda fakturor'
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 392
    Top = 328
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = False
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = False
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acOpenInvoice
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
  end
  inherited ActionList1: TActionList
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acSave: TAction
      Caption = 'Spara F3'
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    inherited acExportXLS: TAction
      OnUpdate = acExportXLSUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra '#228'ndringar F4'
      ImageIndex = 10
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acOpenInvoice: TAction
      Caption = #214'ppna faktura'
      ImageIndex = 2
      OnExecute = acOpenInvoiceExecute
      OnUpdate = acOpenInvoiceUpdate
    end
  end
  inherited cds_Props: TADQuery
    AfterInsert = cds_PropsAfterInsert
    Left = 112
  end
  inherited ds_Props: TDataSource
    Left = 104
    Top = 248
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdInvPaid
    PopupMenus = <>
    Left = 496
    Top = 227
  end
end
