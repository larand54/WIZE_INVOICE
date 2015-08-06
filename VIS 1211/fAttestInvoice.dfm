object frmAttestInvoice: TfrmAttestInvoice
  Left = 251
  Top = 101
  Caption = 'Attestera Faktura'
  ClientHeight = 872
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1084
    Height = 132
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsInvoiceHead
    Properties.CustomButtons.Buttons = <>
    Properties.TabWidth = 100
    ClientRectBottom = 131
    ClientRectLeft = 1
    ClientRectRight = 1083
    ClientRectTop = 23
    object tsInvoiceHead: TcxTabSheet
      Caption = '&FAKTURA'
      ImageIndex = 16
      DesignSize = (
        1082
        108)
      object Shape2: TShape
        Left = 1
        Top = 2
        Width = 1079
        Height = 104
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clMoneyGreen
        ExplicitWidth = 1087
      end
      object Label1: TLabel
        Left = 8
        Top = 27
        Width = 65
        Height = 16
        Caption = 'Fakturanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 53
        Width = 70
        Height = 16
        Caption = 'Fakt.datum:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 96
        Top = 24
        Width = 65
        Height = 17
        Color = clWhite
        DataField = 'InvoiceNo'
        DataSource = dmVidaInvoice.dsrcInvoiceNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object LCustomer: TLabel
        Left = 8
        Top = 6
        Width = 63
        Height = 16
        Caption = 'Leverant'#246'r:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object txtCustomer: TDBText
        Left = 96
        Top = 6
        Width = 71
        Height = 16
        AutoSize = True
        Color = clWhite
        DataField = 'CustomerName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object LPaymentTerms: TLabel
        Left = 792
        Top = 30
        Width = 46
        Height = 14
        Caption = 'Betvillkor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 850
        Top = 7
        Width = 153
        Height = 34
        Color = clWhite
        DataField = 'PaymentDescription'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object DBText42: TDBText
        Left = 850
        Top = 43
        Width = 153
        Height = 18
        Color = clWhite
        DataField = 'Discount1'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label35: TLabel
        Left = 792
        Top = 47
        Width = 34
        Height = 14
        Caption = 'Kassa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 792
        Top = 65
        Width = 50
        Height = 14
        Caption = 'Lev.villkor:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText6: TDBText
        Left = 850
        Top = 62
        Width = 153
        Height = 17
        Color = clWhite
        DataField = 'DeliveryTerm'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 792
        Top = 85
        Width = 57
        Height = 14
        Caption = 'Agent prov:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText18: TDBText
        Left = 850
        Top = 81
        Width = 101
        Height = 17
        Color = clWhite
        DataField = 'AgentCommission'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label51: TLabel
        Left = 393
        Top = 43
        Width = 47
        Height = 14
        Caption = 'Fraktkost:'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label52: TLabel
        Left = 585
        Top = 43
        Width = 9
        Height = 14
        Caption = ' / '
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 393
        Top = 22
        Width = 22
        Height = 14
        Caption = 'VAT:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 459
        Top = 18
        Width = 125
        Height = 17
        Color = clWhite
        DataField = 'VAT'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 459
        Top = 61
        Width = 129
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Commission'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label53: TLabel
        Left = 393
        Top = 67
        Width = 60
        Height = 14
        Caption = 'Kommission:'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object dxDBDateEdit1: TcxDBDateEdit
        Left = 96
        Top = 46
        ParentFont = False
        TabOrder = 0
        Width = 121
      end
      object rgDebitCredit: TDBRadioGroup
        Left = 8
        Top = 66
        Width = 85
        Height = 31
        Color = clMoneyGreen
        Columns = 2
        DataField = 'Debit_Credit'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Deb'
          'Kre')
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
      end
      object DBCheckBox1: TDBCheckBox
        Left = 234
        Top = 84
        Width = 88
        Height = 17
        Caption = 'Snabbfaktura:'
        Color = clMoneyGreen
        DataField = 'QuickInvoice'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbCommissionPaidByCustomer: TDBCheckBox
        Left = 234
        Top = 22
        Width = 148
        Height = 17
        Caption = 'Provision betalas av kund'
        Color = clMoneyGreen
        DataField = 'CommissionPaidByCustomer'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbVAT: TDBCheckBox
        Left = 234
        Top = 37
        Width = 88
        Height = 17
        Caption = 'Skatteupplag'
        Color = clMoneyGreen
        DataField = 'VAT_OnInvoice'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbFreightInDiscount: TDBCheckBox
        Left = 234
        Top = 53
        Width = 120
        Height = 17
        Caption = 'Fraktv'#228'rde i kassa'
        Color = clMoneyGreen
        DataField = 'FreightInDiscount'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object cbFreightInComm: TDBCheckBox
        Left = 234
        Top = 68
        Width = 132
        Height = 17
        Caption = 'Fraktv'#228'rde i provision'
        Color = clMoneyGreen
        DataField = 'FreightInCommission'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object eFakturaNr: TcxTextEdit
        Left = 96
        Top = 21
        TabOrder = 7
        Text = '000000'
        Width = 121
      end
      object dxDBEdit9: TcxDBTextEdit
        Left = 457
        Top = 36
        DataBinding.DataField = 'FREIGHT_CURRENCY'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 8
        Width = 65
      end
      object dxDBEdit6: TcxDBTextEdit
        Left = 521
        Top = 36
        DataBinding.DataField = 'FREIGHTCOST'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 10
        Width = 65
      end
      object dxDBEdit7: TcxDBTextEdit
        Left = 594
        Top = 36
        DataBinding.DataField = 'FREIGHT_UNIT'
        DataBinding.DataSource = dmVidaInvoice.ds_BookingData
        TabOrder = 9
        Width = 65
      end
      object lcKonto: TcxDBLookupComboBox
        Left = 456
        Top = 80
        DataBinding.DataField = 'InvoiceType'
        DataBinding.DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'InvoiceTypeNo'
        Properties.ListColumns = <
          item
            FieldName = 'InvoiceTypeName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmVidaInvoice.dsInvoiceType
        TabOrder = 11
        Visible = False
        Width = 140
      end
      object cbInvoiceType: TcxComboBox
        Left = 96
        Top = 73
        Properties.Items.Strings = (
          'VIDA (K1)'
          'Proforma (fakt.senare)'
          'Proforma (flytta pkt)'
          'Ink'#246'psfaktura'
          'USA (K2)'
          'FW')
        Properties.ReadOnly = True
        TabOrder = 12
        Width = 121
      end
    end
    object tsShipToAddress: TcxTabSheet
      Caption = 'A&DRESSER'
      ImageIndex = 14
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label10: TLabel
        Left = 2
        Top = 4
        Width = 80
        Height = 15
        Caption = 'Fakturaadress'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label42: TLabel
        Left = 2
        Top = 21
        Width = 209
        Height = 78
        AutoSize = False
        Caption = 'Label42'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object grdLevAdr: TcxGrid
        Left = 288
        Top = 0
        Width = 788
        Height = 102
        Align = alRight
        TabOrder = 0
        object grdLevAdrDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dmVidaInvoice.dsInvoiceShipToAddress_II
          DataController.KeyFieldNames = 'Reference'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object grdLevAdrDBTableView1Reference: TcxGridDBColumn
            DataBinding.FieldName = 'Reference'
          end
          object grdLevAdrDBTableView1AddressName: TcxGridDBColumn
            DataBinding.FieldName = 'AddressName'
          end
          object grdLevAdrDBTableView1ADDR: TcxGridDBColumn
            DataBinding.FieldName = 'ADDR'
          end
          object grdLevAdrDBTableView1ShippingPlanNo: TcxGridDBColumn
            DataBinding.FieldName = 'ShippingPlanNo'
          end
        end
        object grdLevAdrLevel1: TcxGridLevel
          GridView = grdLevAdrDBTableView1
        end
      end
    end
    object tsAgent: TcxTabSheet
      Caption = '&AGENT'
      ImageIndex = 15
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Shape3: TShape
        Left = 16
        Top = 3
        Width = 1177
        Height = 155
        Brush.Color = clMoneyGreen
      end
      object Label16: TLabel
        Left = 24
        Top = 8
        Width = 38
        Height = 16
        Caption = 'Agent:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText22: TDBText
        Left = 160
        Top = 8
        Width = 56
        Height = 16
        AutoSize = True
        Color = clWhite
        DataField = 'AgentName'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label38: TLabel
        Left = 24
        Top = 40
        Width = 87
        Height = 16
        Caption = 'Fakturaaddres:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 160
        Top = 40
        Width = 737
        Height = 60
        AutoSize = False
        Caption = 'Label43'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
    object tsNotes: TcxTabSheet
      Caption = '&NOTES'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 70
        Height = 16
        Caption = 'Fakturatext:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBMemo1: TDBMemo
        Left = 80
        Top = 8
        Width = 921
        Height = 89
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'InvoiceText'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object tsStickyNote: TcxTabSheet
      Caption = '&POST IT!'
      ImageIndex = 13
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBMemo2: TDBMemo
        Left = 368
        Top = 5
        Width = 177
        Height = 92
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = clYellow
        DataField = 'StickyNote'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object tsAttestRows: TcxTabSheet
      Caption = 'tsAttestRows'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object CheckBox1: TCheckBox
        Left = 504
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Filter'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox1Click
      end
    end
    object tsLO: TcxTabSheet
      Caption = '&LO'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 647
        Top = 87
        Width = 57
        Height = 14
        Caption = 'Proformanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object DBText3: TDBText
        Left = 736
        Top = 84
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'ProformaInvoiceNo'
        DataSource = dmVidaInvoice.dsProformaInvNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 480
        Top = 87
        Width = 61
        Height = 14
        Caption = 'Int.fakturanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 568
        Top = 84
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'InternalInvoiceNo'
        DataSource = dmVidaInvoice.dsrcInvoiceHead_II
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 408
        Top = 84
        Width = 69
        Height = 17
        Color = clWhite
        DataField = 'PO_InvoiceNo'
        DataSource = dmVidaInvoice.ds_PurchaseInvNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Label30: TLabel
        Left = 320
        Top = 87
        Width = 64
        Height = 14
        Caption = 'PO fakturanr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object panelLO: TPanel
        Left = 0
        Top = 0
        Width = 1076
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Color = clMoneyGreen
        TabOrder = 0
        object Label18: TLabel
          Left = 272
          Top = 6
          Width = 30
          Height = 14
          Caption = 'LO nr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText24: TDBText
          Left = 321
          Top = 3
          Width = 48
          Height = 17
          Color = clWhite
          DataField = 'ShippingPlanNo'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label22: TLabel
          Left = 372
          Top = 5
          Width = 57
          Height = 14
          Caption = 'Bokningsnr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText28: TDBText
          Left = 434
          Top = 2
          Width = 48
          Height = 17
          Color = clWhite
          DataField = 'BookingNo'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText29: TDBText
          Left = 434
          Top = 23
          Width = 56
          Height = 17
          Color = clWhite
          DataField = 'FreightCostPerUnit'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label23: TLabel
          Left = 372
          Top = 26
          Width = 51
          Height = 14
          Caption = 'Frakt/ enh:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 641
          Top = 2
          Width = 47
          Height = 14
          Caption = 'Totalfrakt:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText30: TDBText
          Left = 696
          Top = -1
          Width = 65
          Height = 17
          Color = clWhite
          DataField = 'TotalFreightCost'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label25: TLabel
          Left = 496
          Top = 5
          Width = 56
          Height = 14
          Caption = 'BokningsID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText31: TDBText
          Left = 551
          Top = 23
          Width = 82
          Height = 17
          Color = clWhite
          DataField = 'SUPP_REFERENCE'
          DataSource = dmVidaInvoice.ds_BookingData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label36: TLabel
          Left = 272
          Top = 26
          Width = 33
          Height = 14
          Caption = 'Valuta:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBText44: TDBText
          Left = 321
          Top = 23
          Width = 48
          Height = 17
          Color = clWhite
          DataField = 'CurrencyName'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 923
          Top = 24
          Width = 22
          Height = 14
          Caption = 'ETA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 920
          Top = 3
          Width = 22
          Height = 14
          Caption = 'ETD:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 768
          Top = 27
          Width = 36
          Height = 14
          Caption = 'Vessel:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 551
          Top = 2
          Width = 82
          Height = 17
          Color = clWhite
          DataField = 'BOOKING_ID'
          DataSource = dmVidaInvoice.ds_BookingData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 640
          Top = 26
          Width = 28
          Height = 14
          Caption = 'TrpID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 768
          Top = 6
          Width = 40
          Height = 14
          Caption = 'Shipper:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 496
          Top = 26
          Width = 48
          Height = 14
          Caption = 'Referens:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label17: TLabel
          Left = 6
          Top = 10
          Width = 41
          Height = 14
          Caption = 'Ordernr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 139
          Top = 10
          Width = 36
          Height = 14
          Caption = 'S'#228'ljare:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 139
          Top = 29
          Width = 38
          Height = 14
          Caption = 'V'#229'r ref:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 3
          Top = 31
          Width = 45
          Height = 14
          Caption = 'Kund ref:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object bbNewCarrier: TBitBtn
          Left = 1045
          Top = 50
          Width = 15
          Height = 14
          Caption = 'ny'
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 688
          Top = 20
          Width = 73
          Height = 20
          BorderStyle = bsNone
          DataField = 'TrpID'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dxDBEdit1: TcxDBTextEdit
          Left = 816
          Top = 0
          TabOrder = 2
          Width = 105
        end
        object dxDBEdit2: TcxDBTextEdit
          Left = 816
          Top = 20
          TabOrder = 3
          Width = 105
        end
        object dxDBMaskEdit1: TcxDBMaskEdit
          Left = 944
          Top = -4
          TabOrder = 4
          Width = 97
        end
        object dxDBMaskEdit2: TcxDBMaskEdit
          Left = 944
          Top = 18
          TabOrder = 5
          Width = 97
        end
        object dcOrderNoText: TDBEdit
          Left = 55
          Top = 3
          Width = 80
          Height = 20
          BevelEdges = []
          BorderStyle = bsNone
          DataField = 'OrderNoText'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dcSalesMan: TDBEdit
          Left = 192
          Top = 2
          Width = 57
          Height = 19
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          DataField = 'SalesMan'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dcOurRef: TDBEdit
          Left = 192
          Top = 23
          Width = 73
          Height = 19
          BevelEdges = []
          BorderStyle = bsNone
          DataField = 'OurReference'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object dcCustRef: TDBEdit
          Left = 54
          Top = 25
          Width = 81
          Height = 19
          BevelEdges = []
          BorderStyle = bsNone
          DataField = 'Reference'
          DataSource = dmVidaInvoice.dsrcInvoiceLO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
      end
    end
    object tsTotals: TcxTabSheet
      Caption = '&Totals'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object panelInvoiceTotal: TPanel
        Left = 0
        Top = 0
        Width = 1076
        Height = 102
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label26: TLabel
          Left = 8
          Top = 4
          Width = 223
          Height = 15
          Caption = 'TOTALT FAKTURA INKL. FRAKT && EXTRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText32: TDBText
          Left = 472
          Top = 4
          Width = 129
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Tot_Inv_Inc_Freight_Extras'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label27: TLabel
          Left = 8
          Top = 23
          Width = 159
          Height = 15
          Caption = 'SUMMA FRAKT KOSTNADER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText33: TDBText
          Left = 472
          Top = 23
          Width = 129
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'SUM_FreigthCost'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label28: TLabel
          Left = 8
          Top = 42
          Width = 176
          Height = 15
          Caption = 'PRODUKTV'#196'RDE UTAN FRAKT:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText34: TDBText
          Left = 472
          Top = 42
          Width = 129
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Total_Product_Value_No_Freight'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText35: TDBText
          Left = 80
          Top = 58
          Width = 129
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Discount'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText37: TDBText
          Left = 472
          Top = 61
          Width = 129
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Commission'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label34: TLabel
          Left = 8
          Top = 80
          Width = 274
          Height = 15
          Caption = 'FAKTURAV'#196'RDE MINUS KASSA OCH PROVISION:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText40: TDBText
          Left = 472
          Top = 80
          Width = 129
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Inv_Value_After_Deduct_DIS_COMM'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText21: TDBText
          Left = 829
          Top = 50
          Width = 121
          Height = 20
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Inv_Value_To_Be_Paid'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label41: TLabel
          Left = 656
          Top = 52
          Width = 82
          Height = 16
          Caption = 'ATT BETALA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 829
          Top = 26
          Width = 121
          Height = 20
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'VAT_Value'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label37: TLabel
          Left = 656
          Top = 28
          Width = 45
          Height = 16
          Caption = 'MOMS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 216
          Top = 61
          Width = 71
          Height = 15
          Caption = 'PROVISION: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 8
          Top = 58
          Width = 44
          Height = 15
          Caption = 'KASSA: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 953
          Top = 50
          Width = 52
          Height = 16
          AutoSize = True
          Color = clWhite
          DataField = 'CurrencyName'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 656
          Top = 4
          Width = 160
          Height = 16
          Caption = 'ATT BETALA(utan moms):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 829
          Top = 2
          Width = 121
          Height = 20
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Inv_Value_To_Be_Paid_2'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 953
          Top = 2
          Width = 58
          Height = 16
          AutoSize = True
          Color = clWhite
          DataField = 'CurrencyName'
          DataSource = dmVidaInvoice.dsrcInvoiceHead_II
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 616
          Top = 4
          Width = 33
          Height = 21
          DataField = 'TotalInvoice'
          DataSource = dmVidaInvoice.dsrcInvoiceDetail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
      end
    end
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 132
    Width = 1084
    Height = 19
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabHeight = 14
    TabOrder = 1
    Tabs.Strings = (
      '1'
      '2')
    TabIndex = 0
    OnChange = TabControl1Change
  end
  object Panel6: TPanel
    Left = 0
    Top = 151
    Width = 1084
    Height = 721
    Align = alClient
    TabOrder = 6
    object grdInvDtl: TcxGrid
      Left = 1
      Top = 1
      Width = 1082
      Height = 340
      Align = alClient
      TabOrder = 0
      object grdInvDtlDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = dmVidaInvoice.ds_InvDtl_Att
        DataController.KeyFieldNames = 'InternalInvoiceNo;InvoiceDetailNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'ActualNetM3'
            Column = grdInvDtlDBTableView1ActualNetM3
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'NominalM3'
            Column = grdInvDtlDBTableView1NominalM3
          end
          item
            Format = '#,###,###.00'
            Kind = skSum
            FieldName = 'ProductValue'
            Column = grdInvDtlDBTableView1ProductValue
          end
          item
            Format = '#,###,###.000'
            Kind = skSum
            FieldName = 'Volume_OrderUnit'
            Column = grdInvDtlDBTableView1Volume_OrderUnit
          end
          item
            Format = '#,###,###'
            Kind = skSum
            FieldName = 'NoOfPieces'
            Column = grdInvDtlDBTableView1NoOfPieces
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdInvDtlDBTableView1Checked: TcxGridDBColumn
          Caption = 'V'#228'lj'
          DataBinding.FieldName = 'Checked'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Properties.OnChange = grdInvDtlDBTableView1CheckedPropertiesChange
          Width = 56
        end
        object grdInvDtlDBTableView1SequensNo: TcxGridDBColumn
          Caption = 'Attestnr'
          DataBinding.FieldName = 'SequensNo'
          Width = 50
        end
        object grdInvDtlDBTableView1InvoiceDetailNo: TcxGridDBColumn
          Caption = 'Radnr'
          DataBinding.FieldName = 'InvoiceDetailNo'
          Width = 60
        end
        object grdInvDtlDBTableView1Reference: TcxGridDBColumn
          Caption = 'Referens'
          DataBinding.FieldName = 'Reference'
          Width = 48
        end
        object grdInvDtlDBTableView1ProductDescription: TcxGridDBColumn
          Caption = 'Beskrivning'
          DataBinding.FieldName = 'ProductDescription'
          Width = 111
        end
        object grdInvDtlDBTableView1LengthDescription: TcxGridDBColumn
          Caption = 'L'#228'ngd'
          DataBinding.FieldName = 'LengthDescription'
          Width = 102
        end
        object grdInvDtlDBTableView1VolumeUnit: TcxGridDBColumn
          Caption = 'Volymenhet'
          DataBinding.FieldName = 'VolumeUnit'
          Width = 72
        end
        object grdInvDtlDBTableView1NoOfPieces: TcxGridDBColumn
          Caption = 'Styck'
          DataBinding.FieldName = 'NoOfPieces'
          Width = 49
        end
        object grdInvDtlDBTableView1ActualNetM3: TcxGridDBColumn
          Caption = 'AM3'
          DataBinding.FieldName = 'ActualNetM3'
          Width = 49
        end
        object grdInvDtlDBTableView1NominalM3: TcxGridDBColumn
          Caption = 'NM3'
          DataBinding.FieldName = 'NominalM3'
          Width = 47
        end
        object grdInvDtlDBTableView1LinealMeter: TcxGridDBColumn
          Caption = 'AM1'
          DataBinding.FieldName = 'LinealMeter'
          Width = 49
        end
        object grdInvDtlDBTableView1Volume_OrderUnit: TcxGridDBColumn
          Caption = 'Vol/prisenhet'
          DataBinding.FieldName = 'Volume_OrderUnit'
          Width = 46
        end
        object grdInvDtlDBTableView1Price: TcxGridDBColumn
          Caption = 'Pris'
          DataBinding.FieldName = 'Price'
          Width = 44
        end
        object grdInvDtlDBTableView1PriceUnit: TcxGridDBColumn
          Caption = 'Prisenhet'
          DataBinding.FieldName = 'PriceUnit'
          Width = 70
        end
        object grdInvDtlDBTableView1InternalInvoiceNo: TcxGridDBColumn
          DataBinding.FieldName = 'InternalInvoiceNo'
          Visible = False
          Width = 59
        end
        object grdInvDtlDBTableView1ShippingPlanNo: TcxGridDBColumn
          Caption = 'LO'
          DataBinding.FieldName = 'ShippingPlanNo'
          Visible = False
          Width = 62
        end
        object grdInvDtlDBTableView1TypeOfRow: TcxGridDBColumn
          DataBinding.FieldName = 'TypeOfRow'
          Visible = False
          Width = 68
        end
        object grdInvDtlDBTableView1ProductValue: TcxGridDBColumn
          Caption = 'V'#228'rde'
          DataBinding.FieldName = 'ProductValue'
          Width = 46
        end
      end
      object grdInvDtlLevel1: TcxGridLevel
        GridView = grdInvDtlDBTableView1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 341
      Width = 1082
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer8Style'
      AlignSplitter = salBottom
      Control = Panel7
      Color = clMaroon
      ParentColor = False
    end
    object Panel7: TPanel
      Left = 1
      Top = 349
      Width = 1082
      Height = 371
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel7'
      TabOrder = 2
      object Panel1: TPanel
        Left = 0
        Top = 263
        Width = 1082
        Height = 108
        Align = alBottom
        TabOrder = 0
        object Label31: TLabel
          Left = 16
          Top = 33
          Width = 58
          Height = 13
          Caption = 'Beskrivning:'
        end
        object Label32: TLabel
          Left = 16
          Top = 57
          Width = 66
          Height = 13
          Caption = 'Lev.fakturanr:'
        end
        object Label33: TLabel
          Left = 16
          Top = 80
          Width = 86
          Height = 13
          Caption = 'Lev.fakturadatum:'
        end
        object Label39: TLabel
          Left = 265
          Top = 56
          Width = 36
          Height = 13
          Caption = 'Belopp:'
        end
        object Label40: TLabel
          Left = 265
          Top = 32
          Width = 54
          Height = 13
          Caption = 'Leverant'#246'r:'
        end
        object Label47: TLabel
          Left = 16
          Top = 12
          Width = 39
          Height = 13
          Caption = 'Attestnr:'
        end
        object Label48: TLabel
          Left = 264
          Top = 80
          Width = 33
          Height = 13
          Caption = 'Valuta:'
        end
        object Label49: TLabel
          Left = 951
          Top = 76
          Width = 35
          Height = 13
          Caption = 'Lev.Nr:'
        end
        object Label50: TLabel
          Left = 944
          Top = 92
          Width = 42
          Height = 13
          Caption = 'Valutanr:'
        end
        object Label46: TLabel
          Left = 584
          Top = 80
          Width = 76
          Height = 13
          Caption = 'Snabbfakturanr:'
        end
        object Label54: TLabel
          Left = 457
          Top = 56
          Width = 115
          Height = 13
          Caption = 'Totalt belopp lev.faktura'
        end
        object cbDescription: TcxDBComboBox
          Left = 104
          Top = 24
          DataBinding.DataField = 'Description'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Properties.Items.Strings = (
            'Arbete'
            'Vara')
          Properties.ReadOnly = False
          TabOrder = 0
          OnEnter = cbDescriptionEnter
          OnExit = cbDescriptionExit
          Width = 149
        end
        object meSupplier_InvoiceNo: TcxDBMaskEdit
          Left = 104
          Top = 48
          DataBinding.DataField = 'Supplier_InvoiceNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          TabOrder = 1
          OnEnter = meSupplier_InvoiceNoEnter
          Width = 149
        end
        object deSupplier_InvoiceDate: TcxDBDateEdit
          Left = 104
          Top = 72
          DataBinding.DataField = 'Supplier_InvoiceDate'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          TabOrder = 2
          OnEnter = deSupplier_InvoiceDateEnter
          Width = 149
        end
        object labelSequensNo: TcxDBLabel
          Left = 104
          Top = 5
          DataBinding.DataField = 'SequensNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Style.StyleController = cxEditStyleController1
          Height = 19
          Width = 121
        end
        object labelSupplierNo: TcxDBLabel
          Left = 992
          Top = 72
          DataBinding.DataField = 'SupplierNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Style.StyleController = cxEditStyleController1
          Height = 21
          Width = 81
        end
        object labelCurrencyNo: TcxDBLabel
          Left = 992
          Top = 88
          DataBinding.DataField = 'CurrencyNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Style.StyleController = cxEditStyleController1
          Height = 21
          Width = 81
        end
        object lcSupplierNo: TcxDBLookupComboBox
          Left = 322
          Top = 24
          DataBinding.DataField = 'SupplierNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownWidth = 350
          Properties.KeyFieldNames = 'ClientNo'
          Properties.ListColumns = <
            item
              FieldName = 'ClientName'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.ds_Customers
          TabOrder = 6
          Width = 231
        end
        object meAmountAttested: TcxDBMaskEdit
          Left = 322
          Top = 48
          DataBinding.DataField = 'Amount'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          TabOrder = 7
          OnEnter = meAmountAttestedEnter
          Width = 95
        end
        object lcCurrencyNo: TcxDBLookupComboBox
          Left = 322
          Top = 72
          DataBinding.DataField = 'CurrencyNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Properties.KeyFieldNames = 'CurrencyNo'
          Properties.ListColumns = <
            item
              FieldName = 'CurrencyName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dmsContact.dsCurrency
          TabOrder = 8
          Width = 97
        end
        object meQuick_InvoiceNo: TcxDBMaskEdit
          Left = 666
          Top = 71
          DataBinding.DataField = 'Quick_InvoiceNo'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          TabOrder = 9
          Width = 117
        end
        object memoNote: TcxDBMemo
          Left = 584
          Top = 8
          DataBinding.DataField = 'Note'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          TabOrder = 10
          OnEnter = memoNoteEnter
          Height = 57
          Width = 473
        end
        object teAmount: TcxDBMaskEdit
          Left = 459
          Top = 72
          DataBinding.DataField = 'AmountAttested'
          DataBinding.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          Properties.ReadOnly = False
          TabOrder = 11
          Width = 113
        end
        object Button1: TButton
          Left = 800
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 12
          OnClick = Button1Click
        end
      end
      object grdAtt: TcxGrid
        Left = 0
        Top = 62
        Width = 1082
        Height = 201
        Align = alClient
        TabOrder = 1
        object grdAttDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          OnFocusedRecordChanged = grdAttDBTableView1FocusedRecordChanged
          DataController.DataSource = dmVidaInvoice.ds_Att_Ext_ServicesII
          DataController.KeyFieldNames = 'InternalInvoiceNo;SequensNo;ShippingPlanNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###,###.00'
              Kind = skSum
              FieldName = 'Amount'
              Column = grdAttDBTableView1Amount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.ImmediateEditor = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object grdAttDBTableView1InternalInvoiceNo: TcxGridDBColumn
            Caption = 'Int.fakt.nr'
            DataBinding.FieldName = 'InternalInvoiceNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 60
          end
          object grdAttDBTableView1ShippingPlanNo: TcxGridDBColumn
            Caption = 'LO'
            DataBinding.FieldName = 'ShippingPlanNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 56
          end
          object grdAttDBTableView1SequensNo: TcxGridDBColumn
            Caption = 'Attestnr'
            DataBinding.FieldName = 'SequensNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 70
          end
          object grdAttDBTableView1Description: TcxGridDBColumn
            Caption = 'Beskrivning'
            DataBinding.FieldName = 'Description'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 130
          end
          object grdAttDBTableView1Supplier_InvoiceNo: TcxGridDBColumn
            Caption = 'Lev.fakturanr'
            DataBinding.FieldName = 'Supplier_InvoiceNo'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 114
          end
          object grdAttDBTableView1Supplier_InvoiceDate: TcxGridDBColumn
            Caption = 'Lev.fakt.datum'
            DataBinding.FieldName = 'Supplier_InvoiceDate'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 129
          end
          object grdAttDBTableView1Amount: TcxGridDBColumn
            Caption = 'Belopp'
            DataBinding.FieldName = 'Amount'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 72
          end
          object grdAttDBTableView1CURRENCY: TcxGridDBColumn
            Caption = 'Valuta'
            DataBinding.FieldName = 'CURRENCY'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 53
          end
          object grdAttDBTableView1CurrencyNo: TcxGridDBColumn
            DataBinding.FieldName = 'CurrencyNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 62
          end
          object grdAttDBTableView1SupplierNo: TcxGridDBColumn
            DataBinding.FieldName = 'SupplierNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 71
          end
          object grdAttDBTableView1SUPPLIER: TcxGridDBColumn
            Caption = 'Leverant'#246'r'
            DataBinding.FieldName = 'SUPPLIER'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 127
          end
          object grdAttDBTableView1Note: TcxGridDBColumn
            DataBinding.FieldName = 'Note'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 201
          end
          object grdAttDBTableView1CreatedDate: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedDate'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 48
          end
          object grdAttDBTableView1CreatedUser: TcxGridDBColumn
            DataBinding.FieldName = 'CreatedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 51
          end
          object grdAttDBTableView1ModifiedDate: TcxGridDBColumn
            DataBinding.FieldName = 'ModifiedDate'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 85
          end
          object grdAttDBTableView1ModifiedUser: TcxGridDBColumn
            DataBinding.FieldName = 'ModifiedUser'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 23
          end
          object grdAttDBTableView1Quick_InvoiceNo: TcxGridDBColumn
            DataBinding.FieldName = 'Quick_InvoiceNo'
            PropertiesClassName = 'TcxLabelProperties'
            Visible = False
            Width = 78
          end
        end
        object grdAttLevel1: TcxGridLevel
          GridView = grdAttDBTableView1
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1082
        Height = 62
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Panel3: TPanel
          Left = 995
          Top = 0
          Width = 87
          Height = 62
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object dxBarDockControl2: TdxBarDockControl
            Left = 0
            Top = 0
            Width = 87
            Height = 45
            Align = dalTop
            BarManager = dxBarManager1
          end
        end
        object Panel4: TPanel
          Left = 162
          Top = 0
          Width = 833
          Height = 62
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object dxBarDockControl1: TdxBarDockControl
            Left = 0
            Top = 0
            Width = 833
            Height = 45
            Align = dalTop
            BarManager = dxBarManager1
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 162
          Height = 62
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object eInvNo: TcxTextEdit
            Left = 88
            Top = 2
            TabOrder = 0
            OnKeyDown = eInvNoKeyDown
            Width = 65
          end
          object nfSearchLO: TcxTextEdit
            Left = 88
            Top = 26
            TabOrder = 1
            OnKeyDown = nfSearchLOKeyDown
            Width = 65
          end
          object cxLabel1: TcxLabel
            Left = 3
            Top = 8
            Caption = 'S'#246'k faktnr: F7'
            FocusControl = eInvNo
          end
          object cxLabel2: TcxLabel
            Left = 3
            Top = 32
            Caption = 'S'#246'k LONr: s+F7'
            FocusControl = nfSearchLO
          end
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = imglOutbar_large
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 424
    Top = 224
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 893
      FloatTop = 170
      FloatClientWidth = 107
      FloatClientHeight = 488
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbNew'
        end
        item
          Visible = True
          ItemName = 'lbNewFromCredit'
        end
        item
          Visible = True
          ItemName = 'lbSave'
        end
        item
          Visible = True
          ItemName = 'lbCancel'
        end
        item
          Visible = True
          ItemName = 'lbDelete'
        end
        item
          Visible = True
          ItemName = 'lbCopyAttest'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lbAllRows'
        end
        item
          Visible = True
          ItemName = 'lbOnAllLORows'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lbBooking'
        end>
      OldName = 'Custom 1'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbExit'
        end>
      OldName = 'Custom 2'
      OneOnRow = True
      Row = 0
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object lbExit: TdxBarLargeButton
      Action = acClose
      Category = 0
    end
    object lbBooking: TdxBarLargeButton
      Action = acBooking
      Category = 0
    end
    object lbPrevInvoice: TdxBarLargeButton
      Caption = 'F'#246'reg.'
      Category = 0
      Hint = 'F'#246'reg'#229'ende Faktura'
      Visible = ivAlways
      LargeImageIndex = 2
      OnClick = lbPrevInvoiceClick
    end
    object lbNext: TdxBarLargeButton
      Caption = 'N'#228'sta'
      Category = 0
      Hint = 'N'#228'sta Faktura'
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = lbNextClick
    end
    object lbSave: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object lbNew: TdxBarLargeButton
      Action = acNewAttest
      Category = 0
    end
    object lbCancel: TdxBarLargeButton
      Action = acCancelChanges
      Category = 0
    end
    object lbDelete: TdxBarLargeButton
      Action = acDeleteAttest
      Category = 0
    end
    object ccSearchInvoiceNo: TdxBarControlContainerItem
      Caption = 'SearchInvoiceNo'
      Category = 0
      Hint = 'SearchInvoiceNo'
      Visible = ivAlways
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'S'#246'k faktnr:'
      Category = 0
      Hint = 'S'#246'k faktnr:'
      Visible = ivAlways
    end
    object lbAllRows: TdxBarLargeButton
      Caption = 'Alla &rader'
      Category = 0
      Hint = 'F'#246'rdela kostnader p'#229' alla rader'
      Visible = ivAlways
      LargeImageIndex = 10
      OnClick = lbAllRowsClick
    end
    object lbOnAllLORows: TdxBarLargeButton
      Caption = 'Alla L&O rader'
      Category = 0
      Hint = 'F'#246'rdela kostnaden p'#229' alla rader p'#229' aktiv LO nr'
      Visible = ivAlways
      LargeImageIndex = 9
      OnClick = lbOnAllLORowsClick
    end
    object lbCopyAttest: TdxBarLargeButton
      Action = acCopyAttest
      Category = 0
    end
    object lbNewFromCredit: TdxBarLargeButton
      Action = acNewFromQuickInvoice
      Category = 0
    end
    object bsSokLO: TdxBarStatic
      Caption = 'S'#246'k LO:'
      Category = 0
      Hint = 'S'#246'k LO:'
      Visible = ivAlways
    end
    object ccSokLO: TdxBarControlContainerItem
      Caption = 'SokLO'
      Category = 0
      Hint = 'SokLO'
      Visible = ivAlways
    end
    object lbNewFromCommission: TdxBarLargeButton
      Caption = 'Ny fr'#229'n komm.'
      Category = 0
      Hint = 'Ny attest fr'#229'n provision'
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = lbNewFromCommissionClick
    end
  end
  object imglOutbar_large: TImageList
    Height = 24
    Width = 24
    Left = 272
    Top = 432
    Bitmap = {
      494C01010E001100040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A5420800A542080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A63
      6B0029638C00215A730042525A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800B5520000BD5A0000A54208009C390800000000000000
      000000000000000000000000000000000000000000000000000031638C00426B
      B5004273CE00318CD6002194D600188CBD00186B9400295A6B0042525A006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5390800BD5A0000D66B0000BD5A0000A5420800A54208000000
      0000000000000000000000000000000000000000000000000000396B9C004A6B
      B5004273CE00427BD600428CDE00398CDE003994EF002994EF002194D600188C
      B500186B9400315A6B004A5A5A006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5420800A5420800C65A0000D66B0000BD5A0000A5420800A542
      0800000000000000000000000000000000000000000000000000396BAD004A6B
      B500427BD600427BD600427BD600428CDE00398CDE003994EF003994EF003994
      EF003194F7002194EF001894D600187BAD0021638C00315A6B00525A5A007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C390800A5420800C6630000CE6B0000B55200009C39
      08009C39080000000000000000000000000000000000000000003973B500426B
      BD00427BD600427BD600427BD600427BD600428CDE00398CDE003994EF003994
      EF003994EF003994F7003194F7003194FF003194F7002194EF001894D600187B
      FD00295A73007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A54208009C3908009C3908009C39
      08009C3908009C3908009C3908009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000009C390800AD4A0800CE630000CE6B0000AD4A
      08009C3908009C39080000000000000000000000000000000000317BBD004273
      CE00427BD6004273CE00427BD600427BD600427BD600428CDE00398CDE003994
      EF003994EF003994EF003994F7003194F7003194FF00319CFF00319CFF003194
      F700188CBD006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5420800B55A1000B55A1000B552
      0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800AD4A0800B54A0000AD4A
      0800A5420800A542080000000000000000009C390800AD4A0800CE6B0000C663
      0000A54208009C39080000000000000000000000000000000000318CD6004273
      CE004273CE004273BD004273CE00427BD600427BD600427BD600428CDE00398C
      DE003994EF003994EF003994EF003994F7003194F7003194FF00319CFF00319C
      FF00188CCE006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000EF943100E78C2900DE7B
      1000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D66B
      0000B55208009C3908000000000000000000000000009C390800B5520800CE6B
      0000BD5A00009C3908009C390800000000000000000000000000318CDE00427B
      D6004273CE00426BBD004273BD004273CE00427BD600427BD600427BD600428C
      DE00398CDE003994EF003994EF003994EF003994F7003194F7003194FF00319C
      FF00188CCE006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200F7A53900E78C
      2900DE841800CE630800B5520000B5520000B5520000B5520000B5520000B552
      0800A5420800A5420800000000000000000000000000000000009C390800BD5A
      0000CE6B0000AD4A08009C390800000000000000000000000000318CDE00427B
      D6004273CE004A6BB500426BBD004273BD004273CE00427BD600427BD600427B
      D600428CDE00398CDE003994EF003994EF003994EF003994F7003194F7003194
      FF00188CCE006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7AD4A00FFAD4A00E794
      3900EF943100DE7B1800A54208009C3908009C3908009C3908009C3908009C39
      0800A542080000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000BD5A00009C3908009C39080000000000000000003994EF00398C
      D600426BB5004A63B5004A6BB500426BBD004273BD004273CE00427BD600427B
      D600427BD600428CDE00398CDE003994EF003994EF003994EF003994F7003194
      F700188CCE006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200C66B
      2100DE8C3100F79C3100D6731800A54208009C39080000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800CE630000C6630000A54208009C39080000000000000000003994EF004273
      BD0039425A00394A6B00394A6B0039527B00425A94004263AD00426BB500427B
      D600427BD600427BD600428CDE00398CDE003994EF003994EF003994EF003194
      F700188CBD006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD5A
      1800AD4A1000F7A54200F7A53900CE731800A53908009C390800000000000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C39080000000000000000004294EF00426B
      B50039527B004A6BB5004263AD00425A9C00425A940039527B00394A73003952
      7300395A8C0039639C003973B5003973CE00398CDE003994EF003994EF003994
      EF00188CBD006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFBD5200BD63
      180094290000BD631800F7AD4A00F7A53900CE731800A54208009C3908000000
      000000000000000000000000000000000000000000000000000000000000A542
      0800C6630000C6630000A54208009C39080000000000000000004A94DE00426B
      9C00425A94004273BD004273BD004273BD004273BD004273BD004273BD004A7B
      BD0063ADCE00528CAD004A6B9400425A7B0039527300395A8C00396BAD003973
      BD00187BAD005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900009C390000C66B2100FFAD4A00F7A53900D67B2100A54208009C39
      08000000000000000000000000000000000000000000000000009C390800AD4A
      0800CE6B0000C6630000A54208009C39080000000000000000004A94DE004263
      8C004263AD004273CE004273CE004273CE004273CE004273CE004273CE005294
      D60094EFFF0094EFFF008CDEFF005294D6004273CE00426BB5004263AD00395A
      8C0039527B0039424A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C390000000000009C390000C6632100F7AD4A00FFAD4200DE842100AD4A
      08009C39080000000000000000000000000000000000A54208009C390800BD5A
      0000CE6B0000BD5A00009C3908000000000000000000000000005294D6004252
      6B004273BD00427BD600427BD600427BD600427BD600427BD600427BD6004A94
      DE005AB5EF0063BDF70063CEF7004A94DE00427BD600427BD600427BD600427B
      D600427BD600394A630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C39000000000000000000009C310000BD5A1800F7A54200FFAD4200E78C
      2900B55210009C3908009C3908009C3908009C3908009C390800B5520000CE6B
      0000CE6B0000AD4208009C3908000000000000000000000000004A8CB5004A52
      63008CB5DE006BADEF005294DE004A94DE00428CDE00428CDE00428CDE00428C
      DE00428CDE00428CDE00428CDE00428CDE00428CDE00428CDE00428CDE00428C
      DE00398CD600394A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7A54200FFB55200BD63
      18009C3900000000000000000000000000009C390000AD4A1000E7943900FFAD
      4200F79C3100CE731800B55A1000AD4A0800AD4A0800BD5A0000CE6B0000CE6B
      0000B55208009C39080000000000000000000000000000000000396394004A8C
      CE007BB5EF009CCEF700ADD6F700ADD6F700ADD6F7009CCEF7007BBDEF006BAD
      EF00529CEF004A94EF004294EF003994EF003994EF003994EF003994EF003994
      EF00398CDE00394A520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A1000F7AD4A00FFBD5200BD63
      18009C390000000000000000000000000000000000009C3900009C390800C66B
      2100E7943900F79C3100EF942900DE7B1000D6730000CE6B0000C65A0000AD4A
      08009C39080000000000000000000000000000000000000000005A636B004A5A
      6B00425A7B0039639400396BAD003173CE00428CDE00529CEF006BADEF007BBD
      EF008CD6F70094D6FF0094D6FF008CD6F70073CEF7005AB5EF004AADF700429C
      F7003994EF0042424A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5420800D6842900E7943900AD4A
      10009C39080000000000000000000000000000000000000000009C3908009C39
      0000A5420800B55A1000C6631800BD631800B5520800A5420800A54208009C39
      0800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018399400183994003142520042526B004263
      8C00426B9C00396BAD003173CE004294EF0052B5EF0063BDF70073CEF70073CE
      F70063B5D6005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C3908009C3908009C39
      0800000000000000000000000000000000000000000000000000000000000000
      00009C3908009C3908009C3908009C3908009C3908009C390800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001842AD001842AD0039424A00000000000000
      00000000000039424A0008086B0018185200394A520042526B00425A7B004A5A
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000397BD6002163D60021429C0021398C002139
      6B0029315A0029315A0008188C00182163000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005294BD00397BD6001852D6001852D6001042
      BD001039B5001031B50008299C0018296B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B6B00636B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      6300000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFB56B00FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB5
      6B00FFFFFF00FFFFFF00FFB56B00FFFFFF00FFFFFF00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00FFEFE700FFEFE700FFEFE7008C8C8C00FFEF
      E700FFEFE700FFEFE700FFEFE7000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      6300000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB5
      6B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFB56B00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00FFEFE700FFEFE700FFEFE7008C8C8C00FFEF
      E700FFEFE700FFEFE700FFEFE7000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      6300000000000000000000000000000000000000000000000000000000009494
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      6300000000000000000000000000000000000000000000000000000000009C9C
      9400FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A5
      5A00FFFFFF00FFFFFF00F7A55A00FFFFFF00FFFFFF00F7A55A00FFFFFF009C9C
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C00FFEFE700FFEFE700FFEFE7008C8C8C00FFEF
      E700FFEFE700FFEFE700FFEFE7000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      6300000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00FFFFFF009C9C
      9C00000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE000063CE000063CE0000000000000000000000
      0000007308000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000073080000730800000000000000000000000000000000000000
      000000000000000000008C8C8C00FFEFE700FFEFE700FFEFE7008C8C8C00FFEF
      E700FFEFE700FFEFE700FFEFE7000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000000000000000000000000000A5A5
      A500FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C
      2100FFFFFF00FFFFFF00EF9C2100FFFFFF00FFFFFF00EF9C2100FFFFFF00A5A5
      A5000000000000000000000000000000000084FFFF0084FFFF000063CE0084FF
      FF0084FFFF0084FFFF0084FFFF0084FFFF000063CE0000000000000000000000
      0000007308000073080000000000EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C21000000000000000000000000000000
      0000000000000073080084FF8400007308000000000000000000000000000073
      F7000073F7000073F7000073F7000073F7000073F7000073F7000073F7000073
      F7008C8C8C008C8C8C008C8C8C000000000000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C
      2100F7F7F700F7F7F700EF9C2100F7F7F700F7F7F700EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000010F7FF0000DEE7000063CE0010F7
      FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE0000000000000000000000
      0000007308000073080000730800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084C66B0084C6
      6B00007308000073080084C66B0084FF84000073080000000000000000000073
      F70031FFFF0031FFFF0031FFFF000073F70031FFFF0031FFFF0031FFFF000073
      F700FFFFFF00FFFFFF00FFFFFF000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000000000000000000000000000A5A5
      A500F7F7F700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100F7F7F700A5A5
      A5000000000000000000000000000000000010F7FF0000DEE7000063CE0010F7
      FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE0000730800007308000073
      0800007308000073080000730800007308000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084FF8400009C
      0000009C0000009C000084C66B0084C66B0084FF840000730800000000000073
      F70031FFFF0031FFFF0031FFFF000073F70031FFFF0031FFFF0031FFFF000073
      F700FFFFFF00FFFFFF00FFFFFF000000000000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000ADAD
      FD00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C
      2100EFEFEF00EFEFEF00EF9C2100EFEFEF00EFEFEF00EF9C2100EFEFEF00ADAD
      FD000000000000000000000000000000000010F7FF0000DEE7000063CE0010F7
      FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE0000730800007308000073
      08000073080000730800008C0800008C08000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084C66B0084C6
      6B00007308000073080084C66B0084FF84000073080000000000000000000073
      F7000073F7000073F7000073F7000073F7000073F7000073F7000073F7000073
      F7008C8C8C008C8C8C008C8C8C000000000000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C
      2100E7E7E700E7E7E700EF9C2100E7E7E700E7E7E700EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000010F7FF0000DEE7000063CE0010F7
      FF0010F7FF0010F7FF0010F7FF0000DEE7000063CE0000000000000000000000
      0000008C0800008C0800008C0800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000073080084FF8400007308000000000000000000000000000000
      000000000000000000008C8C8C00FFEFE700FFEFE700FFEFE7008C8C8C00FFEF
      E700FFEFE700FFEFE700FFEFE7000000000000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000ADAD
      FD00E7E7E700EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100E7E7E700ADAD
      FD000000000000000000000000000000000000DEE70000DEE7000063CE0000DE
      E70000DEE70000DEE70000DEE70000DEE7000063CE0000000000000000000000
      0000008C0800008C080000000000EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C21000000000000000000000000000000
      0000000000000073080000730800000000000000000000000000000000000000
      000000000000000000008C8C8C00FFEFE700FFEFE700FFEFE7008C8C8C00FFEF
      E700FFEFE700FFEFE700FFEFE7000000000000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000000000000000000000000000ADB5
      B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00ADB5
      B500000000000000000000000000000000000063CE000063CE000063CE000063
      CE000063CE000063CE000063CE000063CE000063CE0000000000000000000000
      0000008C08000000000000000000EF9C2100FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C21000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFF7E700FFF7E700FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF9C2100F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00E7A563000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000B5B5
      B500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF9C2100FFDEB500FFDEB500FFDEB500FFDEB500FFDE
      B500FFDEB500FFDEB500FFDEB50000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000000000000000000000000000B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF9C2100EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7A55A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EF9C2100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EF9C2100EF9C2100EF9C2100EF9C2100EF9C
      2100EF9C2100EF9C2100EF9C2100EF9C21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000AD736B009C52
      52009C4A4A009C5252009C4A4A00A5737300B5B5B500B5B5B500B5B5B500BDB5
      B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500A5737300944242009C4A
      4A009C4A4A009C4A4A009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7EFD600EFDECE008C5A5A000000000000000000B5847300C66B6B00C663
      6300C6636300CE636300B55252009C6B6B00B5B5B500CECECE00E7E7DE00EFEF
      EF00F7F7EF00F7F7EF00EFE7E700E7DEDE00DEDEDE00B5737300942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00EFE7
      D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C6B6B00A58C8C00B5848400CEADAD00DECE
      CE00F7F7EF00FFFFF700F7F7F700EFEFE700E7E7E700B5737300942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDED600F7EFE700EFE7
      DE00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A009C737300A57B7B009C393900B5736B00C69C
      9C00EFE7E700F7F7F700FFF7F700F7F7EF00EFEFEF00BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000000000000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700F7DE
      C600FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00F7DE
      BD00EFE7D600EFDECE008C5A5A000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300A5848400943131009C424200B573
      7300DEDED600EFEFEF00F7F7F700FFF7F700F7F7F700BD7B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000000000000031DE000031
      DE000031DE000031DE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000000
      0000C6631800CE630000CE630000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700FFE7
      CE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      C600EFE7D600EFDECE008C5A5A000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00A5737300AD8C8C0094313100943131009C4A
      4A00C6C6C600E7E7DE00EFEFEF00FFF7F700FFFFFF00C67B7B00942929009431
      31009C393900C65A5A00C66363009C4A4A0000000000000000000031DE000031
      DE000031DE000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C6631800000000000000000084848400525252008484
      84006B6B6B006B6B6B004A4A4A00A5A5A500737373006B6B6B00000000004A4A
      4A000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300B5847300EFE7DE00FFF7EF00F7EF
      DE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600EFE7D600EFE7
      D600F7E7D600EFDECE009C6B63000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00B58C8C0094292900942929009431
      3100ADA5A500CECECE00E7E7DE00F7EFEF00FFFFFF00C6848400942929009431
      31009C393900C65A5A00C66363009C4A4A000000000000000000000000000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000C66318000000000000000000848484006B6B6B000000
      00007B7B7B007B7B7B006B6B6B00848484004A4A4A007B7B7B006B6B6B008484
      84000000000000000000000000000000000000000000A57B7300EFDECE00F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600BD8C8400EFE7DE00FFF7EF00F7DE
      BD00FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      BD00F7E7DE00EFDECE009C6B63000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300B5525200AD7B7B00C6ADAD00A5636300A56363009C63
      63009C9C9C00B5B5B500D6D6D600EFEFEF00FFFFFF00C6848400942929009431
      31009C393900BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000031FF000031DE000031DE000031DE000031DE0000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DE7B000000000000000000000000000000000000848484000000
      0000000000000000000000000000848484000000000000000000848484000000
      00000000000000000000000000000000000000000000A57B7300EFDECE00F7EF
      DE00EFE7D600EFE7D600EFE7D600EFE7D600BD8C8400EFE7DE00FFF7F700F7EF
      E700F7EFDE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7DE00EFDECE009C6B63000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300BD5A5A00B5737300D6A5A500C69C9C00BD9C9C00BD94
      9400AD8C8C00AD8C8C00C69C9C00D6ADAD00E7C6C600C6737300A5424200AD42
      4200AD4A4A00C6636300C66363009C4A4A000000000000000000000000000000
      000000000000000000000031DE000031DE000031DE000031DE00000000000000
      00000031DE000031DE000031DE000031DE000031DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300EFDED600F7EF
      E700EFE7DE00EFE7DE00EFE7D600EFE7D600CE9C8400EFE7E700FFFFF700F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600FFE7CE00F7DEC600F7E7
      D600F7EFDE00EFDED600A57B73000000000000000000B5847300C66B6B00CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300C6636300C6636300C6636300CE636300CE636300CE63
      6300CE636300CE636300C66363009C4A4A000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031DE000031DE000031
      DE000031DE000031DE000031DE000031DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300EFDED600F7EF
      E700F7DEC600FFD6AD00FFD6AD00FFD6AD00CE9C8400F7EFE700FFFFFF00FFDE
      C600FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      C600F7EFE700EFE7D600A57B73000000000000000000B5847300C66B6B00C663
      6300BD5A5A00C6636300C66B6B00CE737300CE737300CE737300CE737300CE73
      7300CE737300CE737300CE737300CE737300CE737300CE737300CE737300CE7B
      7B00CE6B6B00CE636300C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031FF000031DE000031DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000094949400A5A5A5009494
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300EFDED600F7EF
      E700FFE7CE00F7DEBD00F7DEBD00F7DEBD00DEAD8400F7EFEF00FFFFFF00FFF7
      F700FFF7EF00FFF7EF00F7EFEF00F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700DED6CE00A57B73000000000000000000B5847300C66B6B00AD4A
      4A00A54A4200B56B6B00C68C8C00CEADAD00D6BDBD00D6BDBD00D6BDBD00D6BD
      BD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00D6BDBD00DEC6
      C600CE8C8C00CE636300C66363009C4A4A000000000000000000000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031FF000031DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE6300000000000000000000000000000000000000000000313131008C8C
      8C006B6B6B000000000084848400848484005A5A5A0052525200000000006363
      63006363630063636300000000000000000000000000B5847300EFE7DE00FFF7
      EF00F7EFDE00F7E7DE00F7E7DE00F7E7D600DEAD8400F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7F700EFE7
      E700D6D6D600BDBDBD00B58473000000000000000000B5847300C66B6B00AD42
      4200CE9C9C00F7F7EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000031DE000031DE000031FF000031
      DE000031DE000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE630000000000000000000000000000A5A5A500737373006363
      63005A5A5A006363630063636300A5A5A500636363004A4A4A006B6B6B006363
      6300737373005A5A5A00000000000000000000000000BD8C8400EFE7DE00FFF7
      EF00F7DEBD00FFD6A500FFD6A500FFD6A500E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B5847300B584
      7300B5847300B5847300B58473000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000000000000000000000000000031DE000031DE000031FF000031DE000031
      FF000031FF000031FF000031DE000031FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE63000000000000C66318000000000000000000000000008C8C8C000000
      0000A5A5A500949494000000000084848400525252008C8C8C00000000000000
      00007B7B7B0000000000000000000000000000000000BD8C8400EFE7DE00FFF7
      F700F7EFE700F7EFDE00F7E7DE00F7E7DE00E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B5847300E7AD
      7300EFAD5A00E79C4200BD8484000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7F7F700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      000000000000000000000031FF000031FF000031FF000031DE000031FF000000
      0000000000000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE630000C6631800C6631800000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400EFE7E700FFFF
      F700F7EFDE00F7E7D600F7E7D600F7E7D600EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300F7C6
      7B00EFAD5A00BD848400000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CEC6C600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600E7DEDE00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      0000000000000031FF000031FF000031DE000031FF000031FF00000000000000
      000000000000000000000031FF000031FF000031FF000031FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C8400F7EFE700FFFF
      FF00FFDEC600FFD6A500FFD6A500FFD6A500EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300E7B5
      7B00BD84840000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00F7EFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700F7EFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000000
      00000031FF000031FF000031FF000031FF000031FF0000000000000000000000
      0000000000000000000000000000000000000031FF000031FF000031FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFF7F700FFF7EF00FFF7EF00F7EFEF00EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300BD84
      84000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFE7E700D6CECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A000000000000000000000000000031
      FF000031FF000031FF000031FF000031FF000000000000000000000000000000
      000000000000000000000000000000000000000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000CE6300000000000000000000000000007B7B7B00000000004A4A
      4A00313131004A4A4A0042424200424242004242420000000000424242000000
      00000000000000000000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      F700EFE7E700D6D6D600BDBDBD00B58473000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A0000000000000000000031FF000031
      FF000031FF000031FF000031FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000073737300737373005A5A
      5A00313131006363630000000000525252004242420042424200525252000000
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B584
      7300B5847300B5847300B5847300B58473000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00EFEFE700E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00EFEFEF00EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000031FF000031FF000031
      FF000031FF000031FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE6300000000000000000000000000007B7B7B005A5A5A000000
      000000000000636363006363630063636300000000006B6B6B00636363000000
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B584
      7300E7AD7300EFAD5A00E79C4200BD8484000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00E7E7E700CECECE00D6CECE00D6CECE00D6CECE00D6CE
      CE00D6CECE00D6CECE00D6CECE00D6CECE00D6CECE00CECECE00E7E7E700EFE7
      E700CE8C8C00BD5A5A00C66363009C4A4A00000000000031FF000031FF000031
      FF000031FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE63000000000000000000000000000000000000000000000000
      0000000000006363630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300F7C67B00EFAD5A00BD848400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300C66B6B00AD42
      4200CEA5A500FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7
      E700CE8C8C00C65A5A00C66363009C4A4A00000000000031FF000031FF000031
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300E7B57B00BD84840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5847300BD6B6B00AD42
      4200CE9C9C00EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFEFE700E7DE
      DE00C68C8C00B5525200BD5A5A009C4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300BD8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD736B00A542
      4200B58C8400C6CECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CEC6
      C600B5848400944242009C4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000088C
      100010941000CEEFBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEEFBD001094
      1000088C10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000000AD0000218C1800BDEFC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDEFC600218C180000AD
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000008C
      080000940000008C000018941800C6EFCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6EFCE0018941800008C00000094
      0000008C08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000088C
      0800009C0000219C18000084000018841800CEEFCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEEFCE001884180000840000219C1800009C
      0000088C08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      FD00FFD6A500CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000884
      0000009C0000088C000029A5210008840000088C1000CEEFCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEEFCE00088C10000884000029A52100088C0000009C
      0000088400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD738400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      FD00FFD6AD00CE630000000000000000000010BD080000A5000000AD080000A5
      0000009408000894000000940000009400000094000000840000087B10000094
      0000009C0000008C00001084080042A54200087B080018841800D6E7D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6E7D60018841800087B080042A5420010840800008C0000009C
      000000940000087B100000840000009400000094000000940000089400000094
      080000A5000000AD080000A5000010BD08000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      EF00FFF7EF00FFEFE700FFEFD600FFE7C600FFE7C600FFE7C600FFDEB500FFDE
      B500FFD6AD00CE630000000000000000000000AD00006BDE6B005AE75A0052E7
      520042DE420031D6310018C6180000B5080000AD000000B5000000A50000089C
      0000088C0800008C0000008C00002194210052AD5200107B0800107B1000D6EF
      DE00000000000000000000000000000000000000000000000000000000000000
      0000D6EFDE00107B1000107B080052AD520021942100008C0000008C0000088C
      0800089C000000A5000000B5000000AD000000B5080018C6180031D6310042DE
      420052E752005AE75A006BDE6B0000AD00000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE6300000000000000000000009C080063E7630031DE290018D6
      180008C6000000BD000000BD000000B5000000B5000000A5000000A50000009C
      0000008C0000008C08000094000000840000218C180052AD520000730000187B
      1800D6EFD600000000000000000000000000000000000000000000000000D6EF
      D600187B18000073000052AD5200218C18000084000000940000008C0800008C
      0000009C000000A5000000A5000000B5000000B5000000BD000000BD000008C6
      000018D6180031DE290063E76300009C08000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7EF00FFF7EF00FFEFE700FFEFD600FFEFD600FFE7C600FFE7
      C600FFEFD600CE6300000000000000000000009C000063E76B0018D6180000CE
      000000C6000000C6000000BD000000AD080000A5000000A50000009C000000A5
      0000009C0000008C080000840000008C0800087300001884180073B56B00006B
      000018841800D6E7D60000000000000000000000000000000000D6E7D6001884
      1800006B000073B56B001884180008730000008C080000840000008C0800009C
      000000A50000009C000000A5000000A5000000AD080000BD000000C6000000C6
      000000CE000018D6180063E76B00009C00000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF00FFF7EF00FFEFD600FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000001094080063E7630008D6000000CE
      000000C6000000C6000000BD000000B5000000B5000000AD000008A500000894
      0000009C0000008C0800008C000000840000007B000000730000187B210073B5
      7B0008730000187B1800DEEFDE000000000000000000DEEFDE00187B18000873
      000073B57B00187B210000730000007B000000840000008C0000008C0800009C
      00000894000008A5000000AD000000B5000000B5000000BD000000C6000000C6
      000000CE000008D6000063E76300109408000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7EF007B8CC60031398C0031398C00396B9400FFE7
      C600FFEFD600CE630000000000000000000000A5000063E76B0008C6000000CE
      000008C6000000C6000000BD000000B5000000B5000000AD000000A50000009C
      080000940000008C0800088C00000084000000840000087B0800007B0000298C
      31007BB5840008630800187B2100EFF7EF00EFF7EF00187B2100086308007BB5
      8400298C3100007B0000087B08000084000000840000088C0000008C08000094
      0000009C080000A5000000AD000000B5000000B5000000BD000000C6000008C6
      000000CE000008C6000063E76B0000A500000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00085A94003184FF003184FF00085A9400FFEF
      D600FFEFD600CE6300000000000000000000009C000063E76B0000D6000000CE
      000008C6000000C6000000B5080000B5000000AD000000AD000000A50000009C
      00000094000000940000008400000084000000840000007B0000007300001884
      1800298431008CC69400106300006B946B006B946B00106300008CC694002984
      31001884180000730000007B0000008400000084000000840000009400000094
      0000009C000000A5000000AD000000AD000000B5000000B5080000C6000008C6
      000000CE000000D6000063E76B00009C00000000000000000000000000000000
      0000000000000000000000000000AD738400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B58484000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00085A940042B5F70042B5F700085A9400FFEF
      D600FFEFD600CE6300000000000000000000089C00006BE76B0000CE000000CE
      000008C6000000BD000000BD000000B5000000AD000000AD000000A508000094
      000000940800008C0800008C000000840000007B0000007B000000730000398C
      310084BD8400006B000018732900EFF7EF00EFF7EF0018732900006B000084BD
      8400398C310000730000007B0000007B000000840000008C0000008C08000094
      08000094000000A5080000AD000000AD000000B5000000BD000000BD000008C6
      000000CE000000CE00006BE76B00089C00000000000000000000000000000000
      0000000000007B8CC60031398C0031398C00396B9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00298CBD000873B5000873B500085A940042B5F70042B5F7000873B5000873
      B500085A94007B8CC6000000000000000000009C000063E7630000CE000000CE
      000008C6000000C6000000BD000000B5000000AD000000A5000000A50000009C
      000000940000009400000084000000840000087B080000730000298418007BB5
      7300086B0000187B2100D6EFD6000000000000000000D6EFD600187B2100086B
      00007BB573002984180000730000087B08000084000000840000009400000094
      0000009C000000A5000000A5000000AD000000B5000000BD000000C6000008C6
      000000CE000000CE000063E76300009C00000000000000000000000000000000
      000000000000085A94003184FF003184FF00085A9400F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000873B5008CD6F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5
      F7008CD6F7000873B5000000000000000000009C000063E76B0010D6100000C6
      000000C6000000C6000000BD000000B5000000AD000000A5000000A50000089C
      000008940000008C0000088C000000840000088400001884210063AD63000073
      0000187B2100DEE7D60000000000000000000000000000000000DEE7D600187B
      21000073000063AD6300188421000884000000840000088C0000008C00000894
      0000089C000000A5000000A5000000AD000000B5000000BD000000C6000000C6
      000000C6000010D6100063E76B00009C00000000000000000000000000000000
      000000000000085A940042B5F70042B5F700085A9400EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00216BF700B5DEF700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DE
      F700B5DEF700216BF7000000000000000000009408006BEF630031DE290018D6
      180008C6000000C6000000BD000000B5000000B5000000AD0800009C08000894
      000008940000008C0000008C000000840000108C180052AD5200007B0000107B
      1800D6EFDE00000000000000000000000000000000000000000000000000D6EF
      DE00107B1800007B000052AD5200108C180000840000008C0000008C00000894
      000008940000009C080000AD080000B5000000B5000000BD000000C6000008C6
      000018D6180031DE29006BEF6300009408000000000000000000298CBD000873
      B5000873B500085A940042B5F70042B5F7000873B5000873B500085A94007B8C
      C600E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700A57B84000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005AB5E7003184FF003184FF003184FF008CD6F7008CD6F7003184FF003184
      FF003184FF005AB5E700000000000000000000AD00007BDE7B0063E763005AE7
      5A0042DE420029D6310018C6180000B5080000AD080000AD000000A50000009C
      0000009400000094000000840000189421004AAD5200107B0000107B1000CEE7
      DE00000000000000000000000000000000000000000000000000000000000000
      0000CEE7DE00107B1000107B00004AAD52001894210000840000009400000094
      0000009C000000A5000000AD000000AD080000B5080018C6180029D6310042DE
      42005AE75A0063E763007BDE7B0000AD000000000000000000000873B5008CD6
      F70042B5F70042B5F70042B5F70042B5F70042B5F70042B5F7008CD6F7000873
      B500E7E7E700E7E7E700E7E7E700E7E7E700B5847300B5848400B5848400B584
      8400B58473000000000000000000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF003184FF008CD6F7008CD6F7003184FF00FFF7
      E700FFF7E700CE630000000000000000000010C6080000A5000000AD000000A5
      0000009C0000009C0000089C000000940000008C000010840000008400000094
      000000940000008C00000884000039AD3900107B080018841000D6E7D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6E7D60018841000107B080039AD390008840000008C00000094
      0000009400000084000010840000008C000000940000089C0000009C0000009C
      000000A5000000AD000000A5000010C608000000000000000000216BF700B5DE
      F700B5DEF700B5DEF7008CD6F7008CD6F700B5DEF700B5DEF700B5DEF700216B
      F700DEDEDE00DEDEDE00DEDEDE00D6D6D600B5847300CECECE00DEDEDE00EFEF
      EF00B58473000000000000000000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B00003184FF00B5DEF700B5DEF7003184FF00DE7B
      0000DE7B0000CE63000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001084
      1000009C0000008C000029AD290008840000088C1000D6EFD600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6EFD600088C10000884000029AD2900008C0000009C
      0000108410000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005AB5E7003184
      FF003184FF003184FF008CD6F7008CD6F7003184FF003184FF003184FF005AB5
      E700D6D6D600D6D6D600D6D6D600C6C6C600B5847300FFFFFF00FFFFFF00E7E7
      E700B58484000000000000000000000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300005AB5E7003184FF003184FF005AB5E700CE63
      0000CE630000E7A5630000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000008C
      00001094080018941800008C0000188C1800D6E7D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6E7D600188C1800008C0000189418001094
      0800008C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003184FF008CD6F7008CD6F7003184FF00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00C6C6C600B5847300FFFFFF00EFEFEF00B584
      840000000000000000000000000000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B21000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000088C
      0000089400000094000018941800C6EFC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6EFC60018941800009400000894
      0000088C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003184FF00B5DEF700B5DEF7003184FF00DEC6BD00DEC6BD00DEC6
      BD00DEC6BD00DEC6BD00DEC6BD00CEADA500B5847300B5848400B58484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      0000009C000018941800C6EFC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6EFC60018941800009C
      0000009400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005AB5E7003184FF003184FF005AB5E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      000021942100C6EFCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6EFCE002194
      2100008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5E7
      A500C6EFC6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6EF
      C600A5E7A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFC7FE0
      FFFF000000000000FFF83FC00FFF000000000000FFF81FC000FF000000000000
      FFF80FC0000F000000000000FFFC07C00003000000000000000603C000030000
      00000000000303C00003000000000000000381C000030000000000000003C1C0
      00030000000000000007C0C00003000000000000007FE0C00003000000000000
      003FE0C00003000000000000001FE0C00003000000000000000FC0C000030000
      00000000040781C00003000000000000060001C00003000000000000070003C0
      0003000000000000078007C0000300000000000007C00FFE0003000000000000
      8FF03FFE3807000000000000FFFFFFFE00FF000000000000FFFFFFFE00FF0000
      00000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFE0000FFF
      FFFFFFFFFFFFFFFFE0000FFFFFFFFFFFFFFF1FFFE0000FFFFE00FFFFFFF8000F
      E0000FFFFE00FFFC01E0000FE0000FFFFE00FFFC01C0000FE0000FFFFE00FFFC
      01C0000FE0000FFFFE00FFFC01C0000FE0000FFFFE00FFFC01C0000FE0000F00
      7600F9FC01C0000FE0000F007200F8E001C0000FE0000F0071FFC06001C0000F
      E0000F0000FFC02001C0000FE0000F0000FFC06001C0000FE0000F0071FFF8FC
      01C0000FE0000F007200F9FC01C0000FE0000F007600FFFC01C0000FE0000FFF
      FE00FFFC01C0000FE0000FFFFE00FFFC01E0000FE0000FFFFE00FFFC01F8000F
      FFFFFFFFFE00FFFFFFFE1FFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFFFFFE00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001C00001FFFFFFFFFFFFFF000180
      0000FFFFF9FFFFFFFF0001800000FFFFF1FFFFFFFF0001800000C7FFE3FFFFFF
      FF0001800000C3FF87F1FFCFFF0001800000C1FF0FF5802F800001800000E0FE
      1FF9900F800001800000F07C3FFBDEDF800001800000FC307FF1FFFF80000180
      0000FE00FFFFFFFF800001800000FF01FFF18FFF800001800000FF83FFF7C423
      800001800000FF01FFFB8003800001800000FE00FFF5D237800001800000FC18
      7FF1FF7F800003800000F83C3FFFFFFF800007800000F07F1FF1FFFF80000F80
      0000E0FF8FFBA05F8000FF800000C1FFEFFB821F8000FF80000083FFFFF3989F
      8000FF80000087FFFFFBFBFF8001FF8000008FFFFFFFFFFF8003FF800000FFFF
      FFFFFFFF8007FFC00001FFFFFFFFFFFFFFFFFFFFE3FFFFC7FFFFFFFFFFFFFFFF
      E1FFFF87FFFFFFFFC00003FFE0FFFF07FFFFFFFFC00003FFE07FFE07FFFFFFFF
      C00003FFE03FFC07FFFE0007C0000300001FF80000FE0007C0000300000FF000
      00FE0007C00003000007E00000FE0007C00003000003C00000FE0007C0000300
      0001800000FE0007C00003000000000000FE0007C00003000000000000FE0007
      C00003000000000000F80007C00003000001800000F80007C00003000003C000
      00F80007C00003000007E00000C00007C0000300000FF00000C00007C0000300
      001FF80000C00007C00003FFE03FFC07FFC00007C00003FFE07FFE07FFF8000F
      E00007FFE0FFFF07FFF8001FFFFFFFFFE1FFFF87FFF87FFFFFFFFFFFE3FFFFC7
      FFFFFFFFFFFFFFFFE7FFFFE7FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 176
    Top = 472
    object Skfaktura1: TMenuItem
      Action = acGoToLOSearch
    end
    object SkLO1: TMenuItem
      Action = acGoToSearch
    end
    object BokningF101: TMenuItem
      Action = acBooking
    end
    object ngraF41: TMenuItem
      Action = acCancelChanges
    end
    object StngF121: TMenuItem
      Action = acClose
    end
    object abortF51: TMenuItem
      Action = acDeleteAttest
    end
    object NyF21: TMenuItem
      Action = acNewAttest
    end
    object NysnabbfaktShiftF21: TMenuItem
      Action = acNewFromQuickInvoice
    end
    object SparaF31: TMenuItem
      Action = acSave
    end
    object ngraF42: TMenuItem
      Action = acCancelChanges
    end
  end
  object ActionList1: TActionList
    Images = imglOutbar_large
    Left = 424
    Top = 480
    object acSave: TAction
      Caption = 'Spara F3'
      ImageIndex = 5
      ShortCut = 114
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acCancelChanges: TAction
      Caption = #197'ngra F4'
      ImageIndex = 12
      ShortCut = 115
      OnExecute = acCancelChangesExecute
      OnUpdate = acCancelChangesUpdate
    end
    object acDeleteAttest: TAction
      Caption = 'Ta bort F5'
      ImageIndex = 6
      ShortCut = 116
      OnExecute = acDeleteAttestExecute
      OnUpdate = acDeleteAttestUpdate
    end
    object acNewAttest: TAction
      Caption = 'Ny F2'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = acNewAttestExecute
    end
    object acNewFromQuickInvoice: TAction
      Caption = 'Ny(snabbfakt) Shift+F2'
      ImageIndex = 3
      ShortCut = 8305
      OnExecute = acNewFromQuickInvoiceExecute
    end
    object acBooking: TAction
      Caption = 'Bokning F10'
      ShortCut = 121
      OnExecute = acBookingExecute
    end
    object acClose: TAction
      Caption = 'St'#228'ng F12'
      ImageIndex = 11
      ShortCut = 123
      OnExecute = acCloseExecute
    end
    object acGoToSearch: TAction
      Caption = 'acGoToSearch'
      ShortCut = 118
      OnExecute = acGoToSearchExecute
    end
    object acGoToLOSearch: TAction
      Caption = 'acGoToLOSearch'
      ShortCut = 8310
      OnExecute = acGoToLOSearchExecute
    end
    object acCopyAttest: TAction
      Caption = 'Kopiera F11'
      ImageIndex = 4
      ShortCut = 122
      OnExecute = acCopyAttestExecute
      OnUpdate = acCopyAttestUpdate
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 328
    Top = 271
    PixelsPerInch = 96
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Color = clYellow
    Left = 208
    Top = 263
    PixelsPerInch = 96
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grdInvDtl
    PopupMenus = <>
    Left = 448
    Top = 303
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    PopupMenus = <>
    Left = 432
    Top = 696
  end
  object ds_Att_Ext_ServicesII: TDataSource
    DataSet = dmModule1.cds_Att_Ext_ServicesII
    Left = 120
    Top = 687
  end
  object siLangLinked_frmAttestInvoice: TsiLangLinked
    Version = '7.2'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST')
    UseDefaultLanguage = True
    NumOfLanguages = 3
    LangDispatcher = dmLanguage.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Origin'
      'Swedish'
      'English')
    Language = 'Origin'
    CommonContainer = dmLanguage.siLang1
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField'
      'HelpFile'
      'Origin'
      'ConnectionName'
      'DisplayChecked'
      'DisplayUnchecked'
      'HotZoneClassName'
      'KeyFieldNames'
      'ListFieldNames'
      'OldName'
      'PropertiesClassName'
      'AutoIncFields'
      'CaseInsFields'
      'Categories'
      'ClassName'
      'CommandText'
      'ConstraintErrorMessage'
      'CustomConstraint'
      'DataTypeName'
      'DefaultExpression'
      'DescFields'
      'DetailFields'
      'EditFormat'
      'Expression'
      'FetchRowSQL'
      'Fields'
      'Filter'
      'FmtDisplayDate'
      'FmtDisplayDateTime'
      'FmtDisplayNumeric'
      'FmtDisplayTime'
      'FmtEditNumeric'
      'GeneratorName'
      'ImportedConstraint'
      'IndexFieldNames'
      'IniFileName'
      'InsertSQL'
      'LockSQL'
      'PersistentFileName'
      'PictureFilter'
      'PictureGraphicClassName'
      'RegistryPath'
      'SkinName'
      'StorageName'
      'StoredProcName'
      'UpdateTableName'
      'Version'
      'PropertiesClassName')
    Left = 536
    Top = 440
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400660072006D0041007400740065007300740049006E00
      76006F0069006300650001004100740074006500730074006500720061002000
      460061006B0074007500720061000100010001000D000A007400730049006E00
      76006F00690063006500480065006100640001002600460041004B0054005500
      520041000100010001000D000A004C006100620065006C003100010046006100
      6B0074007500720061006E0072003A000100010001000D000A004C0061006200
      65006C0032000100460061006B0074002E0064006100740075006D003A000100
      010001000D000A004C0043007500730074006F006D006500720001004C006500
      76006500720061006E007400F60072003A000100010001000D000A004C005000
      610079006D0065006E0074005400650072006D00730001004200650074007600
      69006C006C006B006F0072003A000100010001000D000A004C00610062006500
      6C003300350001004B0061007300730061003A000100010001000D000A004C00
      6100620065006C00360001004C00650076002E00760069006C006C006B006F00
      72003A000100010001000D000A004C006100620065006C003100320001004100
      670065006E0074002000700072006F0076003A000100010001000D000A004C00
      6100620065006C003500310001004600720061006B0074006B006F0073007400
      3A000100010001000D000A004C006100620065006C0035003200010020002F00
      20000100010001000D000A004C006100620065006C0032003900010056004100
      54003A000100010001000D000A004C006100620065006C003500330001004B00
      6F006D006D0069007300730069006F006E003A000100010001000D000A004400
      420043006800650063006B0042006F0078003100010053006E00610062006200
      660061006B0074007500720061003A000100010001000D000A00630062004300
      6F006D006D0069007300730069006F006E005000610069006400420079004300
      7500730074006F006D00650072000100500072006F0076006900730069006F00
      6E00200062006500740061006C006100730020006100760020006B0075006E00
      64000100010001000D000A0063006200560041005400010053006B0061007400
      740065007500700070006C00610067000100010001000D000A00630062004600
      72006500690067006800740049006E0044006900730063006F0075006E007400
      01004600720061006B0074007600E4007200640065002000690020006B006100
      7300730061000100010001000D000A0063006200460072006500690067006800
      740049006E0043006F006D006D0001004600720061006B0074007600E4007200
      64006500200069002000700072006F0076006900730069006F006E0001000100
      01000D000A0074007300530068006900700054006F0041006400640072006500
      7300730001004100260044005200450053005300450052000100010001000D00
      0A004C006100620065006C00310030000100460061006B007400750072006100
      6100640072006500730073000100010001000D000A004C006100620065006C00
      3400320001004C006100620065006C00340032000100010001000D000A006700
      720064004C0065007600410064007200440042005400610062006C0065005600
      69006500770031005200650066006500720065006E0063006500010052006500
      66006500720065006E0073000100010001000D000A006700720064004C006500
      7600410064007200440042005400610062006C00650056006900650077003100
      41006400640072006500730073004E0061006D00650001004100640072006500
      730073006E0061006D006E000100010001000D000A006700720064004C006500
      7600410064007200440042005400610062006C00650056006900650077003100
      4100440044005200010041006400720065007300730072006100640020003100
      2E002E0034000100010001000D000A006700720064004C006500760041006400
      7200440042005400610062006C00650056006900650077003100530068006900
      7000700069006E00670050006C0061006E004E006F0001004C004F0001000100
      01000D000A00740073004100670065006E007400010026004100470045004E00
      54000100010001000D000A004C006100620065006C0031003600010041006700
      65006E0074003A000100010001000D000A004C006100620065006C0033003800
      0100460061006B0074007500720061006100640064007200650073003A000100
      010001000D000A004C006100620065006C003400330001004C00610062006500
      6C00340033000100010001000D000A00740073004E006F007400650073000100
      26004E004F005400450053000100010001000D000A004C006100620065006C00
      310031000100460061006B00740075007200610074006500780074003A000100
      010001000D000A007400730053007400690063006B0079004E006F0074006500
      0100260050004F005300540020004900540021000100010001000D000A007400
      730041007400740065007300740052006F007700730001007400730041007400
      740065007300740052006F00770073000100010001000D000A00430068006500
      63006B0042006F00780031000100460069006C00740065007200010001000100
      0D000A00740073004C004F00010026004C004F000100010001000D000A004C00
      6100620065006C0033000100500072006F0066006F0072006D0061006E007200
      3A000100010001000D000A004C006100620065006C003800010049006E007400
      2E00660061006B0074007500720061006E0072003A000100010001000D000A00
      4C006100620065006C0033003000010050004F002000660061006B0074007500
      720061006E0072003A000100010001000D000A004C006100620065006C003100
      380001004C004F0020006E0072003A000100010001000D000A004C0061006200
      65006C0032003200010042006F006B006E0069006E00670073006E0072003A00
      0100010001000D000A004C006100620065006C00320033000100460072006100
      6B0074002F00200065006E0068003A000100010001000D000A004C0061006200
      65006C0032003400010054006F00740061006C006600720061006B0074003A00
      0100010001000D000A004C006100620065006C0032003500010042006F006B00
      6E0069006E0067007300490044003A000100010001000D000A004C0061006200
      65006C00330036000100560061006C007500740061003A000100010001000D00
      0A004C006100620065006C003100350001004500540041003A00010001000100
      0D000A004C006100620065006C003100340001004500540044003A0001000100
      01000D000A004C006100620065006C0031003300010056006500730073006500
      6C003A000100010001000D000A004C006100620065006C003400010054007200
      7000490044003A000100010001000D000A004C006100620065006C0035000100
      53006800690070007000650072003A000100010001000D000A004C0061006200
      65006C00390001005200650066006500720065006E0073003A00010001000100
      0D000A004C006100620065006C003100370001004F0072006400650072006E00
      72003A000100010001000D000A004C006100620065006C003100390001005300
      E4006C006A006100720065003A000100010001000D000A004C00610062006500
      6C003200310001005600E500720020007200650066003A000100010001000D00
      0A004C006100620065006C003200300001004B0075006E006400200072006500
      66003A000100010001000D000A00620062004E00650077004300610072007200
      69006500720001006E0079000100010001000D000A007400730054006F007400
      61006C0073000100260054006F00740061006C0073000100010001000D000A00
      4C006100620065006C0032003600010054004F00540041004C00540020004600
      41004B005400550052004100200049004E004B004C002E002000460052004100
      4B0054002000260026002000450058005400520041000100010001000D000A00
      4C006100620065006C00320037000100530055004D004D004100200046005200
      41004B00540020004B004F00530054004E004100440045005200010001000100
      0D000A004C006100620065006C00320038000100500052004F00440055004B00
      54005600C40052004400450020005500540041004E0020004600520041004B00
      54003A000100010001000D000A004C006100620065006C003300340001004600
      41004B0054005500520041005600C40052004400450020004D0049004E005500
      530020004B00410053005300410020004F00430048002000500052004F005600
      4900530049004F004E003A000100010001000D000A004C006100620065006C00
      340031000100410054005400200042004500540041004C0041003A0001000100
      01000D000A004C006100620065006C003300370001004D004F004D0053003A00
      0100010001000D000A004C006100620065006C00340034000100500052004F00
      56004900530049004F004E003A0020000100010001000D000A004C0061006200
      65006C003400350001004B0041005300530041003A0020000100010001000D00
      0A004C006100620065006C003700010041005400540020004200450054004100
      4C00410028007500740061006E0020006D006F006D00730029003A0001000100
      01000D000A0067007200640049006E007600440074006C004400420054006100
      62006C0065005600690065007700310043006800650063006B00650064000100
      5600E4006C006A000100010001000D000A0067007200640049006E0076004400
      74006C00440042005400610062006C0065005600690065007700310053006500
      7100750065006E0073004E006F0001004100740074006500730074006E007200
      0100010001000D000A0067007200640049006E007600440074006C0044004200
      5400610062006C0065005600690065007700310049006E0076006F0069006300
      6500440065007400610069006C004E006F0001005200610064006E0072000100
      010001000D000A0067007200640049006E007600440074006C00440042005400
      610062006C006500560069006500770031005200650066006500720065006E00
      6300650001005200650066006500720065006E0073000100010001000D000A00
      67007200640049006E007600440074006C00440042005400610062006C006500
      56006900650077003100500072006F0064007500630074004400650073006300
      720069007000740069006F006E0001004200650073006B007200690076006E00
      69006E0067000100010001000D000A0067007200640049006E00760044007400
      6C00440042005400610062006C006500560069006500770031004C0065006E00
      6700740068004400650073006300720069007000740069006F006E0001004C00
      E4006E00670064000100010001000D000A0067007200640049006E0076004400
      74006C00440042005400610062006C0065005600690065007700310056006F00
      6C0075006D00650055006E0069007400010056006F006C0079006D0065006E00
      6800650074000100010001000D000A0067007200640049006E00760044007400
      6C00440042005400610062006C006500560069006500770031004E006F004F00
      6600500069006500630065007300010053007400790063006B00010001000100
      0D000A0067007200640049006E007600440074006C0044004200540061006200
      6C00650056006900650077003100410063007400750061006C004E0065007400
      4D003300010041004D0033000100010001000D000A0067007200640049006E00
      7600440074006C00440042005400610062006C00650056006900650077003100
      4E006F006D0069006E0061006C004D00330001004E004D003300010001000100
      0D000A0067007200640049006E007600440074006C0044004200540061006200
      6C006500560069006500770031004C0069006E00650061006C004D0065007400
      65007200010041004D0031000100010001000D000A0067007200640049006E00
      7600440074006C00440042005400610062006C00650056006900650077003100
      56006F006C0075006D0065005F004F00720064006500720055006E0069007400
      010056006F006C002F00700072006900730065006E0068006500740001000100
      01000D000A0067007200640049006E007600440074006C004400420054006100
      62006C0065005600690065007700310050007200690063006500010050007200
      690073000100010001000D000A0067007200640049006E007600440074006C00
      440042005400610062006C006500560069006500770031005000720069006300
      650055006E00690074000100500072006900730065006E006800650074000100
      010001000D000A0067007200640049006E007600440074006C00440042005400
      610062006C0065005600690065007700310049006E007400650072006E006100
      6C0049006E0076006F006900630065004E006F00010049006E00740065007200
      6E0061006C0049006E0076006F006900630065004E006F000100010001000D00
      0A0067007200640049006E007600440074006C00440042005400610062006C00
      6500560069006500770031005300680069007000700069006E00670050006C00
      61006E004E006F0001004C004F000100010001000D000A006700720064004900
      6E007600440074006C00440042005400610062006C0065005600690065007700
      310054007900700065004F00660052006F007700010054007900700065004F00
      660052006F0077000100010001000D000A0067007200640049006E0076004400
      74006C00440042005400610062006C0065005600690065007700310050007200
      6F006400750063007400560061006C007500650001005600E400720064006500
      0100010001000D000A00500061006E0065006C0037000100500061006E006500
      6C0037000100010001000D000A004C006100620065006C003300310001004200
      650073006B007200690076006E0069006E0067003A000100010001000D000A00
      4C006100620065006C003300320001004C00650076002E00660061006B007400
      7500720061006E0072003A000100010001000D000A004C006100620065006C00
      3300330001004C00650076002E00660061006B00740075007200610064006100
      740075006D003A000100010001000D000A004C006100620065006C0033003900
      0100420065006C006F00700070003A000100010001000D000A004C0061006200
      65006C003400300001004C00650076006500720061006E007400F60072003A00
      0100010001000D000A004C006100620065006C00340037000100410074007400
      6500730074006E0072003A000100010001000D000A004C006100620065006C00
      340038000100560061006C007500740061003A000100010001000D000A004C00
      6100620065006C003400390001004C00650076002E004E0072003A0001000100
      01000D000A004C006100620065006C00350030000100560061006C0075007400
      61006E0072003A000100010001000D000A004C006100620065006C0034003600
      010053006E00610062006200660061006B0074007500720061006E0072003A00
      0100010001000D000A004C006100620065006C0035003400010054006F007400
      61006C0074002000620065006C006F007000700020006C00650076002E006600
      61006B0074007500720061000100010001000D000A0042007500740074006F00
      6E003100010042007500740074006F006E0031000100010001000D000A006700
      72006400410074007400440042005400610062006C0065005600690065007700
      310049006E007400650072006E0061006C0049006E0076006F00690063006500
      4E006F00010049006E0074002E00660061006B0074002E006E00720001000100
      01000D000A00670072006400410074007400440042005400610062006C006500
      560069006500770031005300680069007000700069006E00670050006C006100
      6E004E006F0001004C004F000100010001000D000A0067007200640041007400
      7400440042005400610062006C00650056006900650077003100530065007100
      750065006E0073004E006F0001004100740074006500730074006E0072000100
      010001000D000A00670072006400410074007400440042005400610062006C00
      6500560069006500770031004400650073006300720069007000740069006F00
      6E0001004200650073006B007200690076006E0069006E006700010001000100
      0D000A00670072006400410074007400440042005400610062006C0065005600
      690065007700310053007500700070006C006900650072005F0049006E007600
      6F006900630065004E006F0001004C00650076002E00660061006B0074007500
      720061006E0072000100010001000D000A006700720064004100740074004400
      42005400610062006C0065005600690065007700310053007500700070006C00
      6900650072005F0049006E0076006F0069006300650044006100740065000100
      4C00650076002E00660061006B0074002E0064006100740075006D0001000100
      01000D000A00670072006400410074007400440042005400610062006C006500
      5600690065007700310041006D006F0075006E0074000100420065006C006F00
      700070000100010001000D000A00670072006400410074007400440042005400
      610062006C00650056006900650077003100430055005200520045004E004300
      59000100560061006C007500740061000100010001000D000A00670072006400
      410074007400440042005400610062006C006500560069006500770031004300
      75007200720065006E00630079004E006F000100430075007200720065006E00
      630079004E006F000100010001000D000A006700720064004100740074004400
      42005400610062006C0065005600690065007700310053007500700070006C00
      6900650072004E006F00010053007500700070006C006900650072004E006F00
      0100010001000D000A0067007200640041007400740044004200540061006200
      6C0065005600690065007700310053005500500050004C004900450052000100
      4C00650076006500720061006E007400F60072000100010001000D000A006700
      72006400410074007400440042005400610062006C0065005600690065007700
      31004E006F007400650001004E006F00740065000100010001000D000A006700
      72006400410074007400440042005400610062006C0065005600690065007700
      3100430072006500610074006500640044006100740065000100430072006500
      610074006500640044006100740065000100010001000D000A00670072006400
      410074007400440042005400610062006C006500560069006500770031004300
      7200650061007400650064005500730065007200010043007200650061007400
      6500640055007300650072000100010001000D000A0067007200640041007400
      7400440042005400610062006C006500560069006500770031004D006F006400
      69006600690065006400440061007400650001004D006F006400690066006900
      6500640044006100740065000100010001000D000A0067007200640041007400
      7400440042005400610062006C006500560069006500770031004D006F006400
      69006600690065006400550073006500720001004D006F006400690066006900
      6500640055007300650072000100010001000D000A0067007200640041007400
      7400440042005400610062006C00650056006900650077003100510075006900
      63006B005F0049006E0076006F006900630065004E006F000100510075006900
      63006B005F0049006E0076006F006900630065004E006F000100010001000D00
      0A00630078004C006100620065006C00310001005300F6006B00200066006100
      6B0074006E0072003A002000460037000100010001000D000A00630078004C00
      6100620065006C00320001005300F6006B0020004C004F004E0072003A002000
      73002B00460037000100010001000D000A00640078004200610072004D006100
      6E00610067006500720031004200610072003100010043007500730074006F00
      6D00200031000100010001000D000A00640078004200610072004D0061006E00
      610067006500720031004200610072003200010043007500730074006F006D00
      200032000100010001000D000A006C006200500072006500760049006E007600
      6F0069006300650001004600F6007200650067002E000100010001000D000A00
      6C0062004E0065007800740001004E00E4007300740061000100010001000D00
      0A006300630053006500610072006300680049006E0076006F00690063006500
      4E006F00010053006500610072006300680049006E0076006F00690063006500
      4E006F000100010001000D000A00640078004200610072005300740061007400
      69006300310001005300F6006B002000660061006B0074006E0072003A000100
      010001000D000A006C00620041006C006C0052006F0077007300010041006C00
      6C00610020002600720061006400650072000100010001000D000A006C006200
      4F006E0041006C006C004C004F0052006F0077007300010041006C006C006100
      20004C0026004F002000720061006400650072000100010001000D000A006200
      730053006F006B004C004F0001005300F6006B0020004C004F003A0001000100
      01000D000A006300630053006F006B004C004F00010053006F006B004C004F00
      0100010001000D000A006C0062004E0065007700460072006F006D0043006F00
      6D006D0069007300730069006F006E0001004E007900200066007200E5006E00
      20006B006F006D006D002E000100010001000D000A0061006300530061007600
      65000100530070006100720061002000460033000100010001000D000A006100
      6300430061006E00630065006C004300680061006E006700650073000100C500
      6E006700720061002000460034000100010001000D000A006100630044006500
      6C00650074006500410074007400650073007400010054006100200062006F00
      720074002000460035000100010001000D000A00610063004E00650077004100
      7400740065007300740001004E0079002000460032000100010001000D000A00
      610063004E0065007700460072006F006D0051007500690063006B0049006E00
      76006F0069006300650001004E007900280073006E0061006200620066006100
      6B00740029002000530068006900660074002B00460032000100010001000D00
      0A006100630042006F006F006B0069006E006700010042006F006B006E006900
      6E00670020004600310030000100010001000D000A006100630043006C006F00
      73006500010053007400E4006E00670020004600310032000100010001000D00
      0A006100630047006F0054006F00530065006100720063006800010061006300
      47006F0054006F005300650061007200630068000100010001000D000A006100
      630047006F0054006F004C004F00530065006100720063006800010061006300
      47006F0054006F004C004F005300650061007200630068000100010001000D00
      0A006100630043006F007000790041007400740065007300740001004B006F00
      7000690065007200610020004600310031000100010001000D000A0073007400
      480069006E00740073005F0055006E00690063006F00640065000D000A006C00
      6200500072006500760049006E0076006F0069006300650001004600F6007200
      65006700E50065006E00640065002000460061006B0074007500720061000100
      01000D000A006C0062004E0065007800740001004E00E4007300740061002000
      460061006B007400750072006100010001000D000A0063006300530065006100
      72006300680049006E0076006F006900630065004E006F000100530065006100
      72006300680049006E0076006F006900630065004E006F00010001000D000A00
      64007800420061007200530074006100740069006300310001005300F6006B00
      2000660061006B0074006E0072003A00010001000D000A006C00620041006C00
      6C0052006F007700730001004600F6007200640065006C00610020006B006F00
      730074006E00610064006500720020007000E500200061006C006C0061002000
      72006100640065007200010001000D000A006C0062004F006E0041006C006C00
      4C004F0052006F007700730001004600F6007200640065006C00610020006B00
      6F00730074006E006100640065006E0020007000E500200061006C006C006100
      20007200610064006500720020007000E500200061006B007400690076002000
      4C004F0020006E007200010001000D000A006200730053006F006B004C004F00
      01005300F6006B0020004C004F003A00010001000D000A006300630053006F00
      6B004C004F00010053006F006B004C004F00010001000D000A006C0062004E00
      65007700460072006F006D0043006F006D006D0069007300730069006F006E00
      01004E0079002000610074007400650073007400200066007200E5006E002000
      700072006F0076006900730069006F006E00010001000D000A00730074004400
      6900730070006C00610079004C006100620065006C0073005F0055006E006900
      63006F00640065000D000A007300740046006F006E00740073005F0055006E00
      690063006F00640065000D000A005400660072006D0041007400740065007300
      740049006E0076006F0069006300650001004D0053002000530061006E007300
      20005300650072006900660001004D0053002000530061006E00730020005300
      650072006900660001005400610068006F006D0061000D000A00640078005000
      61006700650043006F006E00740072006F006C00310001004100720069006100
      6C00010001005400610068006F006D0061000D000A004C006100620065006C00
      3100010041007200690061006C00010001005400610068006F006D0061000D00
      0A004C006100620065006C003200010041007200690061006C00010001005400
      610068006F006D0061000D000A00440042005400650078007400310001004100
      7200690061006C00010001005400610068006F006D0061000D000A004C004300
      7500730074006F006D0065007200010041007200690061006C00010001005400
      610068006F006D0061000D000A0074007800740043007500730074006F006D00
      65007200010041007200690061006C00010001005400610068006F006D006100
      0D000A004C005000610079006D0065006E0074005400650072006D0073000100
      41007200690061006C00010001005400610068006F006D0061000D000A004400
      420054006500780074003400010041007200690061006C000100010054006100
      68006F006D0061000D000A004400420054006500780074003400320001004100
      7200690061006C00010001005400610068006F006D0061000D000A004C006100
      620065006C0033003500010041007200690061006C0001000100540061006800
      6F006D0061000D000A004C006100620065006C00360001004100720069006100
      6C00010001005400610068006F006D0061000D000A0044004200540065007800
      74003600010041007200690061006C00010001005400610068006F006D006100
      0D000A004C006100620065006C0031003200010041007200690061006C000100
      01005400610068006F006D0061000D000A004400420054006500780074003100
      3800010041007200690061006C00010001005400610068006F006D0061000D00
      0A004C006100620065006C0035003100010041007200690061006C0001000100
      5400610068006F006D0061000D000A004C006100620065006C00350032000100
      41007200690061006C00010001005400610068006F006D0061000D000A004C00
      6100620065006C0032003900010041007200690061006C000100010054006100
      68006F006D0061000D000A004400420054006500780074003800010041007200
      690061006C00010001005400610068006F006D0061000D000A00440042005400
      65007800740031003300010041007200690061006C0001000100540061006800
      6F006D0061000D000A004C006100620065006C00350033000100410072006900
      61006C00010001005400610068006F006D0061000D000A007200670044006500
      620069007400430072006500640069007400010041007200690061006C000100
      01005400610068006F006D0061000D000A004400420043006800650063006B00
      42006F0078003100010041007200690061006C00010001005400610068006F00
      6D0061000D000A006300620043006F006D006D0069007300730069006F006E00
      50006100690064004200790043007500730074006F006D006500720001004100
      7200690061006C00010001005400610068006F006D0061000D000A0063006200
      560041005400010041007200690061006C00010001005400610068006F006D00
      61000D000A0063006200460072006500690067006800740049006E0044006900
      730063006F0075006E007400010041007200690061006C000100010054006100
      68006F006D0061000D000A006300620046007200650069006700680074004900
      6E0043006F006D006D00010041007200690061006C0001000100540061006800
      6F006D0061000D000A004C006100620065006C00310030000100410072006900
      61006C00010001005400610068006F006D0061000D000A004C00610062006500
      6C0034003200010041007200690061006C00010001005400610068006F006D00
      61000D000A004C006100620065006C0031003600010041007200690061006C00
      010001005400610068006F006D0061000D000A00440042005400650078007400
      32003200010041007200690061006C00010001005400610068006F006D006100
      0D000A004C006100620065006C0033003800010041007200690061006C000100
      01005400610068006F006D0061000D000A004C006100620065006C0034003300
      010041007200690061006C00010001005400610068006F006D0061000D000A00
      4C006100620065006C0031003100010041007200690061006C00010001005400
      610068006F006D0061000D000A00440042004D0065006D006F00310001004100
      7200690061006C00010001005400610068006F006D0061000D000A0044004200
      4D0065006D006F003200010041007200690061006C0001000100540061006800
      6F006D0061000D000A004C006100620065006C00330001004100720069006100
      6C00010001005400610068006F006D0061000D000A0044004200540065007800
      74003300010041007200690061006C00010001005400610068006F006D006100
      0D000A004C006100620065006C003800010041007200690061006C0001000100
      5400610068006F006D0061000D000A0044004200540065007800740032000100
      41007200690061006C00010001005400610068006F006D0061000D000A004400
      4200540065007800740031003200010041007200690061006C00010001005400
      610068006F006D0061000D000A004C006100620065006C003300300001004100
      7200690061006C00010001005400610068006F006D0061000D000A004C006100
      620065006C0031003800010041007200690061006C0001000100540061006800
      6F006D0061000D000A0044004200540065007800740032003400010041007200
      690061006C00010001005400610068006F006D0061000D000A004C0061006200
      65006C0032003200010041007200690061006C00010001005400610068006F00
      6D0061000D000A00440042005400650078007400320038000100410072006900
      61006C00010001005400610068006F006D0061000D000A004400420054006500
      7800740032003900010041007200690061006C00010001005400610068006F00
      6D0061000D000A004C006100620065006C003200330001004100720069006100
      6C00010001005400610068006F006D0061000D000A004C006100620065006C00
      32003400010041007200690061006C00010001005400610068006F006D006100
      0D000A0044004200540065007800740033003000010041007200690061006C00
      010001005400610068006F006D0061000D000A004C006100620065006C003200
      3500010041007200690061006C00010001005400610068006F006D0061000D00
      0A0044004200540065007800740033003100010041007200690061006C000100
      01005400610068006F006D0061000D000A004C006100620065006C0033003600
      010041007200690061006C00010001005400610068006F006D0061000D000A00
      44004200540065007800740034003400010041007200690061006C0001000100
      5400610068006F006D0061000D000A004C006100620065006C00310035000100
      41007200690061006C00010001005400610068006F006D0061000D000A004C00
      6100620065006C0031003400010041007200690061006C000100010054006100
      68006F006D0061000D000A004C006100620065006C0031003300010041007200
      690061006C00010001005400610068006F006D0061000D000A00440042005400
      6500780074003500010041007200690061006C00010001005400610068006F00
      6D0061000D000A004C006100620065006C003400010041007200690061006C00
      010001005400610068006F006D0061000D000A004C006100620065006C003500
      010041007200690061006C00010001005400610068006F006D0061000D000A00
      4C006100620065006C003900010041007200690061006C000100010054006100
      68006F006D0061000D000A004C006100620065006C0031003700010041007200
      690061006C00010001005400610068006F006D0061000D000A004C0061006200
      65006C0031003900010041007200690061006C00010001005400610068006F00
      6D0061000D000A004C006100620065006C003200310001004100720069006100
      6C00010001005400610068006F006D0061000D000A004C006100620065006C00
      32003000010041007200690061006C00010001005400610068006F006D006100
      0D000A004400420045006400690074003200010041007200690061006C000100
      01005400610068006F006D0061000D000A00640063004F007200640065007200
      4E006F005400650078007400010041007200690061006C000100010054006100
      68006F006D0061000D000A0064006300530061006C00650073004D0061006E00
      010041007200690061006C00010001005400610068006F006D0061000D000A00
      640063004F0075007200520065006600010041007200690061006C0001000100
      5400610068006F006D0061000D000A0064006300430075007300740052006500
      6600010041007200690061006C00010001005400610068006F006D0061000D00
      0A004C006100620065006C0032003600010041007200690061006C0001000100
      5400610068006F006D0061000D000A0044004200540065007800740033003200
      010041007200690061006C00010001005400610068006F006D0061000D000A00
      4C006100620065006C0032003700010041007200690061006C00010001005400
      610068006F006D0061000D000A00440042005400650078007400330033000100
      41007200690061006C00010001005400610068006F006D0061000D000A004C00
      6100620065006C0032003800010041007200690061006C000100010054006100
      68006F006D0061000D000A004400420054006500780074003300340001004100
      7200690061006C00010001005400610068006F006D0061000D000A0044004200
      540065007800740033003500010041007200690061006C000100010054006100
      68006F006D0061000D000A004400420054006500780074003300370001004100
      7200690061006C00010001005400610068006F006D0061000D000A004C006100
      620065006C0033003400010041007200690061006C0001000100540061006800
      6F006D0061000D000A0044004200540065007800740034003000010041007200
      690061006C00010001005400610068006F006D0061000D000A00440042005400
      65007800740032003100010041007200690061006C0001000100540061006800
      6F006D0061000D000A004C006100620065006C00340031000100410072006900
      61006C00010001005400610068006F006D0061000D000A004400420054006500
      780074003900010041007200690061006C00010001005400610068006F006D00
      61000D000A004C006100620065006C0033003700010041007200690061006C00
      010001005400610068006F006D0061000D000A004C006100620065006C003400
      3400010041007200690061006C00010001005400610068006F006D0061000D00
      0A004C006100620065006C0034003500010041007200690061006C0001000100
      5400610068006F006D0061000D000A0044004200540065007800740037000100
      41007200690061006C00010001005400610068006F006D0061000D000A004C00
      6100620065006C003700010041007200690061006C0001000100540061006800
      6F006D0061000D000A0044004200540065007800740031003000010041007200
      690061006C00010001005400610068006F006D0061000D000A00440042005400
      65007800740031003100010041007200690061006C0001000100540061006800
      6F006D0061000D000A0044004200450064006900740031000100410072006900
      61006C00010001005400610068006F006D0061000D000A005400610062004300
      6F006E00740072006F006C003100010041007200690061006C00010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      670065007200310001005300650067006F006500200055004900010001005400
      610068006F006D0061000D000A00640078004200610072004D0061006E006100
      6700650072003100420061007200310001005300650067006F00650020005500
      4900010001005400610068006F006D0061000D000A0064007800420061007200
      4D0061006E006100670065007200310042006100720032000100530065006700
      6F006500200055004900010001005400610068006F006D0061000D000A006300
      78005300740079006C006500590065006C006C006F0077000100540061006800
      6F006D006100010001005400610068006F006D0061000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007200670044006500620069007400430072006500640069007400
      2E004900740065006D00730001004400650062002C004B007200650001000100
      0D000A0072006700440065006200690074004300720065006400690074002E00
      560061006C00750065007300010030002C003100010001000D000A0054006100
      620043006F006E00740072006F006C0031002E00540061006200730001003100
      2C003200010001000D000A00640078004200610072004D0061006E0061006700
      6500720031002E00430061007400650067006F00720069006500730001004400
      65006600610075006C007400010001000D000A006300620049006E0076006F00
      69006300650054007900700065002E00500072006F0070006500720074006900
      650073002E004900740065006D00730001002200560049004400410020002800
      4B003100290022002C002200500072006F0066006F0072006D00610020002800
      660061006B0074002E00730065006E00610072006500290022002C0022005000
      72006F0066006F0072006D0061002000280066006C0079007400740061002000
      70006B007400290022002C0049006E006B00F60070007300660061006B007400
      7500720061002C002200550053004100200028004B003200290022002C004600
      5700010001000D000A0063006200440065007300630072006900700074006900
      6F006E002E00500072006F0070006500720074006900650073002E0049007400
      65006D00730001004100720062006500740065002C0056006100720061000100
      01000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0044004200
      43006800650063006B0042006F00780031002E00560061006C00750065004300
      6800650063006B006500640001003100010001000D000A004400420043006800
      650063006B0042006F00780031002E00560061006C007500650055006E006300
      6800650063006B006500640001003000010001000D000A006300620043006F00
      6D006D0069007300730069006F006E0050006100690064004200790043007500
      730074006F006D00650072002E00560061006C00750065004300680065006300
      6B006500640001003100010001000D000A006300620043006F006D006D006900
      7300730069006F006E0050006100690064004200790043007500730074006F00
      6D00650072002E00560061006C007500650055006E0063006800650063006B00
      6500640001003000010001000D000A00630062005600410054002E0056006100
      6C007500650043006800650063006B006500640001003100010001000D000A00
      630062005600410054002E00560061006C007500650055006E00630068006500
      63006B006500640001003000010001000D000A00630062004600720065006900
      67006800740049006E0044006900730063006F0075006E0074002E0056006100
      6C007500650043006800650063006B006500640001003100010001000D000A00
      63006200460072006500690067006800740049006E0044006900730063006F00
      75006E0074002E00560061006C007500650055006E0063006800650063006B00
      6500640001003000010001000D000A0063006200460072006500690067006800
      740049006E0043006F006D006D002E00560061006C0075006500430068006500
      63006B006500640001003100010001000D000A00630062004600720065006900
      67006800740049006E0043006F006D006D002E00560061006C00750065005500
      6E0063006800650063006B006500640001003000010001000D000A0065004600
      61006B0074007500720061004E0072002E005400650078007400010030003000
      3000300030003000010001000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A006C00
      63004B006F006E0074006F002E00500072006F00700065007200740069006500
      73002E004C0069007300740043006F006C0075006D006E0073005B0030005D00
      2E00430061007000740069006F006E00010049006E0076006F00690063006500
      54007900700065004E0061006D006500010001000D000A006C00630053007500
      700070006C006900650072004E006F002E00500072006F007000650072007400
      6900650073002E004C0069007300740043006F006C0075006D006E0073005B00
      30005D002E00430061007000740069006F006E00010043006C00690065006E00
      74004E0061006D006500010001000D000A006C00630043007500720072006500
      6E00630079004E006F002E00500072006F007000650072007400690065007300
      2E004C0069007300740043006F006C0075006D006E0073005B0030005D002E00
      430061007000740069006F006E000100430075007200720065006E0063007900
      4E0061006D006500010001000D000A0073007400430068006100720053006500
      740073005F0055006E00690063006F00640065000D000A005400660072006D00
      41007400740065007300740049006E0076006F00690063006500010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006400
      7800500061006700650043006F006E00740072006F006C003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004C00
      6100620065006C0031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A004C006100620065006C003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004400
      4200540065007800740031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C0043007500730074006F006D006500
      72000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A0074007800740043007500730074006F006D006500720001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      4C005000610079006D0065006E0074005400650072006D007300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004400
      4200540065007800740034000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A0044004200540065007800740034003200
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C00330035000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A004C006100620065006C00
      36000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A004400420054006500780074003600010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A004C00610062006500
      6C00310032000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A0044004200540065007800740031003800010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004C00
      6100620065006C00350031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C006100620065006C00350032000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A004C006100620065006C00320039000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00440042005400650078007400
      38000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A004400420054006500780074003100330001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C00350033000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A007200670044006500620069007400430072006500
      6400690074000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004400420043006800650063006B0042006F0078003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A006300620043006F006D006D0069007300730069006F006E0050006100
      690064004200790043007500730074006F006D00650072000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0063006200
      5600410054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A0063006200460072006500690067006800740049006E00
      44006900730063006F0075006E0074000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00630062004600720065006900
      67006800740049006E0043006F006D006D000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A004C006100620065006C00
      310030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A004C006100620065006C003400320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C00310036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004400420054006500780074003200320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      4C006100620065006C00330038000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004C006100620065006C0034003300
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C00310031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00440042004D0065006D00
      6F0031000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00440042004D0065006D006F00320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C0033000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A0044004200540065007800740033000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A004C006100
      620065006C0038000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004400420054006500780074003200010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004400
      42005400650078007400310032000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004C006100620065006C0033003000
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C00310038000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A0044004200540065007800
      7400320034000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A004C006100620065006C00320032000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0044004200
      5400650078007400320038000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A0044004200540065007800740032003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C00320033000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A004C006100620065006C00
      320034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00440042005400650078007400330030000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A004C006100
      620065006C00320035000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A00440042005400650078007400330031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A004C006100620065006C00330036000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A00440042005400650078007400
      340034000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A004C006100620065006C003100350001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C00310034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004C006100620065006C0031003300010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004400
      4200540065007800740035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C006100620065006C00340001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      4C006100620065006C0035000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A004C006100620065006C00390001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      4C006100620065006C00310037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004C006100620065006C0031003900
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C00320031000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A004C006100620065006C00
      320030000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00440042004500640069007400320001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00640063004F00
      72006400650072004E006F005400650078007400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A006400630053006100
      6C00650073004D0061006E000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000D000A00640063004F0075007200520065006600
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A0064006300430075007300740052006500660001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C00320036000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004400420054006500780074003300320001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      4C006100620065006C00320037000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004400420054006500780074003300
      33000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A004C006100620065006C0032003800010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F0043004800410052005300450054000D000A004400420054006500
      78007400330034000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000D000A004400420054006500780074003300350001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      440042005400650078007400330037000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000D000A004C006100620065006C003300
      34000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A004400420054006500780074003400300001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A00440042005400
      650078007400320031000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000D000A004C006100620065006C003400310001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F0043004800410052005300450054000D000A00
      44004200540065007800740039000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004C006100620065006C0033003700
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A004C006100620065006C00340034000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A004C006100620065006C00
      340035000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00440042005400650078007400370001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F0043004800410052005300450054000D000A004C0061006200
      65006C0037000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000D000A0044004200540065007800740031003000010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A004400
      42005400650078007400310031000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000100440045004600410055004C0054005F00
      43004800410052005300450054000D000A004400420045006400690074003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0D000A0054006100620043006F006E00740072006F006C003100010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F0043004800410052005300450054000D000A006400
      78004200610072004D0061006E00610067006500720031000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000D000A0064007800
      4200610072004D0061006E006100670065007200310042006100720031000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000100
      440045004600410055004C0054005F0043004800410052005300450054000D00
      0A00640078004200610072004D0061006E006100670065007200310042006100
      720032000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000100440045004600410055004C0054005F0043004800410052005300
      450054000D000A00630078005300740079006C006500590065006C006C006F00
      77000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000100440045004600410055004C0054005F00430048004100520053004500
      54000D000A00}
  end
end
